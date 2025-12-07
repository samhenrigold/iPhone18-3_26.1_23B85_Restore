uint64_t sub_23C6ED074(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_23C871264();
      if (v5)
      {
        return result;
      }

      goto LABEL_10;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 != v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = v4[3];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v4[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_23C8712C4(), !v5))
  {
    a4(0);
    return sub_23C870F14();
  }

  return result;
}

double sub_23C6ED1D0@<D0>(uint64_t a2@<X8>)
{
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6ED244(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE790, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6ED2E4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE5F8, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);

  return sub_23C8711F4();
}

uint64_t sub_23C6ED350(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE5F8, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);

  return sub_23C871204();
}

uint64_t sub_23C6ED3CC(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_23C6F73FC(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6ED4B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD2D8);
  __swift_project_value_buffer(v0, qword_27E1FD2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "subtitle";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "altText";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "synonyms";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "snippetPluginModel";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoDisplayRepresentation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C6EDA3C(a1, v5, a2, a3);
          break;
        case 5:
          sub_23C871124();
          break;
        case 6:
          sub_23C6EDAF0(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C871164();
          break;
        case 2:
          sub_23C6ED8D4(a1, v5, a2, a3);
          break;
        case 3:
          sub_23C6ED988(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C6ED8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  sub_23C716EF0(&qword_27E1FE640, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);
  return sub_23C8711A4();
}

uint64_t sub_23C6ED988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  sub_23C716EF0(&qword_27E1FE670, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);
  return sub_23C8711A4();
}

uint64_t sub_23C6EDA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  sub_23C716EF0(&qword_27E1FE6A0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);
  return sub_23C8711A4();
}

uint64_t sub_23C6EDAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoPluginModelData(0);
  sub_23C716EF0(&qword_27E1FE5F8, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoDisplayRepresentation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C6EDCC0(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C6EDEDC(v3, a1, a2, a3);
      sub_23C6EE0F8(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        sub_23C8712A4();
      }

      sub_23C6EE314(v3, a1, a2, a3);
      type metadata accessor for ToolKitProtoDisplayRepresentation(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6EDCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBB0, &qword_23C889830);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FEBB0, &qword_23C889830);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEBB0, &qword_23C889830);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_23C716EF0(&qword_27E1FE640, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
}

uint64_t sub_23C6EDEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBA0, &unk_23C889DA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E1FEBA0, &unk_23C889DA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEBA0, &unk_23C889DA0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_23C716EF0(&qword_27E1FE670, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
}

uint64_t sub_23C6EE0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB90, &qword_23C889818);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C5855B0(a1 + *(v12 + 32), v7, &qword_27E1FEB90, &qword_23C889818);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEB90, &qword_23C889818);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
  sub_23C716EF0(&qword_27E1FE6A0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
}

uint64_t sub_23C6EE314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB80, &unk_23C889DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C5855B0(a1 + *(v12 + 36), v7, &qword_27E1FEB80, &unk_23C889DB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEB80, &unk_23C889DB0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoPluginModelData);
  sub_23C716EF0(&qword_27E1FE5F8, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoPluginModelData);
}

uint64_t sub_23C6EE57C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6EE724(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE788, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EE7C4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);

  return sub_23C8711F4();
}

uint64_t sub_23C6EE830(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);

  return sub_23C871204();
}

uint64_t sub_23C6EE9A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = sub_23C871264();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  a4(0);
  return sub_23C870F14();
}

uint64_t sub_23C6EEAA0(_BOOL8 *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if (!sub_23C6F73FC(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  a3(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6EEBE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE780, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EEC80(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_23C8711F4();
}

uint64_t sub_23C6EECEC(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_23C871204();
}

uint64_t sub_23C6EED68(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_23C6F73FC(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6EEE64()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD328);
  __swift_project_value_buffer(v0, qword_27E1FD328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EF0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB50, &qword_23C8897E0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD9C8, &qword_23C87D758);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD9C8, &qword_23C87D758);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEB50, &qword_23C8897E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
    return sub_23C585C34(v32, &qword_27E1FEB50, &qword_23C8897E0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD9C8, &qword_23C87D758);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6EF660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB78, &qword_23C889808);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD9C8, &qword_23C87D758);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD9C8, &qword_23C87D758);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEB78, &qword_23C889808);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE658, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEB78, &qword_23C889808);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEB78, &qword_23C889808);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEB78, &qword_23C889808);
    return sub_23C585C34(v32, &qword_27E1FEB78, &qword_23C889808);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEB78, &qword_23C889808);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD9C8, &qword_23C87D758);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Subtitle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FD9C8, &qword_23C87D758);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C6EFFE4(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6EFDAC(v3, a1, a2, a3);
  }

  result = sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6EFDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD9C8, &qword_23C87D758);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD9C8, &qword_23C87D758);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6EFFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD9C8, &qword_23C87D758);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD9C8, &qword_23C87D758);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    sub_23C716EF0(&qword_27E1FE658, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F02D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE778, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F0378(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE640, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_23C8711F4();
}

uint64_t sub_23C6F03E4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE640, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_23C871204();
}

uint64_t sub_23C6F0464()
{
  if (qword_27E1F8AA0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD318;
  v2 = qword_27E1FD320;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6369746174532ELL, 0xE700000000000000);

  qword_27E1FD340 = v1;
  *algn_27E1FD348 = v2;
  return result;
}

uint64_t sub_23C6F0654(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE770, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F06F4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE658, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_23C8711F4();
}

uint64_t sub_23C6F0760(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE658, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_23C871204();
}

uint64_t sub_23C6F0828()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD378);
  __swift_project_value_buffer(v0, qword_27E1FD378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6F0A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB50, &qword_23C8897E0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD9E0, &unk_23C889DC0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD9E0, &unk_23C889DC0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEB50, &qword_23C8897E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
    return sub_23C585C34(v32, &qword_27E1FEB50, &qword_23C8897E0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD9E0, &unk_23C889DC0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6F1024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB68, &qword_23C8897F8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD9E0, &unk_23C889DC0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD9E0, &unk_23C889DC0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEB68, &qword_23C8897F8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE688, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEB68, &qword_23C8897F8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEB68, &qword_23C8897F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEB68, &qword_23C8897F8);
    return sub_23C585C34(v32, &qword_27E1FEB68, &qword_23C8897F8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEB68, &qword_23C8897F8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD9E0, &unk_23C889DC0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.AltText.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FD9E0, &unk_23C889DC0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C6F19A8(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6F1770(v3, a1, a2, a3);
  }

  result = sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6F1770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD9E0, &unk_23C889DC0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD9E0, &unk_23C889DC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F19A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD9E0, &unk_23C889DC0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD9E0, &unk_23C889DC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    sub_23C716EF0(&qword_27E1FE688, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F1C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE768, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F1D3C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE670, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_23C8711F4();
}

uint64_t sub_23C6F1DA8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE670, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_23C871204();
}

uint64_t sub_23C6F1E28()
{
  if (qword_27E1F8AC0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD368;
  v2 = qword_27E1FD370;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6369746174532ELL, 0xE700000000000000);

  qword_27E1FD390 = v1;
  *algn_27E1FD398 = v2;
  return result;
}

uint64_t sub_23C6F1F48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6F1FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = v5[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v6))
  {
    a5(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6F213C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE760, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F21DC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE688, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_23C8711F4();
}

uint64_t sub_23C6F2248(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE688, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_23C871204();
}

uint64_t sub_23C6F22E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD00000000000001DLL;
  *a5 = 0x800000023C8AD3B0;
  return result;
}

uint64_t sub_23C6F2378()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD3C8);
  __swift_project_value_buffer(v0, qword_27E1FD3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6F25B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB50, &qword_23C8897E0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD9F8, &qword_23C87D760);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD9F8, &qword_23C87D760);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEB50, &qword_23C8897E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
    return sub_23C585C34(v32, &qword_27E1FEB50, &qword_23C8897E0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEB50, &qword_23C8897E0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD9F8, &qword_23C87D760);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6F2B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB58, &qword_23C8897E8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD9F8, &qword_23C87D760);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD9F8, &qword_23C87D760);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEB58, &qword_23C8897E8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE6B8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEB58, &qword_23C8897E8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEB58, &qword_23C8897E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEB58, &qword_23C8897E8);
    return sub_23C585C34(v32, &qword_27E1FEB58, &qword_23C8897E8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEB58, &qword_23C8897E8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD9F8, &qword_23C87D760);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Image.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FD9F8, &qword_23C87D760);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C6F34F8(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6F32C0(v3, a1, a2, a3);
  }

  result = sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6F32C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD9F8, &qword_23C87D760);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD9F8, &qword_23C87D760);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F34F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD9F8, &qword_23C87D760);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD9F8, &qword_23C87D760);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    sub_23C716EF0(&qword_27E1FE6B8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F37EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE758, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F388C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE6A0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);

  return sub_23C8711F4();
}

uint64_t sub_23C6F38F8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE6A0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);

  return sub_23C871204();
}

uint64_t sub_23C6F3978()
{
  if (qword_27E1F8AE0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD3B8;
  v2 = qword_27E1FD3C0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6369746174532ELL, 0xE700000000000000);

  qword_27E1FD3E0 = v1;
  *algn_27E1FD3E8 = v2;
  return result;
}

uint64_t sub_23C6F3A44()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD3F0);
  __swift_project_value_buffer(v0, qword_27E1FD3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "file";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FDA08, &unk_23C889DD0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind, 2u);
          break;
        case 2:
          sub_23C6F3DAC(v5, a1, a2, a3);
          break;
        case 1:
          sub_23C683138(a1, v5, a2, a3, &qword_27E1FDA08, &unk_23C889DD0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind, 0);
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6F3DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB40, &qword_23C8897D0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FDA08, &unk_23C889DD0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FDA08, &unk_23C889DD0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEB40, &qword_23C8897D0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE6D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEB40, &qword_23C8897D0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEB40, &qword_23C8897D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEB40, &qword_23C8897D0);
    return sub_23C585C34(v32, &qword_27E1FEB40, &qword_23C8897D0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEB40, &qword_23C8897D0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FDA08, &unk_23C889DD0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E1FDA08, &unk_23C889DD0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_23C6F46D4(v3, a1, a2, a3);
        result = sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
        result = sub_23C6F490C(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else
    {
      sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      result = sub_23C6F4558(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  return sub_23C870F14();
}

uint64_t sub_23C6F4558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - v6);
  sub_23C5855B0(a1, &v12 - v6, &qword_27E1FDA08, &unk_23C889DD0);
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FDA08, &unk_23C889DD0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v10 = *v7;
    v9 = v7[1];
    sub_23C871264();
    return sub_23C595090(v10, v9);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F46D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FDA08, &unk_23C889DD0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FDA08, &unk_23C889DD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    sub_23C716EF0(&qword_27E1FE6D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F490C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E1FDA08, &unk_23C889DD0);
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FDA08, &unk_23C889DD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C8712C4();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F4AE8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C6F4BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE750, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F4C54(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE6B8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_23C8711F4();
}

uint64_t sub_23C6F4CC0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE6B8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_23C871204();
}

uint64_t sub_23C6F4D40()
{
  if (qword_27E1F8AF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD3E0;
  v2 = *algn_27E1FD3E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6C6F626D79532ELL, 0xE700000000000000);

  qword_27E1FD408 = v1;
  unk_27E1FD410 = v2;
  return result;
}

uint64_t sub_23C6F4E0C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD418);
  __swift_project_value_buffer(v0, qword_27E1FD418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tintColorData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "configurationData";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_23C8710B4();
    }

    else if (result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C6F51BC(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C6F5248(v3, a1, a2, a3);
      type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6F51BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 24);
  if (v4 >> 60 != 15)
  {
    v5 = *(result + 16);
    sub_23C5ACFC8(v5, v4);
    sub_23C871264();
    return sub_23C5AD0AC(v5, v4);
  }

  return result;
}

uint64_t sub_23C6F5248(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 40);
  if (v4 >> 60 != 15)
  {
    v5 = *(result + 32);
    sub_23C5ACFC8(v5, v4);
    sub_23C871264();
    return sub_23C5AD0AC(v5, v4);
  }

  return result;
}

uint64_t sub_23C6F5320@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 16) = xmmword_23C879130;
  *(a2 + 32) = xmmword_23C879130;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6F53B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE748, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F5458(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE6D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_23C8711F4();
}

uint64_t sub_23C6F54C4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE6D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_23C871204();
}

uint64_t sub_23C6F5560()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD430);
  __swift_project_value_buffer(v0, qword_27E1FD430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "direction";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoCoercionDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C70CB50();
        sub_23C8710A4();
      }

      else if (result == 2)
      {
        sub_23C6F5820(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6F5820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoCoercionDefinition(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoCoercionDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (sub_23C70CB50(), result = sub_23C871254(), !v4))
  {
    result = sub_23C6F59A4(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for ToolKitProtoCoercionDefinition(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6F59A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C6F5C0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 20);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C6F5CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE740, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F5D78(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD518, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6F5DE4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD518, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6F5E64()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD448);
  __swift_project_value_buffer(v0, qword_27E1FD448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoercionDirection_IMPORT";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoercionDirection_EXPORT";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6F60B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23C871344();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23C871334();
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23C870F34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_23C870F34();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_23C6F6264(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE738, type metadata accessor for ToolKitProtoToolDefinitionClosure, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F6304(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE708, type metadata accessor for ToolKitProtoToolDefinitionClosure, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure);

  return sub_23C8711F4();
}

uint64_t sub_23C6F6370(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE708, type metadata accessor for ToolKitProtoToolDefinitionClosure, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure);

  return sub_23C871204();
}

uint64_t sub_23C6F63EC()
{
  result = MEMORY[0x23EED7100](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27E1FD478 = 0xD00000000000001DLL;
  unk_27E1FD480 = 0x800000023C8AD3F0;
  return result;
}

uint64_t sub_23C6F6484(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_23C6F64E0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD488);
  __swift_project_value_buffer(v0, qword_27E1FD488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolDefinition";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeDefinitions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6F66E0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t ToolKitProtoToolDefinitionClosure.Version1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C6F6884(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
        sub_23C716EF0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6F6884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C716EF0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoToolDefinitionClosure.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6F6A34(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      sub_23C716EF0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);
      sub_23C8712F4();
    }

    type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6F6A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C716EF0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_23C6F6CB4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v4 = *(a1 + 20);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(&a3[v4], 1, 1, v5);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6F6D68(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_23C6F6DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE730, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F6E98(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE720, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_23C8711F4();
}

uint64_t sub_23C6F6F04(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE720, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_23C871204();
}

uint64_t sub_23C6F6F84@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_23C870974();
    if (v10)
    {
      v11 = sub_23C870994();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_23C870984();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_23C870974();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23C870994();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23C870984();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23C6F71B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_23C6F7344(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23C595090(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_23C6F6F84(v13, a3, a4, &v12);
  v10 = v4;
  sub_23C595090(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_23C6F7344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23C870974();
  v11 = result;
  if (result)
  {
    result = sub_23C870994();
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

  sub_23C870984();
  sub_23C6F6F84(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_23C6F73FC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_23C5ACFC8(a3, a4);
          return sub_23C6F71B4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s26AIMLInstrumentationStreams41ToolKitProtoAssistantTypeSchemaDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECA0, &qword_23C889900);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD838, &unk_23C889D40);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD838, &unk_23C889D40);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD838, &unk_23C889D40);
LABEL_9:
      type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD838, &unk_23C889D40);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FECA0, &qword_23C889900);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  v18 = _s26AIMLInstrumentationStreams45ToolKitProtoAssistantTypeSchemaDefinitionKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_23C585C34(v14, &qword_27E1FD838, &unk_23C889D40);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_23C6F78A8(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v49 = a4;
  v51 = a2;
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = (&v42 - v9);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB00, &qword_23C87B910);
  MEMORY[0x28223BE20](v44);
  v48 = &v42 - v10;
  v11 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC50, &qword_23C8898B0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v45 = a3(0);
  v22 = *(v45 + 20);
  v23 = *(v19 + 56);
  v50 = a1;
  sub_23C5855B0(a1 + v22, v21, &qword_27E1FACC8, &unk_23C889C50);
  v24 = v51;
  sub_23C5855B0(v51 + v22, &v21[v23], &qword_27E1FACC8, &unk_23C889C50);
  v25 = *(v12 + 48);
  if (v25(v21, 1, v11) == 1)
  {
    if (v25(&v21[v23], 1, v11) == 1)
    {
      sub_23C585C34(v21, &qword_27E1FACC8, &unk_23C889C50);
      goto LABEL_9;
    }

LABEL_6:
    v26 = &qword_27E1FEC50;
    v27 = &qword_23C8898B0;
    v28 = v21;
LABEL_7:
    sub_23C585C34(v28, v26, v27);
    goto LABEL_18;
  }

  sub_23C5855B0(v21, v17, &qword_27E1FACC8, &unk_23C889C50);
  if (v25(&v21[v23], 1, v11) == 1)
  {
    sub_23C717008(v17, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    goto LABEL_6;
  }

  sub_23C716FA0(&v21[v23], v14, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v29 = _s26AIMLInstrumentationStreams37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v17, v14);
  sub_23C717008(v14, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C717008(v17, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C585C34(v21, &qword_27E1FACC8, &unk_23C889C50);
  if ((v29 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v30 = v50;
  if ((v49(*v50, *v24) & 1) == 0)
  {
    goto LABEL_18;
  }

  v31 = *(v45 + 24);
  v32 = *(v44 + 48);
  v33 = v48;
  sub_23C5855B0(v30 + v31, v48, &qword_27E1FBAF8, &qword_23C87B960);
  sub_23C5855B0(v24 + v31, v33 + v32, &qword_27E1FBAF8, &qword_23C87B960);
  v34 = v47;
  v35 = *(v46 + 48);
  if (v35(v33, 1, v47) != 1)
  {
    v36 = v43;
    sub_23C5855B0(v33, v43, &qword_27E1FBAF8, &qword_23C87B960);
    if (v35(v33 + v32, 1, v34) != 1)
    {
      v37 = v33 + v32;
      v38 = v42;
      sub_23C716FA0(v37, v42, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v39 = _s26AIMLInstrumentationStreams37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v36, v38);
      sub_23C717008(v38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C717008(v36, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C585C34(v33, &qword_27E1FBAF8, &qword_23C87B960);
      if (v39)
      {
        goto LABEL_17;
      }

LABEL_18:
      v40 = 0;
      return v40 & 1;
    }

    sub_23C717008(v36, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_15;
  }

  if (v35(v33 + v32, 1, v34) != 1)
  {
LABEL_15:
    v26 = &qword_27E1FBB00;
    v27 = &qword_23C87B910;
    v28 = v33;
    goto LABEL_7;
  }

  sub_23C585C34(v33, &qword_27E1FBAF8, &qword_23C87B960);
LABEL_17:
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v40 = sub_23C871754();
  return v40 & 1;
}

uint64_t _s26AIMLInstrumentationStreams38ToolKitProtoSampleInvocationDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23C5D25E0(*a1, *a2) & 1) == 0)
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

  if (sub_23C5D25E0(a1[1], a2[1]))
  {
    type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
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

  if (sub_23C5D25E0(a1[2], a2[2]))
  {
    type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoAssistantSchemaVersionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV7AltTextV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB60, &qword_23C8897F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD9E0, &unk_23C889DC0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD9E0, &unk_23C889DC0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD9E0, &unk_23C889DC0);
LABEL_9:
      type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD9E0, &unk_23C889DC0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEB60, &qword_23C8897F0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  v18 = static ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind.== infix(_:_:)(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_23C585C34(v14, &qword_27E1FD9E0, &unk_23C889DC0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB48, &qword_23C8897D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD9F8, &qword_23C87D760);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD9F8, &qword_23C87D760);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD9F8, &qword_23C87D760);
LABEL_9:
      type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD9F8, &qword_23C87D760);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEB48, &qword_23C8897D8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  v18 = static ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind.== infix(_:_:)(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_23C585C34(v14, &qword_27E1FD9F8, &qword_23C87D760);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV6StaticV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB38, &qword_23C8897C8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FDA08, &unk_23C889DD0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FDA08, &unk_23C889DD0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FDA08, &unk_23C889DD0);
LABEL_9:
      type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FDA08, &unk_23C889DD0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEB38, &qword_23C8897C8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  v18 = static ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind.== infix(_:_:)(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_23C585C34(v14, &qword_27E1FDA08, &unk_23C889DD0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV6StaticV6SymbolV2eeoiySbAI_AItFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  v8 = a2[2];
  v7 = a2[3];
  if (v5 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_23C5EDBA0(a1[2], a1[3]);
      sub_23C5EDBA0(v8, v7);
      sub_23C5AD0AC(v6, v5);
      goto LABEL_11;
    }

LABEL_15:
    sub_23C5EDBA0(v6, v5);
    sub_23C5EDBA0(v8, v7);
    sub_23C5AD0AC(v6, v5);
    sub_23C5AD0AC(v8, v7);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_15;
  }

  sub_23C5EDBA0(a1[2], a1[3]);
  sub_23C5EDBA0(v8, v7);
  v9 = sub_23C6F73FC(v6, v5, v8, v7);
  sub_23C5AD0AC(v8, v7);
  sub_23C5AD0AC(v6, v5);
  if (!v9)
  {
    return 0;
  }

LABEL_11:
  v6 = a1[4];
  v5 = a1[5];
  v8 = a2[4];
  v7 = a2[5];
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_23C5EDBA0(a1[4], a1[5]);
    sub_23C5EDBA0(v8, v7);
    v11 = sub_23C6F73FC(v6, v5, v8, v7);
    sub_23C5AD0AC(v8, v7);
    sub_23C5AD0AC(v6, v5);
    if (v11)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_15;
  }

  sub_23C5EDBA0(a1[4], a1[5]);
  sub_23C5EDBA0(v8, v7);
  sub_23C5AD0AC(v6, v5);
LABEL_18:
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBD0, &unk_23C889D90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBD8, &qword_23C889848);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = *(a1 + 48);
  v15 = *(a2 + 48);
  if (v14)
  {
    if (!v15 || (*(a1 + 40) != *(a2 + 40) || v14 != v15) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v15)
  {
    goto LABEL_30;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_30;
  }

  v16 = *(a1 + 64);
  v17 = *(a2 + 64);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_21;
    }

LABEL_30:
    v24 = 0;
    return v24 & 1;
  }

  if (!v17 || (*(a1 + 56) != *(a2 + 56) || v16 != v17) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  v27 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v18 = *(v27 + 40);
  v19 = *(v11 + 48);
  sub_23C5855B0(a1 + v18, v13, &qword_27E1FEBD0, &unk_23C889D90);
  v20 = a2 + v18;
  v21 = v19;
  sub_23C5855B0(v20, &v13[v19], &qword_27E1FEBD0, &unk_23C889D90);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FEBD0, &unk_23C889D90);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FEBD0, &unk_23C889D90);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoContainerDefinition.Device);
LABEL_26:
    sub_23C585C34(v13, &qword_27E1FEBD8, &qword_23C889848);
    goto LABEL_30;
  }

  sub_23C716FA0(&v13[v21], v7, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  v23 = sub_23C708E18(v10, v7, sub_23C717558, sub_23C71755C, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_23C585C34(v13, &qword_27E1FEBD0, &unk_23C889D90);
  if ((v23 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (*(a1 + 33) != *(a2 + 33))
  {
    goto LABEL_30;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v24 = sub_23C871754();
  return v24 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED98, &qword_23C8899D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD6F0, &qword_23C87D748);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD6F0, &qword_23C87D748);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
LABEL_9:
      type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD6F0, &qword_23C87D748);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FED98, &qword_23C8899D0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  v18 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0cdeF4KindO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V4PairV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v33 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v13 = MEMORY[0x28223BE20](v12);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = *(v15 + 48);
  v36 = a1;
  sub_23C5855B0(a1, &v32 - v16, &qword_27E1FAB68, &unk_23C879140);
  v37 = a2;
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAB68, &unk_23C879140);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_23C5855B0(v17, v11, &qword_27E1FAB68, &unk_23C879140);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      v21 = &v17[v18];
      v22 = v34;
      sub_23C716FA0(v21, v34, type metadata accessor for ToolKitProtoTypedValue);
      v23 = sub_23C7073C4(v11, v22, sub_23C5EDE04, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_23C5EDE08, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C717008(v22, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C585C34(v17, &qword_27E1FAB68, &unk_23C879140);
      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    v20 = v17;
LABEL_14:
    sub_23C585C34(v20, &qword_27E1FAB70, &qword_23C878F28);
    goto LABEL_15;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v17, &qword_27E1FAB68, &unk_23C879140);
LABEL_8:
  v24 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0) + 20);
  v25 = *(v12 + 48);
  v26 = v35;
  sub_23C5855B0(v36 + v24, v35, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(v37 + v24, v26 + v25, &qword_27E1FAB68, &unk_23C879140);
  if (v19(v26, 1, v4) == 1)
  {
    if (v19((v26 + v25), 1, v4) == 1)
    {
      sub_23C585C34(v26, &qword_27E1FAB68, &unk_23C879140);
LABEL_18:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = sub_23C871754();
      return v28 & 1;
    }

    goto LABEL_13;
  }

  v27 = v33;
  sub_23C5855B0(v26, v33, &qword_27E1FAB68, &unk_23C879140);
  if (v19((v26 + v25), 1, v4) == 1)
  {
    sub_23C717008(v27, type metadata accessor for ToolKitProtoTypedValue);
LABEL_13:
    v20 = v26;
    goto LABEL_14;
  }

  v30 = v34;
  sub_23C716FA0(v26 + v25, v34, type metadata accessor for ToolKitProtoTypedValue);
  v31 = sub_23C7073C4(v27, v30, sub_23C5EDE04, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_23C5EDE08, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C717008(v30, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C717008(v27, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v26, &qword_27E1FAB68, &unk_23C879140);
  if (v31)
  {
    goto LABEL_18;
  }

LABEL_15:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoSystemTypeProtocolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC58, &qword_23C878FE0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAC50, &qword_23C878FD8);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAC50, &qword_23C878FD8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAC50, &qword_23C878FD8);
LABEL_9:
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAC50, &qword_23C878FD8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAC58, &qword_23C878FE0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  v18 = _s26AIMLInstrumentationStreams34ToolKitProtoSystemTypeProtocolKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_23C585C34(v14, &qword_27E1FAC50, &qword_23C878FD8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoSystemTypeProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC50, &qword_23C8898B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FACC8, &unk_23C889C50);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FACC8, &unk_23C889C50);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FACC8, &unk_23C889C50);
LABEL_9:
      type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FACC8, &unk_23C889C50);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEC50, &qword_23C8898B0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v18 = _s26AIMLInstrumentationStreams37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C585C34(v14, &qword_27E1FACC8, &unk_23C889C50);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC68, &qword_23C878FE8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAC60, &unk_23C889D20);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAC60, &unk_23C889D20);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAC60, &unk_23C889D20);
LABEL_9:
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAC60, &unk_23C889D20);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAC68, &qword_23C878FE8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  v18 = _s26AIMLInstrumentationStreams34ToolKitProtoRuntimeRequirementKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_23C585C34(v14, &qword_27E1FAC60, &unk_23C889D20);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV22AvailabilityAnnotationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD8, &qword_23C889930);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECE0, &qword_23C889938);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v55 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v25 = &v55 - v24;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  v57 = v23;
  v58 = v14;
  v56 = v11;
  v60 = v7;
  v26 = v22;
  v27 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v61 = v26;
  v62 = v27;
  v28 = *(v27 + 20);
  v29 = *(v26 + 48);
  v59 = a1;
  sub_23C5855B0(&a1[v28], v25, &qword_27E1FECD8, &qword_23C889930);
  v30 = &a2[v28];
  v31 = a2;
  sub_23C5855B0(v30, &v25[v29], &qword_27E1FECD8, &qword_23C889930);
  v34 = *(v5 + 48);
  v33 = v5 + 48;
  v32 = v34;
  if (v34(v25, 1, v4) == 1)
  {
    if (v32(&v25[v29], 1, v4) == 1)
    {
      sub_23C585C34(v25, &qword_27E1FECD8, &qword_23C889930);
      goto LABEL_9;
    }

LABEL_7:
    v35 = v25;
LABEL_22:
    sub_23C585C34(v35, &qword_27E1FECE0, &qword_23C889938);
    goto LABEL_23;
  }

  sub_23C5855B0(v25, v16, &qword_27E1FECD8, &qword_23C889930);
  if (v32(&v25[v29], 1, v4) == 1)
  {
    sub_23C717008(v16, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
    goto LABEL_7;
  }

  v36 = &v25[v29];
  v37 = v60;
  sub_23C716FA0(v36, v60, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  v38 = _s26AIMLInstrumentationStreams34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v16, v37);
  sub_23C717008(v37, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C717008(v16, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C585C34(v25, &qword_27E1FECD8, &qword_23C889930);
  if ((v38 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v39 = *(v62 + 24);
  v40 = *(v61 + 48);
  v41 = v59;
  sub_23C5855B0(&v59[v39], v21, &qword_27E1FECD8, &qword_23C889930);
  sub_23C5855B0(&v31[v39], &v21[v40], &qword_27E1FECD8, &qword_23C889930);
  if (v32(v21, 1, v4) != 1)
  {
    v42 = v58;
    sub_23C5855B0(v21, v58, &qword_27E1FECD8, &qword_23C889930);
    if (v32(&v21[v40], 1, v4) != 1)
    {
      v55 = v33;
      v43 = &v21[v40];
      v44 = v60;
      sub_23C716FA0(v43, v60, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      v45 = _s26AIMLInstrumentationStreams34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v42, v44);
      sub_23C717008(v44, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      sub_23C717008(v42, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      sub_23C585C34(v21, &qword_27E1FECD8, &qword_23C889930);
      if ((v45 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    sub_23C717008(v42, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
    goto LABEL_14;
  }

  if (v32(&v21[v40], 1, v4) != 1)
  {
LABEL_14:
    v35 = v21;
    goto LABEL_22;
  }

  v55 = v33;
  sub_23C585C34(v21, &qword_27E1FECD8, &qword_23C889930);
LABEL_16:
  v46 = *(v62 + 28);
  v47 = *(v61 + 48);
  v48 = v57;
  sub_23C5855B0(&v41[v46], v57, &qword_27E1FECD8, &qword_23C889930);
  sub_23C5855B0(&v31[v46], v48 + v47, &qword_27E1FECD8, &qword_23C889930);
  if (v32(v48, 1, v4) == 1)
  {
    if (v32((v48 + v47), 1, v4) == 1)
    {
      sub_23C585C34(v48, &qword_27E1FECD8, &qword_23C889930);
LABEL_26:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v50 = sub_23C871754();
      return v50 & 1;
    }

    goto LABEL_21;
  }

  v49 = v56;
  sub_23C5855B0(v48, v56, &qword_27E1FECD8, &qword_23C889930);
  if (v32((v48 + v47), 1, v4) == 1)
  {
    sub_23C717008(v49, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
LABEL_21:
    v35 = v48;
    goto LABEL_22;
  }

  v52 = v48 + v47;
  v53 = v60;
  sub_23C716FA0(v52, v60, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  v54 = _s26AIMLInstrumentationStreams34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v49, v53);
  sub_23C717008(v53, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C717008(v49, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C585C34(v48, &qword_27E1FECD8, &qword_23C889930);
  if (v54)
  {
    goto LABEL_26;
  }

LABEL_23:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV16DeviceCapabilityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECC0, &unk_23C889D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECC8, &qword_23C889920);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FECC0, &unk_23C889D30);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FECC0, &unk_23C889D30);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FECC0, &unk_23C889D30);
LABEL_9:
      type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FECC0, &unk_23C889D30);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FECC8, &qword_23C889920);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  v18 = static ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind.== infix(_:_:)(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_23C585C34(v14, &qword_27E1FECC0, &unk_23C889D30);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV16DeviceCapabilityV13MobileGestaltV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV11FeatureFlagV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_23C872014() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V9LinkQueryV2eeoiySbAI_AItFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_23C872014() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDB8, &qword_23C8899E8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD6C8, &unk_23C889CE0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD6C8, &unk_23C889CE0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD6C8, &unk_23C889CE0);
LABEL_9:
      type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD6C8, &unk_23C889CE0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEDB8, &qword_23C8899E8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  v18 = _s26AIMLInstrumentationStreams42ToolKitProtoContentItemClassDescriptorKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_23C585C34(v14, &qword_27E1FD6C8, &unk_23C889CE0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V29ContentPropertyPossibleValuesV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED68, &qword_23C8899A0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v23 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v24 = a1;
  v14 = *(v23 + 20);
  v15 = *(v11 + 56);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FED60, &qword_23C889998);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FED60, &qword_23C889998);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v9, &qword_27E1FED60, &qword_23C889998);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      sub_23C716FA0(&v13[v15], v22, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      v19 = _s26AIMLInstrumentationStreams38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v9, v18);
      sub_23C717008(v18, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      sub_23C717008(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      sub_23C585C34(v13, &qword_27E1FED60, &qword_23C889998);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_23C717008(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FED68, &qword_23C8899A0);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v13, &qword_27E1FED60, &qword_23C889998);
LABEL_9:
  if (*v24 == *a2 && v24[1] == a2[1] || (sub_23C872014() & 1) != 0)
  {
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_23C871754();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV13TextTypedWithV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoCoercionDefinitionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_23C5855B0(&v15[v17], v13, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(&v16[v17], &v13[v18], &qword_27E1FAC40, &unk_23C8791C0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_11:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAC40, &unk_23C8791C0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_23C585C34(v13, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_8;
  }

  sub_23C716FA0(&v13[v18], v7, type metadata accessor for ToolKitProtoTypeInstance);
  v22 = sub_23C7073C4(v10, v7, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB10, &qword_23C878EE8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAB08, &qword_23C878EE0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAB08, &qword_23C878EE0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAB08, &qword_23C878EE0);
LABEL_9:
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAB08, &qword_23C878EE0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB10, &qword_23C878EE8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  v18 = static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_23C585C34(v14, &qword_27E1FAB08, &qword_23C878EE0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF0, &unk_23C889C60);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF8, &qword_23C889A20);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FAB38, &unk_23C8791E0);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FAB38, &unk_23C8791E0);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E1FAB38, &unk_23C8791E0);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C716FA0(&v19[v20], v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      v25 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v19, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v22 = &qword_27E1FAB40;
    v23 = &qword_23C878F08;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_8:
  v26 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E1FEDF0, &unk_23C889C60);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E1FEDF0, &unk_23C889C60);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEDF0, &unk_23C889C60);
LABEL_18:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E1FEDF0, &unk_23C889C60);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C717008(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
LABEL_13:
    v22 = &qword_27E1FEDF8;
    v23 = &qword_23C889A20;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C716FA0(v34, v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  V18PredicateTemplatesV2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(v31, v35);
  sub_23C717008(v35, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C717008(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C585C34(v28, &qword_27E1FEDF0, &unk_23C889C60);
  if (V18PredicateTemplatesV2eeoiySbAI_AItFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V8TemplateV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED90, &qword_23C8899C8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD708, &unk_23C889D00);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD708, &unk_23C889D00);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
LABEL_9:
      type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD708, &unk_23C889D00);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FED90, &qword_23C8899C8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  v18 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V0cdeF12TemplateKindO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV8TemplateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v72 = a2;
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v57 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED68, &qword_23C8899A0);
  MEMORY[0x28223BE20](v61);
  v64 = &v57 - v7;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED70, &qword_23C8899A8);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v57 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED78, &qword_23C8899B0);
  MEMORY[0x28223BE20](v66);
  v69 = &v57 - v12;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v57 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED88, &qword_23C8899C0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v70 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  v71 = a1;
  v24 = *(v70 + 20);
  v25 = *(v21 + 56);
  sub_23C5855B0(a1 + v24, v23, &qword_27E1FED80, &qword_23C8899B8);
  v26 = v72 + v24;
  v27 = v72;
  sub_23C5855B0(v26, &v23[v25], &qword_27E1FED80, &qword_23C8899B8);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_23C585C34(v23, &qword_27E1FED80, &qword_23C8899B8);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_27E1FED88;
    v30 = &qword_23C8899C0;
    v31 = v23;
LABEL_24:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_25;
  }

  sub_23C5855B0(v23, v19, &qword_27E1FED80, &qword_23C8899B8);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_6;
  }

  sub_23C716FA0(&v23[v25], v16, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  v32 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(v19, v16);
  sub_23C717008(v16, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C585C34(v23, &qword_27E1FED80, &qword_23C8899B8);
  if ((v32 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v34 = v70;
  v33 = v71;
  v35 = *(v70 + 24);
  v36 = *(v66 + 48);
  v37 = v69;
  sub_23C5855B0(v71 + v35, v69, &qword_27E1FED70, &qword_23C8899A8);
  sub_23C5855B0(v27 + v35, v37 + v36, &qword_27E1FED70, &qword_23C8899A8);
  v38 = v68;
  v39 = *(v67 + 48);
  if (v39(v37, 1, v68) != 1)
  {
    v40 = v65;
    sub_23C5855B0(v37, v65, &qword_27E1FED70, &qword_23C8899A8);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v60;
      sub_23C716FA0(v41, v60, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      v43 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V8TemplateV2eeoiySbAG_AGtFZ_0(v40, v42);
      sub_23C717008(v42, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      sub_23C717008(v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      sub_23C585C34(v37, &qword_27E1FED70, &qword_23C8899A8);
      if ((v43 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    sub_23C717008(v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
    goto LABEL_13;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_13:
    v29 = &qword_27E1FED78;
    v30 = &qword_23C8899B0;
    v31 = v37;
    goto LABEL_24;
  }

  sub_23C585C34(v37, &qword_27E1FED70, &qword_23C8899A8);
LABEL_15:
  if ((*v33 != *v27 || v33[1] != v27[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_25;
  }

  v44 = *(v34 + 28);
  v45 = *(v61 + 48);
  v46 = v64;
  sub_23C5855B0(v33 + v44, v64, &qword_27E1FED60, &qword_23C889998);
  v47 = v27 + v44;
  v48 = v46;
  sub_23C5855B0(v47, v46 + v45, &qword_27E1FED60, &qword_23C889998);
  v49 = v63;
  v50 = *(v62 + 48);
  if (v50(v46, 1, v63) == 1)
  {
    if (v50(v46 + v45, 1, v49) == 1)
    {
      sub_23C585C34(v46, &qword_27E1FED60, &qword_23C889998);
LABEL_28:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = sub_23C871754();
      return v52 & 1;
    }

    goto LABEL_23;
  }

  v51 = v59;
  sub_23C5855B0(v48, v59, &qword_27E1FED60, &qword_23C889998);
  if (v50(v48 + v45, 1, v49) == 1)
  {
    sub_23C717008(v51, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_23:
    v29 = &qword_27E1FED68;
    v30 = &qword_23C8899A0;
    v31 = v48;
    goto LABEL_24;
  }

  v54 = v48 + v45;
  v55 = v58;
  sub_23C716FA0(v54, v58, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  v56 = _s26AIMLInstrumentationStreams38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v51, v55);
  sub_23C717008(v55, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C717008(v51, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C585C34(v48, &qword_27E1FED60, &qword_23C889998);
  if (v56)
  {
    goto LABEL_28;
  }

LABEL_25:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v139 = *(valid - 8);
  MEMORY[0x28223BE20](valid);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED48, &unk_23C889C90);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v108 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF58, &qword_23C889B40);
  MEMORY[0x28223BE20](v114);
  v116 = &v108 - v8;
  v120 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v113 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF60, &qword_23C889B48);
  MEMORY[0x28223BE20](v10 - 8);
  v117 = &v108 - v11;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF68, &qword_23C889B50);
  MEMORY[0x28223BE20](v118);
  v121 = &v108 - v12;
  v126 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v138 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED38, &unk_23C889C80);
  MEMORY[0x28223BE20](v14 - 8);
  v123 = &v108 - v15;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF70, &qword_23C889B58);
  MEMORY[0x28223BE20](v125);
  v127 = &v108 - v16;
  v17 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v131 = *(v17 - 8);
  v132 = v17;
  MEMORY[0x28223BE20](v17);
  v124 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED30, &qword_23C889980);
  MEMORY[0x28223BE20](v19 - 8);
  v128 = &v108 - v20;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF78, &qword_23C889B60);
  MEMORY[0x28223BE20](v130);
  v133 = &v108 - v21;
  v22 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v135 = *(v22 - 8);
  v136 = v22;
  MEMORY[0x28223BE20](v22);
  v129 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF80, &unk_23C889C70);
  MEMORY[0x28223BE20](v24 - 8);
  v134 = &v108 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF88, &qword_23C889B68);
  MEMORY[0x28223BE20](v26);
  v137 = &v108 - v27;
  v28 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF90, &qword_23C889B70);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v108 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF98, &qword_23C889B78);
  MEMORY[0x28223BE20](v35);
  v37 = &v108 - v36;
  if ((sub_23C5DCCC4(*a1, *a2) & 1) == 0)
  {
    goto LABEL_32;
  }

  v110 = v5;
  v38 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v140 = a2;
  v109 = v38;
  v39 = *(v38 + 24);
  v40 = *(v35 + 48);
  v111 = a1;
  sub_23C5855B0(a1 + v39, v37, &qword_27E1FEF90, &qword_23C889B70);
  sub_23C5855B0(v140 + v39, &v37[v40], &qword_27E1FEF90, &qword_23C889B70);
  v41 = *(v29 + 48);
  if (v41(v37, 1, v28) == 1)
  {
    if (v41(&v37[v40], 1, v28) == 1)
    {
      sub_23C585C34(v37, &qword_27E1FEF90, &qword_23C889B70);
      goto LABEL_9;
    }

LABEL_7:
    v42 = &qword_27E1FEF98;
    v43 = &qword_23C889B78;
    v44 = v37;
LABEL_31:
    sub_23C585C34(v44, v42, v43);
    goto LABEL_32;
  }

  sub_23C5855B0(v37, v34, &qword_27E1FEF90, &qword_23C889B70);
  if (v41(&v37[v40], 1, v28) == 1)
  {
    sub_23C717008(v34, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
    goto LABEL_7;
  }

  sub_23C716FA0(&v37[v40], v31, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = sub_23C871754();
  sub_23C717008(v31, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C717008(v34, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C585C34(v37, &qword_27E1FEF90, &qword_23C889B70);
  if ((v45 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  v46 = v109;
  v47 = v109[7];
  v48 = *(v26 + 48);
  v49 = v111;
  v50 = v137;
  sub_23C5855B0(v111 + v47, v137, &qword_27E1FEF80, &unk_23C889C70);
  sub_23C5855B0(v140 + v47, v50 + v48, &qword_27E1FEF80, &unk_23C889C70);
  v51 = v136;
  v52 = *(v135 + 48);
  if (v52(v50, 1, v136) == 1)
  {
    v53 = v52(v50 + v48, 1, v51);
    v54 = v110;
    v55 = v138;
    v56 = v139;
    if (v53 == 1)
    {
      sub_23C585C34(v50, &qword_27E1FEF80, &unk_23C889C70);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v57 = v134;
  sub_23C5855B0(v50, v134, &qword_27E1FEF80, &unk_23C889C70);
  v58 = v52(v50 + v48, 1, v51);
  v54 = v110;
  v55 = v138;
  v56 = v139;
  if (v58 == 1)
  {
    sub_23C717008(v57, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
LABEL_14:
    v42 = &qword_27E1FEF88;
    v43 = &qword_23C889B68;
    v44 = v50;
    goto LABEL_31;
  }

  v59 = v50 + v48;
  v60 = v129;
  sub_23C716FA0(v59, v129, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v61 = sub_23C871754();
  sub_23C717008(v60, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C717008(v57, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C585C34(v50, &qword_27E1FEF80, &unk_23C889C70);
  if ((v61 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v62 = v46[8];
  v63 = *(v130 + 48);
  v64 = v133;
  sub_23C5855B0(v49 + v62, v133, &qword_27E1FED30, &qword_23C889980);
  v65 = v140 + v62;
  v66 = v64;
  sub_23C5855B0(v65, v64 + v63, &qword_27E1FED30, &qword_23C889980);
  v67 = v132;
  v68 = *(v131 + 48);
  if (v68(v64, 1, v132) == 1)
  {
    if (v68(v64 + v63, 1, v67) == 1)
    {
      sub_23C585C34(v64, &qword_27E1FED30, &qword_23C889980);
      goto LABEL_24;
    }

LABEL_21:
    v42 = &qword_27E1FEF78;
    v43 = &qword_23C889B60;
LABEL_22:
    v44 = v66;
    goto LABEL_31;
  }

  v69 = v54;
  v70 = v128;
  sub_23C5855B0(v64, v128, &qword_27E1FED30, &qword_23C889980);
  if (v68(v64 + v63, 1, v67) == 1)
  {
    sub_23C717008(v70, type metadata accessor for ToolKitProtoAllPredicate);
    goto LABEL_21;
  }

  v71 = v64 + v63;
  v72 = v124;
  sub_23C716FA0(v71, v124, type metadata accessor for ToolKitProtoAllPredicate);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v73 = sub_23C871754();
  sub_23C717008(v72, type metadata accessor for ToolKitProtoAllPredicate);
  sub_23C717008(v70, type metadata accessor for ToolKitProtoAllPredicate);
  sub_23C585C34(v64, &qword_27E1FED30, &qword_23C889980);
  v54 = v69;
  v56 = v139;
  if ((v73 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  v74 = v46[9];
  v75 = *(v125 + 48);
  v76 = v127;
  sub_23C5855B0(v49 + v74, v127, &qword_27E1FED38, &unk_23C889C80);
  v77 = v140 + v74;
  v78 = v140;
  v79 = v76;
  sub_23C5855B0(v77, v76 + v75, &qword_27E1FED38, &unk_23C889C80);
  v80 = *(v55 + 48);
  v81 = v76;
  v82 = v126;
  if (v80(v81, 1, v126) == 1)
  {
    if (v80(v79 + v75, 1, v82) == 1)
    {
      sub_23C585C34(v79, &qword_27E1FED38, &unk_23C889C80);
      goto LABEL_35;
    }

LABEL_29:
    v42 = &qword_27E1FEF70;
    v43 = &qword_23C889B58;
LABEL_30:
    v44 = v79;
    goto LABEL_31;
  }

  v83 = v82;
  v84 = v123;
  sub_23C5855B0(v79, v123, &qword_27E1FED38, &unk_23C889C80);
  if (v80(v79 + v75, 1, v83) == 1)
  {
    sub_23C717008(v84, type metadata accessor for ToolKitProtoSuggestedPredicate);
    goto LABEL_29;
  }

  v87 = v79 + v75;
  v88 = v122;
  sub_23C716FA0(v87, v122, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v89 = sub_23C871754();
  sub_23C717008(v88, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_23C717008(v84, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_23C585C34(v79, &qword_27E1FED38, &unk_23C889C80);
  v78 = v140;
  if ((v89 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  if ((sub_23C5DCD18(v49[1], v78[1]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v90 = v46[10];
  v91 = *(v118 + 48);
  v92 = v121;
  sub_23C5855B0(v49 + v90, v121, &qword_27E1FEF60, &qword_23C889B48);
  v93 = v140 + v90;
  v66 = v92;
  sub_23C5855B0(v93, v92 + v91, &qword_27E1FEF60, &qword_23C889B48);
  v94 = *(v119 + 48);
  v95 = v120;
  if (v94(v92, 1, v120) != 1)
  {
    v96 = v117;
    sub_23C5855B0(v66, v117, &qword_27E1FEF60, &qword_23C889B48);
    if (v94(v66 + v91, 1, v95) != 1)
    {
      v97 = v66 + v91;
      v98 = v113;
      sub_23C716FA0(v97, v113, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v99 = sub_23C871754();
      sub_23C717008(v98, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_23C717008(v96, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_23C585C34(v66, &qword_27E1FEF60, &qword_23C889B48);
      if ((v99 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    sub_23C717008(v96, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
    goto LABEL_41;
  }

  if (v94(v92 + v91, 1, v95) != 1)
  {
LABEL_41:
    v42 = &qword_27E1FEF68;
    v43 = &qword_23C889B50;
    goto LABEL_22;
  }

  sub_23C585C34(v92, &qword_27E1FEF60, &qword_23C889B48);
LABEL_43:
  v100 = v46[11];
  v101 = *(v114 + 48);
  v102 = v116;
  sub_23C5855B0(v49 + v100, v116, &qword_27E1FED48, &unk_23C889C90);
  v79 = v102;
  sub_23C5855B0(v140 + v100, v102 + v101, &qword_27E1FED48, &unk_23C889C90);
  v103 = *(v56 + 48);
  v104 = valid;
  if (v103(v102, 1, valid) == 1)
  {
    if (v103(v102 + v101, 1, v104) == 1)
    {
      sub_23C585C34(v102, &qword_27E1FED48, &unk_23C889C90);
LABEL_50:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v85 = sub_23C871754();
      return v85 & 1;
    }

    goto LABEL_48;
  }

  v105 = v102;
  v106 = v112;
  sub_23C5855B0(v105, v112, &qword_27E1FED48, &unk_23C889C90);
  if (v103(v79 + v101, 1, v104) == 1)
  {
    sub_23C717008(v106, type metadata accessor for ToolKitProtoValidPredicate);
LABEL_48:
    v42 = &qword_27E1FEF58;
    v43 = &qword_23C889B40;
    goto LABEL_30;
  }

  sub_23C716FA0(v79 + v101, v54, type metadata accessor for ToolKitProtoValidPredicate);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v107 = sub_23C871754();
  sub_23C717008(v54, type metadata accessor for ToolKitProtoValidPredicate);
  sub_23C717008(v106, type metadata accessor for ToolKitProtoValidPredicate);
  sub_23C585C34(v79, &qword_27E1FED48, &unk_23C889C90);
  if (v107)
  {
    goto LABEL_50;
  }

LABEL_32:
  v85 = 0;
  return v85 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V11EnumerationV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB00, &qword_23C87B910);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v19 = *(v43 + 32);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FAB38, &unk_23C8791E0);
  v21 = v48;
  sub_23C5855B0(v48 + v19, &v18[v20], &qword_27E1FAB38, &unk_23C8791E0);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &qword_27E1FAB40;
    v24 = &qword_23C878F08;
    v25 = v18;
LABEL_7:
    sub_23C585C34(v25, v23, v24);
    goto LABEL_21;
  }

  sub_23C5855B0(v18, v14, &qword_27E1FAB38, &unk_23C8791E0);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_23C716FA0(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  v26 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v27 = v47;
  if ((sub_23C5D4798(*v47, *v21) & 1) == 0 || (sub_23C5DD078(v27[1], *(v21 + 8)) & 1) == 0)
  {
    goto LABEL_21;
  }

  v28 = *(v43 + 36);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_23C5855B0(v27 + v28, v46, &qword_27E1FBAF8, &qword_23C87B960);
  sub_23C5855B0(v21 + v28, v30 + v29, &qword_27E1FBAF8, &qword_23C87B960);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    sub_23C5855B0(v30, v41, &qword_27E1FBAF8, &qword_23C87B960);
    if (v32(v30 + v29, 1, v31) != 1)
    {
      v34 = v30 + v29;
      v35 = v40;
      sub_23C716FA0(v34, v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v36 = _s26AIMLInstrumentationStreams37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v35);
      sub_23C717008(v35, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C717008(v33, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C585C34(v30, &qword_27E1FBAF8, &qword_23C87B960);
      if (v36)
      {
        goto LABEL_18;
      }

LABEL_21:
      v37 = 0;
      return v37 & 1;
    }

    sub_23C717008(v33, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_16;
  }

  if (v32(v30 + v29, 1, v31) != 1)
  {
LABEL_16:
    v23 = &qword_27E1FBB00;
    v24 = &qword_23C87B910;
    v25 = v30;
    goto LABEL_7;
  }

  sub_23C585C34(v30, &qword_27E1FBAF8, &qword_23C87B960);
LABEL_18:
  if (*(v27 + 16) != *(v21 + 16) || (sub_23C5DD5FC(v27[3], *(v21 + 24)) & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v37 = sub_23C871754();
  return v37 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24ToolKitProtoTypeInstanceV8OptionalV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v37 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FAC40, &unk_23C8791C0);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FAC40, &unk_23C8791C0);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E1FAC40, &unk_23C8791C0);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C716FA0(&v19[v20], v12, type metadata accessor for ToolKitProtoTypeInstance);
      v25 = sub_23C7073C4(v15, v12, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C585C34(v19, &qword_27E1FAC40, &unk_23C8791C0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_6:
    v22 = &qword_27E1FAC48;
    v23 = &qword_23C878FD0;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_8:
  v26 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E1FAB68, &unk_23C879140);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
LABEL_18:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E1FAB68, &unk_23C879140);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C717008(v31, type metadata accessor for ToolKitProtoTypedValue);
LABEL_13:
    v22 = &qword_27E1FAB70;
    v23 = &qword_23C878F28;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C716FA0(v34, v37, type metadata accessor for ToolKitProtoTypedValue);
  v36 = sub_23C7073C4(v31, v35, sub_23C5EDE04, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_23C5EDE08, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C717008(v35, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C717008(v31, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24ToolKitProtoTypeInstanceV8DeferredV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAC40, &unk_23C8791C0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_9:
      type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAC40, &unk_23C8791C0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoTypeInstance);
  v18 = sub_23C7073C4(v10, v7, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v14, &qword_27E1FAC40, &unk_23C8791C0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDD0, &qword_23C889A00);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = *v15 == *v17 && v16 == v18;
    if (!v19 && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v18)
  {
    goto LABEL_16;
  }

  v20 = a1;
  v21 = *(v11 + 48);
  v26[0] = v20;
  sub_23C5855B0(v20, v13, &qword_27E1FD678, &unk_23C889CD0);
  v26[1] = a2;
  sub_23C5855B0(a2, &v13[v21], &qword_27E1FD678, &unk_23C889CD0);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FD678, &unk_23C889CD0);
LABEL_19:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v23 = sub_23C871754();
      return v23 & 1;
    }

    goto LABEL_15;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FD678, &unk_23C889CD0);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
LABEL_15:
    sub_23C585C34(v13, &qword_27E1FEDD0, &qword_23C889A00);
    goto LABEL_16;
  }

  sub_23C716FA0(&v13[v21], v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  v25 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV0cde5ValueI4KindO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_23C585C34(v13, &qword_27E1FD678, &unk_23C889CD0);
  if (v25)
  {
    goto LABEL_19;
  }

LABEL_16:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF0, &unk_23C889C60);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF8, &qword_23C889A20);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE00, &qword_23C889A28);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE08, &qword_23C889A30);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FEE00, &qword_23C889A28);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FEE00, &qword_23C889A28);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E1FEE00, &qword_23C889A28);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C716FA0(&v19[v20], v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      v25 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V2eeoiySbAG_AGtFZ_0(v15, v12);
      sub_23C717008(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      sub_23C717008(v15, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      sub_23C585C34(v19, &qword_27E1FEE00, &qword_23C889A28);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C717008(v15, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
LABEL_6:
    v22 = &qword_27E1FEE08;
    v23 = &qword_23C889A30;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E1FEE00, &qword_23C889A28);
LABEL_8:
  v26 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E1FEDF0, &unk_23C889C60);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E1FEDF0, &unk_23C889C60);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEDF0, &unk_23C889C60);
LABEL_18:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E1FEDF0, &unk_23C889C60);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C717008(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
LABEL_13:
    v22 = &qword_27E1FEDF8;
    v23 = &qword_23C889A20;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C716FA0(v34, v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  V18PredicateTemplatesV2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(v31, v35);
  sub_23C717008(v35, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C717008(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C585C34(v28, &qword_27E1FEDF0, &unk_23C889C60);
  if (V18PredicateTemplatesV2eeoiySbAI_AItFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV2IDV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (!sub_23C6F73FC(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v21 = v7;
  v22 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAC40, &unk_23C8791C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_11:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAC40, &unk_23C8791C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_23C585C34(v13, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_8;
  }

  v19 = v21;
  sub_23C716FA0(&v13[v15], v21, type metadata accessor for ToolKitProtoTypeInstance);
  v20 = sub_23C7073C4(v10, v19, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_23C7006F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  if (!sub_23C6F73FC(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v23 = v9;
  v24 = a3(0);
  v16 = *(v24 + 20);
  v17 = *(v13 + 48);
  sub_23C5855B0(a1 + v16, v15, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(a2 + v16, &v15[v17], &qword_27E1FAC30, &qword_23C878FC0);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) == 1)
  {
    if (v18(&v15[v17], 1, v6) == 1)
    {
      sub_23C585C34(v15, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_11:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_23C871754();
      return v19 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v15, v12, &qword_27E1FAC30, &qword_23C878FC0);
  if (v18(&v15[v17], 1, v6) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_7:
    sub_23C585C34(v15, &qword_27E1FAC38, &qword_23C878FC8);
    goto LABEL_8;
  }

  v21 = v23;
  sub_23C716FA0(&v15[v17], v23, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v22 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v12, v21);
  sub_23C717008(v21, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v15, &qword_27E1FAC30, &qword_23C878FC0);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_23C700A90(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = v9;
  v24 = a3(0);
  v16 = *(v24 + 20);
  v17 = *(v13 + 48);
  sub_23C5855B0(a1 + v16, v15, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(a2 + v16, &v15[v17], &qword_27E1FAC30, &qword_23C878FC0);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) == 1)
  {
    if (v18(&v15[v17], 1, v6) == 1)
    {
      sub_23C585C34(v15, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_11:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_23C871754();
      return v19 & 1;
    }

    goto LABEL_8;
  }

  sub_23C5855B0(v15, v12, &qword_27E1FAC30, &qword_23C878FC0);
  if (v18(&v15[v17], 1, v6) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_8:
    sub_23C585C34(v15, &qword_27E1FAC38, &qword_23C878FC8);
    goto LABEL_9;
  }

  v20 = v23;
  sub_23C716FA0(&v15[v17], v23, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v21 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v12, v20);
  sub_23C717008(v20, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v15, &qword_27E1FAC30, &qword_23C878FC0);
  if (v21)
  {
    goto LABEL_11;
  }

LABEL_9:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14DateComponentsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE90, &unk_23C889CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v98 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE98, &qword_23C889AA0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v98 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v98 - v13, &qword_27E1FEE90, &unk_23C889CB0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FEE90, &unk_23C889CB0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_23C5855B0(v14, v10, &qword_27E1FEE90, &unk_23C889CB0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      v19 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14DateComponentsV8CalendarV2eeoiySbAI_AItFZ_0(v10, v7);
      sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      sub_23C585C34(v14, &qword_27E1FEE90, &unk_23C889CB0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEE98, &qword_23C889AA0);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v14, &qword_27E1FEE90, &unk_23C889CB0);
LABEL_10:
  v20 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v26 = v20;
      v27 = sub_23C872014();
      v20 = v26;
      if ((v27 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_7;
  }

  v28 = v20[6];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_7;
    }
  }

  v33 = v20[7];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      goto LABEL_7;
    }
  }

  v38 = v20[8];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      goto LABEL_7;
    }
  }

  v43 = v20[9];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_7;
    }
  }

  v48 = v20[10];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 8);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_7;
    }
  }

  v53 = v20[11];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 8);
  if (v55)
  {
    if (!v57)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      goto LABEL_7;
    }
  }

  v58 = v20[12];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = *(a2 + v58 + 8);
  if (v60)
  {
    if (!v62)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      goto LABEL_7;
    }
  }

  v63 = v20[13];
  v64 = (a1 + v63);
  v65 = *(a1 + v63 + 8);
  v66 = (a2 + v63);
  v67 = *(a2 + v63 + 8);
  if (v65)
  {
    if (!v67)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v64 != *v66)
    {
      LOBYTE(v67) = 1;
    }

    if (v67)
    {
      goto LABEL_7;
    }
  }

  v68 = v20[14];
  v69 = (a1 + v68);
  v70 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  v72 = *(a2 + v68 + 8);
  if (v70)
  {
    if (!v72)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v69 != *v71)
    {
      LOBYTE(v72) = 1;
    }

    if (v72)
    {
      goto LABEL_7;
    }
  }

  v73 = v20[15];
  v74 = (a1 + v73);
  v75 = *(a1 + v73 + 8);
  v76 = (a2 + v73);
  v77 = *(a2 + v73 + 8);
  if (v75)
  {
    if (!v77)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v74 != *v76)
    {
      LOBYTE(v77) = 1;
    }

    if (v77)
    {
      goto LABEL_7;
    }
  }

  v78 = v20[16];
  v79 = (a1 + v78);
  v80 = *(a1 + v78 + 8);
  v81 = (a2 + v78);
  v82 = *(a2 + v78 + 8);
  if (v80)
  {
    if (!v82)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v79 != *v81)
    {
      LOBYTE(v82) = 1;
    }

    if (v82)
    {
      goto LABEL_7;
    }
  }

  v83 = v20[17];
  v84 = (a1 + v83);
  v85 = *(a1 + v83 + 8);
  v86 = (a2 + v83);
  v87 = *(a2 + v83 + 8);
  if (v85)
  {
    if (!v87)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v84 != *v86)
    {
      LOBYTE(v87) = 1;
    }

    if (v87)
    {
      goto LABEL_7;
    }
  }

  v88 = v20[18];
  v89 = (a1 + v88);
  v90 = *(a1 + v88 + 8);
  v91 = (a2 + v88);
  v92 = *(a2 + v88 + 8);
  if (v90)
  {
    if (!v92)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v89 != *v91)
    {
      LOBYTE(v92) = 1;
    }

    if (v92)
    {
      goto LABEL_7;
    }
  }

  v93 = v20[19];
  v94 = (a1 + v93);
  v95 = *(a1 + v93 + 8);
  v96 = (a2 + v93);
  v97 = *(a2 + v93 + 8);
  if (v95)
  {
    if (v97)
    {
LABEL_101:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }
  }

  else
  {
    if (*v94 != *v96)
    {
      LOBYTE(v97) = 1;
    }

    if ((v97 & 1) == 0)
    {
      goto LABEL_101;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14DateComponentsV8CalendarV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_23C872014();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = a1[6];
  v8 = a2[6];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    if (a1[5] != a2[5] || v7 != v8)
    {
      v9 = a1;
      v10 = a2;
      v11 = sub_23C872014();
      a2 = v10;
      v12 = v11;
      a1 = v9;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14CurrencyAmountV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEA0, &qword_23C889AA8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEA8, &qword_23C889AB0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v19 = *(v43 + 20);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FEEA0, &qword_23C889AA8);
  v21 = v48;
  sub_23C5855B0(v48 + v19, &v18[v20], &qword_27E1FEEA0, &qword_23C889AA8);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) != 1)
  {
    sub_23C5855B0(v18, v14, &qword_27E1FEEA0, &qword_23C889AA8);
    if (v22(&v18[v20], 1, v8) != 1)
    {
      sub_23C716FA0(&v18[v20], v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      v26 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V7DecimalV2eeoiySbAG_AGtFZ_0(v14, v11);
      sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_23C717008(v14, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_23C585C34(v18, &qword_27E1FEEA0, &qword_23C889AA8);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_23C717008(v14, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
LABEL_6:
    v23 = &qword_27E1FEEA8;
    v24 = &qword_23C889AB0;
    v25 = v18;
LABEL_17:
    sub_23C585C34(v25, v23, v24);
    goto LABEL_18;
  }

  if (v22(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v18, &qword_27E1FEEA0, &qword_23C889AA8);
LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != v21[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(v43 + 24);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_23C5855B0(v27 + v28, v46, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(v21 + v28, v30 + v29, &qword_27E1FAC30, &qword_23C878FC0);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      sub_23C585C34(v30, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_21:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_23C871754();
      return v34 & 1;
    }

    goto LABEL_16;
  }

  v33 = v41;
  sub_23C5855B0(v30, v41, &qword_27E1FAC30, &qword_23C878FC0);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    sub_23C717008(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v23 = &qword_27E1FAC38;
    v24 = &qword_23C878FC8;
    v25 = v30;
    goto LABEL_17;
  }

  v36 = v30 + v29;
  v37 = v40;
  sub_23C716FA0(v36, v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v38 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v37);
  sub_23C717008(v37, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v30, &qword_27E1FAC30, &qword_23C878FC0);
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V13PaymentMethodV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_15;
  }

  v15 = *(a1 + 2);
  v16 = *(a2 + 2);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v12;
    if ((*(a1 + 1) != *(a2 + 1) || v15 != v16) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = v12;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  v25 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v18 = *(v25 + 24);
  v19 = *(v17 + 48);
  sub_23C5855B0(&a1[v18], v14, &qword_27E1FAC30, &qword_23C878FC0);
  v26 = v19;
  sub_23C5855B0(&a2[v18], &v14[v19], &qword_27E1FAC30, &qword_23C878FC0);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v26], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_18:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_23C871754();
      return v22 & 1;
    }

    goto LABEL_14;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAC30, &qword_23C878FC0);
  v21 = v26;
  if (v20(&v14[v26], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_14:
    sub_23C585C34(v14, &qword_27E1FAC38, &qword_23C878FC8);
    goto LABEL_15;
  }

  sub_23C716FA0(&v14[v21], v7, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v24 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v14, &qword_27E1FAC30, &qword_23C878FC0);
  if (v24)
  {
    goto LABEL_18;
  }

LABEL_15:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V11MeasurementV2eeoiySbAG_AGtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0 || a1[2] != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE70, &unk_23C889CC0);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v55 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE78, &qword_23C889A88);
  MEMORY[0x28223BE20](v58);
  v61 = &v55 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = (&v55 - v12);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v63);
  v66 = &v55 - v13;
  v14 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v55 - v23;
  v25 = *(v22 + 56);
  v67 = a1;
  sub_23C5855B0(a1, &v55 - v23, &qword_27E1FAB38, &unk_23C8791E0);
  v68 = a2;
  sub_23C5855B0(a2, &v24[v25], &qword_27E1FAB38, &unk_23C8791E0);
  v26 = *(v15 + 48);
  if (v26(v24, 1, v14) == 1)
  {
    if (v26(&v24[v25], 1, v14) == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_27E1FAB40;
    v28 = &qword_23C878F08;
    v29 = v24;
LABEL_21:
    sub_23C585C34(v29, v27, v28);
    goto LABEL_22;
  }

  sub_23C5855B0(v24, v20, &qword_27E1FAB38, &unk_23C8791E0);
  if (v26(&v24[v25], 1, v14) == 1)
  {
    sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_23C716FA0(&v24[v25], v17, type metadata accessor for ToolKitProtoTypeIdentifier);
  v30 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v20, v17);
  sub_23C717008(v17, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v31 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v32 = *(v31 + 20);
  v33 = *(v63 + 48);
  v35 = v66;
  v34 = v67;
  sub_23C5855B0(v67 + v32, v66, &qword_27E1FAC40, &unk_23C8791C0);
  v36 = v68;
  sub_23C5855B0(v68 + v32, v35 + v33, &qword_27E1FAC40, &unk_23C8791C0);
  v37 = v65;
  v38 = *(v64 + 48);
  if (v38(v35, 1, v65) != 1)
  {
    v39 = v62;
    sub_23C5855B0(v35, v62, &qword_27E1FAC40, &unk_23C8791C0);
    if (v38(v35 + v33, 1, v37) != 1)
    {
      v40 = v57;
      sub_23C716FA0(v35 + v33, v57, type metadata accessor for ToolKitProtoTypeInstance);
      v41 = sub_23C7073C4(v39, v40, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C717008(v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C717008(v39, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C585C34(v35, &qword_27E1FAC40, &unk_23C8791C0);
      if ((v41 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_23C717008(v39, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_13;
  }

  if (v38(v35 + v33, 1, v37) != 1)
  {
LABEL_13:
    v27 = &qword_27E1FAC48;
    v28 = &qword_23C878FD0;
    v29 = v35;
    goto LABEL_21;
  }

  sub_23C585C34(v35, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_15:
  v42 = *(v31 + 24);
  v43 = *(v58 + 48);
  v44 = v61;
  sub_23C5855B0(v34 + v42, v61, &qword_27E1FEE70, &unk_23C889CC0);
  v45 = v36 + v42;
  v46 = v44;
  sub_23C5855B0(v45, v44 + v43, &qword_27E1FEE70, &unk_23C889CC0);
  v47 = v60;
  v48 = *(v59 + 48);
  if (v48(v44, 1, v60) == 1)
  {
    if (v48(v44 + v43, 1, v47) == 1)
    {
      sub_23C585C34(v44, &qword_27E1FEE70, &unk_23C889CC0);
LABEL_25:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v50 = sub_23C871754();
      return v50 & 1;
    }

    goto LABEL_20;
  }

  v49 = v56;
  sub_23C5855B0(v46, v56, &qword_27E1FEE70, &unk_23C889CC0);
  if (v48(v46 + v43, 1, v47) == 1)
  {
    sub_23C717008(v49, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
LABEL_20:
    v27 = &qword_27E1FEE78;
    v28 = &qword_23C889A88;
    v29 = v46;
    goto LABEL_21;
  }

  v52 = v46 + v43;
  v53 = v55;
  sub_23C716FA0(v52, v55, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  v54 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V7StorageV2eeoiySbAG_AGtFZ_0(v49, v53);
  sub_23C717008(v53, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_23C717008(v49, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_23C585C34(v46, &qword_27E1FEE70, &unk_23C889CC0);
  if (v54)
  {
    goto LABEL_25;
  }

LABEL_22:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V7StorageV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE58, &qword_23C889A70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE60, &qword_23C889A78);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FEE58, &qword_23C889A70);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FEE58, &qword_23C889A70);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FEE58, &qword_23C889A70);
LABEL_9:
      type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FEE58, &qword_23C889A70);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEE60, &qword_23C889A78);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  v18 = static ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind.== infix(_:_:)(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_23C585C34(v14, &qword_27E1FEE58, &qword_23C889A70);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_23C702D40(_BOOL8 *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if (!sub_23C6F73FC(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV06EntityG0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = (&v47 - v6);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v53 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v19 = *(v53 + 24);
  v20 = *(v16 + 56);
  v55 = a1;
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5855B0(v56 + v19, &v18[v20], &qword_27E1FAB38, &unk_23C8791E0);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) == 1)
  {
    if (v21(&v18[v20], 1, v8) == 1)
    {
      sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_11;
    }

LABEL_6:
    v22 = &qword_27E1FAB40;
    v23 = &qword_23C878F08;
    v24 = v18;
LABEL_7:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_8;
  }

  sub_23C5855B0(v18, v14, &qword_27E1FAB38, &unk_23C8791E0);
  if (v21(&v18[v20], 1, v8) == 1)
  {
    sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_23C716FA0(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  v27 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v55;
  v28 = v56;
  if ((*v55 != *v56 || v55[1] != v56[1]) && (sub_23C872014() & 1) == 0 || (sub_23C7FD6C0(v29[2], v28[2]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v31 = v53;
  v30 = v54;
  v32 = *(v53 + 28);
  v33 = *(v50 + 48);
  sub_23C5855B0(v29 + v32, v54, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(v28 + v32, v30 + v33, &qword_27E1FAC30, &qword_23C878FC0);
  v34 = v52;
  v35 = *(v51 + 48);
  if (v35(v30, 1, v52) != 1)
  {
    v36 = v49;
    sub_23C5855B0(v30, v49, &qword_27E1FAC30, &qword_23C878FC0);
    if (v35(v30 + v33, 1, v34) != 1)
    {
      v37 = v30 + v33;
      v38 = v48;
      sub_23C716FA0(v37, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
      v39 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v36, v38);
      sub_23C717008(v38, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_23C717008(v36, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_23C585C34(v30, &qword_27E1FAC30, &qword_23C878FC0);
      if ((v39 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    sub_23C717008(v36, type metadata accessor for ToolKitProtoDisplayRepresentation);
    goto LABEL_20;
  }

  if (v35(v30 + v33, 1, v34) != 1)
  {
LABEL_20:
    v22 = &qword_27E1FAC38;
    v23 = &qword_23C878FC8;
    v24 = v30;
    goto LABEL_7;
  }

  sub_23C585C34(v30, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_22:
  v40 = *(v31 + 32);
  v42 = *(v29 + v40);
  v41 = *(v29 + v40 + 8);
  v43 = (v28 + v40);
  v45 = *v43;
  v44 = v43[1];
  if (v41 >> 60 == 15)
  {
    if (v44 >> 60 == 15)
    {
      sub_23C5EDBA0(v42, v41);
      sub_23C5EDBA0(v45, v44);
      sub_23C5AD0AC(v42, v41);
LABEL_28:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v25 = sub_23C871754();
      return v25 & 1;
    }

    goto LABEL_26;
  }

  if (v44 >> 60 == 15)
  {
LABEL_26:
    sub_23C5EDBA0(v42, v41);
    sub_23C5EDBA0(v45, v44);
    sub_23C5AD0AC(v42, v41);
    sub_23C5AD0AC(v45, v44);
    goto LABEL_8;
  }

  sub_23C5EDBA0(v42, v41);
  sub_23C5EDBA0(v45, v44);
  v46 = sub_23C6F73FC(v42, v41, v45, v44);
  sub_23C5AD0AC(v45, v44);
  sub_23C5AD0AC(v42, v41);
  if (v46)
  {
    goto LABEL_28;
  }

LABEL_8:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV05QueryG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE80, &qword_23C889A90);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE88, &qword_23C889A98);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FAB38, &unk_23C8791E0);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FAB38, &unk_23C8791E0);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E1FAB38, &unk_23C8791E0);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C716FA0(&v19[v20], v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      v25 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v19, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v22 = &qword_27E1FAB40;
    v23 = &qword_23C878F08;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_8:
  v26 = *(type metadata accessor for ToolKitProtoTypedValue.QueryValue(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E1FEE80, &qword_23C889A90);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E1FEE80, &qword_23C889A90);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEE80, &qword_23C889A90);
LABEL_18:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E1FEE80, &qword_23C889A90);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C717008(v31, type metadata accessor for ToolKitProtoQuery);
LABEL_13:
    v22 = &qword_27E1FEE88;
    v23 = &qword_23C889A98;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C716FA0(v34, v37, type metadata accessor for ToolKitProtoQuery);
  V2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams17ToolKitProtoQueryV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_23C717008(v35, type metadata accessor for ToolKitProtoQuery);
  sub_23C717008(v31, type metadata accessor for ToolKitProtoQuery);
  sub_23C585C34(v28, &qword_27E1FEE80, &qword_23C889A90);
  if (V2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV016EntityIdentifierG0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v19 = *(v43 + 20);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FAB38, &unk_23C8791E0);
  v21 = v48;
  sub_23C5855B0(v48 + v19, &v18[v20], &qword_27E1FAB38, &unk_23C8791E0);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) != 1)
  {
    sub_23C5855B0(v18, v14, &qword_27E1FAB38, &unk_23C8791E0);
    if (v22(&v18[v20], 1, v8) != 1)
    {
      sub_23C716FA0(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      v26 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
      sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v23 = &qword_27E1FAB40;
    v24 = &qword_23C878F08;
    v25 = v18;
LABEL_17:
    sub_23C585C34(v25, v23, v24);
    goto LABEL_18;
  }

  if (v22(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != v21[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(v43 + 24);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_23C5855B0(v27 + v28, v46, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(v21 + v28, v30 + v29, &qword_27E1FAC30, &qword_23C878FC0);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      sub_23C585C34(v30, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_21:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_23C871754();
      return v34 & 1;
    }

    goto LABEL_16;
  }

  v33 = v41;
  sub_23C5855B0(v30, v41, &qword_27E1FAC30, &qword_23C878FC0);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    sub_23C717008(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v23 = &qword_27E1FAC38;
    v24 = &qword_23C878FC8;
    v25 = v30;
    goto LABEL_17;
  }

  v36 = v30 + v29;
  v37 = v40;
  sub_23C716FA0(v36, v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v38 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v37);
  sub_23C717008(v37, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v30, &qword_27E1FAC30, &qword_23C878FC0);
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV8SubtitleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB70, &qword_23C889800);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD9C8, &qword_23C87D758);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD9C8, &qword_23C87D758);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD9C8, &qword_23C87D758);
LABEL_9:
      type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD9C8, &qword_23C87D758);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEB70, &qword_23C889800);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  v18 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV0cdE12SubtitleKindO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_23C585C34(v14, &qword_27E1FD9C8, &qword_23C87D758);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v82 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB80, &unk_23C889DB0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = (&v77 - v7);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB88, &qword_23C889810);
  MEMORY[0x28223BE20](v81);
  v9 = &v77 - v8;
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x28223BE20](v10);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB90, &qword_23C889818);
  MEMORY[0x28223BE20](v12 - 8);
  v87 = &v77 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB98, &qword_23C889820);
  MEMORY[0x28223BE20](v89);
  v92 = &v77 - v14;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  v95 = *(v15 - 8);
  v96 = v15;
  MEMORY[0x28223BE20](v15);
  v88 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBA0, &unk_23C889DA0);
  MEMORY[0x28223BE20](v17 - 8);
  v93 = &v77 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBA8, &qword_23C889828);
  MEMORY[0x28223BE20](v94);
  v97 = &v77 - v19;
  v20 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBB0, &qword_23C889830);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v77 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBB8, &qword_23C889838);
  MEMORY[0x28223BE20](v27);
  v29 = &v77 - v28;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_25;
  }

  v85 = v4;
  v78 = v9;
  v84 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v30 = *(v84 + 24);
  v31 = *(v27 + 48);
  v86 = a1;
  sub_23C5855B0(a1 + v30, v29, &qword_27E1FEBB0, &qword_23C889830);
  v32 = a2 + v30;
  v33 = a2;
  sub_23C5855B0(v32, &v29[v31], &qword_27E1FEBB0, &qword_23C889830);
  v34 = *(v21 + 48);
  if (v34(v29, 1, v20) == 1)
  {
    if (v34(&v29[v31], 1, v20) == 1)
    {
      sub_23C585C34(v29, &qword_27E1FEBB0, &qword_23C889830);
      goto LABEL_10;
    }

LABEL_8:
    v35 = &qword_27E1FEBB8;
    v36 = &qword_23C889838;
    v37 = v29;
LABEL_24:
    sub_23C585C34(v37, v35, v36);
    goto LABEL_25;
  }

  sub_23C5855B0(v29, v26, &qword_27E1FEBB0, &qword_23C889830);
  if (v34(&v29[v31], 1, v20) == 1)
  {
    sub_23C717008(v26, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
    goto LABEL_8;
  }

  sub_23C716FA0(&v29[v31], v23, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  v38 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV8SubtitleV2eeoiySbAE_AEtFZ_0(v26, v23);
  sub_23C717008(v23, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_23C717008(v26, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_23C585C34(v29, &qword_27E1FEBB0, &qword_23C889830);
  if ((v38 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  v39 = v84;
  v40 = *(v84 + 28);
  v41 = *(v94 + 48);
  v42 = v86;
  v43 = v97;
  sub_23C5855B0(v86 + v40, v97, &qword_27E1FEBA0, &unk_23C889DA0);
  v44 = v33 + v40;
  v45 = v43;
  sub_23C5855B0(v44, v43 + v41, &qword_27E1FEBA0, &unk_23C889DA0);
  v46 = v96;
  v47 = *(v95 + 48);
  if (v47(v43, 1, v96) == 1)
  {
    v48 = v47(v43 + v41, 1, v46);
    v49 = v85;
    if (v48 == 1)
    {
      sub_23C585C34(v43, &qword_27E1FEBA0, &unk_23C889DA0);
      goto LABEL_17;
    }

LABEL_15:
    v35 = &qword_27E1FEBA8;
    v36 = &qword_23C889828;
LABEL_23:
    v37 = v45;
    goto LABEL_24;
  }

  v50 = v43;
  v51 = v93;
  sub_23C5855B0(v50, v93, &qword_27E1FEBA0, &unk_23C889DA0);
  v52 = v47(v45 + v41, 1, v46);
  v49 = v85;
  if (v52 == 1)
  {
    sub_23C717008(v51, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
    goto LABEL_15;
  }

  v53 = v45 + v41;
  v54 = v88;
  sub_23C716FA0(v53, v88, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  v55 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV7AltTextV2eeoiySbAE_AEtFZ_0(v51, v54);
  sub_23C717008(v54, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_23C717008(v51, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_23C585C34(v45, &qword_27E1FEBA0, &unk_23C889DA0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v56 = *(v39 + 32);
  v57 = *(v89 + 48);
  v58 = v92;
  sub_23C5855B0(v42 + v56, v92, &qword_27E1FEB90, &qword_23C889818);
  v59 = v33 + v56;
  v45 = v58;
  sub_23C5855B0(v59, v58 + v57, &qword_27E1FEB90, &qword_23C889818);
  v60 = v91;
  v61 = *(v90 + 48);
  if (v61(v58, 1, v91) != 1)
  {
    v62 = v87;
    sub_23C5855B0(v45, v87, &qword_27E1FEB90, &qword_23C889818);
    if (v61(v45 + v57, 1, v60) != 1)
    {
      v65 = v45 + v57;
      v66 = v83;
      sub_23C716FA0(v65, v83, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      v67 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV2eeoiySbAE_AEtFZ_0(v62, v66);
      sub_23C717008(v66, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      sub_23C717008(v62, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      sub_23C585C34(v45, &qword_27E1FEB90, &qword_23C889818);
      if ((v67 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    sub_23C717008(v62, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
    goto LABEL_22;
  }

  if (v61(v58 + v57, 1, v60) != 1)
  {
LABEL_22:
    v35 = &qword_27E1FEB98;
    v36 = &qword_23C889820;
    goto LABEL_23;
  }

  sub_23C585C34(v58, &qword_27E1FEB90, &qword_23C889818);
LABEL_28:
  if ((sub_23C5D25E0(v42[2], v33[2]) & 1) == 0)
  {
    goto LABEL_25;
  }

  v68 = *(v39 + 36);
  v69 = *(v81 + 48);
  v70 = v78;
  sub_23C5855B0(v42 + v68, v78, &qword_27E1FEB80, &unk_23C889DB0);
  sub_23C5855B0(v33 + v68, v70 + v69, &qword_27E1FEB80, &unk_23C889DB0);
  v71 = *(v49 + 48);
  v72 = v82;
  if (v71(v70, 1, v82) == 1)
  {
    if (v71(v70 + v69, 1, v72) == 1)
    {
      sub_23C585C34(v70, &qword_27E1FEB80, &unk_23C889DB0);
LABEL_32:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v63 = sub_23C871754();
      return v63 & 1;
    }

    goto LABEL_35;
  }

  v73 = v80;
  sub_23C5855B0(v70, v80, &qword_27E1FEB80, &unk_23C889DB0);
  if (v71(v70 + v69, 1, v72) == 1)
  {
    sub_23C717008(v73, type metadata accessor for ToolKitProtoPluginModelData);
LABEL_35:
    v35 = &qword_27E1FEB88;
    v36 = &qword_23C889810;
    v37 = v70;
    goto LABEL_24;
  }

  v74 = v70 + v69;
  v75 = v79;
  sub_23C716FA0(v74, v79, type metadata accessor for ToolKitProtoPluginModelData);
  if (!sub_23C6F73FC(*v73, v73[1], *v75, v75[1]) || (v73[2] != v75[2] || v73[3] != v75[3]) && (sub_23C872014() & 1) == 0)
  {
    sub_23C717008(v75, type metadata accessor for ToolKitProtoPluginModelData);
    sub_23C717008(v73, type metadata accessor for ToolKitProtoPluginModelData);
    v35 = &qword_27E1FEB80;
    v36 = &unk_23C889DB0;
    v37 = v78;
    goto LABEL_24;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v76 = sub_23C871754();
  sub_23C717008(v75, type metadata accessor for ToolKitProtoPluginModelData);
  sub_23C717008(v73, type metadata accessor for ToolKitProtoPluginModelData);
  sub_23C585C34(v78, &qword_27E1FEB80, &unk_23C889DB0);
  if (v76)
  {
    goto LABEL_32;
  }

LABEL_25:
  v63 = 0;
  return v63 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV011EnumerationG0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v19 = *(v43 + 20);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FAB38, &unk_23C8791E0);
  v21 = v48;
  sub_23C5855B0(v48 + v19, &v18[v20], &qword_27E1FAB38, &unk_23C8791E0);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) != 1)
  {
    sub_23C5855B0(v18, v14, &qword_27E1FAB38, &unk_23C8791E0);
    if (v22(&v18[v20], 1, v8) != 1)
    {
      sub_23C716FA0(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      v26 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
      sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v23 = &qword_27E1FAB40;
    v24 = &qword_23C878F08;
    v25 = v18;
LABEL_17:
    sub_23C585C34(v25, v23, v24);
    goto LABEL_18;
  }

  if (v22(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != v21[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(v43 + 24);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_23C5855B0(v27 + v28, v46, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(v21 + v28, v30 + v29, &qword_27E1FAC30, &qword_23C878FC0);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      sub_23C585C34(v30, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_21:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_23C871754();
      return v34 & 1;
    }

    goto LABEL_16;
  }

  v33 = v41;
  sub_23C5855B0(v30, v41, &qword_27E1FAC30, &qword_23C878FC0);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    sub_23C717008(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v23 = &qword_27E1FAC38;
    v24 = &qword_23C878FC8;
    v25 = v30;
    goto LABEL_17;
  }

  v36 = v30 + v29;
  v37 = v40;
  sub_23C716FA0(v36, v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v38 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v37);
  sub_23C717008(v37, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v30, &qword_27E1FAC30, &qword_23C878FC0);
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_23C7057F4(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v26 = a4;
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v24 = a3(0);
  v17 = *(v24 + 20);
  v18 = *(v14 + 56);
  v27 = a1;
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAB38, &unk_23C8791E0);
  v19 = *(v8 + 48);
  if (v19(v16, 1, v7) == 1)
  {
    if (v19(&v16[v18], 1, v7) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAB38, &unk_23C8791E0);
  if (v19(&v16[v18], 1, v7) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FAB40, &qword_23C878F08);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  v20 = v25;
  sub_23C716FA0(&v16[v18], v25, type metadata accessor for ToolKitProtoTypeIdentifier);
  v21 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v12, v20);
  sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v26(*v27, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_23C871754();
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams17ToolKitProtoQueryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED50, &unk_23C889D10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED58, &qword_23C889990);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v27 = type metadata accessor for ToolKitProtoQuery(0);
  v14 = *(v27 + 20);
  v15 = *(v11 + 56);
  v29 = a1;
  sub_23C5855B0(&a1[v14], v13, &qword_27E1FED50, &unk_23C889D10);
  sub_23C5855B0(&a2[v14], &v13[v15], &qword_27E1FED50, &unk_23C889D10);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FED50, &unk_23C889D10);
LABEL_8:
      if (*v29 == *a2)
      {
        v20 = *(v27 + 24);
        v21 = &v29[v20];
        v22 = v29[v20 + 8];
        v23 = &a2[v20];
        v24 = a2[v20 + 8];
        if (v22)
        {
          if (!v24)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (*v21 != *v23)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
            goto LABEL_11;
          }
        }

        sub_23C870F34();
        sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v17 = sub_23C871754();
        return v17 & 1;
      }

LABEL_11:
      v17 = 0;
      return v17 & 1;
    }
  }

  else
  {
    sub_23C5855B0(v13, v9, &qword_27E1FED50, &unk_23C889D10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v28;
      sub_23C716FA0(&v13[v15], v28, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      V12AnyPredicateV2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams17ToolKitProtoQueryV12AnyPredicateV2eeoiySbAE_AEtFZ_0(v9, v18);
      sub_23C717008(v18, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      sub_23C717008(v9, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      sub_23C585C34(v13, &qword_27E1FED50, &unk_23C889D10);
      if ((V12AnyPredicateV2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_23C717008(v9, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  }

  sub_23C585C34(v13, &qword_27E1FED58, &qword_23C889990);
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams17ToolKitProtoQueryV12AnyPredicateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED08, &qword_23C889958);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD790, &qword_23C87D750);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD790, &qword_23C87D750);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
LABEL_9:
      type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD790, &qword_23C87D750);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FED08, &qword_23C889958);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v18 = static ToolKitProtoQuery.ToolKitProtoAnyPredicateKind.== infix(_:_:)(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = v7;
  v22 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAC40, &unk_23C8791C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_14:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_11;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAC40, &unk_23C8791C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_11:
    sub_23C585C34(v13, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_12;
  }

  v18 = v21;
  sub_23C716FA0(&v13[v15], v21, type metadata accessor for ToolKitProtoTypeInstance);
  v19 = sub_23C7073C4(v10, v18, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v18, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_12:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v72 = a2;
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v57 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED68, &qword_23C8899A0);
  MEMORY[0x28223BE20](v61);
  v64 = &v57 - v7;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDA8, &unk_23C889CF0);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v57 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDB0, &qword_23C8899E0);
  MEMORY[0x28223BE20](v66);
  v69 = &v57 - v12;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v57 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED88, &qword_23C8899C0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v70 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v71 = a1;
  v24 = *(v70 + 20);
  v25 = *(v21 + 56);
  sub_23C5855B0(a1 + v24, v23, &qword_27E1FED80, &qword_23C8899B8);
  v26 = v72 + v24;
  v27 = v72;
  sub_23C5855B0(v26, &v23[v25], &qword_27E1FED80, &qword_23C8899B8);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_23C585C34(v23, &qword_27E1FED80, &qword_23C8899B8);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_27E1FED88;
    v30 = &qword_23C8899C0;
    v31 = v23;
LABEL_24:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_25;
  }

  sub_23C5855B0(v23, v19, &qword_27E1FED80, &qword_23C8899B8);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_6;
  }

  sub_23C716FA0(&v23[v25], v16, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  v32 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(v19, v16);
  sub_23C717008(v16, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C585C34(v23, &qword_27E1FED80, &qword_23C8899B8);
  if ((v32 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v34 = v70;
  v33 = v71;
  v35 = *(v70 + 24);
  v36 = *(v66 + 48);
  v37 = v69;
  sub_23C5855B0(v71 + v35, v69, &qword_27E1FEDA8, &unk_23C889CF0);
  sub_23C5855B0(v27 + v35, v37 + v36, &qword_27E1FEDA8, &unk_23C889CF0);
  v38 = v68;
  v39 = *(v67 + 48);
  if (v39(v37, 1, v68) != 1)
  {
    v40 = v65;
    sub_23C5855B0(v37, v65, &qword_27E1FEDA8, &unk_23C889CF0);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v60;
      sub_23C716FA0(v41, v60, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      v43 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V2eeoiySbAE_AEtFZ_0(v40, v42);
      sub_23C717008(v42, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      sub_23C717008(v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      sub_23C585C34(v37, &qword_27E1FEDA8, &unk_23C889CF0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    sub_23C717008(v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
    goto LABEL_13;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_13:
    v29 = &qword_27E1FEDB0;
    v30 = &qword_23C8899E0;
    v31 = v37;
    goto LABEL_24;
  }

  sub_23C585C34(v37, &qword_27E1FEDA8, &unk_23C889CF0);
LABEL_15:
  if ((*v33 != *v27 || v33[1] != v27[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_25;
  }

  v44 = *(v34 + 28);
  v45 = *(v61 + 48);
  v46 = v64;
  sub_23C5855B0(v33 + v44, v64, &qword_27E1FED60, &qword_23C889998);
  v47 = v27 + v44;
  v48 = v46;
  sub_23C5855B0(v47, v46 + v45, &qword_27E1FED60, &qword_23C889998);
  v49 = v63;
  v50 = *(v62 + 48);
  if (v50(v46, 1, v63) == 1)
  {
    if (v50(v46 + v45, 1, v49) == 1)
    {
      sub_23C585C34(v46, &qword_27E1FED60, &qword_23C889998);
LABEL_28:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = sub_23C871754();
      return v52 & 1;
    }

    goto LABEL_23;
  }

  v51 = v59;
  sub_23C5855B0(v48, v59, &qword_27E1FED60, &qword_23C889998);
  if (v50(v48 + v45, 1, v49) == 1)
  {
    sub_23C717008(v51, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_23:
    v29 = &qword_27E1FED68;
    v30 = &qword_23C8899A0;
    v31 = v48;
    goto LABEL_24;
  }

  v54 = v48 + v45;
  v55 = v58;
  sub_23C716FA0(v54, v58, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  v56 = _s26AIMLInstrumentationStreams38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v51, v55);
  sub_23C717008(v55, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C717008(v51, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C585C34(v48, &qword_27E1FED60, &qword_23C889998);
  if (v56)
  {
    goto LABEL_28;
  }

LABEL_25:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s26AIMLInstrumentationStreams021ToolKitProtoAssistantC16SchemaDefinitionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC50, &qword_23C8898B0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v29 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v30 = a1;
  v14 = *(v29 + 28);
  v15 = *(v11 + 56);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FACC8, &unk_23C889C50);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FACC8, &unk_23C889C50);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v9, &qword_27E1FACC8, &unk_23C889C50);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v28;
      sub_23C716FA0(&v13[v15], v28, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v20 = _s26AIMLInstrumentationStreams37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v9, v19);
      sub_23C717008(v19, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_23C717008(v9, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_23C585C34(v13, &qword_27E1FACC8, &unk_23C889C50);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_23C717008(v9, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FEC50, &qword_23C8898B0);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v13, &qword_27E1FACC8, &unk_23C889C50);
LABEL_10:
  v21 = v30;
  if ((*v30 != *a2 || v30[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_7;
  }

  v22 = *(v29 + 32);
  v23 = (v21 + v22);
  v24 = *(v21 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v26)
  {
    goto LABEL_7;
  }

  if (sub_23C5DF2B4(v21[2], a2[2]) & 1) != 0 && (sub_23C5DCD18(v21[3], a2[3]))
  {
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_23C871754();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_23C7073C4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t *, uint64_t *), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *a2;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v15 = *a1;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v14 = v10;
      a3(v9);
      a3(v10);
      a3(v9);
      v13 = a4(&v15, &v14);

      a5(v9);
      if (v13)
      {
        goto LABEL_9;
      }

      return 0;
    }

    a3(v9);
    a3(v10);
    a3(v9);

LABEL_6:
    a5(v9);
    a5(v10);
    return 0;
  }

  a3(*a1);
  a3(v10);
  if ((~v10 & 0xF000000000000007) != 0)
  {
    goto LABEL_6;
  }

  a5(v9);
LABEL_9:
  a6(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC78, &qword_23C878FF8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAC70, &qword_23C878FF0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAC70, &qword_23C878FF0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
LABEL_9:
      type metadata accessor for ToolKitProtoSystemToolProtocol(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAC70, &qword_23C878FF0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAC78, &qword_23C878FF8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  v18 = static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV16IntentSideEffectV2eeoiySbAE_AEtFZ_0(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 5))
  {
    if (*(a2 + 5))
    {
LABEL_3:
      type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_23C871754() & 1;
    }
  }

  else if ((*(a2 + 5) & 1) == 0)
  {
    v3 = *a2 | (*(a2 + 4) << 32);
    if (((*a1 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
    {
      if (*a1)
      {
        if ((v3 & 0x100000000) != 0 && *a2)
        {
          goto LABEL_3;
        }
      }

      else if ((v3 & 0x100000000) != 0 && !*a2)
      {
        goto LABEL_3;
      }
    }

    else if ((v3 & 0x100000000) == 0 && *a1 == *a2)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECB8, &qword_23C889918);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFF8, &qword_23C889BD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = v7;
  v25 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v14 = *(v25 + 20);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FECB8, &qword_23C889918);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FECB8, &qword_23C889918);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E1FECB8, &qword_23C889918);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v24;
      sub_23C716FA0(v20, v24, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      if (*v10 == *v21 && v10[1] == v21[1] && v10[2] == v21[2])
      {
        sub_23C870F34();
        sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_23C871754();
        sub_23C717008(v21, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
        sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
        sub_23C585C34(v13, &qword_27E1FECB8, &qword_23C889918);
        if (v22)
        {
          goto LABEL_6;
        }

LABEL_17:
        v17 = 0;
        return v17 & 1;
      }

      sub_23C717008(v21, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      v18 = &qword_27E1FECB8;
      v19 = &qword_23C889918;
LABEL_16:
      sub_23C585C34(v13, v18, v19);
      goto LABEL_17;
    }

    sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
LABEL_9:
    v18 = &qword_27E1FEFF8;
    v19 = &qword_23C889BD0;
    goto LABEL_16;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v13, &qword_27E1FECB8, &qword_23C889918);
LABEL_6:
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_23C871754();
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC50, &qword_23C8898B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FACC8, &unk_23C889C50);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FACC8, &unk_23C889C50);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FACC8, &unk_23C889C50);
LABEL_9:
      type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FACC8, &unk_23C889C50);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEC50, &qword_23C8898B0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v18 = _s26AIMLInstrumentationStreams37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C585C34(v14, &qword_27E1FACC8, &unk_23C889C50);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC19InvocationSignatureV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23C5D25E0(*a1, *a2) & 1) == 0 || (sub_23C5D25E0(a1[1], a2[1]) & 1) == 0 || (sub_23C7FF710(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoToolInvocationSignature(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V6EntityV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB00, &qword_23C87B910);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v19 = *(v43 + 40);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FAB38, &unk_23C8791E0);
  v21 = v48;
  sub_23C5855B0(v48 + v19, &v18[v20], &qword_27E1FAB38, &unk_23C8791E0);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &qword_27E1FAB40;
    v24 = &qword_23C878F08;
    v25 = v18;
LABEL_7:
    sub_23C585C34(v25, v23, v24);
    goto LABEL_23;
  }

  sub_23C5855B0(v18, v14, &qword_27E1FAB38, &unk_23C8791E0);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_23C716FA0(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  v26 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v27 = v47;
  if ((sub_23C5D40D4(*v47, *v21) & 1) == 0 || (sub_23C5DD078(v27[1], v21[1]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v28 = *(v43 + 44);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_23C5855B0(v27 + v28, v46, &qword_27E1FBAF8, &qword_23C87B960);
  sub_23C5855B0(v21 + v28, v30 + v29, &qword_27E1FBAF8, &qword_23C87B960);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    sub_23C5855B0(v30, v41, &qword_27E1FBAF8, &qword_23C87B960);
    if (v32(v30 + v29, 1, v31) != 1)
    {
      v34 = v30 + v29;
      v35 = v40;
      sub_23C716FA0(v34, v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v36 = _s26AIMLInstrumentationStreams37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v35);
      sub_23C717008(v35, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C717008(v33, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C585C34(v30, &qword_27E1FBAF8, &qword_23C87B960);
      if (v36)
      {
        goto LABEL_18;
      }

LABEL_23:
      v37 = 0;
      return v37 & 1;
    }

    sub_23C717008(v33, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_16;
  }

  if (v32(v30 + v29, 1, v31) != 1)
  {
LABEL_16:
    v23 = &qword_27E1FBB00;
    v24 = &qword_23C87B910;
    v25 = v30;
    goto LABEL_7;
  }

  sub_23C585C34(v30, &qword_27E1FBAF8, &qword_23C87B960);
LABEL_18:
  if ((sub_23C5DCD18(v27[2], v21[2]) & 1) == 0 || (sub_23C5DD5FC(v27[3], v21[3]) & 1) == 0 || (sub_23C5EDE0C() & 1) == 0 || (sub_23C5DDB80(v27[5], v21[5]) & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v37 = sub_23C871754();
  return v37 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC17DefinitionClosureV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACB0, &qword_23C879010);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FACA8, &unk_23C87B940);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FACA8, &unk_23C87B940);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FACA8, &unk_23C87B940);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v13, v9, &qword_27E1FACA8, &unk_23C87B940);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C717008(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FACB0, &qword_23C879010);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_23C716FA0(&v13[v15], v23, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v18 = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V2eeoiySbAE_AEtFZ_0(v9, v17);
  sub_23C717008(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C717008(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C585C34(v13, &qword_27E1FACA8, &unk_23C87B940);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_23C5DF888(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_23C871754();
  return v19 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC13SummaryStringV9ComponentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 != 255)
  {
    v13 = *a1;
    v14 = v2;
    v15 = v4;
    if (v7 != 255)
    {
      v10 = v6;
      v11 = v5;
      v12 = v7 & 1;
      sub_23C5EDA0C(v3, v2, v4);
      sub_23C5EDA0C(v6, v5, v7);
      sub_23C5EDA0C(v3, v2, v4);
      v8 = _s26AIMLInstrumentationStreams012ToolKitProtoC13SummaryStringV0cdE13ComponentKindO2eeoiySbAE_AEtFZ_0(&v13, &v10);
      sub_23C5EDA44(v10, v11);
      sub_23C5EDA44(v13, v14);
      sub_23C5EDA2C(v3, v2, v4);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_23C5EDA0C(v3, v2, v4);
    sub_23C5EDA0C(v6, v5, 255);
    sub_23C5EDA0C(v3, v2, v4);
    sub_23C5EDA44(v3, v2);
LABEL_8:
    sub_23C5EDA2C(v3, v2, v4);
    sub_23C5EDA2C(v6, v5, v7);
    return 0;
  }

  sub_23C5EDA0C(*a1, v2, 255);
  if (v7 != 255)
  {
    sub_23C5EDA0C(v6, v5, v7);
    goto LABEL_8;
  }

  sub_23C5EDA0C(v6, v5, 255);
  sub_23C5EDA2C(v3, v2, 255);
LABEL_10:
  type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C708E18(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  v9 = a2[1];
  if (v8 == 1)
  {
    if (v9 == 1)
    {
      v11 = a5;
      v8 = 1;
      a3(*a1, 1);
      a3(v10, 1);
LABEL_4:
      a4(v7, v8);
      v11(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_23C871754() & 1;
    }

    goto LABEL_6;
  }

  if (v9 != 1)
  {
    if (v8)
    {
      if (v9)
      {
        v11 = a5;
        if (__PAIR128__(v8, v7) == __PAIR128__(v9, v10))
        {
          a3(*a1, v8);
          a3(v7, v8);
          a3(v7, v8);

          goto LABEL_4;
        }

        v15 = sub_23C872014();
        a3(v7, v8);
        a3(v10, v9);
        a3(v7, v8);

        if (v15)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }
    }

    else if (!v9)
    {
      v11 = a5;
      a3(*a1, 0);
      a3(v10, 0);
      swift_bridgeObjectRelease_n();
      goto LABEL_4;
    }

    (a3)(*a1, v8, a3, a4, a5);
    a3(v10, v9);
    a3(v7, v8);

LABEL_13:
    v13 = v7;
    v14 = v8;
    goto LABEL_14;
  }

LABEL_6:
  (a3)(*a1, v8, a3, a4, a5);
  a3(v10, v9);
  a4(v7, v8);
  v13 = v10;
  v14 = v9;
LABEL_14:
  a4(v13, v14);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams25ToolKitProtoAppDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBE0, &qword_23C889850);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBE8, &qword_23C889858);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23C872014() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_23C872014() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_23C872014() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_24;
  }

  v22 = v7;
  v21 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v14 = *(v21 + 40);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FEBE0, &qword_23C889850);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FEBE0, &qword_23C889850);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FEBE0, &qword_23C889850);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FEBE0, &qword_23C889850);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoAppDefinition.Device);
LABEL_20:
    sub_23C585C34(v13, &qword_27E1FEBE8, &qword_23C889858);
LABEL_24:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v22;
  sub_23C716FA0(&v13[v15], v22, type metadata accessor for ToolKitProtoAppDefinition.Device);
  v18 = sub_23C708E18(v10, v17, sub_23C717558, sub_23C71755C, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_23C717008(v17, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_23C585C34(v13, &qword_27E1FEBE0, &qword_23C889850);
  if ((v18 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (*(a1 + 80) != *(a2 + 80))
  {
    goto LABEL_24;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_23C871754();
  return v19 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v120 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v116 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v5 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC30, &qword_23C8898A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v114 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v109 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FF000, &qword_23C889BD8);
  v10 = MEMORY[0x28223BE20](v119);
  v117 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = &v109 - v12;
  v125 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v118 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC38, &unk_23C889D60);
  MEMORY[0x28223BE20](v14 - 8);
  v124 = &v109 - v15;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FF008, &qword_23C889BE0);
  MEMORY[0x28223BE20](v122);
  v126 = &v109 - v16;
  v17 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  v130 = *(v17 - 8);
  v131 = v17;
  MEMORY[0x28223BE20](v17);
  v127 = (&v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC40, &qword_23C8898A8);
  MEMORY[0x28223BE20](v19 - 8);
  v128 = (&v109 - v20);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FF010, &qword_23C889BE8);
  MEMORY[0x28223BE20](v129);
  v132 = &v109 - v21;
  v22 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v135 = *(v22 - 8);
  v136 = v22;
  MEMORY[0x28223BE20](v22);
  v133 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC48, &unk_23C889D50);
  MEMORY[0x28223BE20](v24 - 8);
  v134 = &v109 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FF018, &qword_23C889BF0);
  MEMORY[0x28223BE20](v26);
  v137 = &v109 - v27;
  v28 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = (&v109 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - v36;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23C872014() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (sub_23C5DF2B4(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v110 = v5;
  v38 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v113 = a2;
  v111 = v38;
  v39 = *(v38 + 68);
  v40 = a1;
  v41 = *(v35 + 48);
  v112 = v40;
  sub_23C5855B0(v40 + v39, v37, &qword_27E1FAC40, &unk_23C8791C0);
  v42 = v113 + v39;
  v43 = v113;
  sub_23C5855B0(v42, &v37[v41], &qword_27E1FAC40, &unk_23C8791C0);
  v44 = *(v29 + 48);
  if (v44(v37, 1, v28) == 1)
  {
    if (v44(&v37[v41], 1, v28) == 1)
    {
      sub_23C585C34(v37, &qword_27E1FAC40, &unk_23C8791C0);
      goto LABEL_18;
    }

LABEL_13:
    v45 = &qword_27E1FAC48;
    v46 = &qword_23C878FD0;
    v47 = v37;
LABEL_14:
    sub_23C585C34(v47, v45, v46);
    goto LABEL_15;
  }

  sub_23C5855B0(v37, v34, &qword_27E1FAC40, &unk_23C8791C0);
  if (v44(&v37[v41], 1, v28) == 1)
  {
    sub_23C717008(v34, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_13;
  }

  sub_23C716FA0(&v37[v41], v31, type metadata accessor for ToolKitProtoTypeInstance);
  v50 = sub_23C7073C4(v34, v31, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v31, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v34, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v37, &qword_27E1FAC40, &unk_23C8791C0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v51 = v111;
  v52 = v111[18];
  v53 = v112;
  v54 = (v112 + v52);
  v55 = *(v112 + v52 + 8);
  v56 = (v43 + v52);
  v57 = v56[1];
  if (v55)
  {
    if (!v57 || (*v54 != *v56 || v55 != v57) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v57)
  {
    goto LABEL_15;
  }

  v58 = v51[19];
  v59 = *(v26 + 48);
  v60 = v137;
  sub_23C5855B0(v53 + v58, v137, &qword_27E1FEC48, &unk_23C889D50);
  sub_23C5855B0(v43 + v58, v60 + v59, &qword_27E1FEC48, &unk_23C889D50);
  v61 = v136;
  v62 = *(v135 + 48);
  if (v62(v60, 1, v136) == 1)
  {
    if (v62(v60 + v59, 1, v61) == 1)
    {
      sub_23C585C34(v60, &qword_27E1FEC48, &unk_23C889D50);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v63 = v134;
  sub_23C5855B0(v60, v134, &qword_27E1FEC48, &unk_23C889D50);
  if (v62(v60 + v59, 1, v61) == 1)
  {
    sub_23C717008(v63, type metadata accessor for ToolKitProtoAppDefinition);
LABEL_30:
    v45 = &qword_27E1FF018;
    v46 = &qword_23C889BF0;
    v47 = v60;
    goto LABEL_14;
  }

  v64 = v60 + v59;
  v65 = v133;
  sub_23C716FA0(v64, v133, type metadata accessor for ToolKitProtoAppDefinition);
  v66 = _s26AIMLInstrumentationStreams25ToolKitProtoAppDefinitionV2eeoiySbAC_ACtFZ_0(v63, v65);
  sub_23C717008(v65, type metadata accessor for ToolKitProtoAppDefinition);
  sub_23C717008(v63, type metadata accessor for ToolKitProtoAppDefinition);
  sub_23C585C34(v60, &qword_27E1FEC48, &unk_23C889D50);
  if ((v66 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_32:
  v67 = v51[20];
  v68 = (v53 + v67);
  v69 = *(v53 + v67 + 8);
  v70 = (v43 + v67);
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v71)
  {
    goto LABEL_15;
  }

  if ((sub_23C5E02E8(*(v53 + 48), *(v43 + 48)) & 1) == 0 || (sub_23C5D25E0(*(v53 + 56), *(v43 + 56)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v72 = v51[21];
  v73 = *(v129 + 48);
  v74 = v132;
  sub_23C5855B0(v53 + v72, v132, &qword_27E1FEC40, &qword_23C8898A8);
  sub_23C5855B0(v43 + v72, v74 + v73, &qword_27E1FEC40, &qword_23C8898A8);
  v75 = v131;
  v76 = *(v130 + 48);
  if (v76(v74, 1, v131) == 1)
  {
    if (v76(v74 + v73, 1, v75) == 1)
    {
      sub_23C585C34(v74, &qword_27E1FEC40, &qword_23C8898A8);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v77 = v128;
  sub_23C5855B0(v74, v128, &qword_27E1FEC40, &qword_23C8898A8);
  if (v76(v74 + v73, 1, v75) == 1)
  {
    sub_23C717008(v77, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
LABEL_46:
    v45 = &qword_27E1FF010;
    v46 = &qword_23C889BE8;
    v47 = v74;
    goto LABEL_14;
  }

  v78 = v74 + v73;
  v79 = v127;
  sub_23C716FA0(v78, v127, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  v80 = sub_23C70C494(v77, v79, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C717008(v79, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C717008(v77, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C585C34(v74, &qword_27E1FEC40, &qword_23C8898A8);
  if ((v80 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_48:
  if ((sub_23C5DD078(*(v53 + 64), *(v43 + 64)) & 1) == 0 || (sub_23C5E0328(*(v53 + 72), *(v43 + 72)) & 1) == 0 || *(v53 + 80) != *(v43 + 80) || (sub_23C5DCD18(*(v53 + 88), *(v43 + 88)) & 1) == 0 || (sub_23C5E0394(*(v112 + 96), *(v113 + 96)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v81 = v111[22];
  v82 = *(v122 + 48);
  v83 = v126;
  sub_23C5855B0(v112 + v81, v126, &qword_27E1FEC38, &unk_23C889D60);
  sub_23C5855B0(v113 + v81, v83 + v82, &qword_27E1FEC38, &unk_23C889D60);
  v84 = *(v123 + 48);
  if (v84(v83, 1, v125) == 1)
  {
    if (v84(v126 + v82, 1, v125) == 1)
    {
      sub_23C585C34(v126, &qword_27E1FEC38, &unk_23C889D60);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v85 = v126;
  sub_23C5855B0(v126, v124, &qword_27E1FEC38, &unk_23C889D60);
  if (v84(v85 + v82, 1, v125) == 1)
  {
    sub_23C717008(v124, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
LABEL_58:
    v45 = &qword_27E1FF008;
    v46 = &qword_23C889BE0;
    v47 = v126;
    goto LABEL_14;
  }

  v86 = v126;
  v87 = v126 + v82;
  v88 = v118;
  sub_23C716FA0(v87, v118, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  v89 = v124;
  v90 = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0C4IconV2eeoiySbAG_AGtFZ_0(v124, v88);
  sub_23C717008(v88, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_23C717008(v89, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_23C585C34(v86, &qword_27E1FEC38, &unk_23C889D60);
  if ((v90 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_60:
  if ((sub_23C5DF2B4(*(v112 + 104), *(v113 + 104)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v91 = v111[23];
  v92 = *(v119 + 48);
  v93 = v121;
  sub_23C5855B0(v112 + v91, v121, &qword_27E1FEC30, &qword_23C8898A0);
  sub_23C5855B0(v113 + v91, v93 + v92, &qword_27E1FEC30, &qword_23C8898A0);
  v94 = *(v116 + 48);
  if (v94(v93, 1, v120) == 1)
  {
    if (v94(v121 + v92, 1, v120) == 1)
    {
      sub_23C585C34(v121, &qword_27E1FEC30, &qword_23C8898A0);
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v95 = v121;
  sub_23C5855B0(v121, v115, &qword_27E1FEC30, &qword_23C8898A0);
  if (v94(v95 + v92, 1, v120) == 1)
  {
    sub_23C717008(v115, type metadata accessor for ToolKitProtoContainerDefinition);
LABEL_66:
    v45 = &qword_27E1FF000;
    v46 = &qword_23C889BD8;
    v47 = v121;
    goto LABEL_14;
  }

  v96 = v121;
  v97 = v121 + v92;
  v98 = v110;
  sub_23C716FA0(v97, v110, type metadata accessor for ToolKitProtoContainerDefinition);
  v99 = v115;
  v100 = _s26AIMLInstrumentationStreams31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(v115, v98);
  sub_23C717008(v98, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C717008(v99, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C585C34(v96, &qword_27E1FEC30, &qword_23C8898A0);
  if ((v100 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_68:
  v101 = v111[24];
  v102 = *(v119 + 48);
  v103 = v117;
  sub_23C5855B0(v112 + v101, v117, &qword_27E1FEC30, &qword_23C8898A0);
  sub_23C5855B0(v113 + v101, v103 + v102, &qword_27E1FEC30, &qword_23C8898A0);
  if (v94(v103, 1, v120) != 1)
  {
    v104 = v117;
    sub_23C5855B0(v117, v114, &qword_27E1FEC30, &qword_23C8898A0);
    if (v94(v104 + v102, 1, v120) != 1)
    {
      v105 = v117;
      v106 = v110;
      sub_23C716FA0(v117 + v102, v110, type metadata accessor for ToolKitProtoContainerDefinition);
      v107 = v114;
      v108 = _s26AIMLInstrumentationStreams31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(v114, v106);
      sub_23C717008(v106, type metadata accessor for ToolKitProtoContainerDefinition);
      sub_23C717008(v107, type metadata accessor for ToolKitProtoContainerDefinition);
      sub_23C585C34(v105, &qword_27E1FEC30, &qword_23C8898A0);
      if ((v108 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_75;
    }

    sub_23C717008(v114, type metadata accessor for ToolKitProtoContainerDefinition);
    goto LABEL_73;
  }

  if (v94(v117 + v102, 1, v120) != 1)
  {
LABEL_73:
    v45 = &qword_27E1FF000;
    v46 = &qword_23C889BD8;
    v47 = v117;
    goto LABEL_14;
  }

  sub_23C585C34(v117, &qword_27E1FEC30, &qword_23C8898A0);
LABEL_75:
  if (sub_23C5EDE0C())
  {
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v48 = sub_23C871754();
    return v48 & 1;
  }

LABEL_15:
  v48 = 0;
  return v48 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV9PrimitiveV2eeoiySbAE_AEtFZ_0(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 != 41)
  {
    v5 = *a1;
    if (v2 == 41)
    {
      return 0;
    }

    v4 = v2;
    if (!_s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV0cdE13PrimitiveKindO2eeoiySbAE_AEtFZ_0(&v5, &v4))
    {
      return 0;
    }

LABEL_6:
    type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  if (v2 == 41)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB30, &qword_23C878F00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAB28, &unk_23C889C40);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAB28, &unk_23C889C40);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAB28, &unk_23C889C40);
LABEL_9:
      type metadata accessor for ToolKitProtoTypeIdentifier(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAB28, &unk_23C889C40);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeIdentifierKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB30, &qword_23C878F00);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  v18 = _s26AIMLInstrumentationStreams30ToolKitProtoTypeIdentifierKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_23C585C34(v14, &qword_27E1FAB28, &unk_23C889C40);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_23C70ACAC()
{
  result = qword_27E1FD510;
  if (!qword_27E1FD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD510);
  }

  return result;
}

unint64_t sub_23C70AD00()
{
  result = qword_27E1FD538;
  if (!qword_27E1FD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD538);
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_24;
  }

  v14 = a1[8];
  v15 = a2[8];
  if (v14)
  {
    if (!v15 || (a1[7] != a2[7] || v14 != v15) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v15)
  {
    goto LABEL_24;
  }

  v24 = v7;
  v23 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  v16 = *(v23 + 40);
  v17 = *(v11 + 48);
  sub_23C5855B0(a1 + v16, v13, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2 + v16, &v13[v17], &qword_27E1FAC40, &unk_23C8791C0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E1FAC40, &unk_23C8791C0);
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
      goto LABEL_18;
    }

    v19 = v24;
    sub_23C716FA0(&v13[v17], v24, type metadata accessor for ToolKitProtoTypeInstance);
    v20 = sub_23C7073C4(v10, v19, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
    if (v20)
    {
      goto LABEL_20;
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
LABEL_18:
    sub_23C585C34(v13, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_24;
  }

  sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_20:
  if ((sub_23C5E098C(a1[4], a2[4]) & 1) == 0 || (sub_23C5DCD18(a1[5], a2[5]) & 1) == 0 || (sub_23C5E124C(a1[6], a2[6]) & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = sub_23C871754();
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV12RelationshipV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC20, &unk_23C889D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC28, &qword_23C878FB8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAC20, &unk_23C889D70);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAC20, &unk_23C889D70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAC20, &unk_23C889D70);
LABEL_11:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAC20, &unk_23C889D70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
LABEL_8:
    sub_23C585C34(v13, &qword_27E1FAC28, &qword_23C878FB8);
    goto LABEL_9;
  }

  v18 = v21;
  sub_23C716FA0(&v13[v15], v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  v19 = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV12RelationshipV8RelationV2eeoiySbAK_AKtFZ_0(v10, v18);
  sub_23C717008(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_23C585C34(v13, &qword_27E1FAC20, &unk_23C889D70);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV12RelationshipV8RelationV2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC18, &qword_23C878FB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAC10, &qword_23C878FA8);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAC10, &qword_23C878FA8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAC10, &qword_23C878FA8);
LABEL_9:
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAC10, &qword_23C878FA8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAC18, &qword_23C878FB0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  v18 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_23C585C34(v14, &qword_27E1FAC10, &qword_23C878FA8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V7DecimalV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_23C870ED4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEB0, &unk_23C889CA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEB8, &qword_23C889AB8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    goto LABEL_9;
  }

  v15 = v12;
  v26 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v16 = *(v26 + 24);
  v17 = *(v15 + 48);
  sub_23C5855B0(&a1[v16], v14, &qword_27E1FEEB0, &unk_23C889CA0);
  v18 = &a2[v16];
  v19 = v5;
  v27 = v17;
  sub_23C5855B0(v18, &v14[v17], &qword_27E1FEEB0, &unk_23C889CA0);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v27], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FEEB0, &unk_23C889CA0);
LABEL_12:
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_23C871754();
      return v22 & 1;
    }

    goto LABEL_8;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FEEB0, &unk_23C889CA0);
  v21 = v27;
  if (v20(&v14[v27], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_23C585C34(v14, &qword_27E1FEEB8, &qword_23C889AB8);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, &v14[v21], v4);
  sub_23C716EF0(&qword_27E1FEEC0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v24 = sub_23C871754();
  v25 = *(v19 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_23C585C34(v14, &qword_27E1FEEB0, &unk_23C889CA0);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEED0, &qword_23C889AC0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD578, &qword_23C87D740);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD578, &qword_23C87D740);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
LABEL_9:
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD578, &qword_23C87D740);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEED0, &qword_23C889AC0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  v18 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV0cde9PrimitiveG4KindO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_23C70BFA8()
{
  result = qword_27E1FD588;
  if (!qword_27E1FD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD588);
  }

  return result;
}

unint64_t sub_23C70BFFC()
{
  result = qword_27E1FD598;
  if (!qword_27E1FD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD598);
  }

  return result;
}

unint64_t sub_23C70C050()
{
  result = qword_27E1FD5B0;
  if (!qword_27E1FD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD5B0);
  }

  return result;
}

unint64_t sub_23C70C0A4()
{
  result = qword_27E1FD5E8;
  if (!qword_27E1FD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD5E8);
  }

  return result;
}

unint64_t sub_23C70C0F8()
{
  result = qword_27E1FD6A8;
  if (!qword_27E1FD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD6A8);
  }

  return result;
}

unint64_t sub_23C70C14C()
{
  result = qword_27E1FD6B0;
  if (!qword_27E1FD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD6B0);
  }

  return result;
}

unint64_t sub_23C70C1A0()
{
  result = qword_27E1FD6B8;
  if (!qword_27E1FD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD6B8);
  }

  return result;
}

unint64_t sub_23C70C1F4()
{
  result = qword_27E1FD720;
  if (!qword_27E1FD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD720);
  }

  return result;
}

unint64_t sub_23C70C248()
{
  result = qword_27E1FD780;
  if (!qword_27E1FD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD780);
  }

  return result;
}

unint64_t sub_23C70C29C()
{
  result = qword_27E1FD7B0;
  if (!qword_27E1FD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD7B0);
  }

  return result;
}

unint64_t sub_23C70C2F0()
{
  result = qword_27E1FD8B0;
  if (!qword_27E1FD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8B0);
  }

  return result;
}

unint64_t sub_23C70C344()
{
  result = qword_27E1FD8C0;
  if (!qword_27E1FD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8C0);
  }

  return result;
}

unint64_t sub_23C70C398()
{
  result = qword_27E1FD8C8;
  if (!qword_27E1FD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8C8);
  }

  return result;
}

unint64_t sub_23C70C3EC()
{
  result = qword_27E1FD8D8;
  if (!qword_27E1FD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8D8);
  }

  return result;
}

unint64_t sub_23C70C440()
{
  result = qword_27E1FD8F0;
  if (!qword_27E1FD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8F0);
  }

  return result;
}