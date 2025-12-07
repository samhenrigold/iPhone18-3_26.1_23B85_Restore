uint64_t _s23LighthouseDataProcessor27TranscriptProtoDialogFormatO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EC0, &qword_20E3420C0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v54 - v30;
  v32 = *(v29 + 56);
  sub_20E1E14FC(v64, &v54 - v30, type metadata accessor for TranscriptProtoDialogFormat);
  sub_20E1E14FC(v65, &v31[v32], type metadata accessor for TranscriptProtoDialogFormat);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_20E1E14FC(v31, v25, type metadata accessor for TranscriptProtoDialogFormat);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v60;
          sub_20E1EF280(&v31[v32], v60, type metadata accessor for TranscriptProtoSonicText);
          if (*v25 == *v34 && v25[1] == v34[1] || (sub_20E322D60() & 1) != 0)
          {
            sub_20E3221C0();
            sub_20E1EF2E8();
            v35 = sub_20E322850();
            sub_20E1E1564(v34, type metadata accessor for TranscriptProtoSonicText);
            if (v35)
            {
              v36 = type metadata accessor for TranscriptProtoSonicText;
              v37 = v25;
LABEL_43:
              sub_20E1E1564(v37, v36);
              sub_20E1E1564(v31, type metadata accessor for TranscriptProtoDialogFormat);
              v39 = 1;
              return v39 & 1;
            }
          }

          else
          {
            sub_20E1E1564(v34, type metadata accessor for TranscriptProtoSonicText);
          }

          v52 = type metadata accessor for TranscriptProtoSonicText;
          v51 = v25;
          goto LABEL_51;
        }

        v42 = type metadata accessor for TranscriptProtoSonicText;
        v43 = v25;
LABEL_36:
        sub_20E1E1564(v43, v42);
        sub_20E04875C(v31, &qword_27C868EC0, &qword_20E3420C0);
LABEL_52:
        v39 = 0;
        return v39 & 1;
      }

      sub_20E1E14FC(v31, v22, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v42 = type metadata accessor for TranscriptProtoGeneratedText;
        v43 = v22;
        goto LABEL_36;
      }

      v45 = v62;
      sub_20E1EF280(&v31[v32], v62, type metadata accessor for TranscriptProtoGeneratedText);
      if (*v22 == *v45 && v22[1] == v45[1] || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v46 = type metadata accessor for TranscriptProtoGeneratedText;
          sub_20E1E1564(v45, type metadata accessor for TranscriptProtoGeneratedText);
          v37 = v22;
LABEL_42:
          v36 = v46;
          goto LABEL_43;
        }
      }

      v50 = type metadata accessor for TranscriptProtoGeneratedText;
      sub_20E1E1564(v45, type metadata accessor for TranscriptProtoGeneratedText);
      v51 = v22;
    }

    else
    {
      sub_20E1E14FC(v31, v27, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload())
      {
        v42 = type metadata accessor for TranscriptProtoStaticText;
        v43 = v27;
        goto LABEL_36;
      }

      v49 = v55;
      sub_20E1EF280(&v31[v32], v55, type metadata accessor for TranscriptProtoStaticText);
      if (*v27 == *v49 && v27[1] == v49[1] || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v46 = type metadata accessor for TranscriptProtoStaticText;
          sub_20E1E1564(v49, type metadata accessor for TranscriptProtoStaticText);
          v37 = v27;
          goto LABEL_42;
        }
      }

      v50 = type metadata accessor for TranscriptProtoStaticText;
      sub_20E1E1564(v49, type metadata accessor for TranscriptProtoStaticText);
      v51 = v27;
    }

    v52 = v50;
LABEL_51:
    sub_20E1E1564(v51, v52);
    sub_20E1E1564(v31, type metadata accessor for TranscriptProtoDialogFormat);
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_20E1E14FC(v31, v19, type metadata accessor for TranscriptProtoDialogFormat);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v42 = type metadata accessor for TranscriptProtoUnableToGenerate;
      v43 = v19;
      goto LABEL_36;
    }

    v44 = v59;
    sub_20E1EF280(&v31[v32], v59, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_20E3221C0();
    sub_20E1EF2E8();
    v39 = sub_20E322850();
    v40 = type metadata accessor for TranscriptProtoUnableToGenerate;
    sub_20E1E1564(v44, type metadata accessor for TranscriptProtoUnableToGenerate);
    v41 = v19;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_20E1E14FC(v31, v13, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v47 = v63;
        sub_20E1EF280(&v31[v32], v63, type metadata accessor for TranscriptProtoCATDialog);
        if (*v13 == *v47 && v13[1] == v47[1] || (sub_20E322D60() & 1) != 0)
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          v48 = sub_20E322850();
          sub_20E1E1564(v47, type metadata accessor for TranscriptProtoCATDialog);
          if (v48)
          {
            v36 = type metadata accessor for TranscriptProtoCATDialog;
            v37 = v13;
            goto LABEL_43;
          }
        }

        else
        {
          sub_20E1E1564(v47, type metadata accessor for TranscriptProtoCATDialog);
        }

        v52 = type metadata accessor for TranscriptProtoCATDialog;
        v51 = v13;
        goto LABEL_51;
      }

      v42 = type metadata accessor for TranscriptProtoCATDialog;
      v43 = v13;
      goto LABEL_36;
    }

    sub_20E1E14FC(v31, v16, type metadata accessor for TranscriptProtoDialogFormat);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v42 = type metadata accessor for TranscriptProtoSuppressed;
      v43 = v16;
      goto LABEL_36;
    }

    v38 = v61;
    sub_20E1EF280(&v31[v32], v61, type metadata accessor for TranscriptProtoSuppressed);
    sub_20E3221C0();
    sub_20E1EF2E8();
    v39 = sub_20E322850();
    v40 = type metadata accessor for TranscriptProtoSuppressed;
    sub_20E1E1564(v38, type metadata accessor for TranscriptProtoSuppressed);
    v41 = v16;
  }

  sub_20E1E1564(v41, v40);
  sub_20E1E1564(v31, type metadata accessor for TranscriptProtoDialogFormat);
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor51TranscriptProtoSystemPromptResolutionUserActionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EA8, &qword_20E3420A0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v43 - v27;
  v29 = *(v26 + 56);
  sub_20E1E14FC(v47, &v43 - v27, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_20E1E14FC(v48, &v28[v29], type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E1E14FC(v28, v16, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v31 = *v16 == *&v28[v29];
LABEL_21:
        sub_20E1E1564(v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        return v31 & 1;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v34 = v46;
      sub_20E1E14FC(v28, v46, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v35 = v44;
        sub_20E1EF280(&v28[v29], v44, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        if (*v34 == *v35)
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          v42 = sub_20E322850();
          sub_20E1E1564(v35, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
          if (v42)
          {
            sub_20E1E1564(v34, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
            sub_20E1E1564(v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
            v31 = 1;
            return v31 & 1;
          }
        }

        else
        {
          sub_20E1E1564(v35, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        }

        sub_20E1E1564(v34, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        sub_20E1E1564(v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        goto LABEL_27;
      }

      v39 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution;
      v40 = v34;
    }

    else
    {
      sub_20E1E14FC(v28, v11, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v38 = v45;
        sub_20E1EF280(&v28[v29], v45, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v31 = sub_20E322850();
        sub_20E1E1564(v38, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
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
      sub_20E1E14FC(v28, v22, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20E1EF280(&v28[v29], v7, type metadata accessor for ToolKitProtoTypedValue);
        v31 = static ToolKitProtoTypedValue.== infix(_:_:)(v22, v7);
        sub_20E1E1564(v7, type metadata accessor for ToolKitProtoTypedValue);
        v32 = v22;
        v33 = type metadata accessor for ToolKitProtoTypedValue;
LABEL_20:
        sub_20E1E1564(v32, v33);
        goto LABEL_21;
      }

      v39 = type metadata accessor for ToolKitProtoTypedValue;
      v40 = v22;
LABEL_25:
      sub_20E1E1564(v40, v39);
      goto LABEL_26;
    }

    sub_20E1E14FC(v28, v19, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v36 = *v19;
      goto LABEL_17;
    }

LABEL_26:
    sub_20E04875C(v28, &qword_27C868EA8, &qword_20E3420A0);
LABEL_27:
    v31 = 0;
    return v31 & 1;
  }

  sub_20E1E14FC(v28, v24, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_26;
  }

  v36 = *v24;
LABEL_17:
  v37 = v36 ^ v28[v29];
  sub_20E1E1564(v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  v31 = v37 ^ 1;
  return v31 & 1;
}

uint64_t _s23LighthouseDataProcessor33TranscriptProtoRequestContentEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F38, &qword_20E342138);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v40 - v26;
  v28 = *(v25 + 56);
  sub_20E1E14FC(v42, &v40 - v26, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_20E1E14FC(v43, &v27[v28], type metadata accessor for TranscriptProtoRequestContentEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v27, v18, type metadata accessor for TranscriptProtoRequestContentEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v30 = type metadata accessor for TranscriptProtoSystemPromptResolution;
        v31 = v18;
        goto LABEL_15;
      }

      v32 = &v27[v28];
      v33 = v40;
      sub_20E1EF280(v32, v40, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v34 = _s23LighthouseDataProcessor37TranscriptProtoSystemPromptResolutionV2eeoiySbAC_ACtFZ_0(v18, v33);
      sub_20E1E1564(v33, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v35 = v18;
      v36 = type metadata accessor for TranscriptProtoSystemPromptResolution;
LABEL_18:
      sub_20E1E1564(v35, v36);
      sub_20E1E1564(v27, type metadata accessor for TranscriptProtoRequestContentEnum);
      return v34 & 1;
    }

    sub_20E1E14FC(v27, v15, type metadata accessor for TranscriptProtoRequestContentEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v30 = type metadata accessor for TranscriptProtoRequestContentStopContent;
      v31 = v15;
      goto LABEL_15;
    }

    v38 = v41;
    sub_20E1EF280(&v27[v28], v41, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_20E3221C0();
    sub_20E1EF2E8();
    v34 = sub_20E322850();
    v37 = type metadata accessor for TranscriptProtoRequestContentStopContent;
    sub_20E1E1564(v38, type metadata accessor for TranscriptProtoRequestContentStopContent);
    v35 = v15;
LABEL_17:
    v36 = v37;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v27, v21, type metadata accessor for TranscriptProtoRequestContentEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
      v31 = v21;
      goto LABEL_15;
    }

    sub_20E1EF280(&v27[v28], v8, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v34 = static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)();
    v37 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
    sub_20E1E1564(v8, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v35 = v21;
    goto LABEL_17;
  }

  sub_20E1E14FC(v27, v23, type metadata accessor for TranscriptProtoRequestContentEnum);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E1EF280(&v27[v28], v11, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v34 = static TranscriptProtoRequestContentTextContent.== infix(_:_:)();
    v37 = type metadata accessor for TranscriptProtoRequestContentTextContent;
    sub_20E1E1564(v11, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v35 = v23;
    goto LABEL_17;
  }

  v30 = type metadata accessor for TranscriptProtoRequestContentTextContent;
  v31 = v23;
LABEL_15:
  sub_20E1E1564(v31, v30);
  sub_20E04875C(v27, &qword_27C868F38, &qword_20E342138);
  v34 = 0;
  return v34 & 1;
}

uint64_t _s23LighthouseDataProcessor21TranscriptProtoUitypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EB8, &qword_20E3420B8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v38 - v23;
  v25 = *(v22 + 56);
  sub_20E1E14FC(a1, &v38 - v23, type metadata accessor for TranscriptProtoUitype);
  sub_20E1E14FC(v45, &v24[v25], type metadata accessor for TranscriptProtoUitype);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v24, v15, type metadata accessor for TranscriptProtoUitype);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v27 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
        v28 = v15;
        goto LABEL_27;
      }

      v29 = v44;
      sub_20E1EF280(&v24[v25], v44, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      if (sub_20E15F7B0(*v15, v15[1], *v29, v29[1]) && (v15[2] == v29[2] && v15[3] == v29[3] || (sub_20E322D60() & 1) != 0))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v30 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
          sub_20E1E1564(v29, type metadata accessor for TranscriptProtoPluginSnippetPayload);
          v31 = v15;
LABEL_23:
          sub_20E1E1564(v31, v30);
          sub_20E1E1564(v24, type metadata accessor for TranscriptProtoUitype);
          v34 = 1;
          return v34 & 1;
        }
      }

      v35 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
      sub_20E1E1564(v29, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      v36 = v15;
    }

    else
    {
      sub_20E1E14FC(v24, v12, type metadata accessor for TranscriptProtoUitype);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v27 = type metadata accessor for TranscriptProtoControlPayload;
        v28 = v12;
        goto LABEL_27;
      }

      v33 = v43;
      sub_20E1EF280(&v24[v25], v43, type metadata accessor for TranscriptProtoControlPayload);
      if (sub_20E15F7B0(*v12, *(v12 + 1), *v33, *(v33 + 8)))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v30 = type metadata accessor for TranscriptProtoControlPayload;
          sub_20E1E1564(v33, type metadata accessor for TranscriptProtoControlPayload);
          v31 = v12;
          goto LABEL_23;
        }
      }

      v35 = type metadata accessor for TranscriptProtoControlPayload;
      sub_20E1E1564(v33, type metadata accessor for TranscriptProtoControlPayload);
      v36 = v12;
    }

LABEL_32:
    sub_20E1E1564(v36, v35);
    sub_20E1E1564(v24, type metadata accessor for TranscriptProtoUitype);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v24, v18, type metadata accessor for TranscriptProtoUitype);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = type metadata accessor for TranscriptProtoLiveActivityPayload;
      v28 = v18;
      goto LABEL_27;
    }

    v32 = v42;
    sub_20E1EF280(&v24[v25], v42, type metadata accessor for TranscriptProtoLiveActivityPayload);
    if (*v18 == *v32 && v18[1] == v32[1] || (sub_20E322D60() & 1) != 0)
    {
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v30 = type metadata accessor for TranscriptProtoLiveActivityPayload;
        sub_20E1E1564(v32, type metadata accessor for TranscriptProtoLiveActivityPayload);
        v31 = v18;
        goto LABEL_23;
      }
    }

    v35 = type metadata accessor for TranscriptProtoLiveActivityPayload;
    sub_20E1E1564(v32, type metadata accessor for TranscriptProtoLiveActivityPayload);
    v36 = v18;
    goto LABEL_32;
  }

  sub_20E1E14FC(v24, v20, type metadata accessor for TranscriptProtoUitype);
  if (swift_getEnumCaseMultiPayload())
  {
    v27 = type metadata accessor for TranscriptProtoArchiveViewPayload;
    v28 = v20;
LABEL_27:
    sub_20E1E1564(v28, v27);
    sub_20E04875C(v24, &qword_27C868EB8, &qword_20E3420B8);
LABEL_33:
    v34 = 0;
    return v34 & 1;
  }

  sub_20E1EF280(&v24[v25], v8, type metadata accessor for TranscriptProtoArchiveViewPayload);
  v34 = _s23LighthouseDataProcessor33TranscriptProtoArchiveViewPayloadV2eeoiySbAC_ACtFZ_0(v20, v8);
  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoArchiveViewPayload);
  sub_20E1E1564(v20, type metadata accessor for TranscriptProtoArchiveViewPayload);
  sub_20E1E1564(v24, type metadata accessor for TranscriptProtoUitype);
  return v34 & 1;
}

BOOL _s23LighthouseDataProcessor20TranscriptProtoLabelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v19 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682F8, &qword_20E3420B0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = *(v11 + 56);
  sub_20E1E14FC(a1, &v19 - v12, type metadata accessor for TranscriptProtoLabel);
  sub_20E1E14FC(a2, &v13[v14], type metadata accessor for TranscriptProtoLabel);
  sub_20E1EF280(v13, v9, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_20E1EF280(&v13[v14], v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  v15 = *v9 == *v7 && v9[1] == v7[1];
  v17 = 0;
  if (v15 || (sub_20E322D60() & 1) != 0)
  {
    v16 = v9[2] == v7[2] && v9[3] == v7[3];
    if (v16 || (sub_20E322D60() & 1) != 0)
    {
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v17 = 1;
      }
    }
  }

  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_20E1E1564(v9, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  return v17;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoValueExpressionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E88, &qword_20E342080);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v37 - v23;
  v25 = (&v37 + *(v22 + 56) - v23);
  sub_20E1E14FC(a1, &v37 - v23, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_20E1E14FC(v40, v25, type metadata accessor for TranscriptProtoValueExpressionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_20E1E14FC(v24, v7, type metadata accessor for TranscriptProtoValueExpressionEnum);
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
            v30 = sub_20E322D60();

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
        sub_20E1E1564(v24, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v33 = 1;
        return v33 & 1;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_20E1E14FC(v24, v12, type metadata accessor for TranscriptProtoValueExpressionEnum);
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
      sub_20E1E14FC(v24, v39, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v35 = v38;
        sub_20E1EF280(v25, v38, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        if ((sub_20E14A924(*v34, *v35) & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
        {
          sub_20E1E1564(v35, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
          sub_20E1E1564(v34, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
LABEL_39:
          sub_20E1E1564(v24, type metadata accessor for TranscriptProtoValueExpressionEnum);
          goto LABEL_36;
        }

        sub_20E1E1564(v35, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        sub_20E1E1564(v34, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        goto LABEL_33;
      }

      sub_20E1E1564(v34, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    }

LABEL_35:
    sub_20E04875C(v24, &qword_27C868E88, &qword_20E342080);
LABEL_36:
    v33 = 0;
    return v33 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E1E14FC(v24, v18, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_35;
      }

      v31 = *v18 == *v25;
    }

    else
    {
      sub_20E1E14FC(v24, v15, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_35;
      }

      v31 = *v15 == *v25;
    }

    v33 = v31;
    sub_20E1E1564(v24, type metadata accessor for TranscriptProtoValueExpressionEnum);
  }

  else
  {
    sub_20E1E14FC(v24, v20, type metadata accessor for TranscriptProtoValueExpressionEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_35;
    }

    v32 = *v20 ^ *v25;
    sub_20E1E1564(v24, type metadata accessor for TranscriptProtoValueExpressionEnum);
    v33 = v32 ^ 1;
  }

  return v33 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoExpressionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v250 = a1;
  v251 = a2;
  v2 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  MEMORY[0x28223BE20](v2 - 8);
  v224 = (&v189 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  MEMORY[0x28223BE20](v4 - 8);
  v223 = (&v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  MEMORY[0x28223BE20](v6 - 8);
  v222 = (&v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  MEMORY[0x28223BE20](ToolsExpression - 8);
  v221 = (&v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  MEMORY[0x28223BE20](SpansExpression - 8);
  v220 = (&v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  MEMORY[0x28223BE20](ContextExpression - 8);
  v219 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for TranscriptProtoFormatExpression(0);
  MEMORY[0x28223BE20](v193);
  v218 = (&v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v192 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  MEMORY[0x28223BE20](v192);
  v217 = (&v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  MEMORY[0x28223BE20](v16 - 8);
  v216 = &v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranscriptProtoOpenExpression(0);
  MEMORY[0x28223BE20](v18 - 8);
  v215 = (&v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  MEMORY[0x28223BE20](MentionedAppsExpression - 8);
  v214 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  MEMORY[0x28223BE20](v22 - 8);
  v213 = &v189 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  MEMORY[0x28223BE20](v24 - 8);
  v212 = &v189 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  MEMORY[0x28223BE20](v26 - 8);
  v211 = &v189 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TranscriptProtoCancelExpression(0);
  MEMORY[0x28223BE20](v28 - 8);
  v210 = (&v189 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for TranscriptProtoRejectExpression(0);
  MEMORY[0x28223BE20](v30 - 8);
  v209 = (&v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for TranscriptProtoUndoExpression(0);
  MEMORY[0x28223BE20](v32 - 8);
  v207 = (&v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  MEMORY[0x28223BE20](v191);
  v208 = (&v189 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  MEMORY[0x28223BE20](v35 - 8);
  v206 = (&v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  MEMORY[0x28223BE20](v37 - 8);
  v205 = (&v189 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for TranscriptProtoSearchExpression(0);
  MEMORY[0x28223BE20](v39 - 8);
  v204 = (&v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  MEMORY[0x28223BE20](v41 - 8);
  v203 = (&v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for TranscriptProtoPickExpression(0);
  MEMORY[0x28223BE20](v43 - 8);
  v201 = (&v189 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v190 = type metadata accessor for TranscriptProtoSayExpression(0);
  MEMORY[0x28223BE20](v190);
  v202 = (&v189 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for TranscriptProtoCallExpression(0);
  MEMORY[0x28223BE20](v46 - 8);
  v200 = (&v189 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  MEMORY[0x28223BE20](updated - 8);
  v199 = (&v189 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for TranscriptProtoIndexExpression(0);
  MEMORY[0x28223BE20](v50 - 8);
  v198 = (&v189 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for TranscriptProtoInfixExpression(0);
  MEMORY[0x28223BE20](v52 - 8);
  v197 = &v189 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  MEMORY[0x28223BE20](v54 - 8);
  v196 = &v189 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v56 - 8);
  v195 = &v189 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TranscriptProtoValueExpression(0);
  MEMORY[0x28223BE20](v58 - 8);
  v194 = &v189 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v60 = MEMORY[0x28223BE20](v249);
  v248 = (&v189 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = MEMORY[0x28223BE20](v60);
  v247 = (&v189 - v63);
  v64 = MEMORY[0x28223BE20](v62);
  v245 = (&v189 - v65);
  v66 = MEMORY[0x28223BE20](v64);
  v243 = (&v189 - v67);
  v68 = MEMORY[0x28223BE20](v66);
  v241 = (&v189 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v242 = &v189 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v246 = &v189 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v244 = &v189 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v240 = &v189 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v238 = (&v189 - v79);
  v80 = MEMORY[0x28223BE20](v78);
  v239 = &v189 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v237 = &v189 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v236 = &v189 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v235 = &v189 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v233 = (&v189 - v89);
  v90 = MEMORY[0x28223BE20](v88);
  v232 = (&v189 - v91);
  v92 = MEMORY[0x28223BE20](v90);
  v231 = (&v189 - v93);
  v94 = MEMORY[0x28223BE20](v92);
  v234 = &v189 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v230 = (&v189 - v97);
  v98 = MEMORY[0x28223BE20](v96);
  v228 = (&v189 - v99);
  v100 = MEMORY[0x28223BE20](v98);
  v227 = (&v189 - v101);
  v102 = MEMORY[0x28223BE20](v100);
  v226 = (&v189 - v103);
  v104 = MEMORY[0x28223BE20](v102);
  v225 = (&v189 - v105);
  v106 = MEMORY[0x28223BE20](v104);
  v229 = &v189 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v110 = (&v189 - v109);
  v111 = MEMORY[0x28223BE20](v108);
  v113 = (&v189 - v112);
  v114 = MEMORY[0x28223BE20](v111);
  v116 = (&v189 - v115);
  v117 = MEMORY[0x28223BE20](v114);
  v119 = &v189 - v118;
  v120 = MEMORY[0x28223BE20](v117);
  v122 = &v189 - v121;
  v123 = MEMORY[0x28223BE20](v120);
  v125 = &v189 - v124;
  MEMORY[0x28223BE20](v123);
  v127 = &v189 - v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E90, &qword_20E342088);
  v129 = MEMORY[0x28223BE20](v128 - 8);
  v131 = &v189 - v130;
  v132 = *(v129 + 56);
  sub_20E1E14FC(v250, &v189 - v130, type metadata accessor for TranscriptProtoExpressionEnum);
  v250 = v132;
  sub_20E1E14FC(v251, &v131[v132], type metadata accessor for TranscriptProtoExpressionEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E1E14FC(v131, v125, type metadata accessor for TranscriptProtoExpressionEnum);
      v162 = v250;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v163 = v195;
        sub_20E1EF280(&v131[v162], v195, type metadata accessor for TranscriptProtoStatementID);
        v138 = static TranscriptProtoStatementID.== infix(_:_:)();
        v154 = type metadata accessor for TranscriptProtoStatementID;
        sub_20E1E1564(v163, type metadata accessor for TranscriptProtoStatementID);
        v159 = v125;
        goto LABEL_76;
      }

      v134 = type metadata accessor for TranscriptProtoStatementID;
      v135 = v125;
      goto LABEL_110;
    case 2u:
      sub_20E1E14FC(v131, v122, type metadata accessor for TranscriptProtoExpressionEnum);
      v152 = v250;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v153 = v196;
        sub_20E1EF280(&v131[v152], v196, type metadata accessor for TranscriptProtoPrefixExpression);
        v138 = _s23LighthouseDataProcessor31TranscriptProtoPrefixExpressionV2eeoiySbAC_ACtFZ_0(v122, v153);
        v148 = type metadata accessor for TranscriptProtoPrefixExpression;
        v154 = type metadata accessor for TranscriptProtoPrefixExpression;
        v155 = v153;
        goto LABEL_63;
      }

      v184 = type metadata accessor for TranscriptProtoPrefixExpression;
      goto LABEL_105;
    case 3u:
      sub_20E1E14FC(v131, v119, type metadata accessor for TranscriptProtoExpressionEnum);
      v157 = v250;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v158 = v197;
        sub_20E1EF280(&v131[v157], v197, type metadata accessor for TranscriptProtoInfixExpression);
        v138 = _s23LighthouseDataProcessor30TranscriptProtoInfixExpressionV2eeoiySbAC_ACtFZ_0(v119, v158);
        sub_20E1E1564(v158, type metadata accessor for TranscriptProtoInfixExpression);
        v159 = v119;
        v160 = type metadata accessor for TranscriptProtoInfixExpression;
        goto LABEL_77;
      }

      v134 = type metadata accessor for TranscriptProtoInfixExpression;
      v135 = v119;
      goto LABEL_110;
    case 4u:
      sub_20E1E14FC(v131, v116, type metadata accessor for TranscriptProtoExpressionEnum);
      v143 = v250;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v137 = v198;
        sub_20E1EF280(&v131[v143], v198, type metadata accessor for TranscriptProtoIndexExpression);
        v138 = sub_20E170670(v116, v137);
        v139 = type metadata accessor for TranscriptProtoIndexExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoIndexExpression;
      goto LABEL_109;
    case 5u:
      sub_20E1E14FC(v131, v113, type metadata accessor for TranscriptProtoExpressionEnum);
      v166 = v250;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v167 = v199;
        sub_20E1EF280(&v131[v166], v199, type metadata accessor for TranscriptProtoUpdateParametersExpression);
        v138 = sub_20E1626E4(v113, v167);
        v154 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
        sub_20E1E1564(v167, type metadata accessor for TranscriptProtoUpdateParametersExpression);
        v159 = v113;
        goto LABEL_76;
      }

      v134 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
      v135 = v113;
      goto LABEL_110;
    case 6u:
      sub_20E1E14FC(v131, v110, type metadata accessor for TranscriptProtoExpressionEnum);
      v170 = v250;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v171 = v200;
        sub_20E1EF280(&v131[v170], v200, type metadata accessor for TranscriptProtoCallExpression);
        v138 = _s23LighthouseDataProcessor29TranscriptProtoCallExpressionV2eeoiySbAC_ACtFZ_0(v110, v171);
        v154 = type metadata accessor for TranscriptProtoCallExpression;
        sub_20E1E1564(v171, type metadata accessor for TranscriptProtoCallExpression);
        v159 = v110;
        goto LABEL_76;
      }

      v134 = type metadata accessor for TranscriptProtoCallExpression;
      v135 = v110;
      goto LABEL_110;
    case 7u:
      v122 = v229;
      sub_20E1E14FC(v131, v229, type metadata accessor for TranscriptProtoExpressionEnum);
      v161 = v250;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v184 = type metadata accessor for TranscriptProtoSayExpression;
        goto LABEL_105;
      }

      v150 = v202;
      sub_20E1EF280(&v131[v161], v202, type metadata accessor for TranscriptProtoSayExpression);
      if (sub_20E14A924(*v122, *v150))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v151 = type metadata accessor for TranscriptProtoSayExpression;
          goto LABEL_68;
        }
      }

      v186 = type metadata accessor for TranscriptProtoSayExpression;
      goto LABEL_118;
    case 8u:
      v116 = v225;
      sub_20E1E14FC(v131, v225, type metadata accessor for TranscriptProtoExpressionEnum);
      v174 = v250;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v137 = v201;
        sub_20E1EF280(&v131[v174], v201, type metadata accessor for TranscriptProtoPickExpression);
        v138 = _s23LighthouseDataProcessor29TranscriptProtoPickExpressionV2eeoiySbAC_ACtFZ_0(v116, v137);
        v139 = type metadata accessor for TranscriptProtoPickExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoPickExpression;
      goto LABEL_109;
    case 9u:
      v116 = v226;
      sub_20E1E14FC(v131, v226, type metadata accessor for TranscriptProtoExpressionEnum);
      v145 = v250;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v137 = v203;
        sub_20E1EF280(&v131[v145], v203, type metadata accessor for TranscriptProtoConfirmExpression);
        v138 = sub_20E16BE2C(v116, v137);
        v139 = type metadata accessor for TranscriptProtoConfirmExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoConfirmExpression;
      goto LABEL_109;
    case 0xAu:
      v116 = v227;
      sub_20E1E14FC(v131, v227, type metadata accessor for TranscriptProtoExpressionEnum);
      v173 = v250;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v137 = v204;
        sub_20E1EF280(&v131[v173], v204, type metadata accessor for TranscriptProtoSearchExpression);
        v138 = _s23LighthouseDataProcessor31TranscriptProtoSearchExpressionV2eeoiySbAC_ACtFZ_0(v116, v137);
        v139 = type metadata accessor for TranscriptProtoSearchExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoSearchExpression;
      goto LABEL_109;
    case 0xBu:
      v116 = v228;
      sub_20E1E14FC(v131, v228, type metadata accessor for TranscriptProtoExpressionEnum);
      v142 = v250;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v137 = v205;
        sub_20E1EF280(&v131[v142], v205, type metadata accessor for TranscriptProtoStructuredSearchExpression);
        v138 = _s23LighthouseDataProcessor41TranscriptProtoStructuredSearchExpressionV2eeoiySbAC_ACtFZ_0(v116, v137);
        v139 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
      goto LABEL_109;
    case 0xCu:
      v116 = v230;
      sub_20E1E14FC(v131, v230, type metadata accessor for TranscriptProtoExpressionEnum);
      v144 = v250;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v137 = v206;
        sub_20E1EF280(&v131[v144], v206, type metadata accessor for TranscriptProtoPickOneExpression);
        v138 = sub_20E16BE14(v116, v137);
        v139 = type metadata accessor for TranscriptProtoPickOneExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoPickOneExpression;
      goto LABEL_109;
    case 0xDu:
      v122 = v234;
      sub_20E1E14FC(v131, v234, type metadata accessor for TranscriptProtoExpressionEnum);
      v169 = v250;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v184 = type metadata accessor for TranscriptProtoResolveToolExpression;
        goto LABEL_105;
      }

      v150 = v208;
      sub_20E1EF280(&v131[v169], v208, type metadata accessor for TranscriptProtoResolveToolExpression);
      if (sub_20E14D9A0(*v122, *v150))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v151 = type metadata accessor for TranscriptProtoResolveToolExpression;
          goto LABEL_68;
        }
      }

      v186 = type metadata accessor for TranscriptProtoResolveToolExpression;
      goto LABEL_118;
    case 0xEu:
      v116 = v231;
      sub_20E1E14FC(v131, v231, type metadata accessor for TranscriptProtoExpressionEnum);
      v141 = v250;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v137 = v207;
        sub_20E1EF280(&v131[v141], v207, type metadata accessor for TranscriptProtoUndoExpression);
        v138 = sub_20E171320(v116, v137);
        v139 = type metadata accessor for TranscriptProtoUndoExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoUndoExpression;
      goto LABEL_109;
    case 0xFu:
      v116 = v232;
      sub_20E1E14FC(v131, v232, type metadata accessor for TranscriptProtoExpressionEnum);
      v156 = v250;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v137 = v209;
        sub_20E1EF280(&v131[v156], v209, type metadata accessor for TranscriptProtoRejectExpression);
        v138 = sub_20E16C6C4(v116, v137);
        v139 = type metadata accessor for TranscriptProtoRejectExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoRejectExpression;
      goto LABEL_109;
    case 0x10u:
      v116 = v233;
      sub_20E1E14FC(v131, v233, type metadata accessor for TranscriptProtoExpressionEnum);
      v140 = v250;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v137 = v210;
        sub_20E1EF280(&v131[v140], v210, type metadata accessor for TranscriptProtoCancelExpression);
        v138 = sub_20E16DB7C(v116, v137);
        v139 = type metadata accessor for TranscriptProtoCancelExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoCancelExpression;
      goto LABEL_109;
    case 0x11u:
      v122 = v235;
      sub_20E1E14FC(v131, v235, type metadata accessor for TranscriptProtoExpressionEnum);
      v164 = v250;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v147 = v211;
        sub_20E1EF280(&v131[v164], v211, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v138 = sub_20E322850();
        v148 = type metadata accessor for TranscriptProtoNoMatchingToolExpression;
        goto LABEL_62;
      }

      v184 = type metadata accessor for TranscriptProtoNoMatchingToolExpression;
      goto LABEL_105;
    case 0x12u:
      v122 = v236;
      sub_20E1E14FC(v131, v236, type metadata accessor for TranscriptProtoExpressionEnum);
      v172 = v250;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v147 = v212;
        sub_20E1EF280(&v131[v172], v212, type metadata accessor for TranscriptProtoContinuePlanningExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v138 = sub_20E322850();
        v148 = type metadata accessor for TranscriptProtoContinuePlanningExpression;
        goto LABEL_62;
      }

      v184 = type metadata accessor for TranscriptProtoContinuePlanningExpression;
      goto LABEL_105;
    case 0x13u:
      v122 = v237;
      sub_20E1E14FC(v131, v237, type metadata accessor for TranscriptProtoExpressionEnum);
      v177 = v250;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v147 = v213;
        sub_20E1EF280(&v131[v177], v213, type metadata accessor for TranscriptProtoEndOfPlanExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v138 = sub_20E322850();
        v148 = type metadata accessor for TranscriptProtoEndOfPlanExpression;
        goto LABEL_62;
      }

      v184 = type metadata accessor for TranscriptProtoEndOfPlanExpression;
      goto LABEL_105;
    case 0x14u:
      v122 = v239;
      sub_20E1E14FC(v131, v239, type metadata accessor for TranscriptProtoExpressionEnum);
      v165 = v250;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v147 = v214;
        sub_20E1EF280(&v131[v165], v214, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v138 = sub_20E322850();
        v148 = type metadata accessor for TranscriptProtoGetMentionedAppsExpression;
        goto LABEL_62;
      }

      v184 = type metadata accessor for TranscriptProtoGetMentionedAppsExpression;
      goto LABEL_105;
    case 0x15u:
      v116 = v238;
      sub_20E1E14FC(v131, v238, type metadata accessor for TranscriptProtoExpressionEnum);
      v168 = v250;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v137 = v215;
        sub_20E1EF280(&v131[v168], v215, type metadata accessor for TranscriptProtoOpenExpression);
        v138 = sub_20E174CA0(v116, v137);
        v139 = type metadata accessor for TranscriptProtoOpenExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoOpenExpression;
      goto LABEL_109;
    case 0x16u:
      v122 = v240;
      sub_20E1E14FC(v131, v240, type metadata accessor for TranscriptProtoExpressionEnum);
      v176 = v250;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v147 = v216;
        sub_20E1EF280(&v131[v176], v216, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v138 = sub_20E322850();
        v148 = type metadata accessor for TranscriptProtoExplicitResolutionRequest;
        goto LABEL_62;
      }

      v184 = type metadata accessor for TranscriptProtoExplicitResolutionRequest;
      goto LABEL_105;
    case 0x17u:
      v122 = v244;
      sub_20E1E14FC(v131, v244, type metadata accessor for TranscriptProtoExpressionEnum);
      v178 = v250;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        v184 = type metadata accessor for TranscriptProtoPayloadExpression;
        goto LABEL_105;
      }

      v150 = v217;
      sub_20E1EF280(&v131[v178], v217, type metadata accessor for TranscriptProtoPayloadExpression);
      if (sub_20E14A924(*v122, *v150))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v151 = type metadata accessor for TranscriptProtoPayloadExpression;
          goto LABEL_68;
        }
      }

      v186 = type metadata accessor for TranscriptProtoPayloadExpression;
      goto LABEL_118;
    case 0x18u:
      v122 = v246;
      sub_20E1E14FC(v131, v246, type metadata accessor for TranscriptProtoExpressionEnum);
      v149 = v250;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        v184 = type metadata accessor for TranscriptProtoFormatExpression;
        goto LABEL_105;
      }

      v150 = v218;
      sub_20E1EF280(&v131[v149], v218, type metadata accessor for TranscriptProtoFormatExpression);
      if (sub_20E14A924(*v122, *v150))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v151 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_68:
          v179 = v151;
          sub_20E1E1564(v150, v151);
          sub_20E1E1564(v122, v179);
          sub_20E1E1564(v131, type metadata accessor for TranscriptProtoExpressionEnum);
          v138 = 1;
          return v138 & 1;
        }
      }

      v186 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_118:
      v188 = v186;
      sub_20E1E1564(v150, v186);
      sub_20E1E1564(v122, v188);
      sub_20E1E1564(v131, type metadata accessor for TranscriptProtoExpressionEnum);
      goto LABEL_111;
    case 0x19u:
      v122 = v242;
      sub_20E1E14FC(v131, v242, type metadata accessor for TranscriptProtoExpressionEnum);
      v146 = v250;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v147 = v219;
        sub_20E1EF280(&v131[v146], v219, type metadata accessor for TranscriptProtoRetrieveContextExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v138 = sub_20E322850();
        v148 = type metadata accessor for TranscriptProtoRetrieveContextExpression;
LABEL_62:
        v154 = v148;
        v155 = v147;
LABEL_63:
        sub_20E1E1564(v155, v148);
        v159 = v122;
        goto LABEL_76;
      }

      v184 = type metadata accessor for TranscriptProtoRetrieveContextExpression;
LABEL_105:
      v134 = v184;
      v135 = v122;
      goto LABEL_110;
    case 0x1Au:
      v116 = v241;
      sub_20E1E14FC(v131, v241, type metadata accessor for TranscriptProtoExpressionEnum);
      v182 = v250;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v137 = v220;
        sub_20E1EF280(&v131[v182], v220, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
        v138 = sub_20E164EBC(v116, v137);
        v139 = type metadata accessor for TranscriptProtoRetrieveSpansExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoRetrieveSpansExpression;
      goto LABEL_109;
    case 0x1Bu:
      v116 = v243;
      sub_20E1E14FC(v131, v243, type metadata accessor for TranscriptProtoExpressionEnum);
      v136 = v250;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v137 = v221;
        sub_20E1EF280(&v131[v136], v221, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
        v138 = sub_20E164EA4(v116, v137);
        v139 = type metadata accessor for TranscriptProtoRetrieveToolsExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoRetrieveToolsExpression;
      goto LABEL_109;
    case 0x1Cu:
      v116 = v245;
      sub_20E1E14FC(v131, v245, type metadata accessor for TranscriptProtoExpressionEnum);
      v180 = v250;
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        v137 = v222;
        sub_20E1EF280(&v131[v180], v222, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
        v138 = sub_20E164B48(v116, v137);
        v139 = type metadata accessor for TranscriptProtoSiriXFallbackExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoSiriXFallbackExpression;
      goto LABEL_109;
    case 0x1Du:
      v116 = v247;
      sub_20E1E14FC(v131, v247, type metadata accessor for TranscriptProtoExpressionEnum);
      v181 = v250;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v137 = v223;
        sub_20E1EF280(&v131[v181], v223, type metadata accessor for TranscriptProtoUserConfirmExpression);
        v138 = _s23LighthouseDataProcessor36TranscriptProtoUserConfirmExpressionV2eeoiySbAC_ACtFZ_0(v116, v137);
        v139 = type metadata accessor for TranscriptProtoUserConfirmExpression;
        goto LABEL_75;
      }

      v183 = type metadata accessor for TranscriptProtoUserConfirmExpression;
      goto LABEL_109;
    case 0x1Eu:
      v116 = v248;
      sub_20E1E14FC(v131, v248, type metadata accessor for TranscriptProtoExpressionEnum);
      v175 = v250;
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        v137 = v224;
        sub_20E1EF280(&v131[v175], v224, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
        v138 = sub_20E1626B8(v116, v137);
        v139 = type metadata accessor for TranscriptProtoUserDisambiguateExpression;
LABEL_75:
        v154 = v139;
        sub_20E1E1564(v137, v139);
        v159 = v116;
        goto LABEL_76;
      }

      v183 = type metadata accessor for TranscriptProtoUserDisambiguateExpression;
LABEL_109:
      v134 = v183;
      v135 = v116;
      goto LABEL_110;
    default:
      sub_20E1E14FC(v131, v127, type metadata accessor for TranscriptProtoExpressionEnum);
      v133 = v250;
      if (swift_getEnumCaseMultiPayload())
      {
        v134 = type metadata accessor for TranscriptProtoValueExpression;
        v135 = v127;
LABEL_110:
        sub_20E1E1564(v135, v134);
        sub_20E04875C(v131, &qword_27C868E90, &qword_20E342088);
LABEL_111:
        v138 = 0;
      }

      else
      {
        v187 = v194;
        sub_20E1EF280(&v131[v133], v194, type metadata accessor for TranscriptProtoValueExpression);
        v138 = _s23LighthouseDataProcessor30TranscriptProtoValueExpressionV2eeoiySbAC_ACtFZ_0(v127, v187);
        v154 = type metadata accessor for TranscriptProtoValueExpression;
        sub_20E1E1564(v187, type metadata accessor for TranscriptProtoValueExpression);
        v159 = v127;
LABEL_76:
        v160 = v154;
LABEL_77:
        sub_20E1E1564(v159, v160);
        sub_20E1E1564(v131, type metadata accessor for TranscriptProtoExpressionEnum);
      }

      return v138 & 1;
  }
}

uint64_t _s23LighthouseDataProcessor058TranscriptProtoExecutionPreconditionEvaluatorRequestActionI4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E78, &qword_20E342070);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_20E1E14FC(a1, &v27 - v18, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  sub_20E1E14FC(a2, &v19[v20], type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E1E14FC(v19, v13, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E1EF280(&v19[v20], v6, type metadata accessor for TranscriptProtoClientAction);
      v21 = _s23LighthouseDataProcessor27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(v13, v6);
      sub_20E1E1564(v6, type metadata accessor for TranscriptProtoClientAction);
      v22 = v13;
      v23 = type metadata accessor for TranscriptProtoClientAction;
LABEL_9:
      sub_20E1E1564(v22, v23);
      sub_20E1E1564(v19, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
      return v21 & 1;
    }

    v24 = type metadata accessor for TranscriptProtoClientAction;
    v25 = v13;
  }

  else
  {
    sub_20E1E14FC(v19, v15, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E1EF280(&v19[v20], v9, type metadata accessor for TranscriptProtoAction);
      v21 = static TranscriptProtoAction.== infix(_:_:)();
      sub_20E1E1564(v9, type metadata accessor for TranscriptProtoAction);
      v22 = v15;
      v23 = type metadata accessor for TranscriptProtoAction;
      goto LABEL_9;
    }

    v24 = type metadata accessor for TranscriptProtoAction;
    v25 = v15;
  }

  sub_20E1E1564(v25, v24);
  sub_20E04875C(v19, &qword_27C868E78, &qword_20E342070);
  v21 = 0;
  return v21 & 1;
}

BOOL _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableH4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v18 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EE8, &qword_20E3420E8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_20E1E14FC(a1, &v18 - v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_20E1E14FC(a2, &v13[v14], type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_20E1EF280(v13, v9, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_20E1EF280(&v13[v14], v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  v15 = *v9 == *v7 && v9[1] == v7[1];
  v16 = 0;
  if (v15 || (sub_20E322D60()) && sub_20E15F7B0(v9[2], v9[3], v7[2], v7[3]) && v9[4] == v7[4])
  {
    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      v16 = 1;
    }
  }

  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_20E1E1564(v9, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  return v16;
}

uint64_t _s23LighthouseDataProcessor028TranscriptProtoActionFailureG4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  MEMORY[0x28223BE20](v4);
  v34 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  MEMORY[0x28223BE20](v6);
  v33 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v33 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EF0, &qword_20E3420F0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v18 = *(v15 + 56);
  sub_20E1E14FC(a1, &v33 - v16, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_20E1E14FC(a2, &v17[v18], type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E1E14FC(v17, v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v19 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest;
        v20 = v11;
        goto LABEL_50;
      }

      v21 = v34;
      sub_20E1EF280(&v17[v18], v34, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
      v22 = v11[1];
      v23 = v21[1];
      if (v22)
      {
        if (!v23)
        {
          goto LABEL_72;
        }

        v24 = *v11 == *v21 && v22 == v23;
        if (!v24 && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      else if (v23)
      {
LABEL_72:
        v31 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest;
        sub_20E1E1564(v21, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
        v32 = v11;
        goto LABEL_73;
      }

      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v29 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest;
        sub_20E1E1564(v21, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
        v30 = v11;
        goto LABEL_70;
      }

      goto LABEL_72;
    case 2u:
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 3u:
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    default:
      sub_20E1E14FC(v17, v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v19 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError;
        v20 = v13;
LABEL_50:
        sub_20E1E1564(v20, v19);
LABEL_51:
        sub_20E04875C(v17, &qword_27C868EF0, &qword_20E3420F0);
        return 0;
      }

      v26 = v33;
      sub_20E1EF280(&v17[v18], v33, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v27 = *v13 == *v26 && v13[1] == v26[1];
      if (!v27 && (sub_20E322D60() & 1) == 0 || (v13[2] == v26[2] ? (v28 = v13[3] == v26[3]) : (v28 = 0), !v28 && (sub_20E322D60() & 1) == 0 || v13[4] != v26[4] || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0)))
      {
        v31 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError;
        sub_20E1E1564(v26, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
        v32 = v13;
LABEL_73:
        sub_20E1E1564(v32, v31);
        sub_20E1E1564(v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        return 0;
      }

      v29 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError;
      sub_20E1E1564(v26, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v30 = v13;
LABEL_70:
      sub_20E1E1564(v30, v29);
LABEL_71:
      sub_20E1E1564(v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      return 1;
  }
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v295 = a2;
  v296 = a1;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  MEMORY[0x28223BE20](matched);
  v263 = (&v220 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  MEMORY[0x28223BE20](v3 - 8);
  v261 = &v220 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  MEMORY[0x28223BE20](v226);
  v262 = (&v220 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  MEMORY[0x28223BE20](v6 - 8);
  v260 = &v220 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  MEMORY[0x28223BE20](v8 - 8);
  v259 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoSkipStatement(0);
  MEMORY[0x28223BE20](v10 - 8);
  v258 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResult - 8);
  v257 = &v220 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  MEMORY[0x28223BE20](v14 - 8);
  v256 = &v220 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  MEMORY[0x28223BE20](DecorationResult - 8);
  v255 = &v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  MEMORY[0x28223BE20](v18 - 8);
  v254 = &v220 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  MEMORY[0x28223BE20](v20 - 8);
  v253 = &v220 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  MEMORY[0x28223BE20](v22 - 8);
  v251 = &v220 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  MEMORY[0x28223BE20](v24 - 8);
  v250 = &v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TranscriptProtoToolResolution(0);
  MEMORY[0x28223BE20](v26 - 8);
  v249 = &v220 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v221);
  v252 = (&v220 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  MEMORY[0x28223BE20](v29 - 8);
  v248 = &v220 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  MEMORY[0x28223BE20](v31 - 8);
  v247 = &v220 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v33 - 8);
  v246 = &v220 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TranscriptProtoSystemResponse(0);
  MEMORY[0x28223BE20](v35 - 8);
  v245 = &v220 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  MEMORY[0x28223BE20](v37 - 8);
  v243 = &v220 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoActionCancellation(0);
  MEMORY[0x28223BE20](v39 - 8);
  v242 = &v220 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v220);
  v244 = (&v220 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v224 = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](v224);
  v241 = (&v220 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  MEMORY[0x28223BE20](v223);
  v239 = (&v220 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  MEMORY[0x28223BE20](v222);
  v240 = (&v220 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  MEMORY[0x28223BE20](v45 - 8);
  v238 = &v220 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  MEMORY[0x28223BE20](v47 - 8);
  v237 = &v220 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults - 8);
  v236 = &v220 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TranscriptProtoRecoverableError(0);
  MEMORY[0x28223BE20](v51 - 8);
  v235 = &v220 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TranscriptProtoSessionError(0);
  MEMORY[0x28223BE20](v53 - 8);
  v234 = &v220 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v55 - 8);
  v233 = (&v220 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  MEMORY[0x28223BE20](Step - 8);
  v232 = &v220 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v59 - 8);
  v231 = (&v220 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v61 - 8);
  v230 = &v220 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TranscriptProtoPlan(0);
  MEMORY[0x28223BE20](v63 - 8);
  v229 = &v220 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v65 - 8);
  v228 = &v220 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TranscriptProtoSessionStart(0);
  MEMORY[0x28223BE20](v67 - 8);
  v225 = &v220 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v69 = MEMORY[0x28223BE20](v294);
  v293 = (&v220 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = MEMORY[0x28223BE20](v69);
  v291 = (&v220 - v72);
  v73 = MEMORY[0x28223BE20](v71);
  v292 = (&v220 - v74);
  v75 = MEMORY[0x28223BE20](v73);
  v290 = &v220 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v289 = &v220 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v288 = &v220 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v285 = &v220 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v287 = (&v220 - v84);
  v85 = MEMORY[0x28223BE20](v83);
  v284 = &v220 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v283 = &v220 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v282 = &v220 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v281 = &v220 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v280 = &v220 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v279 = &v220 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v286 = (&v220 - v98);
  v99 = MEMORY[0x28223BE20](v97);
  v277 = &v220 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v275 = &v220 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v274 = &v220 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v272 = &v220 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v270 = &v220 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v269 = &v220 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v278 = (&v220 - v112);
  v113 = MEMORY[0x28223BE20](v111);
  v273 = (&v220 - v114);
  v115 = MEMORY[0x28223BE20](v113);
  v271 = (&v220 - v116);
  v117 = MEMORY[0x28223BE20](v115);
  v276 = (&v220 - v118);
  v119 = MEMORY[0x28223BE20](v117);
  v268 = (&v220 - v120);
  v121 = MEMORY[0x28223BE20](v119);
  v267 = &v220 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v266 = &v220 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v265 = &v220 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v264 = &v220 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v131 = (&v220 - v130);
  v132 = MEMORY[0x28223BE20](v129);
  v134 = &v220 - v133;
  v135 = MEMORY[0x28223BE20](v132);
  v137 = (&v220 - v136);
  v138 = MEMORY[0x28223BE20](v135);
  v140 = &v220 - v139;
  v141 = MEMORY[0x28223BE20](v138);
  v143 = (&v220 - v142);
  v144 = MEMORY[0x28223BE20](v141);
  v146 = &v220 - v145;
  MEMORY[0x28223BE20](v144);
  v148 = &v220 - v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F40, &unk_20E342140);
  v150 = MEMORY[0x28223BE20](v149 - 8);
  v152 = &v220 - v151;
  v153 = *(v150 + 56);
  sub_20E1E14FC(v296, &v220 - v151, type metadata accessor for TranscriptProtoPayloadEnum);
  v296 = v153;
  sub_20E1E14FC(v295, &v152[v153], type metadata accessor for TranscriptProtoPayloadEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E1E14FC(v152, v146, type metadata accessor for TranscriptProtoPayloadEnum);
      v189 = v296;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v190 = v228;
        sub_20E1EF280(&v152[v189], v228, type metadata accessor for TranscriptProtoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor22TranscriptProtoRequestV2eeoiySbAC_ACtFZ_0(v146, v190);
        v175 = type metadata accessor for TranscriptProtoRequest;
        sub_20E1E1564(v190, type metadata accessor for TranscriptProtoRequest);
        v176 = v146;
        goto LABEL_108;
      }

      v155 = type metadata accessor for TranscriptProtoRequest;
      v156 = v146;
      goto LABEL_147;
    case 2u:
      sub_20E1E14FC(v152, v143, type metadata accessor for TranscriptProtoPayloadEnum);
      v183 = v296;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v184 = v229;
        sub_20E1EF280(&v152[v183], v229, type metadata accessor for TranscriptProtoPlan);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor19TranscriptProtoPlanV2eeoiySbAC_ACtFZ_0(v143, v184);
        v175 = type metadata accessor for TranscriptProtoPlan;
        sub_20E1E1564(v184, type metadata accessor for TranscriptProtoPlan);
        v176 = v143;
        goto LABEL_108;
      }

      v155 = type metadata accessor for TranscriptProtoPlan;
      v156 = v143;
      goto LABEL_147;
    case 3u:
      sub_20E1E14FC(v152, v140, type metadata accessor for TranscriptProtoPayloadEnum);
      v186 = v296;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v187 = v230;
        sub_20E1EF280(&v152[v186], v230, type metadata accessor for TranscriptProtoAction);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(v140, v187);
        v175 = type metadata accessor for TranscriptProtoAction;
        sub_20E1E1564(v187, type metadata accessor for TranscriptProtoAction);
        v176 = v140;
        goto LABEL_108;
      }

      v155 = type metadata accessor for TranscriptProtoAction;
      v156 = v140;
      goto LABEL_147;
    case 4u:
      sub_20E1E14FC(v152, v137, type metadata accessor for TranscriptProtoPayloadEnum);
      v173 = v296;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v174 = v231;
        sub_20E1EF280(&v152[v173], v231, type metadata accessor for TranscriptProtoClientAction);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(v137, v174);
        v175 = type metadata accessor for TranscriptProtoClientAction;
        sub_20E1E1564(v174, type metadata accessor for TranscriptProtoClientAction);
        v176 = v137;
        goto LABEL_108;
      }

      v155 = type metadata accessor for TranscriptProtoClientAction;
      v156 = v137;
      goto LABEL_147;
    case 5u:
      sub_20E1E14FC(v152, v134, type metadata accessor for TranscriptProtoPayloadEnum);
      v194 = v296;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v166 = v232;
        sub_20E1EF280(&v152[v194], v232, type metadata accessor for TranscriptProtoQueryStep);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor24TranscriptProtoQueryStepV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoQueryStep;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoQueryStep;
      goto LABEL_146;
    case 6u:
      sub_20E1E14FC(v152, v131, type metadata accessor for TranscriptProtoPayloadEnum);
      v197 = v296;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v198 = v233;
        sub_20E1EF280(&v152[v197], v233, type metadata accessor for TranscriptProtoVariableStep);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoVariableStepV2eeoiySbAC_ACtFZ_0(v131, v198);
        v175 = type metadata accessor for TranscriptProtoVariableStep;
        sub_20E1E1564(v198, type metadata accessor for TranscriptProtoVariableStep);
        v176 = v131;
        goto LABEL_108;
      }

      v213 = type metadata accessor for TranscriptProtoVariableStep;
      goto LABEL_144;
    case 7u:
      v134 = v264;
      sub_20E1E14FC(v152, v264, type metadata accessor for TranscriptProtoPayloadEnum);
      v188 = v296;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v166 = v234;
        sub_20E1EF280(&v152[v188], v234, type metadata accessor for TranscriptProtoSessionError);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoSessionErrorV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoSessionError;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoSessionError;
      goto LABEL_146;
    case 8u:
      v134 = v265;
      sub_20E1E14FC(v152, v265, type metadata accessor for TranscriptProtoPayloadEnum);
      v201 = v296;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v166 = v235;
        sub_20E1EF280(&v152[v201], v235, type metadata accessor for TranscriptProtoRecoverableError);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor31TranscriptProtoRecoverableErrorV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoRecoverableError;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoRecoverableError;
      goto LABEL_146;
    case 9u:
      v134 = v266;
      sub_20E1E14FC(v152, v266, type metadata accessor for TranscriptProtoPayloadEnum);
      v180 = v296;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v166 = v236;
        sub_20E1EF280(&v152[v180], v236, type metadata accessor for TranscriptProtoQueryStepResults);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor31TranscriptProtoQueryStepResultsV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoQueryStepResults;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoQueryStepResults;
      goto LABEL_146;
    case 0xAu:
      v134 = v267;
      sub_20E1E14FC(v152, v267, type metadata accessor for TranscriptProtoPayloadEnum);
      v200 = v296;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v166 = v237;
        sub_20E1EF280(&v152[v200], v237, type metadata accessor for TranscriptProtoActionResolverRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoActionResolverRequestV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoActionResolverRequest;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoActionResolverRequest;
      goto LABEL_146;
    case 0xBu:
      v131 = v268;
      sub_20E1E14FC(v152, v268, type metadata accessor for TranscriptProtoPayloadEnum);
      v172 = v296;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v158 = v238;
        sub_20E1EF280(&v152[v172], v238, type metadata accessor for TranscriptProtoSafetyModeRelease);
        sub_20E3221C0();
        v159 = v152;
        sub_20E1EF2E8();
        StepV2eeoiySbAC_ACtFZ_0 = sub_20E322850();
        v161 = type metadata accessor for TranscriptProtoSafetyModeRelease;
        goto LABEL_101;
      }

      v213 = type metadata accessor for TranscriptProtoSafetyModeRelease;
      goto LABEL_144;
    case 0xCu:
      v131 = v276;
      sub_20E1E14FC(v152, v276, type metadata accessor for TranscriptProtoPayloadEnum);
      v177 = v296;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v213 = type metadata accessor for TranscriptProtoSafetyModeException;
        goto LABEL_144;
      }

      v163 = v240;
      sub_20E1EF280(&v152[v177], v240, type metadata accessor for TranscriptProtoSafetyModeException);
      v178 = v131[1];
      v179 = v163[1];
      if (v178)
      {
        if (!v179 || (*v131 != *v163 || v178 != v179) && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_163;
        }
      }

      else if (v179)
      {
        goto LABEL_163;
      }

      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v164 = type metadata accessor for TranscriptProtoSafetyModeException;
        goto LABEL_161;
      }

LABEL_163:
      v216 = type metadata accessor for TranscriptProtoSafetyModeException;
      goto LABEL_164;
    case 0xDu:
      v131 = v271;
      sub_20E1E14FC(v152, v271, type metadata accessor for TranscriptProtoPayloadEnum);
      v196 = v296;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v213 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
        goto LABEL_144;
      }

      v163 = v239;
      sub_20E1EF280(&v152[v196], v239, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      if (sub_20E14C4B8(*v131, *v163))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v164 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
          goto LABEL_161;
        }
      }

      v216 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
      goto LABEL_164;
    case 0xEu:
      v131 = v273;
      sub_20E1E14FC(v152, v273, type metadata accessor for TranscriptProtoPayloadEnum);
      v170 = v296;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v213 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
        goto LABEL_144;
      }

      v163 = v241;
      sub_20E1EF280(&v152[v170], v241, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      if (sub_20E14EC10(*v131, *v163))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v164 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
          goto LABEL_161;
        }
      }

      v216 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
      goto LABEL_164;
    case 0xFu:
      v131 = v278;
      sub_20E1E14FC(v152, v278, type metadata accessor for TranscriptProtoPayloadEnum);
      v185 = v296;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v213 = type metadata accessor for TranscriptProtoContextRetrieved;
        goto LABEL_144;
      }

      v163 = v244;
      sub_20E1EF280(&v152[v185], v244, type metadata accessor for TranscriptProtoContextRetrieved);
      if (sub_20E14E2F8(*v131, *v163) & 1) != 0 && (sub_20E14E2F8(v131[1], v163[1]))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v164 = type metadata accessor for TranscriptProtoContextRetrieved;
          goto LABEL_161;
        }
      }

      v216 = type metadata accessor for TranscriptProtoContextRetrieved;
      goto LABEL_164;
    case 0x10u:
      v134 = v269;
      sub_20E1E14FC(v152, v269, type metadata accessor for TranscriptProtoPayloadEnum);
      v169 = v296;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v166 = v242;
        sub_20E1EF280(&v152[v169], v242, type metadata accessor for TranscriptProtoActionCancellation);
        StepV2eeoiySbAC_ACtFZ_0 = sub_20E16BDFC(v134, v166);
        v167 = type metadata accessor for TranscriptProtoActionCancellation;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoActionCancellation;
      goto LABEL_146;
    case 0x11u:
      v134 = v270;
      sub_20E1E14FC(v152, v270, type metadata accessor for TranscriptProtoPayloadEnum);
      v192 = v296;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v166 = v243;
        sub_20E1EF280(&v152[v192], v243, type metadata accessor for TranscriptProtoToolRetrievalResponse);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoToolRetrievalResponse;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoToolRetrievalResponse;
      goto LABEL_146;
    case 0x12u:
      v134 = v272;
      sub_20E1E14FC(v152, v272, type metadata accessor for TranscriptProtoPayloadEnum);
      v199 = v296;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v166 = v245;
        sub_20E1EF280(&v152[v199], v245, type metadata accessor for TranscriptProtoSystemResponse);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor29TranscriptProtoSystemResponseV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoSystemResponse;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoSystemResponse;
      goto LABEL_146;
    case 0x13u:
      v134 = v274;
      sub_20E1E14FC(v152, v274, type metadata accessor for TranscriptProtoPayloadEnum);
      v205 = v296;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v166 = v246;
        sub_20E1EF280(&v152[v205], v246, type metadata accessor for TranscriptProtoStatementResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoStatementResult;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoStatementResult;
      goto LABEL_146;
    case 0x14u:
      v134 = v275;
      sub_20E1E14FC(v152, v275, type metadata accessor for TranscriptProtoPayloadEnum);
      v193 = v296;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v166 = v247;
        sub_20E1EF280(&v152[v193], v247, type metadata accessor for TranscriptProtoExternalAgentRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor35TranscriptProtoExternalAgentRequestV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoExternalAgentRequest;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoExternalAgentRequest;
      goto LABEL_146;
    case 0x15u:
      v134 = v277;
      sub_20E1E14FC(v152, v277, type metadata accessor for TranscriptProtoPayloadEnum);
      v195 = v296;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v166 = v248;
        sub_20E1EF280(&v152[v195], v248, type metadata accessor for TranscriptProtoExternalAgentOutcome);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor35TranscriptProtoExternalAgentOutcomeV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoExternalAgentOutcome;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoExternalAgentOutcome;
      goto LABEL_146;
    case 0x16u:
      v131 = v286;
      sub_20E1E14FC(v152, v286, type metadata accessor for TranscriptProtoPayloadEnum);
      v204 = v296;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        v213 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
        goto LABEL_144;
      }

      v163 = v252;
      sub_20E1EF280(&v152[v204], v252, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      if (*v131 == *v163 && v131[1] == v163[1] || (sub_20E322D60()) && (sub_20E1494E0(v131[2], v163[2]))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v164 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
          goto LABEL_161;
        }
      }

      v216 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
      goto LABEL_164;
    case 0x17u:
      v134 = v279;
      sub_20E1E14FC(v152, v279, type metadata accessor for TranscriptProtoPayloadEnum);
      v206 = v296;
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        v166 = v249;
        sub_20E1EF280(&v152[v206], v249, type metadata accessor for TranscriptProtoToolResolution);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor29TranscriptProtoToolResolutionV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoToolResolution;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoToolResolution;
      goto LABEL_146;
    case 0x18u:
      v134 = v280;
      sub_20E1E14FC(v152, v280, type metadata accessor for TranscriptProtoPayloadEnum);
      v182 = v296;
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        v166 = v250;
        sub_20E1EF280(&v152[v182], v250, type metadata accessor for TranscriptProtoUndoRedoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor30TranscriptProtoUndoRedoRequestV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoUndoRedoRequest;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoUndoRedoRequest;
      goto LABEL_146;
    case 0x19u:
      v134 = v281;
      sub_20E1E14FC(v152, v281, type metadata accessor for TranscriptProtoPayloadEnum);
      v181 = v296;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v166 = v251;
        sub_20E1EF280(&v152[v181], v251, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoClientUndoRedoRequestV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoClientUndoRedoRequest;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoClientUndoRedoRequest;
      goto LABEL_146;
    case 0x1Au:
      v134 = v282;
      sub_20E1E14FC(v152, v282, type metadata accessor for TranscriptProtoPayloadEnum);
      v212 = v296;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v166 = v253;
        sub_20E1EF280(&v152[v212], v253, type metadata accessor for TranscriptProtoTypeConversionRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoTypeConversionRequestV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoTypeConversionRequest;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoTypeConversionRequest;
      goto LABEL_146;
    case 0x1Bu:
      v134 = v283;
      sub_20E1E14FC(v152, v283, type metadata accessor for TranscriptProtoPayloadEnum);
      v165 = v296;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v166 = v254;
        sub_20E1EF280(&v152[v165], v254, type metadata accessor for TranscriptProtoTypeConversionResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor35TranscriptProtoTypeConversionResultV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoTypeConversionResult;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoTypeConversionResult;
      goto LABEL_146;
    case 0x1Cu:
      v134 = v284;
      sub_20E1E14FC(v152, v284, type metadata accessor for TranscriptProtoPayloadEnum);
      v207 = v296;
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        v166 = v255;
        sub_20E1EF280(&v152[v207], v255, type metadata accessor for TranscriptProtoQueryDecorationResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoQueryDecorationResultV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoQueryDecorationResult;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoQueryDecorationResult;
      goto LABEL_146;
    case 0x1Du:
      v131 = v287;
      sub_20E1E14FC(v152, v287, type metadata accessor for TranscriptProtoPayloadEnum);
      v208 = v296;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v158 = v256;
        sub_20E1EF280(&v152[v208], v256, type metadata accessor for TranscriptProtoContinuePlanning);
        sub_20E3221C0();
        v159 = v152;
        sub_20E1EF2E8();
        StepV2eeoiySbAC_ACtFZ_0 = sub_20E322850();
        v161 = type metadata accessor for TranscriptProtoContinuePlanning;
        goto LABEL_101;
      }

      v213 = type metadata accessor for TranscriptProtoContinuePlanning;
      goto LABEL_144;
    case 0x1Eu:
      v134 = v285;
      sub_20E1E14FC(v152, v285, type metadata accessor for TranscriptProtoPayloadEnum);
      v202 = v296;
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        v166 = v257;
        sub_20E1EF280(&v152[v202], v257, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor46TranscriptProtoQueryDecorationPrePlannerResultV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult;
      goto LABEL_146;
    case 0x1Fu:
      v134 = v288;
      sub_20E1E14FC(v152, v288, type metadata accessor for TranscriptProtoPayloadEnum);
      v191 = v296;
      if (swift_getEnumCaseMultiPayload() == 31)
      {
        v166 = v258;
        sub_20E1EF280(&v152[v191], v258, type metadata accessor for TranscriptProtoSkipStatement);
        StepV2eeoiySbAC_ACtFZ_0 = sub_20E175878(v134, v166);
        v167 = type metadata accessor for TranscriptProtoSkipStatement;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoSkipStatement;
      goto LABEL_146;
    case 0x20u:
      v134 = v289;
      sub_20E1E14FC(v152, v289, type metadata accessor for TranscriptProtoPayloadEnum);
      v203 = v296;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v166 = v259;
        sub_20E1EF280(&v152[v203], v259, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor52TranscriptProtoExecutionPreconditionEvaluatorRequestV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest;
        goto LABEL_107;
      }

      v214 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest;
      goto LABEL_146;
    case 0x21u:
      v134 = v290;
      sub_20E1E14FC(v152, v290, type metadata accessor for TranscriptProtoPayloadEnum);
      v171 = v296;
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        v166 = v260;
        sub_20E1EF280(&v152[v171], v260, type metadata accessor for TranscriptProtoRequestAmendment);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor31TranscriptProtoRequestAmendmentV2eeoiySbAC_ACtFZ_0(v134, v166);
        v167 = type metadata accessor for TranscriptProtoRequestAmendment;
LABEL_107:
        v175 = v167;
        sub_20E1E1564(v166, v167);
        v176 = v134;
LABEL_108:
        sub_20E1E1564(v176, v175);
        sub_20E1E1564(v152, type metadata accessor for TranscriptProtoPayloadEnum);
        return StepV2eeoiySbAC_ACtFZ_0 & 1;
      }

      v214 = type metadata accessor for TranscriptProtoRequestAmendment;
LABEL_146:
      v155 = v214;
      v156 = v134;
      goto LABEL_147;
    case 0x22u:
      v131 = v292;
      sub_20E1E14FC(v152, v292, type metadata accessor for TranscriptProtoPayloadEnum);
      v168 = v296;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        v213 = type metadata accessor for TranscriptProtoToolRetrievalRequest;
        goto LABEL_144;
      }

      v163 = v262;
      sub_20E1EF280(&v152[v168], v262, type metadata accessor for TranscriptProtoToolRetrievalRequest);
      if (*v131 == *v163 && v131[1] == v163[1] || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v164 = type metadata accessor for TranscriptProtoToolRetrievalRequest;
          goto LABEL_161;
        }
      }

      v216 = type metadata accessor for TranscriptProtoToolRetrievalRequest;
      goto LABEL_164;
    case 0x23u:
      v131 = v291;
      sub_20E1E14FC(v152, v291, type metadata accessor for TranscriptProtoPayloadEnum);
      v157 = v296;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        v213 = type metadata accessor for TranscriptProtoContextRetrievalRequest;
        goto LABEL_144;
      }

      v158 = v261;
      sub_20E1EF280(&v152[v157], v261, type metadata accessor for TranscriptProtoContextRetrievalRequest);
      sub_20E3221C0();
      v159 = v152;
      sub_20E1EF2E8();
      StepV2eeoiySbAC_ACtFZ_0 = sub_20E322850();
      v161 = type metadata accessor for TranscriptProtoContextRetrievalRequest;
LABEL_101:
      v209 = v161;
      sub_20E1E1564(v158, v161);
      v210 = v131;
      v211 = v209;
      goto LABEL_102;
    case 0x24u:
      v131 = v293;
      sub_20E1E14FC(v152, v293, type metadata accessor for TranscriptProtoPayloadEnum);
      v162 = v296;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        v213 = type metadata accessor for TranscriptProtoSpanMatchRequest;
LABEL_144:
        v155 = v213;
        v156 = v131;
        goto LABEL_147;
      }

      v163 = v263;
      sub_20E1EF280(&v152[v162], v263, type metadata accessor for TranscriptProtoSpanMatchRequest);
      if (*v131 == *v163 && v131[1] == v163[1] || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v164 = type metadata accessor for TranscriptProtoSpanMatchRequest;
LABEL_161:
          v218 = v164;
          sub_20E1E1564(v163, v164);
          sub_20E1E1564(v131, v218);
LABEL_162:
          sub_20E1E1564(v152, type metadata accessor for TranscriptProtoPayloadEnum);
          StepV2eeoiySbAC_ACtFZ_0 = 1;
          return StepV2eeoiySbAC_ACtFZ_0 & 1;
        }
      }

      v216 = type metadata accessor for TranscriptProtoSpanMatchRequest;
LABEL_164:
      v219 = v216;
      sub_20E1E1564(v163, v216);
      sub_20E1E1564(v131, v219);
      sub_20E1E1564(v152, type metadata accessor for TranscriptProtoPayloadEnum);
      goto LABEL_149;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() == 37)
      {
        goto LABEL_162;
      }

      goto LABEL_148;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        goto LABEL_162;
      }

      goto LABEL_148;
    default:
      sub_20E1E14FC(v152, v148, type metadata accessor for TranscriptProtoPayloadEnum);
      v154 = v296;
      if (swift_getEnumCaseMultiPayload())
      {
        v155 = type metadata accessor for TranscriptProtoSessionStart;
        v156 = v148;
LABEL_147:
        sub_20E1E1564(v156, v155);
LABEL_148:
        sub_20E04875C(v152, &qword_27C868F40, &unk_20E342140);
LABEL_149:
        StepV2eeoiySbAC_ACtFZ_0 = 0;
      }

      else
      {
        v217 = v225;
        sub_20E1EF280(&v152[v154], v225, type metadata accessor for TranscriptProtoSessionStart);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoSessionStartV2eeoiySbAC_ACtFZ_0(v148, v217);
        v159 = v152;
        sub_20E1E1564(v217, type metadata accessor for TranscriptProtoSessionStart);
        v210 = v148;
        v211 = type metadata accessor for TranscriptProtoSessionStart;
LABEL_102:
        sub_20E1E1564(v210, v211);
        sub_20E1E1564(v159, type metadata accessor for TranscriptProtoPayloadEnum);
      }

      return StepV2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t sub_20E1E14FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1E1564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E1E15C8()
{
  result = qword_27C868AF8;
  if (!qword_27C868AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868AF8);
  }

  return result;
}

unint64_t sub_20E1E1650()
{
  result = qword_27C868B10;
  if (!qword_27C868B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B10);
  }

  return result;
}

unint64_t sub_20E1E16D8()
{
  result = qword_27C868B28;
  if (!qword_27C868B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B28);
  }

  return result;
}

unint64_t sub_20E1E1760()
{
  result = qword_27C868B40;
  if (!qword_27C868B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B40);
  }

  return result;
}

unint64_t sub_20E1E17E8()
{
  result = qword_27C868B58;
  if (!qword_27C868B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B58);
  }

  return result;
}

unint64_t sub_20E1E1870()
{
  result = qword_27C868B70;
  if (!qword_27C868B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B70);
  }

  return result;
}

unint64_t sub_20E1E18F8()
{
  result = qword_27C868B88;
  if (!qword_27C868B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B88);
  }

  return result;
}

unint64_t sub_20E1E1980()
{
  result = qword_27C868BA0;
  if (!qword_27C868BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868BA0);
  }

  return result;
}

unint64_t sub_20E1E1A08()
{
  result = qword_27C868BB8;
  if (!qword_27C868BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868BB8);
  }

  return result;
}

unint64_t sub_20E1E1A90()
{
  result = qword_27C868BD0;
  if (!qword_27C868BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868BD0);
  }

  return result;
}

unint64_t sub_20E1E1B18()
{
  result = qword_27C868BE8;
  if (!qword_27C868BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868BE8);
  }

  return result;
}

unint64_t sub_20E1E1BA0()
{
  result = qword_27C868C00;
  if (!qword_27C868C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C00);
  }

  return result;
}

unint64_t sub_20E1E1C28()
{
  result = qword_27C868C18;
  if (!qword_27C868C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C18);
  }

  return result;
}

unint64_t sub_20E1E1CB0()
{
  result = qword_27C868C30;
  if (!qword_27C868C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C30);
  }

  return result;
}

unint64_t sub_20E1E1D08()
{
  result = qword_27C868C38;
  if (!qword_27C868C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C38);
  }

  return result;
}

unint64_t sub_20E1E1D90()
{
  result = qword_27C868C50;
  if (!qword_27C868C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C50);
  }

  return result;
}

unint64_t sub_20E1E1DE8()
{
  result = qword_27C868C58;
  if (!qword_27C868C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C58);
  }

  return result;
}

unint64_t sub_20E1E1E40()
{
  result = qword_27C868C60;
  if (!qword_27C868C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C60);
  }

  return result;
}

unint64_t sub_20E1E1E98()
{
  result = qword_27C868C68;
  if (!qword_27C868C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C68);
  }

  return result;
}

unint64_t sub_20E1E1F20()
{
  result = qword_27C868C80;
  if (!qword_27C868C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C80);
  }

  return result;
}

uint64_t sub_20E1E1FE4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_20E1E2074(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_20E1E21AC(uint64_t a1)
{
  sub_20E1E23AC();
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0F148, type metadata accessor for TranscriptProtoPayload, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E0E930, type metadata accessor for TranscriptProtoTimepoint, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E0C8F8, type metadata accessor for TranscriptProtoParticipantID, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E1E240C(319, qword_280E0FD80, type metadata accessor for TranscriptProtoSpanID, MEMORY[0x277D83D88]);
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

void sub_20E1E23AC()
{
  if (!qword_280E12B80)
  {
    v0 = sub_20E322810();
    if (!v1)
    {
      atomic_store(v0, &qword_280E12B80);
    }
  }
}

void sub_20E1E240C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20E1E24CC(uint64_t a1)
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
                                                                  result = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(319);
                                                                  if (v34 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for TranscriptProtoRequestAmendment(319);
                                                                    if (v35 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for TranscriptProtoToolRetrievalRequest(319);
                                                                      if (v36 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for TranscriptProtoContextRetrievalRequest(319);
                                                                        if (v37 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for TranscriptProtoSpanMatchRequest(319);
                                                                          if (v38 <= 0x3F)
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
          }
        }
      }
    }
  }

  return result;
}

void sub_20E1E2884(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E04048, type metadata accessor for TranscriptProtoEvent, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E29AC(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E12B10, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E2AA8(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0BDD0, type metadata accessor for TranscriptProtoLocaleSettings, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0CAC0, type metadata accessor for TranscriptProtoDeviceDetails, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0BE70, type metadata accessor for TranscriptProtoGenderSettings, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1ECF10(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E3221C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E1E2CA0(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0BB68, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E073C8, type metadata accessor for TranscriptProtoRequestPrescribedPlan, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E04A20, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E11358, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E1E240C(319, qword_280E05DB0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_20E1E240C(319, qword_280E0AE38, type metadata accessor for TranscriptProtoDateTimeContext, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_20E3221C0();
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

void sub_20E1E30A0(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0C3E0, type metadata accessor for TranscriptProtoSpeechPackage, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E32EC(uint64_t a1)
{
  result = sub_20E3221C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E1E33AC(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0BB68, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E04A20, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E3534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(void, uint64_t))
{
  sub_20E1ECF10(319, a5, MEMORY[0x277D837D0], a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E1E362C(uint64_t a1)
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

void sub_20E1E37B8(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E3898(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E39A0(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E3AE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_20E1ECF10(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E3B98(uint64_t a1)
{
  sub_20E1E3F48(319, &qword_280E040B0, type metadata accessor for TranscriptProtoActionParameterValue, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E07DA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E3221C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E1E3D4C(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E08958, type metadata accessor for TranscriptProtoToolParameterValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0AC70, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_20E1E3F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_20E322810();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_20E1E4010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_20E03A198);
}

uint64_t sub_20E1E4068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_20E03A1AC);
}

void sub_20E1E41C0(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0AC70, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E42E4(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E04070, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E43FC(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E09BB0, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E455C(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E09BB0, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E09E38, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E4680(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E06E48, type metadata accessor for TranscriptProtoStatementResultPayload, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E07DA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E3221C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E1E488C(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E07800, type metadata accessor for TranscriptProtoCandidatePromptStatus, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E4A68(uint64_t a1)
{
  sub_20E1E3F48(319, &unk_280E040D0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_20E1E3F48(319, &qword_280E040B8, type metadata accessor for TranscriptProtoShimParameters, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (v2 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E3221C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_20E1E4D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
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

void sub_20E1E4E04(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D8D0, type metadata accessor for TranscriptProtoPersonQuery.Handle, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E4F90(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E04038, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E50A8(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E07DA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E5304(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E1E53EC(uint64_t a1)
{
  v1 = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_20E1E54A0(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E1E5638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_637Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 3;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_20E3221C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_638Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1E5998(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoToolDefinition.Version1.Flag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoToolDefinition.Version1.Flag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20E1E5C54(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E10EC8, type metadata accessor for TranscriptProtoActionFailureFailure, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E5E64(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D6E0, type metadata accessor for TranscriptProtoUndoContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0BF10, type metadata accessor for TranscriptProtoFollowUpAction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E3221C0();
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

uint64_t sub_20E1E6178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_170Tm_5);
}

uint64_t sub_20E1E61D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_171Tm_5);
}

uint64_t sub_20E1E6250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
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

void sub_20E1E635C(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E6484(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E04038, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E6608(uint64_t a1)
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

void sub_20E1E676C(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E05EE0, type metadata accessor for TranscriptProtoParameterNeedsValueContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E68D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_233Tm);
}

uint64_t sub_20E1E692C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_234Tm);
}

void sub_20E1E6A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_20E1E240C(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E6BB8(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E03F50, type metadata accessor for TranscriptProtoProgramStatement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1ECF10(319, qword_280E0E278, &type metadata for TranscriptProtoPlanSource, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20E1E6D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_20E03C19C);
}

uint64_t sub_20E1E6DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_20E03C1B0);
}

uint64_t sub_20E1E6E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_20E03C1C4);
}

uint64_t sub_20E1E6EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_20E03C1D8);
}

void sub_20E1E7030(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E06EE8, type metadata accessor for TranscriptProtoActionParameterContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D040, type metadata accessor for TranscriptProtoQueryPayload, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E72A0(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E740C(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E03FC8, type metadata accessor for TranscriptProtoQueryResults, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E7538(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E7618(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E03FC0, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E03FE8, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0E370, type metadata accessor for TranscriptProtoDialogType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E080C8, type metadata accessor for TranscriptProtoVisualOutputOptions, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E0CD50, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

uint64_t sub_20E1E7A04(uint64_t a1)
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

void sub_20E1E7C20(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E03F48, type metadata accessor for TranscriptProtoResponseParameter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0BAC0, type metadata accessor for TranscriptProtoResponseDialog, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0B968, type metadata accessor for TranscriptProtoResponseVisual, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E1ECF10(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E1ECF10(319, qword_280E052F0, &type metadata for TranscriptProtoResponseDialogPresentationHint, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_20E1E240C(319, qword_280E0FCE8, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_20E3221C0();
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

void sub_20E1E7E88(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B40, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E7FEC(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E04040, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E04030, type metadata accessor for TranscriptProtoUILabel, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E072A0, type metadata accessor for TranscriptProtoResponseVisualOptions, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20E1E8264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_443Tm_0);
}

uint64_t sub_20E1E82BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_444Tm_0);
}

void sub_20E1E838C(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1288Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_1289Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1279Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_1280Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1E8798(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E04F08, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E05798, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E3221C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_20E1E89A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
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

void sub_20E1E8A50(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E03FD0, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D328, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E07DA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E3221C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_514Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_515Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1E8DC0(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E11770, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E8EE4(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E079F0, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E90B4(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0EBB0, type metadata accessor for TranscriptProtoCandidate, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E9210(uint64_t a1)
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

uint64_t __swift_get_extra_inhabitant_index_1234Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_20E3221C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1235Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1E9494(uint64_t a1)
{
  sub_20E1E3F48(319, &qword_280E040A8, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E95B4(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E03F80, type metadata accessor for TranscriptProtoVariableSetter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E96D8(uint64_t a1)
{
  sub_20E1E3F48(319, &qword_27C868CA8, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_895Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_20E3221C0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_896Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
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

void sub_20E1E9C88(uint64_t a1)
{
  sub_20E1E240C(319, &qword_27C868D98, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_27C868DA0, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E9E88(uint64_t a1)
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

uint64_t sub_20E1EA098(uint64_t a1)
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

void sub_20E1EA1F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_20E1E3F48(319, a4, a5, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v5 <= 0x3F)
  {
    sub_20E3221C0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E1EA394(uint64_t a1)
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
                                                    result = type metadata accessor for TranscriptProtoRetrieveContextExpression(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for TranscriptProtoRetrieveSpansExpression(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for TranscriptProtoRetrieveToolsExpression(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for TranscriptProtoSiriXFallbackExpression(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for TranscriptProtoUserConfirmExpression(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for TranscriptProtoUserDisambiguateExpression(319);
                                                              if (v32 <= 0x3F)
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

  return result;
}

uint64_t sub_20E1EA790(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1861Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1862Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = &v7[*(a4 + 28)];

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EAB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_20E1E240C(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1924Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1925Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = &v7[*(a4 + 24)];

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_395Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
    v12 = sub_20E3221C0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_396Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
    v14 = sub_20E3221C0();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_20E1EB07C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_20E1E240C(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1EB134(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E04050, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1EB258(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1EB414(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_20E1E3F48(319, a4, a5, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v9 <= 0x3F)
  {
    sub_20E1E240C(319, a6, a7, MEMORY[0x277D83D88]);
    if (v10 <= 0x3F)
    {
      sub_20E3221C0();
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_368Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_369Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20E1EB784(uint64_t a1)
{
  result = sub_20E3221C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1207Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_1208Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EBA84(uint64_t a1)
{
  sub_20E1E3F48(319, &qword_280E040C8, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E03F18, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_472Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_473Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EBE3C(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1EC198(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1EC27C(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E03FE8, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1EC3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_20E03E5B8);
}

uint64_t sub_20E1EC42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_20E03E670);
}

void sub_20E1EC4D4(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0C340, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_296Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_297Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1EC7A4(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E04008, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E03F88, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1EC8E8(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E03F28, type metadata accessor for TranscriptProtoInterpretedStatementResult, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0BA08, type metadata accessor for TranscriptProtoResponseOutput, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1ECA48(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E09BB0, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1ECBB4(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0E2D8, type metadata accessor for TranscriptProtoExpression, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E1ECF10(319, &qword_280E12B48, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E0A298, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E3221C0();
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

uint64_t __swift_get_extra_inhabitant_index_805Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_20E3221C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_806Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1ECF10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_170Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_171Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20E1ED0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_20E3221C0();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_404Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_20E3221C0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_405Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_20E3221C0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_20E1ED3DC(uint64_t a1)
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_967Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_968Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 32);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1ED754(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1ED848(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_2344Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v10 = v13;
    v11 = *(v14 + 48);
    v12 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v16 = sub_20E3221C0();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + *(a3 + 28);

  return v17(v18, a2, v16);
}

uint64_t __swift_store_extra_inhabitant_index_2345Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a3)
  {
    v12 = v15;
    v13 = *(v16 + 56);
    v14 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v18 = sub_20E3221C0();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + *(a4 + 28);

  return v19(v20, a2, a2, v18);
}

void sub_20E1EDC80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_20E1E240C(319, a4, a5, MEMORY[0x277D83D88]);
  if (v5 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

void sub_20E1EDD90(uint64_t a1)
{
  sub_20E1E240C(319, &qword_280E03F90, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E03F10, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E1E240C(319, &qword_280E03F30, type metadata accessor for TranscriptProtoRetrievedContextStatement, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E04E60, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E3221C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1012Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
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

  v20 = sub_20E3221C0();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[7];

  return v21(v22, a2, v20);
}

uint64_t __swift_store_extra_inhabitant_index_1013Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  v20 = sub_20E3221C0();
  v21 = *(*(v20 - 8) + 56);
  v22 = v9 + a4[7];

  return v21(v22, a2, a2, v20);
}

void sub_20E1EE25C(uint64_t a1)
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E04700, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_269Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_270Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20E1EE6D4(uint64_t a1)
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

uint64_t __swift_get_extra_inhabitant_index_454Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_455Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EEAF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_20E1E240C(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_197Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_198Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EEE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_20E1E240C(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_242Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_243Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20E1EF028(uint64_t a1)
{
  result = sub_20E3221C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_233Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_234Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20E1EF20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_20E3221C0();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E1EF280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E1EF2E8()
{
  result = qword_27C865988;
  if (!qword_27C865988)
  {
    sub_20E3221C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865988);
  }

  return result;
}

uint64_t sub_20E1EFC04()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868F48);
  __swift_project_value_buffer(v0, qword_27C868F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20E3262C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 0;
  *v5 = "onScreen";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "conversational";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "announcement";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "notification";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "visual";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "unknownSource";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E1EFF10()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868F60);
  __swift_project_value_buffer(v0, qword_27C868F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_20E342180;
  v4 = v70 + v3;
  v5 = v70 + v3 + v1[14];
  *(v70 + v3) = 0;
  *v5 = "APP_IN_FOCUS_BUNDLE_ID";
  *(v5 + 8) = 22;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "BLUETOOTH_DEVICE_TYPE";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CALENDAR_EVENTS";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MOTION_STATE";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "NOW_PLAYING_PLAYBACK_STATE";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "POINT_OF_INTEREST";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "RECENT_TRANSCRIPT";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SEMANTIC_LOCATION";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ON_SCREEN_CONTENT_EMAIL_ADDRESS";
  *(v22 + 8) = 31;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ON_SCREEN_CONTENT_PHONE_NUMBER";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ON_SCREEN_CONTENT_POSTAL_ADDRESS";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ON_SCREEN_CONTENT_URI_LINK";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ON_SCREEN_PERSON";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ON_SCREEN_HOME";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ON_SCREEN_NOTIFICATION";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ON_SCREEN_DATE_TIME";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "CONVERSATIONAL_REMINDER";
  *(v37 + 8) = 23;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "CONVERSATIONAL_CALENDAR_EVENT";
  *(v39 + 1) = 29;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "CONVERSATIONAL_PEOPLE";
  *(v41 + 1) = 21;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "CONVERSATIONAL_PLACES";
  *(v43 + 1) = 21;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "CONVERSATIONAL_ALARM";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "CONVERSATIONAL_TIMER";
  *(v47 + 1) = 20;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "NOW_PLAYING_MEDIA_ITEM";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "ON_SCREEN_CONTENT_APP_ENTITY";
  *(v51 + 1) = 28;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "SIRI_REQUEST_CONTEXT";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v4 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "CURRENT_LOCATION";
  *(v55 + 1) = 16;
  v55[16] = 2;
  v8();
  v56 = (v4 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "INTELLIGENCE_COMMAND";
  *(v57 + 1) = 20;
  v57[16] = 2;
  v8();
  v58 = (v4 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "HAS_FOCUSED_ON_SCREEN_DOCUMENT";
  *(v59 + 1) = 30;
  v59[16] = 2;
  v8();
  v60 = (v4 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "HAS_FOCUSED_ON_SCREEN_IMAGE";
  *(v61 + 1) = 27;
  v61[16] = 2;
  v8();
  v62 = (v4 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "ON_SCREEN_UI_TEXT";
  *(v63 + 1) = 17;
  v63[16] = 2;
  v8();
  v64 = (v4 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "ON_SCREEN_APP";
  *(v65 + 1) = 13;
  v65[16] = 2;
  v8();
  v66 = (v4 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "ON_SCREEN_CONTENT_DOCUMENT_IMAGE";
  *(v67 + 1) = 32;
  v67[16] = 2;
  v8();
  v68 = v4 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "LIVE_CALL";
  *(v68 + 8) = 9;
  *(v68 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E1F0874()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868F78);
  __swift_project_value_buffer(v0, qword_27C868F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "PlaybackStateUnknown";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "PlaybackStatePlaying";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PlaybackStatePaused";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PlaybackStateStopped";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PlaybackStateInterrupted";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PlaybackStateSeeking";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PlaybackStateUnsupported";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t sub_20E1F0BBC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868F90);
  __swift_project_value_buffer(v0, qword_27C868F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MediaTypeNone";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MediaTypeAudio";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MediaTypeVideo";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MediaTypeUnsupported";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F0E50()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868FA8);
  __swift_project_value_buffer(v0, qword_27C868FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20E342190;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "MediaSubTypeMusic";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "MediaSubTypeTVShow";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MediaSubTypeMovie";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MediaSubTypePodcast";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MediaSubTypeAudiobook";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "MediaSubTypeITunesU";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MediaSubTypeHomeMedia";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MediaSubTypeUnsupported";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MediaSubTypeNone";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E1F121C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868FC0);
  __swift_project_value_buffer(v0, qword_27C868FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Unsure1";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UnsureN";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Known";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "Confident";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F14F8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868FD8);
  __swift_project_value_buffer(v0, qword_27C868FD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20E326300;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v5 = "DeviceIdiomUnknown";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CarPlay";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "EyesFree";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "HomePod";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "Mac";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AirPods";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "IPhone";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "IPad";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "Watch";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TV";
  *(v24 + 1) = 2;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "Vision";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ELEVEN";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E1F1968()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868FF0);
  __swift_project_value_buffer(v0, qword_27C868FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOW";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MEDIUM";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HIGH";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F1BC4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869008);
  __swift_project_value_buffer(v0, qword_27C869008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "spanMatching";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "contextRetrieval";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "toolRetrieval";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "toolContextRetrieval";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "jointResolver";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "screenContentRetrieval";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F1ED8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869020);
  __swift_project_value_buffer(v0, qword_27C869020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unset";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prePlanner";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "fullPlanner";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F2134()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869038);
  __swift_project_value_buffer(v0, qword_27C869038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "siriEntityMatcher";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "globalEntityMatcher";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F2390()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869050);
  __swift_project_value_buffer(v0, qword_27C869050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "homeEntity";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "synonym";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "transliteration";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "expandedEmoji";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "contactRelationship";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "contactHypocorism";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "contactHandle";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F26FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869068);
  __swift_project_value_buffer(v0, qword_27C869068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "relevance";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "metadata";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "typedValue";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "structuredContext";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "identifier";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ContextProtoRetrievedContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_20E1F2BB0(a1, v5, a2, a3);
            break;
          case 2:
            sub_20E1F2C64(a1, v5, a2, a3);
            break;
          case 3:
            sub_20E06396C();
            sub_20E322310();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          sub_20E1F2E80(a1, v5, a2, a3);
        }

        else if (result == 7)
        {
          type metadata accessor for ContextProtoRetrievedContext(0);
          sub_20E3223D0();
        }
      }

      else if (result == 4)
      {
        sub_20E1F2D18(a1, v5, a2, a3);
      }

      else
      {
        sub_20E1F2DCC(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1F2BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E1F2C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  type metadata accessor for ContextProtoConfidence(0);
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
  return sub_20E322430();
}

uint64_t sub_20E1F2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E21DA3C(&qword_27C869678, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);
  return sub_20E322430();
}

uint64_t sub_20E1F2DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E1F2E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  type metadata accessor for ContextProtoStructuredContext(0);
  sub_20E21DA3C(&qword_27C8696E8, type metadata accessor for ContextProtoStructuredContext, &protocol conformance descriptor for ContextProtoStructuredContext);
  return sub_20E322430();
}

uint64_t ContextProtoRetrievedContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E1F3088(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E1F32A4(v3, a1, a2, a3);
    if (*v3)
    {
      sub_20E06396C();
      sub_20E3224D0();
    }

    sub_20E1F34C0(v3, a1, a2, a3);
    sub_20E1F36DC(v3, a1, a2, a3);
    sub_20E1F38F8(v3, a1, a2, a3);
    sub_20E1F532C(v3, a1, a2, a3, type metadata accessor for ContextProtoRetrievedContext);
    type metadata accessor for ContextProtoRetrievedContext(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1F3088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E1F32A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD0, &qword_20E323EB8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoConfidence(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863BD0, &qword_20E323EB8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BD0, &qword_20E323EB8);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoConfidence);
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_20E1F34C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD8, &qword_20E323EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoContextMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C863BD8, &qword_20E323EC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BD8, &qword_20E323EC0);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoContextMetadata);
  sub_20E21DA3C(&qword_27C869678, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoContextMetadata);
}

uint64_t sub_20E1F36DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E1F38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE0, &qword_20E323EC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v12 + 36), v7, &qword_27C863BE0, &qword_20E323EC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BE0, &qword_20E323EC8);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoStructuredContext);
  sub_20E21DA3C(&qword_27C8696E8, type metadata accessor for ContextProtoStructuredContext, &protocol conformance descriptor for ContextProtoStructuredContext);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoStructuredContext);
}

uint64_t sub_20E1F3B60@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v7 = a1[6];
  v8 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[7];
  v10 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v6(&a2[a1[8]], 1, 1, v5);
  v11 = a1[9];
  v12 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[a1[10]];
  *v13 = 0;
  v13[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E1F3D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AE8, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F3DCC(uint64_t a1)
{
  sub_20E21DA3C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);

  return sub_20E322470();
}

uint64_t sub_20E1F3E38(uint64_t a1, uint64_t a2)
{
  sub_20E21DA3C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);

  return sub_20E322480();
}

uint64_t sub_20E1F3ED4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869080);
  __swift_project_value_buffer(v0, qword_27C869080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20E3421A0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "entity_id";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "app_bundle_id";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "saliency";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "on_screen_surrounding_text";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "on_screen_bounding_box";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "seq";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "group_id";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isSelected";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isPrimary";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "screenDimensions";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "dataSource";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "displayRepresentation";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "appBundleIdentifier";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "screenSize";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "frame";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "elementVisibility";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "processInstanceIdentifier";
  *(v37 + 8) = 25;
  *(v37 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ContextProtoContextMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
          goto LABEL_5;
        case 3:
          sub_20E1F4734(a1, v5, a2, a3);
          break;
        case 4:
          type metadata accessor for ContextProtoSurroundingText(0);
          sub_20E21DA3C(&qword_27C869458, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);
          sub_20E322420();
          break;
        case 5:
          sub_20E1F47E8(a1, v5, a2, a3);
          break;
        case 6:
        case 16:
          type metadata accessor for ContextProtoContextMetadata(0);
          sub_20E3223B0();
          break;
        case 7:
        case 13:
        case 17:
          type metadata accessor for ContextProtoContextMetadata(0);
LABEL_5:
          sub_20E3223D0();
          break;
        case 8:
        case 9:
          type metadata accessor for ContextProtoContextMetadata(0);
          sub_20E3222E0();
          break;
        case 10:
          sub_20E1F489C(a1, v5, a2, a3);
          break;
        case 11:
          sub_20E1F4950(a1, v5, a2, a3);
          break;
        case 12:
          sub_20E1F49C4(a1, v5, a2, a3);
          break;
        case 14:
          sub_20E1F4A78(a1, v5, a2, a3);
          break;
        case 15:
          sub_20E1F4B2C(a1, v5, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1F4734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoConfidence(0);
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
  return sub_20E322430();
}

uint64_t sub_20E1F47E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  return sub_20E322430();
}

uint64_t sub_20E1F489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  return sub_20E322430();
}

uint64_t sub_20E1F4950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0639C0();
  return sub_20E322300();
}

uint64_t sub_20E1F49C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  sub_20E21DA3C(&qword_27C869690, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E1F4A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoCGRect(0);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  return sub_20E322430();
}

uint64_t sub_20E1F4B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoCGRect(0);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  return sub_20E322430();
}

uint64_t ContextProtoContextMetadata.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[2])
  {
    result = sub_20E322540();
  }

  if (!v4)
  {
    if (v3[4])
    {
      sub_20E322540();
    }

    sub_20E1F4E7C(v3, v7, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for ContextProtoSurroundingText(0);
      sub_20E21DA3C(&qword_27C869458, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);
      sub_20E322570();
    }

    sub_20E1F5098(v3, v7, a2, a3);
    sub_20E1F52B4(v3, v7, a2, a3);
    sub_20E1F532C(v3, v7, a2, a3, type metadata accessor for ContextProtoContextMetadata);
    sub_20E1F53A8(v3, v7, a2, a3);
    sub_20E1F5420(v3, v7, a2, a3);
    sub_20E1F5498(v3, v7, a2, a3);
    sub_20E1F56B4(v3, v7, a2, a3);
    sub_20E1F5740(v3, v7, a2, a3);
    sub_20E1F595C(v3, v7, a2, a3);
    sub_20E1F59D4(v3, v7, a2, a3);
    sub_20E1F5BF0(v3, v7, a2, a3);
    sub_20E1F5E0C(v3, v7, a2, a3);
    sub_20E1F5E84(v3, v7, a2, a3);
    type metadata accessor for ContextProtoContextMetadata(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1F4E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD0, &qword_20E323EB8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoConfidence(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C863BD0, &qword_20E323EB8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BD0, &qword_20E323EB8);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoConfidence);
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_20E1F5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoBoundingBox(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C863BE8, &qword_20E323ED0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BE8, &qword_20E323ED0);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoBoundingBox);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_20E1F52B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_20E322530();
  }

  return result;
}

uint64_t sub_20E1F532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1F53A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E1F5420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E1F5498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoBoundingBox(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v12 + 52), v7, &qword_27C863BE8, &qword_20E323ED0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BE8, &qword_20E323ED0);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoBoundingBox);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_20E1F56B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 56)) != 6)
  {
    sub_20E0639C0();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E1F5740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF0, &qword_20E323ED8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v12 + 60), v7, &qword_27C863BF0, &qword_20E323ED8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BF0, &qword_20E323ED8);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_20E21DA3C(&qword_27C869690, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
}

uint64_t sub_20E1F595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 64) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1F59D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoCGRect(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v12 + 68), v7, &qword_27C863BF8, &qword_20E323EE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BF8, &qword_20E323EE0);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoCGRect);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_20E1F5BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoCGRect(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v12 + 72), v7, &qword_27C863BF8, &qword_20E323EE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BF8, &qword_20E323EE0);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoCGRect);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_20E1F5E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if ((*(a1 + *(result + 76) + 8) & 1) == 0)
  {
    return sub_20E322530();
  }

  return result;
}

uint64_t sub_20E1F5E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 80) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1F5F48(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_20E322DE0();
  a1(0);
  sub_20E21DA3C(a2, a3, a4);
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E1F5FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1F6064(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 84);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E1F612C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AE0, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F61CC(uint64_t a1)
{
  sub_20E21DA3C(&qword_27C869678, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);

  return sub_20E322470();
}

uint64_t sub_20E1F6238(uint64_t a1, uint64_t a2)
{
  sub_20E21DA3C(&qword_27C869678, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);

  return sub_20E322480();
}

uint64_t sub_20E1F62D4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869098);
  __swift_project_value_buffer(v0, qword_27C869098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_20E3223D0();
    }
  }

  return result;
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 8))
  {
    v5 = sub_20E322540();
  }

  if (!v4)
  {
    if (*(v3 + 24))
    {
      sub_20E322540();
    }

    type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
    return sub_20E3221A0();
  }

  return v5;
}

uint64_t sub_20E1F6638@<X0>(_OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1F66AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AD8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F674C(uint64_t a1)
{
  sub_20E21DA3C(&qword_27C869690, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);

  return sub_20E322470();
}

uint64_t sub_20E1F67B8(uint64_t a1, uint64_t a2)
{
  sub_20E21DA3C(&qword_27C869690, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);

  return sub_20E322480();
}

uint64_t sub_20E1F6854()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8690B0);
  __swift_project_value_buffer(v0, qword_27C8690B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x_coordinate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y_coordinate";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoBoundingBox.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_20E322340();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoBoundingBox.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((v3[4] & 1) == 0)
  {
    v5 = sub_20E3224F0();
  }

  if (!v4)
  {
    if ((v3[12] & 1) == 0)
    {
      sub_20E3224F0();
    }

    if ((v3[20] & 1) == 0)
    {
      sub_20E3224F0();
    }

    if ((v3[28] & 1) == 0)
    {
      sub_20E3224F0();
    }

    type metadata accessor for ContextProtoBoundingBox(0);
    return sub_20E3221A0();
  }

  return v5;
}

uint64_t sub_20E1F6CBC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 1;
  *(a2 + 8) = 0;
  *(a2 + 12) = 1;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1F6D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AD0, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F6DEC(uint64_t a1)
{
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);

  return sub_20E322470();
}

uint64_t sub_20E1F6E58(uint64_t a1, uint64_t a2)
{
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);

  return sub_20E322480();
}

uint64_t sub_20E1F6EF4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8690C8);
  __swift_project_value_buffer(v0, qword_27C8690C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "on_screen_bounding_box";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoSurroundingText.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E3223D0();
    }

    else if (result == 2)
    {
      sub_20E1F7178(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E1F7178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoSurroundingText(0);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  return sub_20E322430();
}

uint64_t ContextProtoSurroundingText.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 8))
  {
    result = sub_20E322540();
  }

  if (!v4)
  {
    sub_20E1F72CC(v3, v7, a2, a3);
    type metadata accessor for ContextProtoSurroundingText(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1F72CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoBoundingBox(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoSurroundingText(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863BE8, &qword_20E323ED0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BE8, &qword_20E323ED0);
  }

  sub_20E21DAE4(v7, v11, type metadata accessor for ContextProtoBoundingBox);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  sub_20E322580();
  return sub_20E21DA84(v11, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_20E1F7534@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1F7600(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AC8, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F76A0(uint64_t a1)
{
  sub_20E21DA3C(&qword_27C869458, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);

  return sub_20E322470();
}

uint64_t sub_20E1F770C(uint64_t a1, uint64_t a2)
{
  sub_20E21DA3C(&qword_27C869458, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);

  return sub_20E322480();
}

uint64_t sub_20E1F77A8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8690E0);
  __swift_project_value_buffer(v0, qword_27C8690E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "score";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bucket";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoConfidence.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E322350();
      }

      else if (result == 2)
      {
        sub_20E063774();
        sub_20E322310();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoConfidence.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_20E3224F0(), !v4))
  {
    if (!*(v3 + 4) || (sub_20E063774(), result = sub_20E3224D0(), !v4))
    {
      type metadata accessor for ContextProtoConfidence(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t static ContextProtoConfidence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  type metadata accessor for ContextProtoConfidence(0);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E1F7C24@<X0>(uint64_t a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_20E1F7CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AC0, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F7D44(uint64_t a1)
{
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);

  return sub_20E322470();
}

uint64_t sub_20E1F7DB0(uint64_t a1, uint64_t a2)
{
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);

  return sub_20E322480();
}

uint64_t sub_20E1F7E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E1F7EF8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8690F8);
  __swift_project_value_buffer(v0, qword_27C8690F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriRequestContext";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intelligenceCommand";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "appInFocusContext";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "onScreenUIText";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "appContext";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nowPlayingMediaItem";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_20E1F943C(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E1F99F8(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E1F9FB4(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E1F8314(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E1F88C4(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E1F8E80(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E1F8314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868758, &unk_20E33C210);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863C00, &qword_20E323EE8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863C00, &qword_20E323EE8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E21DAE4(v12, v19, type metadata accessor for ContextProtoStructuredContextKind);
    sub_20E21DAE4(v19, v17, type metadata accessor for ContextProtoStructuredContextKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E21DA84(v17, type metadata accessor for ContextProtoStructuredContextKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868758, &unk_20E33C210);
      v31 = v39;
      sub_20E21DAE4(v17, v39, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      sub_20E21DAE4(v31, v24, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E21DA3C(&qword_27C868770, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868758, &unk_20E33C210);
  }

  sub_20E0486F4(v24, v32, &qword_27C868758, &unk_20E33C210);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868758, &unk_20E33C210);
    return sub_20E04875C(v32, &qword_27C868758, &unk_20E33C210);
  }

  else
  {
    v35 = v40;
    sub_20E21DAE4(v32, v40, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868758, &unk_20E33C210);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863C00, &qword_20E323EE8);
    sub_20E21DAE4(v35, v36, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}