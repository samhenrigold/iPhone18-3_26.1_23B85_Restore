uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoPlannerErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016B0, &unk_23C8A1210);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C78, &qword_23C8A0E68);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E2016B0, &unk_23C8A1210);
  sub_23C5855B0(a2, &v14[v15], &qword_27E2016B0, &unk_23C8A1210);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E2016B0, &unk_23C8A1210);
LABEL_9:
      type metadata accessor for TranscriptProtoPlannerError(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E2016B0, &unk_23C8A1210);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPlannerErrorEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203C78, &qword_23C8A0E68);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  v18 = _s26AIMLInstrumentationStreams31TranscriptProtoPlannerErrorEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_23C585C34(v14, &qword_27E2016B0, &unk_23C8A1210);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || (sub_23C7FD6C0(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_27;
  }

  v14 = a1[5];
  v15 = a2[5];
  if (v14)
  {
    if (!v15 || (a1[4] != a2[4] || v14 != v15) && (sub_23C872014() & 1) == 0)
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

  if (!v17 || (a1[6] != a2[6] || v16 != v17) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v27 = type metadata accessor for TranscriptProtoClientAction(0);
  v18 = *(v27 + 36);
  v19 = *(v11 + 48);
  sub_23C5855B0(a1 + v18, v13, &qword_27E1FAAF8, &unk_23C8A1180);
  v20 = a2 + v18;
  v21 = v19;
  sub_23C5855B0(v20, &v13[v19], &qword_27E1FAAF8, &unk_23C8A1180);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_23:
    sub_23C585C34(v13, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_27;
  }

  sub_23C83155C(&v13[v21], v7, type metadata accessor for TranscriptProtoStatementID);
  v23 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v23 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  if ((sub_23C7FDCDC(a1[3], a2[3]) & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v24 = sub_23C871754();
  return v24 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoPersonQueryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CB8, &unk_23C8A11F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v29 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CC0, &qword_23C8A0EA0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = *(a1 + 2);
  v15 = *(a2 + 2);
  if (v14)
  {
    if (!v15 || (*(a1 + 1) != *(a2 + 1) || v14 != v15) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v15)
  {
    goto LABEL_16;
  }

  v16 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v17 = *(v16 + 24);
  v18 = a1;
  v19 = *(v11 + 48);
  v29 = v16;
  v30 = v18;
  sub_23C5855B0(&v18[v17], v13, &qword_27E203CB8, &unk_23C8A11F0);
  sub_23C5855B0(&a2[v17], &v13[v19], &qword_27E203CB8, &unk_23C8A11F0);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E203CB8, &unk_23C8A11F0);
    if (v20(&v13[v19], 1, v4) != 1)
    {
      sub_23C83155C(&v13[v19], v7, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      V6HandleV2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams26TranscriptProtoPersonQueryV6HandleV2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_23C585C34(v13, &qword_27E203CB8, &unk_23C8A11F0);
      if ((V6HandleV2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPersonQuery.Handle);
LABEL_13:
    sub_23C585C34(v13, &qword_27E203CC0, &qword_23C8A0EA0);
    goto LABEL_16;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_23C585C34(v13, &qword_27E203CB8, &unk_23C8A11F0);
LABEL_15:
  if (*v30 == *a2)
  {
    v24 = *(v29 + 28);
    v25 = &v30[v24];
    v26 = *&v30[v24 + 8];
    v27 = &a2[v24];
    v28 = *(v27 + 1);
    if (v26)
    {
      if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_23C872014() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v28)
    {
      goto LABEL_16;
    }

    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v22 = sub_23C871754();
    return v22 & 1;
  }

LABEL_16:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoPersonQueryV6HandleV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v4 != v5)
    {
      v6 = a1;
      v7 = a2;
      v8 = sub_23C872014();
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v5)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (v10)
  {
    if (!v11 || (a1[3] != a2[3] || v10 != v11) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }

LABEL_17:
    type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoASTPickTypeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  if (v2)
  {
    if (v3 & 1) == 0 || ((v5 ^ v4))
    {
      return 0;
    }
  }

  else if ((v3 & 1) != 0 || v4 != v5)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoASTPickType(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB80, &qword_23C878F30);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAB78, &unk_23C8A1360);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAB78, &unk_23C8A1360);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAB78, &unk_23C8A1360);
LABEL_9:
      type metadata accessor for TranscriptProtoASTFlatValue(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAB78, &unk_23C8A1360);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB80, &qword_23C878F30);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoAstflatValueEnum);
  v18 = _s26AIMLInstrumentationStreams31TranscriptProtoAstflatValueEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_23C585C34(v14, &qword_27E1FAB78, &unk_23C8A1360);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoASTFlatExprV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203898, &qword_23C8A0AF8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201A80, &qword_23C88DBF0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201A80, &qword_23C88DBF0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
LABEL_9:
      type metadata accessor for TranscriptProtoASTFlatExpr(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201A80, &qword_23C88DBF0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203898, &qword_23C8A0AF8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  v18 = _s26AIMLInstrumentationStreams30TranscriptProtoAstflatExprEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
  sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A28, &qword_23C8A0C60);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201880, &unk_23C8A12D0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201880, &unk_23C8A12D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201880, &unk_23C8A12D0);
LABEL_9:
      type metadata accessor for TranscriptProtoDialogType(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201880, &unk_23C8A12D0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoDialogFormat);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203A28, &qword_23C8A0C60);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoDialogFormat);
  v18 = _s26AIMLInstrumentationStreams27TranscriptProtoDialogFormatO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoDialogFormat);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoDialogFormat);
  sub_23C585C34(v14, &qword_27E201880, &unk_23C8A12D0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24TranscriptProtoTimepointV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_23C870EC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E38, &qword_23C8A0FE8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v22 = type metadata accessor for TranscriptProtoTimepoint(0);
  v14 = *(v22 + 28);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_23C5855B0(a1 + v14, v13, &unk_27E1F9D10, &qword_23C874E00);
  v25 = a2;
  sub_23C5855B0(a2 + v14, &v13[v15], &unk_27E1F9D10, &qword_23C874E00);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &unk_27E1F9D10, &qword_23C874E00);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v13, v9, &unk_27E1F9D10, &qword_23C874E00);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_23C585C34(v13, &qword_27E203E38, &qword_23C8A0FE8);
LABEL_14:
    v20 = 0;
    return v20 & 1;
  }

  v17 = v23;
  (*(v5 + 32))(v23, &v13[v15], v4);
  sub_23C8314AC(&qword_27E203E40, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v18 = sub_23C871754();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_23C585C34(v13, &unk_27E1F9D10, &qword_23C874E00);
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (*v24 != *v25 || v24[1] != v25[1] || (v24[2] != v25[2] || v24[3] != v25[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_23C871754();
  return v20 & 1;
}

uint64_t sub_23C8193D0(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_23C872014() & 1) != 0)
  {
    v7 = a1[3];
    v8 = a2[3];
    if (v7)
    {
      if (v8)
      {
        v9 = a1[2] == a2[2] && v7 == v8;
        if (v9 || (sub_23C872014() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v8)
    {
LABEL_13:
      a3(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_23C871754() & 1;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams37TranscriptProtoActionParameterContextV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v48 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v19 = *(v43 + 24);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FAAF8, &unk_23C8A1180);
  v21 = v48;
  sub_23C5855B0(v48 + v19, &v18[v20], &qword_27E1FAAF8, &unk_23C8A1180);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_23C585C34(v18, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_8;
    }

LABEL_6:
    v23 = &qword_27E1FAB00;
    v24 = &qword_23C878ED8;
    v25 = v18;
LABEL_17:
    sub_23C585C34(v25, v23, v24);
    goto LABEL_18;
  }

  sub_23C5855B0(v18, v14, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_23C8315C4(v14, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_23C83155C(&v18[v20], v11, type metadata accessor for TranscriptProtoStatementID);
  v26 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v14, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v18, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != *(v21 + 8)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(v43 + 28);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_23C5855B0(v27 + v28, v46, &qword_27E2037A0, &qword_23C8A0A00);
  sub_23C5855B0(v21 + v28, v30 + v29, &qword_27E2037A0, &qword_23C8A0A00);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    sub_23C5855B0(v30, v41, &qword_27E2037A0, &qword_23C8A0A00);
    if (v32(v30 + v29, 1, v31) != 1)
    {
      v36 = v30 + v29;
      v37 = v40;
      sub_23C83155C(v36, v40, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      v38 = sub_23C8193D0(v33, v37, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_23C8315C4(v37, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_23C8315C4(v33, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_23C585C34(v30, &qword_27E2037A0, &qword_23C8A0A00);
      if ((v38 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_23C8315C4(v33, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
    goto LABEL_16;
  }

  if (v32(v30 + v29, 1, v31) != 1)
  {
LABEL_16:
    v23 = &qword_27E2037A8;
    v24 = &qword_23C8A0A08;
    v25 = v30;
    goto LABEL_17;
  }

  sub_23C585C34(v30, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_21:
  if (*(v27 + 16) == *(v21 + 16))
  {
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = sub_23C871754();
    return v34 & 1;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24TranscriptProtoQueryStepV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  v60 = *(Payload - 8);
  v61 = Payload;
  MEMORY[0x28223BE20](Payload);
  v56 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AE8, &qword_23C8A0D10);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v56 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AF0, &qword_23C8A0D18);
  MEMORY[0x28223BE20](v59);
  v62 = &v56 - v8;
  v9 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AF8, &unk_23C8A1290);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = (&v56 - v12);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B00, &qword_23C8A0D20);
  MEMORY[0x28223BE20](v64);
  v67 = &v56 - v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v56 - v23;
  v25 = *(v22 + 56);
  v68 = a1;
  sub_23C5855B0(a1, &v56 - v23, &qword_27E1FAAF8, &unk_23C8A1180);
  v69 = a2;
  sub_23C5855B0(a2, &v24[v25], &qword_27E1FAAF8, &unk_23C8A1180);
  v26 = *(v15 + 48);
  if (v26(v24, 1, v14) == 1)
  {
    if (v26(&v24[v25], 1, v14) == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_27E1FAB00;
    v28 = &qword_23C878ED8;
    v29 = v24;
LABEL_21:
    sub_23C585C34(v29, v27, v28);
    goto LABEL_22;
  }

  sub_23C5855B0(v24, v20, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v26(&v24[v25], 1, v14) == 1)
  {
    sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_23C83155C(&v24[v25], v17, type metadata accessor for TranscriptProtoStatementID);
  v30 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v20, v17);
  sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v32 = *(Step + 20);
  v33 = *(v64 + 48);
  v35 = v67;
  v34 = v68;
  sub_23C5855B0(v68 + v32, v67, &qword_27E203AF8, &unk_23C8A1290);
  v36 = v69;
  sub_23C5855B0(v69 + v32, v35 + v33, &qword_27E203AF8, &unk_23C8A1290);
  v37 = v66;
  v38 = *(v65 + 48);
  if (v38(v35, 1, v66) != 1)
  {
    v39 = v63;
    sub_23C5855B0(v35, v63, &qword_27E203AF8, &unk_23C8A1290);
    if (v38(v35 + v33, 1, v37) != 1)
    {
      v40 = v35 + v33;
      v41 = v58;
      sub_23C83155C(v40, v58, type metadata accessor for TranscriptProtoActionParameterContext);
      v42 = _s26AIMLInstrumentationStreams37TranscriptProtoActionParameterContextV2eeoiySbAC_ACtFZ_0(v39, v41);
      sub_23C8315C4(v41, type metadata accessor for TranscriptProtoActionParameterContext);
      sub_23C8315C4(v39, type metadata accessor for TranscriptProtoActionParameterContext);
      sub_23C585C34(v35, &qword_27E203AF8, &unk_23C8A1290);
      if ((v42 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_23C8315C4(v39, type metadata accessor for TranscriptProtoActionParameterContext);
    goto LABEL_13;
  }

  if (v38(v35 + v33, 1, v37) != 1)
  {
LABEL_13:
    v27 = &qword_27E203B00;
    v28 = &qword_23C8A0D20;
    v29 = v35;
    goto LABEL_21;
  }

  sub_23C585C34(v35, &qword_27E203AF8, &unk_23C8A1290);
LABEL_15:
  v43 = *(Step + 24);
  v44 = *(v59 + 48);
  v45 = v62;
  sub_23C5855B0(v34 + v43, v62, &qword_27E203AE8, &qword_23C8A0D10);
  v46 = v36 + v43;
  v47 = v45;
  sub_23C5855B0(v46, v45 + v44, &qword_27E203AE8, &qword_23C8A0D10);
  v48 = v61;
  v49 = *(v60 + 48);
  if (v49(v45, 1, v61) == 1)
  {
    if (v49(v45 + v44, 1, v48) == 1)
    {
      sub_23C585C34(v45, &qword_27E203AE8, &qword_23C8A0D10);
LABEL_25:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v51 = sub_23C871754();
      return v51 & 1;
    }

    goto LABEL_20;
  }

  v50 = v57;
  sub_23C5855B0(v47, v57, &qword_27E203AE8, &qword_23C8A0D10);
  if (v49(v47 + v44, 1, v48) == 1)
  {
    sub_23C8315C4(v50, type metadata accessor for TranscriptProtoQueryPayload);
LABEL_20:
    v27 = &qword_27E203AF0;
    v28 = &qword_23C8A0D18;
    v29 = v47;
    goto LABEL_21;
  }

  v53 = v47 + v44;
  v54 = v56;
  sub_23C83155C(v53, v56, type metadata accessor for TranscriptProtoQueryPayload);
  PayloadV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoQueryPayloadV2eeoiySbAC_ACtFZ_0(v50, v54);
  sub_23C8315C4(v54, type metadata accessor for TranscriptProtoQueryPayload);
  sub_23C8315C4(v50, type metadata accessor for TranscriptProtoQueryPayload);
  sub_23C585C34(v47, &qword_27E203AE8, &qword_23C8A0D10);
  if (PayloadV2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v51 = 0;
  return v51 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24TranscriptProtoParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB98, &qword_23C878F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA0, &qword_23C878F48);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_15;
    }
  }

  v22 = v7;
  v23 = type metadata accessor for TranscriptProtoParameter(0);
  v15 = *(v23 + 24);
  v16 = *(v11 + 48);
  sub_23C5855B0(a1 + v15, v13, &qword_27E1FAB98, &qword_23C878F40);
  sub_23C5855B0(a2 + v15, &v13[v16], &qword_27E1FAB98, &qword_23C878F40);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAB98, &qword_23C878F40);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_23C871754();
      return v18 & 1;
    }

    goto LABEL_14;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAB98, &qword_23C878F40);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoCandidate);
LABEL_14:
    sub_23C585C34(v13, &qword_27E1FABA0, &qword_23C878F48);
    goto LABEL_15;
  }

  v20 = v22;
  sub_23C83155C(&v13[v16], v22, type metadata accessor for TranscriptProtoCandidate);
  v21 = _s26AIMLInstrumentationStreams24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(v10, v20);
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoCandidate);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoCandidate);
  sub_23C585C34(v13, &qword_27E1FAB98, &qword_23C878F40);
  if (v21)
  {
    goto LABEL_18;
  }

LABEL_15:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoCandidatePromptStatusV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
LABEL_3:
      type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_23C871754() & 1;
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    v3 = *a1;
    v4 = *a2;
    if (a1[1])
    {
      if (v3)
      {
        if ((a2[1] & 1) != 0 && v4)
        {
          goto LABEL_3;
        }
      }

      else if ((a2[1] & 1) != 0 && !v4)
      {
        goto LABEL_3;
      }
    }

    else if ((a2[1] & 1) == 0 && v3 == v4)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v71 = a2;
  v3 = type metadata accessor for TranscriptProtoStatementID(0);
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v56 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v60);
  v63 = &v56 - v7;
  v8 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB8, &unk_23C8A11E0);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = (&v56 - v11);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC0, &qword_23C878F60);
  MEMORY[0x28223BE20](v65);
  v68 = &v56 - v12;
  v13 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v56 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v69 = type metadata accessor for TranscriptProtoCandidate(0);
  v70 = a1;
  v24 = *(v69 + 20);
  v25 = *(v21 + 56);
  sub_23C5855B0(&a1[v24], v23, &qword_27E1FAB68, &unk_23C879140);
  v26 = v71;
  sub_23C5855B0(&v71[v24], &v23[v25], &qword_27E1FAB68, &unk_23C879140);
  v27 = *(v14 + 48);
  if (v27(v23, 1, v13) == 1)
  {
    if (v27(&v23[v25], 1, v13) == 1)
    {
      sub_23C585C34(v23, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_9;
    }

LABEL_6:
    v28 = &qword_27E1FAB70;
    v29 = &qword_23C878F28;
    v30 = v23;
LABEL_7:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_25;
  }

  sub_23C5855B0(v23, v19, &qword_27E1FAB68, &unk_23C879140);
  if (v27(&v23[v25], 1, v13) == 1)
  {
    sub_23C8315C4(v19, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_23C83155C(&v23[v25], v16, type metadata accessor for ToolKitProtoTypedValue);
  v31 = static ToolKitProtoTypedValue.== infix(_:_:)(v19, v16);
  sub_23C8315C4(v16, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v19, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v23, &qword_27E1FAB68, &unk_23C879140);
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v32 = v70;
  if (*v70 != *v26)
  {
    goto LABEL_25;
  }

  v33 = v68;
  v34 = v69;
  v35 = *(v69 + 24);
  v36 = *(v65 + 48);
  sub_23C5855B0(&v70[v35], v68, &qword_27E1FABB8, &unk_23C8A11E0);
  sub_23C5855B0(&v26[v35], v33 + v36, &qword_27E1FABB8, &unk_23C8A11E0);
  v37 = v67;
  v38 = *(v66 + 48);
  if (v38(v33, 1, v67) == 1)
  {
    if (v38(v33 + v36, 1, v37) == 1)
    {
      sub_23C585C34(v33, &qword_27E1FABB8, &unk_23C8A11E0);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v39 = v64;
  sub_23C5855B0(v33, v64, &qword_27E1FABB8, &unk_23C8A11E0);
  if (v38(v33 + v36, 1, v37) == 1)
  {
    sub_23C8315C4(v39, type metadata accessor for TranscriptProtoCandidatePromptStatus);
LABEL_15:
    v28 = &qword_27E1FABC0;
    v29 = &qword_23C878F60;
    v30 = v33;
    goto LABEL_7;
  }

  v40 = v33 + v36;
  v41 = v59;
  sub_23C83155C(v40, v59, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  v42 = _s26AIMLInstrumentationStreams36TranscriptProtoCandidatePromptStatusV2eeoiySbAC_ACtFZ_0(v39, v41);
  sub_23C8315C4(v41, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_23C8315C4(v39, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_23C585C34(v33, &qword_27E1FABB8, &unk_23C8A11E0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v43 = *(v34 + 28);
  v44 = *(v60 + 48);
  v45 = v63;
  sub_23C5855B0(&v32[v43], v63, &qword_27E1FAAF8, &unk_23C8A1180);
  v46 = &v26[v43];
  v47 = v45;
  sub_23C5855B0(v46, v45 + v44, &qword_27E1FAAF8, &unk_23C8A1180);
  v48 = v62;
  v49 = *(v61 + 48);
  if (v49(v45, 1, v62) != 1)
  {
    v50 = v58;
    sub_23C5855B0(v47, v58, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v49(v47 + v44, 1, v48) != 1)
    {
      v51 = v47 + v44;
      v52 = v57;
      sub_23C83155C(v51, v57, type metadata accessor for TranscriptProtoStatementID);
      v53 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v50, v52);
      sub_23C8315C4(v52, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v50, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v47, &qword_27E1FAAF8, &unk_23C8A1180);
      if (v53)
      {
        goto LABEL_24;
      }

LABEL_25:
      v54 = 0;
      return v54 & 1;
    }

    sub_23C8315C4(v50, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_22;
  }

  if (v49(v45 + v44, 1, v48) != 1)
  {
LABEL_22:
    v28 = &qword_27E1FAB00;
    v29 = &qword_23C878ED8;
    v30 = v47;
    goto LABEL_7;
  }

  sub_23C585C34(v45, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_24:
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v54 = sub_23C871754();
  return v54 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22TranscriptProtoUILabelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoLabel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD0, &unk_23C8A1300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD8, &qword_23C878F70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FABD0, &unk_23C8A1300);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FABD0, &unk_23C8A1300);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FABD0, &unk_23C8A1300);
LABEL_9:
      type metadata accessor for TranscriptProtoUILabel(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FABD0, &unk_23C8A1300);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoLabel);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FABD8, &qword_23C878F70);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoLabel);
  v18 = static TranscriptProtoLabel.== infix(_:_:)(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoLabel);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoLabel);
  sub_23C585C34(v14, &qword_27E1FABD0, &unk_23C8A1300);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams47TranscriptProtoSystemPromptResolutionUserActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203958, &qword_23C8A0BB8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E2019A0, &unk_23C8A1340);
  sub_23C5855B0(a2, &v14[v15], &qword_27E2019A0, &unk_23C8A1340);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E2019A0, &unk_23C8A1340);
LABEL_9:
      type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E2019A0, &unk_23C8A1340);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203958, &qword_23C8A0BB8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  v18 = _s26AIMLInstrumentationStreams51TranscriptProtoSystemPromptResolutionUserActionEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_23C585C34(v14, &qword_27E2019A0, &unk_23C8A1340);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams37TranscriptProtoSystemPromptResolutionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203998, &unk_23C8A1310);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v60 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039A0, &qword_23C8A0BF0);
  MEMORY[0x28223BE20](v66);
  v10 = &v60 - v9;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v60 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v70);
  v73 = &v60 - v15;
  v16 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039A8, &qword_23C8A0BF8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039B0, &qword_23C8A0C00);
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - v24;
  v26 = a1[3];
  v27 = a2[3];
  if (v26)
  {
    if (!v27 || (a1[2] != a2[2] || v26 != v27) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v27)
  {
    goto LABEL_33;
  }

  v60 = v6;
  v61 = v10;
  v28 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v29 = *(v28 + 24);
  v30 = a1;
  v31 = *(v23 + 48);
  v62 = v28;
  v63 = v30;
  sub_23C5855B0(v30 + v29, v25, &qword_27E2039A8, &qword_23C8A0BF8);
  v32 = a2 + v29;
  v33 = a2;
  sub_23C5855B0(v32, &v25[v31], &qword_27E2039A8, &qword_23C8A0BF8);
  v34 = *(v17 + 48);
  if (v34(v25, 1, v16) == 1)
  {
    if (v34(&v25[v31], 1, v16) == 1)
    {
      sub_23C585C34(v25, &qword_27E2039A8, &qword_23C8A0BF8);
      goto LABEL_15;
    }

LABEL_13:
    v35 = &qword_27E2039B0;
    v36 = &qword_23C8A0C00;
    v37 = v25;
LABEL_32:
    sub_23C585C34(v37, v35, v36);
    goto LABEL_33;
  }

  sub_23C5855B0(v25, v22, &qword_27E2039A8, &qword_23C8A0BF8);
  if (v34(&v25[v31], 1, v16) == 1)
  {
    sub_23C8315C4(v22, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
    goto LABEL_13;
  }

  sub_23C83155C(&v25[v31], v19, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  v38 = _s26AIMLInstrumentationStreams47TranscriptProtoSystemPromptResolutionUserActionV2eeoiySbAC_ACtFZ_0(v22, v19);
  sub_23C8315C4(v19, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_23C8315C4(v22, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_23C585C34(v25, &qword_27E2039A8, &qword_23C8A0BF8);
  if ((v38 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_15:
  v39 = v63;
  if ((*v63 != *a2 || v63[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_33;
  }

  v40 = v62;
  v41 = *(v62 + 28);
  v42 = *(v70 + 48);
  v43 = v73;
  sub_23C5855B0(v39 + v41, v73, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v33 + v41, v43 + v42, &qword_27E1FAAF8, &unk_23C8A1180);
  v44 = v72;
  v45 = *(v71 + 48);
  if (v45(v43, 1, v72) != 1)
  {
    v46 = v69;
    sub_23C5855B0(v43, v69, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v45(v43 + v42, 1, v44) != 1)
    {
      v47 = v43 + v42;
      v48 = v65;
      sub_23C83155C(v47, v65, type metadata accessor for TranscriptProtoStatementID);
      v49 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v46, v48);
      sub_23C8315C4(v48, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v46, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v43, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v49 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    sub_23C8315C4(v46, type metadata accessor for TranscriptProtoStatementID);
LABEL_23:
    v35 = &qword_27E1FAB00;
    v36 = &qword_23C878ED8;
LABEL_31:
    v37 = v43;
    goto LABEL_32;
  }

  if (v45(v43 + v42, 1, v44) != 1)
  {
    goto LABEL_23;
  }

  sub_23C585C34(v43, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
  v50 = *(v40 + 32);
  v51 = *(v66 + 48);
  v43 = v61;
  sub_23C5855B0(v39 + v50, v61, &qword_27E203998, &unk_23C8A1310);
  sub_23C5855B0(v33 + v50, v43 + v51, &qword_27E203998, &unk_23C8A1310);
  v52 = v68;
  v53 = *(v67 + 48);
  if (v53(v43, 1, v68) == 1)
  {
    if (v53(v43 + v51, 1, v52) == 1)
    {
      sub_23C585C34(v43, &qword_27E203998, &unk_23C8A1310);
LABEL_36:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v55 = sub_23C871754();
      return v55 & 1;
    }

    goto LABEL_30;
  }

  v54 = v64;
  sub_23C5855B0(v43, v64, &qword_27E203998, &unk_23C8A1310);
  if (v53(v43 + v51, 1, v52) == 1)
  {
    sub_23C8315C4(v54, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
LABEL_30:
    v35 = &qword_27E2039A0;
    v36 = &qword_23C8A0BF0;
    goto LABEL_31;
  }

  v57 = v43 + v51;
  v58 = v60;
  sub_23C83155C(v57, v60, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  v59 = _s26AIMLInstrumentationStreams42TranscriptProtoSystemPromptResolutionInputV2eeoiySbAC_ACtFZ_0(v54, v58);
  sub_23C8315C4(v58, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_23C8315C4(v54, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_23C585C34(v43, &qword_27E203998, &unk_23C8A1310);
  if (v59)
  {
    goto LABEL_36;
  }

LABEL_33:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DF0, &qword_23C8A0FA8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E2014C0, &qword_23C88DBC0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E2014C0, &qword_23C88DBC0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E2014C0, &qword_23C88DBC0);
LABEL_9:
      type metadata accessor for TranscriptProtoRequestContent(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E2014C0, &qword_23C88DBC0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestContentEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203DF0, &qword_23C8A0FA8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  v18 = _s26AIMLInstrumentationStreams33TranscriptProtoRequestContentEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_23C585C34(v14, &qword_27E2014C0, &qword_23C88DBC0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22TranscriptProtoRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v77 = a2;
  v3 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = (&v62 - v6);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC8, &qword_23C8A0F88);
  MEMORY[0x28223BE20](v65);
  v68 = &v62 - v7;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E08, &qword_23C8A0FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v62 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E10, &qword_23C8A0FC8);
  MEMORY[0x28223BE20](v71);
  v74 = &v62 - v12;
  v13 = type metadata accessor for TranscriptProtoRequestContent(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD0, &unk_23C8A1160);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD8, &qword_23C8A0F90);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  v75 = type metadata accessor for TranscriptProtoRequest(0);
  v76 = a1;
  v24 = *(v75 + 20);
  v25 = *(v21 + 56);
  sub_23C5855B0(&a1[v24], v23, &qword_27E203DD0, &unk_23C8A1160);
  v26 = &v77[v24];
  v27 = v77;
  sub_23C5855B0(v26, &v23[v25], &qword_27E203DD0, &unk_23C8A1160);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) != 1)
  {
    sub_23C5855B0(v23, v19, &qword_27E203DD0, &unk_23C8A1160);
    if (v28(&v23[v25], 1, v13) != 1)
    {
      sub_23C83155C(&v23[v25], v16, type metadata accessor for TranscriptProtoRequestContent);
      v32 = _s26AIMLInstrumentationStreams29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v19, v16);
      sub_23C8315C4(v16, type metadata accessor for TranscriptProtoRequestContent);
      sub_23C8315C4(v19, type metadata accessor for TranscriptProtoRequestContent);
      sub_23C585C34(v23, &qword_27E203DD0, &unk_23C8A1160);
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v19, type metadata accessor for TranscriptProtoRequestContent);
LABEL_6:
    v29 = &qword_27E203DD8;
    v30 = &qword_23C8A0F90;
    v31 = v23;
    goto LABEL_7;
  }

  if (v28(&v23[v25], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v23, &qword_27E203DD0, &unk_23C8A1160);
LABEL_9:
  v33 = v76;
  if (*v76 != *v27)
  {
    goto LABEL_10;
  }

  v36 = v74;
  v37 = v75;
  v38 = *(v75 + 24);
  v39 = *(v71 + 48);
  sub_23C5855B0(&v76[v38], v74, &qword_27E203E08, &qword_23C8A0FC0);
  sub_23C5855B0(&v27[v38], v36 + v39, &qword_27E203E08, &qword_23C8A0FC0);
  v40 = v73;
  v41 = *(v72 + 48);
  if (v41(v36, 1, v73) == 1)
  {
    if (v41(v36 + v39, 1, v40) == 1)
    {
      sub_23C585C34(v36, &qword_27E203E08, &qword_23C8A0FC0);
      goto LABEL_19;
    }
  }

  else
  {
    v42 = v70;
    sub_23C5855B0(v36, v70, &qword_27E203E08, &qword_23C8A0FC0);
    if (v41(v36 + v39, 1, v40) != 1)
    {
      v43 = v36 + v39;
      v44 = v69;
      sub_23C83155C(v43, v69, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      v45 = _s26AIMLInstrumentationStreams36TranscriptProtoRequestPrescribedPlanV2eeoiySbAC_ACtFZ_0(v42, v44);
      sub_23C8315C4(v44, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      sub_23C8315C4(v42, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      sub_23C585C34(v36, &qword_27E203E08, &qword_23C8A0FC0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_19:
      v46 = *(v37 + 28);
      v47 = &v33[v46];
      v48 = *&v33[v46 + 8];
      v49 = &v27[v46];
      v50 = *(v49 + 1);
      if (v48)
      {
        if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v50)
      {
        goto LABEL_10;
      }

      v51 = *(v37 + 32);
      v52 = *(v65 + 48);
      v53 = v68;
      sub_23C5855B0(&v33[v51], v68, &qword_27E203DC0, &unk_23C8A1170);
      v54 = &v27[v51];
      v55 = v53;
      sub_23C5855B0(v54, v53 + v52, &qword_27E203DC0, &unk_23C8A1170);
      v56 = v67;
      v57 = *(v66 + 48);
      if (v57(v53, 1, v67) == 1)
      {
        if (v57(v53 + v52, 1, v56) == 1)
        {
          sub_23C585C34(v53, &qword_27E203DC0, &unk_23C8A1170);
          goto LABEL_29;
        }
      }

      else
      {
        v58 = v64;
        sub_23C5855B0(v55, v64, &qword_27E203DC0, &unk_23C8A1170);
        if (v57(v55 + v52, 1, v56) != 1)
        {
          v59 = v55 + v52;
          v60 = v63;
          sub_23C83155C(v59, v63, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          if (*v58 == *v60 && v58[1] == v60[1] || (sub_23C872014()) && (sub_23C5D25E0(v58[2], v60[2]))
          {
            sub_23C870F34();
            sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v61 = sub_23C871754();
            sub_23C8315C4(v60, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
            sub_23C8315C4(v58, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
            sub_23C585C34(v55, &qword_27E203DC0, &unk_23C8A1170);
            if ((v61 & 1) == 0)
            {
              goto LABEL_10;
            }

LABEL_29:
            sub_23C870F34();
            sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v34 = sub_23C871754();
            return v34 & 1;
          }

          sub_23C8315C4(v60, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          sub_23C8315C4(v58, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          v29 = &qword_27E203DC0;
          v30 = &unk_23C8A1170;
          goto LABEL_40;
        }

        sub_23C8315C4(v58, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      }

      v29 = &qword_27E203DC8;
      v30 = &qword_23C8A0F88;
LABEL_40:
      v31 = v55;
      goto LABEL_7;
    }

    sub_23C8315C4(v42, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  }

  v29 = &qword_27E203E10;
  v30 = &qword_23C8A0FC8;
  v31 = v36;
LABEL_7:
  sub_23C585C34(v31, v29, v30);
LABEL_10:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoArchiveViewPayloadV2eeoiySbAC_ACtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_23C6F73FC(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5 || (a1[2] != a2[2] || v4 != v5) && (sub_23C872014() & 1) == 0)
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
    if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_14;
    }
  }

  else if (!v7)
  {
LABEL_14:
    type metadata accessor for TranscriptProtoArchiveViewPayload(0);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams21TranscriptProtoUITypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUitype(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE8, &qword_23C878F80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FABE0, &qword_23C878F78);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FABE0, &qword_23C878F78);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FABE0, &qword_23C878F78);
LABEL_9:
      type metadata accessor for TranscriptProtoUIType(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FABE0, &qword_23C878F78);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoUitype);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FABE8, &qword_23C878F80);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoUitype);
  v18 = _s26AIMLInstrumentationStreams21TranscriptProtoUitypeO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoUitype);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoUitype);
  sub_23C585C34(v14, &qword_27E1FABE0, &qword_23C878F78);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoValueExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037B0, &qword_23C8A0A10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201AC8, &unk_23C8A1370);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201AC8, &unk_23C8A1370);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201AC8, &unk_23C8A1370);
LABEL_9:
      type metadata accessor for TranscriptProtoValueExpression(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201AC8, &unk_23C8A1370);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoValueExpressionEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E2037B0, &qword_23C8A0A10);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoValueExpressionEnum);
  v18 = _s26AIMLInstrumentationStreams34TranscriptProtoValueExpressionEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_23C585C34(v14, &qword_27E201AC8, &unk_23C8A1370);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams25TranscriptProtoExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037C0, &qword_23C8A0A20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201AB8, &qword_23C88DBF8);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201AB8, &qword_23C88DBF8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
LABEL_9:
      type metadata accessor for TranscriptProtoExpression(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201AB8, &qword_23C88DBF8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E2037C0, &qword_23C8A0A20);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoExpressionEnum);
  v18 = _s26AIMLInstrumentationStreams29TranscriptProtoExpressionEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
  sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoProgramStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExpression(0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203758, &qword_23C8A09C8);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v47 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203760, &qword_23C8A09D0);
  MEMORY[0x28223BE20](v49);
  v52 = &v47 - v8;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = *(v17 + 56);
  v53 = a1;
  sub_23C5855B0(a1, &v47 - v18, &qword_27E1FAAF8, &unk_23C8A1180);
  v54 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FAAF8, &unk_23C8A1180);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) == 1)
  {
    if (v21(&v19[v20], 1, v9) == 1)
    {
      sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &qword_27E1FAB00;
    v23 = &qword_23C878ED8;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  sub_23C5855B0(v19, v15, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v21(&v19[v20], 1, v9) == 1)
  {
    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_23C83155C(&v19[v20], v12, type metadata accessor for TranscriptProtoStatementID);
  v25 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v12);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v26 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v27 = v26[5];
  v28 = *(v49 + 48);
  v30 = v52;
  v29 = v53;
  sub_23C5855B0(v53 + v27, v52, &qword_27E203758, &qword_23C8A09C8);
  v31 = v54 + v27;
  v32 = v54;
  sub_23C5855B0(v31, v30 + v28, &qword_27E203758, &qword_23C8A09C8);
  v33 = v51;
  v34 = *(v50 + 48);
  if (v34(v30, 1, v51) != 1)
  {
    v35 = v48;
    sub_23C5855B0(v30, v48, &qword_27E203758, &qword_23C8A09C8);
    if (v34(v30 + v28, 1, v33) != 1)
    {
      v38 = v30 + v28;
      v39 = v47;
      sub_23C83155C(v38, v47, type metadata accessor for TranscriptProtoExpression);
      v40 = _s26AIMLInstrumentationStreams25TranscriptProtoExpressionV2eeoiySbAC_ACtFZ_0(v35, v39);
      sub_23C8315C4(v39, type metadata accessor for TranscriptProtoExpression);
      sub_23C8315C4(v35, type metadata accessor for TranscriptProtoExpression);
      sub_23C585C34(v30, &qword_27E203758, &qword_23C8A09C8);
      if ((v40 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_23C8315C4(v35, type metadata accessor for TranscriptProtoExpression);
    goto LABEL_13;
  }

  if (v34(v30 + v28, 1, v33) != 1)
  {
LABEL_13:
    v22 = &qword_27E203760;
    v23 = &qword_23C8A09D0;
    v24 = v30;
    goto LABEL_14;
  }

  sub_23C585C34(v30, &qword_27E203758, &qword_23C8A09C8);
LABEL_18:
  v41 = v26[6];
  v42 = *(v29 + v41);
  v43 = *(v32 + v41);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v43 == 2 || ((v42 ^ v43) & 1) != 0)
  {
    goto LABEL_15;
  }

  v44 = v26[7];
  v45 = *(v29 + v44);
  v46 = *(v32 + v44);
  if (v45 == 2)
  {
    if (v46 == 2)
    {
LABEL_28:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v36 = sub_23C871754();
      return v36 & 1;
    }
  }

  else if (v46 != 2 && ((v45 ^ v46) & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s26AIMLInstrumentationStreams19TranscriptProtoPlanV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_23C872014() & 1) == 0 || (sub_23C5DEB20(a1[4], *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (a1[5] != *(a2 + 40) || v6 != v7) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v8 = *(a1 + 56);
    v9 = *(a2 + 56);
    if (v8 == 4)
    {
      if (v9 != 4)
      {
        return 0;
      }
    }

    else if (v9 == 4 || qword_23C8A1118[v8] != qword_23C8A1118[v9])
    {
      return 0;
    }

    type metadata accessor for TranscriptProtoPlan(0);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams062TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestE4ToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams053TranscriptProtoSystemRequirementAuthenticationRequestG5LevelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return 0;
    }

LABEL_6:
    type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  if (v3 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams041TranscriptProtoUpdateParameterExpression_eF0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_10;
  }

  v26 = v7;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v14 = *(updated + 24);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v26;
      sub_23C83155C(&v13[v15], v26, type metadata accessor for TranscriptProtoStatementID);
      v20 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v19);
      sub_23C8315C4(v19, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v20 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_9:
    sub_23C585C34(v13, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
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
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
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

uint64_t _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableg4LinkG0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0 || !sub_23C6F73FC(a1[2], a1[3], a2[2], a2[3]) || a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableG0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BC8, &qword_23C8A0DD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BD0, &qword_23C8A0DD8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E203BC8, &qword_23C8A0DD0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E203BC8, &qword_23C8A0DD0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E203BC8, &qword_23C8A0DD0);
LABEL_9:
      type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E203BC8, &qword_23C8A0DD0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203BD0, &qword_23C8A0DD8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  v18 = _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableG4EnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_23C585C34(v14, &qword_27E203BC8, &qword_23C8A0DD0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams035TranscriptProtoRequestContentSpeechF0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v42 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v46);
  v10 = &v42 - v9;
  v11 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DE0, &qword_23C8A0F98);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DE8, &qword_23C8A0FA0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = a1[1];
  v49 = a1;
  if ((v21 != *a2 || v22 != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v44 = v10;
  v42 = v6;
  v23 = a2;
  v43 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v24 = *(v43 + 20);
  v25 = *(v18 + 48);
  sub_23C5855B0(v49 + v24, v20, &qword_27E203DE0, &qword_23C8A0F98);
  sub_23C5855B0(v23 + v24, &v20[v25], &qword_27E203DE0, &qword_23C8A0F98);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) == 1)
  {
    if (v26(&v20[v25], 1, v11) == 1)
    {
      sub_23C585C34(v20, &qword_27E203DE0, &qword_23C8A0F98);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  sub_23C5855B0(v20, v17, &qword_27E203DE0, &qword_23C8A0F98);
  if (v26(&v20[v25], 1, v11) == 1)
  {
    sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSpeechPackage);
LABEL_12:
    v32 = &qword_27E203DE8;
    v33 = &qword_23C8A0FA0;
LABEL_13:
    v34 = v20;
LABEL_14:
    sub_23C585C34(v34, v32, v33);
    goto LABEL_15;
  }

  sub_23C83155C(&v20[v25], v14, type metadata accessor for TranscriptProtoSpeechPackage);
  if ((sub_23C5DEB74(*v17, *v14) & 1) == 0)
  {
    sub_23C8315C4(v14, type metadata accessor for TranscriptProtoSpeechPackage);
    sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSpeechPackage);
    v32 = &qword_27E203DE0;
    v33 = &qword_23C8A0F98;
    goto LABEL_13;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v37 = sub_23C871754();
  sub_23C8315C4(v14, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_23C585C34(v20, &qword_27E203DE0, &qword_23C8A0F98);
  if ((v37 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v27 = v44;
  v28 = *(v43 + 24);
  v29 = *(v46 + 48);
  sub_23C5855B0(v49 + v28, v44, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v23 + v28, v27 + v29, &qword_27E1FAAF8, &unk_23C8A1180);
  v30 = v48;
  v31 = *(v47 + 48);
  if (v31(v27, 1, v48) == 1)
  {
    if (v31(v27 + v29, 1, v30) == 1)
    {
      sub_23C585C34(v27, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = sub_23C871754();
      return v35 & 1;
    }

    goto LABEL_22;
  }

  v38 = v45;
  sub_23C5855B0(v27, v45, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v31(v27 + v29, 1, v30) == 1)
  {
    sub_23C8315C4(v38, type metadata accessor for TranscriptProtoStatementID);
LABEL_22:
    v32 = &qword_27E1FAB00;
    v33 = &qword_23C878ED8;
    v34 = v27;
    goto LABEL_14;
  }

  v39 = v27 + v29;
  v40 = v42;
  sub_23C83155C(v39, v42, type metadata accessor for TranscriptProtoStatementID);
  v41 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v38, v40);
  sub_23C8315C4(v40, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v38, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v27, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v41)
  {
    goto LABEL_25;
  }

LABEL_15:
  v35 = 0;
  return v35 & 1;
}

uint64_t _s26AIMLInstrumentationStreams033TranscriptProtoRequestContentTextF0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_11:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_8:
    sub_23C585C34(v13, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_9;
  }

  v18 = v21;
  sub_23C83155C(&v13[v15], v21, type metadata accessor for TranscriptProtoStatementID);
  v19 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v18);
  sub_23C8315C4(v18, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams028TranscriptProtoActionFailureF0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C10, &qword_23C8A0E08);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201710, &qword_23C88DBE0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201710, &qword_23C88DBE0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201710, &qword_23C88DBE0);
LABEL_9:
      type metadata accessor for TranscriptProtoActionFailureFailure(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201710, &qword_23C88DBE0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203C10, &qword_23C8A0E08);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  v18 = _s26AIMLInstrumentationStreams028TranscriptProtoActionFailureF4EnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_23C585C34(v14, &qword_27E201710, &qword_23C88DBE0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
        if (v4 || (sub_23C872014() & 1) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v3)
    {
LABEL_9:
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_23C871754() & 1;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v61 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = (&v52 - v6);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  MEMORY[0x28223BE20](v55);
  v58 = &v52 - v7;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v59 = type metadata accessor for TranscriptProtoAction(0);
  v60 = a1;
  v19 = *(v59 + 24);
  v20 = *(v16 + 56);
  sub_23C5855B0(&a1[v19], v18, &qword_27E1FAAF8, &unk_23C8A1180);
  v21 = v61;
  sub_23C5855B0(&v61[v19], &v18[v20], &qword_27E1FAAF8, &unk_23C8A1180);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_23C585C34(v18, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_11;
    }

LABEL_6:
    v23 = &qword_27E1FAB00;
    v24 = &qword_23C878ED8;
    v25 = v18;
LABEL_7:
    sub_23C585C34(v25, v23, v24);
    goto LABEL_8;
  }

  sub_23C5855B0(v18, v14, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_23C8315C4(v14, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_23C83155C(&v18[v20], v11, type metadata accessor for TranscriptProtoStatementID);
  v28 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v14, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v18, &qword_27E1FAAF8, &unk_23C8A1180);
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
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v35)
  {
    goto LABEL_8;
  }

  if (*v29 != *v21 || (sub_23C7FE23C(*(v29 + 1), *(v21 + 1)) & 1) == 0)
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
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_23C872014() & 1) == 0)
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
  sub_23C5855B0(&v29[v41], v58, &qword_27E2037A0, &qword_23C8A0A00);
  v44 = &v21[v41];
  v45 = v43;
  sub_23C5855B0(v44, v43 + v42, &qword_27E2037A0, &qword_23C8A0A00);
  v46 = v57;
  v47 = *(v56 + 48);
  if (v47(v43, 1, v57) == 1)
  {
    if (v47(v43 + v42, 1, v46) == 1)
    {
      sub_23C585C34(v43, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_34:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v26 = sub_23C871754();
      return v26 & 1;
    }

    goto LABEL_32;
  }

  v48 = v54;
  sub_23C5855B0(v45, v54, &qword_27E2037A0, &qword_23C8A0A00);
  if (v47(v45 + v42, 1, v46) == 1)
  {
    sub_23C8315C4(v48, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_32:
    v23 = &qword_27E2037A8;
    v24 = &qword_23C8A0A08;
    v25 = v45;
    goto LABEL_7;
  }

  v49 = v45 + v42;
  v50 = v53;
  sub_23C83155C(v49, v53, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v51 = sub_23C8193D0(v48, v50, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v50, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v48, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C585C34(v45, &qword_27E2037A0, &qword_23C8A0A00);
  if (v51)
  {
    goto LABEL_34;
  }

LABEL_8:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_23C82007C(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_23C872014() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoSessionStartV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E18, &qword_23C8A0FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E20, &qword_23C8A0FD8);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E28, &unk_23C8A1150);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v37 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E30, &qword_23C8A0FE0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E203E28, &unk_23C8A1150);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E203E28, &unk_23C8A1150);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E203E28, &unk_23C8A1150);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C83155C(&v19[v20], v12, type metadata accessor for TranscriptProtoLocaleSettings);
      v25 = sub_23C82007C(v15, v12, type metadata accessor for TranscriptProtoLocaleSettings);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoLocaleSettings);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoLocaleSettings);
      sub_23C585C34(v19, &qword_27E203E28, &unk_23C8A1150);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoLocaleSettings);
LABEL_6:
    v22 = &qword_27E203E30;
    v23 = &qword_23C8A0FE0;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E203E28, &unk_23C8A1150);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E203E18, &qword_23C8A0FD0);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E203E18, &qword_23C8A0FD0);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E203E18, &qword_23C8A0FD0);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E203E18, &qword_23C8A0FD0);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for TranscriptProtoDeviceDetails);
LABEL_13:
    v22 = &qword_27E203E20;
    v23 = &qword_23C8A0FD8;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C83155C(v34, v37, type metadata accessor for TranscriptProtoDeviceDetails);
  v36 = _s26AIMLInstrumentationStreams28TranscriptProtoDeviceDetailsV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_23C8315C4(v35, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_23C8315C4(v31, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_23C585C34(v28, &qword_27E203E18, &qword_23C8A0FD0);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22TranscriptProtoPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E48, &qword_23C8A0FF0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1F9958, &qword_23C873E10);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1F9958, &qword_23C873E10);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
LABEL_9:
      type metadata accessor for TranscriptProtoPayload(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1F9958, &qword_23C873E10);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203E48, &qword_23C8A0FF0);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoPayloadEnum);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoPayloadEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams20TranscriptProtoEventV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v89 = type metadata accessor for TranscriptProtoSpanID(0);
  v101 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = (&v81 - v7);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F40, &qword_23C8A10E8);
  MEMORY[0x28223BE20](v88);
  v9 = &v81 - v8;
  v10 = type metadata accessor for TranscriptProtoParticipantID(0);
  v93 = *(v10 - 8);
  v94 = v10;
  MEMORY[0x28223BE20](v10);
  v87 = (&v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF48, &unk_23C8A1140);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = (&v81 - v13);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F48, &qword_23C8A10F0);
  MEMORY[0x28223BE20](v92);
  v95 = &v81 - v14;
  v15 = type metadata accessor for TranscriptProtoTimepoint(0);
  v98 = *(v15 - 8);
  v99 = v15;
  MEMORY[0x28223BE20](v15);
  v91 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = (&v81 - v18);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F50, &qword_23C8A10F8);
  MEMORY[0x28223BE20](v97);
  v100 = &v81 - v19;
  v20 = type metadata accessor for TranscriptProtoPayload(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v81 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F58, &qword_23C8A1100);
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - v28;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_20;
  }

  v30 = a1[12];
  v31 = a2[12];
  if (v30)
  {
    if (!v31 || (a1[11] != a2[11] || v30 != v31) && (sub_23C872014() & 1) == 0)
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
  sub_23C5855B0(a1 + v32, v29, &qword_27E1F9950, &unk_23C87CFF0);
  v34 = v85 + v32;
  v35 = v85;
  sub_23C5855B0(v34, &v29[v33], &qword_27E1F9950, &unk_23C87CFF0);
  v36 = *(v21 + 48);
  if (v36(v29, 1, v20) == 1)
  {
    if (v36(&v29[v33], 1, v20) == 1)
    {
      sub_23C585C34(v29, &qword_27E1F9950, &unk_23C87CFF0);
      goto LABEL_23;
    }

LABEL_18:
    v37 = &qword_27E203F58;
    v38 = &qword_23C8A1100;
    v39 = v29;
    goto LABEL_19;
  }

  sub_23C5855B0(v29, v26, &qword_27E1F9950, &unk_23C87CFF0);
  if (v36(&v29[v33], 1, v20) == 1)
  {
    sub_23C8315C4(v26, type metadata accessor for TranscriptProtoPayload);
    goto LABEL_18;
  }

  sub_23C83155C(&v29[v33], v23, type metadata accessor for TranscriptProtoPayload);
  v42 = _s26AIMLInstrumentationStreams22TranscriptProtoPayloadV2eeoiySbAC_ACtFZ_0(v26, v23);
  sub_23C8315C4(v23, type metadata accessor for TranscriptProtoPayload);
  sub_23C8315C4(v26, type metadata accessor for TranscriptProtoPayload);
  sub_23C585C34(v29, &qword_27E1F9950, &unk_23C87CFF0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
  if ((a1[4] != v35[4] || a1[5] != v35[5]) && (sub_23C872014() & 1) == 0 || (a1[6] != v35[6] || a1[7] != v35[7]) && (sub_23C872014() & 1) == 0 || (a1[8] != v35[8] || a1[9] != v35[9]) && (sub_23C872014() & 1) == 0)
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
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_23C872014() & 1) == 0)
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
  sub_23C5855B0(a1 + v52, v100, &qword_27E1F9D08, &qword_23C87D090);
  sub_23C5855B0(v85 + v52, v54 + v53, &qword_27E1F9D08, &qword_23C87D090);
  v55 = v99;
  v56 = *(v98 + 48);
  if (v56(v54, 1, v99) == 1)
  {
    if (v56(v54 + v53, 1, v55) == 1)
    {
      sub_23C585C34(v54, &qword_27E1F9D08, &qword_23C87D090);
      goto LABEL_46;
    }

LABEL_44:
    v37 = &qword_27E203F50;
    v38 = &qword_23C8A10F8;
    v39 = v54;
    goto LABEL_19;
  }

  v57 = v49;
  v58 = v50;
  v59 = v96;
  sub_23C5855B0(v54, v96, &qword_27E1F9D08, &qword_23C87D090);
  if (v56(v54 + v53, 1, v55) == 1)
  {
    sub_23C8315C4(v59, type metadata accessor for TranscriptProtoTimepoint);
    goto LABEL_44;
  }

  v60 = v91;
  sub_23C83155C(v54 + v53, v91, type metadata accessor for TranscriptProtoTimepoint);
  v61 = _s26AIMLInstrumentationStreams24TranscriptProtoTimepointV2eeoiySbAC_ACtFZ_0(v59, v60);
  sub_23C8315C4(v60, type metadata accessor for TranscriptProtoTimepoint);
  sub_23C8315C4(v59, type metadata accessor for TranscriptProtoTimepoint);
  sub_23C585C34(v54, &qword_27E1F9D08, &qword_23C87D090);
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
  sub_23C5855B0(a1 + v62, v95, &qword_27E1FBF48, &unk_23C8A1140);
  v65 = v64;
  sub_23C5855B0(v85 + v62, v64 + v63, &qword_27E1FBF48, &unk_23C8A1140);
  v66 = v94;
  v67 = *(v93 + 48);
  if (v67(v64, 1, v94) == 1)
  {
    if (v67(v64 + v63, 1, v66) == 1)
    {
      sub_23C585C34(v64, &qword_27E1FBF48, &unk_23C8A1140);
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  v68 = v90;
  sub_23C5855B0(v65, v90, &qword_27E1FBF48, &unk_23C8A1140);
  if (v67(v65 + v63, 1, v66) == 1)
  {
    sub_23C8315C4(v68, type metadata accessor for TranscriptProtoParticipantID);
LABEL_51:
    v37 = &qword_27E203F48;
    v38 = &qword_23C8A10F0;
LABEL_52:
    v39 = v65;
    goto LABEL_19;
  }

  v69 = v65 + v63;
  v70 = v87;
  sub_23C83155C(v69, v87, type metadata accessor for TranscriptProtoParticipantID);
  if ((*v68 != *v70 || v68[1] != v70[1]) && (sub_23C872014() & 1) == 0)
  {
    sub_23C8315C4(v70, type metadata accessor for TranscriptProtoParticipantID);
    sub_23C8315C4(v68, type metadata accessor for TranscriptProtoParticipantID);
    v37 = &qword_27E1FBF48;
    v38 = &unk_23C8A1140;
    goto LABEL_52;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v71 = sub_23C871754();
  sub_23C8315C4(v70, type metadata accessor for TranscriptProtoParticipantID);
  sub_23C8315C4(v68, type metadata accessor for TranscriptProtoParticipantID);
  sub_23C585C34(v65, &qword_27E1FBF48, &unk_23C8A1140);
  v43 = v84;
  if ((v71 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_57:
  v72 = v43[15];
  v73 = *(v88 + 48);
  sub_23C5855B0(a1 + v72, v49, &qword_27E1FBF40, &qword_23C87D088);
  v74 = v85 + v72;
  v75 = v85;
  sub_23C5855B0(v74, v49 + v73, &qword_27E1FBF40, &qword_23C87D088);
  v76 = *(v51 + 48);
  v77 = v89;
  if (v76(v49, 1, v89) != 1)
  {
    v78 = v77;
    v79 = v86;
    sub_23C5855B0(v49, v86, &qword_27E1FBF40, &qword_23C87D088);
    if (v76(v49 + v73, 1, v78) == 1)
    {
      sub_23C8315C4(v79, type metadata accessor for TranscriptProtoSpanID);
      goto LABEL_64;
    }

    sub_23C83155C(v49 + v73, v50, type metadata accessor for TranscriptProtoSpanID);
    if (*v79 == *v50)
    {
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v75 = v85;
      v80 = sub_23C871754();
      sub_23C8315C4(v50, type metadata accessor for TranscriptProtoSpanID);
      sub_23C8315C4(v79, type metadata accessor for TranscriptProtoSpanID);
      sub_23C585C34(v49, &qword_27E1FBF40, &qword_23C87D088);
      if ((v80 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_60;
    }

    sub_23C8315C4(v50, type metadata accessor for TranscriptProtoSpanID);
    sub_23C8315C4(v79, type metadata accessor for TranscriptProtoSpanID);
    v37 = &qword_27E1FBF40;
    v38 = &qword_23C87D088;
    v39 = v49;
LABEL_19:
    sub_23C585C34(v39, v37, v38);
    goto LABEL_20;
  }

  if (v76(v49 + v73, 1, v77) != 1)
  {
LABEL_64:
    v37 = &qword_27E203F40;
    v38 = &qword_23C8A10E8;
    v39 = v49;
    goto LABEL_19;
  }

  sub_23C585C34(v49, &qword_27E1FBF40, &qword_23C87D088);
LABEL_60:
  if (sub_23C7FF5DC(a1[10], v75[10]))
  {
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v40 = sub_23C871754();
    return v40 & 1;
  }

LABEL_20:
  v40 = 0;
  return v40 & 1;
}

uint64_t _s26AIMLInstrumentationStreams015TranscriptProtoC0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
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
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (sub_23C5DF308(a1[2], a2[2]))
  {
    type metadata accessor for TranscriptProtoTranscript(0);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

unint64_t sub_23C821A88()
{
  result = qword_27E201608;
  if (!qword_27E201608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201608);
  }

  return result;
}

unint64_t sub_23C821ADC()
{
  result = qword_27E201668;
  if (!qword_27E201668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201668);
  }

  return result;
}

unint64_t sub_23C821B30()
{
  result = qword_27E201788;
  if (!qword_27E201788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201788);
  }

  return result;
}

unint64_t sub_23C821B84()
{
  result = qword_27E201838;
  if (!qword_27E201838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201838);
  }

  return result;
}

unint64_t sub_23C821BD8()
{
  result = qword_27E201A58;
  if (!qword_27E201A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201A58);
  }

  return result;
}

unint64_t sub_23C821C2C()
{
  result = qword_27E201AA8;
  if (!qword_27E201AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201AA8);
  }

  return result;
}

unint64_t sub_23C821C80()
{
  result = qword_27E201AE0;
  if (!qword_27E201AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201AE0);
  }

  return result;
}

unint64_t sub_23C821CD4()
{
  result = qword_27E201AF0;
  if (!qword_27E201AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201AF0);
  }

  return result;
}

unint64_t sub_23C821D28()
{
  result = qword_27E201B00;
  if (!qword_27E201B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201B00);
  }

  return result;
}

unint64_t sub_23C821D7C()
{
  result = qword_27E201B28;
  if (!qword_27E201B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201B28);
  }

  return result;
}

unint64_t sub_23C821DD4()
{
  result = qword_27E201CD8;
  if (!qword_27E201CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CD8);
  }

  return result;
}

unint64_t sub_23C821E2C()
{
  result = qword_27E201CE0;
  if (!qword_27E201CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CE0);
  }

  return result;
}

unint64_t sub_23C821E84()
{
  result = qword_27E201CE8;
  if (!qword_27E201CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CE8);
  }

  return result;
}

unint64_t sub_23C821EDC()
{
  result = qword_27E201CF0;
  if (!qword_27E201CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CF0);
  }

  return result;
}

unint64_t sub_23C821F34()
{
  result = qword_27E201CF8;
  if (!qword_27E201CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CF8);
  }

  return result;
}

unint64_t sub_23C821F8C()
{
  result = qword_27E201D00;
  if (!qword_27E201D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D00);
  }

  return result;
}

unint64_t sub_23C821FE4()
{
  result = qword_27E201D08;
  if (!qword_27E201D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D08);
  }

  return result;
}

unint64_t sub_23C82203C()
{
  result = qword_27E201D10;
  if (!qword_27E201D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D10);
  }

  return result;
}

unint64_t sub_23C822094()
{
  result = qword_27E201D18;
  if (!qword_27E201D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D18);
  }

  return result;
}

unint64_t sub_23C8220EC()
{
  result = qword_27E201D20;
  if (!qword_27E201D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D20);
  }

  return result;
}

unint64_t sub_23C822144()
{
  result = qword_27E201D28;
  if (!qword_27E201D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D28);
  }

  return result;
}

unint64_t sub_23C82219C()
{
  result = qword_27E201D30;
  if (!qword_27E201D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D30);
  }

  return result;
}

unint64_t sub_23C8221F4()
{
  result = qword_27E201D38;
  if (!qword_27E201D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D38);
  }

  return result;
}

unint64_t sub_23C82224C()
{
  result = qword_27E201D40;
  if (!qword_27E201D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D40);
  }

  return result;
}

unint64_t sub_23C8222A4()
{
  result = qword_27E201D48;
  if (!qword_27E201D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D48);
  }

  return result;
}

unint64_t sub_23C8222FC()
{
  result = qword_27E201D50;
  if (!qword_27E201D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D50);
  }

  return result;
}

unint64_t sub_23C822354()
{
  result = qword_27E201D58;
  if (!qword_27E201D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D58);
  }

  return result;
}

unint64_t sub_23C8223AC()
{
  result = qword_27E201D60;
  if (!qword_27E201D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D60);
  }

  return result;
}

unint64_t sub_23C822404()
{
  result = qword_27E201D68;
  if (!qword_27E201D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D68);
  }

  return result;
}

unint64_t sub_23C82245C()
{
  result = qword_27E201D70;
  if (!qword_27E201D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D70);
  }

  return result;
}

unint64_t sub_23C8224B4()
{
  result = qword_27E201D78;
  if (!qword_27E201D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D78);
  }

  return result;
}

unint64_t sub_23C82250C()
{
  result = qword_27E201D80;
  if (!qword_27E201D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D80);
  }

  return result;
}

unint64_t sub_23C822564()
{
  result = qword_27E201D88;
  if (!qword_27E201D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D88);
  }

  return result;
}

unint64_t sub_23C8225BC()
{
  result = qword_27E201D90;
  if (!qword_27E201D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D90);
  }

  return result;
}

unint64_t sub_23C825AF4()
{
  result = qword_27E2021A8;
  if (!qword_27E2021A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2021A8);
  }

  return result;
}

unint64_t sub_23C825B4C()
{
  result = qword_27E2021B0;
  if (!qword_27E2021B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2021B0);
  }

  return result;
}

unint64_t sub_23C827C44()
{
  result = qword_27E202468;
  if (!qword_27E202468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E202468);
  }

  return result;
}

unint64_t sub_23C827C9C()
{
  result = qword_27E202470;
  if (!qword_27E202470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E202470);
  }

  return result;
}

unint64_t sub_23C8313B0()
{
  result = qword_27E203A20;
  if (!qword_27E203A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203A20);
  }

  return result;
}

unint64_t sub_23C831404()
{
  result = qword_27E203B58;
  if (!qword_27E203B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203B58);
  }

  return result;
}

unint64_t sub_23C831458()
{
  result = qword_27E203CB0;
  if (!qword_27E203CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203CB0);
  }

  return result;
}

uint64_t sub_23C8314AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23C8314F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C83155C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C8315C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

AIMLInstrumentationStreams::TranscriptProtoCandidateSource_optional __swiftcall TranscriptProtoCandidateSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::TranscriptProtoPlanSource_optional __swiftcall TranscriptProtoPlanSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302040100uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::TranscriptProtoPrefixExpression_PrefixOp_optional __swiftcall TranscriptProtoPrefixExpression_PrefixOp.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::TranscriptProtoInfixExpression_InfixOp_optional __swiftcall TranscriptProtoInfixExpression_InfixOp.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 19;
  if (rawValue < 0x13)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::TranscriptProtoUpdateParameterExpression_UpdateKind_optional __swiftcall TranscriptProtoUpdateParameterExpression_UpdateKind.init(rawValue:)(Swift::Int rawValue)
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

unint64_t TranscriptProtoEvent.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoEvent(0);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[12]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = v2[13];
  v7 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[14];
  v9 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = v2[15];
  v11 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0xE000000000000000;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0xE000000000000000;
  result = sub_23C599848(MEMORY[0x277D84F90]);
  *(a1 + 10) = result;
  return result;
}

uint64_t TranscriptProtoEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptProtoEvent(0) + 64);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranscriptProtoEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TranscriptProtoEvent(0) + 64);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TranscriptProtoTranscript.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoTranscript(0);
  a1[3] = 0;
  a1[4] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoTimepoint.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  v3 = sub_23C870EC4();
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoRequest.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequest(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  v7[1] = 0;
  v8 = v2[8];
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_23C8327DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C832878@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C832914(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C832A4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C832AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C832C08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C832CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C832E24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a2;
  return result;
}

double TranscriptProtoSpeechPackage.Token.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_23C832FD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C833070(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoExternalAgentRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v4 = (a1 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = *(v3 + 24);
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C833584@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0) + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

unint64_t TranscriptProtoAction.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoAction(0);
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[9];
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  result = sub_23C599950(MEMORY[0x277D84F90]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23C833AC8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a2(0) + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoExternalAgentOutcome.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoStatementResult.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementResult(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a1[v5], 1, 1, v6);
  v7(&a1[v2[7]], 1, 1, v6);
  v7(&a1[v2[8]], 1, 1, v6);
  v8 = v2[9];
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C8344A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C834540(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoCandidate.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoCandidate(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_23C8347C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C834864(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C834944@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  a1(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

unint64_t TranscriptProtoClientAction.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoClientAction(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v3 = *(v2 + 36);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v5 = MEMORY[0x277D84F90];
  *(a1 + 16) = sub_23C599478(MEMORY[0x277D84F90]);
  result = sub_23C599D20(v5);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_23C834C84@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoPersonQuery.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoPersonQuery(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + *(v2 + 28));
  *v5 = 0;
  v5[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoPersonQuery.Handle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 3;
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C834F28@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  a2[1] = 0;
  a2[2] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoActionParameterContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23C835154@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = a2;
  return result;
}

uint64_t sub_23C835740@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  a2(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = &a1[v2[9]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = v2[10];
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 44);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranscriptProtoActionSuccess.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 44);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double TranscriptProtoFollowUpActionExecutableActionLinkAction.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_23C87D700;
  *(a1 + 32) = 0;
  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C83647C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1(0) + 24);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(a3 + v5, 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_23C8365C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoPlan.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 4;
  type metadata accessor for TranscriptProtoPlan(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 24);
  v3 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoQueryStepResults(0) + 24);
  v3 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseDialog.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoResponseDialog(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseOutput.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoDialogType(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[8], 1, 1, v4);
  v6 = v2[9];
  v7 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[10];
  v9 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = (a1 + v2[11]);
  *v10 = 0;
  v10[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v12 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  return result;
}

uint64_t TranscriptProtoResponseManifest.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[v2[8]];
  *v8 = 0;
  *(v8 + 1) = 0;
  a1[v2[9]] = 2;
  a1[v2[10]] = 2;
  v9 = v2[11];
  v10 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C837AA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C837B44(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoResponseParameter.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_23C879130;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  type metadata accessor for TranscriptProtoResponseParameter(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseVisual.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoResponseVisual(0) + 24);
  v3 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v5;
  return result;
}

uint64_t sub_23C837E00@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t TranscriptProtoUIConfirmationLabel.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return result;
}

double TranscriptProtoArchiveViewPayload.init()@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  a1[1] = 0u;
  a1[2] = 0u;
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a1 = xmmword_23C87D700;
  return result;
}

double sub_23C838220@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

double sub_23C838300@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  a1(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  return result;
}

uint64_t TranscriptProtoSystemPromptResolution.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoActionResolverRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[9];
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return result;
}

uint64_t TranscriptProtoContextRetrieved.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoContextRetrieved(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v3 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v3;
  return result;
}

uint64_t sub_23C838B24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  v5 = *(a1(0) + 24);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(a3 + v5, 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C838DD8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v7 = *(a1(0) + 20);
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = a3(MEMORY[0x277D84F90]);
  *a4 = result;
  return result;
}

uint64_t sub_23C838F38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(a1(0) + 20);
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a3;
  return result;
}

unint64_t TranscriptProtoASTFlatExprCallVariant.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  result = sub_23C59A0E0(MEMORY[0x277D84F90]);
  a1[2] = result;
  return result;
}

uint64_t sub_23C8392FC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  *a2 = 0;
  a2[1] = 0;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoASTPickType.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  type metadata accessor for TranscriptProtoASTPickType(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C8395C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init()@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v3 = *(updated + 24);
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + *(updated + 28), 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_23C839C6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  a1(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = a2(MEMORY[0x277D84F90]);
  *a3 = result;
  return result;
}

uint64_t sub_23C839D64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a3, 1, 1, v5);
  v7 = a2(0);
  v6(a3 + *(v7 + 20), 1, 1, v5);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C83A1EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&a3[v6], 1, 1, v7);
  v8(&a3[*(v5 + 24)], 1, 1, v7);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_23C83A354@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.init()@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v3 = *(updated + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(updated + 28);
  *v5 = 0;
  *(v5 + 8) = 1;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoSearchExpression.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoSearchExpression(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  return result;
}

unint64_t TranscriptProtoStructuredSearchExpression.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 24);
  v3 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v4 = MEMORY[0x277D84F90];
  result = sub_23C59A2C8(MEMORY[0x277D84F90]);
  *a1 = result;
  *(a1 + 1) = v4;
  return result;
}

uint64_t sub_23C83ABE0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  a2[2] = 0;
  a2[3] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v3 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v3;
  return result;
}

uint64_t TranscriptProtoSystemResponse.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  *v5 = 0;
  *(v5 + 1) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoInterpretedStatementResult.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  v6(a1 + v3[6], 1, 1, v5);
  v7 = (a1 + v3[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v3[8]);
  *v8 = 0;
  v8[1] = 0;
  v6(a1 + v3[9], 1, 1, v5);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoProgramStatement.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v3[6]) = 2;
  *(a1 + v3[7]) = 2;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C83B85C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init()@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoStatementID.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoStatementID(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoUndoRedoRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + *(v2 + 32), 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoClientUndoRedoRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + *(v2 + 28), 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23C83BE8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = a1(0);
  (*(*(v9 - 8) + 56))(a5, 1, 1, v9);
  v10 = a2(0);
  v11 = *(v10 + 20);
  v12 = a3(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C83C060@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a2(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 56);
  v9(a3 + v7, 1, 1, v8);
  v9(a3 + *(v6 + 24), 1, 1, v8);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoQueryDecorationResult.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 36);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a1[v2], 1, 1, DecorationToolRetrievalResponse);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v5;
  *(a1 + 2) = v5;
  *(a1 + 3) = v5;
  *(a1 + 4) = v5;
  return result;
}

uint64_t sub_23C83C328@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  v10 = *(v7 + 24);
  v11 = a3(0);
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = 0;
  *(a4 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C83C99C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821A88();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C831404();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CAB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821B84();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8313B0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821BD8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821C80();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821CD4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821C2C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CD20(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821D28();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821D7C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821ADC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C62DA20();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoEvent.clientRequestID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TranscriptProtoEvent.clientRequestID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientSessionID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TranscriptProtoEvent.clientSessionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientApplicationID.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TranscriptProtoEvent.clientApplicationID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.rawInitiatedSpans.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t TranscriptProtoEvent.rawQueryEventID.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t TranscriptProtoEvent.rawQueryEventID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientGroupID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoEvent(0) + 48));

  return v1;
}

uint64_t TranscriptProtoEvent.clientGroupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoEvent(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoEvent.init(rawID:rawSessionID:rawQueryEventID:rawPayload:clientRequestID:clientSessionID:clientApplicationID:clientGroupID:timepoint:sender:postingSpan:rawInitiatedSpans:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = type metadata accessor for TranscriptProtoEvent(0);
  v23 = v22[11];
  v24 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  v25 = v22[13];
  v26 = (a9 + v22[12]);
  v27 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v27 - 8) + 56))(a9 + v25, 1, 1, v27);
  v28 = v22[14];
  v29 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = v22[15];
  v31 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  sub_23C5842D0(a7, a9 + v23, &qword_27E1F9950, &unk_23C87CFF0);
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 56) = a11;
  *(a9 + 72) = a12;
  *v26 = a13;
  v26[1] = a14;
  sub_23C5842D0(a15, a9 + v25, &qword_27E1F9D08, &qword_23C87D090);
  sub_23C5842D0(a16, a9 + v28, &qword_27E1FBF48, &unk_23C8A1140);
  result = sub_23C5842D0(a17, a9 + v30, &qword_27E1FBF40, &qword_23C87D088);
  *(a9 + 80) = a18;
  return result;
}

uint64_t TranscriptProtoTranscript.sessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TranscriptProtoTranscript.sessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TranscriptProtoTranscript.events.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TranscriptProtoTranscript.clientSessionID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TranscriptProtoTranscript.clientSessionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TranscriptProtoTranscript.init(sessionID:clientSessionID:events:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for TranscriptProtoTranscript(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[2] = a5;
  return result;
}

uint64_t TranscriptProtoTimepoint.init(rawDate:suspendingClockInstantNs:continuousClockInstantNs:rawBootSessionUuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  v13 = sub_23C870EC4();
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a6[v12], &unk_27E1F9D10, &qword_23C874E00);
  *a6 = a2;
  *(a6 + 1) = a3;
  *(a6 + 2) = a4;
  *(a6 + 3) = a5;
  return result;
}

uint64_t TranscriptProtoSessionStart.init(initialLocaleSettings:originatingDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 20);
  v8 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E203E28, &unk_23C8A1150);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E203E18, &qword_23C8A0FD0);
}

uint64_t TranscriptProtoRequest.init(content:safetyMode:prescribedPlan:rawRewriteMetadataEventID:rewriteMetadataInlined:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  v15 = v12[6];
  v16 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = v12[8];
  v18 = &a7[v12[7]];
  v19 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v19 - 8) + 56))(&a7[v17], 1, 1, v19);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a7[v13], &qword_27E203DD0, &unk_23C8A1160);
  *a7 = a2;
  sub_23C5842D0(a3, &a7[v15], &qword_27E203E08, &qword_23C8A0FC0);
  *v18 = a4;
  v18[1] = a5;
  return sub_23C5842D0(a6, &a7[v17], &qword_27E203DC0, &unk_23C8A1170);
}

uint64_t TranscriptProtoRequestContentSpeechContent.init(text:speechPackage:statementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_23C5842D0(a3, &a5[v11], &qword_27E203DE0, &qword_23C8A0F98);
  return sub_23C5842D0(a4, &a5[v13], &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t sub_23C83E7F0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  a2(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.init(text:confidenceScore:startTime:silenceStartTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20));

  return v1;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.init(content:rawRewriteMetadataEventID:rewriteMetadataInlined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v12 = *(v11 + 24);
  v13 = (a5 + *(v11 + 20));
  v14 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v14 - 8) + 56))(a5 + v12, 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a5, &qword_27E203DD0, &unk_23C8A1160);
  *v13 = a2;
  v13[1] = a3;
  return sub_23C5842D0(a4, a5 + v12, &qword_27E203DC0, &unk_23C8A1170);
}

uint64_t sub_23C83EEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  a4(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init(resultStatementID:elementAtIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = a4 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0) + 20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, a4, &qword_27E1FAAF8, &unk_23C8A1180);
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.elementAtIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoAction.parameterValues.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_23C83F33C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t sub_23C83F39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TranscriptProtoAction.init(statementID:bundleID:isConfirmed:parameterValues:planEventID:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoAction(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(a9 + v15, 1, 1, v16);
  v17 = (a9 + v14[7]);
  v18 = (a9 + v14[8]);
  v19 = v14[9];
  v20 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a9 + v15, &qword_27E1FAAF8, &unk_23C8A1180);
  *v17 = a2;
  v17[1] = a3;
  *a9 = a4;
  *(a9 + 8) = a5;
  *v18 = a6;
  v18[1] = a7;
  return sub_23C5842D0(a8, a9 + v19, &qword_27E2037A0, &qword_23C8A0A00);
}

uint64_t TranscriptProtoActionParameterValue.init(value:promptSelection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoActionParameterValue(0) + 20);
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E203D58, &unk_23C8A11A0);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E203CF8, &qword_23C8A0ED8);
}

void TranscriptProtoPromptSelection.promptSelectionValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t TranscriptProtoPromptSelection.promptSelectionValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t static TranscriptProtoPromptSelectionEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
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

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t static TranscriptProtoActionConfirmationSystemStyleEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D18, &unk_23C8A11C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_23C85C9E8(a1, &v10 - v6, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C85C9E8(a2, &v7[v8], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  LOBYTE(a2) = _s26AIMLInstrumentationStreams61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(v7, &v7[v8]);
  sub_23C85CA50(&v7[v8], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return a2 & 1;
}

uint64_t sub_23C83FCAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D18, &unk_23C8A11C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_23C85C9E8(a1, &v10 - v6, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C85C9E8(a2, &v7[v8], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  LOBYTE(a2) = static TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.== infix(_:_:)();
  sub_23C85CA50(&v7[v8], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return a2 & 1;
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(bundleIdentifier:source:isExplicitRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0) + 24);
  v11 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_23C5842D0(a3, a5 + v10, &qword_27E203D08, &qword_23C8A0EE8);
  *(a5 + 16) = a4;
  return result;
}

uint64_t TranscriptProtoParameterValue.init(value:promptSelection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAB68, &unk_23C879140);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E203CF8, &qword_23C8A0ED8);
}

uint64_t TranscriptProtoExternalAgentOutcome.init(responseText:statementID:statementOutcome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  sub_23C5842D0(a2, &a4[v9], &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a3, &a4[v11], &qword_27E1FBB18, &unk_23C87B950);
}

uint64_t TranscriptProtoStatementResultPayload.init(outcome:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoStatementResultPayload(0) + 20);
  v8 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FBB18, &unk_23C87B950);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E1FBB08, &unk_23C8A11D0);
}

uint64_t TranscriptProtoStatementResult.actionEventID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TranscriptProtoStatementResult.actionEventID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TranscriptProtoStatementResult.init(actionEventID:payload:resultStatementID:originProgramStatementID:originTaskStatementID:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoStatementResult(0);
  v11 = v10[5];
  v12 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v12 - 8) + 56))(&a8[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&a8[v13], 1, 1, v14);
  v16 = v10[7];
  v15(&a8[v16], 1, 1, v14);
  v17 = v10[8];
  v15(&a8[v17], 1, 1, v14);
  v18 = v10[9];
  v19 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v19 - 8) + 56))(&a8[v18], 1, 1, v19);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_23C5842D0(a3, &a8[v11], &qword_27E203CE8, &qword_23C8A0EC8);
  sub_23C5842D0(a4, &a8[v13], &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5842D0(a5, &a8[v16], &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5842D0(a6, &a8[v17], &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a7, &a8[v18], &qword_27E2037A0, &qword_23C8A0A00);
}

uint64_t TranscriptProtoCandidate.init(value:source:promptStatus:statementID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for TranscriptProtoCandidate(0);
  v11 = v10[5];
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = v10[7];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(&a5[v15], 1, 1, v16);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a5[v11], &qword_27E1FAB68, &unk_23C879140);
  *a5 = v9;
  sub_23C5842D0(a3, &a5[v13], &qword_27E1FABB8, &unk_23C8A11E0);
  return sub_23C5842D0(a4, &a5[v15], &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t static TranscriptProtoCandidatePromptStatusEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
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

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t TranscriptProtoClientAction.shimParameters.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t TranscriptProtoClientAction.clientQueryID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TranscriptProtoClientAction.clientQueryID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TranscriptProtoClientAction.planEventID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TranscriptProtoClientAction.planEventID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TranscriptProtoClientAction.init(toolID:parameters:clientQueryID:planEventID:statementID:shimParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v18 = *(type metadata accessor for TranscriptProtoClientAction(0) + 36);
  v19 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 4) = a4;
  *(a9 + 5) = a5;
  *(a9 + 6) = a6;
  *(a9 + 7) = a7;
  result = sub_23C5842D0(a8, &a9[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  *(a9 + 3) = a10;
  return result;
}

uint64_t sub_23C8415DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  a3(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  return result;
}

uint64_t TranscriptProtoPersonQuery.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TranscriptProtoPersonQuery.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23C84186C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C831458();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoPersonQuery.Handle.init(kind:label:value:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  *a6 = 3;
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = v11;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t TranscriptProtoPersonQuery.init(name:handle:isMe:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = (a7 + *(v14 + 28));
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  result = sub_23C5842D0(a3, a7 + v15, &qword_27E203CB8, &unk_23C8A11F0);
  *a7 = a4;
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_23C841A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  a4(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  a5[1] = a1;
  a5[2] = a2;
  *a5 = a3;
  return result;
}

uint64_t TranscriptProtoActionParameterContext.init(statementID:parameterID:tool:actionClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = *(v12 + 28);
  v16 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a6 + v13, &qword_27E1FAAF8, &unk_23C8A1180);
  *a6 = a2;
  *(a6 + 8) = a3;
  result = sub_23C5842D0(a4, a6 + v15, &qword_27E2037A0, &qword_23C8A0A00);
  *(a6 + 16) = v11;
  return result;
}

uint64_t sub_23C841DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  a4(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevelEnum.hashValue.getter()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t TranscriptProtoActionFailure.init(failure:concludesStreamingStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoActionFailure(0) + 20);
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E203C20, &unk_23C8A1230);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36));

  return v1;
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoActionSuccess.init(returnValue:undoContext:didShowInAppResult:followUpAction:shouldOpen:inAppSearchString:concludesStreamingStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v13 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v14 = v13[6];
  v15 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v15 - 8) + 56))(&a9[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = v13[8];
  v19 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v13[10];
  v21 = &a9[v13[9]];
  v22 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v22 - 8) + 56))(&a9[v20], 1, 1, v22);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v14], &qword_27E1FAB68, &unk_23C879140);
  sub_23C5842D0(a2, &a9[v16], &qword_27E203C00, &unk_23C8A1240);
  *a9 = a3;
  sub_23C5842D0(a4, &a9[v18], &qword_27E203BF0, &qword_23C8A0DF0);
  a9[1] = a5;
  *v21 = a6;
  v21[1] = a7;
  return sub_23C5842D0(a8, &a9[v20], &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t sub_23C842CC8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  a3(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  return sub_23C5842D0(a1, a6, a4, a5);
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.getter()
{
  v1 = *(v0 + 16);
  sub_23C5ACFC8(v1, *(v0 + 24));
  return v1;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C595090(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_23C843020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, void *a7@<X8>)
{
  a6(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.parameterIndex.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.init(parameterID:parameterIndex:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 32) = a4 & 1;
  *(a6 + 16) = a5;
  *(a6 + 24) = a3;
  return result;
}

uint64_t sub_23C843490(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821B30();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoParameterNotAllowed.init(parameterID:value:reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 24);
  v11 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_23C5842D0(a3, a5 + v10, &qword_27E1FAB68, &unk_23C879140);
  *(a5 + 16) = v9;
  return result;
}

uint64_t sub_23C8436A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = *(a4(0) + 20);
  v16 = a5(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  return sub_23C5842D0(a3, &a8[v15], a6, a7);
}

uint64_t TranscriptProtoPlan.promptResponse.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptProtoPlan.promptResponse.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoPlan.statements.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t TranscriptProtoPlan.overrideID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TranscriptProtoPlan.overrideID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t TranscriptProtoPlan.init(prompt:promptResponse:statements:overrideID:planSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a8;
  *(a9 + 56) = 4;
  type metadata accessor for TranscriptProtoPlan(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v17;
  return result;
}

uint64_t static TranscriptProtoRecoverableErrorEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B38, &unk_23C8A1270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_23C85C9E8(a1, &v10 - v6, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C85C9E8(a2, &v7[v8], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  LOBYTE(a2) = _s26AIMLInstrumentationStreams34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(v7, &v7[v8]);
  sub_23C85CA50(&v7[v8], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoPlanGenerationError);
  return a2 & 1;
}

uint64_t sub_23C843BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B38, &unk_23C8A1270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_23C85C9E8(a1, &v10 - v6, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C85C9E8(a2, &v7[v8], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  LOBYTE(a2) = static TranscriptProtoPlanGenerationError.== infix(_:_:)();
  sub_23C85CA50(&v7[v8], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoPlanGenerationError);
  return a2 & 1;
}

uint64_t static TranscriptProtoPlanGenerationErrorEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B18, &unk_23C8A1280);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v10 - v6);
  v8 = *(v5 + 56);
  sub_23C85C9E8(a1, &v10 - v6, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C85C9E8(a2, v7 + v8, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  LOBYTE(a2) = _s26AIMLInstrumentationStreams45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(v7, (v7 + v8));
  sub_23C85CA50(v7 + v8, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  return a2 & 1;
}

uint64_t sub_23C843E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B18, &unk_23C8A1280);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_23C85C9E8(a1, &v10 - v6, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C85C9E8(a2, &v7[v8], type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  LOBYTE(a2) = static TranscriptProtoPlanGenerationModelOutputError.== infix(_:_:)();
  sub_23C85CA50(&v7[v8], type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  return a2 & 1;
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.init(rawModelOutput:prompt:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 24);
  v13 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_23C5842D0(a5, &a6[v12], &qword_27E203B08, &qword_23C8A0D28);
}

uint64_t TranscriptProtoQueryStep.init(statementID:context:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v10 = *(Step + 20);
  v11 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = *(Step + 24);
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  (*(*(Payload - 8) + 56))(a4 + v12, 1, 1, Payload);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a4, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5842D0(a2, a4 + v10, &qword_27E203AF8, &unk_23C8A1290);
  return sub_23C5842D0(a3, a4 + v12, &qword_27E203AE8, &qword_23C8A0D10);
}

uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.init(queryResults:originStatementID:rawQueryEventID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(type metadata accessor for TranscriptProtoQueryStepResults(0) + 24);
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  result = sub_23C5842D0(a2, &a5[v10], &qword_27E1FAAF8, &unk_23C8A1180);
  *(a5 + 1) = a3;
  *(a5 + 2) = a4;
  return result;
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoResponseDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  type metadata accessor for TranscriptProtoResponseDialog(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44));

  return v1;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:responseType:resultStatementIds:options:attribution:dialogIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = *a4;
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v15 = v14[7];
  v16 = type metadata accessor for TranscriptProtoDialogType(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a9 + v15, 1, 1, v16);
  v18 = v14[8];
  v17(a9 + v18, 1, 1, v16);
  v19 = v14[9];
  v20 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = v14[10];
  v22 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  v23 = (a9 + v14[11]);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  sub_23C5842D0(a2, a9 + v15, &qword_27E203AA0, &unk_23C8A12B0);
  sub_23C5842D0(a3, a9 + v18, &qword_27E203AA0, &unk_23C8A12B0);
  *(a9 + 8) = v25;
  *(a9 + 16) = a5;
  sub_23C5842D0(a6, a9 + v19, &qword_27E203A90, &qword_23C8A0CC0);
  result = sub_23C5842D0(a7, a9 + v21, &qword_27E203A80, &unk_23C8A12C0);
  *v23 = a8;
  v23[1] = a10;
  return result;
}

uint64_t sub_23C8455A0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t sub_23C845600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.useTemplateAsFallback.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.init(parameters:dialog:visual:templateID:templateLocation:useTemplateAsFallback:dialogPresentationHint:attribution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char *a10, uint64_t a11)
{
  v27 = *a10;
  v13 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v14 = v13[5];
  v15 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v15 - 8) + 56))(&a9[v14], 1, 1, v15);
  v16 = v13[6];
  v17 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = &a9[v13[7]];
  v19 = &a9[v13[8]];
  v20 = v13[9];
  v21 = v13[10];
  a9[v21] = 2;
  v22 = v13[11];
  v23 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  sub_23C5842D0(a2, &a9[v14], &qword_27E203A10, &qword_23C8A0C50);
  sub_23C5842D0(a3, &a9[v16], &qword_27E203A00, &unk_23C8A12E0);
  *v18 = a4;
  *(v18 + 1) = a5;
  *v19 = a6;
  *(v19 + 1) = a7;
  a9[v20] = a8;
  a9[v21] = v27;
  return sub_23C5842D0(a11, &a9[v22], &qword_27E2039F0, &qword_23C8A0C38);
}

uint64_t TranscriptProtoResponseParameter.value.getter()
{
  v1 = *(v0 + 16);
  sub_23C5EDBA0(v1, *(v0 + 24));
  return v1;
}

uint64_t TranscriptProtoResponseParameter.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C5AD0AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoResponseParameter.format.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t TranscriptProtoResponseParameter.format.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t TranscriptProtoResponseParameter.init(key:value:type:required:format:profanityFilter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *(a9 + 16) = xmmword_23C879130;
  type metadata accessor for TranscriptProtoResponseParameter(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_23C5AD0AC(*(a9 + 16), *(a9 + 24));
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t TranscriptProtoResponseVisual.init(views:labels:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for TranscriptProtoResponseVisual(0) + 24);
  v9 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 1) = a2;
  return sub_23C5842D0(a3, &a4[v8], &qword_27E2039E0, &unk_23C8A12F0);
}

uint64_t sub_23C845F38@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  a2(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t sub_23C8460D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  a5(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t TranscriptProtoArchiveViewPayload.init(viewData:containerBundleID:targetBundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t TranscriptProtoControlPayload.controlMetadata.getter()
{
  v1 = *v0;
  sub_23C5ACFC8(*v0, *(v0 + 8));
  return v1;
}

uint64_t TranscriptProtoControlPayload.controlMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C595090(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t TranscriptProtoSystemPromptResolution.init(actionEventID:userAction:systemResponseEventID:statementID:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[7];
  v18 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = v14[8];
  v20 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v20 - 8) + 56))(&a8[v19], 1, 1, v20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a8 + 2) = a1;
  *(a8 + 3) = a2;
  sub_23C5842D0(a3, &a8[v15], &qword_27E2039A8, &qword_23C8A0BF8);
  *a8 = a4;
  *(a8 + 1) = a5;
  sub_23C5842D0(a6, &a8[v17], &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a7, &a8[v19], &qword_27E203998, &unk_23C8A1310);
}

uint64_t TranscriptProtoActionResolverRequest.init(resolvedParameters:unresolvedParameterSets:isConfirmed:statementID:isAuthenticated:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v14 = v13[7];
  v15 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v15 - 8) + 56))(a7 + v14, 1, 1, v15);
  v16 = v13[8];
  v17 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  v18 = v13[9];
  v19 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v19 - 8) + 56))(a7 + v18, 1, 1, v19);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7 + v14, &qword_27E203970, &unk_23C8A1320);
  *a7 = a2;
  *(a7 + 8) = a3;
  sub_23C5842D0(a4, a7 + v16, &qword_27E1FAAF8, &unk_23C8A1180);
  *(a7 + 9) = a5;
  return sub_23C5842D0(a6, a7 + v18, &qword_27E2037A0, &qword_23C8A0A00);
}

uint64_t TranscriptProtoContextRetrieved.init(requiredContext:utteranceContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for TranscriptProtoContextRetrieved(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t TranscriptProtoRetrievedContextStatement.init(statementID:retrievedContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoRetrievedContextStatement(0) + 20);
  v8 = type metadata accessor for ContextProtoRetrievedContext(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E1FABA8, &qword_23C878F50);
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.init(statementID:dynamicEnumerationEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0) + 20);
  v8 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E1FAAE8, &unk_23C8A1330);
}

uint64_t TranscriptProtoParameter.collectionIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_23C847124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v17 = *(a6(0) + 24);
  v18 = a7(0);
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  return sub_23C5842D0(a5, a9 + v17, a8, a10);
}

uint64_t sub_23C8473D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = *(a3(0) + 20);
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a7[v13], a5, a6);
  *a7 = a2;
  return result;
}

uint64_t sub_23C847590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = *(a3(0) + 20);
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  return sub_23C5842D0(a2, &a7[v13], a5, a6);
}

void TranscriptProtoASTPickType.astpickTypeValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TranscriptProtoASTPickType.astpickTypeValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t static TranscriptProtoAstpickTypeEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t sub_23C847940(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t sub_23C8479F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  a5(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init(lhs:path:value:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a4;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v10 = *(updated + 24);
  v11 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a5 + v10, 1, 1, v11);
  v13 = *(updated + 28);
  v12(a5 + v13, 1, 1, v11);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a5 + v10, &qword_27E1FAB88, &unk_23C8A1350);
  *a5 = a2;
  result = sub_23C5842D0(a3, a5 + v13, &qword_27E1FAB88, &unk_23C8A1350);
  *(a5 + 8) = v15;
  return result;
}

uint64_t sub_23C847E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = *(a4(0) + 20);
  v16 = a5(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a8[v15], a6, a7);
  *a8 = a2;
  *(a8 + 1) = a3;
  return result;
}

uint64_t sub_23C848238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 56);
  v14(a7, 1, 1, v13);
  v15 = *(a4(0) + 20);
  v14(a7 + v15, 1, 1, v13);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7, a5, a6);
  return sub_23C5842D0(a2, a7 + v15, a5, a6);
}

uint64_t sub_23C848884@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, _BYTE *a8@<X8>)
{
  v12 = *a1;
  v13 = a4(0);
  v14 = *(v13 + 20);
  v15 = a5(0);
  v16 = *(*(v15 - 8) + 56);
  v16(&a8[v14], 1, 1, v15);
  v17 = *(v13 + 24);
  v16(&a8[v17], 1, 1, v15);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = v12;
  sub_23C5842D0(a2, &a8[v14], a6, a7);
  return sub_23C5842D0(a3, &a8[v17], a6, a7);
}

uint64_t sub_23C848A88@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, _BYTE *a7@<X8>)
{
  v12 = *a1;
  v13 = *(a3(0) + 20);
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = v12;
  return sub_23C5842D0(a2, &a7[v13], a5, a6);
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.init(parameterID:kind:value:parameterIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v15 = *(updated + 24);
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = a7 + *(updated + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v13;
  result = sub_23C5842D0(a4, a7 + v15, &qword_27E1FAAF8, &unk_23C8A1180);
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  return result;
}

uint64_t TranscriptProtoSearchExpression.init(query:isLowConfidenceKnowledge:pickOne:shouldOpenResultIfApplicable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for TranscriptProtoSearchExpression(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

uint64_t sub_23C8494E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  a5(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.init(parameters:returnType:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 24);
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  result = sub_23C5842D0(a2, &a4[v8], &qword_27E1FAC40, &unk_23C8791C0);
  *(a4 + 1) = a3;
  return result;
}

uint64_t static TranscriptProtoToolParameterValueEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203778, &qword_23C8A09E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v10 - v6);
  v8 = *(v5 + 56);
  sub_23C85C9E8(a1, &v10 - v6, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C85C9E8(a2, v7 + v8, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  LOBYTE(a2) = sub_23C707370(v7, (v7 + v8));
  sub_23C85CA50(v7 + v8, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C85CA50(v7, type metadata accessor for ToolKitProtoTypedValue);
  return a2 & 1;
}

uint64_t sub_23C8499F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203778, &qword_23C8A09E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v10 - v6);
  v8 = *(v5 + 56);
  sub_23C85C9E8(a1, &v10 - v6, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C85C9E8(a2, v7 + v8, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  LOBYTE(a2) = static ToolKitProtoTypedValue.== infix(_:_:)(v7, (v7 + v8));
  sub_23C85CA50(v7 + v8, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C85CA50(v7, type metadata accessor for ToolKitProtoTypedValue);
  return a2 & 1;
}

uint64_t TranscriptProtoToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.types.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t TranscriptProtoSystemResponse.clientQueryID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24));

  return v1;
}

uint64_t TranscriptProtoSystemResponse.clientQueryID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoSystemResponse.init(responseOutput:clientQueryID:interpretedStatementResults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(v10 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a5[v11], &qword_27E203768, &unk_23C8A1390);
  *v13 = a2;
  *(v13 + 1) = a3;
  *a5 = a4;
  return result;
}

uint64_t TranscriptProtoInterpretedStatementResult.init(outcome:resultStatementID:originProgramStatementID:actionEventID:toolID:originTaskStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v11 - 8) + 56))(a9, 1, 1, v11);
  v12 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v13 = v12[5];
  v21 = v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a9 + v13, 1, 1, v14);
  v16 = v12[6];
  v15(a9 + v16, 1, 1, v14);
  v17 = (a9 + v12[7]);
  v18 = (a9 + v12[8]);
  v19 = v12[9];
  v15(a9 + v19, 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a9, &qword_27E1FBB18, &unk_23C87B950);
  sub_23C5842D0(a2, a9 + v21, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5842D0(a3, a9 + v16, &qword_27E1FAAF8, &unk_23C8A1180);
  *v17 = a4;
  v17[1] = a5;
  *v18 = a6;
  v18[1] = a7;
  return sub_23C5842D0(a8, a9 + v19, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoProgramStatement.isRoot.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.isExpanded.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.init(id:expression:isRoot:isExpanded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v12 = v11[5];
  v13 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  v14 = v11[6];
  v15 = v11[7];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a5, &qword_27E1FAAF8, &unk_23C8A1180);
  result = sub_23C5842D0(a2, a5 + v12, &qword_27E203758, &qword_23C8A09C8);
  *(a5 + v14) = a3;
  *(a5 + v15) = a4;
  return result;
}

uint64_t sub_23C84A744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, void *a8@<X8>)
{
  a7(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init(rawValue:)@<X0>(int a1@<W0>, _DWORD *a2@<X8>)
{
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t TranscriptProtoStatementID.init(index:name:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for TranscriptProtoStatementID(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TranscriptProtoUndoRedoRequest.init(bundleIdentifier:token:operation:statementID:statementIDToUndo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a5;
  v12 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v13 = *(v12 + 28);
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a8 + v13, 1, 1, v14);
  v16 = *(v12 + 32);
  v15(a8 + v16, 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 16) = v11;
  sub_23C5842D0(a6, a8 + v13, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a7, a8 + v16, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoClientUndoRedoRequest.init(token:operation:statementID:statementIDToUndo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a6 + v11, 1, 1, v12);
  v14 = *(v10 + 28);
  v13(a6 + v14, 1, 1, v12);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  sub_23C5842D0(a4, a6 + v11, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a5, a6 + v14, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoTypeConversionRequest.init(value:target:statementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a4, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5842D0(a2, a4 + v10, &qword_27E1FAC40, &unk_23C8791C0);
  return sub_23C5842D0(a3, a4 + v12, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t sub_23C84B530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a4(0);
  (*(*(v13 - 8) + 56))(a8, 1, 1, v13);
  v14 = a5(0);
  v15 = *(v14 + 20);
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a8 + v15, 1, 1, v16);
  v18 = *(v14 + 24);
  v17(a8 + v18, 1, 1, v16);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a8, a6, a7);
  sub_23C5842D0(a2, a8 + v15, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a3, a8 + v18, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoQueryDecorationResult.init(spans:requiredContext:utteranceContext:toolRetrievalResponse:dynamicEnumerationEntities:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 36);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a7[v14], 1, 1, DecorationToolRetrievalResponse);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  result = sub_23C5842D0(a4, &a7[v14], &qword_27E1FACE0, &unk_23C8A13B0);
  *(a7 + 3) = a5;
  *(a7 + 4) = a6;
  return result;
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.init(statementID:dataSource:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v11 = *(DecorationPrePlannerResult + 20);
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = *(DecorationPrePlannerResult + 24);
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  (*(*(DecorationPrePlannerResultPayload - 8) + 56))(&a5[v13], 1, 1, DecorationPrePlannerResultPayload);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a5[v11], &qword_27E1FAAF8, &unk_23C8A1180);
  *a5 = a2;
  *(a5 + 1) = a3;
  return sub_23C5842D0(a4, &a5[v13], &qword_27E203738, &qword_23C8A09B0);
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _s26AIMLInstrumentationStreams51TranscriptProtoQueryDecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v59 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v58 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v57 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v56 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v55 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v54 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v9 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v11 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205370, &qword_23C8A6720);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &DecorationPrePlannerResultPayloadRepeatedStringVariant - v28;
  v30 = *(v27 + 56);
  sub_23C85C9E8(v60, &DecorationPrePlannerResultPayloadRepeatedStringVariant - v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_23C85C9E8(v61, &v29[v30], type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_23C85C9E8(v29, v14, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v35 = v58;
          sub_23C868210(&v29[v30], v58, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
          if (sub_23C5D0A74(*v14, *v35))
          {
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
              sub_23C85CA50(v35, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
              v34 = v14;
              goto LABEL_37;
            }
          }

          v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
          sub_23C85CA50(v35, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
          v46 = v14;
          goto LABEL_44;
        }

        v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
        v37 = v14;
      }

      else
      {
        sub_23C85C9E8(v29, v11, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v40 = v59;
          sub_23C868210(&v29[v30], v59, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
          if (sub_23C5D2670(*v11, *v40))
          {
            sub_23C870F34();
            sub_23C73EA18();
            v41 = sub_23C871754();
            sub_23C85CA50(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
            if (v41)
            {
              v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
              v34 = v11;
LABEL_38:
              sub_23C85CA50(v34, v42);
              sub_23C85CA50(v29, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
              return 1;
            }
          }

          else
          {
            sub_23C85CA50(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
          }

          v47 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
          v46 = v11;
          goto LABEL_45;
        }

        v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
        v37 = v11;
      }

      goto LABEL_33;
    }

    sub_23C85C9E8(v29, v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
      v37 = v17;
      goto LABEL_33;
    }

    v38 = v57;
    sub_23C868210(&v29[v30], v57, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    if (sub_23C5CF590(*v17, *v38))
    {
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
        sub_23C85CA50(v38, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
        v34 = v17;
        goto LABEL_37;
      }
    }

    v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
    sub_23C85CA50(v38, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    v46 = v17;
LABEL_44:
    v47 = v45;
LABEL_45:
    sub_23C85CA50(v46, v47);
    sub_23C85CA50(v29, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v29, v25, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
      v37 = v25;
      goto LABEL_33;
    }

    v43 = v54;
    sub_23C868210(&v29[v30], v54, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    if (sub_23C5D25E0(*v25, *v43))
    {
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
        sub_23C85CA50(v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
        v34 = v25;
        goto LABEL_37;
      }
    }

    v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
    sub_23C85CA50(v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    v46 = v25;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_23C85C9E8(v29, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
      v37 = v20;
      goto LABEL_33;
    }

    v39 = v56;
    sub_23C868210(&v29[v30], v56, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    if (sub_23C5D0880(*v20, *v39))
    {
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
        sub_23C85CA50(v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
        v34 = v20;
        goto LABEL_37;
      }
    }

    v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
    sub_23C85CA50(v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    v46 = v20;
    goto LABEL_44;
  }

  sub_23C85C9E8(v29, v23, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v55;
    sub_23C868210(&v29[v30], v55, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    if (sub_23C5D15A4(*v23, *v32))
    {
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
        sub_23C85CA50(v32, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
        v34 = v23;
LABEL_37:
        v42 = v33;
        goto LABEL_38;
      }
    }

    v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
    sub_23C85CA50(v32, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    v46 = v23;
    goto LABEL_44;
  }

  v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
  v37 = v23;
LABEL_33:
  sub_23C85CA50(v37, v36);
  sub_23C585C34(v29, &qword_27E205370, &qword_23C8A6720);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams46TranscriptProtoSystemPromptResolutionInputEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053A0, &unk_23C8A6750);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  v20 = *(v17 + 56);
  sub_23C85C9E8(a1, &v28 - v18, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_23C85C9E8(a2, &v19[v20], type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C85C9E8(v19, v13, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v22 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
        v23 = v13;
        goto LABEL_13;
      }

      sub_23C868210(&v19[v20], v6, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v24 = static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)();
      sub_23C85CA50(v6, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v25 = v13;
      v26 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
    }

    else
    {
      sub_23C85C9E8(v19, v15, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v22 = type metadata accessor for TranscriptProtoRequestContentTextContent;
        v23 = v15;
LABEL_13:
        sub_23C85CA50(v23, v22);
        goto LABEL_14;
      }

      sub_23C868210(&v19[v20], v9, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v24 = static TranscriptProtoRequestContentTextContent.== infix(_:_:)();
      sub_23C85CA50(v9, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v25 = v15;
      v26 = type metadata accessor for TranscriptProtoRequestContentTextContent;
    }

    sub_23C85CA50(v25, v26);
    sub_23C85CA50(v19, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    return v24 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_14;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_14:
    sub_23C585C34(v19, &qword_27E2053A0, &unk_23C8A6750);
    v24 = 0;
    return v24 & 1;
  }

  sub_23C85CA50(v19, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  v24 = 1;
  return v24 & 1;
}

uint64_t _s26AIMLInstrumentationStreams43TranscriptProtoSystemRequirementMessageEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  MEMORY[0x28223BE20](v27);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053E0, &qword_23C8A6798);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = *(v16 + 56);
  sub_23C85C9E8(a1, &v26 - v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_23C85C9E8(a2, &v18[v19], type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_29;
        }

        goto LABEL_20;
      }

      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_20;
      }
    }

LABEL_29:
    sub_23C85CA50(v18, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v21 = 1;
    return v21 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v18, v14, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v22 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest;
      v23 = v14;
LABEL_19:
      sub_23C85CA50(v23, v22);
      goto LABEL_20;
    }

    sub_23C868210(&v18[v19], v8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    v24 = *v14 == *v8 && v14[1] == v8[1];
    if (!v24 && (sub_23C872014() & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
    {
      sub_23C85CA50(v8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_23C85CA50(v14, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_23C85CA50(v18, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      goto LABEL_21;
    }

    sub_23C85CA50(v8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_23C85CA50(v14, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_29;
    }

LABEL_20:
    sub_23C585C34(v18, &qword_27E2053E0, &qword_23C8A6798);
LABEL_21:
    v21 = 0;
    return v21 & 1;
  }

  sub_23C85C9E8(v18, v12, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest;
    v23 = v12;
    goto LABEL_19;
  }

  sub_23C868210(&v18[v19], v6, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v21 = _s26AIMLInstrumentationStreams53TranscriptProtoSystemRequirementAuthenticationRequestV2eeoiySbAC_ACtFZ_0(v12, v6);
  sub_23C85CA50(v6, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  sub_23C85CA50(v12, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  sub_23C85CA50(v18, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams42TranscriptProtoSessionCoordinatorErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v4 = MEMORY[0x28223BE20](v36);
  v35 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v34 = (&v33 - v7);
  MEMORY[0x28223BE20](v6);
  v9 = (&v33 - v8);
  v10 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v33 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v33 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205400, &qword_23C8A67B8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - v21;
  v23 = *(v20 + 56);
  sub_23C85C9E8(a1, &v33 - v21, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_23C85C9E8(a2, &v22[v23], type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C85C9E8(v22, v16, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v34;
        sub_23C868210(&v22[v23], v34, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v26 = *v16 == *v25 && v16[1] == v25[1];
        if (v26 || (sub_23C872014()) && v16[2] == v25[2])
        {
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            sub_23C85CA50(v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v27 = v16;
LABEL_35:
            sub_23C85CA50(v27, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_23C85CA50(v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
            return 1;
          }
        }

        sub_23C85CA50(v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v30 = v16;
        goto LABEL_37;
      }

      v13 = v16;
    }

    else
    {
      sub_23C85C9E8(v22, v13, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v28 = v35;
        sub_23C868210(&v22[v23], v35, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v29 = *v13 == *v28 && v13[1] == v28[1];
        if (v29 || (sub_23C872014()) && v13[2] == v28[2])
        {
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            sub_23C85CA50(v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v27 = v13;
            goto LABEL_35;
          }
        }

        sub_23C85CA50(v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v30 = v13;
        goto LABEL_37;
      }
    }
  }

  else
  {
    sub_23C85C9E8(v22, v18, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_23C868210(&v22[v23], v9, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v31 = *v18 == *v9 && v18[1] == v9[1];
      if (v31 || (sub_23C872014()) && v18[2] == v9[2])
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          sub_23C85CA50(v9, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v27 = v18;
          goto LABEL_35;
        }
      }

      sub_23C85CA50(v9, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v30 = v18;
LABEL_37:
      sub_23C85CA50(v30, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C85CA50(v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      return 0;
    }

    v13 = v18;
  }

  sub_23C85CA50(v13, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C585C34(v22, &qword_27E205400, &qword_23C8A67B8);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams40TranscriptProtoRequestPrescribedPlanEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v66 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  MEMORY[0x28223BE20](v66);
  v75 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  MEMORY[0x28223BE20](v65);
  v74 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  MEMORY[0x28223BE20](v64);
  v73 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  MEMORY[0x28223BE20](v63);
  v72 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  MEMORY[0x28223BE20](v62);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  MEMORY[0x28223BE20](v67);
  v69 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  MEMORY[0x28223BE20](v61);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v12 = MEMORY[0x28223BE20](v11);
  v76 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v77 = &v61 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v61 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v61 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v61 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = &v61 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205418, &qword_23C8A67D0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v61 - v35;
  v37 = *(v34 + 56);
  sub_23C85C9E8(v78, &v61 - v35, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_23C85C9E8(v79, &v36[v37], type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23C85C9E8(v36, v32, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
        if (swift_getEnumCaseMultiPayload())
        {
          v39 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
          v40 = v32;
LABEL_58:
          sub_23C85CA50(v40, v39);
          sub_23C585C34(v36, &qword_27E205418, &qword_23C8A67D0);
LABEL_84:
          v46 = 0;
          return v46 & 1;
        }

        v59 = v68;
        sub_23C868210(&v36[v37], v68, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
        if (*v32 == *v59 && *(v32 + 1) == *(v59 + 8) || (sub_23C872014()) && v32[16] == *(v59 + 16) && v32[17] == *(v59 + 17))
        {
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            v42 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
            sub_23C85CA50(v59, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
            v43 = v32;
            goto LABEL_78;
          }
        }

        v55 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
        sub_23C85CA50(v59, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
        v56 = v32;
        goto LABEL_82;
      }

      sub_23C85C9E8(v36, v30, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v39 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
        v40 = v30;
        goto LABEL_58;
      }

      v47 = v69;
      sub_23C868210(&v36[v37], v69, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      if (*v30 == *v47 && v30[1] == v47[1] || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v42 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
          sub_23C85CA50(v47, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
          v43 = v30;
          goto LABEL_78;
        }
      }

      v55 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
      sub_23C85CA50(v47, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      v56 = v30;
LABEL_82:
      v58 = v55;
      goto LABEL_83;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_23C85C9E8(v36, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v39 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
        v40 = v24;
        goto LABEL_58;
      }

      v51 = v72;
      sub_23C868210(&v36[v37], v72, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      if (*v24 == *v51 && *(v24 + 1) == *(v51 + 8) || (sub_23C872014()) && v24[16] == *(v51 + 16))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          sub_23C85CA50(v51, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
          v43 = v24;
          v52 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
LABEL_79:
          sub_23C85CA50(v43, v52);
          sub_23C85CA50(v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
          v46 = 1;
          return v46 & 1;
        }
      }

      sub_23C85CA50(v51, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v56 = v24;
      v58 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
LABEL_83:
      sub_23C85CA50(v56, v58);
      sub_23C85CA50(v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      goto LABEL_84;
    }

    sub_23C85C9E8(v36, v27, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v39 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
      v40 = v27;
      goto LABEL_58;
    }

    v44 = v70;
    sub_23C868210(&v36[v37], v70, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    if ((*v27 != *v44 || *(v27 + 1) != *(v44 + 8)) && (sub_23C872014() & 1) == 0 || v27[16] != *(v44 + 16) || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
    {
      v55 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
      sub_23C85CA50(v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v56 = v27;
      goto LABEL_82;
    }

    v42 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
    sub_23C85CA50(v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    v43 = v27;
    goto LABEL_78;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_23C85C9E8(v36, v21, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v39 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
        v40 = v21;
        goto LABEL_58;
      }

      v41 = v73;
      sub_23C868210(&v36[v37], v73, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      if ((*v21 != *v41 || *(v21 + 1) != *(v41 + 8)) && (sub_23C872014() & 1) == 0 || v21[16] != *(v41 + 16) || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v55 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
        sub_23C85CA50(v41, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
        v56 = v21;
        goto LABEL_82;
      }

      v42 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
      sub_23C85CA50(v41, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      v43 = v21;
LABEL_78:
      v52 = v42;
      goto LABEL_79;
    }

    v48 = v77;
    sub_23C85C9E8(v36, v77, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v49 = v74;
      sub_23C868210(&v36[v37], v74, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      if (*v48 == *v49 && *(v48 + 8) == *(v49 + 8) || (sub_23C872014()) && *(v48 + 16) == *(v49 + 16))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v50 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
LABEL_77:
          v42 = v50;
          sub_23C85CA50(v49, v50);
          v43 = v48;
          goto LABEL_78;
        }
      }

      v57 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
LABEL_81:
      v55 = v57;
      sub_23C85CA50(v49, v57);
      v56 = v48;
      goto LABEL_82;
    }

    v54 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
LABEL_57:
    v39 = v54;
    v40 = v48;
    goto LABEL_58;
  }

  if (EnumCaseMultiPayload != 6)
  {
    v48 = v76;
    sub_23C85C9E8(v36, v76, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v54 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
      goto LABEL_57;
    }

    v49 = v75;
    sub_23C868210(&v36[v37], v75, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    v53 = *(v49 + 8);
    if (*(v48 + 8))
    {
      if (!*(v49 + 8))
      {
LABEL_80:
        v57 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
        goto LABEL_81;
      }
    }

    else
    {
      if (*v48 != *v49)
      {
        v53 = 1;
      }

      if (v53)
      {
        goto LABEL_80;
      }
    }

    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      v50 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
      goto LABEL_77;
    }

    goto LABEL_80;
  }

  sub_23C85C9E8(v36, v16, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v39 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
    v40 = v16;
    goto LABEL_58;
  }

  v45 = v71;
  sub_23C868210(&v36[v37], v71, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v46 = _s26AIMLInstrumentationStreams44TranscriptProtoRequestPrescribedPlanOpenToolV2eeoiySbAC_ACtFZ_0(v16, v45);
  sub_23C85CA50(v45, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  sub_23C85CA50(v16, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  sub_23C85CA50(v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  return v46 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoActionRequirementEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptProtoAppRequirement(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053E8, &qword_23C8A67A0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_23C85C9E8(a1, &v33 - v22, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_23C85C9E8(v34, &v23[v24], type metadata accessor for TranscriptProtoActionRequirementEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C85C9E8(v23, v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v26 = type metadata accessor for TranscriptProtoPermissionRequirement;
        v27 = v17;
        goto LABEL_14;
      }

      sub_23C868210(&v23[v24], v7, type metadata accessor for TranscriptProtoPermissionRequirement);
      v29 = _s26AIMLInstrumentationStreams36TranscriptProtoPermissionRequirementV2eeoiySbAC_ACtFZ_0(v17, v7);
      v30 = type metadata accessor for TranscriptProtoPermissionRequirement;
      sub_23C85CA50(v7, type metadata accessor for TranscriptProtoPermissionRequirement);
      v31 = v17;
    }

    else
    {
      sub_23C85C9E8(v23, v19, type metadata accessor for TranscriptProtoActionRequirementEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v26 = type metadata accessor for TranscriptProtoAppRequirement;
        v27 = v19;
LABEL_14:
        sub_23C85CA50(v27, v26);
        goto LABEL_15;
      }

      sub_23C868210(&v23[v24], v10, type metadata accessor for TranscriptProtoAppRequirement);
      v29 = static TranscriptProtoAppRequirement.== infix(_:_:)();
      v30 = type metadata accessor for TranscriptProtoAppRequirement;
      sub_23C85CA50(v10, type metadata accessor for TranscriptProtoAppRequirement);
      v31 = v19;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C85C9E8(v23, v14, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v26 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
      v27 = v14;
      goto LABEL_14;
    }

    v28 = v33;
    sub_23C868210(&v23[v24], v33, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    v29 = _s26AIMLInstrumentationStreams39TranscriptProtoSystemRequirementMessageV2eeoiySbAC_ACtFZ_0(v14, v28);
    v30 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
    sub_23C85CA50(v28, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    v31 = v14;
LABEL_17:
    sub_23C85CA50(v31, v30);
    sub_23C85CA50(v23, type metadata accessor for TranscriptProtoActionRequirementEnum);
    return v29 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_15:
    sub_23C585C34(v23, &qword_27E2053E8, &qword_23C8A67A0);
    v29 = 0;
    return v29 & 1;
  }

  sub_23C85CA50(v23, type metadata accessor for TranscriptProtoActionRequirementEnum);
  v29 = 1;
  return v29 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoStatementOutcomeEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v3 = type metadata accessor for TranscriptProtoSnippetStream(0);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  MEMORY[0x28223BE20](v83);
  v96 = (&v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoActionFailure(0);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TranscriptProtoActionRequirement(0);
  MEMORY[0x28223BE20](v10 - 8);
  v92 = (&v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = (&v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  MEMORY[0x28223BE20](v16 - 8);
  v88 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  MEMORY[0x28223BE20](v18 - 8);
  v87 = (&v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  MEMORY[0x28223BE20](v85);
  v89 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  MEMORY[0x28223BE20](v21 - 8);
  v86 = (&v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for TranscriptProtoActionSuccess(0);
  MEMORY[0x28223BE20](v23 - 8);
  v84 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v26 = MEMORY[0x28223BE20](v25);
  v102 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v103 = (&v82 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v100 = &v82 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v99 = (&v82 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v98 = (&v82 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v97 = (&v82 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v82 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = (&v82 - v42);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = (&v82 - v45);
  v47 = MEMORY[0x28223BE20](v44);
  v101 = (&v82 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = (&v82 - v50);
  MEMORY[0x28223BE20](v49);
  v53 = &v82 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053C8, &qword_23C8A6780);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v57 = &v82 - v56;
  v58 = *(v55 + 56);
  sub_23C85C9E8(a1, &v82 - v56, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_23C85C9E8(v104, &v57[v58], type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23C85C9E8(v57, v53, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (!swift_getEnumCaseMultiPayload())
        {
          v78 = v84;
          sub_23C868210(&v57[v58], v84, type metadata accessor for TranscriptProtoActionSuccess);
          found = static TranscriptProtoActionSuccess.== infix(_:_:)();
          v62 = type metadata accessor for TranscriptProtoActionSuccess;
          sub_23C85CA50(v78, type metadata accessor for TranscriptProtoActionSuccess);
          v63 = v53;
          goto LABEL_61;
        }

        v69 = type metadata accessor for TranscriptProtoActionSuccess;
        v70 = v53;
        goto LABEL_58;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_23C85C9E8(v57, v51, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v60 = v86;
          sub_23C868210(&v57[v58], v86, type metadata accessor for TranscriptProtoActionConfirmation);
          found = _s26AIMLInstrumentationStreams33TranscriptProtoActionConfirmationV2eeoiySbAC_ACtFZ_0(v51, v60);
          v62 = type metadata accessor for TranscriptProtoActionConfirmation;
          sub_23C85CA50(v60, type metadata accessor for TranscriptProtoActionConfirmation);
          v63 = v51;
LABEL_61:
          sub_23C85CA50(v63, v62);
          sub_23C85CA50(v57, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return found & 1;
        }

        v69 = type metadata accessor for TranscriptProtoActionConfirmation;
        v70 = v51;
        goto LABEL_58;
      }

      v46 = v101;
      sub_23C85C9E8(v57, v101, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v67 = v89;
        sub_23C868210(&v57[v58], v89, type metadata accessor for TranscriptProtoParameterNeedsValue);
        if (*v46 == *v67 && v46[1] == v67[1] || (sub_23C872014() & 1) != 0)
        {
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            v68 = type metadata accessor for TranscriptProtoParameterNeedsValue;
            goto LABEL_36;
          }
        }

        v80 = type metadata accessor for TranscriptProtoParameterNeedsValue;
LABEL_65:
        v81 = v80;
        sub_23C85CA50(v67, v80);
        sub_23C85CA50(v46, v81);
        sub_23C85CA50(v57, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        goto LABEL_59;
      }

      v76 = type metadata accessor for TranscriptProtoParameterNeedsValue;
      goto LABEL_54;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_23C85C9E8(v57, v43, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v66 = v88;
          sub_23C868210(&v57[v58], v88, type metadata accessor for TranscriptProtoParameterDisambiguation);
          found = _s26AIMLInstrumentationStreams38TranscriptProtoParameterDisambiguationV2eeoiySbAC_ACtFZ_0(v43, v66);
          v62 = type metadata accessor for TranscriptProtoParameterDisambiguation;
          sub_23C85CA50(v66, type metadata accessor for TranscriptProtoParameterDisambiguation);
          v63 = v43;
          goto LABEL_61;
        }

        v69 = type metadata accessor for TranscriptProtoParameterDisambiguation;
        v70 = v43;
      }

      else
      {
        sub_23C85C9E8(v57, v40, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v75 = v90;
          sub_23C868210(&v57[v58], v90, type metadata accessor for TranscriptProtoParameterNotAllowed);
          found = _s26AIMLInstrumentationStreams34TranscriptProtoParameterNotAllowedV2eeoiySbAC_ACtFZ_0(v40, v75);
          v62 = type metadata accessor for TranscriptProtoParameterNotAllowed;
          sub_23C85CA50(v75, type metadata accessor for TranscriptProtoParameterNotAllowed);
          v63 = v40;
          goto LABEL_61;
        }

        v69 = type metadata accessor for TranscriptProtoParameterNotAllowed;
        v70 = v40;
      }

      goto LABEL_58;
    }

    sub_23C85C9E8(v57, v46, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v64 = v87;
      sub_23C868210(&v57[v58], v87, type metadata accessor for TranscriptProtoParameterConfirmation);
      found = _s26AIMLInstrumentationStreams36TranscriptProtoParameterConfirmationV2eeoiySbAC_ACtFZ_0(v46, v64);
      v65 = type metadata accessor for TranscriptProtoParameterConfirmation;
      goto LABEL_39;
    }

    v76 = type metadata accessor for TranscriptProtoParameterConfirmation;
LABEL_54:
    v69 = v76;
    v70 = v46;
LABEL_58:
    sub_23C85CA50(v70, v69);
    sub_23C585C34(v57, &qword_27E2053C8, &qword_23C8A6780);
LABEL_59:
    found = 0;
    return found & 1;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v46 = v97;
      sub_23C85C9E8(v57, v97, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v76 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
        goto LABEL_54;
      }

      v64 = v91;
      sub_23C868210(&v57[v58], v91, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      found = _s26AIMLInstrumentationStreams42TranscriptProtoParameterCandidatesNotFoundV2eeoiySbAC_ACtFZ_0(v46, v64);
      v65 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        v46 = v99;
        sub_23C85C9E8(v57, v99, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v64 = v93;
          sub_23C868210(&v57[v58], v93, type metadata accessor for TranscriptProtoToolDisambiguation);
          found = sub_23C809D04(v46, v64);
          v65 = type metadata accessor for TranscriptProtoToolDisambiguation;
          goto LABEL_39;
        }

        v76 = type metadata accessor for TranscriptProtoToolDisambiguation;
        goto LABEL_54;
      }

      v46 = v98;
      sub_23C85C9E8(v57, v98, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v76 = type metadata accessor for TranscriptProtoActionRequirement;
        goto LABEL_54;
      }

      v64 = v92;
      sub_23C868210(&v57[v58], v92, type metadata accessor for TranscriptProtoActionRequirement);
      found = _s26AIMLInstrumentationStreams32TranscriptProtoActionRequirementV2eeoiySbAC_ACtFZ_0(v46, v64);
      v65 = type metadata accessor for TranscriptProtoActionRequirement;
    }

LABEL_39:
    v62 = v65;
    sub_23C85CA50(v64, v65);
    v63 = v46;
    goto LABEL_61;
  }

  if (EnumCaseMultiPayload == 9)
  {
    v71 = v100;
    sub_23C85C9E8(v57, v100, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v72 = v94;
      sub_23C868210(&v57[v58], v94, type metadata accessor for TranscriptProtoActionFailure);
      found = static TranscriptProtoActionFailure.== infix(_:_:)();
      v73 = type metadata accessor for TranscriptProtoActionFailure;
LABEL_44:
      v62 = v73;
      sub_23C85CA50(v72, v73);
      v63 = v71;
      goto LABEL_61;
    }

    v77 = type metadata accessor for TranscriptProtoActionFailure;
LABEL_57:
    v69 = v77;
    v70 = v71;
    goto LABEL_58;
  }

  if (EnumCaseMultiPayload != 10)
  {
    v71 = v102;
    sub_23C85C9E8(v57, v102, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v72 = v95;
      sub_23C868210(&v57[v58], v95, type metadata accessor for TranscriptProtoSnippetStream);
      found = static TranscriptProtoSnippetStream.== infix(_:_:)();
      v73 = type metadata accessor for TranscriptProtoSnippetStream;
      goto LABEL_44;
    }

    v77 = type metadata accessor for TranscriptProtoSnippetStream;
    goto LABEL_57;
  }

  v46 = v103;
  sub_23C85C9E8(v57, v103, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    v76 = type metadata accessor for TranscriptProtoValueDisambiguation;
    goto LABEL_54;
  }

  v67 = v96;
  sub_23C868210(&v57[v58], v96, type metadata accessor for TranscriptProtoValueDisambiguation);
  if ((sub_23C5D15A4(*v46, *v67) & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
  {
    v80 = type metadata accessor for TranscriptProtoValueDisambiguation;
    goto LABEL_65;
  }

  v68 = type metadata accessor for TranscriptProtoValueDisambiguation;
LABEL_36:
  v74 = v68;
  sub_23C85CA50(v67, v68);
  sub_23C85CA50(v46, v74);
  sub_23C85CA50(v57, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  found = 1;
  return found & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoExecutorErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053F8, &qword_23C8A67B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_23C85C9E8(a1, &v19 - v13, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_23C85C9E8(a2, &v14[v15], type metadata accessor for TranscriptProtoExecutorErrorEnum);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
LABEL_3:
      sub_23C85CA50(v14, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      return 1;
    }

    goto LABEL_6;
  }

  sub_23C85C9E8(v14, v10, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C85CA50(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_6:
    sub_23C585C34(v14, &qword_27E2053F8, &qword_23C8A67B0);
    return 0;
  }

  sub_23C868210(&v14[v15], v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v18 = *v10 == *v7 && v10[1] == v7[1];
  if (v18 || (sub_23C872014()) && v10[2] == v7[2])
  {
    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      sub_23C85CA50(v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C85CA50(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      goto LABEL_3;
    }
  }

  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C85CA50(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C85CA50(v14, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoVisualOutputTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v36 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v36);
  v42 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v37);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  MEMORY[0x28223BE20](v39);
  v40 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  MEMORY[0x28223BE20](v38);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v36 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v36 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053B8, &qword_23C8A6770);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v36 - v22;
  v24 = *(v21 + 56);
  sub_23C85C9E8(a1, &v36 - v22, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_23C85C9E8(v43, &v23[v24], type metadata accessor for TranscriptProtoVisualOutputType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C85C9E8(v23, v14, type metadata accessor for TranscriptProtoVisualOutputType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v26 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
        v27 = v14;
        goto LABEL_26;
      }

      v28 = v41;
      sub_23C868210(&v23[v24], v41, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      if (!sub_23C6F73FC(*v14, *(v14 + 1), *v28, *(v28 + 8)) || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v33 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
        sub_23C85CA50(v28, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
        v34 = v14;
        goto LABEL_37;
      }

      v29 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
      sub_23C85CA50(v28, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      v30 = v14;
    }

    else
    {
      sub_23C85C9E8(v23, v11, type metadata accessor for TranscriptProtoVisualOutputType);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v26 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
        v27 = v11;
        goto LABEL_26;
      }

      v32 = v42;
      sub_23C868210(&v23[v24], v42, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      if (!sub_23C6F73FC(*v11, v11[1], *v32, v32[1]) || (v11[2] != v32[2] || v11[3] != v32[3]) && (sub_23C872014() & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v33 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
        sub_23C85CA50(v32, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
        v34 = v11;
        goto LABEL_37;
      }

      v29 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
      sub_23C85CA50(v32, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      v30 = v11;
    }

LABEL_33:
    sub_23C85CA50(v30, v29);
    sub_23C85CA50(v23, type metadata accessor for TranscriptProtoVisualOutputType);
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v23, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
      v27 = v17;
      goto LABEL_26;
    }

    v31 = v40;
    sub_23C868210(&v23[v24], v40, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    if ((*v17 != *v31 || v17[1] != v31[1]) && (sub_23C872014() & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
    {
      v33 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
      sub_23C85CA50(v31, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      v34 = v17;
      goto LABEL_37;
    }

    v29 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
    sub_23C85CA50(v31, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    v30 = v17;
    goto LABEL_33;
  }

  sub_23C85C9E8(v23, v19, type metadata accessor for TranscriptProtoVisualOutputType);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C868210(&v23[v24], v7, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    if (*v19 == *v7 && v19[1] == v7[1] || (sub_23C872014() & 1) != 0)
    {
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v29 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
        sub_23C85CA50(v7, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
        v30 = v19;
        goto LABEL_33;
      }
    }

    v33 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
    sub_23C85CA50(v7, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    v34 = v19;
LABEL_37:
    sub_23C85CA50(v34, v33);
    sub_23C85CA50(v23, type metadata accessor for TranscriptProtoVisualOutputType);
    return 0;
  }

  v26 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
  v27 = v19;
LABEL_26:
  sub_23C85CA50(v27, v26);
  sub_23C585C34(v23, &qword_27E2053B8, &qword_23C8A6770);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoSessionErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v2 = type metadata accessor for TranscriptProtoExecutorError(0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoPlannerError(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v39);
  v40 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v38 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205408, &qword_23C8A67C0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v38 - v25;
  v27 = *(v24 + 56);
  sub_23C85C9E8(v42, &v38 - v25, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_23C85C9E8(v43, &v26[v27], type metadata accessor for TranscriptProtoSessionErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_23C85C9E8(v26, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        v37 = v40;
        sub_23C868210(&v26[v27], v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        if (*v22 == *v37 && v22[1] == v37[1] || (sub_23C872014()) && v22[2] == v37[2])
        {
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            sub_23C85CA50(v37, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_23C85CA50(v22, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_23C85CA50(v26, type metadata accessor for TranscriptProtoSessionErrorEnum);
            v31 = 1;
            return v31 & 1;
          }
        }

        sub_23C85CA50(v37, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_23C85CA50(v22, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_23C85CA50(v26, type metadata accessor for TranscriptProtoSessionErrorEnum);
        goto LABEL_18;
      }

      v29 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
      v30 = v22;
LABEL_17:
      sub_23C85CA50(v30, v29);
      sub_23C585C34(v26, &qword_27E205408, &qword_23C8A67C0);
LABEL_18:
      v31 = 0;
      return v31 & 1;
    }

    sub_23C85C9E8(v26, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
      v30 = v20;
      goto LABEL_17;
    }

    sub_23C868210(&v26[v27], v9, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v31 = _s26AIMLInstrumentationStreams38TranscriptProtoSessionCoordinatorErrorV2eeoiySbAC_ACtFZ_0(v20, v9);
    v34 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
    sub_23C85CA50(v9, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v32 = v20;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_23C85C9E8(v26, v14, type metadata accessor for TranscriptProtoSessionErrorEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v29 = type metadata accessor for TranscriptProtoExecutorError;
      v30 = v14;
      goto LABEL_17;
    }

    v35 = v41;
    sub_23C868210(&v26[v27], v41, type metadata accessor for TranscriptProtoExecutorError);
    v31 = _s26AIMLInstrumentationStreams28TranscriptProtoExecutorErrorV2eeoiySbAC_ACtFZ_0(v14, v35);
    v34 = type metadata accessor for TranscriptProtoExecutorError;
    sub_23C85CA50(v35, type metadata accessor for TranscriptProtoExecutorError);
    v32 = v14;
LABEL_12:
    v33 = v34;
    goto LABEL_13;
  }

  sub_23C85C9E8(v26, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v29 = type metadata accessor for TranscriptProtoPlannerError;
    v30 = v17;
    goto LABEL_17;
  }

  sub_23C868210(&v26[v27], v6, type metadata accessor for TranscriptProtoPlannerError);
  v31 = static TranscriptProtoPlannerError.== infix(_:_:)();
  sub_23C85CA50(v6, type metadata accessor for TranscriptProtoPlannerError);
  v32 = v17;
  v33 = type metadata accessor for TranscriptProtoPlannerError;
LABEL_13:
  sub_23C85CA50(v32, v33);
  sub_23C85CA50(v26, type metadata accessor for TranscriptProtoSessionErrorEnum);
  return v31 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoQueryPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  MEMORY[0x28223BE20](v41);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v12 = MEMORY[0x28223BE20](PayloadEnum);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v40 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053C0, &qword_23C8A6778);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v40 - v25;
  v27 = *(v24 + 56);
  sub_23C85C9E8(v44, &v40 - v25, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_23C85C9E8(v45, &v26[v27], type metadata accessor for TranscriptProtoQueryPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_23C85C9E8(v26, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_23C868210(&v26[v27], v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        if (sub_23C7FD6C0(*v22, *v10))
        {
          sub_23C870F34();
          sub_23C73EA18();
          v39 = sub_23C871754();
          sub_23C85CA50(v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
          if (v39)
          {
            sub_23C85CA50(v22, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
            sub_23C85CA50(v26, type metadata accessor for TranscriptProtoQueryPayloadEnum);
            v33 = 1;
            return v33 & 1;
          }
        }

        else
        {
          sub_23C85CA50(v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        }

        sub_23C85CA50(v22, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        sub_23C85CA50(v26, type metadata accessor for TranscriptProtoQueryPayloadEnum);
        goto LABEL_18;
      }

      v29 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery;
      v30 = v22;
LABEL_17:
      sub_23C85CA50(v30, v29);
      sub_23C585C34(v26, &qword_27E2053C0, &qword_23C8A6778);
LABEL_18:
      v33 = 0;
      return v33 & 1;
    }

    sub_23C85C9E8(v26, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = type metadata accessor for TranscriptProtoPersonQuery;
      v30 = v20;
      goto LABEL_17;
    }

    sub_23C868210(&v26[v27], v8, type metadata accessor for TranscriptProtoPersonQuery);
    v33 = static TranscriptProtoPersonQuery.== infix(_:_:)();
    v34 = type metadata accessor for TranscriptProtoPersonQuery;
    sub_23C85CA50(v8, type metadata accessor for TranscriptProtoPersonQuery);
    v35 = v20;
LABEL_10:
    v36 = v34;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C85C9E8(v26, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v29 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery;
      v30 = v17;
      goto LABEL_17;
    }

    v31 = &v26[v27];
    v32 = v42;
    sub_23C868210(v31, v42, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    v33 = static TranscriptProtoQueryPayload.StringQuery.== infix(_:_:)();
    v34 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery;
    sub_23C85CA50(v32, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    v35 = v17;
    goto LABEL_10;
  }

  sub_23C85C9E8(v26, v14, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v29 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery;
    v30 = v14;
    goto LABEL_17;
  }

  v37 = v43;
  sub_23C868210(&v26[v27], v43, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v33 = static TranscriptProtoQueryPayload.IdentifierQuery.== infix(_:_:)();
  sub_23C85CA50(v37, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v35 = v14;
  v36 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery;
LABEL_13:
  sub_23C85CA50(v35, v36);
  sub_23C85CA50(v26, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  return v33 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoPlannerErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053F0, &qword_23C8A67A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_23C85C9E8(a1, &v19 - v13, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_23C85C9E8(a2, &v14[v15], type metadata accessor for TranscriptProtoPlannerErrorEnum);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
LABEL_3:
      sub_23C85CA50(v14, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      return 1;
    }

    goto LABEL_6;
  }

  sub_23C85C9E8(v14, v10, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C85CA50(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_6:
    sub_23C585C34(v14, &qword_27E2053F0, &qword_23C8A67A8);
    return 0;
  }

  sub_23C868210(&v14[v15], v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v18 = *v10 == *v7 && v10[1] == v7[1];
  if (v18 || (sub_23C872014()) && v10[2] == v7[2])
  {
    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      sub_23C85CA50(v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C85CA50(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      goto LABEL_3;
    }
  }

  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C85CA50(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C85CA50(v14, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoShimParameterEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  MEMORY[0x28223BE20](v40);
  v42 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v39 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = (&v39 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205410, &qword_23C8A67C8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v39 - v25;
  v27 = *(v24 + 56);
  sub_23C85C9E8(v43, &v39 - v25, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_23C85C9E8(v44, &v26[v27], type metadata accessor for TranscriptProtoShimParameterEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C85C9E8(v26, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v29 = type metadata accessor for TranscriptProtoPersonQuery;
        v30 = v17;
        goto LABEL_19;
      }

      sub_23C868210(&v26[v27], v6, type metadata accessor for TranscriptProtoPersonQuery);
      v31 = static TranscriptProtoPersonQuery.== infix(_:_:)();
      sub_23C85CA50(v6, type metadata accessor for TranscriptProtoPersonQuery);
      v32 = v17;
      v33 = type metadata accessor for TranscriptProtoPersonQuery;
LABEL_23:
      sub_23C85CA50(v32, v33);
      sub_23C85CA50(v26, type metadata accessor for TranscriptProtoShimParameterEnum);
      return v31 & 1;
    }

    sub_23C85C9E8(v26, v14, type metadata accessor for TranscriptProtoShimParameterEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v29 = type metadata accessor for TranscriptProtoPhotosCandidates;
      v30 = v14;
      goto LABEL_19;
    }

    v36 = v41;
    sub_23C868210(&v26[v27], v41, type metadata accessor for TranscriptProtoPhotosCandidates);
    v31 = sub_23C80BFC0(v14, v36);
    v37 = type metadata accessor for TranscriptProtoPhotosCandidates;
    sub_23C85CA50(v36, type metadata accessor for TranscriptProtoPhotosCandidates);
    v32 = v14;
LABEL_22:
    v33 = v37;
    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v26, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v29 = type metadata accessor for ToolKitProtoTypedValue;
      v30 = v22;
LABEL_19:
      sub_23C85CA50(v30, v29);
      sub_23C585C34(v26, &qword_27E205410, &qword_23C8A67C8);
LABEL_20:
      v31 = 0;
      return v31 & 1;
    }

    sub_23C868210(&v26[v27], v10, type metadata accessor for ToolKitProtoTypedValue);
    v31 = static ToolKitProtoTypedValue.== infix(_:_:)(v22, v10);
    v37 = type metadata accessor for ToolKitProtoTypedValue;
    sub_23C85CA50(v10, type metadata accessor for ToolKitProtoTypedValue);
    v32 = v22;
    goto LABEL_22;
  }

  sub_23C85C9E8(v26, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = type metadata accessor for TranscriptProtoShimParameter.StringQuery;
    v30 = v20;
    goto LABEL_19;
  }

  v34 = v42;
  sub_23C868210(&v26[v27], v42, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  if ((*v20 != *v34 || v20[1] != v34[1]) && (sub_23C872014() & 1) == 0)
  {
    sub_23C85CA50(v34, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    goto LABEL_26;
  }

  sub_23C870F34();
  sub_23C73EA18();
  v35 = sub_23C871754();
  sub_23C85CA50(v34, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  if ((v35 & 1) == 0)
  {
LABEL_26:
    sub_23C85CA50(v20, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_23C85CA50(v26, type metadata accessor for TranscriptProtoShimParameterEnum);
    goto LABEL_20;
  }

  sub_23C85CA50(v20, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  sub_23C85CA50(v26, type metadata accessor for TranscriptProtoShimParameterEnum);
  v31 = 1;
  return v31 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoAstflatValueEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v63 = a2;
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  MEMORY[0x28223BE20](v55);
  v58 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  MEMORY[0x28223BE20](v54);
  v56 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v7 = MEMORY[0x28223BE20](v6);
  v59 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v54 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v54 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v61 = (&v54 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v60 = (&v54 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v54 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v54 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v54 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v54 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205388, &qword_23C8A6738);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v54 - v32;
  v34 = (&v54 + *(v31 + 56) - v32);
  sub_23C85C9E8(v62, &v54 - v32, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_23C85C9E8(v63, v34, type metadata accessor for TranscriptProtoAstflatValueEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v38 = v61;
        sub_23C85C9E8(v33, v61, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v43 = v34;
          v44 = v58;
          sub_23C868210(v43, v58, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
          if (sub_23C7FBAD0(*v38, *v44))
          {
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v45 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_30:
              v48 = v45;
              sub_23C85CA50(v44, v45);
              sub_23C85CA50(v38, v48);
              goto LABEL_42;
            }
          }

          v52 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_52:
          v53 = v52;
          sub_23C85CA50(v44, v52);
          sub_23C85CA50(v38, v53);
          goto LABEL_53;
        }

        v50 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_46:
        sub_23C85CA50(v38, v50);
        goto LABEL_47;
      }

      sub_23C85C9E8(v33, v14, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v37 = *v14;
      v36 = v14[1];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          if (swift_getEnumCaseMultiPayload() != 9)
          {
            goto LABEL_47;
          }

          goto LABEL_42;
        }

        v38 = v59;
        sub_23C85C9E8(v33, v59, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          v50 = type metadata accessor for TranscriptProtoStatementID;
          goto LABEL_46;
        }

        v39 = v34;
        v40 = v57;
        sub_23C868210(v39, v57, type metadata accessor for TranscriptProtoStatementID);
        v41 = static TranscriptProtoStatementID.== infix(_:_:)();
        sub_23C85CA50(v40, type metadata accessor for TranscriptProtoStatementID);
        sub_23C85CA50(v38, type metadata accessor for TranscriptProtoStatementID);
        goto LABEL_38;
      }

      sub_23C85C9E8(v33, v11, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v37 = *v11;
      v36 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_6;
      }
    }

LABEL_23:
    if (v37 == *v34 && v36 == *(v34 + 1))
    {

LABEL_42:
      sub_23C85CA50(v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v41 = 1;
      return v41 & 1;
    }

    v49 = sub_23C872014();

    if (v49)
    {
      goto LABEL_42;
    }

LABEL_53:
    sub_23C85CA50(v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_23C85C9E8(v33, v21, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v37 = *v21;
        v36 = v21[1];
        if (swift_getEnumCaseMultiPayload() != 3)
        {
LABEL_6:

LABEL_47:
          sub_23C585C34(v33, &qword_27E205388, &qword_23C8A6738);
LABEL_48:
          v41 = 0;
          return v41 & 1;
        }

        goto LABEL_23;
      }

      v38 = v60;
      sub_23C85C9E8(v33, v60, type metadata accessor for TranscriptProtoAstflatValueEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v47 = v34;
        v44 = v56;
        sub_23C868210(v47, v56, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
        if (sub_23C5D4D58(*v38, *v44))
        {
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            v45 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
            goto LABEL_30;
          }
        }

        v52 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
        goto LABEL_52;
      }

      v50 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
      goto LABEL_46;
    }

    sub_23C85C9E8(v33, v24, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_47;
    }

    v46 = *v24 == *v34;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v33, v27, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_47;
    }

    v46 = *v27 == *v34;
LABEL_35:
    v41 = v46;
LABEL_38:
    sub_23C85CA50(v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
    return v41 & 1;
  }

  sub_23C85C9E8(v33, v29, type metadata accessor for TranscriptProtoAstflatValueEnum);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_47;
  }

  v42 = *v29 ^ *v34;
  sub_23C85CA50(v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
  v41 = v42 ^ 1;
  return v41 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoAstflatExprEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v158 = a1;
  v159 = a2;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  MEMORY[0x28223BE20](MentionedApps - 8);
  v145 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  MEMORY[0x28223BE20](updated);
  v144 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  MEMORY[0x28223BE20](v128);
  v143 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  MEMORY[0x28223BE20](v127);
  v141 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  MEMORY[0x28223BE20](v122);
  v139 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  MEMORY[0x28223BE20](v120);
  v140 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  MEMORY[0x28223BE20](v126);
  v138 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  MEMORY[0x28223BE20](v118);
  v137 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  MEMORY[0x28223BE20](v125);
  v136 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  MEMORY[0x28223BE20](v14 - 8);
  v133 = (&v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  MEMORY[0x28223BE20](v121);
  v134 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  MEMORY[0x28223BE20](v119);
  v135 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  MEMORY[0x28223BE20](v18 - 8);
  v132 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  MEMORY[0x28223BE20](v20 - 8);
  v131 = (&v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  MEMORY[0x28223BE20](v22 - 8);
  v130 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  MEMORY[0x28223BE20](v24 - 8);
  v129 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v26 - 8);
  v124 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v29 = MEMORY[0x28223BE20](v28);
  v153 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v156 = &v117 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v149 = &v117 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v157 = &v117 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v155 = &v117 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v150 = &v117 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v154 = &v117 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v151 = &v117 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v152 = &v117 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v148 = &v117 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = (&v117 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v146 = &v117 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v147 = &v117 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v117 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = (&v117 - v60);
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v117 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v67 = &v117 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = &v117 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205390, &qword_23C8A6740);
  v71 = MEMORY[0x28223BE20](v70 - 8);
  v73 = &v117 - v72;
  v74 = *(v71 + 56);
  sub_23C85C9E8(v158, &v117 - v72, type metadata accessor for TranscriptProtoAstflatExprEnum);
  v158 = v74;
  sub_23C85C9E8(v159, &v73[v74], type metadata accessor for TranscriptProtoAstflatExprEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C85C9E8(v73, v67, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v103 = v158;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v104 = v129;
        sub_23C868210(&v73[v103], v129, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
        v87 = _s26AIMLInstrumentationStreams39TranscriptProtoASTFlatExprPrefixVariantV2eeoiySbAC_ACtFZ_0(v67, v104);
        v89 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant;
        sub_23C85CA50(v104, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
        v95 = v67;
        goto LABEL_49;
      }

      v76 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant;
      v77 = v67;
      goto LABEL_102;
    case 2u:
      sub_23C85C9E8(v73, v64, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v93 = v158;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v94 = v130;
        sub_23C868210(&v73[v93], v130, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
        v87 = _s26AIMLInstrumentationStreams38TranscriptProtoASTFlatExprInfixVariantV2eeoiySbAC_ACtFZ_0(v64, v94);
        v89 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant;
        sub_23C85CA50(v94, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
        v95 = v64;
        goto LABEL_49;
      }

      v76 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant;
      v77 = v64;
      goto LABEL_102;
    case 3u:
      sub_23C85C9E8(v73, v61, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v98 = v158;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v99 = v131;
        sub_23C868210(&v73[v98], v131, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
        v87 = _s26AIMLInstrumentationStreams36TranscriptProtoASTFlatExprDotVariantV2eeoiySbAC_ACtFZ_0(v61, v99);
        sub_23C85CA50(v99, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
        v95 = v61;
        v100 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant;
        goto LABEL_50;
      }

      v76 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant;
      v77 = v61;
      goto LABEL_102;
    case 4u:
      sub_23C85C9E8(v73, v58, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v85 = v158;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v86 = v132;
        sub_23C868210(&v73[v85], v132, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
        v87 = _s26AIMLInstrumentationStreams38TranscriptProtoASTFlatExprIndexVariantV2eeoiySbAC_ACtFZ_0(v58, v86);
        v88 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
        v89 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
        v90 = v86;
        goto LABEL_48;
      }

      v111 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
      goto LABEL_101;
    case 5u:
      v58 = v147;
      sub_23C85C9E8(v73, v147, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v106 = v158;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
        goto LABEL_101;
      }

      v79 = v135;
      sub_23C868210(&v73[v106], v135, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_23C872014()) && (sub_23C7FBAD0(*(v58 + 2), *(v79 + 16)))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
      goto LABEL_120;
    case 6u:
      v58 = v146;
      sub_23C85C9E8(v73, v146, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v108 = v158;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
        goto LABEL_101;
      }

      v79 = v134;
      sub_23C868210(&v73[v108], v134, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
      if (sub_23C5D25E0(*v58, *v79))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
      goto LABEL_120;
    case 7u:
      sub_23C85C9E8(v73, v51, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v101 = v158;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v102 = v133;
        sub_23C868210(&v73[v101], v133, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
        v87 = _s26AIMLInstrumentationStreams37TranscriptProtoASTFlatExprPickVariantV2eeoiySbAC_ACtFZ_0(v51, v102);
        v89 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant;
        sub_23C85CA50(v102, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
        v95 = v51;
        goto LABEL_49;
      }

      v76 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant;
      v77 = v51;
      goto LABEL_102;
    case 8u:
      v58 = v148;
      sub_23C85C9E8(v73, v148, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v110 = v158;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
        goto LABEL_101;
      }

      v79 = v136;
      sub_23C868210(&v73[v110], v136, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
      goto LABEL_120;
    case 9u:
      v58 = v152;
      sub_23C85C9E8(v73, v152, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v92 = v158;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
        goto LABEL_101;
      }

      v79 = v137;
      sub_23C868210(&v73[v92], v137, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_23C872014()) && v58[16] == *(v79 + 16) && v58[17] == *(v79 + 17))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
      goto LABEL_120;
    case 0xAu:
      v58 = v151;
      sub_23C85C9E8(v73, v151, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v109 = v158;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
        goto LABEL_101;
      }

      v79 = v138;
      sub_23C868210(&v73[v109], v138, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
      goto LABEL_120;
    case 0xBu:
      v58 = v154;
      sub_23C85C9E8(v73, v154, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v82 = v158;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
        goto LABEL_101;
      }

      v79 = v140;
      sub_23C868210(&v73[v82], v140, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
      v83 = *(v58 + 1);
      v84 = *(v79 + 8);
      if (v83)
      {
        if (!v84 || (*v58 != *v79 || v83 != v84) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      else if (v84)
      {
        goto LABEL_119;
      }

      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v80 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
        goto LABEL_117;
      }

LABEL_119:
      v112 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
      goto LABEL_120;
    case 0xCu:
      v58 = v150;
      sub_23C85C9E8(v73, v150, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v91 = v158;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
        goto LABEL_101;
      }

      v79 = v139;
      sub_23C868210(&v73[v91], v139, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
      if (sub_23C5D25E0(*v58, *v79))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
      goto LABEL_120;
    case 0xDu:
      v58 = v155;
      sub_23C85C9E8(v73, v155, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v107 = v158;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
        goto LABEL_101;
      }

      v79 = v141;
      sub_23C868210(&v73[v107], v141, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
      goto LABEL_120;
    case 0xEu:
      v58 = v157;
      sub_23C85C9E8(v73, v157, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v81 = v158;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
        goto LABEL_101;
      }

      v79 = v143;
      sub_23C868210(&v73[v81], v143, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
      goto LABEL_120;
    case 0xFu:
      v58 = v149;
      sub_23C85C9E8(v73, v149, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v96 = v158;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v97 = v142;
        sub_23C868210(&v73[v96], v142, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
        sub_23C870F34();
        sub_23C73EA18();
        v87 = sub_23C871754();
        v88 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant;
        goto LABEL_47;
      }

      v111 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant;
      goto LABEL_101;
    case 0x10u:
      v58 = v156;
      sub_23C85C9E8(v73, v156, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v78 = v158;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
        goto LABEL_101;
      }

      v79 = v144;
      sub_23C868210(&v73[v78], v144, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      if (sub_23C5D18B4(*v58, *v79))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
LABEL_117:
          v114 = v80;
          sub_23C85CA50(v79, v80);
          sub_23C85CA50(v58, v114);
LABEL_118:
          sub_23C85CA50(v73, type metadata accessor for TranscriptProtoAstflatExprEnum);
          v87 = 1;
          return v87 & 1;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
LABEL_120:
      v115 = v112;
      sub_23C85CA50(v79, v112);
      sub_23C85CA50(v58, v115);
      sub_23C85CA50(v73, type metadata accessor for TranscriptProtoAstflatExprEnum);
      goto LABEL_121;
    case 0x11u:
      v58 = v153;
      sub_23C85C9E8(v73, v153, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v105 = v158;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v97 = v145;
        sub_23C868210(&v73[v105], v145, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
        sub_23C870F34();
        sub_23C73EA18();
        v87 = sub_23C871754();
        v88 = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps;
LABEL_47:
        v89 = v88;
        v90 = v97;
LABEL_48:
        sub_23C85CA50(v90, v88);
        v95 = v58;
        goto LABEL_49;
      }

      v111 = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps;
LABEL_101:
      v76 = v111;
      v77 = v58;
      goto LABEL_102;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_118;
      }

      goto LABEL_103;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_118;
      }

      goto LABEL_103;
    default:
      sub_23C85C9E8(v73, v69, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v75 = v158;
      if (swift_getEnumCaseMultiPayload())
      {
        v76 = type metadata accessor for TranscriptProtoASTFlatValue;
        v77 = v69;
LABEL_102:
        sub_23C85CA50(v77, v76);
LABEL_103:
        sub_23C585C34(v73, &qword_27E205390, &qword_23C8A6740);
LABEL_121:
        v87 = 0;
      }

      else
      {
        v113 = v124;
        sub_23C868210(&v73[v75], v124, type metadata accessor for TranscriptProtoASTFlatValue);
        v87 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v69, v113);
        v89 = type metadata accessor for TranscriptProtoASTFlatValue;
        sub_23C85CA50(v113, type metadata accessor for TranscriptProtoASTFlatValue);
        v95 = v69;
LABEL_49:
        v100 = v89;
LABEL_50:
        sub_23C85CA50(v95, v100);
        sub_23C85CA50(v73, type metadata accessor for TranscriptProtoAstflatExprEnum);
      }

      return v87 & 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoDialogFormatO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v65 = a2;
  v58 = type metadata accessor for TranscriptProtoCATDialog(0);
  MEMORY[0x28223BE20](v58);
  v63 = (&v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for TranscriptProtoSuppressed(0);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TranscriptProtoGeneratedText(0);
  MEMORY[0x28223BE20](v57);
  v62 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for TranscriptProtoSonicText(0);
  MEMORY[0x28223BE20](v56);
  v60 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for TranscriptProtoStaticText(0);
  MEMORY[0x28223BE20](v54);
  v55 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v54 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v54 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = (&v54 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053B0, &qword_23C8A6768);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v54 - v30;
  v32 = *(v29 + 56);
  sub_23C85C9E8(v64, &v54 - v30, type metadata accessor for TranscriptProtoDialogFormat);
  sub_23C85C9E8(v65, &v31[v32], type metadata accessor for TranscriptProtoDialogFormat);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_23C85C9E8(v31, v25, type metadata accessor for TranscriptProtoDialogFormat);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v60;
          sub_23C868210(&v31[v32], v60, type metadata accessor for TranscriptProtoSonicText);
          if (*v25 == *v34 && v25[1] == v34[1] || (sub_23C872014() & 1) != 0)
          {
            sub_23C870F34();
            sub_23C73EA18();
            v35 = sub_23C871754();
            sub_23C85CA50(v34, type metadata accessor for TranscriptProtoSonicText);
            if (v35)
            {
              v36 = type metadata accessor for TranscriptProtoSonicText;
              v37 = v25;
LABEL_43:
              sub_23C85CA50(v37, v36);
              sub_23C85CA50(v31, type metadata accessor for TranscriptProtoDialogFormat);
              v39 = 1;
              return v39 & 1;
            }
          }

          else
          {
            sub_23C85CA50(v34, type metadata accessor for TranscriptProtoSonicText);
          }

          v52 = type metadata accessor for TranscriptProtoSonicText;
          v51 = v25;
          goto LABEL_51;
        }

        v42 = type metadata accessor for TranscriptProtoSonicText;
        v43 = v25;
LABEL_36:
        sub_23C85CA50(v43, v42);
        sub_23C585C34(v31, &qword_27E2053B0, &qword_23C8A6768);
LABEL_52:
        v39 = 0;
        return v39 & 1;
      }

      sub_23C85C9E8(v31, v22, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v42 = type metadata accessor for TranscriptProtoGeneratedText;
        v43 = v22;
        goto LABEL_36;
      }

      v45 = v62;
      sub_23C868210(&v31[v32], v62, type metadata accessor for TranscriptProtoGeneratedText);
      if (*v22 == *v45 && v22[1] == v45[1] || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v46 = type metadata accessor for TranscriptProtoGeneratedText;
          sub_23C85CA50(v45, type metadata accessor for TranscriptProtoGeneratedText);
          v37 = v22;
LABEL_42:
          v36 = v46;
          goto LABEL_43;
        }
      }

      v50 = type metadata accessor for TranscriptProtoGeneratedText;
      sub_23C85CA50(v45, type metadata accessor for TranscriptProtoGeneratedText);
      v51 = v22;
    }

    else
    {
      sub_23C85C9E8(v31, v27, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload())
      {
        v42 = type metadata accessor for TranscriptProtoStaticText;
        v43 = v27;
        goto LABEL_36;
      }

      v49 = v55;
      sub_23C868210(&v31[v32], v55, type metadata accessor for TranscriptProtoStaticText);
      if (*v27 == *v49 && v27[1] == v49[1] || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v46 = type metadata accessor for TranscriptProtoStaticText;
          sub_23C85CA50(v49, type metadata accessor for TranscriptProtoStaticText);
          v37 = v27;
          goto LABEL_42;
        }
      }

      v50 = type metadata accessor for TranscriptProtoStaticText;
      sub_23C85CA50(v49, type metadata accessor for TranscriptProtoStaticText);
      v51 = v27;
    }

    v52 = v50;
LABEL_51:
    sub_23C85CA50(v51, v52);
    sub_23C85CA50(v31, type metadata accessor for TranscriptProtoDialogFormat);
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_23C85C9E8(v31, v19, type metadata accessor for TranscriptProtoDialogFormat);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v42 = type metadata accessor for TranscriptProtoUnableToGenerate;
      v43 = v19;
      goto LABEL_36;
    }

    v44 = v59;
    sub_23C868210(&v31[v32], v59, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_23C870F34();
    sub_23C73EA18();
    v39 = sub_23C871754();
    v40 = type metadata accessor for TranscriptProtoUnableToGenerate;
    sub_23C85CA50(v44, type metadata accessor for TranscriptProtoUnableToGenerate);
    v41 = v19;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_23C85C9E8(v31, v13, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v47 = v63;
        sub_23C868210(&v31[v32], v63, type metadata accessor for TranscriptProtoCATDialog);
        if (*v13 == *v47 && v13[1] == v47[1] || (sub_23C872014() & 1) != 0)
        {
          sub_23C870F34();
          sub_23C73EA18();
          v48 = sub_23C871754();
          sub_23C85CA50(v47, type metadata accessor for TranscriptProtoCATDialog);
          if (v48)
          {
            v36 = type metadata accessor for TranscriptProtoCATDialog;
            v37 = v13;
            goto LABEL_43;
          }
        }

        else
        {
          sub_23C85CA50(v47, type metadata accessor for TranscriptProtoCATDialog);
        }

        v52 = type metadata accessor for TranscriptProtoCATDialog;
        v51 = v13;
        goto LABEL_51;
      }

      v42 = type metadata accessor for TranscriptProtoCATDialog;
      v43 = v13;
      goto LABEL_36;
    }

    sub_23C85C9E8(v31, v16, type metadata accessor for TranscriptProtoDialogFormat);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v42 = type metadata accessor for TranscriptProtoSuppressed;
      v43 = v16;
      goto LABEL_36;
    }

    v38 = v61;
    sub_23C868210(&v31[v32], v61, type metadata accessor for TranscriptProtoSuppressed);
    sub_23C870F34();
    sub_23C73EA18();
    v39 = sub_23C871754();
    v40 = type metadata accessor for TranscriptProtoSuppressed;
    sub_23C85CA50(v38, type metadata accessor for TranscriptProtoSuppressed);
    v41 = v16;
  }

  sub_23C85CA50(v41, v40);
  sub_23C85CA50(v31, type metadata accessor for TranscriptProtoDialogFormat);
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams51TranscriptProtoSystemPromptResolutionUserActionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  MEMORY[0x28223BE20](v43);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v46 = &v43 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v43 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v43 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205398, &qword_23C8A6748);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v43 - v27;
  v29 = *(v26 + 56);
  sub_23C85C9E8(v47, &v43 - v27, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_23C85C9E8(v48, &v28[v29], type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23C85C9E8(v28, v16, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v31 = *v16 == *&v28[v29];
LABEL_21:
        sub_23C85CA50(v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        return v31 & 1;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v34 = v46;
      sub_23C85C9E8(v28, v46, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v35 = v44;
        sub_23C868210(&v28[v29], v44, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        if (*v34 == *v35)
        {
          sub_23C870F34();
          sub_23C73EA18();
          v42 = sub_23C871754();
          sub_23C85CA50(v35, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
          if (v42)
          {
            sub_23C85CA50(v34, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
            sub_23C85CA50(v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
            v31 = 1;
            return v31 & 1;
          }
        }

        else
        {
          sub_23C85CA50(v35, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        }

        sub_23C85CA50(v34, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        sub_23C85CA50(v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        goto LABEL_27;
      }

      v39 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution;
      v40 = v34;
    }

    else
    {
      sub_23C85C9E8(v28, v11, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v38 = v45;
        sub_23C868210(&v28[v29], v45, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
        sub_23C870F34();
        sub_23C73EA18();
        v31 = sub_23C871754();
        sub_23C85CA50(v38, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
        v32 = v11;
        v33 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation;
        goto LABEL_20;
      }

      v39 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation;
      v40 = v11;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C85C9E8(v28, v22, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_23C868210(&v28[v29], v7, type metadata accessor for ToolKitProtoTypedValue);
        v31 = static ToolKitProtoTypedValue.== infix(_:_:)(v22, v7);
        sub_23C85CA50(v7, type metadata accessor for ToolKitProtoTypedValue);
        v32 = v22;
        v33 = type metadata accessor for ToolKitProtoTypedValue;
LABEL_20:
        sub_23C85CA50(v32, v33);
        goto LABEL_21;
      }

      v39 = type metadata accessor for ToolKitProtoTypedValue;
      v40 = v22;
LABEL_25:
      sub_23C85CA50(v40, v39);
      goto LABEL_26;
    }

    sub_23C85C9E8(v28, v19, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v36 = *v19;
      goto LABEL_17;
    }

LABEL_26:
    sub_23C585C34(v28, &qword_27E205398, &qword_23C8A6748);
LABEL_27:
    v31 = 0;
    return v31 & 1;
  }

  sub_23C85C9E8(v28, v24, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_26;
  }

  v36 = *v24;
LABEL_17:
  v37 = v36 ^ v28[v29];
  sub_23C85CA50(v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  v31 = v37 ^ 1;
  return v31 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoRequestContentEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v2 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v40 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205420, &qword_23C8A67D8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v40 - v26;
  v28 = *(v25 + 56);
  sub_23C85C9E8(v42, &v40 - v26, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_23C85C9E8(v43, &v27[v28], type metadata accessor for TranscriptProtoRequestContentEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C85C9E8(v27, v18, type metadata accessor for TranscriptProtoRequestContentEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v30 = type metadata accessor for TranscriptProtoSystemPromptResolution;
        v31 = v18;
        goto LABEL_15;
      }

      v32 = &v27[v28];
      v33 = v40;
      sub_23C868210(v32, v40, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v34 = _s26AIMLInstrumentationStreams37TranscriptProtoSystemPromptResolutionV2eeoiySbAC_ACtFZ_0(v18, v33);
      sub_23C85CA50(v33, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v35 = v18;
      v36 = type metadata accessor for TranscriptProtoSystemPromptResolution;
LABEL_18:
      sub_23C85CA50(v35, v36);
      sub_23C85CA50(v27, type metadata accessor for TranscriptProtoRequestContentEnum);
      return v34 & 1;
    }

    sub_23C85C9E8(v27, v15, type metadata accessor for TranscriptProtoRequestContentEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v30 = type metadata accessor for TranscriptProtoRequestContentStopContent;
      v31 = v15;
      goto LABEL_15;
    }

    v38 = v41;
    sub_23C868210(&v27[v28], v41, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_23C870F34();
    sub_23C73EA18();
    v34 = sub_23C871754();
    v37 = type metadata accessor for TranscriptProtoRequestContentStopContent;
    sub_23C85CA50(v38, type metadata accessor for TranscriptProtoRequestContentStopContent);
    v35 = v15;
LABEL_17:
    v36 = v37;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v27, v21, type metadata accessor for TranscriptProtoRequestContentEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
      v31 = v21;
      goto LABEL_15;
    }

    sub_23C868210(&v27[v28], v8, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v34 = static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)();
    v37 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
    sub_23C85CA50(v8, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v35 = v21;
    goto LABEL_17;
  }

  sub_23C85C9E8(v27, v23, type metadata accessor for TranscriptProtoRequestContentEnum);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C868210(&v27[v28], v11, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v34 = static TranscriptProtoRequestContentTextContent.== infix(_:_:)();
    v37 = type metadata accessor for TranscriptProtoRequestContentTextContent;
    sub_23C85CA50(v11, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v35 = v23;
    goto LABEL_17;
  }

  v30 = type metadata accessor for TranscriptProtoRequestContentTextContent;
  v31 = v23;
LABEL_15:
  sub_23C85CA50(v31, v30);
  sub_23C585C34(v27, &qword_27E205420, &qword_23C8A67D8);
  v34 = 0;
  return v34 & 1;
}

uint64_t _s26AIMLInstrumentationStreams21TranscriptProtoUitypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v40 = type metadata accessor for TranscriptProtoControlPayload(0);
  MEMORY[0x28223BE20](v40);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  MEMORY[0x28223BE20](v39);
  v44 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  MEMORY[0x28223BE20](v41);
  v42 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoUitype(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v38 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v38 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = (&v38 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053A8, &qword_23C8A6760);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v38 - v23;
  v25 = *(v22 + 56);
  sub_23C85C9E8(a1, &v38 - v23, type metadata accessor for TranscriptProtoUitype);
  sub_23C85C9E8(v45, &v24[v25], type metadata accessor for TranscriptProtoUitype);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C85C9E8(v24, v15, type metadata accessor for TranscriptProtoUitype);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v27 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
        v28 = v15;
        goto LABEL_27;
      }

      v29 = v44;
      sub_23C868210(&v24[v25], v44, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      if (sub_23C6F73FC(*v15, v15[1], *v29, v29[1]) && (v15[2] == v29[2] && v15[3] == v29[3] || (sub_23C872014() & 1) != 0))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v30 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
          sub_23C85CA50(v29, type metadata accessor for TranscriptProtoPluginSnippetPayload);
          v31 = v15;
LABEL_23:
          sub_23C85CA50(v31, v30);
          sub_23C85CA50(v24, type metadata accessor for TranscriptProtoUitype);
          v34 = 1;
          return v34 & 1;
        }
      }

      v35 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
      sub_23C85CA50(v29, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      v36 = v15;
    }

    else
    {
      sub_23C85C9E8(v24, v12, type metadata accessor for TranscriptProtoUitype);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v27 = type metadata accessor for TranscriptProtoControlPayload;
        v28 = v12;
        goto LABEL_27;
      }

      v33 = v43;
      sub_23C868210(&v24[v25], v43, type metadata accessor for TranscriptProtoControlPayload);
      if (sub_23C6F73FC(*v12, *(v12 + 1), *v33, *(v33 + 8)))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v30 = type metadata accessor for TranscriptProtoControlPayload;
          sub_23C85CA50(v33, type metadata accessor for TranscriptProtoControlPayload);
          v31 = v12;
          goto LABEL_23;
        }
      }

      v35 = type metadata accessor for TranscriptProtoControlPayload;
      sub_23C85CA50(v33, type metadata accessor for TranscriptProtoControlPayload);
      v36 = v12;
    }

LABEL_32:
    sub_23C85CA50(v36, v35);
    sub_23C85CA50(v24, type metadata accessor for TranscriptProtoUitype);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v24, v18, type metadata accessor for TranscriptProtoUitype);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = type metadata accessor for TranscriptProtoLiveActivityPayload;
      v28 = v18;
      goto LABEL_27;
    }

    v32 = v42;
    sub_23C868210(&v24[v25], v42, type metadata accessor for TranscriptProtoLiveActivityPayload);
    if (*v18 == *v32 && v18[1] == v32[1] || (sub_23C872014() & 1) != 0)
    {
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v30 = type metadata accessor for TranscriptProtoLiveActivityPayload;
        sub_23C85CA50(v32, type metadata accessor for TranscriptProtoLiveActivityPayload);
        v31 = v18;
        goto LABEL_23;
      }
    }

    v35 = type metadata accessor for TranscriptProtoLiveActivityPayload;
    sub_23C85CA50(v32, type metadata accessor for TranscriptProtoLiveActivityPayload);
    v36 = v18;
    goto LABEL_32;
  }

  sub_23C85C9E8(v24, v20, type metadata accessor for TranscriptProtoUitype);
  if (swift_getEnumCaseMultiPayload())
  {
    v27 = type metadata accessor for TranscriptProtoArchiveViewPayload;
    v28 = v20;
LABEL_27:
    sub_23C85CA50(v28, v27);
    sub_23C585C34(v24, &qword_27E2053A8, &qword_23C8A6760);
LABEL_33:
    v34 = 0;
    return v34 & 1;
  }

  sub_23C868210(&v24[v25], v8, type metadata accessor for TranscriptProtoArchiveViewPayload);
  v34 = _s26AIMLInstrumentationStreams33TranscriptProtoArchiveViewPayloadV2eeoiySbAC_ACtFZ_0(v20, v8);
  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoArchiveViewPayload);
  sub_23C85CA50(v20, type metadata accessor for TranscriptProtoArchiveViewPayload);
  sub_23C85CA50(v24, type metadata accessor for TranscriptProtoUitype);
  return v34 & 1;
}

BOOL _s26AIMLInstrumentationStreams20TranscriptProtoLabelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v19 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC8, &qword_23C878F68);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = *(v11 + 56);
  sub_23C85C9E8(a1, &v19 - v12, type metadata accessor for TranscriptProtoLabel);
  sub_23C85C9E8(a2, &v13[v14], type metadata accessor for TranscriptProtoLabel);
  sub_23C868210(v13, v9, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_23C868210(&v13[v14], v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  v15 = *v9 == *v7 && v9[1] == v7[1];
  v17 = 0;
  if (v15 || (sub_23C872014() & 1) != 0)
  {
    v16 = v9[2] == v7[2] && v9[3] == v7[3];
    if (v16 || (sub_23C872014() & 1) != 0)
    {
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v17 = 1;
      }
    }
  }

  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_23C85CA50(v9, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  return v17;
}

uint64_t _s26AIMLInstrumentationStreams34TranscriptProtoValueExpressionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v37 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  MEMORY[0x28223BE20](v37);
  v38 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v39 = (&v37 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v37 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v37 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v37 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205378, &qword_23C8A6728);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v37 - v23;
  v25 = (&v37 + *(v22 + 56) - v23);
  sub_23C85C9E8(a1, &v37 - v23, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_23C85C9E8(v40, v25, type metadata accessor for TranscriptProtoValueExpressionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_23C85C9E8(v24, v7, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v28 = *v7;
        v27 = v7[1];
        if (swift_getEnumCaseMultiPayload() == 5)
        {
LABEL_5:
          if (v28 == *v25 && v27 == *(v25 + 1))
          {
          }

          else
          {
            v30 = sub_23C872014();

            if ((v30 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_33;
        }

        goto LABEL_17;
      }

      if (swift_getEnumCaseMultiPayload() == 6)
      {
LABEL_33:
        sub_23C85CA50(v24, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v33 = 1;
        return v33 & 1;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_23C85C9E8(v24, v12, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v28 = *v12;
        v27 = v12[1];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_5;
        }

LABEL_17:

        goto LABEL_35;
      }

      v34 = v39;
      sub_23C85C9E8(v24, v39, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v35 = v38;
        sub_23C868210(v25, v38, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        if ((sub_23C5D9488(*v34, *v35) & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
        {
          sub_23C85CA50(v35, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
          sub_23C85CA50(v34, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
LABEL_39:
          sub_23C85CA50(v24, type metadata accessor for TranscriptProtoValueExpressionEnum);
          goto LABEL_36;
        }

        sub_23C85CA50(v35, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        sub_23C85CA50(v34, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        goto LABEL_33;
      }

      sub_23C85CA50(v34, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    }

LABEL_35:
    sub_23C585C34(v24, &qword_27E205378, &qword_23C8A6728);
LABEL_36:
    v33 = 0;
    return v33 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C85C9E8(v24, v18, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_35;
      }

      v31 = *v18 == *v25;
    }

    else
    {
      sub_23C85C9E8(v24, v15, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_35;
      }

      v31 = *v15 == *v25;
    }

    v33 = v31;
    sub_23C85CA50(v24, type metadata accessor for TranscriptProtoValueExpressionEnum);
  }

  else
  {
    sub_23C85C9E8(v24, v20, type metadata accessor for TranscriptProtoValueExpressionEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_35;
    }

    v32 = *v20 ^ *v25;
    sub_23C85CA50(v24, type metadata accessor for TranscriptProtoValueExpressionEnum);
    v33 = v32 ^ 1;
  }

  return v33 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoExpressionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v208 = a1;
  v209 = a2;
  v163 = type metadata accessor for TranscriptProtoFormatExpression(0);
  MEMORY[0x28223BE20](v163);
  v188 = (&v159 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  MEMORY[0x28223BE20](v162);
  v187 = (&v159 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v186 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoOpenExpression(0);
  MEMORY[0x28223BE20](v6 - 8);
  v185 = (&v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  MEMORY[0x28223BE20](MentionedAppsExpression - 8);
  v184 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  MEMORY[0x28223BE20](v10 - 8);
  v183 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  MEMORY[0x28223BE20](v12 - 8);
  v182 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  MEMORY[0x28223BE20](v14 - 8);
  v181 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptProtoCancelExpression(0);
  MEMORY[0x28223BE20](v16 - 8);
  v180 = (&v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TranscriptProtoRejectExpression(0);
  MEMORY[0x28223BE20](v18 - 8);
  v179 = (&v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for TranscriptProtoUndoExpression(0);
  MEMORY[0x28223BE20](v20 - 8);
  v177 = (&v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  MEMORY[0x28223BE20](v161);
  v178 = (&v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  MEMORY[0x28223BE20](v23 - 8);
  v176 = (&v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  MEMORY[0x28223BE20](v25 - 8);
  v175 = (&v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for TranscriptProtoSearchExpression(0);
  MEMORY[0x28223BE20](v27 - 8);
  v174 = (&v159 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  MEMORY[0x28223BE20](v29 - 8);
  v173 = (&v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for TranscriptProtoPickExpression(0);
  MEMORY[0x28223BE20](v31 - 8);
  v171 = (&v159 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = type metadata accessor for TranscriptProtoSayExpression(0);
  MEMORY[0x28223BE20](v160);
  v172 = (&v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for TranscriptProtoCallExpression(0);
  MEMORY[0x28223BE20](v34 - 8);
  v170 = (&v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  MEMORY[0x28223BE20](updated - 8);
  v169 = (&v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for TranscriptProtoIndexExpression(0);
  MEMORY[0x28223BE20](v38 - 8);
  v168 = &v159 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TranscriptProtoInfixExpression(0);
  MEMORY[0x28223BE20](v40 - 8);
  v167 = &v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  MEMORY[0x28223BE20](v42 - 8);
  v166 = &v159 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v44 - 8);
  v165 = (&v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for TranscriptProtoValueExpression(0);
  MEMORY[0x28223BE20](v46 - 8);
  v164 = &v159 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v48 = MEMORY[0x28223BE20](v207);
  v206 = (&v159 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = MEMORY[0x28223BE20](v48);
  v205 = (&v159 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v204 = (&v159 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v202 = (&v159 - v55);
  v56 = MEMORY[0x28223BE20](v54);
  v203 = (&v159 - v57);
  v58 = MEMORY[0x28223BE20](v56);
  v201 = (&v159 - v59);
  v60 = MEMORY[0x28223BE20](v58);
  v200 = (&v159 - v61);
  v62 = MEMORY[0x28223BE20](v60);
  v199 = (&v159 - v63);
  v64 = MEMORY[0x28223BE20](v62);
  v197 = (&v159 - v65);
  v66 = MEMORY[0x28223BE20](v64);
  v196 = (&v159 - v67);
  v68 = MEMORY[0x28223BE20](v66);
  v195 = (&v159 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v198 = (&v159 - v71);
  v72 = MEMORY[0x28223BE20](v70);
  v194 = (&v159 - v73);
  v74 = MEMORY[0x28223BE20](v72);
  v192 = (&v159 - v75);
  v76 = MEMORY[0x28223BE20](v74);
  v191 = (&v159 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v190 = (&v159 - v79);
  v80 = MEMORY[0x28223BE20](v78);
  v189 = (&v159 - v81);
  v82 = MEMORY[0x28223BE20](v80);
  v193 = (&v159 - v83);
  v84 = MEMORY[0x28223BE20](v82);
  v86 = (&v159 - v85);
  v87 = MEMORY[0x28223BE20](v84);
  v89 = (&v159 - v88);
  v90 = MEMORY[0x28223BE20](v87);
  v92 = &v159 - v91;
  v93 = MEMORY[0x28223BE20](v90);
  v95 = &v159 - v94;
  v96 = MEMORY[0x28223BE20](v93);
  v98 = &v159 - v97;
  v99 = MEMORY[0x28223BE20](v96);
  v101 = (&v159 - v100);
  MEMORY[0x28223BE20](v99);
  v103 = (&v159 - v102);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205380, &qword_23C8A6730);
  v105 = MEMORY[0x28223BE20](v104 - 8);
  v107 = &v159 - v106;
  v108 = *(v105 + 56);
  sub_23C85C9E8(v208, &v159 - v106, type metadata accessor for TranscriptProtoExpressionEnum);
  v208 = v108;
  sub_23C85C9E8(v209, &v107[v108], type metadata accessor for TranscriptProtoExpressionEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C85C9E8(v107, v101, type metadata accessor for TranscriptProtoExpressionEnum);
      v133 = v208;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v112 = v165;
        sub_23C868210(&v107[v133], v165, type metadata accessor for TranscriptProtoStatementID);
        v113 = static TranscriptProtoStatementID.== infix(_:_:)();
        v114 = type metadata accessor for TranscriptProtoStatementID;
        goto LABEL_52;
      }

      v152 = type metadata accessor for TranscriptProtoStatementID;
      goto LABEL_87;
    case 2u:
      sub_23C85C9E8(v107, v98, type metadata accessor for TranscriptProtoExpressionEnum);
      v126 = v208;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v127 = v166;
        sub_23C868210(&v107[v126], v166, type metadata accessor for TranscriptProtoPrefixExpression);
        v113 = _s26AIMLInstrumentationStreams31TranscriptProtoPrefixExpressionV2eeoiySbAC_ACtFZ_0(v98, v127);
        v128 = type metadata accessor for TranscriptProtoPrefixExpression;
        sub_23C85CA50(v127, type metadata accessor for TranscriptProtoPrefixExpression);
        v119 = v98;
        goto LABEL_59;
      }

      v153 = type metadata accessor for TranscriptProtoPrefixExpression;
      v154 = v98;
      goto LABEL_92;
    case 3u:
      sub_23C85C9E8(v107, v95, type metadata accessor for TranscriptProtoExpressionEnum);
      v130 = v208;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v131 = v167;
        sub_23C868210(&v107[v130], v167, type metadata accessor for TranscriptProtoInfixExpression);
        v113 = _s26AIMLInstrumentationStreams30TranscriptProtoInfixExpressionV2eeoiySbAC_ACtFZ_0(v95, v131);
        v128 = type metadata accessor for TranscriptProtoInfixExpression;
        sub_23C85CA50(v131, type metadata accessor for TranscriptProtoInfixExpression);
        v119 = v95;
        goto LABEL_59;
      }

      v153 = type metadata accessor for TranscriptProtoInfixExpression;
      v154 = v95;
      goto LABEL_92;
    case 4u:
      sub_23C85C9E8(v107, v92, type metadata accessor for TranscriptProtoExpressionEnum);
      v117 = v208;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v118 = v168;
        sub_23C868210(&v107[v117], v168, type metadata accessor for TranscriptProtoIndexExpression);
        v113 = sub_23C80EEA8(v92, v118);
        sub_23C85CA50(v118, type metadata accessor for TranscriptProtoIndexExpression);
        v119 = v92;
        v120 = type metadata accessor for TranscriptProtoIndexExpression;
        goto LABEL_60;
      }

      v153 = type metadata accessor for TranscriptProtoIndexExpression;
      v154 = v92;
      goto LABEL_92;
    case 5u:
      sub_23C85C9E8(v107, v89, type metadata accessor for TranscriptProtoExpressionEnum);
      v138 = v208;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v139 = v169;
        sub_23C868210(&v107[v138], v169, type metadata accessor for TranscriptProtoUpdateParametersExpression);
        v113 = _s26AIMLInstrumentationStreams41TranscriptProtoUpdateParametersExpressionV2eeoiySbAC_ACtFZ_0(v89, v139);
        v128 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
        sub_23C85CA50(v139, type metadata accessor for TranscriptProtoUpdateParametersExpression);
        v119 = v89;
        goto LABEL_59;
      }

      v153 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
      v154 = v89;
      goto LABEL_92;
    case 6u:
      sub_23C85C9E8(v107, v86, type metadata accessor for TranscriptProtoExpressionEnum);
      v142 = v208;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v143 = v170;
        sub_23C868210(&v107[v142], v170, type metadata accessor for TranscriptProtoCallExpression);
        v113 = _s26AIMLInstrumentationStreams29TranscriptProtoCallExpressionV2eeoiySbAC_ACtFZ_0(v86, v143);
        v128 = type metadata accessor for TranscriptProtoCallExpression;
        sub_23C85CA50(v143, type metadata accessor for TranscriptProtoCallExpression);
        v119 = v86;
        goto LABEL_59;
      }

      v153 = type metadata accessor for TranscriptProtoCallExpression;
      v154 = v86;
      goto LABEL_92;
    case 7u:
      v103 = v193;
      sub_23C85C9E8(v107, v193, type metadata accessor for TranscriptProtoExpressionEnum);
      v132 = v208;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v110 = type metadata accessor for TranscriptProtoSayExpression;
        goto LABEL_91;
      }

      v124 = v172;
      sub_23C868210(&v107[v132], v172, type metadata accessor for TranscriptProtoSayExpression);
      if (sub_23C5D9488(*v103, *v124))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v125 = type metadata accessor for TranscriptProtoSayExpression;
          goto LABEL_65;
        }
      }

      v156 = type metadata accessor for TranscriptProtoSayExpression;
      goto LABEL_100;
    case 8u:
      v101 = v189;
      sub_23C85C9E8(v107, v189, type metadata accessor for TranscriptProtoExpressionEnum);
      v146 = v208;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v112 = v171;
        sub_23C868210(&v107[v146], v171, type metadata accessor for TranscriptProtoPickExpression);
        v113 = _s26AIMLInstrumentationStreams29TranscriptProtoPickExpressionV2eeoiySbAC_ACtFZ_0(v101, v112);
        v114 = type metadata accessor for TranscriptProtoPickExpression;
        goto LABEL_52;
      }

      v152 = type metadata accessor for TranscriptProtoPickExpression;
      goto LABEL_87;
    case 9u:
      v101 = v190;
      sub_23C85C9E8(v107, v190, type metadata accessor for TranscriptProtoExpressionEnum);
      v122 = v208;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v112 = v173;
        sub_23C868210(&v107[v122], v173, type metadata accessor for TranscriptProtoConfirmExpression);
        v113 = _s26AIMLInstrumentationStreams32TranscriptProtoConfirmExpressionV2eeoiySbAC_ACtFZ_0(v101, v112);
        v114 = type metadata accessor for TranscriptProtoConfirmExpression;
        goto LABEL_52;
      }

      v152 = type metadata accessor for TranscriptProtoConfirmExpression;
      goto LABEL_87;
    case 0xAu:
      v101 = v191;
      sub_23C85C9E8(v107, v191, type metadata accessor for TranscriptProtoExpressionEnum);
      v145 = v208;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v112 = v174;
        sub_23C868210(&v107[v145], v174, type metadata accessor for TranscriptProtoSearchExpression);
        v113 = _s26AIMLInstrumentationStreams31TranscriptProtoSearchExpressionV2eeoiySbAC_ACtFZ_0(v101, v112);
        v114 = type metadata accessor for TranscriptProtoSearchExpression;
        goto LABEL_52;
      }

      v152 = type metadata accessor for TranscriptProtoSearchExpression;
      goto LABEL_87;
    case 0xBu:
      v101 = v192;
      sub_23C85C9E8(v107, v192, type metadata accessor for TranscriptProtoExpressionEnum);
      v116 = v208;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v112 = v175;
        sub_23C868210(&v107[v116], v175, type metadata accessor for TranscriptProtoStructuredSearchExpression);
        v113 = _s26AIMLInstrumentationStreams41TranscriptProtoStructuredSearchExpressionV2eeoiySbAC_ACtFZ_0(v101, v112);
        v114 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
        goto LABEL_52;
      }

      v152 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
      goto LABEL_87;
    case 0xCu:
      v101 = v194;
      sub_23C85C9E8(v107, v194, type metadata accessor for TranscriptProtoExpressionEnum);
      v121 = v208;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v112 = v176;
        sub_23C868210(&v107[v121], v176, type metadata accessor for TranscriptProtoPickOneExpression);
        v113 = _s26AIMLInstrumentationStreams32TranscriptProtoPickOneExpressionV2eeoiySbAC_ACtFZ_0(v101, v112);
        v114 = type metadata accessor for TranscriptProtoPickOneExpression;
        goto LABEL_52;
      }

      v152 = type metadata accessor for TranscriptProtoPickOneExpression;
      goto LABEL_87;
    case 0xDu:
      v103 = v198;
      sub_23C85C9E8(v107, v198, type metadata accessor for TranscriptProtoExpressionEnum);
      v141 = v208;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v110 = type metadata accessor for TranscriptProtoResolveToolExpression;
        goto LABEL_91;
      }

      v124 = v178;
      sub_23C868210(&v107[v141], v178, type metadata accessor for TranscriptProtoResolveToolExpression);
      if (sub_23C5D61EC(*v103, *v124))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v125 = type metadata accessor for TranscriptProtoResolveToolExpression;
          goto LABEL_65;
        }
      }

      v156 = type metadata accessor for TranscriptProtoResolveToolExpression;
      goto LABEL_100;
    case 0xEu:
      v101 = v195;
      sub_23C85C9E8(v107, v195, type metadata accessor for TranscriptProtoExpressionEnum);
      v115 = v208;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v112 = v177;
        sub_23C868210(&v107[v115], v177, type metadata accessor for TranscriptProtoUndoExpression);
        v113 = _s26AIMLInstrumentationStreams29TranscriptProtoUndoExpressionV2eeoiySbAC_ACtFZ_0(v101, v112);
        v114 = type metadata accessor for TranscriptProtoUndoExpression;
        goto LABEL_52;
      }

      v152 = type metadata accessor for TranscriptProtoUndoExpression;
      goto LABEL_87;
    case 0xFu:
      v101 = v196;
      sub_23C85C9E8(v107, v196, type metadata accessor for TranscriptProtoExpressionEnum);
      v129 = v208;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v112 = v179;
        sub_23C868210(&v107[v129], v179, type metadata accessor for TranscriptProtoRejectExpression);
        v113 = _s26AIMLInstrumentationStreams31TranscriptProtoRejectExpressionV2eeoiySbAC_ACtFZ_0(v101, v112);
        v114 = type metadata accessor for TranscriptProtoRejectExpression;
        goto LABEL_52;
      }

      v152 = type metadata accessor for TranscriptProtoRejectExpression;
      goto LABEL_87;
    case 0x10u:
      v101 = v197;
      sub_23C85C9E8(v107, v197, type metadata accessor for TranscriptProtoExpressionEnum);
      v111 = v208;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v112 = v180;
        sub_23C868210(&v107[v111], v180, type metadata accessor for TranscriptProtoCancelExpression);
        v113 = _s26AIMLInstrumentationStreams31TranscriptProtoCancelExpressionV2eeoiySbAC_ACtFZ_0(v101, v112);
        v114 = type metadata accessor for TranscriptProtoCancelExpression;
        goto LABEL_52;
      }

      v152 = type metadata accessor for TranscriptProtoCancelExpression;
      goto LABEL_87;
    case 0x11u:
      v103 = v199;
      sub_23C85C9E8(v107, v199, type metadata accessor for TranscriptProtoExpressionEnum);
      v134 = v208;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v135 = v181;
        sub_23C868210(&v107[v134], v181, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
        sub_23C870F34();
        sub_23C73EA18();
        v113 = sub_23C871754();
        v136 = type metadata accessor for TranscriptProtoNoMatchingToolExpression;
        goto LABEL_57;
      }

      v110 = type metadata accessor for TranscriptProtoNoMatchingToolExpression;
      goto LABEL_91;
    case 0x12u:
      v103 = v200;
      sub_23C85C9E8(v107, v200, type metadata accessor for TranscriptProtoExpressionEnum);
      v144 = v208;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v135 = v182;
        sub_23C868210(&v107[v144], v182, type metadata accessor for TranscriptProtoContinuePlanningExpression);
        sub_23C870F34();
        sub_23C73EA18();
        v113 = sub_23C871754();
        v136 = type metadata accessor for TranscriptProtoContinuePlanningExpression;
        goto LABEL_57;
      }

      v110 = type metadata accessor for TranscriptProtoContinuePlanningExpression;
      goto LABEL_91;
    case 0x13u:
      v103 = v201;
      sub_23C85C9E8(v107, v201, type metadata accessor for TranscriptProtoExpressionEnum);
      v148 = v208;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v135 = v183;
        sub_23C868210(&v107[v148], v183, type metadata accessor for TranscriptProtoEndOfPlanExpression);
        sub_23C870F34();
        sub_23C73EA18();
        v113 = sub_23C871754();
        v136 = type metadata accessor for TranscriptProtoEndOfPlanExpression;
        goto LABEL_57;
      }

      v110 = type metadata accessor for TranscriptProtoEndOfPlanExpression;
      goto LABEL_91;
    case 0x14u:
      v103 = v203;
      sub_23C85C9E8(v107, v203, type metadata accessor for TranscriptProtoExpressionEnum);
      v137 = v208;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v135 = v184;
        sub_23C868210(&v107[v137], v184, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
        sub_23C870F34();
        sub_23C73EA18();
        v113 = sub_23C871754();
        v136 = type metadata accessor for TranscriptProtoGetMentionedAppsExpression;
        goto LABEL_57;
      }

      v110 = type metadata accessor for TranscriptProtoGetMentionedAppsExpression;
      goto LABEL_91;
    case 0x15u:
      v101 = v202;
      sub_23C85C9E8(v107, v202, type metadata accessor for TranscriptProtoExpressionEnum);
      v140 = v208;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v112 = v185;
        sub_23C868210(&v107[v140], v185, type metadata accessor for TranscriptProtoOpenExpression);
        v113 = _s26AIMLInstrumentationStreams29TranscriptProtoOpenExpressionV2eeoiySbAC_ACtFZ_0(v101, v112);
        v114 = type metadata accessor for TranscriptProtoOpenExpression;
LABEL_52:
        v128 = v114;
        sub_23C85CA50(v112, v114);
        v119 = v101;
        goto LABEL_59;
      }

      v152 = type metadata accessor for TranscriptProtoOpenExpression;
LABEL_87:
      v153 = v152;
      v154 = v101;
      goto LABEL_92;
    case 0x16u:
      v103 = v204;
      sub_23C85C9E8(v107, v204, type metadata accessor for TranscriptProtoExpressionEnum);
      v147 = v208;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        v110 = type metadata accessor for TranscriptProtoExplicitResolutionRequest;
        goto LABEL_91;
      }

      v135 = v186;
      sub_23C868210(&v107[v147], v186, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      sub_23C870F34();
      sub_23C73EA18();
      v113 = sub_23C871754();
      v136 = type metadata accessor for TranscriptProtoExplicitResolutionRequest;
LABEL_57:
      v128 = v136;
      v149 = v135;
      goto LABEL_58;
    case 0x17u:
      v103 = v205;
      sub_23C85C9E8(v107, v205, type metadata accessor for TranscriptProtoExpressionEnum);
      v150 = v208;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        v110 = type metadata accessor for TranscriptProtoPayloadExpression;
        goto LABEL_91;
      }

      v124 = v187;
      sub_23C868210(&v107[v150], v187, type metadata accessor for TranscriptProtoPayloadExpression);
      if (sub_23C5D9488(*v103, *v124))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v125 = type metadata accessor for TranscriptProtoPayloadExpression;
          goto LABEL_65;
        }
      }

      v156 = type metadata accessor for TranscriptProtoPayloadExpression;
      goto LABEL_100;
    case 0x18u:
      v103 = v206;
      sub_23C85C9E8(v107, v206, type metadata accessor for TranscriptProtoExpressionEnum);
      v123 = v208;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        v110 = type metadata accessor for TranscriptProtoFormatExpression;
        goto LABEL_91;
      }

      v124 = v188;
      sub_23C868210(&v107[v123], v188, type metadata accessor for TranscriptProtoFormatExpression);
      if (sub_23C5D9488(*v103, *v124))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v125 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_65:
          v151 = v125;
          sub_23C85CA50(v124, v125);
          sub_23C85CA50(v103, v151);
          sub_23C85CA50(v107, type metadata accessor for TranscriptProtoExpressionEnum);
          v113 = 1;
          return v113 & 1;
        }
      }

      v156 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_100:
      v158 = v156;
      sub_23C85CA50(v124, v156);
      sub_23C85CA50(v103, v158);
      sub_23C85CA50(v107, type metadata accessor for TranscriptProtoExpressionEnum);
      goto LABEL_93;
    default:
      sub_23C85C9E8(v107, v103, type metadata accessor for TranscriptProtoExpressionEnum);
      v109 = v208;
      if (swift_getEnumCaseMultiPayload())
      {
        v110 = type metadata accessor for TranscriptProtoValueExpression;
LABEL_91:
        v153 = v110;
        v154 = v103;
LABEL_92:
        sub_23C85CA50(v154, v153);
        sub_23C585C34(v107, &qword_27E205380, &qword_23C8A6730);
LABEL_93:
        v113 = 0;
      }

      else
      {
        v157 = v164;
        sub_23C868210(&v107[v109], v164, type metadata accessor for TranscriptProtoValueExpression);
        v113 = _s26AIMLInstrumentationStreams30TranscriptProtoValueExpressionV2eeoiySbAC_ACtFZ_0(v103, v157);
        v136 = type metadata accessor for TranscriptProtoValueExpression;
        v128 = type metadata accessor for TranscriptProtoValueExpression;
        v149 = v157;
LABEL_58:
        sub_23C85CA50(v149, v136);
        v119 = v103;
LABEL_59:
        v120 = v128;
LABEL_60:
        sub_23C85CA50(v119, v120);
        sub_23C85CA50(v107, type metadata accessor for TranscriptProtoExpressionEnum);
      }

      return v113 & 1;
  }
}

BOOL _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableG4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v18 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053D0, &qword_23C8A6788);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_23C85C9E8(a1, &v18 - v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_23C85C9E8(a2, &v13[v14], type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_23C868210(v13, v9, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_23C868210(&v13[v14], v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  v15 = *v9 == *v7 && v9[1] == v7[1];
  v16 = 0;
  if (v15 || (sub_23C872014()) && sub_23C6F73FC(v9[2], v9[3], v7[2], v7[3]) && v9[4] == v7[4])
  {
    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      v16 = 1;
    }
  }

  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_23C85CA50(v9, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  return v16;
}

uint64_t _s26AIMLInstrumentationStreams028TranscriptProtoActionFailureF4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053D8, &qword_23C8A6790);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C85C9E8(a1, &v20 - v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_23C85C9E8(a2, &v14[v15], type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  v16 = *(v5 + 48);
  switch(v16(v14, 16, v4))
  {
    case 1u:
      if (v16(&v14[v15], 16, v4) == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    case 2u:
      if (v16(&v14[v15], 16, v4) != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 3u:
      if (v16(&v14[v15], 16, v4) != 3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 4u:
      if (v16(&v14[v15], 16, v4) != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 5u:
      if (v16(&v14[v15], 16, v4) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 6u:
      if (v16(&v14[v15], 16, v4) != 6)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 7u:
      if (v16(&v14[v15], 16, v4) != 7)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 8u:
      if (v16(&v14[v15], 16, v4) == 8)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    case 9u:
      if (v16(&v14[v15], 16, v4) != 9)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xAu:
      if (v16(&v14[v15], 16, v4) != 10)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xBu:
      if (v16(&v14[v15], 16, v4) != 11)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xCu:
      if (v16(&v14[v15], 16, v4) != 12)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xDu:
      if (v16(&v14[v15], 16, v4) != 13)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xEu:
      if (v16(&v14[v15], 16, v4) != 14)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xFu:
      if (v16(&v14[v15], 16, v4) != 15)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0x10u:
      if (v16(&v14[v15], 16, v4) != 16)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    default:
      sub_23C85C9E8(v14, v10, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      if (v16(&v14[v15], 16, v4))
      {
        sub_23C85CA50(v10, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
LABEL_36:
        sub_23C585C34(v14, &qword_27E2053D8, &qword_23C8A6790);
        return 0;
      }

      sub_23C868210(&v14[v15], v7, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v18 = *v10 == *v7 && v10[1] == v7[1];
      if (!v18 && (sub_23C872014() & 1) == 0 || (v10[2] == v7[2] ? (v19 = v10[3] == v7[3]) : (v19 = 0), !v19 && (sub_23C872014() & 1) == 0 || v10[4] != v7[4] || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0)))
      {
        sub_23C85CA50(v7, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
        sub_23C85CA50(v10, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
        sub_23C85CA50(v14, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        return 0;
      }

      sub_23C85CA50(v7, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      sub_23C85CA50(v10, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
LABEL_35:
      sub_23C85CA50(v14, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      return 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v258 = a2;
  v259 = a1;
  v2 = type metadata accessor for TranscriptProtoSkipStatement(0);
  MEMORY[0x28223BE20](v2 - 8);
  v231 = (&v195 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResult - 8);
  v230 = (&v195 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  MEMORY[0x28223BE20](v6 - 8);
  v229 = &v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  MEMORY[0x28223BE20](DecorationResult - 8);
  v228 = (&v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  MEMORY[0x28223BE20](v10 - 8);
  v227 = (&v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  MEMORY[0x28223BE20](v12 - 8);
  v226 = (&v195 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  MEMORY[0x28223BE20](v14 - 8);
  v224 = (&v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  MEMORY[0x28223BE20](v16 - 8);
  v223 = (&v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TranscriptProtoToolResolution(0);
  MEMORY[0x28223BE20](v18 - 8);
  v222 = (&v195 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v196 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v196);
  v225 = (&v195 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  MEMORY[0x28223BE20](v21 - 8);
  v221 = (&v195 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  MEMORY[0x28223BE20](v23 - 8);
  v220 = (&v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v25 - 8);
  v219 = (&v195 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for TranscriptProtoSystemResponse(0);
  MEMORY[0x28223BE20](v27 - 8);
  v218 = (&v195 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  MEMORY[0x28223BE20](v29 - 8);
  v216 = (&v195 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for TranscriptProtoActionCancellation(0);
  MEMORY[0x28223BE20](v31 - 8);
  v215 = (&v195 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v195 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v195);
  v217 = (&v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](matched);
  v214 = (&v195 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  MEMORY[0x28223BE20](v198);
  v212 = (&v195 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v197 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  MEMORY[0x28223BE20](v197);
  v213 = (&v195 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  MEMORY[0x28223BE20](v37 - 8);
  v211 = &v195 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  MEMORY[0x28223BE20](v39 - 8);
  v210 = (&v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults - 8);
  v209 = (&v195 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for TranscriptProtoRecoverableError(0);
  MEMORY[0x28223BE20](v43 - 8);
  v208 = (&v195 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for TranscriptProtoSessionError(0);
  MEMORY[0x28223BE20](v45 - 8);
  v207 = (&v195 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v47 - 8);
  v206 = (&v195 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  MEMORY[0x28223BE20](Step - 8);
  v205 = &v195 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v51 - 8);
  v204 = (&v195 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v53 - 8);
  v203 = &v195 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TranscriptProtoPlan(0);
  MEMORY[0x28223BE20](v55 - 8);
  v202 = &v195 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v57 - 8);
  v201 = &v195 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TranscriptProtoSessionStart(0);
  MEMORY[0x28223BE20](v59 - 8);
  v200 = &v195 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v61 = MEMORY[0x28223BE20](v257);
  v256 = (&v195 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = MEMORY[0x28223BE20](v61);
  v253 = (&v195 - v64);
  v65 = MEMORY[0x28223BE20](v63);
  v255 = &v195 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v252 = (&v195 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v251 = (&v195 - v70);
  v71 = MEMORY[0x28223BE20](v69);
  v250 = (&v195 - v72);
  v73 = MEMORY[0x28223BE20](v71);
  v249 = (&v195 - v74);
  v75 = MEMORY[0x28223BE20](v73);
  v248 = (&v195 - v76);
  v77 = MEMORY[0x28223BE20](v75);
  v247 = (&v195 - v78);
  v79 = MEMORY[0x28223BE20](v77);
  v254 = &v195 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v245 = (&v195 - v82);
  v83 = MEMORY[0x28223BE20](v81);
  v243 = (&v195 - v84);
  v85 = MEMORY[0x28223BE20](v83);
  v242 = (&v195 - v86);
  v87 = MEMORY[0x28223BE20](v85);
  v240 = (&v195 - v88);
  v89 = MEMORY[0x28223BE20](v87);
  v238 = (&v195 - v90);
  v91 = MEMORY[0x28223BE20](v89);
  v237 = (&v195 - v92);
  v93 = MEMORY[0x28223BE20](v91);
  v246 = &v195 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v241 = &v195 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v239 = &v195 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v244 = &v195 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v236 = &v195 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v235 = (&v195 - v104);
  v105 = MEMORY[0x28223BE20](v103);
  v234 = (&v195 - v106);
  v107 = MEMORY[0x28223BE20](v105);
  v233 = (&v195 - v108);
  v109 = MEMORY[0x28223BE20](v107);
  v232 = (&v195 - v110);
  v111 = MEMORY[0x28223BE20](v109);
  v113 = (&v195 - v112);
  v114 = MEMORY[0x28223BE20](v111);
  v116 = &v195 - v115;
  v117 = MEMORY[0x28223BE20](v114);
  v119 = (&v195 - v118);
  v120 = MEMORY[0x28223BE20](v117);
  v122 = &v195 - v121;
  v123 = MEMORY[0x28223BE20](v120);
  v125 = (&v195 - v124);
  v126 = MEMORY[0x28223BE20](v123);
  v128 = &v195 - v127;
  MEMORY[0x28223BE20](v126);
  v130 = &v195 - v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205428, &unk_23C8A67E0);
  v132 = MEMORY[0x28223BE20](v131 - 8);
  v134 = &v195 - v133;
  v135 = *(v132 + 56);
  sub_23C85C9E8(v259, &v195 - v133, type metadata accessor for TranscriptProtoPayloadEnum);
  v259 = v135;
  sub_23C85C9E8(v258, &v134[v135], type metadata accessor for TranscriptProtoPayloadEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C85C9E8(v134, v128, type metadata accessor for TranscriptProtoPayloadEnum);
      v167 = v259;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v168 = v201;
        sub_23C868210(&v134[v167], v201, type metadata accessor for TranscriptProtoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams22TranscriptProtoRequestV2eeoiySbAC_ACtFZ_0(v128, v168);
        v152 = type metadata accessor for TranscriptProtoRequest;
        sub_23C85CA50(v168, type metadata accessor for TranscriptProtoRequest);
        v153 = v128;
        goto LABEL_90;
      }

      v137 = type metadata accessor for TranscriptProtoRequest;
      v138 = v128;
      goto LABEL_125;
    case 2u:
      sub_23C85C9E8(v134, v125, type metadata accessor for TranscriptProtoPayloadEnum);
      v160 = v259;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v161 = v202;
        sub_23C868210(&v134[v160], v202, type metadata accessor for TranscriptProtoPlan);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams19TranscriptProtoPlanV2eeoiySbAC_ACtFZ_0(v125, v161);
        v152 = type metadata accessor for TranscriptProtoPlan;
        sub_23C85CA50(v161, type metadata accessor for TranscriptProtoPlan);
        v153 = v125;
        goto LABEL_90;
      }

      v137 = type metadata accessor for TranscriptProtoPlan;
      v138 = v125;
      goto LABEL_125;
    case 3u:
      sub_23C85C9E8(v134, v122, type metadata accessor for TranscriptProtoPayloadEnum);
      v163 = v259;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v164 = v203;
        sub_23C868210(&v134[v163], v203, type metadata accessor for TranscriptProtoAction);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(v122, v164);
        v149 = type metadata accessor for TranscriptProtoAction;
        v152 = type metadata accessor for TranscriptProtoAction;
        v165 = v164;
        goto LABEL_86;
      }

      v189 = type metadata accessor for TranscriptProtoAction;
      goto LABEL_122;
    case 4u:
      sub_23C85C9E8(v134, v119, type metadata accessor for TranscriptProtoPayloadEnum);
      v150 = v259;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v151 = v204;
        sub_23C868210(&v134[v150], v204, type metadata accessor for TranscriptProtoClientAction);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(v119, v151);
        v152 = type metadata accessor for TranscriptProtoClientAction;
        sub_23C85CA50(v151, type metadata accessor for TranscriptProtoClientAction);
        v153 = v119;
        goto LABEL_90;
      }

      v137 = type metadata accessor for TranscriptProtoClientAction;
      v138 = v119;
      goto LABEL_125;
    case 5u:
      sub_23C85C9E8(v134, v116, type metadata accessor for TranscriptProtoPayloadEnum);
      v172 = v259;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v173 = v205;
        sub_23C868210(&v134[v172], v205, type metadata accessor for TranscriptProtoQueryStep);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams24TranscriptProtoQueryStepV2eeoiySbAC_ACtFZ_0(v116, v173);
        sub_23C85CA50(v173, type metadata accessor for TranscriptProtoQueryStep);
        v153 = v116;
        v174 = type metadata accessor for TranscriptProtoQueryStep;
        goto LABEL_91;
      }

      v137 = type metadata accessor for TranscriptProtoQueryStep;
      v138 = v116;
      goto LABEL_125;
    case 6u:
      sub_23C85C9E8(v134, v113, type metadata accessor for TranscriptProtoPayloadEnum);
      v177 = v259;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v140 = v206;
        sub_23C868210(&v134[v177], v206, type metadata accessor for TranscriptProtoVariableStep);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoVariableStepV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoVariableStep;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoVariableStep;
      goto LABEL_124;
    case 7u:
      v113 = v232;
      sub_23C85C9E8(v134, v232, type metadata accessor for TranscriptProtoPayloadEnum);
      v166 = v259;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v140 = v207;
        sub_23C868210(&v134[v166], v207, type metadata accessor for TranscriptProtoSessionError);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoSessionErrorV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoSessionError;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoSessionError;
      goto LABEL_124;
    case 8u:
      v113 = v233;
      sub_23C85C9E8(v134, v233, type metadata accessor for TranscriptProtoPayloadEnum);
      v180 = v259;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v140 = v208;
        sub_23C868210(&v134[v180], v208, type metadata accessor for TranscriptProtoRecoverableError);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams31TranscriptProtoRecoverableErrorV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoRecoverableError;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoRecoverableError;
      goto LABEL_124;
    case 9u:
      v113 = v234;
      sub_23C85C9E8(v134, v234, type metadata accessor for TranscriptProtoPayloadEnum);
      v157 = v259;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v140 = v209;
        sub_23C868210(&v134[v157], v209, type metadata accessor for TranscriptProtoQueryStepResults);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams31TranscriptProtoQueryStepResultsV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoQueryStepResults;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoQueryStepResults;
      goto LABEL_124;
    case 0xAu:
      v113 = v235;
      sub_23C85C9E8(v134, v235, type metadata accessor for TranscriptProtoPayloadEnum);
      v179 = v259;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v140 = v210;
        sub_23C868210(&v134[v179], v210, type metadata accessor for TranscriptProtoActionResolverRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoActionResolverRequestV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoActionResolverRequest;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoActionResolverRequest;
      goto LABEL_124;
    case 0xBu:
      v122 = v236;
      sub_23C85C9E8(v134, v236, type metadata accessor for TranscriptProtoPayloadEnum);
      v147 = v259;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v148 = v211;
        sub_23C868210(&v134[v147], v211, type metadata accessor for TranscriptProtoSafetyModeRelease);
        sub_23C870F34();
        sub_23C73EA18();
        StepV2eeoiySbAC_ACtFZ_0 = sub_23C871754();
        v149 = type metadata accessor for TranscriptProtoSafetyModeRelease;
        goto LABEL_85;
      }

      v189 = type metadata accessor for TranscriptProtoSafetyModeRelease;
      goto LABEL_122;
    case 0xCu:
      v122 = v244;
      sub_23C85C9E8(v134, v244, type metadata accessor for TranscriptProtoPayloadEnum);
      v154 = v259;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v189 = type metadata accessor for TranscriptProtoSafetyModeException;
        goto LABEL_122;
      }

      v145 = v213;
      sub_23C868210(&v134[v154], v213, type metadata accessor for TranscriptProtoSafetyModeException);
      v155 = *(v122 + 1);
      v156 = v145[1];
      if (v155)
      {
        if (!v156 || (*v122 != *v145 || v155 != v156) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_139;
        }
      }

      else if (v156)
      {
        goto LABEL_139;
      }

      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v146 = type metadata accessor for TranscriptProtoSafetyModeException;
        goto LABEL_137;
      }

LABEL_139:
      v191 = type metadata accessor for TranscriptProtoSafetyModeException;
      goto LABEL_140;
    case 0xDu:
      v122 = v239;
      sub_23C85C9E8(v134, v239, type metadata accessor for TranscriptProtoPayloadEnum);
      v176 = v259;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v189 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
        goto LABEL_122;
      }

      v145 = v212;
      sub_23C868210(&v134[v176], v212, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      if (sub_23C5D4D04(*v122, *v145))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v146 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
          goto LABEL_137;
        }
      }

      v191 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
      goto LABEL_140;
    case 0xEu:
      v122 = v241;
      sub_23C85C9E8(v134, v241, type metadata accessor for TranscriptProtoPayloadEnum);
      v144 = v259;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v189 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
        goto LABEL_122;
      }

      v145 = v214;
      sub_23C868210(&v134[v144], v214, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      if (sub_23C5CF590(*v122, *v145))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v146 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
          goto LABEL_137;
        }
      }

      v191 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
      goto LABEL_140;
    case 0xFu:
      v122 = v246;
      sub_23C85C9E8(v134, v246, type metadata accessor for TranscriptProtoPayloadEnum);
      v162 = v259;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v189 = type metadata accessor for TranscriptProtoContextRetrieved;
        goto LABEL_122;
      }

      v145 = v217;
      sub_23C868210(&v134[v162], v217, type metadata accessor for TranscriptProtoContextRetrieved);
      if (sub_23C5D6494(*v122, *v145) & 1) != 0 && (sub_23C5D6494(*(v122 + 1), v145[1]))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v146 = type metadata accessor for TranscriptProtoContextRetrieved;
          goto LABEL_137;
        }
      }

      v191 = type metadata accessor for TranscriptProtoContextRetrieved;
      goto LABEL_140;
    case 0x10u:
      v113 = v237;
      sub_23C85C9E8(v134, v237, type metadata accessor for TranscriptProtoPayloadEnum);
      v143 = v259;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v140 = v215;
        sub_23C868210(&v134[v143], v215, type metadata accessor for TranscriptProtoActionCancellation);
        StepV2eeoiySbAC_ACtFZ_0 = sub_23C809D30(v113, v140);
        v142 = type metadata accessor for TranscriptProtoActionCancellation;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoActionCancellation;
      goto LABEL_124;
    case 0x11u:
      v113 = v238;
      sub_23C85C9E8(v134, v238, type metadata accessor for TranscriptProtoPayloadEnum);
      v170 = v259;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v140 = v216;
        sub_23C868210(&v134[v170], v216, type metadata accessor for TranscriptProtoToolRetrievalResponse);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoToolRetrievalResponse;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoToolRetrievalResponse;
      goto LABEL_124;
    case 0x12u:
      v113 = v240;
      sub_23C85C9E8(v134, v240, type metadata accessor for TranscriptProtoPayloadEnum);
      v178 = v259;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v140 = v218;
        sub_23C868210(&v134[v178], v218, type metadata accessor for TranscriptProtoSystemResponse);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams29TranscriptProtoSystemResponseV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoSystemResponse;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoSystemResponse;
      goto LABEL_124;
    case 0x13u:
      v113 = v242;
      sub_23C85C9E8(v134, v242, type metadata accessor for TranscriptProtoPayloadEnum);
      v183 = v259;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v140 = v219;
        sub_23C868210(&v134[v183], v219, type metadata accessor for TranscriptProtoStatementResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoStatementResult;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoStatementResult;
      goto LABEL_124;
    case 0x14u:
      v113 = v243;
      sub_23C85C9E8(v134, v243, type metadata accessor for TranscriptProtoPayloadEnum);
      v171 = v259;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v140 = v220;
        sub_23C868210(&v134[v171], v220, type metadata accessor for TranscriptProtoExternalAgentRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams35TranscriptProtoExternalAgentRequestV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoExternalAgentRequest;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoExternalAgentRequest;
      goto LABEL_124;
    case 0x15u:
      v113 = v245;
      sub_23C85C9E8(v134, v245, type metadata accessor for TranscriptProtoPayloadEnum);
      v175 = v259;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v140 = v221;
        sub_23C868210(&v134[v175], v221, type metadata accessor for TranscriptProtoExternalAgentOutcome);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams35TranscriptProtoExternalAgentOutcomeV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoExternalAgentOutcome;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoExternalAgentOutcome;
      goto LABEL_124;
    case 0x16u:
      v122 = v254;
      sub_23C85C9E8(v134, v254, type metadata accessor for TranscriptProtoPayloadEnum);
      v182 = v259;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        v189 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
        goto LABEL_122;
      }

      v145 = v225;
      sub_23C868210(&v134[v182], v225, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      if (*v122 == *v145 && *(v122 + 1) == v145[1] || (sub_23C872014()) && (sub_23C5D25E0(*(v122 + 2), v145[2]))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v146 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
LABEL_137:
          v193 = v146;
          sub_23C85CA50(v145, v146);
          sub_23C85CA50(v122, v193);
LABEL_138:
          sub_23C85CA50(v134, type metadata accessor for TranscriptProtoPayloadEnum);
          StepV2eeoiySbAC_ACtFZ_0 = 1;
          return StepV2eeoiySbAC_ACtFZ_0 & 1;
        }
      }

      v191 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
LABEL_140:
      v194 = v191;
      sub_23C85CA50(v145, v191);
      sub_23C85CA50(v122, v194);
      sub_23C85CA50(v134, type metadata accessor for TranscriptProtoPayloadEnum);
      goto LABEL_127;
    case 0x17u:
      v113 = v247;
      sub_23C85C9E8(v134, v247, type metadata accessor for TranscriptProtoPayloadEnum);
      v184 = v259;
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        v140 = v222;
        sub_23C868210(&v134[v184], v222, type metadata accessor for TranscriptProtoToolResolution);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams29TranscriptProtoToolResolutionV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoToolResolution;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoToolResolution;
      goto LABEL_124;
    case 0x18u:
      v113 = v248;
      sub_23C85C9E8(v134, v248, type metadata accessor for TranscriptProtoPayloadEnum);
      v159 = v259;
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        v140 = v223;
        sub_23C868210(&v134[v159], v223, type metadata accessor for TranscriptProtoUndoRedoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams30TranscriptProtoUndoRedoRequestV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoUndoRedoRequest;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoUndoRedoRequest;
      goto LABEL_124;
    case 0x19u:
      v113 = v249;
      sub_23C85C9E8(v134, v249, type metadata accessor for TranscriptProtoPayloadEnum);
      v158 = v259;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v140 = v224;
        sub_23C868210(&v134[v158], v224, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoClientUndoRedoRequestV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoClientUndoRedoRequest;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoClientUndoRedoRequest;
      goto LABEL_124;
    case 0x1Au:
      v113 = v250;
      sub_23C85C9E8(v134, v250, type metadata accessor for TranscriptProtoPayloadEnum);
      v187 = v259;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v140 = v226;
        sub_23C868210(&v134[v187], v226, type metadata accessor for TranscriptProtoTypeConversionRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoTypeConversionRequestV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoTypeConversionRequest;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoTypeConversionRequest;
      goto LABEL_124;
    case 0x1Bu:
      v113 = v251;
      sub_23C85C9E8(v134, v251, type metadata accessor for TranscriptProtoPayloadEnum);
      v139 = v259;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v140 = v227;
        sub_23C868210(&v134[v139], v227, type metadata accessor for TranscriptProtoTypeConversionResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams35TranscriptProtoTypeConversionResultV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoTypeConversionResult;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoTypeConversionResult;
      goto LABEL_124;
    case 0x1Cu:
      v113 = v252;
      sub_23C85C9E8(v134, v252, type metadata accessor for TranscriptProtoPayloadEnum);
      v185 = v259;
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        v140 = v228;
        sub_23C868210(&v134[v185], v228, type metadata accessor for TranscriptProtoQueryDecorationResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoQueryDecorationResultV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoQueryDecorationResult;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoQueryDecorationResult;
      goto LABEL_124;
    case 0x1Du:
      v122 = v255;
      sub_23C85C9E8(v134, v255, type metadata accessor for TranscriptProtoPayloadEnum);
      v186 = v259;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v148 = v229;
        sub_23C868210(&v134[v186], v229, type metadata accessor for TranscriptProtoContinuePlanning);
        sub_23C870F34();
        sub_23C73EA18();
        StepV2eeoiySbAC_ACtFZ_0 = sub_23C871754();
        v149 = type metadata accessor for TranscriptProtoContinuePlanning;
LABEL_85:
        v152 = v149;
        v165 = v148;
LABEL_86:
        sub_23C85CA50(v165, v149);
        v153 = v122;
        goto LABEL_90;
      }

      v189 = type metadata accessor for TranscriptProtoContinuePlanning;
LABEL_122:
      v137 = v189;
      v138 = v122;
      goto LABEL_125;
    case 0x1Eu:
      v113 = v253;
      sub_23C85C9E8(v134, v253, type metadata accessor for TranscriptProtoPayloadEnum);
      v181 = v259;
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        v140 = v230;
        sub_23C868210(&v134[v181], v230, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams46TranscriptProtoQueryDecorationPrePlannerResultV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult;
        goto LABEL_89;
      }

      v188 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult;
      goto LABEL_124;
    case 0x1Fu:
      v113 = v256;
      sub_23C85C9E8(v134, v256, type metadata accessor for TranscriptProtoPayloadEnum);
      v169 = v259;
      if (swift_getEnumCaseMultiPayload() == 31)
      {
        v140 = v231;
        sub_23C868210(&v134[v169], v231, type metadata accessor for TranscriptProtoSkipStatement);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams28TranscriptProtoSkipStatementV2eeoiySbAC_ACtFZ_0(v113, v140);
        v142 = type metadata accessor for TranscriptProtoSkipStatement;
LABEL_89:
        v152 = v142;
        sub_23C85CA50(v140, v142);
        v153 = v113;
        goto LABEL_90;
      }

      v188 = type metadata accessor for TranscriptProtoSkipStatement;
LABEL_124:
      v137 = v188;
      v138 = v113;
      goto LABEL_125;
    case 0x20u:
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        goto LABEL_138;
      }

      goto LABEL_126;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        goto LABEL_138;
      }

      goto LABEL_126;
    default:
      sub_23C85C9E8(v134, v130, type metadata accessor for TranscriptProtoPayloadEnum);
      v136 = v259;
      if (swift_getEnumCaseMultiPayload())
      {
        v137 = type metadata accessor for TranscriptProtoSessionStart;
        v138 = v130;
LABEL_125:
        sub_23C85CA50(v138, v137);
LABEL_126:
        sub_23C585C34(v134, &qword_27E205428, &unk_23C8A67E0);
LABEL_127:
        StepV2eeoiySbAC_ACtFZ_0 = 0;
      }

      else
      {
        v192 = v200;
        sub_23C868210(&v134[v136], v200, type metadata accessor for TranscriptProtoSessionStart);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoSessionStartV2eeoiySbAC_ACtFZ_0(v130, v192);
        v152 = type metadata accessor for TranscriptProtoSessionStart;
        sub_23C85CA50(v192, type metadata accessor for TranscriptProtoSessionStart);
        v153 = v130;
LABEL_90:
        v174 = v152;
LABEL_91:
        sub_23C85CA50(v153, v174);
        sub_23C85CA50(v134, type metadata accessor for TranscriptProtoPayloadEnum);
      }

      return StepV2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t sub_23C85C9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C85CA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23C85CAB4()
{
  result = qword_27E203F70;
  if (!qword_27E203F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203F70);
  }

  return result;
}

unint64_t sub_23C85CB3C()
{
  result = qword_27E203F88;
  if (!qword_27E203F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203F88);
  }

  return result;
}

unint64_t sub_23C85CBC4()
{
  result = qword_27E203FA0;
  if (!qword_27E203FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203FA0);
  }

  return result;
}

unint64_t sub_23C85CC4C()
{
  result = qword_27E203FB8;
  if (!qword_27E203FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203FB8);
  }

  return result;
}

unint64_t sub_23C85CCD4()
{
  result = qword_27E203FD0;
  if (!qword_27E203FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203FD0);
  }

  return result;
}

unint64_t sub_23C85CD5C()
{
  result = qword_27E203FE8;
  if (!qword_27E203FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203FE8);
  }

  return result;
}

unint64_t sub_23C85CDE4()
{
  result = qword_27E204000;
  if (!qword_27E204000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204000);
  }

  return result;
}

unint64_t sub_23C85CE6C()
{
  result = qword_27E204018;
  if (!qword_27E204018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204018);
  }

  return result;
}

unint64_t sub_23C85CEF4()
{
  result = qword_27E204030;
  if (!qword_27E204030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204030);
  }

  return result;
}

unint64_t sub_23C85CF7C()
{
  result = qword_27E204048;
  if (!qword_27E204048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204048);
  }

  return result;
}

unint64_t sub_23C85D004()
{
  result = qword_27E204060;
  if (!qword_27E204060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204060);
  }

  return result;
}

unint64_t sub_23C85D08C()
{
  result = qword_27E204078;
  if (!qword_27E204078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204078);
  }

  return result;
}

unint64_t sub_23C85D114()
{
  result = qword_27E204090;
  if (!qword_27E204090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204090);
  }

  return result;
}

unint64_t sub_23C85D16C()
{
  result = qword_27E204098;
  if (!qword_27E204098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204098);
  }

  return result;
}

unint64_t sub_23C85D1F4()
{
  result = qword_27E2040B0;
  if (!qword_27E2040B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2040B0);
  }

  return result;
}

unint64_t sub_23C85D24C()
{
  result = qword_27E2040B8;
  if (!qword_27E2040B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2040B8);
  }

  return result;
}

unint64_t sub_23C85D2A4()
{
  result = qword_27E2040C0;
  if (!qword_27E2040C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2040C0);
  }

  return result;
}

unint64_t sub_23C85D2FC()
{
  result = qword_27E2040C8;
  if (!qword_27E2040C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2040C8);
  }

  return result;
}

uint64_t sub_23C85D3F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23C85D480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23C85D5A8(uint64_t a1)
{
  sub_23C85D7A8();
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2040E8, type metadata accessor for TranscriptProtoPayload, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E2040F0, type metadata accessor for TranscriptProtoTimepoint, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C85D808(319, &qword_27E2040F8, type metadata accessor for TranscriptProtoParticipantID, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C85D808(319, &qword_27E204100, type metadata accessor for TranscriptProtoSpanID, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23C870F34();
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

void sub_23C85D7A8()
{
  if (!qword_27E2040E0)
  {
    v0 = sub_23C8716D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2040E0);
    }
  }
}

void sub_23C85D808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23C85D8C8(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoSessionStart(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoRequest(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoPlan(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoAction(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoClientAction(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoQueryStep(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoVariableStep(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoSessionError(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoRecoverableError(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoQueryStepResults(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoActionResolverRequest(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoSafetyModeRelease(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoSafetyModeException(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoResponseGenerationRequest(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoEntitySpanMatchResult(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoContextRetrieved(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoActionCancellation(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoToolRetrievalResponse(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for TranscriptProtoSystemResponse(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for TranscriptProtoStatementResult(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for TranscriptProtoExternalAgentRequest(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for TranscriptProtoExternalAgentOutcome(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for TranscriptProtoToolResolution(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for TranscriptProtoUndoRedoRequest(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for TranscriptProtoClientUndoRedoRequest(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for TranscriptProtoTypeConversionRequest(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for TranscriptProtoTypeConversionResult(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for TranscriptProtoQueryDecorationResult(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for TranscriptProtoContinuePlanning(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(319);
                                                              if (v32 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for TranscriptProtoSkipStatement(319);
                                                                if (v33 <= 0x3F)
                                                                {
                                                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                  return 0;
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

  return result;
}

void sub_23C85DBFC(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204140, type metadata accessor for TranscriptProtoEvent, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C85DD24(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204158, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C85DE20(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204170, type metadata accessor for TranscriptProtoLocaleSettings, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204178, type metadata accessor for TranscriptProtoDeviceDetails, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C85DF44(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204190, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204198, type metadata accessor for TranscriptProtoRequestPrescribedPlan, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E2041A0, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C870F34();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C85E244(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204208, type metadata accessor for TranscriptProtoSpeechPackage, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C85E48C(uint64_t a1)
{
  result = sub_23C870F34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C85E54C(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204190, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041A0, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C85E6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(void, uint64_t))
{
  sub_23C8643D8(319, a5, MEMORY[0x277D837D0], a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C85E7CC(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23C85E9D0(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C85EB10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_23C8643D8(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C85EBC8(uint64_t a1)
{
  sub_23C85EF64(319, &qword_27E204340, type metadata accessor for TranscriptProtoActionParameterValue, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E204348, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C870F34();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C85ED7C(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204360, type metadata accessor for TranscriptProtoToolParameterValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204368, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C85EF64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_23C8716D4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_23C85F02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_23C57BBA8);
}

uint64_t sub_23C85F084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_23C57BBBC);
}

void sub_23C85F1DC(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204368, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C85F300(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204430, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C85F418(uint64_t a1)
{
  sub_23C8643D8(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E1FBBA8, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C85F578(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FBBA8, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FBBB8, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C85F69C(uint64_t a1)
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204468, type metadata accessor for TranscriptProtoStatementResultPayload, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E204348, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C870F34();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C85F8A8(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204498, type metadata accessor for TranscriptProtoCandidatePromptStatus, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C85FA84(uint64_t a1)
{
  sub_23C85EF64(319, &qword_27E1FF558, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_23C85EF64(319, &qword_27E2044C8, type metadata accessor for TranscriptProtoShimParameters, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (v2 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C870F34();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23C85FD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v11 <= 0x3F)
  {
    result = a5(319);
    if (v12 <= 0x3F)
    {
      result = a6(319);
      if (v13 <= 0x3F)
      {
        result = a7(319);
        if (v14 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_23C85FE20(uint64_t a1)
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204530, type metadata accessor for TranscriptProtoPersonQuery.Handle, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C85FF4C(uint64_t a1)
{
  sub_23C8643D8(319, &qword_27E204548, &type metadata for TranscriptProtoPersonQuery.Handle.Kind, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C860068(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FF570, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C860180(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204348, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C8603DC(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_696Tm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_697Tm_0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23C860634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v5 = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v5;
}

uint64_t sub_23C8606F0(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoAppRequirement(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoPermissionRequirement(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSystemRequirementMessage(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23C8609CC(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2046F0, type metadata accessor for TranscriptProtoActionFailureFailure, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C860BCC(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204740, type metadata accessor for TranscriptProtoUndoContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E204748, type metadata accessor for TranscriptProtoFollowUpAction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C870F34();
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

uint64_t sub_23C860EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_300Tm_0_0_3);
}

uint64_t sub_23C860F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_301Tm_0_0_3);
}

uint64_t sub_23C860FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_23C8610C4(uint64_t a1)
{
  sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C8611EC(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FF570, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C861370(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoActionSuccess(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoActionConfirmation(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoParameterNeedsValue(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoParameterConfirmation(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoParameterDisambiguation(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoParameterNotAllowed(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoActionRequirement(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoToolDisambiguation(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoActionFailure(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoValueDisambiguation(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoSnippetStream(319);
                        if (v13 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          return 0;
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
  }

  return result;
}

void sub_23C861608(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204878, type metadata accessor for TranscriptProtoProgramStatement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_27E204880, &type metadata for TranscriptProtoPlanSource, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C8617A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_23C57DDE4);
}

uint64_t sub_23C8617F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_23C57DDF8);
}

uint64_t sub_23C8618D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_23C57DE0C);
}

uint64_t sub_23C86192C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_23C57DE20);
}

void sub_23C8619FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_23C85D808(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C861B30(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204918, type metadata accessor for TranscriptProtoActionParameterContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E204920, type metadata accessor for TranscriptProtoQueryPayload, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C861D90(uint64_t a1)
{
  sub_23C8643D8(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C861EFC(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204990, type metadata accessor for TranscriptProtoQueryResults, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C862028(uint64_t a1)
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C862108(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2049B8, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2049C0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2049C8, type metadata accessor for TranscriptProtoDialogType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E2049D0, type metadata accessor for TranscriptProtoVisualOutputOptions, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C85D808(319, &qword_27E2049D8, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23C870F34();
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

uint64_t sub_23C8624F4(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoStaticText(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoSonicText(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoGeneratedText(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoUnableToGenerate(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoSuppressed(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoCATDialog(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23C862710(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204AF0, type metadata accessor for TranscriptProtoResponseParameter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204AF8, type metadata accessor for TranscriptProtoResponseDialog, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E204B00, type metadata accessor for TranscriptProtoResponseVisual, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C8643D8(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C8643D8(319, &qword_27E204B08, &type metadata for TranscriptProtoResponseDialogPresentationHint, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23C85D808(319, &qword_27E204B10, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_23C870F34();
                if (v8 <= 0x3F)
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

void sub_23C862978(uint64_t a1)
{
  sub_23C8643D8(319, &qword_27E1FB018, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C862ADC(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204B38, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204B40, type metadata accessor for TranscriptProtoUILabel, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E204B48, type metadata accessor for TranscriptProtoResponseVisualOptions, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C862D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_401Tm_1);
}

uint64_t sub_23C862DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_402Tm_1);
}

void sub_23C862E7C(uint64_t a1)
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C862FD4(uint64_t a1)
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204C10, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E204C18, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C870F34();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23C8631E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23C86328C(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204C58, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204C60, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E204348, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C870F34();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C8634AC(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204C90, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C8635D0(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204CA8, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_444Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_445Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C8639F0(uint64_t a1)
{
  sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204CF8, type metadata accessor for TranscriptProtoCandidate, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C863B4C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1165Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_23C870F34();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1166Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C863DD0(uint64_t a1)
{
  sub_23C85EF64(319, &qword_27E204D58, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C863EF0(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204D70, type metadata accessor for TranscriptProtoVariableSetter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C864014(uint64_t a1)
{
  sub_23C85EF64(319, &qword_27E204D88, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1489Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_23C870F34();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_1490Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C8643D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for TranscriptProtoAstpickTypeEnum(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TranscriptProtoAstpickTypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_23C864614(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204E78, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204E80, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C864814(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoASTFlatValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(319);
                                    if (v19 <= 0x3F)
                                    {
                                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                      return 0;
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C864A24(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoStatementID(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23C864B7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_23C85EF64(319, a4, a5, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v5 <= 0x3F)
  {
    sub_23C870F34();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C864D20(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoValueExpression(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoStatementID(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoPrefixExpression(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoInfixExpression(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoIndexExpression(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoUpdateParametersExpression(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoCallExpression(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoSayExpression(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoPickExpression(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoConfirmExpression(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoSearchExpression(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoStructuredSearchExpression(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoPickOneExpression(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoResolveToolExpression(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoUndoExpression(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoRejectExpression(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoCancelExpression(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoNoMatchingToolExpression(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for TranscriptProtoContinuePlanningExpression(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for TranscriptProtoEndOfPlanExpression(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for TranscriptProtoOpenExpression(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for TranscriptProtoExplicitResolutionRequest(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for TranscriptProtoPayloadExpression(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for TranscriptProtoFormatExpression(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                    return 0;
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
      }
    }
  }

  return result;
}

uint64_t sub_23C86505C(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1792Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 237)
  {
    v6 = *a1;
    if (v6 >= 0x13)
    {
      return v6 - 18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1793Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 237)
  {
    *result = a2 + 18;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = &v7[*(a4 + 20)];

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = &v7[*(a4 + 28)];

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C8653F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_23C85D808(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1846Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 253)
  {
    v6 = *a1;
    if (v6 >= 3)
    {
      return v6 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1847Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = &v7[*(a4 + 20)];

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = &v7[*(a4 + 24)];

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_367Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_23C870F34();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_368Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_23C870F34();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_23C865948(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_23C85D808(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C865A00(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E204FF8, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C865B24(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C865CB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_23C85EF64(319, a4, a5, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v9 <= 0x3F)
  {
    sub_23C85D808(319, a6, a7, MEMORY[0x277D83D88]);
    if (v10 <= 0x3F)
    {
      sub_23C870F34();
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1147Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_1148Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23C865FB0(uint64_t a1)
{
  result = sub_23C870F34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1138Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_1139Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C8662B0(uint64_t a1)
{
  sub_23C85EF64(319, &qword_27E205030, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E205088, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C8666B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_23C57FF68);
}

uint64_t sub_23C866708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_23C580020);
}

uint64_t __swift_get_extra_inhabitant_index_268Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_269Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C866928(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FB270, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FB278, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C866A6C(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2051D0, type metadata accessor for TranscriptProtoInterpretedStatementResult, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2051D8, type metadata accessor for TranscriptProtoResponseOutput, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C866BCC(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FBBA8, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C866D38(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E205200, type metadata accessor for TranscriptProtoExpression, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C866E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_23C870F34();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_376Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_23C870F34();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_377Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_23C870F34();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_23C867094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_23C85D808(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C8671FC(uint64_t a1)
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1891Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_23C870F34();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_1892Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23C870F34();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23C867584(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C867678(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_2188Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v10 = v13;
    v11 = *(v14 + 48);
    v12 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v16 = sub_23C870F34();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + *(a3 + 28);

  return v17(v18, a2, v16);
}

uint64_t __swift_store_extra_inhabitant_index_2189Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, a2, v12);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a3)
  {
    v12 = v15;
    v13 = *(v16 + 56);
    v14 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v18 = sub_23C870F34();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + *(a4 + 28);

  return v19(v20, a2, a2, v18);
}

void sub_23C867AB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_23C85D808(319, a4, a5, MEMORY[0x277D83D88]);
  if (v5 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v6 <= 0x3F)
    {
      sub_23C870F34();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C867BC0(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E1FB150, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204C78, type metadata accessor for TranscriptProtoRetrievedContextStatement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2052A0, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E1FB168, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C870F34();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C867D78(uint64_t a1)
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2052B8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C86806C(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23C868180(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_23C85D808(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C868210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TranscriptProtoEvent.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v46 - v9;
  v10 = sub_23C870AE4();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - v17;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_23C871D14();
  MEMORY[0x23EED7100](0x206E6F6973736553, 0xEC000000203A4449);
  MEMORY[0x23EED7100](v1[2], v1[3]);
  MEMORY[0x23EED7100](0xD000000000000014, 0x800000023C8B3600);
  MEMORY[0x23EED7100](v1[6], v1[7]);
  MEMORY[0x23EED7100](0xD000000000000014, 0x800000023C8B3620);
  MEMORY[0x23EED7100](v1[4], v1[5]);
  MEMORY[0x23EED7100](0x646574616572430ALL, 0xED0000203A746120);
  v19 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(v0 + v19[13], v15, &qword_27E1F9D08, &qword_23C87D090);
  v20 = type metadata accessor for TranscriptProtoTimepoint(0);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_27E1F9D08;
    v22 = &qword_23C87D090;
    v23 = v15;
LABEL_5:
    sub_23C585C34(v23, v21, v22);
    v26 = 0xE300000000000000;
    v27 = 7104878;
    goto LABEL_7;
  }

  sub_23C5855B0(&v15[*(v20 + 28)], v18, &unk_27E1F9D10, &qword_23C874E00);
  sub_23C86C254(v15, type metadata accessor for TranscriptProtoTimepoint);
  v24 = sub_23C870EC4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v18, 1, v24) == 1)
  {
    v21 = &unk_27E1F9D10;
    v22 = &qword_23C874E00;
    v23 = v18;
    goto LABEL_5;
  }

  sub_23C870EB4();
  (*(v25 + 8))(v18, v24);
  v28 = sub_23C870A74();
  v26 = v29;
  (*(v47 + 8))(v12, v48);
  v27 = v28;
LABEL_7:
  MEMORY[0x23EED7100](v27, v26);

  MEMORY[0x23EED7100](0x64616F6C7961500ALL, 0xEA0000000000203ALL);
  sub_23C5855B0(v1 + v19[11], v7, &qword_27E1F9950, &unk_23C87CFF0);
  v30 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v30 - 8) + 48))(v7, 1, v30) == 1)
  {
    v31 = &qword_27E1F9950;
    v32 = &unk_23C87CFF0;
    v33 = v7;
LABEL_11:
    sub_23C585C34(v33, v31, v32);
    v36 = 0xE300000000000000;
    v37 = 7104878;
    goto LABEL_13;
  }

  v34 = v49;
  sub_23C5855B0(v7, v49, &qword_27E1F9958, &qword_23C873E10);
  sub_23C86C254(v7, type metadata accessor for TranscriptProtoPayload);
  v35 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
  {
    v31 = &qword_27E1F9958;
    v32 = &qword_23C873E10;
    v33 = v34;
    goto LABEL_11;
  }

  v38 = TranscriptProtoPayloadEnum.eventTypeString.getter();
  v36 = v39;
  sub_23C86C254(v34, type metadata accessor for TranscriptProtoPayloadEnum);
  v37 = v38;
LABEL_13:
  MEMORY[0x23EED7100](v37, v36);

  MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8B3640);
  sub_23C5855B0(v1 + v19[15], v4, &qword_27E1FBF40, &qword_23C87D088);
  v40 = type metadata accessor for TranscriptProtoSpanID(0);
  if ((*(*(v40 - 8) + 48))(v4, 1, v40) == 1)
  {
    sub_23C585C34(v4, &qword_27E1FBF40, &qword_23C87D088);
    v41 = 0xE300000000000000;
    v42 = 7104878;
  }

  else
  {
    sub_23C869164();
    v43 = sub_23C8711F4();
    v41 = v44;
    sub_23C86C254(v4, type metadata accessor for TranscriptProtoSpanID);
    v42 = v43;
  }

  MEMORY[0x23EED7100](v42, v41);

  return v50;
}

unint64_t sub_23C869164()
{
  result = qword_27E2024B0;
  if (!qword_27E2024B0)
  {
    type metadata accessor for TranscriptProtoSpanID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2024B0);
  }

  return result;
}

unint64_t TranscriptProtoPayloadEnum.eventTypeString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v1, v4, type metadata accessor for TranscriptProtoPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x616C50664F646E45;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x74736575716552;
      break;
    case 2:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x616572436E616C50;
      break;
    case 3:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x72436E6F69746341;
      break;
    case 4:
    case 12:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000013;
      break;
    case 5:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x4373656972657551;
      break;
    case 6:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x656C626169726156;
      break;
    case 7:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6C61636974697243;
      break;
    case 8:
    case 15:
    case 29:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000010;
      break;
    case 9:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x4573656972657551;
      break;
    case 10:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 14:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000011;
      break;
    case 13:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      v7 = 9;
      goto LABEL_27;
    case 16:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x61436E6F69746341;
      break;
    case 17:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x746552736C6F6F54;
      break;
    case 18:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000017;
      break;
    case 19:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000012;
      break;
    case 20:
    case 21:
    case 27:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000014;
      break;
    case 22:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000023;
      break;
    case 23:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6F7365526C6F6F54;
      break;
    case 24:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6F6465526F646E55;
      break;
    case 25:
    case 26:
    case 28:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      v7 = 5;
LABEL_27:
      result = v7 | 0xD000000000000010;
      break;
    case 30:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD00000000000001FLL;
      break;
    case 31:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x7461745370696B53;
      break;
    case 32:
      return result;
    case 33:
      result = 0x74616E696D726554;
      break;
    default:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x536E6F6973736553;
      break;
  }

  return result;
}

uint64_t TranscriptProtoPayloadEnum.description.getter()
{
  v104 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  MEMORY[0x28223BE20](v104);
  v103 = &v90 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  MEMORY[0x28223BE20](v102);
  v101 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  MEMORY[0x28223BE20](v100);
  v99 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  MEMORY[0x28223BE20](v98);
  v97 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  MEMORY[0x28223BE20](v96);
  v95 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  MEMORY[0x28223BE20](v94);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for TranscriptProtoActionSuccess(0);
  MEMORY[0x28223BE20](v91);
  v92 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE8, &qword_23C8A0EC8);
  MEMORY[0x28223BE20](v7 - 8);
  v111 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  MEMORY[0x28223BE20](v9 - 8);
  v107 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v11 - 8);
  v114 = &v90 - v12;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v112 = *(v13 - 8);
  v113 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v105 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v90 - v16;
  v17 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v17);
  v115 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v110);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](matched - 8);
  v109 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TranscriptProtoSessionError(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v108 = *(Results - 8);
  MEMORY[0x28223BE20](Results - 8);
  v28 = (&v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults - 8);
  v116 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v40);
  v42 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v117, v42, type metadata accessor for TranscriptProtoPayloadEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x74736575716552;
    case 2u:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x616572436E616C50;
    case 3u:
      sub_23C86C184(v42, v39, type metadata accessor for TranscriptProtoAction);
      v45 = TranscriptProtoAction.description.getter();
      v47 = type metadata accessor for TranscriptProtoAction;
      v48 = v39;
      goto LABEL_28;
    case 4u:
      sub_23C86C184(v42, v36, type metadata accessor for TranscriptProtoClientAction);
      v45 = TranscriptProtoClientAction.description.getter();
      v47 = type metadata accessor for TranscriptProtoClientAction;
      v48 = v36;
      goto LABEL_28;
    case 5u:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x4373656972657551;
    case 6u:
      sub_23C86C184(v42, v33, type metadata accessor for TranscriptProtoVariableStep);
      v66 = *v33;
      v67 = type metadata accessor for TranscriptProtoVariableSetter(0);
      v45 = MEMORY[0x23EED71B0](v66, v67);
      v46 = type metadata accessor for TranscriptProtoVariableStep;
      goto LABEL_27;
    case 7u:
      sub_23C86C184(v42, v25, type metadata accessor for TranscriptProtoSessionError);
      v119 = 0;
      v120 = 0xE000000000000000;
      MEMORY[0x23EED7100](0x6F6261203A6D6C6CLL, 0xEC00000028207472);
      sub_23C871DE4();
      MEMORY[0x23EED7100](41, 0xE100000000000000);
      v45 = v119;
      v47 = type metadata accessor for TranscriptProtoSessionError;
      v48 = v25;
      goto LABEL_28;
    case 8u:
    case 0x1Du:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000010;
    case 9u:
      v49 = v116;
      sub_23C86C184(v42, v116, type metadata accessor for TranscriptProtoQueryStepResults);
      v50 = *v49;
      v51 = *(*v49 + 16);
      v52 = MEMORY[0x277D84F90];
      if (v51)
      {
        v118 = MEMORY[0x277D84F90];
        sub_23C592B40(0, v51, 0);
        v52 = v118;
        v53 = v50 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
        v54 = *(v108 + 72);
        do
        {
          sub_23C86C1EC(v53, v28, type metadata accessor for TranscriptProtoQueryResults);
          v119 = 0x203A646E756F66;
          v120 = 0xE700000000000000;
          v55 = *v28;
          v56 = type metadata accessor for TranscriptProtoCandidate(0);
          v57 = MEMORY[0x23EED71B0](v55, v56);
          MEMORY[0x23EED7100](v57);

          v59 = v119;
          v58 = v120;
          sub_23C86C254(v28, type metadata accessor for TranscriptProtoQueryResults);
          v118 = v52;
          v61 = *(v52 + 16);
          v60 = *(v52 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_23C592B40((v60 > 1), v61 + 1, 1);
            v52 = v118;
          }

          *(v52 + 16) = v61 + 1;
          v62 = v52 + 16 * v61;
          *(v62 + 32) = v59;
          *(v62 + 40) = v58;
          v53 += v54;
          --v51;
        }

        while (v51);
      }

      v119 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
      sub_23C59502C();
      v63 = sub_23C871704();

      sub_23C86C254(v116, type metadata accessor for TranscriptProtoQueryStepResults);
      return v63;
    case 0xAu:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD00000000000001CLL;
    case 0xBu:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000011;
    case 0xCu:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000013;
    case 0xDu:
      v64 = type metadata accessor for TranscriptProtoPayloadEnum;
      v65 = v42;
      goto LABEL_25;
    case 0xEu:
      v33 = v109;
      sub_23C86C184(v42, v109, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      v119 = 0;
      v120 = 0xE000000000000000;
      sub_23C871D14();

      v119 = 0x20646E756F66;
      v120 = 0xE600000000000000;
      v118 = *(*v33 + 16);
      v44 = sub_23C871FD4();
      MEMORY[0x23EED7100](v44);

      MEMORY[0x23EED7100](0x616D206E61707320, 0xED00007365686374);
      v45 = v119;
      v46 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
      goto LABEL_27;
    case 0xFu:
      sub_23C86C184(v42, v20, type metadata accessor for TranscriptProtoContextRetrieved);
      v119 = 0;
      v120 = 0xE000000000000000;
      sub_23C871D14();
      MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8B3930);
      sub_23C871DE4();
      v45 = v119;
      v47 = type metadata accessor for TranscriptProtoContextRetrieved;
      v48 = v20;
      goto LABEL_28;
    case 0x10u:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x43206E6F69746361;
    case 0x11u:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x657220736C6F6F54;
    case 0x12u:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000017;
    case 0x13u:
      v33 = v115;
      sub_23C86C184(v42, v115, type metadata accessor for TranscriptProtoStatementResult);
      v68 = v111;
      sub_23C5855B0(&v33[*(v17 + 20)], v111, &qword_27E203CE8, &qword_23C8A0EC8);
      v69 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69) == 1)
      {
        sub_23C585C34(v68, &qword_27E203CE8, &qword_23C8A0EC8);
        v70 = v113;
        v71 = v114;
LABEL_43:
        (*(v112 + 56))(v71, 1, 1, v70);
LABEL_44:
        sub_23C585C34(v71, &qword_27E201770, &unk_23C8A1260);
        sub_23C86C254(v33, type metadata accessor for TranscriptProtoStatementResult);
        return 0x203A746C75736572;
      }

      v74 = v107;
      sub_23C5855B0(v68, v107, &qword_27E1FBB18, &unk_23C87B950);
      sub_23C86C254(v68, type metadata accessor for TranscriptProtoStatementResultPayload);
      v75 = type metadata accessor for TranscriptProtoStatementOutcome(0);
      v76 = (*(*(v75 - 8) + 48))(v74, 1, v75);
      v70 = v113;
      v71 = v114;
      if (v76 == 1)
      {
        sub_23C585C34(v74, &qword_27E1FBB18, &unk_23C87B950);
        goto LABEL_43;
      }

      sub_23C5855B0(v74, v114, &qword_27E201770, &unk_23C8A1260);
      sub_23C86C254(v74, type metadata accessor for TranscriptProtoStatementOutcome);
      if ((*(v112 + 48))(v71, 1, v70) == 1)
      {
        goto LABEL_44;
      }

      v77 = v106;
      sub_23C86C184(v71, v106, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v78 = v105;
      sub_23C86C1EC(v77, v105, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v87 = v78;
            v81 = v97;
            sub_23C86C184(v87, v97, type metadata accessor for TranscriptProtoParameterConfirmation);
            v119 = 0;
            v120 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v45 = v119;
            v82 = type metadata accessor for TranscriptProtoParameterConfirmation;
          }

          else if (EnumCaseMultiPayload == 4)
          {
            v83 = v78;
            v81 = v99;
            sub_23C86C184(v83, v99, type metadata accessor for TranscriptProtoParameterDisambiguation);
            v119 = 0;
            v120 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v45 = v119;
            v82 = type metadata accessor for TranscriptProtoParameterDisambiguation;
          }

          else
          {
            v89 = v78;
            v81 = v101;
            sub_23C86C184(v89, v101, type metadata accessor for TranscriptProtoParameterNotAllowed);
            v119 = 0;
            v120 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v45 = v119;
            v82 = type metadata accessor for TranscriptProtoParameterNotAllowed;
          }
        }

        else if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v80 = v78;
            v81 = v93;
            sub_23C86C184(v80, v93, type metadata accessor for TranscriptProtoActionConfirmation);
            v119 = 0;
            v120 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v45 = v119;
            v82 = type metadata accessor for TranscriptProtoActionConfirmation;
          }

          else
          {
            v88 = v78;
            v81 = v95;
            sub_23C86C184(v88, v95, type metadata accessor for TranscriptProtoParameterNeedsValue);
            v119 = 0;
            v120 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v45 = v119;
            v82 = type metadata accessor for TranscriptProtoParameterNeedsValue;
          }
        }

        else
        {
          v84 = v78;
          v81 = v92;
          sub_23C86C184(v84, v92, type metadata accessor for TranscriptProtoActionSuccess);
          v119 = 0x203A746C75736572;
          v120 = 0xE800000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
          v85 = sub_23C871B64();
          MEMORY[0x23EED7100](v85);

          v45 = v119;
          v82 = type metadata accessor for TranscriptProtoActionSuccess;
        }

LABEL_69:
        sub_23C86C254(v81, v82);
        sub_23C86C254(v77, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        v46 = type metadata accessor for TranscriptProtoStatementResult;
LABEL_27:
        v47 = v46;
        v48 = v33;
LABEL_28:
        sub_23C86C254(v48, v47);
        return v45;
      }

      if (EnumCaseMultiPayload > 8)
      {
        if (EnumCaseMultiPayload == 9)
        {
          sub_23C86C254(v77, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v33, type metadata accessor for TranscriptProtoStatementResult);
          sub_23C86C254(v78, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return 0x203A746C75736572;
        }

        else if (EnumCaseMultiPayload == 10)
        {
          sub_23C86C254(v77, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v33, type metadata accessor for TranscriptProtoStatementResult);
          sub_23C86C254(v78, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return 0xD00000000000001BLL;
        }

        else
        {
          sub_23C86C254(v77, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v33, type metadata accessor for TranscriptProtoStatementResult);
          v73 = v78;
          v72 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
LABEL_40:
          sub_23C86C254(v73, v72);
          return 0xD000000000000015;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 6)
        {
          v86 = v78;
          v81 = v103;
          sub_23C86C184(v86, v103, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
          v119 = 0;
          v120 = 0xE000000000000000;
          MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
          sub_23C871DE4();
          v45 = v119;
          v82 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
          goto LABEL_69;
        }

        if (EnumCaseMultiPayload == 7)
        {
          sub_23C86C254(v77, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v33, type metadata accessor for TranscriptProtoStatementResult);
          v65 = v78;
          v64 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
LABEL_25:
          sub_23C86C254(v65, v64);
          return 0xD000000000000019;
        }

        else
        {
          sub_23C86C254(v77, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v33, type metadata accessor for TranscriptProtoStatementResult);
          sub_23C86C254(v78, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return 0xD00000000000001ALL;
        }
      }

    case 0x14u:
    case 0x15u:
    case 0x1Bu:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000014;
    case 0x16u:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000023;
    case 0x17u:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x6F7365526C6F6F54;
    case 0x18u:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x6F6465526F646E55;
    case 0x19u:
    case 0x1Au:
    case 0x1Cu:
      v72 = type metadata accessor for TranscriptProtoPayloadEnum;
      v73 = v42;
      goto LABEL_40;
    case 0x1Eu:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD00000000000001FLL;
    case 0x1Fu:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x7461745370696B53;
    case 0x20u:
      return 0xD00000000000001FLL;
    case 0x21u:
      return 0xD00000000000001CLL;
    default:
      sub_23C86C254(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x536E6F6973736553;
  }
}

uint64_t TranscriptProtoAction.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v23 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v23 - v6);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_23C871D14();
  MEMORY[0x23EED7100](0x65286E6F69746341, 0xEF203A6449727078);
  v8 = type metadata accessor for TranscriptProtoAction(0);
  sub_23C5855B0(&v0[v8[6]], v7, &qword_27E1FAAF8, &unk_23C8A1180);
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
    v10 = 0xE300000000000000;
    v11 = 4999502;
  }

  else
  {
    v24 = 101;
    v25 = 0xE100000000000000;
    v23[1] = *v7 - 1;
    v12 = sub_23C871FD4();
    MEMORY[0x23EED7100](v12);

    v11 = v24;
    v10 = v25;
    sub_23C86C254(v7, type metadata accessor for TranscriptProtoStatementID);
  }

  MEMORY[0x23EED7100](v11, v10);

  MEMORY[0x23EED7100](0x64496C6F6F74202CLL, 0xEA0000000000203ALL);
  sub_23C5855B0(&v0[v8[9]], v4, &qword_27E2037A0, &qword_23C8A0A00);
  v13 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  if ((*(*(v13 - 8) + 48))(v4, 1, v13) == 1)
  {
    sub_23C585C34(v4, &qword_27E2037A0, &qword_23C8A0A00);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v4;
    v15 = v4[1];

    sub_23C86C254(v4, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  }

  v24 = v14;
  v25 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  sub_23C871DE4();

  MEMORY[0x23EED7100](0x656C646E7562202CLL, 0xEC000000203A6449);
  v16 = &v1[v8[7]];
  if (v16[1])
  {
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    v18 = 0xE300000000000000;
    v17 = 7104878;
  }

  MEMORY[0x23EED7100](v17, v18);

  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8B3990);
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  v19 = sub_23C8716C4();
  MEMORY[0x23EED7100](v19);

  MEMORY[0x23EED7100](0x666E6F437369202CLL, 0xEF203A64656D7269);
  if (*v1)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*v1)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x23EED7100](v20, v21);

  MEMORY[0x23EED7100](41, 0xE100000000000000);
  return v26;
}

unint64_t TranscriptProtoClientAction.description.getter()
{
  sub_23C871D14();

  MEMORY[0x23EED7100](*v0, v0[1]);
  MEMORY[0x23EED7100](0x656D61726170202CLL, 0xEE00203A73726574);
  type metadata accessor for ToolKitProtoTypedValue(0);
  v1 = sub_23C8716C4();
  MEMORY[0x23EED7100](v1);

  MEMORY[0x23EED7100](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t TranscriptProtoPayloadEnum.PayloadType.hashValue.getter()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t TranscriptProtoPayloadEnum.payloadType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v2, v6, type metadata accessor for TranscriptProtoPayloadEnum);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v8 = 39;
      goto LABEL_36;
    case 2:
      v8 = 2;
      goto LABEL_36;
    case 3:
      v8 = 3;
      goto LABEL_36;
    case 4:
      v8 = 4;
      goto LABEL_36;
    case 5:
      v8 = 5;
      goto LABEL_36;
    case 6:
      v8 = 6;
      goto LABEL_36;
    case 7:
      v8 = 9;
      goto LABEL_36;
    case 8:
      v8 = 44;
      goto LABEL_36;
    case 9:
      v8 = 15;
      goto LABEL_36;
    case 10:
      v8 = 17;
      goto LABEL_36;
    case 11:
      v8 = 21;
      goto LABEL_36;
    case 12:
      v8 = 22;
      goto LABEL_36;
    case 13:
      v8 = 24;
      goto LABEL_36;
    case 14:
      v8 = 23;
      goto LABEL_36;
    case 15:
      v8 = 25;
      goto LABEL_36;
    case 16:
      v8 = 27;
      goto LABEL_36;
    case 17:
      v8 = 26;
      goto LABEL_36;
    case 18:
      v8 = 28;
      goto LABEL_36;
    case 19:
      v8 = 29;
      goto LABEL_36;
    case 20:
      v8 = 40;
      goto LABEL_36;
    case 21:
      v8 = 32;
      goto LABEL_36;
    case 22:
      v8 = 33;
      goto LABEL_36;
    case 23:
      v8 = 34;
      goto LABEL_36;
    case 24:
      v8 = 35;
      goto LABEL_36;
    case 25:
      v8 = 36;
      goto LABEL_36;
    case 26:
      v8 = 37;
      goto LABEL_36;
    case 27:
      v8 = 38;
      goto LABEL_36;
    case 28:
      v8 = 45;
      goto LABEL_36;
    case 29:
      v8 = 46;
      goto LABEL_36;
    case 30:
      v8 = 47;
      goto LABEL_36;
    case 31:
      v8 = 48;
      goto LABEL_36;
    case 32:
      *a1 = 11;
      return result;
    case 33:
      *a1 = 12;
      return result;
    default:
      v8 = 43;
LABEL_36:
      *a1 = v8;
      return sub_23C86C254(v6, type metadata accessor for TranscriptProtoPayloadEnum);
  }
}

uint64_t TranscriptProtoStatementID.asExprID.getter()
{
  v0 = sub_23C871FD4();
  MEMORY[0x23EED7100](v0);

  return 101;
}

uint64_t TranscriptProtoSystemPromptResolution.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039A8, &qword_23C8A0BF8);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - v2;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_23C871D14();
  MEMORY[0x23EED7100](0xD000000000000020, 0x800000023C8B39D0);
  v7 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  sub_23C871DE4();
  MEMORY[0x23EED7100](0x634172657375202CLL, 0xEE00203A6E6F6974);
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_23C5855B0(v0 + *(v4 + 24), v3, &qword_27E2039A8, &qword_23C8A0BF8);
  v5 = sub_23C8717D4();
  MEMORY[0x23EED7100](v5);

  MEMORY[0x23EED7100](41, 0xE100000000000000);
  return v8;
}

uint64_t TranscriptProtoActionFailureFailureEnum.description.getter()
{
  v1 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v0, v3, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  v4 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 16, v4);
  result = 0x6173694469666977;
  switch(v5)
  {
    case 1:
      goto LABEL_10;
    case 2:
      return 0xD000000000000017;
    case 3:
      return 0xD000000000000010;
    case 4:
      return result;
    case 5:
      return 0xD000000000000011;
    case 6:
      return 0x466B726F7774656ELL;
    case 7:
      return 0x466C616974726170;
    case 8:
      return 0xD000000000000013;
    case 9:
      v7 = 10;
      return v7 | 0xD000000000000010;
    case 10:
      return 0x6F4E797469746E65;
    case 11:
      return 0xD000000000000010;
    case 12:
      return 0x6F54656C62616E75;
    case 13:
      return 0x61436E6F69746361;
    case 14:
      v7 = 11;
      return v7 | 0xD000000000000010;
    case 15:
      return 0x69686374614D6F6ELL;
    case 16:
      return 0x54656C62616E752ELL;
    default:
      sub_23C86C254(v3, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
LABEL_10:
      v7 = 5;
      return v7 | 0xD000000000000010;
  }
}

unint64_t TranscriptProtoStatementOutcomeEnum.description.getter()
{
  v1 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v0, v3, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    v9 = 0x6572756C696146;
    v10 = 0x5374657070696E53;
    if (EnumCaseMultiPayload == 10)
    {
      v10 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload != 9)
    {
      v9 = v10;
    }

    v11 = 0xD000000000000012;
    if (EnumCaseMultiPayload == 7)
    {
      v11 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v11 = 0xD00000000000001BLL;
    }

    if (EnumCaseMultiPayload <= 8)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v5 = 0x73736563637553;
    v6 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 4)
    {
      v6 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v6 = 0xD000000000000015;
    }

    v7 = 0xD000000000000012;
    if (EnumCaseMultiPayload != 1)
    {
      v7 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload)
    {
      v5 = v7;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }
  }

  sub_23C86C254(v3, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  return v8;
}

uint64_t sub_23C86C184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C86C1EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C86C254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23C86C2B8()
{
  result = qword_27E205430;
  if (!qword_27E205430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E205430);
  }

  return result;
}

uint64_t _s11PayloadTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PayloadTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams20TranscriptProtoEventV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v51 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = sub_23C870AE4();
  v53 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v50 = &v43 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v54 = &v43 - v22;
  v23 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v23 + 52), v8, &qword_27E1F9D08, &qword_23C87D090);
  v24 = type metadata accessor for TranscriptProtoTimepoint(0);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v8, 1, v24) == 1)
  {
    v26 = &qword_27E1F9D08;
    v27 = &qword_23C87D090;
    v28 = v8;
LABEL_5:
    sub_23C585C34(v28, v26, v27);
    goto LABEL_6;
  }

  v48 = v14;
  sub_23C5855B0(&v8[*(v24 + 28)], v13, &unk_27E1F9D10, &qword_23C874E00);
  sub_23C86CA24(v8);
  v29 = sub_23C870EC4();
  v30 = *(v29 - 8);
  v47 = *(v30 + 48);
  if (v47(v13, 1, v29) == 1)
  {
    v26 = &unk_27E1F9D10;
    v27 = &qword_23C874E00;
    v28 = v13;
    goto LABEL_5;
  }

  sub_23C870EB4();
  v46 = *(v30 + 8);
  v46(v13, v29);
  v33 = v53;
  v44 = *(v53 + 32);
  v45 = v53 + 32;
  v44(v54, v21, v48);
  sub_23C5855B0(v52 + *(v23 + 52), v6, &qword_27E1F9D08, &qword_23C87D090);
  if (v25(v6, 1, v24) == 1)
  {
    v34 = &qword_27E1F9D08;
    v35 = &qword_23C87D090;
    v36 = v6;
  }

  else
  {
    v37 = v51;
    sub_23C5855B0(&v6[*(v24 + 28)], v51, &unk_27E1F9D10, &qword_23C874E00);
    sub_23C86CA24(v6);
    if (v47(v37, 1, v29) != 1)
    {
      v38 = v49;
      sub_23C870EB4();
      v46(v37, v29);
      v39 = v50;
      v40 = v48;
      v44(v50, v38, v48);
      v41 = v54;
      v31 = sub_23C870A94();
      v42 = *(v33 + 8);
      v42(v39, v40);
      v42(v41, v40);
      return v31 & 1;
    }

    v34 = &unk_27E1F9D10;
    v35 = &qword_23C874E00;
    v36 = v37;
  }

  sub_23C585C34(v36, v34, v35);
  (*(v33 + 8))(v54, v48);
LABEL_6:
  v31 = 1;
  return v31 & 1;
}

unint64_t sub_23C86C9CC()
{
  result = qword_27E201DA0;
  if (!qword_27E201DA0)
  {
    type metadata accessor for TranscriptProtoEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201DA0);
  }

  return result;
}

uint64_t sub_23C86CA24(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double TranscriptProtoEvent.getRequest()@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-v10];
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(v1 + *(v12 + 44), v5, &qword_27E1F9950, &unk_23C87CFF0);
  v13 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v13 - 8) + 48))(v5, 1, v13) == 1)
  {
    sub_23C585C34(v5, &qword_27E1F9950, &unk_23C87CFF0);
    v14 = type metadata accessor for TranscriptProtoPayloadEnum(0);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
LABEL_11:
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    sub_23C585C34(v11, &qword_27E1F9958, &qword_23C873E10);
    return result;
  }

  sub_23C5855B0(v5, v11, &qword_27E1F9958, &qword_23C873E10);
  sub_23C86CE40(v5, type metadata accessor for TranscriptProtoPayload);
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v15 - 8) + 48))(v11, 1, v15) == 1)
  {
    goto LABEL_11;
  }

  sub_23C5855B0(v11, v9, &qword_27E1F9958, &qword_23C873E10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 20)
  {
    sub_23C86CE40(v9, type metadata accessor for TranscriptProtoPayloadEnum);
    goto LABEL_11;
  }

  sub_23C86CE40(v9, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_23C585C34(v11, &qword_27E1F9958, &qword_23C873E10);
  v18 = sub_23C86D0C0();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v23 = *v1;
    v22 = v1[1];

    v24 = TranscriptProtoEvent.getEventType()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C873D10;
    *(inited + 32) = 1954047348;
    v26 = inited + 32;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v20;
    *(inited + 56) = v21;
    v27 = sub_23C5967FC(inited);
    swift_setDeallocating();
    sub_23C585C34(v26, &qword_27E1F9968, &unk_23C873E20);
    *a1 = v23;
    *(a1 + 8) = v22;
    *(a1 + 16) = v24;
    *&result = 1954047348;
    *(a1 + 32) = xmmword_23C873D00;
    *(a1 + 48) = v27;
  }

  else
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_23C86CE40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::String_optional __swiftcall TranscriptProtoEvent.getEventType()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(v0 + *(v7 + 44), v3, &qword_27E1F9950, &unk_23C87CFF0);
  v8 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    v9 = &qword_27E1F9950;
    v10 = &unk_23C87CFF0;
    v11 = v3;
  }

  else
  {
    sub_23C5855B0(v3, v6, &qword_27E1F9958, &qword_23C873E10);
    sub_23C86CE40(v3, type metadata accessor for TranscriptProtoPayload);
    v12 = type metadata accessor for TranscriptProtoPayloadEnum(0);
    if ((*(*(v12 - 8) + 48))(v6, 1, v12) != 1)
    {
      v15 = TranscriptProtoPayloadEnum.eventTypeString.getter();
      v17 = v16;
      sub_23C86CE40(v6, type metadata accessor for TranscriptProtoPayloadEnum);
      v14 = v17;
      v13 = v15;
      goto LABEL_7;
    }

    v9 = &qword_27E1F9958;
    v10 = &qword_23C873E10;
    v11 = v6;
  }

  sub_23C585C34(v11, v9, v10);
  v13 = 0;
  v14 = 0;
LABEL_7:
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_23C86D0C0()
{
  v55[4] = *MEMORY[0x277D85DE8];
  v1 = sub_23C870FC4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v55 - v6 + 8;
  v8 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(v0 + *(v8 + 44), v7, &qword_27E1F9950, &unk_23C87CFF0);
  v9 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9950, &unk_23C87CFF0);
    return 0;
  }

  sub_23C870FB4();
  sub_23C86D8A0();
  v11 = sub_23C8711C4();
  v13 = v12;
  (*(v2 + 8))(v4, v1);
  sub_23C86CE40(v7, type metadata accessor for TranscriptProtoPayload);
  v14 = objc_opt_self();
  v15 = sub_23C870A14();
  v55[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v55];

  if (!v16)
  {
    v30 = v55[0];
    v31 = sub_23C8709B4();

    swift_willThrow();
    sub_23C595090(v11, v13);

    return 0;
  }

  v17 = v55[0];
  sub_23C871BA4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB360, &unk_23C87AB30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_49;
  }

  v18 = v54;
  if (*(v54 + 16))
  {
    v19 = sub_23C5FF898(0x74736575716572, 0xE700000000000000);
    if (v20)
    {
      sub_23C588DC0(*(v18 + 56) + 32 * v19, v55);
      if (swift_dynamicCast())
      {
        v21 = v54;
        if (!*(v54 + 16))
        {
          goto LABEL_21;
        }

        v22 = sub_23C5FF898(0x746E65746E6F63, 0xE700000000000000);
        if ((v23 & 1) == 0)
        {
          goto LABEL_21;
        }

        sub_23C588DC0(*(v21 + 56) + 32 * v22, v55);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_22;
        }

        v24 = v54;
        if (!*(v54 + 16))
        {
          goto LABEL_21;
        }

        v25 = sub_23C5FF898(0x686365657073, 0xE600000000000000);
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

        sub_23C588DC0(*(v24 + 56) + 32 * v25, v55);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_22;
        }

        v27 = v54;
        if (!*(v54 + 16) || (v28 = sub_23C5FF898(1954047348, 0xE400000000000000), (v29 & 1) == 0))
        {
LABEL_21:

          goto LABEL_22;
        }

        sub_23C588DC0(*(v27 + 56) + 32 * v28, v55);

        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }
      }
    }
  }

LABEL_22:
  if (*(v18 + 16))
  {
    v32 = sub_23C5FF898(0x74736575716572, 0xE700000000000000);
    if (v33)
    {
      sub_23C588DC0(*(v18 + 56) + 32 * v32, v55);
      if (swift_dynamicCast())
      {
        v34 = v54;
        if (!*(v54 + 16))
        {
          goto LABEL_35;
        }

        v35 = sub_23C5FF898(0x746E65746E6F63, 0xE700000000000000);
        if ((v36 & 1) == 0)
        {
          goto LABEL_35;
        }

        sub_23C588DC0(*(v34 + 56) + 32 * v35, v55);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_36;
        }

        v37 = v54;
        if (!*(v54 + 16))
        {
          goto LABEL_35;
        }

        v38 = sub_23C5FF898(1954047348, 0xE400000000000000);
        if ((v39 & 1) == 0)
        {
          goto LABEL_35;
        }

        sub_23C588DC0(*(v37 + 56) + 32 * v38, v55);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_36;
        }

        v40 = v54;
        if (!*(v54 + 16) || (v41 = sub_23C5FF898(1954047348, 0xE400000000000000), (v42 & 1) == 0))
        {
LABEL_35:

          goto LABEL_36;
        }

        sub_23C588DC0(*(v40 + 56) + 32 * v41, v55);

        if (swift_dynamicCast())
        {
LABEL_34:
          sub_23C595090(v11, v13);

          return v54;
        }
      }
    }
  }

LABEL_36:
  if (!*(v18 + 16))
  {
    goto LABEL_50;
  }

  v43 = sub_23C5FF898(0xD000000000000014, 0x800000023C8B2FA0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_23C588DC0(*(v18 + 56) + 32 * v43, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_49;
  }

  v45 = v54;
  if (!*(v54 + 16))
  {
    goto LABEL_50;
  }

  v46 = sub_23C5FF898(0x746E65746E6F63, 0xE700000000000000);
  if ((v47 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_23C588DC0(*(v45 + 56) + 32 * v46, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_49;
  }

  v48 = v54;
  if (!*(v54 + 16))
  {
    goto LABEL_50;
  }

  v49 = sub_23C5FF898(1954047348, 0xE400000000000000);
  if ((v50 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_23C588DC0(*(v48 + 56) + 32 * v49, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    sub_23C595090(v11, v13);
    return 0;
  }

  v51 = v54;
  if (!*(v54 + 16) || (v52 = sub_23C5FF898(1954047348, 0xE400000000000000), (v53 & 1) == 0))
  {
LABEL_50:
    sub_23C595090(v11, v13);

    return 0;
  }

  sub_23C588DC0(*(v51 + 56) + 32 * v52, v55);
  sub_23C595090(v11, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v54;
}

unint64_t sub_23C86D8A0()
{
  result = qword_27E201DB0;
  if (!qword_27E201DB0)
  {
    type metadata accessor for TranscriptProtoPayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201DB0);
  }

  return result;
}

uint64_t sub_23C86D8F8@<X0>(char a2@<W1>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  LODWORD(v57) = a8;
  v56 = a7;
  v47 = a6;
  v48 = a5;
  v54 = a9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB628, &unk_23C87AF70);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v46 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = swift_allocObject();
  v50 = v26;
  *(v26 + 16) = MEMORY[0x277D84F90];
  v49 = v26 + 16;
  if (a2)
  {
    v27 = sub_23C870AE4();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  }

  else
  {
    sub_23C870A54();
    v28 = sub_23C870AE4();
    (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
  }

  if (a4)
  {
    v29 = 1;
  }

  else
  {
    sub_23C870A54();
    v29 = 0;
  }

  v30 = sub_23C870AE4();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v23, v29, 1, v30);
  sub_23C60D7E8(v25, v20);
  v51 = v23;
  sub_23C60D7E8(v23, v17);
  v32 = v48;
  if (v47)
  {
    v32 = 0;
  }

  v48 = v32;
  v33 = v56;
  if (v57)
  {
    v33 = 0;
  }

  v57 = v33;
  v34 = *(v31 + 48);
  v35 = 0;
  if (v34(v20, 1, v30) != 1)
  {
    v35 = sub_23C870A84();
    (*(v31 + 8))(v20, v30);
  }

  if (v34(v17, 1, v30) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_23C870A84();
    (*(v31 + 8))(v17, v30);
  }

  v37 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v38 = [v37 initWithStartDate:v35 endDate:v36 maxEvents:v48 lastN:v57 reversed:0];

  sub_23C8714B4();
  sub_23C86E4BC();

  v39 = v38;
  sub_23C871544();

  __swift_project_boxed_opaque_existential_0(v58, v58[3]);

  sub_23C871684();

  __swift_destroy_boxed_opaque_existential_0(v58);
  v40 = v51;
  swift_beginAccess();
  v41 = type metadata accessor for AnteroEvent(0);

  v42 = v52;
  sub_23C8718B4();

  sub_23C60D8B0();
  v43 = v55;
  v44 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v44, v41);

  (*(v53 + 8))(v42, v43);
  sub_23C585C34(v40, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C585C34(v25, &unk_27E2054F0, &unk_23C874DF0);
}

uint64_t sub_23C86DFB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92B8, &qword_23C8734F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_23C870AE4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_23C871484();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_23C585C34(v9, &unk_27E2054F0, &unk_23C874DF0);
  }

  (*(v11 + 32))(v16, v9, v10);
  v18 = sub_23C8714A4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v6, a1, v18);
  (*(v19 + 56))(v6, 0, 1, v18);
  (*(v11 + 16))(v14, v16, v10);
  v20 = objc_allocWithZone(type metadata accessor for AnteroEvent(0));
  AnteroEvent.init(intelligenceFlowEvent:timestamp:)(v6, v14);
  v21 = swift_beginAccess();
  MEMORY[0x23EED7170](v21);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23C8718D4();
  }

  sub_23C871904();
  swift_endAccess();
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_23C86E2D8()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_logger;
  v2 = sub_23C871654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranscriptStream(uint64_t a1)
{
  result = qword_27E205438;
  if (!qword_27E205438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C86E3C8(uint64_t a1)
{
  result = sub_23C871654();
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

unint64_t sub_23C86E4BC()
{
  result = qword_27E205448;
  if (!qword_27E205448)
  {
    sub_23C8714B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E205448);
  }

  return result;
}

id SiriTurn.ttsBegin.getter()
{
  result = SiriTurn.tts.getter();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v15 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EED7610](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_23C86E734();
      v8 = sub_23C870D44();
      if (v8)
      {
        v9 = v8;
        v10 = [v8 startedOrChanged];
        if (v10)
        {
          v11 = v10;

          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v12 = v15;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_22;
    }

LABEL_30:

    return 0;
  }

  result = *(v12 + 16);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_22:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x23EED7610](0, v12);
    goto LABEL_25;
  }

  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
LABEL_25:
    v14 = v13;

    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_23C86E734()
{
  result = qword_27E1FB7F0;
  if (!qword_27E1FB7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1FB7F0);
  }

  return result;
}

id sub_23C86E780()
{
  v0 = EventGraph.uei.getter();
  if (!v0)
  {
    return sub_23C65537C();
  }

  v1 = v0;
  v13 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EED7610](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_23C86E968();
      v8 = sub_23C870D44();
      if (v8)
      {

        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v9 = v13;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_17:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  result = *(v9 + 16);
  if (!result)
  {
LABEL_28:

    return sub_23C65537C();
  }

LABEL_20:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EED7610](0, v9);
    goto LABEL_23;
  }

  if (*(v9 + 16))
  {
    v11 = *(v9 + 32);
LABEL_23:
    v12 = v11;

    return v12;
  }

  __break(1u);
  return result;
}

unint64_t sub_23C86E968()
{
  result = qword_27E205450;
  if (!qword_27E205450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E205450);
  }

  return result;
}

uint64_t ComponentGroup<>.previousTurnId.getter@<X0>(unint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v33 - v4;
  swift_beginAccess();
  v5 = *(v1 + 16);
  if (v5 >> 62)
  {
LABEL_32:
    v6 = sub_23C871C34();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
    v37 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v7 = 0;
  v37 = MEMORY[0x277D84F90];
  v35 = a1;
  do
  {
    a1 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EED7610](a1, v5);
      }

      else
      {
        if (a1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v9 = *(v5 + 8 * a1 + 32);
      }

      v8 = v9;
      v7 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      sub_23C5A3FDC(0, &qword_27E205458, 0x277D5A830);
      v10 = sub_23C870D44();
      if (v10)
      {
        break;
      }

LABEL_7:

      ++a1;
      if (v7 == v6)
      {
        a1 = v35;
        goto LABEL_24;
      }
    }

    v11 = v10;
    v12 = [v10 previousTurnID];
    if (!v12)
    {

      v8 = v11;
      goto LABEL_7;
    }

    v13 = v12;
    v34 = sub_23C870A34();
    v15 = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_23C584C5C(0, *(v37 + 2) + 1, 1, v37);
    }

    v18 = *(v37 + 2);
    v17 = *(v37 + 3);
    if (v18 >= v17 >> 1)
    {
      v37 = sub_23C584C5C((v17 > 1), v18 + 1, 1, v37);
    }

    v19 = v37;
    *(v37 + 2) = v18 + 1;
    v20 = &v19[16 * v18];
    *(v20 + 4) = v34;
    *(v20 + 5) = v15;
    a1 = v35;
  }

  while (v7 != v6);
LABEL_24:

  if (*(v37 + 2))
  {
    v21 = *(v37 + 4);
    v22 = *(v37 + 5);
    sub_23C5ACFC8(v21, v22);

    v23 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    sub_23C5ACFC8(v21, v22);
    v24 = sub_23C870A14();
    v25 = [v23 initWithData_];

    v26 = [v25 si_asNSUUID];
    if (v26)
    {
      v27 = v36;
      v28 = v26;
      sub_23C870B54();

      v29 = 0;
      v25 = v28;
    }

    else
    {
      v29 = 1;
      v27 = v36;
    }

    v32 = sub_23C870B74();
    (*(*(v32 - 8) + 56))(v27, v29, 1, v32);
    sub_23C5AD03C(v27, a1);
    sub_23C595090(v21, v22);
    return sub_23C595090(v21, v22);
  }

  else
  {

    v30 = sub_23C870B74();
    return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
  }
}

uint64_t ComponentGroup<>.timeIntervalSince1970.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_27:
    v2 = sub_23C871C34();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v3;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x23EED7610](v5, v1);
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v6 = *(v1 + 8 * v5 + 32);
        }

        v7 = v6;
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        sub_23C5A3FDC(0, &qword_27E205460, 0x277D5A840);
        v8 = sub_23C870D44();
        if (v8)
        {
          break;
        }

        ++v5;
        if (v3 == v2)
        {
          goto LABEL_21;
        }
      }

      v9 = v8;
      [v8 timeIntervalSince1970];
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_23C5845FC(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_23C5845FC((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      *&v4[8 * v13 + 32] = v11;
    }

    while (v3 != v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_21:

  if (*(v4 + 2))
  {
    v14 = *(v4 + 4);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

unint64_t sub_23C86EFC0(unint64_t *a1, void *a2, SEL *a3, unint64_t a4)
{
  swift_beginAccess();
  v7 = *(v4 + 16);
  if (v7 >> 62)
  {
LABEL_27:
    v8 = sub_23C871C34();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v23 = a4;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    do
    {
      v25 = v10;
      v11 = v9;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x23EED7610](v11, v7);
        }

        else
        {
          if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v12 = *(v7 + 8 * v11 + 32);
        }

        v13 = v12;
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        sub_23C5A3FDC(0, a1, a2);
        v14 = sub_23C870D44();
        if (v14)
        {
          break;
        }

        ++v11;
        if (v9 == v8)
        {
          v10 = v25;
          goto LABEL_21;
        }
      }

      v15 = v14;
      v16 = [v14 *a3];

      v17 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = v23(0, *(v25 + 16) + 1, 1, v25);
      }

      a4 = *(v17 + 16);
      v18 = *(v17 + 24);
      v19 = v17;
      if (a4 >= v18 >> 1)
      {
        v19 = v23(v18 > 1, a4 + 1, 1, v17);
      }

      *(v19 + 16) = a4 + 1;
      v10 = v19;
      *(v19 + 4 * a4 + 32) = v16;
    }

    while (v9 != v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_21:

  v20 = *(v10 + 16);
  if (v20)
  {
    v21 = *(v10 + 32);
  }

  else
  {

    v21 = 0;
  }

  return v21 | ((v20 == 0) << 32);
}

uint64_t sub_23C86F228(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_23C871A54();
  if (!v19)
  {
    return sub_23C8718E4();
  }

  v41 = v19;
  v45 = sub_23C871DC4();
  v32 = sub_23C871DD4();
  sub_23C871D74();
  result = sub_23C871A44();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_23C871A94();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_23C871DB4();
      result = sub_23C871A64();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23C86F648()
{
  v1 = *v0;
  swift_beginAccess();
  v15 = v0[2];
  v12 = v1[10];
  v13 = v1[11];
  v14 = v1[12];
  v10[2] = v12;
  v10[3] = v13;
  v10[4] = v14;
  v10[5] = sub_23C86FA30;
  v10[6] = &v11;
  sub_23C871A24();
  v2 = sub_23C8716D4();

  WitnessTable = swift_getWitnessTable();
  v5 = sub_23C86F228(sub_23C86FA3C, v10, v2, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);

  v15 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  sub_23C59502C();
  v6 = sub_23C871704();
  v8 = v7;

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_23C871D14();

  v15 = 0xD000000000000028;
  v16 = 0x800000023C8B3B70;
  MEMORY[0x23EED7100](v6, v8);

  MEMORY[0x23EED7100](10506, 0xE200000000000000);
  return v15;
}

uint64_t sub_23C86F834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = 538976288;
  v21 = 0xE400000000000000;
  v9 = sub_23C871FD4();
  MEMORY[0x23EED7100](v9);

  MEMORY[0x23EED7100](8250, 0xE200000000000000);
  v19 = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = swift_getKeyPath();
  v10 = sub_23C871A24();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_23C86F228(sub_23C86FAC4, v18, v10, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  sub_23C59502C();
  v14 = sub_23C871704();
  v16 = v15;

  MEMORY[0x23EED7100](v14, v16);

  return v20;
}

uint64_t sub_23C86F9BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23C86FA3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 40);
  sub_23C871A24();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a2 = result;
  a2[1] = v8;
  return result;
}

id sub_23C86FAF0()
{
  sub_23C870C84();
  sub_23C870C64();
  sub_23C8709D4();
  v0 = objc_allocWithZone(MEMORY[0x277CF17F8]);
  v1 = sub_23C871774();

  v2 = [v0 initWithStoreBasePath:v1 segmentSize:0x100000 protectionClass:3];

  sub_23C5AE59C();
  v3 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v4 = sub_23C871774();

  v5 = [v3 initWithPrivateStreamIdentifier:v4 storeConfig:v2 eventDataClass:swift_getObjCClassFromMetadata()];

  return v5;
}

uint64_t type metadata accessor for UnifiedBiomeStream(uint64_t a1)
{
  result = qword_27E205470;
  if (!qword_27E205470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C86FC70(uint64_t a1)
{
  result = sub_23C8709E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static SIOrderedEvent.event(with:dataVersion:)(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v6 = objc_allocWithZone(MEMORY[0x277D5A690]);
    v4 = sub_23C870A14();
    v5 = [v6 initWithData_];
  }

  else
  {
    if (a3 != 1)
    {
      return 0;
    }

    v3 = objc_opt_self();
    v4 = sub_23C870A14();
    v5 = [v3 deserializeFromData_];
  }

  v7 = v5;

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_23C86FDC0(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = a3;
  v6 = sub_23C870A34();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = static SIOrderedEvent.event(with:dataVersion:)(v6, v8, a4);
  sub_23C595090(v6, v8);

  return v9;
}

uint64_t sub_23C86FE54()
{
  if ((*(v0 + 25) & 1) == 0)
  {
    sub_23C65E890(*(v0 + 16), *(v0 + 24) & 1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_23C86FEC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v78 = a8;
  v79 = a7;
  v80 = a6;
  v81 = a5;
  v75 = a4;
  v70 = a1;
  v71 = a3;
  v72 = a2;
  v90 = a9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA30, &unk_23C87B530);
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v86 = &v68 - v12;
  v13 = sub_23C870AE4();
  v76 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v69 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v74 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v73 = &v68 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v68 - v23;
  MEMORY[0x28223BE20](v22);
  v82 = &v68 - v24;
  v25 = sub_23C8709E4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v68 - v33;
  v35 = type metadata accessor for UnifiedBiomeStream(0);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v77 = &v68 - v39;
  sub_23C5855B0(a10, v34, &qword_27E1FB650, &qword_23C87B020);
  sub_23C5855B0(v34, v32, &qword_27E1FB650, &qword_23C87B020);
  v40 = *(v26 + 48);
  if (v40(v32, 1, v25) == 1)
  {
    sub_23C870C84();
    sub_23C870C74();
    sub_23C585C34(v34, &qword_27E1FB650, &qword_23C87B020);
    if (v40(v32, 1, v25) != 1)
    {
      sub_23C585C34(v32, &qword_27E1FB650, &qword_23C87B020);
    }
  }

  else
  {
    sub_23C585C34(v34, &qword_27E1FB650, &qword_23C87B020);
    (*(v26 + 32))(v28, v32, v25);
  }

  (*(v26 + 32))(v38, v28, v25);
  v41 = v77;
  sub_23C870884(v38, v77);
  v42 = v76;
  if (v72)
  {
    v43 = 1;
    v45 = v82;
    v44 = v83;
  }

  else
  {
    v46 = v68;
    sub_23C870A54();
    v45 = v82;
    (*(v42 + 32))(v82, v46, v13);
    v43 = 0;
    v44 = v83;
  }

  v47 = v74;
  v48 = *(v42 + 56);
  v49 = 1;
  v48(v45, v43, 1, v13);
  if ((v75 & 1) == 0)
  {
    v50 = v69;
    sub_23C870A54();
    (*(v42 + 32))(v44, v50, v13);
    v49 = 0;
  }

  v48(v44, v49, 1, v13);
  v51 = v73;
  sub_23C5855B0(v45, v73, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C5855B0(v44, v47, &unk_27E2054F0, &unk_23C874DF0);
  v52 = *(v42 + 48);
  if (v52(v51, 1, v13) == 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_23C870A84();
    (*(v42 + 8))(v51, v13);
  }

  if (v52(v47, 1, v13) == 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = sub_23C870A84();
    (*(v42 + 8))(v47, v13);
  }

  if (v78)
  {
    v55 = 0;
  }

  else
  {
    v55 = v79;
  }

  if (v80)
  {
    v56 = 0;
  }

  else
  {
    v56 = v81;
  }

  v57 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v53 endDate:v54 maxEvents:v56 lastN:v55 reversed:0];

  v58 = sub_23C86FAF0();
  v59 = [v58 publisherWithOptions_];

  v60 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
  v61 = v84;
  sub_23C870C14();
  v62 = type metadata accessor for TimestampedOrderedEvent();
  sub_23C611604(&qword_27E205508, &unk_27E2054E0, &unk_23C87B440, MEMORY[0x277CF1770]);
  v64 = v86;
  v63 = v87;
  sub_23C870BB4();
  (*(v85 + 8))(v61, v63);
  sub_23C611604(&unk_27E205510, &qword_27E1FBA30, &unk_23C87B530, MEMORY[0x277CF1750]);
  v65 = v89;
  v66 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v66, v62);

  (*(v88 + 8))(v64, v65);
  sub_23C585C34(v44, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C585C34(v45, &unk_27E2054F0, &unk_23C874DF0);
  return sub_23C8708E8(v41);
}

void *sub_23C8707AC(void *a1)
{
  result = [a1 eventBody];
  if (result)
  {
    v3 = result;
    sub_23C870D74();
    v4 = v3;
    v5 = sub_23C870D84();
    [a1 timestamp];
    v7 = v6;

    type metadata accessor for TimestampedOrderedEvent();
    result = swift_allocObject();
    result[2] = v7;
    result[3] = v5;
  }

  return result;
}

uint64_t sub_23C870884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedBiomeStream(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C8708E8(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedBiomeStream(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}