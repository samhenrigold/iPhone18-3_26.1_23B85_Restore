uint64_t TranscriptProtoPermissionRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (v5 <= 3)
  {
    if (*v3 > 1u)
    {
      if (v5 == 2)
      {
        result = sub_23C7829DC(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_18;
      }

      result = sub_23C783604(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      if (!*v3)
      {
        result = sub_23C782740(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_18;
      }

      result = sub_23C78288C(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

LABEL_18:
    type metadata accessor for TranscriptProtoPermissionRequirement(0);
    return sub_23C870F14();
  }

  if (*v3 <= 5u)
  {
    if (v5 == 4)
    {
      result = sub_23C783754(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }

      goto LABEL_18;
    }

    result = sub_23C7838A4(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v5 == 6)
  {
    result = sub_23C7839F4(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v5 != 7)
  {
    goto LABEL_18;
  }

  result = sub_23C783B44(v3, a1, a2, a3);
  if (!v4)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_23C783604(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 3)
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C783754(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 4)
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C7838A4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 5)
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C7839F4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 6)
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C783B44(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 7)
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C783D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203518, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C783DF4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2022F8, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);

  return sub_23C8711F4();
}

uint64_t sub_23C783E60(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2022F8, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);

  return sub_23C871204();
}

uint64_t sub_23C783EFC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200640);
  __swift_project_value_buffer(v0, qword_27E200640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "failure";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 8;
  *v10 = "concludesStreamingStatementID";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionFailure.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoActionFailureFailure(0);
        sub_23C8314AC(&qword_27E202328, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);
        sub_23C8711A4();
      }

      else if (result == 8)
      {
        sub_23C7841EC(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7841EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionFailure(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7842F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C20, &unk_23C8A1230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203C20, &unk_23C8A1230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203C20, &unk_23C8A1230);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoActionFailureFailure);
  sub_23C8314AC(&qword_27E202328, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailure);
}

uint64_t sub_23C784504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionFailure(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7847E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203510, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C784884(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202310, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);

  return sub_23C8711F4();
}

uint64_t sub_23C7848F0(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202310, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);

  return sub_23C871204();
}

uint64_t sub_23C78498C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200658);
  __swift_project_value_buffer(v0, qword_27E200658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_23C87D710;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "preflightCheckFailure";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "preciseLocationDisabled";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "locationDisabled";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "wifiDisabled";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "bluetoothDisabled";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "networkFailure";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "partialFailure";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "unsupportedOnDevice";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "featureCurrentlyRestricted";
  *(v22 + 8) = 26;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "entityNotFound";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "actionNotAllowed";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "unableToUndo";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "actionCanceled";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "valueDisambiguationRejected";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "noMatchingTool";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "developerDefinedError";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "unableToCancel";
  *(v37 + 8) = 14;
  *(v37 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionFailureFailure.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_23C785164(a1, v5, a2, a3);
        break;
      case 2:
        sub_23C7854E4(a1, v5, a2, a3);
        break;
      case 3:
        sub_23C785864(a1, v5, a2, a3);
        break;
      case 4:
        sub_23C785BE4(a1, v5, a2, a3);
        break;
      case 5:
        sub_23C785F64(a1, v5, a2, a3);
        break;
      case 6:
        sub_23C7862E4(a1, v5, a2, a3);
        break;
      case 7:
        sub_23C786664(a1, v5, a2, a3);
        break;
      case 8:
        sub_23C7869E4(a1, v5, a2, a3);
        break;
      case 9:
        sub_23C786D64(a1, v5, a2, a3);
        break;
      case 10:
        sub_23C7870E4(a1, v5, a2, a3);
        break;
      case 11:
        sub_23C787464(a1, v5, a2, a3);
        break;
      case 12:
        sub_23C7877E4(a1, v5, a2, a3);
        break;
      case 13:
        sub_23C787B64(a1, v5, a2, a3);
        break;
      case 14:
        sub_23C787EE4(a1, v5, a2, a3);
        break;
      case 15:
        sub_23C788264(a1, v5, a2, a3);
        break;
      case 16:
        sub_23C7885E4(v5, a1, a2, a3);
        break;
      case 17:
        sub_23C788BA4(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_23C785164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 1, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C7854E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 2, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C785864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 3, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C785BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 4, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C785F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 5, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C7862E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 6, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C786664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 7, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C7869E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 8, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C786D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 9, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C7870E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 10, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C787464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 11, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C7877E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 12, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C787B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 13, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C787EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 14, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C788264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 15, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t sub_23C7885E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v5 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C18, &qword_23C8A0E10);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v40 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v32 - v23;
  v38 = *(v6 + 56);
  v39 = v6 + 56;
  v38(&v32 - v23, 1, 1, v5);
  v35 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201710, &qword_23C88DBE0);
  v33 = v14;
  v34 = v13;
  v25 = (*(v14 + 48))(v12, 1, v13);
  if (v25 == 1)
  {
    sub_23C585C34(v12, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if ((*(v6 + 48))(v17, 16, v5))
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203C18, &qword_23C8A0E10);
      v26 = v36;
      sub_23C83155C(v17, v36, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      sub_23C83155C(v26, v24, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v38(v24, 0, 1, v5);
    }
  }

  sub_23C8314AC(&qword_27E202340, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);
  v27 = v41;
  sub_23C8711A4();
  if (v27)
  {
    return sub_23C585C34(v24, &qword_27E203C18, &qword_23C8A0E10);
  }

  v29 = v40;
  sub_23C5855B0(v24, v40, &qword_27E203C18, &qword_23C8A0E10);
  if ((*(v6 + 48))(v29, 1, v5) == 1)
  {
    sub_23C585C34(v24, &qword_27E203C18, &qword_23C8A0E10);
    return sub_23C585C34(v29, &qword_27E203C18, &qword_23C8A0E10);
  }

  else
  {
    v30 = v37;
    sub_23C83155C(v29, v37, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203C18, &qword_23C8A0E10);
    v31 = v35;
    sub_23C585C34(v35, &qword_27E201710, &qword_23C88DBE0);
    sub_23C83155C(v30, v31, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    v38(v31, 0, 16, v5);
    return (*(v33 + 56))(v31, 0, 1, v34);
  }
}

uint64_t sub_23C788BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E201710, &qword_23C88DBE0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E201710, &qword_23C88DBE0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E201710, &qword_23C88DBE0);
  v24 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v24 - 8) + 56))(v23, 16, 16, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t TranscriptProtoActionFailureFailure.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E201710, &qword_23C88DBE0);
  v11 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
LABEL_36:
    type metadata accessor for TranscriptProtoActionFailureFailure(0);
    return sub_23C870F14();
  }

  else
  {
    v12 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    switch((*(*(v12 - 8) + 48))(v10, 16, v12))
    {
      case 1u:
        result = sub_23C7892E0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 2u:
        result = sub_23C789558(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 3u:
        result = sub_23C7897D0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 4u:
        result = sub_23C789A48(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 5u:
        result = sub_23C789CC0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 6u:
        result = sub_23C789F38(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 7u:
        result = sub_23C78A1B0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 8u:
        result = sub_23C78A428(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 9u:
        result = sub_23C78A6A0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xAu:
        result = sub_23C78A918(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xBu:
        result = sub_23C78AB90(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xCu:
        result = sub_23C78AE08(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xDu:
        result = sub_23C78B080(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xEu:
        result = sub_23C78B2F8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xFu:
        result = sub_23C78B570(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0x10u:
        result = sub_23C78BA58(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      default:
        sub_23C78B7E8(v3, a1, a2, a3);
        result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23C7892E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 1)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C789558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 2)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7897D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 3)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C789A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 4)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C789CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 5)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C789F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 6)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78A1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 7)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 8)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 9)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 10)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78AB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 11)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78AE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 12)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78B080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 13)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78B2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 14)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78B570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 15)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_23C585C34(v7, &qword_27E201710, &qword_23C88DBE0);
    __break(1u);
  }

  else if (!(*(v9 + 48))(v7, 16, v8))
  {
    sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    sub_23C8314AC(&qword_27E202340, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);
    sub_23C871304();
    return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C78BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_23C5855B0(a1, v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 16, v13);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v14 == 16)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C78BD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203508, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78BE20(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202328, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);

  return sub_23C8711F4();
}

uint64_t sub_23C78BE8C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202328, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);

  return sub_23C871204();
}

uint64_t sub_23C78BF28()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200670);
  __swift_project_value_buffer(v0, qword_27E200670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localizedString";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "code";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_23C8712C4(), !v4))
    {
      if (!v3[4] || (result = sub_23C871294(), !v4))
      {
        type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C78C2D0@<X0>(void *a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  return result;
}

uint64_t sub_23C78C358(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203500, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78C3F8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202340, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);

  return sub_23C8711F4();
}

uint64_t sub_23C78C464(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202340, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);

  return sub_23C871204();
}

uint64_t sub_23C78C500()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200688);
  __swift_project_value_buffer(v0, qword_27E200688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "returnValue";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "undoContext";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "didShowInAppResult";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "followUpAction";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "shouldOpen";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "inAppSearchString";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "concludesStreamingStatementID";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionSuccess.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      switch(result)
      {
        case 1:
          sub_23C78C980(a1, v5, a2, a3);
          break;
        case 3:
          sub_23C78CA34(a1, v5, a2, a3);
          break;
        case 4:
          goto LABEL_12;
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        type metadata accessor for TranscriptProtoActionSuccess(0);
        sub_23C871154();
      }

      else if (result == 8)
      {
        sub_23C78CB9C(a1, v5, a2, a3);
      }
    }

    else if (result == 5)
    {
      sub_23C78CAE8(a1, v5, a2, a3);
    }

    else
    {
LABEL_12:
      sub_23C871084();
    }
  }
}

uint64_t sub_23C78C980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionSuccess(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C78CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionSuccess(0);
  type metadata accessor for TranscriptProtoUndoContext(0);
  sub_23C8314AC(&qword_27E202388, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);
  return sub_23C8711A4();
}

uint64_t sub_23C78CAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionSuccess(0);
  type metadata accessor for TranscriptProtoFollowUpAction(0);
  sub_23C8314AC(&qword_27E2023A0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);
  return sub_23C8711A4();
}

uint64_t sub_23C78CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionSuccess(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoActionSuccess.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C78CD7C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C78CF98(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_23C871244();
    }

    sub_23C78D1B4(v3, a1, a2, a3);
    if (v3[1] == 1)
    {
      sub_23C871244();
    }

    sub_23C78D3D0(v3, a1, a2, a3);
    sub_23C78D448(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoActionSuccess(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C78CD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C78CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C00, &unk_23C8A1240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoUndoContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E203C00, &unk_23C8A1240);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203C00, &unk_23C8A1240);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoUndoContext);
  sub_23C8314AC(&qword_27E202388, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoUndoContext);
}

uint64_t sub_23C78D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BF0, &qword_23C8A0DF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_23C5855B0(a1 + *(v12 + 32), v7, &qword_27E203BF0, &qword_23C8A0DF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203BF0, &qword_23C8A0DF0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoFollowUpAction);
  sub_23C8314AC(&qword_27E2023A0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoFollowUpAction);
}

uint64_t sub_23C78D3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoActionSuccess(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C78D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_23C5855B0(a1 + *(v12 + 40), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C78D6B0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[10];
  v11 = &a2[a1[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a2[v10], 1, 1, v12);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C78D850(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034F8, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78D8F0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202358, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);

  return sub_23C8711F4();
}

uint64_t sub_23C78D95C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202358, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);

  return sub_23C871204();
}

uint64_t sub_23C78DA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_23C871044();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_23C8314AC(a5, a6, a7);
      sub_23C8711A4();
    }
  }

  return result;
}

uint64_t sub_23C78DC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034F0, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78DD00(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202370, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);

  return sub_23C8711F4();
}

uint64_t sub_23C78DD6C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202370, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);

  return sub_23C871204();
}

uint64_t sub_23C78DE08()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2006B8);
  __swift_project_value_buffer(v0, qword_27E2006B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "actionDescription";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C78E158(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034E8, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78E1F8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202388, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);

  return sub_23C8711F4();
}

uint64_t sub_23C78E264(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202388, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);

  return sub_23C871204();
}

uint64_t sub_23C78E408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BE0, &unk_23C8A1250);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203BE0, &unk_23C8A1250);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203BE0, &unk_23C8A1250);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_23C8314AC(&qword_27E2023B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableAction);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
}

uint64_t sub_23C78E6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034E0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78E768(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2023A0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);

  return sub_23C8711F4();
}

uint64_t sub_23C78E7D4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2023A0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);

  return sub_23C871204();
}

uint64_t sub_23C78E8DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_23C871044();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C78E960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BC8, &qword_23C8A0DD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BD8, &qword_23C8A0DE0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_23C5855B0(v45, v11, &qword_27E203BC8, &qword_23C8A0DD0);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_23C585C34(v11, &qword_27E203BC8, &qword_23C8A0DD0);
    v26 = v40;
  }

  else
  {
    sub_23C83155C(v11, v18, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
    sub_23C83155C(v18, v16, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
    sub_23C585C34(v23, &qword_27E203BD8, &qword_23C8A0DE0);
    v27 = v38;
    sub_23C83155C(v16, v38, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    sub_23C83155C(v27, v23, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_23C8314AC(&qword_27E2023D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  v28 = v41;
  sub_23C8711A4();
  v29 = v39;
  if (v28)
  {
    return sub_23C585C34(v23, &qword_27E203BD8, &qword_23C8A0DE0);
  }

  sub_23C5855B0(v23, v39, &qword_27E203BD8, &qword_23C8A0DE0);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_23C585C34(v23, &qword_27E203BD8, &qword_23C8A0DE0);
    return sub_23C585C34(v29, &qword_27E203BD8, &qword_23C8A0DE0);
  }

  else
  {
    v31 = v36;
    sub_23C83155C(v29, v36, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v23, &qword_27E203BD8, &qword_23C8A0DE0);
    v32 = v45;
    sub_23C585C34(v45, &qword_27E203BC8, &qword_23C8A0DD0);
    sub_23C83155C(v31, v32, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_23C78EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BC8, &qword_23C8A0DD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203BC8, &qword_23C8A0DD0);
  v11 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203BC8, &qword_23C8A0DD0);
  }

  sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_23C8314AC(&qword_27E2023D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_23C871304();
  return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
}

uint64_t sub_23C78F19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034D8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78F23C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2023B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableAction);

  return sub_23C8711F4();
}

uint64_t sub_23C78F2A8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2023B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableAction);

  return sub_23C871204();
}

uint64_t sub_23C78F344()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200700);
  __swift_project_value_buffer(v0, qword_27E200700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkAction";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "linkShowOutputActionOptions";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C78F5BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(v5 + 32, a2, a3);
        break;
      case 2:
        a4(v5 + 16, a2, a3);
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_14;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_23C871264();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (!v3[4] || (result = sub_23C8712E4(), !v4))
    {
      type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
      return sub_23C870F14();
    }
  }

  return result;
}

double sub_23C78F7D8@<D0>(uint64_t a2@<X8>)
{
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 16) = xmmword_23C87D700;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23C78F868(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78F908(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2023D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return sub_23C8711F4();
}

uint64_t sub_23C78F974(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2023D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return sub_23C871204();
}

uint64_t sub_23C78FA10()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200718);
  __swift_project_value_buffer(v0, qword_27E200718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "parameterIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "item";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoParameterConfirmation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 5:
        sub_23C871104();
        break;
      case 2:
        sub_23C78FCF8(a1, v5, a2, a3);
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t sub_23C78FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterConfirmation(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoParameterConfirmation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C78FE7C(v3, a1, a2, a3);
    if (!v4)
    {
      if ((*(v3 + 24) & 1) == 0)
      {
        sub_23C871294();
      }

      type metadata accessor for TranscriptProtoParameterConfirmation(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C78FE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C790148(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034C8, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7901E8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2023E8, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);

  return sub_23C8711F4();
}

uint64_t sub_23C790254(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2023E8, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);

  return sub_23C871204();
}

uint64_t sub_23C7902F0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200730);
  __swift_project_value_buffer(v0, qword_27E200730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "parameterIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "items";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoParameterDisambiguation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 5:
          sub_23C871104();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
          sub_23C871194();
          break;
        case 1:
          sub_23C871164();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v6 = *(v3 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_23C8712C4(), !v4))
  {
    if (*(*(v3 + 16) + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      result = sub_23C8712F4();
      if (v4)
      {
        return result;
      }

      if (*(v3 + 32))
      {
        goto LABEL_9;
      }
    }

    else if (*(v3 + 32))
    {
LABEL_9:
      if (!v4)
      {
        type metadata accessor for TranscriptProtoParameterDisambiguation(0);
        return sub_23C870F14();
      }

      return result;
    }

    result = sub_23C871294();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_23C7907D4@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C79086C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034C0, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79090C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202400, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);

  return sub_23C8711F4();
}

uint64_t sub_23C790978(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202400, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);

  return sub_23C871204();
}

uint64_t TranscriptProtoValueDisambiguation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoValueDisambiguation(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C790C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034B8, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C790CDC(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202418, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);

  return sub_23C8711F4();
}

uint64_t sub_23C790D48(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202418, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);

  return sub_23C871204();
}

uint64_t sub_23C790DE0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200760);
  __swift_project_value_buffer(v0, qword_27E200760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23C875580;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "success";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "actionConfirmation";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "parameterNeedsValue";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parameterConfirmation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "parameterDisambiguation";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parameterNotAllowed";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "parameterCandidatesNotFound";
  *(v19 + 1) = 27;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "actionRequirement";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "toolDisambiguation";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "failure";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "valueDisambiguation";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "snippetStream";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoStatementOutcome.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 6)
    {
      if (result > 9)
      {
        switch(result)
        {
          case 10:
            sub_23C7947E0(v5, a1, a2, a3);
            break;
          case 11:
            sub_23C794D9C(v5, a1, a2, a3);
            break;
          case 12:
            sub_23C795358(v5, a1, a2, a3);
            break;
        }
      }

      else if (result == 7)
      {
        sub_23C7936AC(v5, a1, a2, a3);
      }

      else if (result == 8)
      {
        sub_23C793C68(v5, a1, a2, a3);
      }

      else
      {
        sub_23C794224(v5, a1, a2, a3);
      }
    }

    else if (result > 3)
    {
      if (result == 4)
      {
        sub_23C792578(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_23C792B34(v5, a1, a2, a3);
      }

      else
      {
        sub_23C7930F0(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C791450(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C791A00(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C791FBC(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C791450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B68, &qword_23C8A0D70);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203B68, &qword_23C8A0D70);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoActionSuccess);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoActionSuccess);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202358, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B68, &qword_23C8A0D70);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B68, &qword_23C8A0D70);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B68, &qword_23C8A0D70);
    return sub_23C585C34(v32, &qword_27E203B68, &qword_23C8A0D70);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoActionSuccess);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B68, &qword_23C8A0D70);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoActionSuccess);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C791A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B70, &qword_23C8A0D78);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203B70, &qword_23C8A0D78);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoActionConfirmation);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoActionConfirmation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202028, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B70, &qword_23C8A0D78);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B70, &qword_23C8A0D78);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B70, &qword_23C8A0D78);
    return sub_23C585C34(v32, &qword_27E203B70, &qword_23C8A0D78);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoActionConfirmation);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B70, &qword_23C8A0D78);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoActionConfirmation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C791FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B78, &qword_23C8A0D80);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203B78, &qword_23C8A0D80);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoParameterNeedsValue);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoParameterNeedsValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202440, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B78, &qword_23C8A0D80);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B78, &qword_23C8A0D80);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B78, &qword_23C8A0D80);
    return sub_23C585C34(v32, &qword_27E203B78, &qword_23C8A0D80);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoParameterNeedsValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B78, &qword_23C8A0D80);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoParameterNeedsValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C792578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B80, &qword_23C8A0D88);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E203B80, &qword_23C8A0D88);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoParameterConfirmation);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoParameterConfirmation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2023E8, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B80, &qword_23C8A0D88);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B80, &qword_23C8A0D88);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B80, &qword_23C8A0D88);
    return sub_23C585C34(v32, &qword_27E203B80, &qword_23C8A0D88);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoParameterConfirmation);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B80, &qword_23C8A0D88);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoParameterConfirmation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C792B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B88, &qword_23C8A0D90);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E203B88, &qword_23C8A0D90);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoParameterDisambiguation);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoParameterDisambiguation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202400, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B88, &qword_23C8A0D90);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B88, &qword_23C8A0D90);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B88, &qword_23C8A0D90);
    return sub_23C585C34(v32, &qword_27E203B88, &qword_23C8A0D90);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoParameterDisambiguation);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B88, &qword_23C8A0D90);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoParameterDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7930F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B90, &qword_23C8A0D98);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E203B90, &qword_23C8A0D98);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoParameterNotAllowed);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoParameterNotAllowed);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202458, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B90, &qword_23C8A0D98);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B90, &qword_23C8A0D98);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B90, &qword_23C8A0D98);
    return sub_23C585C34(v32, &qword_27E203B90, &qword_23C8A0D98);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoParameterNotAllowed);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B90, &qword_23C8A0D98);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoParameterNotAllowed);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7936AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B98, &qword_23C8A0DA0);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v24, &qword_27E203B98, &qword_23C8A0DA0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202480, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B98, &qword_23C8A0DA0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B98, &qword_23C8A0DA0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B98, &qword_23C8A0DA0);
    return sub_23C585C34(v32, &qword_27E203B98, &qword_23C8A0DA0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B98, &qword_23C8A0DA0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C793C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BA0, &qword_23C8A0DA8);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v24, &qword_27E203BA0, &qword_23C8A0DA8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoActionRequirement);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoActionRequirement);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202268, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203BA0, &qword_23C8A0DA8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203BA0, &qword_23C8A0DA8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203BA0, &qword_23C8A0DA8);
    return sub_23C585C34(v32, &qword_27E203BA0, &qword_23C8A0DA8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoActionRequirement);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203BA0, &qword_23C8A0DA8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoActionRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C794224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BA8, &qword_23C8A0DB0);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v24, &qword_27E203BA8, &qword_23C8A0DB0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoToolDisambiguation);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoToolDisambiguation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202098, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203BA8, &qword_23C8A0DB0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203BA8, &qword_23C8A0DB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203BA8, &qword_23C8A0DB0);
    return sub_23C585C34(v32, &qword_27E203BA8, &qword_23C8A0DB0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoToolDisambiguation);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203BA8, &qword_23C8A0DB0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoToolDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7947E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionFailure(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BB0, &qword_23C8A0DB8);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v24, &qword_27E203BB0, &qword_23C8A0DB8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoActionFailure);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoActionFailure);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202310, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203BB0, &qword_23C8A0DB8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203BB0, &qword_23C8A0DB8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203BB0, &qword_23C8A0DB8);
    return sub_23C585C34(v32, &qword_27E203BB0, &qword_23C8A0DB8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoActionFailure);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203BB0, &qword_23C8A0DB8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoActionFailure);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C794D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BB8, &qword_23C8A0DC0);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v24, &qword_27E203BB8, &qword_23C8A0DC0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoValueDisambiguation);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoValueDisambiguation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202418, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203BB8, &qword_23C8A0DC0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203BB8, &qword_23C8A0DC0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203BB8, &qword_23C8A0DC0);
    return sub_23C585C34(v32, &qword_27E203BB8, &qword_23C8A0DC0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoValueDisambiguation);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203BB8, &qword_23C8A0DC0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoValueDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C795358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BC0, &qword_23C8A0DC8);
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
  sub_23C5855B0(a1, v12, &qword_27E201770, &unk_23C8A1260);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201770, &unk_23C8A1260);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v24, &qword_27E203BC0, &qword_23C8A0DC8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSnippetStream);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSnippetStream);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202370, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203BC0, &qword_23C8A0DC8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203BC0, &qword_23C8A0DC8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203BC0, &qword_23C8A0DC8);
    return sub_23C585C34(v32, &qword_27E203BC0, &qword_23C8A0DC8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSnippetStream);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203BC0, &qword_23C8A0DC8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSnippetStream);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoStatementOutcome.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_23C797058(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        sub_23C797290(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_23C7974C8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_23C7969B0(v3, a1, a2, a3);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_23C796BE8(v3, a1, a2, a3);
        goto LABEL_28;
      }

      sub_23C796E20(v3, a1, a2, a3);
      if (!v4)
      {
LABEL_31:
        sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
LABEL_2:
        type metadata accessor for TranscriptProtoStatementOutcome(0);
        return sub_23C870F14();
      }
    }

    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23C796308(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C796540(v3, a1, a2, a3);
    }

    else
    {
      sub_23C796778(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C795E98(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7960D0(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_23C795C64(v3, a1, a2, a3);
  }

LABEL_28:
  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  if (!v4)
  {
    goto LABEL_2;
  }

  return result;
}

uint64_t sub_23C795C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionSuccess(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoActionSuccess);
    sub_23C8314AC(&qword_27E202358, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionSuccess);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C795E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoActionConfirmation);
    sub_23C8314AC(&qword_27E202028, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionConfirmation);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7960D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoParameterNeedsValue);
    sub_23C8314AC(&qword_27E202440, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoParameterNeedsValue);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_23C8314AC(&qword_27E2023E8, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoParameterConfirmation);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoParameterDisambiguation);
    sub_23C8314AC(&qword_27E202400, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoParameterDisambiguation);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoParameterNotAllowed);
    sub_23C8314AC(&qword_27E202458, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoParameterNotAllowed);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7969B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    sub_23C8314AC(&qword_27E202480, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionRequirement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoActionRequirement);
    sub_23C8314AC(&qword_27E202268, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionRequirement);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoToolDisambiguation);
    sub_23C8314AC(&qword_27E202098, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoToolDisambiguation);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C797058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailure(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoActionFailure);
    sub_23C8314AC(&qword_27E202310, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionFailure);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C797290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_23C8314AC(&qword_27E202418, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoValueDisambiguation);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7974C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSnippetStream(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201770, &unk_23C8A1260);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSnippetStream);
    sub_23C8314AC(&qword_27E202370, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSnippetStream);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7977B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034B0, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C797850(uint64_t a1)
{
  sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);

  return sub_23C8711F4();
}

uint64_t sub_23C7978BC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);

  return sub_23C871204();
}

uint64_t sub_23C797A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034A8, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C797AF8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202440, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);

  return sub_23C8711F4();
}

uint64_t sub_23C797B64(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202440, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);

  return sub_23C871204();
}

uint64_t sub_23C797BFC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200790);
  __swift_project_value_buffer(v0, qword_27E200790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "reason";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoParameterNotAllowed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C821B30();
          sub_23C8710A4();
          break;
        case 2:
          sub_23C797F14(a1, v5, a2, a3);
          break;
        case 1:
          sub_23C871164();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C797F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoParameterNotAllowed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C7980BC(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16))
      {
        sub_23C821B30();
        sub_23C871254();
      }

      type metadata accessor for TranscriptProtoParameterNotAllowed(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7980BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C79833C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3 + v4, 1, 1, v5);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_23C798414(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034A0, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7984B4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202458, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);

  return sub_23C8711F4();
}

uint64_t sub_23C798520(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202458, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);

  return sub_23C871204();
}

uint64_t sub_23C7985A0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2007A8);
  __swift_project_value_buffer(v0, qword_27E2007A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "missingRequiredPhoneNumber";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "missingRequiredEmailAddress";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C798818()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2007C0);
  __swift_project_value_buffer(v0, qword_27E2007C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C798A30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_23C871044();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C871164();
    }

    else if (result == 2)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C798AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C798BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v12 = v5[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = sub_23C8712C4(), !v6))
  {
    result = a4(v5, a1, a2, a3);
    if (!v6)
    {
      a5(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C798C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C798F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203498, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C798FF4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202480, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);

  return sub_23C8711F4();
}

uint64_t sub_23C799060(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202480, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);

  return sub_23C871204();
}

uint64_t sub_23C7991FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203490, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79929C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202498, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);

  return sub_23C8711F4();
}

uint64_t sub_23C799308(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202498, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);

  return sub_23C871204();
}

uint64_t TranscriptProtoSpanID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_23C8712E4(), !v4))
  {
    type metadata accessor for TranscriptProtoSpanID(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t static TranscriptProtoSpanID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoSpanID(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C799584@<X0>(void *a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C799600(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203488, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7996A0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2024B0, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);

  return sub_23C8711F4();
}

uint64_t sub_23C79970C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2024B0, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);

  return sub_23C871204();
}

uint64_t sub_23C799788(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C799850()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200808);
  __swift_project_value_buffer(v0, qword_27E200808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "prompt";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "promptResponse";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 9;
  *v12 = "statements";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "overrideId";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 11;
  *v15 = "planSource";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 8)
      {
        if (result == 3 || result == 4)
        {
          sub_23C871164();
        }
      }

      else
      {
        switch(result)
        {
          case 9:
            type metadata accessor for TranscriptProtoProgramStatement(0);
            sub_23C8314AC(&qword_27E2017B0, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);
            sub_23C871194();
            break;
          case 10:
            sub_23C871154();
            break;
          case 11:
            sub_23C831404();
            sub_23C871094();
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t TranscriptProtoPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = v3[2];
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_23C8712C4(), !v4))
    {
      if (*(v3[4] + 16))
      {
        type metadata accessor for TranscriptProtoProgramStatement(0);
        sub_23C8314AC(&qword_27E2017B0, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);
        result = sub_23C8712F4();
        if (v4)
        {
          return result;
        }

        if (!v3[6])
        {
          goto LABEL_13;
        }
      }

      else if (!v3[6])
      {
LABEL_13:
        if (!v4)
        {
          sub_23C799E18(v3, a1, a2, a3);
          type metadata accessor for TranscriptProtoPlan(0);
          return sub_23C870F14();
        }

        return result;
      }

      result = sub_23C8712C4();
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_23C799E18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 56) != 4)
  {
    sub_23C831404();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C799EDC@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 4;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C799F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203480, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79A020(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2024C8, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);

  return sub_23C8711F4();
}

uint64_t sub_23C79A08C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2024C8, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);

  return sub_23C871204();
}

uint64_t sub_23C79A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B40, &qword_23C8A0D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B50, &qword_23C8A0D60);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_23C5855B0(v45, v11, &qword_27E203B40, &qword_23C8A0D50);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_23C585C34(v11, &qword_27E203B40, &qword_23C8A0D50);
    v26 = v40;
  }

  else
  {
    sub_23C83155C(v11, v18, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
    sub_23C83155C(v18, v16, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
    sub_23C585C34(v23, &qword_27E203B50, &qword_23C8A0D60);
    v27 = v38;
    sub_23C83155C(v16, v38, type metadata accessor for TranscriptProtoPlanGenerationError);
    sub_23C83155C(v27, v23, type metadata accessor for TranscriptProtoPlanGenerationError);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_23C8314AC(&qword_27E2024F8, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);
  v28 = v41;
  sub_23C8711A4();
  v29 = v39;
  if (v28)
  {
    return sub_23C585C34(v23, &qword_27E203B50, &qword_23C8A0D60);
  }

  sub_23C5855B0(v23, v39, &qword_27E203B50, &qword_23C8A0D60);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_23C585C34(v23, &qword_27E203B50, &qword_23C8A0D60);
    return sub_23C585C34(v29, &qword_27E203B50, &qword_23C8A0D60);
  }

  else
  {
    v31 = v36;
    sub_23C83155C(v29, v36, type metadata accessor for TranscriptProtoPlanGenerationError);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v23, &qword_27E203B50, &qword_23C8A0D60);
    v32 = v45;
    sub_23C585C34(v45, &qword_27E203B40, &qword_23C8A0D50);
    sub_23C83155C(v31, v32, type metadata accessor for TranscriptProtoPlanGenerationError);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_23C79A720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B40, &qword_23C8A0D50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203B40, &qword_23C8A0D50);
  v11 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203B40, &qword_23C8A0D50);
  }

  sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C8314AC(&qword_27E2024F8, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);
  sub_23C871304();
  return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPlanGenerationError);
}

uint64_t sub_23C79A9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203478, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79AA70(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2024E0, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);

  return sub_23C8711F4();
}

uint64_t sub_23C79AADC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2024E0, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);

  return sub_23C871204();
}

uint64_t sub_23C79ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B20, &qword_23C8A0D38);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B30, &qword_23C8A0D48);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_23C5855B0(v45, v11, &qword_27E203B20, &qword_23C8A0D38);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_23C585C34(v11, &qword_27E203B20, &qword_23C8A0D38);
    v26 = v40;
  }

  else
  {
    sub_23C83155C(v11, v18, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
    sub_23C83155C(v18, v16, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
    sub_23C585C34(v23, &qword_27E203B30, &qword_23C8A0D48);
    v27 = v38;
    sub_23C83155C(v16, v38, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    sub_23C83155C(v27, v23, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_23C8314AC(&qword_27E202510, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);
  v28 = v41;
  sub_23C8711A4();
  v29 = v39;
  if (v28)
  {
    return sub_23C585C34(v23, &qword_27E203B30, &qword_23C8A0D48);
  }

  sub_23C5855B0(v23, v39, &qword_27E203B30, &qword_23C8A0D48);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_23C585C34(v23, &qword_27E203B30, &qword_23C8A0D48);
    return sub_23C585C34(v29, &qword_27E203B30, &qword_23C8A0D48);
  }

  else
  {
    v31 = v36;
    sub_23C83155C(v29, v36, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v23, &qword_27E203B30, &qword_23C8A0D48);
    v32 = v45;
    sub_23C585C34(v45, &qword_27E203B20, &qword_23C8A0D38);
    sub_23C83155C(v31, v32, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_23C79B170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B20, &qword_23C8A0D38);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203B20, &qword_23C8A0D38);
  v11 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203B20, &qword_23C8A0D38);
  }

  sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C8314AC(&qword_27E202510, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C871304();
  return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
}

uint64_t sub_23C79B420(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203470, type metadata accessor for TranscriptProtoPlanGenerationError, "ᣘEd~iH");

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79B4C0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2024F8, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);

  return sub_23C8711F4();
}

uint64_t sub_23C79B52C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2024F8, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);

  return sub_23C871204();
}

uint64_t sub_23C79B5C8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200850);
  __swift_project_value_buffer(v0, qword_27E200850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawModelOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prompt";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "error";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      sub_23C79B8A0(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C79B8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_23C8712C4(), !v4))
    {
      result = sub_23C79BA30(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C79BA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoIntelligenceFlowError);
}

uint64_t sub_23C79BC98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C79BD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203468, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79BE0C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202510, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);

  return sub_23C8711F4();
}

uint64_t sub_23C79BE78(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202510, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryResults.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for TranscriptProtoCandidate(0);
        sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t TranscriptProtoQueryResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoCandidate(0), sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoQueryResults(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C79C1D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203460, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79C278(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201818, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);

  return sub_23C8711F4();
}

uint64_t sub_23C79C2E4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201818, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);

  return sub_23C871204();
}

uint64_t sub_23C79C394()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200880);
  __swift_project_value_buffer(v0, qword_27E200880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 5;
  *v11 = "payload";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 5:
          sub_23C79C79C(a1, v5, a2, a3);
          break;
        case 4:
          sub_23C79C6E8(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for TranscriptProtoStatementID(0);
          sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C79C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStep(0);
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_23C8314AC(&qword_27E2021D8, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);
  return sub_23C8711A4();
}

uint64_t sub_23C79C79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStep(0);
  type metadata accessor for TranscriptProtoQueryPayload(0);
  sub_23C8314AC(&qword_27E202550, type metadata accessor for TranscriptProtoQueryPayload, "領E\\yiH");
  return sub_23C8711A4();
}

uint64_t sub_23C79C8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(void))
{
  result = a4(v7, a1, a2, a3);
  if (!v8)
  {
    a5(v7, a1, a2, a3);
    a6(v7, a1, a2, a3);
    a7(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C79C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C79CB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AF8, &unk_23C8A1290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_23C5855B0(a1 + *(Step + 20), v7, &qword_27E203AF8, &unk_23C8A1290);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203AF8, &unk_23C8A1290);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_23C8314AC(&qword_27E2021D8, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionParameterContext);
}

uint64_t sub_23C79CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AE8, &qword_23C8A0D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  v9 = *(Payload - 8);
  MEMORY[0x28223BE20](Payload);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_23C5855B0(a1 + *(Step + 24), v7, &qword_27E203AE8, &qword_23C8A0D10);
  if ((*(v9 + 48))(v7, 1, Payload) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203AE8, &qword_23C8A0D10);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoQueryPayload);
  sub_23C8314AC(&qword_27E202550, type metadata accessor for TranscriptProtoQueryPayload, "領E\\yiH");
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoQueryPayload);
}

uint64_t sub_23C79D0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203458, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79D148(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202538, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);

  return sub_23C8711F4();
}

uint64_t sub_23C79D1B4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202538, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);

  return sub_23C871204();
}

uint64_t sub_23C79D250()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200898);
  __swift_project_value_buffer(v0, qword_27E200898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "searchTool";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "person";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "string";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "id";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C79D520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v14 = *(PayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](PayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AC8, &qword_23C8A0CF0);
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
  sub_23C5855B0(a1, v12, &qword_27E2017F0, &unk_23C8A12A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, PayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2017F0, &unk_23C8A12A0);
    v29 = v44;
    v30 = PayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v30 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203AC8, &qword_23C8A0CF0);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202568, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203AC8, &qword_23C8A0CF0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203AC8, &qword_23C8A0CF0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203AC8, &qword_23C8A0CF0);
    return sub_23C585C34(v32, &qword_27E203AC8, &qword_23C8A0CF0);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203AC8, &qword_23C8A0CF0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2017F0, &unk_23C8A12A0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C79DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v14 = *(PayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](PayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AD0, &qword_23C8A0CF8);
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
  sub_23C5855B0(a1, v12, &qword_27E2017F0, &unk_23C8A12A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, PayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2017F0, &unk_23C8A12A0);
    v29 = v44;
    v30 = PayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v30 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203AD0, &qword_23C8A0CF8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPersonQuery);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPersonQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203AD0, &qword_23C8A0CF8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203AD0, &qword_23C8A0CF8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203AD0, &qword_23C8A0CF8);
    return sub_23C585C34(v32, &qword_27E203AD0, &qword_23C8A0CF8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPersonQuery);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203AD0, &qword_23C8A0CF8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2017F0, &unk_23C8A12A0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPersonQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C79E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v14 = *(PayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](PayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AD8, &qword_23C8A0D00);
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
  sub_23C5855B0(a1, v12, &qword_27E2017F0, &unk_23C8A12A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, PayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2017F0, &unk_23C8A12A0);
    v29 = v44;
    v30 = PayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v30 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203AD8, &qword_23C8A0D00);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202580, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203AD8, &qword_23C8A0D00);
  }

  sub_23C5855B0(v24, v32, &qword_27E203AD8, &qword_23C8A0D00);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203AD8, &qword_23C8A0D00);
    return sub_23C585C34(v32, &qword_27E203AD8, &qword_23C8A0D00);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203AD8, &qword_23C8A0D00);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2017F0, &unk_23C8A12A0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C79E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v14 = *(PayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](PayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AE0, &qword_23C8A0D08);
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
  sub_23C5855B0(a1, v12, &qword_27E2017F0, &unk_23C8A12A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, PayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2017F0, &unk_23C8A12A0);
    v29 = v44;
    v30 = PayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v30 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E203AE0, &qword_23C8A0D08);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202598, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203AE0, &qword_23C8A0D08);
  }

  sub_23C5855B0(v24, v32, &qword_27E203AE0, &qword_23C8A0D08);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203AE0, &qword_23C8A0D08);
    return sub_23C585C34(v32, &qword_27E203AE0, &qword_23C8A0D08);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203AE0, &qword_23C8A0D08);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2017F0, &unk_23C8A12A0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoQueryPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v10, 1, PayloadEnum) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C79F244(v3, a1, a2, a3);
    }

    else
    {
      sub_23C79F47C(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C79F00C(v3, a1, a2, a3);
  }

  else
  {
    sub_23C79EDD8(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoQueryPayload(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C79EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v7, 1, PayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E2017F0, &unk_23C8A12A0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    sub_23C8314AC(&qword_27E202568, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C79F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v7, 1, PayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E2017F0, &unk_23C8A12A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPersonQuery);
    sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPersonQuery);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C79F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v7, 1, PayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E2017F0, &unk_23C8A12A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    sub_23C8314AC(&qword_27E202580, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C79F47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v7, 1, PayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E2017F0, &unk_23C8A12A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    sub_23C8314AC(&qword_27E202598, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C79F764(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203450, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79F804(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202550, type metadata accessor for TranscriptProtoQueryPayload, "領E\\yiH");

  return sub_23C8711F4();
}

uint64_t sub_23C79F870(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202550, type metadata accessor for TranscriptProtoQueryPayload, "領E\\yiH");

  return sub_23C871204();
}

uint64_t sub_23C79F8F0()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8B2150);
  qword_27E2008B0 = 0xD000000000000017;
  *algn_27E2008B8 = 0x800000023C8B0400;
  return result;
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_23C79FA40(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C79FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C870EE4();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C871024();
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_23C870EE4(), type metadata accessor for ToolKitProtoTypedValue(0), sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_23C871214(), !v5))
  {
    type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C79FD58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203448, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79FDF8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202568, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C79FE64(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202568, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);

  return sub_23C871204();
}

uint64_t sub_23C79FEF8()
{
  result = MEMORY[0x23EED7100](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27E2008D8 = 0xD000000000000017;
  qword_27E2008E0 = 0x800000023C8B0400;
  return result;
}

uint64_t sub_23C79FF94()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2008E8);
  __swift_project_value_buffer(v0, qword_27E2008E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7A01AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C8314AC(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C7A02A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C8314AC(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C7A0578(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203440, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A0618(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202580, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C7A0684(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202580, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);

  return sub_23C871204();
}

uint64_t sub_23C7A0704()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8B2130);
  qword_27E200900 = 0xD000000000000017;
  *algn_27E200908 = 0x800000023C8B0400;
  return result;
}

uint64_t sub_23C7A07A0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200910);
  __swift_project_value_buffer(v0, qword_27E200910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ids";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7A09CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C8314AC(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoQueryPayload.IdentifierQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7A0B20(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_23C8712A4();
    }

    type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7A0B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C8314AC(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C7A0E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203438, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A0EA0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202598, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C7A0F0C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202598, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);

  return sub_23C871204();
}

uint64_t sub_23C7A0FA8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200928);
  __swift_project_value_buffer(v0, qword_27E200928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "queryResults";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originStatementId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rawQueryEventId";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryStepResults.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C871164();
          break;
        case 2:
          sub_23C7A1300(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for TranscriptProtoQueryResults(0);
          sub_23C8314AC(&qword_27E201818, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);
          sub_23C871194();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7A1300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStepResults(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoQueryStepResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoQueryResults(0), sub_23C8314AC(&qword_27E201818, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults), result = sub_23C8712F4(), !v4))
  {
    result = sub_23C7A14E0(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3[2];
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v3[1] & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_23C8712C4();
      }

      type metadata accessor for TranscriptProtoQueryStepResults(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7A14E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  sub_23C5855B0(a1 + *(StepResults + 24), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7A1748@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7A1824(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203430, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A18C4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2025B0, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);

  return sub_23C8711F4();
}

uint64_t sub_23C7A1930(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2025B0, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);

  return sub_23C871204();
}

uint64_t sub_23C7A19CC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200940);
  __swift_project_value_buffer(v0, qword_27E200940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "fullPrint";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fullSpeak";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supportingPrint";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supportingSpeak";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoResponseDialog.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_23C871154();
      }
    }

    else if (result == 1)
    {
      sub_23C871164();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t TranscriptProtoResponseDialog.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v6 = v3[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_23C8712C4(), !v4))
  {
    if (v3[3])
    {
      result = sub_23C8712C4();
    }

    if (!v4)
    {
      if (v3[5])
      {
        sub_23C8712C4();
      }

      if (v3[7])
      {
        sub_23C8712C4();
      }

      type metadata accessor for TranscriptProtoResponseDialog(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7A1E40@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7A1ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203428, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A1F6C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2025C8, type metadata accessor for TranscriptProtoResponseDialog, "ᙘE|riH");

  return sub_23C8711F4();
}

uint64_t sub_23C7A1FD8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2025C8, type metadata accessor for TranscriptProtoResponseDialog, "ᙘE|riH");

  return sub_23C871204();
}

uint64_t sub_23C7A2074()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200958);
  __swift_project_value_buffer(v0, qword_27E200958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "visualOutput";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "printedDialogOutput";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "spokenDialogOutput";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "responseType";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "resultStatementIds";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "options";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "attribution";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dialogIdentifier";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoResponseOutput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            sub_23C7A279C(a1, v5, a2, a3);
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for TranscriptProtoStatementID(0);
          sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
          goto LABEL_22;
        }

        if (result == 7)
        {
          sub_23C7A2850(a1, v5, a2, a3);
        }

        else if (result == 8)
        {
          type metadata accessor for TranscriptProtoResponseOutput(0);
          sub_23C871154();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_23C7A26E8(a1, v5, a2, a3);
        }

        else
        {
          sub_23C821B84();
          sub_23C8710A4();
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = v4;
          type metadata accessor for TranscriptProtoVisualOutput(0);
          sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);
LABEL_22:
          v4 = v11;
          sub_23C871194();
          goto LABEL_5;
        }

        if (result == 2)
        {
          sub_23C7A2634(a1, v5, a2, a3);
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7A2634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  return sub_23C8711A4();
}

uint64_t sub_23C7A26E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  return sub_23C8711A4();
}

uint64_t sub_23C7A279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_23C8314AC(&qword_27E2025F8, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);
  return sub_23C8711A4();
}

uint64_t sub_23C7A2850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoVisualOutput(0);
  sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoResponseOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoVisualOutput(0), sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput), result = sub_23C8712F4(), !v4))
  {
    result = sub_23C7A2B1C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C7A2D38(v3, a1, a2, a3);
      if (*(v3 + 8))
      {
        sub_23C821B84();
        sub_23C871254();
      }

      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_23C8712F4();
      }

      sub_23C7A2F54(v3, a1, a2, a3);
      sub_23C7A3170(v3, a1, a2, a3);
      sub_23C7A338C(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoResponseOutput(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7A2B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AA0, &unk_23C8A12B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoDialogType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E203AA0, &unk_23C8A12B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203AA0, &unk_23C8A12B0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoDialogType);
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoDialogType);
}

uint64_t sub_23C7A2D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AA0, &unk_23C8A12B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoDialogType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C5855B0(a1 + *(v12 + 32), v7, &qword_27E203AA0, &unk_23C8A12B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203AA0, &unk_23C8A12B0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoDialogType);
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoDialogType);
}

uint64_t sub_23C7A2F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A90, &qword_23C8A0CC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C5855B0(a1 + *(v12 + 36), v7, &qword_27E203A90, &qword_23C8A0CC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203A90, &qword_23C8A0CC0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_23C8314AC(&qword_27E2025F8, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoVisualOutputOptions);
}

uint64_t sub_23C7A3170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A80, &unk_23C8A12C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C5855B0(a1 + *(v12 + 40), v7, &qword_27E203A80, &unk_23C8A12C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203A80, &unk_23C8A12C0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoVisualOutput);
  sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoVisualOutput);
}

uint64_t sub_23C7A338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoResponseOutput(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C7A3450@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v5 = type metadata accessor for TranscriptProtoDialogType(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[8], 1, 1, v5);
  v7 = a1[9];
  v8 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[10];
  v10 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = (a2 + a1[11]);
  *v11 = 0;
  v11[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v13 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  return result;
}

uint64_t sub_23C7A35E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203420, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A3688(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2025E0, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);

  return sub_23C8711F4();
}

uint64_t sub_23C7A36F4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2025E0, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);

  return sub_23C871204();
}

uint64_t sub_23C7A3890(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203418, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A3930(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2025F8, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);

  return sub_23C8711F4();
}

uint64_t sub_23C7A399C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2025F8, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);

  return sub_23C871204();
}

uint64_t sub_23C7A3A34()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200988);
  __swift_project_value_buffer(v0, qword_27E200988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "liveActivity";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inAppResponse";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemSnippet";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "pluginSnippet";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoVisualOutput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_23C7A48F0(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_23C7A4EAC(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C7A3D84(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C7A4334(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7A3D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A60, &qword_23C8A0C98);
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
  sub_23C5855B0(a1, v12, &qword_27E1FABF0, &qword_23C878F88);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FABF0, &qword_23C878F88);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoVisualOutputType);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203A60, &qword_23C8A0C98);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202620, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A60, &qword_23C8A0C98);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A60, &qword_23C8A0C98);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A60, &qword_23C8A0C98);
    return sub_23C585C34(v32, &qword_27E203A60, &qword_23C8A0C98);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A60, &qword_23C8A0C98);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FABF0, &qword_23C878F88);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7A4334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A68, &qword_23C8A0CA0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FABF0, &qword_23C878F88);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FABF0, &qword_23C878F88);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203A68, &qword_23C8A0CA0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoVisualOutputType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202638, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A68, &qword_23C8A0CA0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A68, &qword_23C8A0CA0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A68, &qword_23C8A0CA0);
    return sub_23C585C34(v32, &qword_27E203A68, &qword_23C8A0CA0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A68, &qword_23C8A0CA0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FABF0, &qword_23C878F88);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7A48F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A70, &qword_23C8A0CA8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FABF0, &qword_23C878F88);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FABF0, &qword_23C878F88);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203A70, &qword_23C8A0CA8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoVisualOutputType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202650, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A70, &qword_23C8A0CA8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A70, &qword_23C8A0CA8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A70, &qword_23C8A0CA8);
    return sub_23C585C34(v32, &qword_27E203A70, &qword_23C8A0CA8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A70, &qword_23C8A0CA8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FABF0, &qword_23C878F88);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7A4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A78, &qword_23C8A0CB0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FABF0, &qword_23C878F88);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FABF0, &qword_23C878F88);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E203A78, &qword_23C8A0CB0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoVisualOutputType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202668, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A78, &qword_23C8A0CB0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A78, &qword_23C8A0CB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A78, &qword_23C8A0CB0);
    return sub_23C585C34(v32, &qword_27E203A78, &qword_23C8A0CB0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A78, &qword_23C8A0CB0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FABF0, &qword_23C878F88);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoVisualOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E1FABF0, &qword_23C878F88);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C7A5AA8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7A5CE0(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C7A5870(v3, a1, a2, a3);
  }

  else
  {
    sub_23C7A563C(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoVisualOutputType);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoVisualOutput(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7A563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FABF0, &qword_23C878F88);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FABF0, &qword_23C878F88);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    sub_23C8314AC(&qword_27E202620, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_23C7A5870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FABF0, &qword_23C878F88);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FABF0, &qword_23C878F88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    sub_23C8314AC(&qword_27E202638, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_23C7A5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FABF0, &qword_23C878F88);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FABF0, &qword_23C878F88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    sub_23C8314AC(&qword_27E202650, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_23C7A5CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FABF0, &qword_23C878F88);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FABF0, &qword_23C878F88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    sub_23C8314AC(&qword_27E202668, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_23C7A5FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203410, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6068(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);

  return sub_23C8711F4();
}

uint64_t sub_23C7A60D4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);

  return sub_23C871204();
}

uint64_t sub_23C7A6270(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203408, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6310(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202620, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7A637C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202620, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);

  return sub_23C871204();
}

uint64_t sub_23C7A63F8(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7A65D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203400, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6670(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202638, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7A66DC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202638, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);

  return sub_23C871204();
}

uint64_t sub_23C7A6874(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033F8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6914(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202650, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7A6980(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202650, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);

  return sub_23C871204();
}

uint64_t sub_23C7A6A18()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2009E8);
  __swift_project_value_buffer(v0, qword_27E2009E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7A6CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033F0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6D64(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202668, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7A6DD0(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202668, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);

  return sub_23C871204();
}

uint64_t sub_23C7A6E68()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200A00);
  __swift_project_value_buffer(v0, qword_27E200A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "staticText";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sonicText";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "generatedText";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "unableToGenerate";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suppressed";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "catDialog";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoDialogType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_23C7A83AC(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C7A8968(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C7A8F24(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C7A7284(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C7A7834(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C7A7DF0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C7A7284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoStaticText(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A30, &qword_23C8A0C68);
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
  sub_23C5855B0(a1, v12, &qword_27E201880, &unk_23C8A12D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201880, &unk_23C8A12D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203A30, &qword_23C8A0C68);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoStaticText);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoStaticText);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202698, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A30, &qword_23C8A0C68);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A30, &qword_23C8A0C68);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A30, &qword_23C8A0C68);
    return sub_23C585C34(v32, &qword_27E203A30, &qword_23C8A0C68);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoStaticText);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A30, &qword_23C8A0C68);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoStaticText);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7A7834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSonicText(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A38, &qword_23C8A0C70);
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
  sub_23C5855B0(a1, v12, &qword_27E201880, &unk_23C8A12D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201880, &unk_23C8A12D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203A38, &qword_23C8A0C70);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSonicText);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSonicText);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2026C8, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A38, &qword_23C8A0C70);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A38, &qword_23C8A0C70);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A38, &qword_23C8A0C70);
    return sub_23C585C34(v32, &qword_27E203A38, &qword_23C8A0C70);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSonicText);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A38, &qword_23C8A0C70);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSonicText);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7A7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoGeneratedText(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A40, &qword_23C8A0C78);
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
  sub_23C5855B0(a1, v12, &qword_27E201880, &unk_23C8A12D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201880, &unk_23C8A12D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203A40, &qword_23C8A0C78);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoGeneratedText);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoGeneratedText);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2026E0, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A40, &qword_23C8A0C78);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A40, &qword_23C8A0C78);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A40, &qword_23C8A0C78);
    return sub_23C585C34(v32, &qword_27E203A40, &qword_23C8A0C78);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoGeneratedText);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A40, &qword_23C8A0C78);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoGeneratedText);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7A83AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A48, &qword_23C8A0C80);
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
  sub_23C5855B0(a1, v12, &qword_27E201880, &unk_23C8A12D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201880, &unk_23C8A12D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E203A48, &qword_23C8A0C80);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoUnableToGenerate);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoUnableToGenerate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2026F8, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A48, &qword_23C8A0C80);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A48, &qword_23C8A0C80);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A48, &qword_23C8A0C80);
    return sub_23C585C34(v32, &qword_27E203A48, &qword_23C8A0C80);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoUnableToGenerate);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A48, &qword_23C8A0C80);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoUnableToGenerate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7A8968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSuppressed(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A50, &qword_23C8A0C88);
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
  sub_23C5855B0(a1, v12, &qword_27E201880, &unk_23C8A12D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201880, &unk_23C8A12D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E203A50, &qword_23C8A0C88);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSuppressed);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSuppressed);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202710, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A50, &qword_23C8A0C88);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A50, &qword_23C8A0C88);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A50, &qword_23C8A0C88);
    return sub_23C585C34(v32, &qword_27E203A50, &qword_23C8A0C88);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSuppressed);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A50, &qword_23C8A0C88);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSuppressed);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7A8F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoCATDialog(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A58, &qword_23C8A0C90);
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
  sub_23C5855B0(a1, v12, &qword_27E201880, &unk_23C8A12D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201880, &unk_23C8A12D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E203A58, &qword_23C8A0C90);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoCATDialog);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoCATDialog);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2026B0, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203A58, &qword_23C8A0C90);
  }

  sub_23C5855B0(v24, v32, &qword_27E203A58, &qword_23C8A0C90);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203A58, &qword_23C8A0C90);
    return sub_23C585C34(v32, &qword_27E203A58, &qword_23C8A0C90);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoCATDialog);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203A58, &qword_23C8A0C90);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoCATDialog);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoDialogType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E201880, &unk_23C8A12D0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23C7A9DA0(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C7A9FD8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7AA210(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C7A9930(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7A9B68(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_23C7A96FC(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoDialogFormat);
  if (!v4)
  {
LABEL_14:
    type metadata accessor for TranscriptProtoDialogType(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7A96FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStaticText(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201880, &unk_23C8A12D0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoStaticText);
    sub_23C8314AC(&qword_27E202698, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStaticText);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7A9930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSonicText(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201880, &unk_23C8A12D0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSonicText);
    sub_23C8314AC(&qword_27E2026C8, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSonicText);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7A9B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoGeneratedText(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201880, &unk_23C8A12D0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoGeneratedText);
    sub_23C8314AC(&qword_27E2026E0, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoGeneratedText);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7A9DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201880, &unk_23C8A12D0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_23C8314AC(&qword_27E2026F8, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoUnableToGenerate);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7A9FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSuppressed(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201880, &unk_23C8A12D0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSuppressed);
    sub_23C8314AC(&qword_27E202710, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSuppressed);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7AA210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoCATDialog(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201880, &unk_23C8A12D0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoCATDialog);
    sub_23C8314AC(&qword_27E2026B0, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoCATDialog);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7AA4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033E8, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);

  return MEMORY[0x28217E230](a1, a2, v4);
}