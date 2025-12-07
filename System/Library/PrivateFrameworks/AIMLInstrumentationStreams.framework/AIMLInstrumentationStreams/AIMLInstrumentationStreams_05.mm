uint64_t _s26AIMLInstrumentationStreams23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
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

  v3 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  type metadata accessor for ContextProtoBoundingBox(0);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams25ContextProtoUIControlToolV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACB0, &qword_23C879010);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v15)
  {
    goto LABEL_28;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v17)
  {
    goto LABEL_28;
  }

  v18 = a1[5];
  v19 = a2[5];
  if (v18)
  {
    if (!v19 || (a1[4] != a2[4] || v18 != v19) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v19)
  {
    goto LABEL_28;
  }

  v29 = type metadata accessor for ContextProtoUIControlTool(0);
  v20 = *(v29 + 28);
  v21 = *(v11 + 48);
  sub_23C5855B0(a1 + v20, v13, &qword_27E1FACA8, &unk_23C87B940);
  v22 = a2 + v20;
  v23 = v21;
  sub_23C5855B0(v22, &v13[v21], &qword_27E1FACA8, &unk_23C87B940);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v23], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FACA8, &unk_23C87B940);
LABEL_31:
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v25 = sub_23C871754();
      return v25 & 1;
    }

    goto LABEL_27;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FACA8, &unk_23C87B940);
  if (v24(&v13[v23], 1, v4) == 1)
  {
    sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1);
LABEL_27:
    sub_23C585C34(v13, &qword_27E1FACB0, &qword_23C879010);
    goto LABEL_28;
  }

  sub_23C5EDD24(&v13[v23], v7, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v27 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v10, v7);
  sub_23C5EDCC4(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C585C34(v13, &qword_27E1FACA8, &unk_23C87B940);
  if (v27)
  {
    goto LABEL_31;
  }

LABEL_28:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc19IntelligenceCommandC0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[4] == *(a2 + 32) && v5 == v6;
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = *(a2 + 56);
  if (v8)
  {
    if (!v9 || (a1[6] != *(a2 + 48) || v8 != v9) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[9];
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (a1[8] != *(a2 + 64) || v10 != v11) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16) && (sub_23C5D25E0(a1[3], *(a2 + 24)) & 1) != 0)
  {
    type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC7AddressV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_23C872014();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_23C872014();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_23C872014();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_23C872014();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = sub_23C872014();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (v34 && (a1[10] == a2[10] && v33 == v34 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_43;
    }
  }

  else if (!v34)
  {
LABEL_43:
    type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC6MeCardV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_23C872014();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[3] != a2[3] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_23C872014();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[6];
  v16 = a2[6];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[5] != a2[5] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_23C872014();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[8];
  v22 = a2[8];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[7] != a2[7] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_23C872014();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[10];
  v28 = a2[10];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[9] != a2[9] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = sub_23C872014();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  if (sub_23C5D92E8(*a1, *a2, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC7AddressV2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress))
  {
    type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC18ContentRestrictionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
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

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8) || v3 != v4)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_23C872014();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC30OnScreenUITextUIMetadataWindowV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ContextProtoCGRect(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD20, &qword_23C879040);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v15 = *(v14 + 20);
  v16 = *(v11 + 48);
  v31 = v14;
  v32 = a1;
  sub_23C5855B0(&a1[v15], v13, &qword_27E1FAD18, &unk_23C879170);
  sub_23C5855B0(&a2[v15], &v13[v16], &qword_27E1FAD18, &unk_23C879170);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E1FAD18, &unk_23C879170);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      sub_23C5EDD24(&v13[v16], v7, type metadata accessor for ContextProtoCGRect);
      v20 = _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_23C5EDCC4(v7, type metadata accessor for ContextProtoCGRect);
      sub_23C5EDCC4(v10, type metadata accessor for ContextProtoCGRect);
      sub_23C585C34(v13, &qword_27E1FAD18, &unk_23C879170);
      if ((v20 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoCGRect);
LABEL_7:
    sub_23C585C34(v13, &qword_27E1FAD20, &qword_23C879040);
    goto LABEL_8;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v13, &qword_27E1FAD18, &unk_23C879170);
LABEL_11:
  v21 = *(v31 + 24);
  v22 = &v32[v21];
  v23 = v32[v21 + 8];
  v24 = &a2[v21];
  v25 = a2[v21 + 8];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_8;
    }
  }

  v26 = *(v31 + 28);
  v27 = &v32[v26];
  v28 = *&v32[v26 + 8];
  v29 = &a2[v26];
  v30 = *(v29 + 1);
  if (v28)
  {
    if (v30 && (*v27 == *v29 && v28 == v30 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_24;
    }
  }

  else if (!v30)
  {
LABEL_24:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v18 = sub_23C871754();
    return v18 & 1;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC24OnScreenUITextUIMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD28, &unk_23C8791A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD30, &qword_23C879048);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAD28, &unk_23C8791A0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAD28, &unk_23C8791A0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAD28, &unk_23C8791A0);
LABEL_9:
      type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAD28, &unk_23C8791A0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAD30, &qword_23C879048);
    goto LABEL_7;
  }

  sub_23C5EDD24(&v14[v15], v7, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  v18 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC30OnScreenUITextUIMetadataWindowV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C5EDCC4(v7, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_23C5EDCC4(v10, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_23C585C34(v14, &qword_27E1FAD28, &unk_23C8791A0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoCGSize(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACF8, &unk_23C8791B0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD00, &qword_23C879028);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ContextProtoCGPoint(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD08, &qword_23C879030);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v37 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD10, &qword_23C879038);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FAD08, &qword_23C879030);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FAD08, &qword_23C879030);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) == 1)
  {
    if (v21(&v19[v20], 1, v9) == 1)
    {
      sub_23C585C34(v19, &qword_27E1FAD08, &qword_23C879030);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  sub_23C5855B0(v19, v15, &qword_27E1FAD08, &qword_23C879030);
  if (v21(&v19[v20], 1, v9) == 1)
  {
    sub_23C5EDCC4(v15, type metadata accessor for ContextProtoCGPoint);
LABEL_10:
    v28 = &qword_27E1FAD10;
    v29 = &qword_23C879038;
LABEL_16:
    v31 = v19;
    goto LABEL_17;
  }

  sub_23C5EDD24(&v19[v20], v12, type metadata accessor for ContextProtoCGPoint);
  if (*v15 != *v12 || v15[1] != v12[1])
  {
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoCGPoint);
    sub_23C5EDCC4(v15, type metadata accessor for ContextProtoCGPoint);
    v28 = &qword_27E1FAD08;
    v29 = &qword_23C879030;
    goto LABEL_16;
  }

  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v30 = sub_23C871754();
  sub_23C5EDCC4(v12, type metadata accessor for ContextProtoCGPoint);
  sub_23C5EDCC4(v15, type metadata accessor for ContextProtoCGPoint);
  sub_23C585C34(v19, &qword_27E1FAD08, &qword_23C879030);
  if ((v30 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  v22 = *(type metadata accessor for ContextProtoCGRect(0) + 20);
  v23 = *(v39 + 48);
  v24 = v42;
  sub_23C5855B0(v43 + v22, v42, &qword_27E1FACF8, &unk_23C8791B0);
  sub_23C5855B0(v44 + v22, v24 + v23, &qword_27E1FACF8, &unk_23C8791B0);
  v25 = v41;
  v26 = *(v40 + 48);
  if (v26(v24, 1, v41) != 1)
  {
    v33 = v38;
    sub_23C5855B0(v24, v38, &qword_27E1FACF8, &unk_23C8791B0);
    if (v26(v24 + v23, 1, v25) == 1)
    {
      sub_23C5EDCC4(v33, type metadata accessor for ContextProtoCGSize);
      goto LABEL_22;
    }

    v34 = v24 + v23;
    v35 = v37;
    sub_23C5EDD24(v34, v37, type metadata accessor for ContextProtoCGSize);
    if (*v33 == *v35 && v33[1] == v35[1])
    {
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v36 = sub_23C871754();
      sub_23C5EDCC4(v35, type metadata accessor for ContextProtoCGSize);
      sub_23C5EDCC4(v33, type metadata accessor for ContextProtoCGSize);
      sub_23C585C34(v24, &qword_27E1FACF8, &unk_23C8791B0);
      if (v36)
      {
        goto LABEL_7;
      }

LABEL_18:
      v27 = 0;
      return v27 & 1;
    }

    sub_23C5EDCC4(v35, type metadata accessor for ContextProtoCGSize);
    sub_23C5EDCC4(v33, type metadata accessor for ContextProtoCGSize);
    v28 = &qword_27E1FACF8;
    v29 = &unk_23C8791B0;
    v31 = v24;
LABEL_17:
    sub_23C585C34(v31, v28, v29);
    goto LABEL_18;
  }

  if (v26(v24 + v23, 1, v25) != 1)
  {
LABEL_22:
    v28 = &qword_27E1FAD00;
    v29 = &qword_23C879028;
    v31 = v24;
    goto LABEL_17;
  }

  sub_23C585C34(v24, &qword_27E1FACF8, &unk_23C8791B0);
LABEL_7:
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v27 = sub_23C871754();
  return v27 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC14OnScreenUITextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD38, &qword_23C879050);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v42 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD40, &qword_23C879058);
  MEMORY[0x28223BE20](v46);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ContextProtoCGRect(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD20, &qword_23C879040);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = a1[1];
  v49 = a1;
  if ((v21 != *a2 || v22 != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v44 = v10;
  v42 = v6;
  v23 = a2;
  v43 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v24 = *(v43 + 20);
  v25 = *(v18 + 48);
  sub_23C5855B0(v49 + v24, v20, &qword_27E1FAD18, &unk_23C879170);
  sub_23C5855B0(v23 + v24, &v20[v25], &qword_27E1FAD18, &unk_23C879170);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) != 1)
  {
    sub_23C5855B0(v20, v17, &qword_27E1FAD18, &unk_23C879170);
    if (v26(&v20[v25], 1, v11) != 1)
    {
      sub_23C5EDD24(&v20[v25], v14, type metadata accessor for ContextProtoCGRect);
      v30 = _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v17, v14);
      sub_23C5EDCC4(v14, type metadata accessor for ContextProtoCGRect);
      sub_23C5EDCC4(v17, type metadata accessor for ContextProtoCGRect);
      sub_23C585C34(v20, &qword_27E1FAD18, &unk_23C879170);
      if ((v30 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_23C5EDCC4(v17, type metadata accessor for ContextProtoCGRect);
LABEL_9:
    v27 = &qword_27E1FAD20;
    v28 = &qword_23C879040;
    v29 = v20;
LABEL_17:
    sub_23C585C34(v29, v27, v28);
    goto LABEL_18;
  }

  if (v26(&v20[v25], 1, v11) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v20, &qword_27E1FAD18, &unk_23C879170);
LABEL_11:
  v31 = v44;
  v32 = *(v43 + 24);
  v33 = *(v46 + 48);
  sub_23C5855B0(v49 + v32, v44, &qword_27E1FAD38, &qword_23C879050);
  sub_23C5855B0(v23 + v32, v31 + v33, &qword_27E1FAD38, &qword_23C879050);
  v34 = v48;
  v35 = *(v47 + 48);
  if (v35(v31, 1, v48) == 1)
  {
    if (v35(v31 + v33, 1, v34) == 1)
    {
      sub_23C585C34(v31, &qword_27E1FAD38, &qword_23C879050);
LABEL_21:
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v37 = sub_23C871754();
      return v37 & 1;
    }

    goto LABEL_16;
  }

  v36 = v45;
  sub_23C5855B0(v31, v45, &qword_27E1FAD38, &qword_23C879050);
  if (v35(v31 + v33, 1, v34) == 1)
  {
    sub_23C5EDCC4(v36, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
LABEL_16:
    v27 = &qword_27E1FAD40;
    v28 = &qword_23C879058;
    v29 = v31;
    goto LABEL_17;
  }

  v39 = v31 + v33;
  v40 = v42;
  sub_23C5EDD24(v39, v42, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  v41 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC24OnScreenUITextUIMetadataV2eeoiySbAC_ACtFZ_0(v36, v40);
  sub_23C5EDCC4(v40, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_23C5EDCC4(v36, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_23C585C34(v31, &qword_27E1FAD38, &qword_23C879050);
  if (v41)
  {
    goto LABEL_21;
  }

LABEL_18:
  v37 = 0;
  return v37 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC4UserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_23C872014();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = *(a1 + 17);
  v12 = *(a2 + 17);
  if (v11 == 5)
  {
    if (v12 != 5)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v117 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v119 = (&v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD50, &unk_23C879190);
  MEMORY[0x28223BE20](v5 - 8);
  v116 = (&v112 - v6);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD58, &qword_23C879060);
  MEMORY[0x28223BE20](v114);
  v118 = &v112 - v7;
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  v121 = *(v8 - 8);
  v122 = v8;
  MEMORY[0x28223BE20](v8);
  v120 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD60, &qword_23C879068);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v112 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD68, &qword_23C879070);
  MEMORY[0x28223BE20](v13);
  v123 = &v112 - v14;
  v15 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD70, &unk_23C879180);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v112 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD78, &qword_23C879078);
  MEMORY[0x28223BE20](v22);
  v24 = &v112 - v23;
  v25 = *(a1 + 24);
  v26 = *(a2 + 24);
  if (v25)
  {
    if (!v26 || (*(a1 + 16) != *(a2 + 16) || v25 != v26) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v26)
  {
    goto LABEL_69;
  }

  v27 = *(a1 + 40);
  v28 = *(a2 + 40);
  if (v27)
  {
    if (!v28 || (*(a1 + 32) != *(a2 + 32) || v27 != v28) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v28)
  {
    goto LABEL_69;
  }

  v29 = *(a1 + 56);
  v30 = *(a2 + 56);
  if (v29)
  {
    if (!v30 || (*(a1 + 48) != *(a2 + 48) || v29 != v30) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v30)
  {
    goto LABEL_69;
  }

  v31 = *(a1 + 72);
  v32 = *(a2 + 72);
  if (v31)
  {
    if (!v32 || (*(a1 + 64) != *(a2 + 64) || v31 != v32) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v32)
  {
    goto LABEL_69;
  }

  v33 = *(a1 + 80);
  v34 = *(a2 + 80);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    goto LABEL_69;
  }

  v35 = *(a1 + 81);
  v36 = *(a2 + 81);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    goto LABEL_69;
  }

  v37 = *(a1 + 82);
  v38 = *(a2 + 82);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    goto LABEL_69;
  }

  v39 = *(a1 + 83);
  v40 = *(a2 + 83);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v40 == 2 || ((v39 ^ v40) & 1) != 0)
  {
    goto LABEL_69;
  }

  v41 = *(a1 + 84);
  v42 = *(a2 + 84);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v42 == 2 || ((v41 ^ v42) & 1) != 0)
  {
    goto LABEL_69;
  }

  if ((sub_23C5D25E0(*a1, *a2) & 1) == 0 || (sub_23C5D25E0(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_69;
  }

  v43 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v44 = *(v43 + 60);
  v112 = v43;
  v113 = v44;
  v45 = *(v22 + 48);
  sub_23C5855B0(a1 + v44, v24, &qword_27E1FAD70, &unk_23C879180);
  v46 = a2 + v113;
  v113 = v45;
  sub_23C5855B0(v46, &v24[v45], &qword_27E1FAD70, &unk_23C879180);
  v47 = *(v16 + 48);
  if (v47(v24, 1, v15) == 1)
  {
    if (v47(&v24[v113], 1, v15) == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAD70, &unk_23C879180);
      goto LABEL_64;
    }

LABEL_61:
    v48 = &qword_27E1FAD78;
    v49 = &qword_23C879078;
    v50 = v24;
LABEL_62:
    sub_23C585C34(v50, v48, v49);
    goto LABEL_69;
  }

  sub_23C5855B0(v24, v21, &qword_27E1FAD70, &unk_23C879180);
  if (v47(&v24[v113], 1, v15) == 1)
  {
    sub_23C5EDCC4(v21, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
    goto LABEL_61;
  }

  sub_23C5EDD24(&v24[v113], v18, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  v51 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC4UserV2eeoiySbAC_ACtFZ_0(v21, v18);
  sub_23C5EDCC4(v18, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_23C5EDCC4(v21, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_23C585C34(v24, &qword_27E1FAD70, &unk_23C879180);
  if ((v51 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_64:
  v52 = v112[16];
  v54 = *(a1 + v52);
  v53 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v57 = *v55;
  v56 = v55[1];
  if (v53 >> 60 == 15)
  {
    if (v56 >> 60 == 15)
    {
      sub_23C5EDBA0(v54, v53);
      sub_23C5EDBA0(v57, v56);
      sub_23C5AD0AC(v54, v53);
      goto LABEL_72;
    }

LABEL_68:
    sub_23C5EDBA0(v54, v53);
    sub_23C5EDBA0(v57, v56);
    sub_23C5AD0AC(v54, v53);
    sub_23C5AD0AC(v57, v56);
    goto LABEL_69;
  }

  if (v56 >> 60 == 15)
  {
    goto LABEL_68;
  }

  sub_23C5EDBA0(v54, v53);
  sub_23C5EDBA0(v57, v56);
  v60 = sub_23C6F73FC(v54, v53, v57, v56);
  sub_23C5AD0AC(v57, v56);
  sub_23C5AD0AC(v54, v53);
  if (!v60)
  {
    goto LABEL_69;
  }

LABEL_72:
  v61 = v112[17];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v65)
  {
    goto LABEL_69;
  }

  v66 = v112[18];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  v70 = v69[1];
  if (v68)
  {
    if (!v70 || (*v67 != *v69 || v68 != v70) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v70)
  {
    goto LABEL_69;
  }

  v71 = v112[19];
  v72 = *(v13 + 48);
  v73 = v123;
  sub_23C5855B0(a1 + v71, v123, &qword_27E1FAD60, &qword_23C879068);
  sub_23C5855B0(a2 + v71, v73 + v72, &qword_27E1FAD60, &qword_23C879068);
  v74 = *(v121 + 48);
  if (v74(v73, 1, v122) == 1)
  {
    if (v74(v123 + v72, 1, v122) == 1)
    {
      sub_23C585C34(v123, &qword_27E1FAD60, &qword_23C879068);
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  v75 = v123;
  sub_23C5855B0(v123, v12, &qword_27E1FAD60, &qword_23C879068);
  if (v74(v75 + v72, 1, v122) == 1)
  {
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
LABEL_91:
    v48 = &qword_27E1FAD68;
    v49 = &qword_23C879070;
    v50 = v123;
    goto LABEL_62;
  }

  v76 = v123;
  v77 = v123 + v72;
  v78 = v120;
  sub_23C5EDD24(v77, v120, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  v79 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC18ContentRestrictionV2eeoiySbAC_ACtFZ_0(v12, v78);
  sub_23C5EDCC4(v78, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_23C585C34(v76, &qword_27E1FAD60, &qword_23C879068);
  if ((v79 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_93:
  v80 = v112[20];
  v81 = (a1 + v80);
  v82 = *(a1 + v80 + 8);
  v83 = (a2 + v80);
  v84 = *(a2 + v80 + 8);
  if (v82)
  {
    if (!v84)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*v81 != *v83)
    {
      LOBYTE(v84) = 1;
    }

    if (v84)
    {
      goto LABEL_69;
    }
  }

  v85 = v112[21];
  v86 = (a1 + v85);
  v87 = *(a1 + v85 + 8);
  v88 = (a2 + v85);
  v89 = v88[1];
  if (v87)
  {
    if (!v89 || (*v86 != *v88 || v87 != v89) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v89)
  {
    goto LABEL_69;
  }

  v90 = v112[22];
  v91 = *(a1 + v90);
  v92 = *(a2 + v90);
  if (v91 == 2)
  {
    if (v92 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v92 == 2 || ((v91 ^ v92) & 1) != 0)
  {
    goto LABEL_69;
  }

  v93 = v112[23];
  v94 = *(a1 + v93);
  v95 = *(a2 + v93);
  if (v94 == 2)
  {
    if (v95 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v95 == 2 || ((v94 ^ v95) & 1) != 0)
  {
    goto LABEL_69;
  }

  v96 = v112[24];
  v97 = *(v114 + 48);
  v98 = v118;
  sub_23C5855B0(a1 + v96, v118, &qword_27E1FAD50, &unk_23C879190);
  sub_23C5855B0(a2 + v96, v98 + v97, &qword_27E1FAD50, &unk_23C879190);
  v99 = *(v115 + 48);
  if (v99(v98, 1, v117) != 1)
  {
    v100 = v118;
    sub_23C5855B0(v118, v116, &qword_27E1FAD50, &unk_23C879190);
    if (v99(v100 + v97, 1, v117) != 1)
    {
      v101 = v118;
      v102 = v118 + v97;
      v103 = v119;
      sub_23C5EDD24(v102, v119, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      v104 = v116;
      v105 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC6MeCardV2eeoiySbAC_ACtFZ_0(v116, v103);
      sub_23C5EDCC4(v103, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      sub_23C5EDCC4(v104, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      sub_23C585C34(v101, &qword_27E1FAD50, &unk_23C879190);
      if ((v105 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_123;
    }

    sub_23C5EDCC4(v116, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
    goto LABEL_121;
  }

  if (v99(v118 + v97, 1, v117) != 1)
  {
LABEL_121:
    v48 = &qword_27E1FAD58;
    v49 = &qword_23C879060;
    v50 = v118;
    goto LABEL_62;
  }

  sub_23C585C34(v118, &qword_27E1FAD50, &unk_23C879190);
LABEL_123:
  v106 = v112[25];
  v107 = *(a1 + v106);
  v108 = *(a2 + v106);
  if (v107 == 12)
  {
    if (v108 != 12)
    {
      goto LABEL_69;
    }
  }

  else if (v107 != v108)
  {
    goto LABEL_69;
  }

  v109 = v112[26];
  v110 = *(a1 + v109);
  v111 = *(a2 + v109);
  if (v110 != 2)
  {
    if (v111 == 2 || ((v110 ^ v111) & 1) != 0)
    {
      goto LABEL_69;
    }

LABEL_132:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v58 = sub_23C871754();
    return v58 & 1;
  }

  if (v111 == 2)
  {
    goto LABEL_132;
  }

LABEL_69:
  v58 = 0;
  return v58 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD88, &qword_23C879080);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FA458, &qword_23C8755D0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FA458, &qword_23C8755D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FA458, &qword_23C8755D0);
LABEL_9:
      type metadata accessor for ContextProtoStructuredContext(0);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FA458, &qword_23C8755D0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoStructuredContextKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAD88, &qword_23C879080);
    goto LABEL_7;
  }

  sub_23C5EDD24(&v14[v15], v7, type metadata accessor for ContextProtoStructuredContextKind);
  v18 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC4KindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C5EDCC4(v7, type metadata accessor for ContextProtoStructuredContextKind);
  sub_23C5EDCC4(v10, type metadata accessor for ContextProtoStructuredContextKind);
  sub_23C585C34(v14, &qword_27E1FA458, &qword_23C8755D0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v109 = a1;
  v110 = a2;
  v2 = type metadata accessor for ContextProtoStructuredContext(0);
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADF0, &qword_23C8790D8);
  MEMORY[0x28223BE20](v4 - 8);
  v89 = &v84 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADF8, &qword_23C8790E0);
  MEMORY[0x28223BE20](v90);
  v93 = &v84 - v6;
  v7 = type metadata accessor for ContextProtoContextMetadata(0);
  v100 = *(v7 - 8);
  v101 = v7;
  MEMORY[0x28223BE20](v7);
  v95 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAE00, &unk_23C879150);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = (&v84 - v10);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAE08, &qword_23C8790E8);
  MEMORY[0x28223BE20](v99);
  v102 = &v84 - v11;
  v12 = type metadata accessor for ContextProtoConfidence(0);
  v107 = *(v12 - 8);
  v108 = v12;
  MEMORY[0x28223BE20](v12);
  v103 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADD8, &qword_23C8790C8);
  MEMORY[0x28223BE20](v14 - 8);
  v104 = &v84 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADE0, &qword_23C8790D0);
  MEMORY[0x28223BE20](v106);
  v17 = &v84 - v16;
  v18 = type metadata accessor for ToolKitProtoTypedValue(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v105 = (&v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v94 = (&v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v25 = (&v84 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v27 = MEMORY[0x28223BE20](v26);
  v97 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v84 - v29;
  v31 = type metadata accessor for ContextProtoRetrievedContext(0);
  v32 = *(v31 + 20);
  v96 = v26;
  v33 = *(v26 + 48);
  sub_23C5855B0(&v109[v32], v30, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(&v110[v32], &v30[v33], &qword_27E1FAB68, &unk_23C879140);
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
      sub_23C585C34(v30, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_9;
    }

LABEL_6:
    v37 = &qword_27E1FAB70;
    v38 = &qword_23C878F28;
LABEL_7:
    v39 = v30;
LABEL_35:
    sub_23C585C34(v39, v37, v38);
    goto LABEL_36;
  }

  sub_23C5855B0(v30, v25, &qword_27E1FAB68, &unk_23C879140);
  if (v34(&v30[v33], 1, v18) == 1)
  {
    sub_23C5EDCC4(v25, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  v85 = v34;
  v86 = v35;
  v87 = v18;
  v40 = v105;
  sub_23C5EDD24(&v30[v33], v105, type metadata accessor for ToolKitProtoTypedValue);
  v41 = sub_23C707370(v25, v40);
  sub_23C5EDCC4(v40, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v25, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v30, &qword_27E1FAB68, &unk_23C879140);
  if ((v41 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  v42 = v31;
  v43 = *(v31 + 24);
  v44 = *(v106 + 48);
  v45 = v109;
  sub_23C5855B0(&v109[v43], v17, &qword_27E1FADD8, &qword_23C8790C8);
  v46 = v110;
  sub_23C5855B0(&v110[v43], &v17[v44], &qword_27E1FADD8, &qword_23C8790C8);
  v47 = v108;
  v48 = *(v107 + 48);
  if (v48(v17, 1, v108) == 1)
  {
    if (v48(&v17[v44], 1, v47) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FADD8, &qword_23C8790C8);
      goto LABEL_12;
    }

LABEL_18:
    v37 = &qword_27E1FADE0;
    v38 = &qword_23C8790D0;
    v39 = v17;
    goto LABEL_35;
  }

  v54 = v104;
  sub_23C5855B0(v17, v104, &qword_27E1FADD8, &qword_23C8790C8);
  if (v48(&v17[v44], 1, v47) == 1)
  {
    sub_23C5EDCC4(v54, type metadata accessor for ContextProtoConfidence);
    goto LABEL_18;
  }

  v55 = v103;
  sub_23C5EDD24(&v17[v44], v103, type metadata accessor for ContextProtoConfidence);
  if (*v54 != *v55 || *(v54 + 4) != *(v55 + 4))
  {
    sub_23C5EDCC4(v55, type metadata accessor for ContextProtoConfidence);
    sub_23C5EDCC4(v54, type metadata accessor for ContextProtoConfidence);
    v37 = &qword_27E1FADD8;
    v38 = &qword_23C8790C8;
    v39 = v17;
    goto LABEL_35;
  }

  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v56 = sub_23C871754();
  sub_23C5EDCC4(v55, type metadata accessor for ContextProtoConfidence);
  sub_23C5EDCC4(v54, type metadata accessor for ContextProtoConfidence);
  sub_23C585C34(v17, &qword_27E1FADD8, &qword_23C8790C8);
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
  sub_23C5855B0(&v45[v49], v102, &qword_27E1FAE00, &unk_23C879150);
  sub_23C5855B0(&v46[v49], v51 + v50, &qword_27E1FAE00, &unk_23C879150);
  v52 = v101;
  v53 = *(v100 + 48);
  if (v53(v51, 1, v101) == 1)
  {
    if (v53(v51 + v50, 1, v52) == 1)
    {
      sub_23C585C34(v51, &qword_27E1FAE00, &unk_23C879150);
      goto LABEL_28;
    }

LABEL_26:
    v37 = &qword_27E1FAE08;
    v38 = &qword_23C8790E8;
LABEL_34:
    v39 = v51;
    goto LABEL_35;
  }

  v57 = v98;
  sub_23C5855B0(v51, v98, &qword_27E1FAE00, &unk_23C879150);
  if (v53(v51 + v50, 1, v52) == 1)
  {
    sub_23C5EDCC4(v57, type metadata accessor for ContextProtoContextMetadata);
    goto LABEL_26;
  }

  v58 = v95;
  sub_23C5EDD24(v51 + v50, v95, type metadata accessor for ContextProtoContextMetadata);
  v59 = _s26AIMLInstrumentationStreams012ContextProtoC8MetadataV2eeoiySbAC_ACtFZ_0(v57, v58);
  sub_23C5EDCC4(v58, type metadata accessor for ContextProtoContextMetadata);
  sub_23C5EDCC4(v57, type metadata accessor for ContextProtoContextMetadata);
  sub_23C585C34(v51, &qword_27E1FAE00, &unk_23C879150);
  if ((v59 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v60 = v42[8];
  v51 = v97;
  v61 = *(v96 + 48);
  sub_23C5855B0(&v45[v60], v97, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(&v46[v60], v51 + v61, &qword_27E1FAB68, &unk_23C879140);
  v62 = v87;
  v63 = v85;
  if (v85(v51, 1, v87) == 1)
  {
    if (v63(v51 + v61, 1, v62) == 1)
    {
      sub_23C585C34(v51, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v64 = v94;
  sub_23C5855B0(v51, v94, &qword_27E1FAB68, &unk_23C879140);
  if (v63(v51 + v61, 1, v62) == 1)
  {
    sub_23C5EDCC4(v64, type metadata accessor for ToolKitProtoTypedValue);
LABEL_33:
    v37 = &qword_27E1FAB70;
    v38 = &qword_23C878F28;
    goto LABEL_34;
  }

  v67 = v105;
  sub_23C5EDD24(v51 + v61, v105, type metadata accessor for ToolKitProtoTypedValue);
  v68 = sub_23C707370(v64, v67);
  sub_23C5EDCC4(v67, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v64, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v51, &qword_27E1FAB68, &unk_23C879140);
  if ((v68 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  v69 = v42[9];
  v70 = *(v90 + 48);
  v71 = v93;
  sub_23C5855B0(&v45[v69], v93, &qword_27E1FADF0, &qword_23C8790D8);
  v72 = &v46[v69];
  v30 = v71;
  sub_23C5855B0(v72, v71 + v70, &qword_27E1FADF0, &qword_23C8790D8);
  v73 = v92;
  v74 = *(v91 + 48);
  if (v74(v71, 1, v92) != 1)
  {
    v75 = v89;
    sub_23C5855B0(v30, v89, &qword_27E1FADF0, &qword_23C8790D8);
    if (v74(&v30[v70], 1, v73) != 1)
    {
      v76 = &v30[v70];
      v77 = v88;
      sub_23C5EDD24(v76, v88, type metadata accessor for ContextProtoStructuredContext);
      v78 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC0V2eeoiySbAC_ACtFZ_0(v75, v77);
      sub_23C5EDCC4(v77, type metadata accessor for ContextProtoStructuredContext);
      sub_23C5EDCC4(v75, type metadata accessor for ContextProtoStructuredContext);
      sub_23C585C34(v30, &qword_27E1FADF0, &qword_23C8790D8);
      if ((v78 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_46;
    }

    sub_23C5EDCC4(v75, type metadata accessor for ContextProtoStructuredContext);
    goto LABEL_44;
  }

  if (v74((v71 + v70), 1, v73) != 1)
  {
LABEL_44:
    v37 = &qword_27E1FADF8;
    v38 = &qword_23C8790E0;
    goto LABEL_7;
  }

  sub_23C585C34(v71, &qword_27E1FADF0, &qword_23C8790D8);
LABEL_46:
  v79 = v42[10];
  v80 = &v45[v79];
  v81 = *&v45[v79 + 8];
  v82 = &v46[v79];
  v83 = *(v82 + 1);
  if (v81)
  {
    if (v83 && (*v80 == *v82 && v81 == v83 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_53;
    }
  }

  else if (!v83)
  {
LABEL_53:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v65 = sub_23C871754();
    return v65 & 1;
  }

LABEL_36:
  v65 = 0;
  return v65 & 1;
}

uint64_t _s26AIMLInstrumentationStreams020ContextProtoStructedc3AppC0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
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
    if (!v7 && (sub_23C872014() & 1) == 0)
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

  if (!v9 || (a1[5] != *(a2 + 40) || v8 != v9) && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for ContextProtoStructedContextAppContext(0);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams020ContextProtoStructedc10AppInFocusC0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
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
    if (!v7 && (sub_23C872014() & 1) == 0)
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
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_20;
    }
  }

  else if (!v9)
  {
LABEL_20:
    type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams012ContextProtoC8MetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v135 = type metadata accessor for ContextProtoCGRect(0);
  v130 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v5 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v129 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v131 = &v124 - v9;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD20, &qword_23C879040);
  v10 = MEMORY[0x28223BE20](v133);
  v132 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v124 - v12;
  v13 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v139 = *(v13 - 8);
  v140 = v13;
  MEMORY[0x28223BE20](v13);
  v134 = (&v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADC8, &qword_23C8790B8);
  MEMORY[0x28223BE20](v15 - 8);
  v137 = (&v124 - v16);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADD0, &qword_23C8790C0);
  MEMORY[0x28223BE20](v138);
  v142 = &v124 - v17;
  v18 = type metadata accessor for ContextProtoBoundingBox(0);
  v146 = *(v18 - 8);
  v147 = v18;
  MEMORY[0x28223BE20](v18);
  v144 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB8, &unk_23C879160);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v141 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v145 = &v124 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADC0, &qword_23C8790B0);
  v24 = MEMORY[0x28223BE20](v148);
  v143 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v124 - v26;
  v28 = type metadata accessor for ContextProtoConfidence(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADD8, &qword_23C8790C8);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = (&v124 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADE0, &qword_23C8790D0);
  MEMORY[0x28223BE20](v35);
  v37 = &v124 - v36;
  v38 = a1[2];
  v39 = a2[2];
  if (v38)
  {
    if (!v39 || (a1[1] != a2[1] || v38 != v39) && (sub_23C872014() & 1) == 0)
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
    if (!v41 || (a1[3] != a2[3] || v40 != v41) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v41)
  {
    goto LABEL_32;
  }

  v125 = v5;
  v42 = type metadata accessor for ContextProtoContextMetadata(0);
  v128 = a2;
  v126 = v42;
  v43 = *(v42 + 28);
  v44 = *(v35 + 48);
  v127 = a1;
  sub_23C5855B0(a1 + v43, v37, &qword_27E1FADD8, &qword_23C8790C8);
  v45 = v128 + v43;
  v46 = v128;
  sub_23C5855B0(v45, &v37[v44], &qword_27E1FADD8, &qword_23C8790C8);
  v47 = *(v29 + 48);
  if (v47(v37, 1, v28) == 1)
  {
    if (v47(&v37[v44], 1, v28) == 1)
    {
      sub_23C585C34(v37, &qword_27E1FADD8, &qword_23C8790C8);
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  sub_23C5855B0(v37, v34, &qword_27E1FADD8, &qword_23C8790C8);
  if (v47(&v37[v44], 1, v28) == 1)
  {
    sub_23C5EDCC4(v34, type metadata accessor for ContextProtoConfidence);
LABEL_24:
    v56 = &qword_27E1FADE0;
    v57 = &qword_23C8790D0;
LABEL_30:
    v59 = v37;
LABEL_31:
    sub_23C585C34(v59, v56, v57);
    goto LABEL_32;
  }

  sub_23C5EDD24(&v37[v44], v31, type metadata accessor for ContextProtoConfidence);
  if (*v34 != *v31 || *(v34 + 4) != *(v31 + 4))
  {
    sub_23C5EDCC4(v31, type metadata accessor for ContextProtoConfidence);
    sub_23C5EDCC4(v34, type metadata accessor for ContextProtoConfidence);
    v56 = &qword_27E1FADD8;
    v57 = &qword_23C8790C8;
    goto LABEL_30;
  }

  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v46 = v128;
  v58 = sub_23C871754();
  sub_23C5EDCC4(v31, type metadata accessor for ContextProtoConfidence);
  sub_23C5EDCC4(v34, type metadata accessor for ContextProtoConfidence);
  sub_23C585C34(v37, &qword_27E1FADD8, &qword_23C8790C8);
  if ((v58 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  v48 = v127;
  if ((sub_23C5E12AC(*v127, *v46) & 1) == 0)
  {
    goto LABEL_32;
  }

  v49 = v126;
  v50 = v126[8];
  v51 = *(v148 + 48);
  sub_23C5855B0(v48 + v50, v27, &qword_27E1FADB8, &unk_23C879160);
  v52 = v128 + v50;
  v53 = v128;
  sub_23C5855B0(v52, &v27[v51], &qword_27E1FADB8, &unk_23C879160);
  v54 = v147;
  v55 = *(v146 + 48);
  if (v55(v27, 1, v147) == 1)
  {
    if (v55(&v27[v51], 1, v54) != 1)
    {
LABEL_37:
      v56 = &qword_27E1FADC0;
      v57 = &qword_23C8790B0;
      v59 = v27;
      goto LABEL_31;
    }

    sub_23C585C34(v27, &qword_27E1FADB8, &unk_23C879160);
  }

  else
  {
    v62 = v145;
    sub_23C5855B0(v27, v145, &qword_27E1FADB8, &unk_23C879160);
    if (v55(&v27[v51], 1, v54) == 1)
    {
      v63 = v62;
LABEL_36:
      sub_23C5EDCC4(v63, type metadata accessor for ContextProtoBoundingBox);
      goto LABEL_37;
    }

    v64 = &v27[v51];
    v65 = v144;
    sub_23C5EDD24(v64, v144, type metadata accessor for ContextProtoBoundingBox);
    LODWORD(v146) = _s26AIMLInstrumentationStreams23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v62, v65);
    sub_23C5EDCC4(v65, type metadata accessor for ContextProtoBoundingBox);
    sub_23C5EDCC4(v62, type metadata accessor for ContextProtoBoundingBox);
    sub_23C585C34(v27, &qword_27E1FADB8, &unk_23C879160);
    if ((v146 & 1) == 0)
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
    if (!v75 || (*v72 != *v74 || v73 != v75) && (sub_23C872014() & 1) == 0)
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
  v83 = *(v148 + 48);
  v27 = v143;
  sub_23C5855B0(v48 + v82, v143, &qword_27E1FADB8, &unk_23C879160);
  sub_23C5855B0(v53 + v82, &v27[v83], &qword_27E1FADB8, &unk_23C879160);
  if (v55(v27, 1, v54) == 1)
  {
    if (v55(&v27[v83], 1, v54) == 1)
    {
      sub_23C585C34(v27, &qword_27E1FADB8, &unk_23C879160);
      goto LABEL_68;
    }

    goto LABEL_37;
  }

  v84 = v141;
  sub_23C5855B0(v27, v141, &qword_27E1FADB8, &unk_23C879160);
  if (v55(&v27[v83], 1, v54) == 1)
  {
    v63 = v84;
    goto LABEL_36;
  }

  v85 = &v27[v83];
  v86 = v144;
  sub_23C5EDD24(v85, v144, type metadata accessor for ContextProtoBoundingBox);
  v87 = _s26AIMLInstrumentationStreams23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v84, v86);
  sub_23C5EDCC4(v86, type metadata accessor for ContextProtoBoundingBox);
  sub_23C5EDCC4(v84, type metadata accessor for ContextProtoBoundingBox);
  sub_23C585C34(v27, &qword_27E1FADB8, &unk_23C879160);
  if ((v87 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_68:
  v88 = v49[14];
  v89 = *(v127 + v88);
  v90 = *(v128 + v88);
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

  v91 = v126[15];
  v92 = *(v138 + 48);
  v93 = v142;
  sub_23C5855B0(v127 + v91, v142, &qword_27E1FADC8, &qword_23C8790B8);
  sub_23C5855B0(v128 + v91, v93 + v92, &qword_27E1FADC8, &qword_23C8790B8);
  v94 = *(v139 + 48);
  if (v94(v93, 1, v140) == 1)
  {
    if (v94(v142 + v92, 1, v140) == 1)
    {
      sub_23C585C34(v142, &qword_27E1FADC8, &qword_23C8790B8);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v95 = v142;
  sub_23C5855B0(v142, v137, &qword_27E1FADC8, &qword_23C8790B8);
  if (v94(v95 + v92, 1, v140) == 1)
  {
    sub_23C5EDCC4(v137, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
LABEL_77:
    v56 = &qword_27E1FADD0;
    v57 = &qword_23C8790C0;
    v59 = v142;
    goto LABEL_31;
  }

  v96 = v142;
  v97 = v142 + v92;
  v98 = v134;
  sub_23C5EDD24(v97, v134, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  v99 = v137;
  v100 = _s26AIMLInstrumentationStreams49ContextProtoContextualEntityDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v137, v98);
  sub_23C5EDCC4(v98, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_23C5EDCC4(v99, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_23C585C34(v96, &qword_27E1FADC8, &qword_23C8790B8);
  if ((v100 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_79:
  v101 = v126[16];
  v102 = (v127 + v101);
  v103 = *(v127 + v101 + 8);
  v104 = (v128 + v101);
  v105 = v104[1];
  if (v103)
  {
    if (!v105 || (*v102 != *v104 || v103 != v105) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v105)
  {
    goto LABEL_32;
  }

  v106 = v126[17];
  v107 = *(v133 + 48);
  v108 = v136;
  sub_23C5855B0(v127 + v106, v136, &qword_27E1FAD18, &unk_23C879170);
  sub_23C5855B0(v128 + v106, v108 + v107, &qword_27E1FAD18, &unk_23C879170);
  v109 = *(v130 + 48);
  if (v109(v108, 1, v135) != 1)
  {
    v110 = v136;
    sub_23C5855B0(v136, v131, &qword_27E1FAD18, &unk_23C879170);
    if (v109(v110 + v107, 1, v135) != 1)
    {
      v111 = v136;
      v112 = v136 + v107;
      v113 = v125;
      sub_23C5EDD24(v112, v125, type metadata accessor for ContextProtoCGRect);
      v114 = v131;
      v115 = _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v131, v113);
      sub_23C5EDCC4(v113, type metadata accessor for ContextProtoCGRect);
      sub_23C5EDCC4(v114, type metadata accessor for ContextProtoCGRect);
      sub_23C585C34(v111, &qword_27E1FAD18, &unk_23C879170);
      if ((v115 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_93;
    }

    sub_23C5EDCC4(v131, type metadata accessor for ContextProtoCGRect);
    goto LABEL_91;
  }

  if (v109(v136 + v107, 1, v135) != 1)
  {
LABEL_91:
    v56 = &qword_27E1FAD20;
    v57 = &qword_23C879040;
    v59 = v136;
    goto LABEL_31;
  }

  sub_23C585C34(v136, &qword_27E1FAD18, &unk_23C879170);
LABEL_93:
  v116 = v126[18];
  v117 = v132;
  v118 = *(v133 + 48);
  sub_23C5855B0(v127 + v116, v132, &qword_27E1FAD18, &unk_23C879170);
  sub_23C5855B0(v128 + v116, v117 + v118, &qword_27E1FAD18, &unk_23C879170);
  if (v109(v117, 1, v135) == 1)
  {
    if (v109(v132 + v118, 1, v135) == 1)
    {
      sub_23C585C34(v132, &qword_27E1FAD18, &unk_23C879170);
LABEL_100:
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v60 = sub_23C871754();
      return v60 & 1;
    }

    goto LABEL_98;
  }

  v119 = v132;
  sub_23C5855B0(v132, v129, &qword_27E1FAD18, &unk_23C879170);
  if (v109(v119 + v118, 1, v135) == 1)
  {
    sub_23C5EDCC4(v129, type metadata accessor for ContextProtoCGRect);
LABEL_98:
    v56 = &qword_27E1FAD20;
    v57 = &qword_23C879040;
    v59 = v132;
    goto LABEL_31;
  }

  v120 = v132;
  v121 = v125;
  sub_23C5EDD24(v132 + v118, v125, type metadata accessor for ContextProtoCGRect);
  v122 = v129;
  v123 = _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v129, v121);
  sub_23C5EDCC4(v121, type metadata accessor for ContextProtoCGRect);
  sub_23C5EDCC4(v122, type metadata accessor for ContextProtoCGRect);
  sub_23C585C34(v120, &qword_27E1FAD18, &unk_23C879170);
  if (v123)
  {
    goto LABEL_100;
  }

LABEL_32:
  v60 = 0;
  return v60 & 1;
}

unint64_t sub_23C5EA6E4()
{
  result = qword_27E1FA440;
  if (!qword_27E1FA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA440);
  }

  return result;
}

unint64_t sub_23C5EA738()
{
  result = qword_27E1FA508;
  if (!qword_27E1FA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA508);
  }

  return result;
}

unint64_t sub_23C5EA78C()
{
  result = qword_27E1FA510;
  if (!qword_27E1FA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA510);
  }

  return result;
}

unint64_t sub_23C5EA7E0()
{
  result = qword_27E1FA530;
  if (!qword_27E1FA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA530);
  }

  return result;
}

unint64_t sub_23C5EA834()
{
  result = qword_27E1FA5A0;
  if (!qword_27E1FA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5A0);
  }

  return result;
}

unint64_t sub_23C5EA888()
{
  result = qword_27E1FA5B8;
  if (!qword_27E1FA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5B8);
  }

  return result;
}

unint64_t sub_23C5EA8E0()
{
  result = qword_27E1FA5C8;
  if (!qword_27E1FA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5C8);
  }

  return result;
}

unint64_t sub_23C5EA938()
{
  result = qword_27E1FA5D0;
  if (!qword_27E1FA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5D0);
  }

  return result;
}

unint64_t sub_23C5EA990()
{
  result = qword_27E1FA5D8;
  if (!qword_27E1FA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5D8);
  }

  return result;
}

unint64_t sub_23C5EA9E8()
{
  result = qword_27E1FA5E0;
  if (!qword_27E1FA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5E0);
  }

  return result;
}

unint64_t sub_23C5EAA40()
{
  result = qword_27E1FA5E8;
  if (!qword_27E1FA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5E8);
  }

  return result;
}

unint64_t sub_23C5EAA98()
{
  result = qword_27E1FA5F0;
  if (!qword_27E1FA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5F0);
  }

  return result;
}

unint64_t sub_23C5EAAF0()
{
  result = qword_27E1FA5F8;
  if (!qword_27E1FA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5F8);
  }

  return result;
}

unint64_t sub_23C5EAB48()
{
  result = qword_27E1FA600;
  if (!qword_27E1FA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA600);
  }

  return result;
}

unint64_t sub_23C5EABA0()
{
  result = qword_27E1FA608;
  if (!qword_27E1FA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA608);
  }

  return result;
}

unint64_t sub_23C5EABF8()
{
  result = qword_27E1FA610;
  if (!qword_27E1FA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA610);
  }

  return result;
}

unint64_t sub_23C5EAC50()
{
  result = qword_27E1FA618;
  if (!qword_27E1FA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA618);
  }

  return result;
}

unint64_t sub_23C5EACA8()
{
  result = qword_27E1FA620;
  if (!qword_27E1FA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA620);
  }

  return result;
}

unint64_t sub_23C5EAD00()
{
  result = qword_27E1FA628;
  if (!qword_27E1FA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA628);
  }

  return result;
}

unint64_t sub_23C5EAD58()
{
  result = qword_27E1FA630;
  if (!qword_27E1FA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA630);
  }

  return result;
}

unint64_t sub_23C5EADB0()
{
  result = qword_27E1FA638;
  if (!qword_27E1FA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA638);
  }

  return result;
}

unint64_t sub_23C5EAE08()
{
  result = qword_27E1FA640;
  if (!qword_27E1FA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA640);
  }

  return result;
}

unint64_t sub_23C5EAE60()
{
  result = qword_27E1FA648;
  if (!qword_27E1FA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA648);
  }

  return result;
}

unint64_t sub_23C5EAEB8()
{
  result = qword_27E1FA650;
  if (!qword_27E1FA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA650);
  }

  return result;
}

unint64_t sub_23C5EC7D0()
{
  result = qword_27E1FA850;
  if (!qword_27E1FA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA850);
  }

  return result;
}

unint64_t sub_23C5EC828()
{
  result = qword_27E1FA858;
  if (!qword_27E1FA858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA858);
  }

  return result;
}

unint64_t sub_23C5ECD00()
{
  result = qword_27E1FA8B0;
  if (!qword_27E1FA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA8B0);
  }

  return result;
}

unint64_t sub_23C5ECD58()
{
  result = qword_27E1FA8B8;
  if (!qword_27E1FA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA8B8);
  }

  return result;
}

uint64_t sub_23C5EDA0C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23C5EDA24(result, a2);
  }

  return result;
}

uint64_t sub_23C5EDA2C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23C5EDA44(result, a2);
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

uint64_t sub_23C5EDAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23C5EDAF8()
{
  result = qword_27E1FACF0;
  if (!qword_27E1FACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FACF0);
  }

  return result;
}

unint64_t sub_23C5EDB4C()
{
  result = qword_27E1FAD48;
  if (!qword_27E1FAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAD48);
  }

  return result;
}

uint64_t sub_23C5EDBA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23C5ACFC8(result, a2);
  }

  return result;
}

unint64_t sub_23C5EDBB4()
{
  result = qword_27E1FAD80;
  if (!qword_27E1FAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAD80);
  }

  return result;
}

uint64_t sub_23C5EDC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23C5EDC70()
{
  result = qword_27E1FADE8;
  if (!qword_27E1FADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FADE8);
  }

  return result;
}

uint64_t sub_23C5EDCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23C5EDD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

AIMLInstrumentationStreams::ContextProtoContextDataSource_optional __swiftcall ContextProtoContextDataSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoContextType_optional __swiftcall ContextProtoContextType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 12;
  switch(rawValue)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v2 = 1;
      goto LABEL_24;
    case 2:
      v2 = 2;
      goto LABEL_24;
    case 3:
      v2 = 3;
      goto LABEL_24;
    case 4:
      v2 = 4;
      goto LABEL_24;
    case 5:
      v2 = 5;
      goto LABEL_24;
    case 6:
      v2 = 6;
      goto LABEL_24;
    case 7:
      v2 = 7;
      goto LABEL_24;
    case 8:
      v2 = 8;
      goto LABEL_24;
    case 9:
      v2 = 9;
      goto LABEL_24;
    case 10:
      v2 = 10;
      goto LABEL_24;
    case 11:
      v2 = 11;
LABEL_24:
      v3 = v2;
      goto LABEL_25;
    case 12:
LABEL_25:
      *v1 = v3;
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
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    default:
      *v1 = 30;
      break;
  }

  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoStructuredContextSiriRequestContextUserClassification_optional __swiftcall ContextProtoStructuredContextSiriRequestContextUserClassification.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoStructuredContextSiriRequestContextDeviceIdiom_optional __swiftcall ContextProtoStructuredContextSiriRequestContextDeviceIdiom.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoConfidenceBucket_optional __swiftcall ContextProtoConfidenceBucket.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoAliasTypesOptions_optional __swiftcall ContextProtoAliasTypesOptions.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ContextProtoRetrievedContext.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoRetrievedContext(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v6 = v2[6];
  v7 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[7];
  v9 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v5(&a1[v2[8]], 1, 1, v4);
  v10 = v2[9];
  v11 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[v2[10]];
  *v12 = 0;
  v12[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ContextProtoContextMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoContextMetadata(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v3 = v2[7];
  v4 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for ContextProtoBoundingBox(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v8 = a1 + v2[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v2[11]) = 2;
  *(a1 + v2[12]) = 2;
  v7(a1 + v2[13], 1, 1, v6);
  *(a1 + v2[14]) = 6;
  v10 = v2[15];
  v11 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = (a1 + v2[16]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v2[17];
  v14 = type metadata accessor for ContextProtoCGRect(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v2[18], 1, 1, v14);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoContextMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoContextMetadata(0) + 76);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoContextMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoContextMetadata(0) + 76);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  *a1 = 0u;
  a1[1] = 0u;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoBoundingBox.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  type metadata accessor for ContextProtoBoundingBox(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoSurroundingText.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoSurroundingText(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5EE870@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EE90C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoConfidence.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoConfidence(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 4) = 0;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(a1 + 80) = 33686018;
  *(a1 + 84) = 2;
  v3 = v2[15];
  v4 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[16]) = xmmword_23C879130;
  v5 = (a1 + v2[17]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[18]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[19];
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[20];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + v2[21]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v2[22]) = 2;
  *(a1 + v2[23]) = 2;
  v11 = v2[24];
  v12 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  *(a1 + v2[25]) = 12;
  *(a1 + v2[26]) = 2;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v14 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v14;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5EEF18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EEFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1282;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5EF280@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EF31C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C5EF550@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EF5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructedContextAppContext.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoStructedContextAppContext(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23C5EF8BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5EF978@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EFA14(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = v2[5];
  v4 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  v5[8] = 1;
  v6 = &a1[v2[7]];
  *v6 = 0;
  v6[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_23C5EFD9C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v3 = *(DecorationOutput + 44);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a1 + v3, 1, 1, DecorationToolRetrievalResponse);
  v5 = (a1 + *(DecorationOutput + 48));
  *v5 = 0;
  v5[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v7 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoQueryDecorationOutput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v3 = *(DecorationOutput + 56);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a1 + v3, 1, 1, DecorationToolRetrievalResponse);
  v5 = (a1 + *(DecorationOutput + 60));
  *v5 = 0;
  v5[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v7 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 64);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 64);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoQueryDecorationInput.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoQueryDecorationInput(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5F0350@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5F03EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5F04F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
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

uint64_t ContextProtoRetrievedTool.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 28);
  v3 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  return result;
}

AIMLInstrumentationStreams::ContextProtoRetrievedTool::Stage_optional __swiftcall ContextProtoRetrievedTool.Stage.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ContextProtoUIControlTool.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoSampleInvocation.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoSampleInvocation(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23C5F0AE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a2(0) + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoToolQuery.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ContextProtoToolQuery(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
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

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoSpanMatchedEntity.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for ContextProtoSpanMatchedEntity(0) + 20);
  v3 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoEntityMatch.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoEntityMatch(0);
  v3 = *(v2 + 48);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a1 + v3, 1, 1, matched);
  v5 = (a1 + *(v2 + 52));
  *v5 = 0;
  v5[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 45) = 0;
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  a1[9] = 0;
  a1[10] = 0xE000000000000000;
  return result;
}

uint64_t ContextProtoEntityMatch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoEntityMatch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoMatchProperties.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = *(type metadata accessor for ContextProtoMatchProperties(0) + 24);
  v3 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoAliasTypes.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ContextProtoAliasTypes(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5F14D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDC70();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F1544(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5CF53C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F15B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDB4C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F1624(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDBB4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F168C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA6E4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F16F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA78C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F175C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA738();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F17C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA834();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F1834(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA888();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ContextProtoRetrievedContext.init(value:relevance:type:metadata:typedValue:structuredContext:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v25 = *a3;
  v11 = type metadata accessor for ContextProtoRetrievedContext(0);
  v12 = v11[5];
  v13 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(*(v13 - 8) + 56);
  v14(&a9[v12], 1, 1, v13);
  v15 = v11[6];
  v16 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v11[7];
  v18 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v11[8];
  v14(&a9[v19], 1, 1, v13);
  v20 = v11[9];
  v21 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = &a9[v11[10]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v12], &qword_27E1FAB68, &unk_23C879140);
  sub_23C5842D0(a2, &a9[v15], &qword_27E1FADD8, &qword_23C8790C8);
  *a9 = v25;
  sub_23C5842D0(a4, &a9[v17], &qword_27E1FAE00, &unk_23C879150);
  sub_23C5842D0(a5, &a9[v19], &qword_27E1FAB68, &unk_23C879140);
  result = sub_23C5842D0(a6, &a9[v20], &qword_27E1FADF0, &qword_23C8790D8);
  *v22 = a7;
  v22[1] = a8;
  return result;
}

uint64_t ContextProtoContextMetadata.onScreenSurroundingText.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.entityID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ContextProtoContextMetadata.entityID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.appBundleID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ContextProtoContextMetadata.appBundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.seq.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C5F2388(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 40));

  return v2;
}

uint64_t sub_23C5F23E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.isSelected.setter(char a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.isPrimary.setter(char a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoContextMetadata(0) + 64));

  return v1;
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoContextMetadata(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.init(entityID:appBundleID:saliency:onScreenSurroundingText:onScreenBoundingBox:seq:groupID:isSelected:isPrimary:screenDimensions:dataSource:displayRepresentation:appBundleIdentifier:screenSize:frame:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v51 = *a16;
  v22 = type metadata accessor for ContextProtoContextMetadata(0);
  v23 = v22[7];
  v44 = v23;
  v24 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v24 - 8) + 56))(&a9[v23], 1, 1, v24);
  v25 = v22[8];
  v41 = v25;
  v26 = type metadata accessor for ContextProtoBoundingBox(0);
  v27 = *(*(v26 - 8) + 56);
  v27(&a9[v25], 1, 1, v26);
  v28 = &a9[v22[9]];
  v39 = &a9[v22[10]];
  v42 = v22[12];
  v43 = v22[11];
  v40 = v22[13];
  v27(&a9[v40], 1, 1, v26);
  v29 = v22[14];
  a9[v29] = 6;
  v30 = v22[15];
  v38 = v30;
  v31 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  (*(*(v31 - 8) + 56))(&a9[v30], 1, 1, v31);
  v32 = v22[17];
  v33 = &a9[v22[16]];
  v34 = type metadata accessor for ContextProtoCGRect(0);
  v35 = *(*(v34 - 8) + 56);
  v35(&a9[v32], 1, 1, v34);
  v36 = v22[18];
  v35(&a9[v36], 1, 1, v34);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a9 + 1) = a1;
  *(a9 + 2) = a2;
  *(a9 + 3) = a3;
  *(a9 + 4) = a4;
  sub_23C5842D0(a5, &a9[v44], &qword_27E1FADD8, &qword_23C8790C8);
  *a9 = a6;
  sub_23C5842D0(a7, &a9[v41], &qword_27E1FADB8, &unk_23C879160);
  *v28 = a8;
  v28[8] = a10 & 1;
  *v39 = a11;
  *(v39 + 1) = a12;
  a9[v43] = a13;
  a9[v42] = a14;
  sub_23C5842D0(a15, &a9[v40], &qword_27E1FADB8, &unk_23C879160);
  a9[v29] = v51;
  sub_23C5842D0(a17, &a9[v38], &qword_27E1FADC8, &qword_23C8790B8);
  *v33 = a18;
  *(v33 + 1) = a19;
  sub_23C5842D0(a20, &a9[v32], &qword_27E1FAD18, &unk_23C879170);
  return sub_23C5842D0(a21, &a9[v36], &qword_27E1FAD18, &unk_23C879170);
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ContextProtoBoundingBox.xCoordinate.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.yCoordinate.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.width.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.height.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.init(xCoordinate:yCoordinate:width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ContextProtoBoundingBox(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 4) = BYTE4(a1) & 1;
  *(a5 + 8) = a2;
  *(a5 + 12) = BYTE4(a2) & 1;
  *(a5 + 16) = a3;
  *(a5 + 20) = BYTE4(a3) & 1;
  *(a5 + 24) = a4;
  *(a5 + 28) = BYTE4(a4) & 1;
  return result;
}

uint64_t ContextProtoSurroundingText.init(text:onScreenBoundingBox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ContextProtoSurroundingText(0) + 20);
  v9 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 1) = a2;
  return sub_23C5842D0(a3, &a4[v8], &qword_27E1FADB8, &unk_23C879160);
}

uint64_t ContextProtoConfidence.init(score:bucket:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = *a1;
  type metadata accessor for ContextProtoConfidence(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.bargeInModes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.inputOrigin.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.inputOrigin.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.responseMode.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.responseMode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.getter()
{
  v1 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
  v2 = *v1;
  sub_23C5EDBA0(*v1, *(v1 + 8));
  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
  result = sub_23C5AD0AC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68));

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72));

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.uiScale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84));

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.allowUserGeneratedContent.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.censorSpeech.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *a1 = *(v1 + *(result + 100));
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 100)) = v2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.didPscfire.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init(sessionID:requestID:inputOrigin:responseMode:isEyesFree:isMultiUser:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:deviceRestrictions:bargeInModes:identifiedUser:encodedLocation:countryCode:siriLocale:contentRestrictions:uiScale:temperatureUnit:allowUserGeneratedContent:censorSpeech:meCard:deviceIdiom:didPscfire:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, char a26, uint64_t a27, char *a28, char a29)
{
  v56 = *a28;
  v30 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v31 = v30[15];
  v47 = v31;
  v32 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  (*(*(v32 - 8) + 56))(a9 + v31, 1, 1, v32);
  v33 = a9 + v30[16];
  *v33 = xmmword_23C879130;
  v34 = (a9 + v30[17]);
  v35 = (a9 + v30[18]);
  v36 = v30[19];
  v37 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  (*(*(v37 - 8) + 56))(a9 + v36, 1, 1, v37);
  v38 = a9 + v30[20];
  v39 = (a9 + v30[21]);
  v45 = v30[23];
  v46 = v30[22];
  v40 = v30[24];
  v41 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  (*(*(v41 - 8) + 56))(a9 + v40, 1, 1, v41);
  v42 = v30[25];
  *(a9 + v42) = 12;
  v44 = v30[26];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 81) = *(&a10 + 1);
  *a9 = a11;
  *(a9 + 8) = a12;
  sub_23C5842D0(a13, a9 + v47, &qword_27E1FAD70, &unk_23C879180);
  sub_23C5AD0AC(*v33, *(v33 + 8));
  *v33 = a14;
  *(v33 + 8) = a15;
  *v34 = a16;
  v34[1] = a17;
  *v35 = a18;
  v35[1] = a19;
  sub_23C5842D0(a20, a9 + v36, &qword_27E1FAD60, &qword_23C879068);
  *v38 = a21;
  *(v38 + 8) = a22 & 1;
  *v39 = a23;
  v39[1] = a24;
  *(a9 + v46) = a25;
  *(a9 + v45) = a26;
  result = sub_23C5842D0(a27, a9 + v40, &qword_27E1FAD50, &unk_23C879190);
  *(a9 + v42) = v56;
  *(a9 + v44) = a29;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.appRestriction.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.movieRestriction.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.tvRestriction.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init(appRestriction:countryCode:movieRestriction:tvRestriction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 4) = BYTE4(a1) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = BYTE4(a4) & 1;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.userID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init(userID:isOnlyUserInHome:classification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  *(a5 + 17) = 5;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = v9;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.nickName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.nickName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.fullName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.fullName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.init(givenName:middleName:familyName:nickName:fullName:addresses:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  a9[2] = a2;
  a9[3] = a3;
  a9[4] = a4;
  a9[5] = a5;
  a9[6] = a6;
  a9[7] = a7;
  a9[8] = a8;
  a9[9] = a10;
  a9[10] = a11;
  *a9 = a12;
  a9[1] = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.countryCode.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

__n128 ContextProtoStructuredContextSiriRequestContextAddress.init(label:street:city:state:postalCode:countryCode:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.menuHierarchyComponents.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.init(identifier:title:standaloneTitle:embeddingDescription:isDisabled:menuHierarchyComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContextProtoStructedContextAppInFocusContext.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.appName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContextProtoStructedContextAppInFocusContext.appName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.category.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ContextProtoStructedContextAppInFocusContext.category.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.init(bundleID:appName:category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.category.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ContextProtoStructedContextAppContext.category.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.init(bundleID:appName:category:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  type metadata accessor for ContextProtoStructedContextAppContext(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 16) = a7;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.init(text:boundingBox:uiMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_23C5842D0(a3, &a5[v11], &qword_27E1FAD18, &unk_23C879170);
  return sub_23C5842D0(a4, &a5[v13], &qword_27E1FAD38, &qword_23C879050);
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.fractionVisible.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28));

  return v1;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init(isActive:boundingBox:fractionVisible:appBundleID:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v13 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v14 = v13[5];
  v15 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[v13[6]];
  v17 = &a7[v13[7]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  result = sub_23C5842D0(a2, &a7[v14], &qword_27E1FAD18, &unk_23C879170);
  *v16 = a3;
  v16[8] = a4 & 1;
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t ContextProtoCGRect.init(origin:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContextProtoCGPoint(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for ContextProtoCGRect(0) + 20);
  v8 = type metadata accessor for ContextProtoCGSize(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAD08, &qword_23C879030);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E1FACF8, &unk_23C8791B0);
}

uint64_t sub_23C5F58A4@<X0>(uint64_t (*a1)(void)@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a3;
  a2[1] = a4;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48));

  return v1;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_23C5F5BAC(uint64_t a1, uint64_t a2)
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C5F5BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F5C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.init(version:spans:spansIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v17 = *(DecorationOutput + 44);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a8 + v17, 1, 1, DecorationToolRetrievalResponse);
  v19 = (a8 + *(DecorationOutput + 48));
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  result = sub_23C5842D0(a3, a8 + v17, &qword_27E1FACE0, &unk_23C8A13B0);
  *(a8 + 16) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  *v19 = a9;
  v19[1] = a10;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.utteranceContext.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.dynamicEnumerationEntities.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.context.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 60));

  return v1;
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.init(spans:spansIsPresent:requiredContext:requiredContextIsPresent:utteranceContext:utteranceContextIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v22 = *(DecorationOutput + 56);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a9 + v22, 1, 1, DecorationToolRetrievalResponse);
  v24 = (a9 + *(DecorationOutput + 60));
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  result = sub_23C5842D0(a7, a9 + v22, &qword_27E1FACE0, &unk_23C8A13B0);
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *v24 = a13;
  v24[1] = a14;
  return result;
}

uint64_t ContextProtoQueryDecorationInput.init(query:requestID:caller:contextID:loggingSalt:servicesExecuted:deviceIdsID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a5;
  type metadata accessor for ContextProtoQueryDecorationInput(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v19;
  *(a9 + 40) = a4;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  *(a9 + 72) = a10;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  return result;
}

uint64_t ContextProtoDynamicEnumerationEntity.init(identifier:parameterTypeInstance:typedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_23C5842D0(a3, &a5[v11], &qword_27E1FAC40, &unk_23C8791C0);
  return sub_23C5842D0(a4, &a5[v13], &qword_27E1FAB68, &unk_23C879140);
}

uint64_t sub_23C5F67FC(uint64_t a1, uint64_t a2)
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C5F6860(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA7E0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F68AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t ContextProtoRetrievedTool.init(definition:similarityScore:sampleInvocations:stage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v9 = *a3;
  v10 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 28);
  v11 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, a4 + v10, &qword_27E1FAAD8, &qword_23C878EC0);
  *a4 = a5;
  *(a4 + 8) = a2;
  *(a4 + 16) = v9;
  return result;
}

uint64_t ContextProtoUIControlTool.init(appBundleID:command:commandID:toolDef:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = *(type metadata accessor for ContextProtoUIControlTool(0) + 28);
  v17 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  return sub_23C5842D0(a7, &a8[v16], &qword_27E1FACA8, &unk_23C87B940);
}

uint64_t ContextProtoSampleInvocation.init(invocationString:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  type metadata accessor for ContextProtoSampleInvocation(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t ContextProtoToolRetrievalType.init(identifier:definition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for ContextProtoToolRetrievalType(0) + 20);
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAB38, &unk_23C8791E0);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E1FAB18, &qword_23C878EF0);
}

uint64_t ContextProtoToolQuery.appBundleIds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ContextProtoToolQuery.init(query:appBundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for ContextProtoToolQuery(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_23C5F7088@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  a3(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  return sub_23C5842D0(a1, a6, a4, a5);
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
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

uint64_t ContextProtoSpanMatchedEntity.init(typedValue:matchMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for ContextProtoSpanMatchedEntity(0) + 20);
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a3[v6], &qword_27E1FAB68, &unk_23C879140);
  *a3 = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.entityName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContextProtoEntityMatch.entityName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.originAppBundleID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ContextProtoEntityMatch.originAppBundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.userUtterance.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ContextProtoEntityMatch.userUtterance.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoEntityMatch(0) + 52));

  return v1;
}

uint64_t ContextProtoEntityMatch.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoEntityMatch(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 ContextProtoEntityMatch.init(sourceItemIdentifier:entityName:startIndex:endIndex:matchScore:matchProperties:matcherType:originAppBundleID:userUtterance:identifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v22 = *a8;
  v23 = type metadata accessor for ContextProtoEntityMatch(0);
  v24 = *(v23 + 48);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a9 + v24, 1, 1, matched);
  v26 = (a9 + *(v23 + 52));
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a10;
  sub_23C5842D0(a7, a9 + v24, &qword_27E1FAB58, &unk_23C8791F0);
  *(a9 + 52) = v22;
  result = a11;
  *(a9 + 56) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13;
  *v26 = a14;
  v26[1] = a15;
  return result;
}

uint64_t ContextProtoMatchProperties.maxTokenCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.matchedTokenCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.init(maxTokenCount:matchedTokenCount:matchedAliasTypes:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for ContextProtoMatchProperties(0) + 24);
  v13 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  return sub_23C5842D0(a5, a6 + v12, &qword_27E1FAB48, &qword_23C878F10);
}

uint64_t ContextProtoAliasTypes.init(options:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ContextProtoAliasTypes(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV0cD14DefinitionEnumO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v15 = MEMORY[0x28223BE20](v14);
  v48 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB2E8, &qword_23C87AA28);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v45 - v30;
  v32 = *(v29 + 56);
  sub_23C5FCA78(v49, &v45 - v30, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_23C5FCA78(v50, &v31[v32], type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C5FCA78(v31, v25, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v38 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier;
        v39 = v25;
        goto LABEL_19;
      }

      sub_23C5FCA10(&v31[v32], v6, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v35 = static ToolKitProtoAssistantSchemaIdentifier.== infix(_:_:)(v25, v6);
      v41 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier;
      sub_23C5FC9B0(v6, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v36 = v25;
    }

    else
    {
      sub_23C5FCA78(v31, v27, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v38 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
        v39 = v27;
        goto LABEL_19;
      }

      sub_23C5FCA10(&v31[v32], v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v35 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v27, v13);
      v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
      sub_23C5FC9B0(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v36 = v27;
    }

LABEL_21:
    v37 = v41;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C5FCA78(v31, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v38 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
      v39 = v22;
      goto LABEL_19;
    }

    v40 = v45;
    sub_23C5FCA10(&v31[v32], v45, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v35 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v22, v40);
    v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
    sub_23C5FC9B0(v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v36 = v22;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v42 = v48;
    sub_23C5FCA78(v31, v48, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v38 = type metadata accessor for ContextProtoUIControlTool;
      v39 = v42;
      goto LABEL_19;
    }

    v43 = v47;
    sub_23C5FCA10(&v31[v32], v47, type metadata accessor for ContextProtoUIControlTool);
    v35 = _s26AIMLInstrumentationStreams25ContextProtoUIControlToolV2eeoiySbAC_ACtFZ_0(v42, v43);
    v41 = type metadata accessor for ContextProtoUIControlTool;
    sub_23C5FC9B0(v43, type metadata accessor for ContextProtoUIControlTool);
    v36 = v42;
    goto LABEL_21;
  }

  sub_23C5FCA78(v31, v19, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v34 = v46;
    sub_23C5FCA10(&v31[v32], v46, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v35 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v19, v34);
    sub_23C5FC9B0(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v36 = v19;
    v37 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
LABEL_22:
    sub_23C5FC9B0(v36, v37);
    sub_23C5FC9B0(v31, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    return v35 & 1;
  }

  v38 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
  v39 = v19;
LABEL_19:
  sub_23C5FC9B0(v39, v38);
  sub_23C585C34(v31, &qword_27E1FB2E8, &qword_23C87AA28);
  v35 = 0;
  return v35 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC4KindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  v2 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v15 = MEMORY[0x28223BE20](v14);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v47 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v47 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v47 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v47 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB2F0, &unk_23C87AA30);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v47 - v30;
  v32 = *(v29 + 56);
  sub_23C5FCA78(v51, &v47 - v30, type metadata accessor for ContextProtoStructuredContextKind);
  sub_23C5FCA78(v52, &v31[v32], type metadata accessor for ContextProtoStructuredContextKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_23C5FCA78(v31, v27, type metadata accessor for ContextProtoStructuredContextKind);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_23C5FCA10(&v31[v32], v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
        v35 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC0V2eeoiySbAC_ACtFZ_0(v27, v13);
        v42 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
        v40 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
        v43 = v13;
        goto LABEL_22;
      }

      v38 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
LABEL_18:
      v44 = v38;
      v45 = v27;
      goto LABEL_20;
    }

    sub_23C5FCA78(v31, v25, type metadata accessor for ContextProtoStructuredContextKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v44 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext;
      v45 = v25;
      goto LABEL_20;
    }

    sub_23C5FCA10(&v31[v32], v10, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    v35 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc19IntelligenceCommandC0V2eeoiySbAC_ACtFZ_0(v25, v10);
    v40 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext;
    sub_23C5FC9B0(v10, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    v36 = v25;
LABEL_23:
    v37 = v40;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C5FCA78(v31, v22, type metadata accessor for ContextProtoStructuredContextKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v44 = type metadata accessor for ContextProtoStructedContextAppInFocusContext;
      v45 = v22;
      goto LABEL_20;
    }

    v39 = v47;
    sub_23C5FCA10(&v31[v32], v47, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    v35 = static ContextProtoStructedContextAppInFocusContext.== infix(_:_:)();
    v40 = type metadata accessor for ContextProtoStructedContextAppInFocusContext;
    sub_23C5FC9B0(v39, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    v36 = v22;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v27 = v50;
    sub_23C5FCA78(v31, v50, type metadata accessor for ContextProtoStructuredContextKind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v41 = v49;
      sub_23C5FCA10(&v31[v32], v49, type metadata accessor for ContextProtoStructedContextAppContext);
      v35 = static ContextProtoStructedContextAppContext.== infix(_:_:)();
      v42 = type metadata accessor for ContextProtoStructedContextAppContext;
      v40 = type metadata accessor for ContextProtoStructedContextAppContext;
      v43 = v41;
LABEL_22:
      sub_23C5FC9B0(v43, v42);
      v36 = v27;
      goto LABEL_23;
    }

    v38 = type metadata accessor for ContextProtoStructedContextAppContext;
    goto LABEL_18;
  }

  sub_23C5FCA78(v31, v19, type metadata accessor for ContextProtoStructuredContextKind);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v34 = v48;
    sub_23C5FCA10(&v31[v32], v48, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    v35 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC14OnScreenUITextV2eeoiySbAC_ACtFZ_0(v19, v34);
    sub_23C5FC9B0(v34, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    v36 = v19;
    v37 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText;
LABEL_24:
    sub_23C5FC9B0(v36, v37);
    sub_23C5FC9B0(v31, type metadata accessor for ContextProtoStructuredContextKind);
    return v35 & 1;
  }

  v44 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText;
  v45 = v19;
LABEL_20:
  sub_23C5FC9B0(v45, v44);
  sub_23C585C34(v31, &qword_27E1FB2F0, &unk_23C87AA30);
  v35 = 0;
  return v35 & 1;
}

unint64_t sub_23C5F88E4()
{
  result = qword_27E1FAE10;
  if (!qword_27E1FAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE10);
  }

  return result;
}

unint64_t sub_23C5F896C()
{
  result = qword_27E1FAE28;
  if (!qword_27E1FAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE28);
  }

  return result;
}

unint64_t sub_23C5F89F4()
{
  result = qword_27E1FAE40;
  if (!qword_27E1FAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE40);
  }

  return result;
}

unint64_t sub_23C5F8A7C()
{
  result = qword_27E1FAE58;
  if (!qword_27E1FAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE58);
  }

  return result;
}

unint64_t sub_23C5F8B04()
{
  result = qword_27E1FAE70;
  if (!qword_27E1FAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE70);
  }

  return result;
}

unint64_t sub_23C5F8B8C()
{
  result = qword_27E1FAE88;
  if (!qword_27E1FAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE88);
  }

  return result;
}

unint64_t sub_23C5F8C14()
{
  result = qword_27E1FAEA0;
  if (!qword_27E1FAEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAEA0);
  }

  return result;
}

unint64_t sub_23C5F8C9C()
{
  result = qword_27E1FAEB8;
  if (!qword_27E1FAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAEB8);
  }

  return result;
}

unint64_t sub_23C5F8D24()
{
  result = qword_27E1FAED0;
  if (!qword_27E1FAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAED0);
  }

  return result;
}

unint64_t sub_23C5F8DAC()
{
  result = qword_27E1FAEE8;
  if (!qword_27E1FAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAEE8);
  }

  return result;
}

unint64_t sub_23C5F8E34()
{
  result = qword_27E1FAF00;
  if (!qword_27E1FAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAF00);
  }

  return result;
}

uint64_t sub_23C5F8EB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for ContextProtoContextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextProtoContextType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23C5F91DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23C5F926C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoRuntimePlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoRuntimePlatform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23C5F94C4(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FAF30, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C5F96A0(319, &qword_27E1FAF38, type metadata accessor for ContextProtoContextMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FAF40, type metadata accessor for ContextProtoStructuredContext, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C5F96A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23C5F972C(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FAF58, type metadata accessor for ContextProtoSurroundingText, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C5F96A0(319, &qword_27E1FAF30, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FAF60, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_2814FB0F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C5FC960(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23C5FC960(319, &qword_27E1FAF70, &type metadata for ContextProtoContextDataSource, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_23C5F96A0(319, &qword_27E1FAF78, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_23C5F96A0(319, &qword_27E1FAF80, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_23C870F34();
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

void sub_23C5F9A30(uint64_t a1)
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5F9B00(uint64_t a1)
{
  sub_23C5FC960(319, &qword_27E1FAFA8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5F9BD4(uint64_t a1)
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FAF60, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
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

uint64_t sub_23C5F9D70(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ContextProtoStructedContextAppInFocusContext(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ContextProtoStructedContextAppContext(319);
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

void sub_23C5F9E48(uint64_t a1)
{
  sub_23C5FC960(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C5FC960(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FB010, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_27E1FB018, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C5F96A0(319, &qword_27E1FB020, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23C5FC960(319, &qword_2814FB0F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_23C5F96A0(319, &qword_27E1FB028, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_23C5FC960(319, &qword_27E1FB030, &type metadata for ContextProtoStructuredContextSiriRequestContextDeviceIdiom, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_23C870F34();
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

void sub_23C5FA148(uint64_t a1)
{
  sub_23C5FC960(319, &qword_27E1FB048, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C5FA260(uint64_t a1)
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C5FC960(319, &qword_27E1FB060, &type metadata for ContextProtoStructuredContextSiriRequestContextUserClassification, MEMORY[0x277D83D88]);
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

void sub_23C5FA3A8(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FB078, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C5FA4CC(uint64_t a1)
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5FA5A8(uint64_t a1)
{
  sub_23C5FC960(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C5FA6CC(uint64_t a1)
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5FA7A4(uint64_t a1)
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5FA958(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FAF80, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FB0F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C5FAABC(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FB110, type metadata accessor for ContextProtoCGPoint, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB118, type metadata accessor for ContextProtoCGSize, MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_index_300Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_23C870F34();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_301Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_23C870F34();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_23C5FAD24(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FB150, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB158, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C5F96A0(319, &qword_27E1FB160, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FB168, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C5FAF3C(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FB150, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB160, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C5F96A0(319, &qword_27E1FB158, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FB168, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C5FB148(uint64_t a1)
{
  sub_23C5FC960(319, &qword_27E1FB190, &type metadata for ContextProtoQueryDecorationCoreService, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_index_264Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v15 = v14;
    v16 = *(v14 - 8);
    v17 = a3[5];
LABEL_9:
    v19 = *(v16 + 48);

    return v19(a1 + v17, a2, v15);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v15 = v18;
    v16 = *(v18 - 8);
    v17 = a3[6];
    goto LABEL_9;
  }

  v20 = sub_23C870F34();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[7];

  return v21(v22, a2, v20);
}

uint64_t __swift_store_extra_inhabitant_index_265Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v15 = v14;
    v16 = *(v14 - 8);
    v17 = a4[5];
LABEL_7:
    v19 = *(v16 + 56);

    return v19(v9 + v17, a2, a2, v15);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v15 = v18;
    v16 = *(v18 - 8);
    v17 = a4[6];
    goto LABEL_7;
  }

  v20 = sub_23C870F34();
  v21 = *(*(v20 - 8) + 56);
  v22 = v9 + a4[7];

  return v21(v22, a2, a2, v20);
}

void sub_23C5FB5C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_23C5F96A0(319, a4, a5, MEMORY[0x277D83D88]);
  if (v9 <= 0x3F)
  {
    sub_23C5F96A0(319, a6, a7, MEMORY[0x277D83D88]);
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

void sub_23C5FB6E0(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FB1C0, type metadata accessor for ContextProtoSampleInvocation, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB1C8, type metadata accessor for ContextProtoRetrievedTool.Definition, MEMORY[0x277D83D88]);
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

uint64_t sub_23C5FB8C4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ContextProtoUIControlTool(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23C5FB97C(uint64_t a1)
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB208, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
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

uint64_t sub_23C5FBAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_23C870F34();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_291Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = v12;
    v15 = *(v13 + 48);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, v14);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a2)
  {
    v14 = v17;
    v15 = *(v18 + 48);
    v16 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v20 = sub_23C870F34();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + *(a3 + 24);

  return v21(v22, a2, v20);
}

uint64_t __swift_store_extra_inhabitant_index_292Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = v14;
    v17 = *(v15 + 56);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, a2, v16);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a3)
  {
    v16 = v19;
    v17 = *(v20 + 56);
    v18 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v22 = sub_23C870F34();
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + *(a4 + 24);

  return v23(v24, a2, a2, v22);
}

void sub_23C5FBE10(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB238, type metadata accessor for ToolKitProtoTypeDefinition.Version1, MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_index_401Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_402Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C5FC084(uint64_t a1)
{
  sub_23C5FC960(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_176Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_177Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_23C5FC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_23C870F34();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23C5FC454(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FB270, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB278, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
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

void sub_23C5FC598(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FB290, type metadata accessor for ContextProtoEntityMatch, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
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

void sub_23C5FC6BC(uint64_t a1)
{
  sub_23C5F96A0(319, &qword_27E1FB2A8, type metadata accessor for ContextProtoMatchProperties, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C5FC80C(uint64_t a1)
{
  sub_23C5FC960(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB2C8, type metadata accessor for ContextProtoAliasTypes, MEMORY[0x277D83D88]);
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

void sub_23C5FC960(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23C5FC9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23C5FCA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C5FCA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CoreAnalyticsTracker(uint64_t a1)
{
  result = qword_27E1FB310;
  if (!qword_27E1FB310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23C5FCD84(uint64_t a1)
{
  sub_23C870AE4();
  if (v1 <= 0x3F)
  {
    sub_23C597074();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for CoreAnalyticsTracker.ApiCall(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreAnalyticsTracker.ApiCall(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_23C5FCF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v10 = v9;
  v48 = a3;
  v46[4] = a2;
  v16 = type metadata accessor for CoreAnalyticsTracker(0);
  MEMORY[0x28223BE20](v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C870AA4();
  v20 = floor(v19 * -1000.0);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_13;
  }

  v47 = v18;
  v46[1] = a4;
  v46[2] = a6;
  v46[3] = a8;
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB328, &qword_23C87AB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C875050;
  *(inited + 32) = 6910049;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_23C871A34();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xEA0000000000734DLL;
  *(inited + 72) = sub_23C871A34();
  *(inited + 80) = 0x65707954646E65;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_23C871A34();
  v23 = sub_23C598A1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB330, &qword_23C87AB08);
  swift_arrayDestroy();
  *(v21 + 16) = v23;
  if (*(v10 + *(v16 + 32) + 8))
  {
    v24 = sub_23C871774();
  }

  if (v48)
  {
    if (a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v36 = sub_23C871A34();

    if (a5)
    {
LABEL_8:
      v25 = a9;
      if (a7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v37 = sub_23C871A34();

  v25 = a9;
  if ((a7 & 1) == 0)
  {
LABEL_9:
    v26 = sub_23C871A34();
  }

LABEL_10:
  v18 = v47;
  if ((v25 & 1) == 0)
  {
    v27 = sub_23C871A34();
  }

  v28 = sub_23C871774();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_23C5FD88C;
  *(v29 + 24) = v21;
  aBlock[4] = sub_23C5FD8C4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23C5FD6C0;
  aBlock[3] = &block_descriptor_0;
  v30 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v30);

  if (qword_27E1F8308 != -1)
  {
    goto LABEL_26;
  }

LABEL_13:
  v31 = sub_23C871654();
  __swift_project_value_buffer(v31, qword_27E1FB2F8);
  sub_23C5FD904(v10, v18);
  v32 = sub_23C871634();
  v33 = sub_23C871AC4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    v35 = *v18;
    sub_23C5A7ADC(v18);
    *(v34 + 4) = v35;
    _os_log_impl(&dword_23C56D000, v32, v33, "tracker ending for %ld", v34, 0xCu);
    MEMORY[0x23EED8240](v34, -1, -1);
  }

  else
  {
    sub_23C5A7ADC(v18);
  }

  v38 = sub_23C871634();
  v39 = sub_23C871AC4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49 = v41;
    *v40 = 136315138;
    swift_beginAccess();

    sub_23C5FD968();
    v42 = sub_23C8716C4();
    v44 = v43;

    v45 = sub_23C63C388(v42, v44, &v49);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_23C56D000, v38, v39, "output event: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x23EED8240](v41, -1, -1);
    MEMORY[0x23EED8240](v40, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_23C5FD5C4()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FB2F8);
  __swift_project_value_buffer(v0, qword_27E1FB2F8);
  return sub_23C871644();
}

unint64_t sub_23C5FD63C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23C5FD87C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23C5FD66C()
{
  result = qword_27E1FB320;
  if (!qword_27E1FB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB320);
  }

  return result;
}

id sub_23C5FD6C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_23C5FD968();
    v4 = sub_23C8716A4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_23C5FD74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_23C5FF898(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_23C63F270(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_23C5FF898(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_23C872064();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_23C644594();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_23C642B34(v11, a2, a3, a1, v10);

    v19 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = v10[7];
  v19 = *(v18 + 8 * v11);
  *(v18 + 8 * v11) = a1;
LABEL_11:
  *v5 = v10;
  return v19;
}

unint64_t sub_23C5FD87C(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23C5FD904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAnalyticsTracker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23C5FD968()
{
  result = qword_27E1FB338;
  if (!qword_27E1FB338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1FB338);
  }

  return result;
}

id TimestampedEventBridge.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___ISTimestampedEvent_timestamp] = *(a1 + 16);
  sub_23C5AE59C();
  v4 = *(a1 + 24);
  *&v3[OBJC_IVAR___ISTimestampedEvent_orderedEvent] = sub_23C871AE4();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id TimestampedEventBridge.init(_:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ISTimestampedEvent_timestamp] = *(a1 + 16);
  sub_23C5AE59C();
  v3 = *(a1 + 24);
  *&v1[OBJC_IVAR___ISTimestampedEvent_orderedEvent] = sub_23C871AE4();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TimestampedEventBridge();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

unint64_t sub_23C5FDB40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v55 = &v50 - v5;
  v6 = sub_23C870B74();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23C5FE238(v1);
  v52 = v10;
  v53 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C875590;
  v58[0] = 0xD000000000000011;
  v58[1] = 0x800000023C8A8B10;
  v12 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v13 = *(v1 + OBJC_IVAR___ISTimestampedEvent_timestamp);
  *(inited + 96) = MEMORY[0x277D839F8];
  *(inited + 72) = v13;
  strcpy(v58, "eventType");
  WORD1(v58[1]) = 0;
  HIDWORD(v58[1]) = -385875968;
  sub_23C871CB4();
  v14 = *(v1 + OBJC_IVAR___ISTimestampedEvent_orderedEvent);
  v15 = [v14 topLevelUnionType];
  v16 = [v15 qualifiedMessageName];

  v17 = sub_23C871784();
  v19 = v18;

  *(inited + 168) = v12;
  *(inited + 144) = v17;
  *(inited + 152) = v19;
  strcpy(v58, "eventClassName");
  HIBYTE(v58[1]) = -18;
  sub_23C871CB4();
  v20 = [v14 topLevelUnionType];
  ObjectType = swift_getObjectType();

  v58[0] = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB350, &unk_23C87AB10);
  v22 = sub_23C8717D4();
  *(inited + 240) = v12;
  *(inited + 216) = v22;
  *(inited + 224) = v23;
  v58[0] = 0xD000000000000013;
  v58[1] = 0x800000023C8A8B30;
  sub_23C871CB4();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  *(inited + 312) = v51;
  v24 = v52;
  *(inited + 288) = v53;
  *(inited + 296) = v24;
  v58[0] = 0xD000000000000010;
  v58[1] = 0x800000023C8A7380;
  sub_23C871CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB358, &unk_23C87AB20);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_23C873D20;
  *(v25 + 32) = 0x6564496B636F6C63;
  *(v25 + 40) = 0xEF7265696669746ELL;
  v26 = [v14 logicalTimestamp];
  v27 = [v26 clockIdentifier];

  sub_23C870B54();
  v28 = MEMORY[0x23EED6400]();
  v30 = v29;
  v53 = *(v56 + 8);
  v53(v8, v57);
  *(v25 + 48) = v28;
  *(v25 + 56) = v30;
  *(v25 + 72) = MEMORY[0x277D837D0];
  *(v25 + 80) = 0xD000000000000016;
  *(v25 + 88) = 0x800000023C8A7340;
  v31 = [v14 logicalTimestamp];
  v32 = [v31 nanoSecondsSinceBoot];

  *(v25 + 120) = MEMORY[0x277D84D38];
  *(v25 + 96) = v32;
  v33 = sub_23C598C5C(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C20, &qword_23C874CC8);
  swift_arrayDestroy();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB360, &unk_23C87AB30);
  *(inited + 360) = v33;
  strcpy(v58, "eventId");
  v58[1] = 0xE700000000000000;
  sub_23C871CB4();
  *(inited + 456) = v51;
  v34 = [v14 messageUUID];
  if (v34)
  {
    v35 = v54;
    v36 = v34;
    sub_23C870B54();

    v37 = 0;
  }

  else
  {
    v37 = 1;
    v35 = v54;
  }

  v39 = v56;
  v38 = v57;
  (*(v56 + 56))(v35, v37, 1, v57);
  v40 = v35;
  v41 = v55;
  sub_23C5AD03C(v40, v55);
  if ((*(v39 + 48))(v41, 1, v38) == 1)
  {
    sub_23C5FE4E4(v41);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v42 = MEMORY[0x23EED6400]();
    v43 = v44;
    v53(v41, v38);
  }

  *(inited + 432) = v42;
  *(inited + 440) = v43;
  v58[0] = 0x746E657665;
  v58[1] = 0xE500000000000000;
  sub_23C871CB4();
  v45 = [v14 topLevelUnionType];
  v46 = [v45 dictionaryRepresentation];

  if (v46)
  {
    v47 = sub_23C8716B4();
  }

  else
  {
    v47 = 0;
  }

  *(inited + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E60, &qword_23C8750A0);
  *(inited + 504) = v47;
  v48 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v48;
}

uint64_t sub_23C5FE238(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___ISTimestampedEvent_orderedEvent) topLevelUnionType];
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2 && (v3 = [v2 innerEvent]) != 0)
  {
    v4 = v3;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB3C8, &qword_23C87AB78);
    v5 = sub_23C8717D4();

    return v5;
  }

  else
  {

    return 0;
  }
}

id TimestampedEventBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TimestampedEventBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimestampedEventBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23C5FE45C(uint64_t a1)
{
  v2 = type metadata accessor for TimestampedEventBridge();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___ISTimestampedEvent_timestamp] = *(a1 + 16);
  sub_23C5AE59C();
  v4 = *(a1 + 24);
  *&v3[OBJC_IVAR___ISTimestampedEvent_orderedEvent] = sub_23C871AE4();
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_23C5FE4E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id EventFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventFilter.init()()
{
  *&v0[OBJC_IVAR___ISEventFilter_filter] = sub_23C598D8C(MEMORY[0x277D84F90]);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventFilter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id static EventFilter.all(of:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94B8, &unk_23C87AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = a1;
  v3 = inited + 32;
  *(inited + 40) = 0;
  v4 = sub_23C598D8C(inited);
  swift_setDeallocating();
  sub_23C5FEF44(v3);
  v5 = type metadata accessor for EventFilter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___ISEventFilter_filter] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

id static EventFilter.everything.getter(uint64_t a1)
{
  v1 = type metadata accessor for EventFilter();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___ISEventFilter_filter] = 0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL sub_23C5FE994(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v2);

  return sub_23C5FED9C(v4, v1, v2, v3);
}

id EventFilter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EventFilter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23C5FEA24(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_23;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_23C5FF958(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  sub_23C59A744(v5);
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_23C644700();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1F96A8, qword_23C873C40);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_23C5FF6B0(v5);

      return;
    }

    goto LABEL_29;
  }

  sub_23C63F514(v12, a2 & 1);
  v16 = sub_23C5FF958(v6);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_28:
    sub_23C872064();
    __break(1u);
LABEL_29:
    sub_23C871D14();
    MEMORY[0x23EED7100](0xD00000000000001BLL, 0x800000023C8A8CF0);
    sub_23C871DE4();
    MEMORY[0x23EED7100](39, 0xE100000000000000);
    sub_23C871E34();
    __break(1u);
    return;
  }

  v13 = v16;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v20[6] + 8 * v13) = v6;
  *(v20[7] + 8 * v13) = v5;
  v21 = v20[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20[2] = v23;
  if (v41 != 1)
  {
    v24 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *(v24 - 1);
      v5 = *v24;
      v27 = *a3;
      v28 = sub_23C5FF958(v26);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_25;
      }

      v33 = v28;
      v34 = v29;
      v35 = v27[3];
      sub_23C59A744(v5);
      if (v35 < v32)
      {
        sub_23C63F514(v32, 1);
        v36 = sub_23C5FF958(v26);
        if ((v34 & 1) != (v37 & 1))
        {
          goto LABEL_28;
        }

        v33 = v36;
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v38 = *a3;
      *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      *(v38[6] + 8 * v33) = v26;
      *(v38[7] + 8 * v33) = v5;
      v39 = v38[2];
      v22 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      ++v25;
      v38[2] = v40;
      v24 += 2;
      if (v41 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

BOOL sub_23C5FED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(a4 + 8))(a3, a4);
  v11 = (*(a4 + 16))(a3, a4);
  v12 = *(a2 + OBJC_IVAR___ISEventFilter_filter);
  if (!v12)
  {
    goto LABEL_9;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_8;
  }

  v13 = v11;
  v14 = sub_23C5FF958(v10);
  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

  v16 = *(*(v12 + 56) + 8 * v14);
  if (!v16)
  {
LABEL_9:
    v17 = 1;
    goto LABEL_10;
  }

  if (v16 == 1 || !v13)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  v17 = sub_23C6122A4(v13, v16);
LABEL_10:
  (*(v7 + 8))(v9, a3);
  return v17;
}

uint64_t sub_23C5FEF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94C0, &qword_23C8739F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id _s26AIMLInstrumentationStreams11EventFilterC4some2of5typesACSo25SISchemaTopLevelUnionTypeCm_SaySo0H22InstrumentationMessageCmGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v18 = MEMORY[0x277D84F90];
    sub_23C592C64(0, v3, 0);
    v4 = v18;
    v6 = (a2 + 32);
    v7 = *(v18 + 16);
    do
    {
      v8 = *v6;
      v18 = v4;
      v9 = *(v4 + 24);
      if (v7 >= v9 >> 1)
      {
        sub_23C592C64((v9 > 1), v7 + 1, 1);
        v4 = v18;
      }

      *(v4 + 16) = v7 + 1;
      *(v4 + 8 * v7 + 32) = v8;
      ++v6;
      ++v7;
      --v3;
    }

    while (v3);
  }

  v10 = sub_23C59A51C(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94B8, &unk_23C87AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = a1;
  v12 = inited + 32;
  *(inited + 40) = v10;
  v13 = sub_23C598D8C(inited);
  swift_setDeallocating();
  sub_23C5FEF44(v12);
  v14 = type metadata accessor for EventFilter();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___ISEventFilter_filter] = v13;
  v17.receiver = v15;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_init);
}

id _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___ISEventFilter_filter);
  if (!v2)
  {
    v28 = type metadata accessor for EventFilter();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR___ISEventFilter_filter] = 0;
    v37 = v29;
    v30 = &v37;
    goto LABEL_46;
  }

  v3 = *(a2 + OBJC_IVAR___ISEventFilter_filter);
  if (!v3)
  {
    v28 = type metadata accessor for EventFilter();
    v31 = objc_allocWithZone(v28);
    *&v31[OBJC_IVAR___ISEventFilter_filter] = 0;
    v38 = v31;
    v30 = &v38;
    goto LABEL_46;
  }

  swift_bridgeObjectRetain_n();

  v4 = sub_23C592A44(v2);

  v6 = sub_23C6322D8(v5, v4);
  v7 = v6;
  v8 = v6 + 56;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v36 = MEMORY[0x277D84F90];
  while (v11)
  {
LABEL_11:
    v15 = *(*(v7 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    if (*(v2 + 16) && (v16 = sub_23C5FF958(v15), (v17 & 1) != 0))
    {
      v18 = *(*(v2 + 56) + 8 * v16);
      sub_23C59A744(v18);
      if (!*(v3 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v18 = 2;
      if (!*(v3 + 16))
      {
        goto LABEL_18;
      }
    }

    v19 = sub_23C5FF958(v15);
    if ((v20 & 1) == 0)
    {
LABEL_18:
      v21 = 2;
      goto LABEL_19;
    }

    v21 = *(*(v3 + 56) + 8 * v19);
    sub_23C59A744(v21);
LABEL_19:
    v11 &= v11 - 1;
    if (v18 == 2)
    {
      if (v21 != 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v21 == 2)
      {
        v21 = v18;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB3D8, &qword_23C87AC50);
        if (v18)
        {
          if (v21)
          {
            if (v21 == 1)
            {
              if (v18 == 1)
              {
                sub_23C5FF690(1uLL);
                sub_23C5FF690(1uLL);
                v21 = 1;
              }

              else
              {
                sub_23C59A744(1uLL);
                v21 = v18;
              }
            }

            else if (v18 == 1)
            {
              sub_23C59A744(1uLL);
            }

            else
            {
              v21 = sub_23C6321F8(v21, v18);
            }
          }

          else
          {
            sub_23C5FF690(0);
            sub_23C5FF6A0(v18);
          }
        }

        else
        {
          sub_23C5FF690(0);
          sub_23C5FF6A0(v21);
          v21 = 0;
        }
      }

LABEL_35:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_23C584B28(0, v36[2] + 1, 1, v36);
      }

      v23 = v36[2];
      v22 = v36[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v35 = v23 + 1;
        v26 = sub_23C584B28((v22 > 1), v23 + 1, 1, v36);
        v24 = v23 + 1;
        v36 = v26;
      }

      v36[2] = v24;
      v25 = &v36[2 * v23];
      v25[4] = v15;
      v25[5] = v21;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      sub_23C5FF690(0);
      sub_23C5FF690(1uLL);
      sub_23C872004();
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  if (v36[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C10, &qword_23C87BEF0);
    v27 = sub_23C871E94();
  }

  else
  {
    v27 = MEMORY[0x277D84F98];
  }

  v40 = v27;
  sub_23C5FEA24(v36, 1, &v40);
  v32 = v40;
  v28 = type metadata accessor for EventFilter();
  v33 = objc_allocWithZone(v28);
  *&v33[OBJC_IVAR___ISEventFilter_filter] = v32;
  v39.receiver = v33;
  v30 = &v39;
LABEL_46:
  v30->super_class = v28;
  return [(objc_super *)v30 init];
}

uint64_t sub_23C5FF59C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C5FF5EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23C5FF640(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_26AIMLInstrumentationStreams11EventFilterC09InnerTypeD033_D32286BD32B295E05554CC328F282983LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_23C5FF690(unint64_t result)
{
  if (result != 2)
  {
    return sub_23C59A744(result);
  }

  return result;
}

uint64_t sub_23C5FF6A0(uint64_t result)
{
  if (result != 2)
  {
    return sub_23C5FF6B0(result);
  }

  return result;
}

unint64_t sub_23C5FF6B0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_23C5FF6E8(uint64_t a1)
{
  v2 = sub_23C871BB4();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_23C5A3F8C(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_23C5FF774(unint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23C5A3FDC(0, a1, a2);
  v7 = sub_23C601560();
  if (*(v7 + 16) && (v8 = sub_23C5FF958(v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);

    v11 = sub_23C5FF6E8(v10);

    if (v11)
    {
      v12 = sub_23C601CF4(v11);

      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_23C5FF898(uint64_t a1, uint64_t a2)
{
  sub_23C8720F4();
  sub_23C871804();
  v4 = sub_23C872124();

  return sub_23C5FFD58(a1, a2, v4);
}

unint64_t sub_23C5FF910(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x23EED79C0](*(v1 + 40), a1, 4);

  return sub_23C5FFE10(v2, v3);
}

unint64_t sub_23C5FF958(uint64_t a1)
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](a1);
  v2 = sub_23C872124();

  return sub_23C5FFE7C(a1, v2);
}

unint64_t sub_23C5FF9C4(uint64_t a1)
{
  v2 = sub_23C871C94();

  return sub_23C5FFEE8(a1, v2);
}

unint64_t sub_23C5FFA08(uint64_t a1)
{
  v2 = sub_23C871B24();

  return sub_23C5FFFB0(a1, v2);
}

unint64_t sub_23C5FFA4C(uint64_t *a1)
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](*a1);
  type metadata accessor for EventTypeIdPair(0);
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
  sub_23C8716F4();
  v2 = sub_23C872124();

  return sub_23C600074(a1, v2);
}

unint64_t sub_23C5FFB04(uint64_t a1)
{
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
  v2 = sub_23C8716E4();

  return sub_23C600218(a1, v2);
}

unint64_t sub_23C5FFB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C8720F4();
  sub_23C871804();
  sub_23C871804();
  v8 = sub_23C872124();

  return sub_23C6003C4(a1, a2, a3, a4, v8);
}

unint64_t sub_23C5FFC28(void *a1)
{
  sub_23C8720F4();
  sub_23C872114();
  if (a1)
  {
    v2 = a1;
    sub_23C871B44();
  }

  v3 = sub_23C872124();

  return sub_23C6004C4(a1, v3);
}

unint64_t sub_23C5FFCB8(uint64_t a1)
{
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
  sub_23C8716F4();
  v2 = sub_23C872124();

  return sub_23C6005A8(a1, v2);
}

unint64_t sub_23C5FFD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23C872014())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23C5FFE10(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23C5FFE7C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23C5FFEE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23C59A4C0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EED7590](v9, a1);
      sub_23C600810(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23C5FFFB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_23C870E34();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23C871B34();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23C600074(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for EventTypeIdPair(0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_23C600748(*(v2 + 48) + v13 * v10, v8, type metadata accessor for EventTypeIdPair);
      if (*v8 == v12)
      {
        v14 = sub_23C870B44();
        sub_23C6007B0(v8, type metadata accessor for EventTypeIdPair);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_23C6007B0(v8, type metadata accessor for EventTypeIdPair);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_23C600218(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_23C600704(&qword_27E1FB418, MEMORY[0x277CC9610]);
      v15 = sub_23C871754();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_23C6003C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_23C872014() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_23C872014() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_23C6004C4(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_23C870E34();
          v10 = v9;
          v11 = a1;
          v12 = sub_23C871B34();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23C6005A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0) - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_23C600748(*(v2 + 48) + v11 * v9, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v12 = sub_23C870B44();
      sub_23C6007B0(v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_23C600704(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23C870B74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C600748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C6007B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_23C6009E8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ISEventGraph_eventsInternal);
  v2 = sub_23C595644(MEMORY[0x277D84F90]);
  if (v1 >> 62)
  {
LABEL_33:
    v3 = sub_23C871C34();
    if (v3)
    {
      goto LABEL_3;
    }

    return v2;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return v2;
  }

LABEL_3:
  v4 = 0;
  v30 = v1 & 0xFFFFFFFFFFFFFF8;
  v31 = v1 & 0xC000000000000001;
  v29 = v1;
  while (1)
  {
    if (v31)
    {
      MEMORY[0x23EED7610](v4, v1);
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v4 >= *(v30 + 16))
      {
        goto LABEL_30;
      }

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v1 = v3;
    v6 = sub_23C870CA4();
    if (!v6)
    {
      break;
    }

    v7 = v6;
    ObjectType = swift_getObjectType();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_23C5FF958(ObjectType);
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_31;
    }

    v15 = v10;
    if (v2[3] >= v14)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_23C643E00();
        if (v15)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_23C63E44C(v14, isUniquelyReferenced_nonNull_native);
      v16 = sub_23C5FF958(ObjectType);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_36;
      }

      v11 = v16;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    v2[(v11 >> 6) + 8] |= 1 << v11;
    *(v2[6] + 8 * v11) = ObjectType;
    *(v2[7] + 8 * v11) = MEMORY[0x277D84F90];
    v18 = v2[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_32;
    }

    v2[2] = v20;
LABEL_17:
    v21 = v2[7];
    v22 = *(v21 + 8 * v11);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 8 * v11) = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_23C584828(0, *(v22 + 2) + 1, 1, v22);
      *(v21 + 8 * v11) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      *(v21 + 8 * v11) = sub_23C584828((v24 > 1), v25 + 1, 1, v22);
    }

    v26 = *(v21 + 8 * v11);
    *(v26 + 16) = v25 + 1;
    *(v26 + 8 * v25 + 32) = v4++;
    v3 = v1;
    v27 = v5 == v1;
    v1 = v29;
    if (v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_36:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C600CC0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_23C600D28(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ISEventGraph_eventsInternal);
  v2 = sub_23C595644(MEMORY[0x277D84F90]);
  if (v1 >> 62)
  {
LABEL_33:
    v3 = sub_23C871C34();
    if (v3)
    {
      goto LABEL_3;
    }

    return v2;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return v2;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    for (i = v4; ; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](i, v1);
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v6 = sub_23C870CB4();
      if (v6)
      {
        break;
      }

      if (v4 == v3)
      {
        return v2;
      }
    }

    v39 = v6;
    ObjectType = swift_getObjectType();
    v8 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = ObjectType;
    v11 = sub_23C5FF958(ObjectType);
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    if (v8[3] >= v14)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v10;
        sub_23C643E00();
        v10 = v34;
      }

      v16 = v8;
      v19 = v11;
      if (v10)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = v10;
      sub_23C63E44C(v14, isUniquelyReferenced_nonNull_native);
      v16 = v8;
      v17 = sub_23C5FF958(v38);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_37;
      }

      v19 = v17;
      if (v15)
      {
        goto LABEL_24;
      }
    }

    v16[(v19 >> 6) + 8] |= 1 << v19;
    *(v16[6] + 8 * v19) = v38;
    *(v16[7] + 8 * v19) = MEMORY[0x277D84F90];
    v20 = v16[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_36;
    }

    v16[2] = v22;
LABEL_24:
    v23 = v16[7];
    v36 = v16;
    v24 = *(v23 + 8 * v19);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v19;
    v26 = v24;
    *(v23 + 8 * v19) = v24;
    if (v25)
    {
      v27 = v36;
    }

    else
    {
      v32 = v19;
      v27 = v36;
      v26 = sub_23C584828(0, *(v26 + 2) + 1, 1, v26);
      *(v23 + 8 * v32) = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    v30 = v39;
    if (v29 >= v28 >> 1)
    {
      v33 = sub_23C584828((v28 > 1), v29 + 1, 1, v26);
      v30 = v39;
      *(v23 + 8 * v37) = v33;
    }

    v31 = *(v23 + 8 * v37);
    *(v31 + 16) = v29 + 1;
    *(v31 + 8 * v29 + 32) = i;
    v2 = v27;
    if (v4 == v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C601038(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(uint64_t *, void *))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_23C601594(v3, a2, a3);
    *(v3 + v4) = v6;
  }

  return v6;
}

void sub_23C60109C(char **a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];

  v6 = sub_23C870D04();
  if (v6)
  {
    v7 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v62 = *a1;
    v11 = sub_23C5FFA08(v7);
    v12 = *(v9 + 2);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      __break(1u);
      goto LABEL_40;
    }

    v15 = v10;
    if (*(v9 + 3) >= v14)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *a1 = v9;
        if (v10)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_23C64485C();
        v9 = v62;
        *a1 = v62;
        if (v15)
        {
LABEL_15:
          v2 = *(v9 + 7);
          v9 = *(v2 + 8 * v11);
          v35 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 8 * v11) = v9;
          if (v35)
          {
LABEL_16:
            v37 = *(v9 + 2);
            v36 = *(v9 + 3);
            if (v37 >= v36 >> 1)
            {
              *(v2 + 8 * v11) = sub_23C584828((v36 > 1), v37 + 1, 1, v9);
            }

            v38 = *(v2 + 8 * v11);
            *(v38 + 16) = v37 + 1;
            *(v38 + 8 * v37 + 32) = v4;
            return;
          }

LABEL_40:
          v9 = sub_23C584828(0, *(v9 + 2) + 1, 1, v9);
          *(v2 + 8 * v11) = v9;
          goto LABEL_16;
        }
      }

LABEL_14:
      sub_23C64BCC4();
      v34 = v7;
      goto LABEL_15;
    }

    sub_23C63F7A4(v14, isUniquelyReferenced_nonNull_native);
    v9 = v62;
    v16 = sub_23C5FFA08(v7);
    if ((v15 & 1) == (v17 & 1))
    {
      v11 = v16;
      *a1 = v62;
      if (v15)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_23C870E34();
    sub_23C872064();
    __break(1u);
LABEL_50:
    sub_23C872064();
    __break(1u);
    return;
  }

  v18 = *(v5 + 24);
  v19 = OrderedEvent.linkedComponentIdentifiers()();
  v21 = v20;

  if (!v19)
  {

    return;
  }

  v60 = v21;
  v61 = v4;
  v22 = v19;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *a1;
  v63 = *a1;
  v25 = v22;
  v26 = sub_23C5FFA08(v22);
  v28 = v27;
  v29 = *(v24 + 2);
  v30 = (v27 & 1) == 0;
  sub_23C870E34();
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    __break(1u);
LABEL_44:
    v24 = sub_23C584828(0, *(v24 + 2) + 1, 1, v24);
    *(v28 + 8 * v26) = v24;
    goto LABEL_25;
  }

  if (*(v24 + 3) >= v31)
  {
    v30 = v25;
    if ((v23 & 1) == 0)
    {
      sub_23C64485C();
      v24 = v63;
    }
  }

  else
  {
    sub_23C63F7A4(v31, v23);
    v24 = v63;
    v30 = v25;
    v32 = sub_23C5FFA08(v25);
    if ((v28 & 1) != (v33 & 1))
    {
      goto LABEL_50;
    }

    v26 = v32;
  }

  v25 = v61;
  *a1 = v24;
  if ((v28 & 1) == 0)
  {
    sub_23C64BCC4();
    v39 = v30;
  }

  v28 = *(v24 + 7);
  v24 = *(v28 + 8 * v26);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 8 * v26) = v24;
  if ((v40 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_25:
  v42 = *(v24 + 2);
  v41 = *(v24 + 3);
  if (v42 >= v41 >> 1)
  {
    *(v28 + 8 * v26) = sub_23C584828((v41 > 1), v42 + 1, 1, v24);
  }

  v43 = *(v28 + 8 * v26);
  *(v43 + 16) = v42 + 1;
  *(v43 + 8 * v42 + 32) = v25;
  v44 = v60;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *a1;
  v64 = *a1;
  v48 = sub_23C5FFA08(v44);
  v49 = *(v46 + 2);
  v50 = (v47 & 1) == 0;
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
    __break(1u);
    goto LABEL_46;
  }

  v52 = v47;
  if (*(v46 + 3) >= v51)
  {
    if (v45)
    {
      *a1 = v46;
      if (v47)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_23C64485C();
      v46 = v64;
      *a1 = v64;
      if (v52)
      {
        goto LABEL_35;
      }
    }

LABEL_34:
    sub_23C64BCC4();
    v55 = v44;
    goto LABEL_35;
  }

  sub_23C63F7A4(v51, v45);
  v46 = v64;
  v53 = sub_23C5FFA08(v44);
  if ((v52 & 1) != (v54 & 1))
  {
    goto LABEL_50;
  }

  v48 = v53;
  *a1 = v64;
  if ((v52 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_35:
  v45 = *(v46 + 7);
  v46 = *(v45 + 8 * v48);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *(v45 + 8 * v48) = v46;
  if ((v56 & 1) == 0)
  {
LABEL_46:
    v46 = sub_23C584828(0, *(v46 + 2) + 1, 1, v46);
    *(v45 + 8 * v48) = v46;
  }

  v58 = *(v46 + 2);
  v57 = *(v46 + 3);
  if (v58 >= v57 >> 1)
  {
    *(v45 + 8 * v48) = sub_23C584828((v57 > 1), v58 + 1, 1, v46);
  }

  v59 = *(v45 + 8 * v48);
  *(v59 + 16) = v58 + 1;
  *(v59 + 8 * v58 + 32) = v25;
}