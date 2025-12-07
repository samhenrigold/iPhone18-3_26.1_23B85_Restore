uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    if (*(v3 + 16) != 1 || (sub_20E24F168(), result = sub_20E3224D0(), !v4))
    {
      result = *(v3 + 24);
      v8 = *(v3 + 32);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_20E322540(), !v4))
      {
        if (*(v3 + 48))
        {
          result = sub_20E322540();
        }

        if (!v4)
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
          return sub_20E3221A0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E2CE948@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E2CE9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB60, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CEA80(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C8C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_20E322470();
}

uint64_t sub_20E2CEAEC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C8C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_20E322480();
}

uint64_t sub_20E2CEB6C()
{
  if (qword_27C863760 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B3E8;
  v2 = qword_27C86B3F0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x616365727065442ELL, 0xEC0000006E6F6974);

  qword_27C86B680 = v1;
  *algn_27C86B688 = v2;
  return result;
}

uint64_t sub_20E2CEC40()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B690);
  __swift_project_value_buffer(v0, qword_27C86B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deprecationMessage";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "replacedByToolId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CEEAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v5))
  {
    if (v4[3])
    {
      result = sub_20E322540();
    }

    if (!v5)
    {
      a4(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2CF02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CF0CC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C8D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return sub_20E322470();
}

uint64_t sub_20E2CF138(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C8D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return sub_20E322480();
}

uint64_t sub_20E2CF200()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B6A8);
  __swift_project_value_buffer(v0, qword_27C86B6A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "bundleVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "teamId";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "device";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "origin";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAppDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_4:
          sub_20E3223E0();
        }
      }

      else
      {
        if (result <= 5)
        {
          goto LABEL_4;
        }

        if (result == 6)
        {
          sub_20E2CF658(a1, v5, a2, a3);
        }

        else if (result == 7)
        {
          sub_20E24F114();
          sub_20E322310();
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2CF658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAppDefinition(0);
  type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  sub_20E2FB9A4(&qword_27C86C918, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);
  return sub_20E322430();
}

uint64_t ToolKitProtoAppDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_20E322540(), !v4))
    {
      v13 = *(v3 + 40);
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_20E322540(), !v4))
      {
        v15 = *(v3 + 56);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v16 || (result = sub_20E322540(), !v4))
        {
          v17 = *(v3 + 72);
          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
          }

          if (!v18 || (result = sub_20E322540(), !v4))
          {
            result = sub_20E2CF8C0(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3 + 80))
              {
                sub_20E24F114();
                sub_20E3224D0();
              }

              type metadata accessor for ToolKitProtoAppDefinition(0);
              return sub_20E3221A0();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E2CF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D50, &qword_20E346388);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_20E0486F4(a1 + *(v12 + 40), v7, &qword_27C869D50, &qword_20E346388);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D50, &qword_20E346388);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_20E2FB9A4(&qword_27C86C918, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAppDefinition.Device);
}

uint64_t sub_20E2CFB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_20E2CFC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB50, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CFCAC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C8F0, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2CFD18(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C8F0, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2CFD98()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B6C0);
  __swift_project_value_buffer(v0, qword_27C86B6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Origin_THIRD_PARTY";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D0004()
{
  result = MEMORY[0x20F32BF40](0x6563697665442ELL, 0xE700000000000000);
  qword_27C86B6D8 = 0xD000000000000015;
  qword_27C86B6E0 = 0x800000020E3618D0;
  return result;
}

uint64_t sub_20E2D0098()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B6E8);
  __swift_project_value_buffer(v0, qword_27C86B6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D02C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_20E3222B0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E2D19D0(a1, v7, a2, a3, a4);
    }

    else if (result == 2)
    {
      sub_20E2D1C28(a1, v7, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_20E2D0490(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB48, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D0530(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C918, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  return sub_20E322470();
}

uint64_t sub_20E2D059C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C918, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  return sub_20E322480();
}

uint64_t sub_20E2D0638()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B700);
  __swift_project_value_buffer(v0, qword_27C86B700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 2;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "containerId";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "bundleVersion";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "containerType";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "teamId";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "device";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "origin";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoContainerDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result != 2 && result != 3)
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_20E3223D0();
          goto LABEL_5;
        }

        sub_20E3223E0();
      }

      else
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            goto LABEL_14;
          }

          v11 = v4;
          sub_20E24F06C();
          goto LABEL_20;
        }

        if (result == 7)
        {
          sub_20E2D0AC0(a1, v5, a2, a3);
          goto LABEL_5;
        }

        if (result == 8)
        {
          v11 = v4;
          sub_20E24F0C0();
LABEL_20:
          v4 = v11;
          sub_20E322310();
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2D0AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  sub_20E2FB9A4(&qword_27C86C968, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);
  return sub_20E322430();
}

uint64_t ToolKitProtoContainerDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = *(v3 + 16);
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_20E322540(), !v4))
    {
      if (*(v3 + 48))
      {
        result = sub_20E322540();
      }

      if (!v4)
      {
        if (*(v3 + 32))
        {
          sub_20E24F06C();
          sub_20E3224D0();
        }

        if (*(v3 + 64))
        {
          sub_20E322540();
        }

        sub_20E2D0D24(v3, a1, a2, a3);
        if (*(v3 + 33))
        {
          sub_20E24F0C0();
          sub_20E3224D0();
        }

        type metadata accessor for ToolKitProtoContainerDefinition(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2D0D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D58, &qword_20E346390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_20E0486F4(a1 + *(v12 + 40), v7, &qword_27C869D58, &qword_20E346390);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D58, &qword_20E346390);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_20E2FB9A4(&qword_27C86C968, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContainerDefinition.Device);
}

uint64_t sub_20E2D0F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v3 = *(a1 + 40);
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_20E2D1070(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB40, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D1110(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2D117C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2D11FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B718);
  __swift_project_value_buffer(v0, qword_27C86B718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Origin_THIRD_PARTY";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D1468()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B730);
  __swift_project_value_buffer(v0, qword_27C86B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Type_APP";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Type_DAEMON";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Type_EXTENSION";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Type_FRAMEWORK";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D1710()
{
  result = MEMORY[0x20F32BF40](0x6563697665442ELL, 0xE700000000000000);
  qword_27C86B748 = 0xD00000000000001BLL;
  qword_27C86B750 = 0x800000020E3618F0;
  return result;
}

uint64_t sub_20E2D17A4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B758);
  __swift_project_value_buffer(v0, qword_27C86B758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D19D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v23 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = sub_20E322110();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_20E322300();
  if (v5)
  {
    return sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  }

  v22 = a2;
  sub_20E0486F4(v12, v10, &qword_27C867FE0, &qword_20E33B098);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_20E04875C(v10, &qword_27C867FE0, &qword_20E33B098);
  if (v15 == 1)
  {
    return sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  }

  v16 = v22;
  if (v22[1] != 1)
  {
    sub_20E3222C0();
  }

  v17 = v23;
  sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  v19 = *v16;
  v20 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  return v17(v19, v20);
}

uint64_t sub_20E2D1C28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  result = sub_20E3223D0();
  if (v5)
  {
  }

  return result;
}

uint64_t sub_20E2D1D28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = *(v4 + 8);
  if (v8 != 1)
  {
    if (v8)
    {
      result = sub_20E322540();
      if (v5)
      {
        return result;
      }
    }

    else
    {
      result = sub_20E2D1DEC(v4, a1, a2, a3);
      if (v5)
      {
        return result;
      }
    }
  }

  a4(0);
  return sub_20E3221A0();
}

uint64_t sub_20E2D1DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    __break(1u);
  }

  else
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_20E2D2030(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB38, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D20D0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C968, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  return sub_20E322470();
}

uint64_t sub_20E2D213C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C968, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  return sub_20E322480();
}

uint64_t sub_20E2D222C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B770);
  __swift_project_value_buffer(v0, qword_27C86B770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numericFormat";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "synonyms";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDisplayRepresentation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_20E3223A0();
        break;
      case 2:
        sub_20E3223D0();
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v6 = v3[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_20E322540(), !v4))
  {
    if (v3[4])
    {
      result = sub_20E322540();
    }

    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        sub_20E322520();
      }

      type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2D2698(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB30, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D2738(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);

  return sub_20E322470();
}

uint64_t sub_20E2D27A4(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);

  return sub_20E322480();
}

uint64_t sub_20E2D2840()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B788);
  __swift_project_value_buffer(v0, qword_27C86B788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D2A80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v5, a2, a3);
    }

    else if (result == 2)
    {
      a5(v5 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E2D2B50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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
      result = sub_20E3224E0();
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

  if (!v14 || (result = sub_20E322540(), !v5))
  {
    a4(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2D2CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB28, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D2D80(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C990, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);

  return sub_20E322470();
}

uint64_t sub_20E2D2DEC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C990, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);

  return sub_20E322480();
}

uint64_t sub_20E2D2E68(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_20E15F7B0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2D2F50()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B7A0);
  __swift_project_value_buffer(v0, qword_27C86B7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t ToolKitProtoDisplayRepresentation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E2D34D8(a1, v5, a2, a3);
          break;
        case 5:
          sub_20E3223A0();
          break;
        case 6:
          sub_20E2D358C(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E3223E0();
          break;
        case 2:
          sub_20E2D3370(a1, v5, a2, a3);
          break;
        case 3:
          sub_20E2D3424(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E2D3370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  sub_20E2FB9A4(&qword_27C86C9D8, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);
  return sub_20E322430();
}

uint64_t sub_20E2D3424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  sub_20E2FB9A4(&qword_27C86CA08, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);
  return sub_20E322430();
}

uint64_t sub_20E2D34D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  sub_20E2FB9A4(&qword_27C86CA38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);
  return sub_20E322430();
}

uint64_t sub_20E2D358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoPluginModelData(0);
  sub_20E2FB9A4(&qword_27C86C990, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);
  return sub_20E322430();
}

uint64_t ToolKitProtoDisplayRepresentation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E2D375C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E2D3978(v3, a1, a2, a3);
      sub_20E2D3B94(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        sub_20E322520();
      }

      sub_20E2D3DB0(v3, a1, a2, a3);
      type metadata accessor for ToolKitProtoDisplayRepresentation(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2D375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D60, &qword_20E346398);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C869D60, &qword_20E346398);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D60, &qword_20E346398);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_20E2FB9A4(&qword_27C86C9D8, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
}

uint64_t sub_20E2D3978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D68, &qword_20E3463A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C869D68, &qword_20E3463A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D68, &qword_20E3463A0);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_20E2FB9A4(&qword_27C86CA08, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
}

uint64_t sub_20E2D3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D70, &qword_20E3463A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C869D70, &qword_20E3463A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D70, &qword_20E3463A8);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
  sub_20E2FB9A4(&qword_27C86CA38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
}

uint64_t sub_20E2D3DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D78, &qword_20E3463B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E0486F4(a1 + *(v12 + 36), v7, &qword_27C869D78, &qword_20E3463B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D78, &qword_20E3463B0);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoPluginModelData);
  sub_20E2FB9A4(&qword_27C86C990, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoPluginModelData);
}

uint64_t sub_20E2D4018@<X0>(int *a1@<X0>, char *a2@<X8>)
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
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2D41C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB20, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D4260(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);

  return sub_20E322470();
}

uint64_t sub_20E2D42CC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);

  return sub_20E322480();
}

uint64_t sub_20E2D4444(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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
  result = sub_20E3224E0();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  a4(0);
  return sub_20E3221A0();
}

uint64_t sub_20E2D45AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB18, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D464C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_20E322470();
}

uint64_t sub_20E2D46B8(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_20E322480();
}

uint64_t sub_20E2D4734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2D4830()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B7F0);
  __swift_project_value_buffer(v0, qword_27C86B7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D4A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEE0, &qword_20E3562B0);
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
  sub_20E0486F4(a1, v12, &qword_27C869D80, &qword_20E3463B8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D80, &qword_20E3463B8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CEE0, &qword_20E3562B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
    return sub_20E04875C(v32, &qword_27C86CEE0, &qword_20E3562B0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D80, &qword_20E3463B8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2D502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF08, &qword_20E3562D8);
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
  sub_20E0486F4(a1, v12, &qword_27C869D80, &qword_20E3463B8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D80, &qword_20E3463B8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86CF08, &qword_20E3562D8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C9F0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF08, &qword_20E3562D8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF08, &qword_20E3562D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF08, &qword_20E3562D8);
    return sub_20E04875C(v32, &qword_27C86CF08, &qword_20E3562D8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF08, &qword_20E3562D8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D80, &qword_20E3463B8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Subtitle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C869D80, &qword_20E3463B8);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2D59B0(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2D5778(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2D5778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D80, &qword_20E3463B8);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D80, &qword_20E3463B8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D59B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D80, &qword_20E3463B8);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D80, &qword_20E3463B8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    sub_20E2FB9A4(&qword_27C86C9F0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D5CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB10, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D5D44(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C9D8, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_20E322470();
}

uint64_t sub_20E2D5DB0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C9D8, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_20E322480();
}

uint64_t sub_20E2D5E30()
{
  if (qword_27C8638E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B7E0;
  v2 = *algn_27C86B7E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6369746174532ELL, 0xE700000000000000);

  qword_27C86B808 = v1;
  qword_27C86B810 = v2;
  return result;
}

uint64_t sub_20E2D6008(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB08, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D60A8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C9F0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_20E322470();
}

uint64_t sub_20E2D6114(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C9F0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_20E322480();
}

uint64_t sub_20E2D61DC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B840);
  __swift_project_value_buffer(v0, qword_27C86B840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEE0, &qword_20E3562B0);
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
  sub_20E0486F4(a1, v12, &qword_27C869D88, &qword_20E3463C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D88, &qword_20E3463C0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CEE0, &qword_20E3562B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
    return sub_20E04875C(v32, &qword_27C86CEE0, &qword_20E3562B0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D88, &qword_20E3463C0);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2D69D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEF8, &qword_20E3562C8);
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
  sub_20E0486F4(a1, v12, &qword_27C869D88, &qword_20E3463C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D88, &qword_20E3463C0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86CEF8, &qword_20E3562C8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86CA20, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CEF8, &qword_20E3562C8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CEF8, &qword_20E3562C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CEF8, &qword_20E3562C8);
    return sub_20E04875C(v32, &qword_27C86CEF8, &qword_20E3562C8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CEF8, &qword_20E3562C8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D88, &qword_20E3463C0);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.AltText.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C869D88, &qword_20E3463C0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2D735C(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2D7124(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2D7124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D88, &qword_20E3463C0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D88, &qword_20E3463C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D88, &qword_20E3463C0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D88, &qword_20E3463C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    sub_20E2FB9A4(&qword_27C86CA20, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D7650(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB00, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D76F0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86CA08, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_20E322470();
}

uint64_t sub_20E2D775C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86CA08, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_20E322480();
}

uint64_t sub_20E2D77DC()
{
  if (qword_27C863900 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B830;
  v2 = *algn_27C86B838;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6369746174532ELL, 0xE700000000000000);

  qword_27C86B858 = v1;
  qword_27C86B860 = v2;
  return result;
}

uint64_t sub_20E2D78FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
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

uint64_t sub_20E2D79AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = v5[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v6))
  {
    a5(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2D7AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAF8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D7B78(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86CA20, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_20E322470();
}

uint64_t sub_20E2D7BE4(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86CA20, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_20E322480();
}

uint64_t sub_20E2D7C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD00000000000001DLL;
  *a5 = 0x800000020E361960;
  return result;
}

uint64_t sub_20E2D7D14()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B890);
  __swift_project_value_buffer(v0, qword_27C86B890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D7F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEE0, &qword_20E3562B0);
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
  sub_20E0486F4(a1, v12, &qword_27C869D90, &qword_20E3463C8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D90, &qword_20E3463C8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CEE0, &qword_20E3562B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
    return sub_20E04875C(v32, &qword_27C86CEE0, &qword_20E3562B0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CEE0, &qword_20E3562B0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D90, &qword_20E3463C8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2D8510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEE8, &qword_20E3562B8);
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
  sub_20E0486F4(a1, v12, &qword_27C869D90, &qword_20E3463C8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D90, &qword_20E3463C8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86CEE8, &qword_20E3562B8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86CA50, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CEE8, &qword_20E3562B8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CEE8, &qword_20E3562B8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CEE8, &qword_20E3562B8);
    return sub_20E04875C(v32, &qword_27C86CEE8, &qword_20E3562B8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CEE8, &qword_20E3562B8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D90, &qword_20E3463C8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Image.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C869D90, &qword_20E3463C8);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2D8E94(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2D8C5C(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2D8C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D90, &qword_20E3463C8);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D90, &qword_20E3463C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D8E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D90, &qword_20E3463C8);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D90, &qword_20E3463C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    sub_20E2FB9A4(&qword_27C86CA50, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D9188(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAF0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D9228(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86CA38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);

  return sub_20E322470();
}

uint64_t sub_20E2D9294(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86CA38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);

  return sub_20E322480();
}

uint64_t sub_20E2D9314()
{
  if (qword_27C863920 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B880;
  v2 = *algn_27C86B888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6369746174532ELL, 0xE700000000000000);

  qword_27C86B8A8 = v1;
  qword_27C86B8B0 = v2;
  return result;
}

uint64_t sub_20E2D93E0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B8B8);
  __swift_project_value_buffer(v0, qword_27C86B8B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E269590(a1, v5, a2, a3, &qword_27C869D98, &unk_20E3463D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind, 2u);
          break;
        case 2:
          sub_20E2D9748(v5, a1, a2, a3);
          break;
        case 1:
          sub_20E26978C(a1, v5, a2, a3, &qword_27C869D98, &unk_20E3463D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind, 0);
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2D9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CED0, &qword_20E3562A0);
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
  sub_20E0486F4(a1, v12, &qword_27C869D98, &unk_20E3463D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D98, &unk_20E3463D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86CED0, &qword_20E3562A0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86CA68, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CED0, &qword_20E3562A0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CED0, &qword_20E3562A0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CED0, &qword_20E3562A0);
    return sub_20E04875C(v32, &qword_27C86CED0, &qword_20E3562A0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CED0, &qword_20E3562A0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D98, &unk_20E3463D0);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C869D98, &unk_20E3463D0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_20E2DA070(v3, a1, a2, a3);
        result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
        result = sub_20E2DA2A8(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else
    {
      sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      result = sub_20E2D9EF4(v3);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  return sub_20E3221A0();
}

uint64_t sub_20E2D9EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - v3);
  sub_20E0486F4(a1, &v9 - v3, &qword_27C869D98, &unk_20E3463D0);
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_20E04875C(v4, &qword_27C869D98, &unk_20E3463D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v4;
    v6 = v4[1];
    sub_20E3224E0();
    return sub_20E05E888(v7, v6);
  }

  result = sub_20E2FB878(v4, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2DA070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D98, &unk_20E3463D0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D98, &unk_20E3463D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    sub_20E2FB9A4(&qword_27C86CA68, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2DA2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C869D98, &unk_20E3463D0);
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D98, &unk_20E3463D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E322540();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2DA480@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E2DA54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAE8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DA5EC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86CA50, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_20E322470();
}

uint64_t sub_20E2DA658(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86CA50, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_20E322480();
}

uint64_t sub_20E2DA6D8()
{
  if (qword_27C863930 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B8A8;
  v2 = qword_27C86B8B0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6C6F626D79532ELL, 0xE700000000000000);

  qword_27C86B8D0 = v1;
  *algn_27C86B8D8 = v2;
  return result;
}

uint64_t sub_20E2DA7A4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B8E0);
  __swift_project_value_buffer(v0, qword_27C86B8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_20E322320();
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E0EC648(v3);
    if (!v4)
    {
      sub_20E2DAB54(v3);
      type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2DAB54(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 32);
    sub_20E05E834(v2, v1);
    sub_20E3224E0();
    return sub_20E047D10(v2, v1);
  }

  return result;
}

uint64_t sub_20E2DAC28@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 16) = xmmword_20E323EA0;
  *(a2 + 32) = xmmword_20E323EA0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E2DACC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAE0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DAD60(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86CA68, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_20E322470();
}

uint64_t sub_20E2DADCC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86CA68, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_20E322480();
}

uint64_t sub_20E2DAE68()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B8F8);
  __swift_project_value_buffer(v0, qword_27C86B8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "direction";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoCoercionDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E24F018();
        sub_20E322310();
      }

      else if (result == 2)
      {
        sub_20E2DB128(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2DB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoCoercionDefinition(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t ToolKitProtoCoercionDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (sub_20E24F018(), result = sub_20E3224D0(), !v4))
  {
    result = sub_20E2DB2AC(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for ToolKitProtoCoercionDefinition(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2DB2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863C48, &qword_20E323F30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E2DB514@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 20);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E2DB5E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAD8, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DB680(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86B9D8, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2DB6EC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86B9D8, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2DB76C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B910);
  __swift_project_value_buffer(v0, qword_27C86B910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoercionDirection_IMPORT";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoercionDirection_EXPORT";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2DBA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAD0, type metadata accessor for ToolKitProtoToolDefinitionClosure, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DBAF4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86CAA0, type metadata accessor for ToolKitProtoToolDefinitionClosure, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure);

  return sub_20E322470();
}

uint64_t sub_20E2DBB60(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86CAA0, type metadata accessor for ToolKitProtoToolDefinitionClosure, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure);

  return sub_20E322480();
}

uint64_t sub_20E2DBBDC()
{
  result = MEMORY[0x20F32BF40](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27C86B940 = 0xD00000000000001DLL;
  *algn_27C86B948 = 0x800000020E3619A0;
  return result;
}

uint64_t sub_20E2DBC74()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B950);
  __swift_project_value_buffer(v0, qword_27C86B950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolDefinition";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeDefinitions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2DBE74@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
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
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E2DC018(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
        sub_20E2FB9A4(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2DC018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E2FB9A4(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
  return sub_20E322430();
}

uint64_t ToolKitProtoToolDefinitionClosure.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E2DC1C8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      sub_20E2FB9A4(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);
      sub_20E322570();
    }

    type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2DC1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B90, &unk_20E345EF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B90, &unk_20E345EF0);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E2FB9A4(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_20E2DC448@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v4 = *(a1 + 20);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(&a3[v4], 1, 1, v5);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2DC52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAC8, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DC5CC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86CAB8, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_20E322470();
}

uint64_t sub_20E2DC638(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86CAB8, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_20E322480();
}

uint64_t _s23LighthouseDataProcessor41ToolKitProtoAssistantTypeSchemaDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFC8, &qword_20E356398);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869D20, &unk_20E346340);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869D20, &unk_20E346340);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869D20, &unk_20E346340);
LABEL_9:
      type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869D20, &unk_20E346340);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86CFC8, &qword_20E356398);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  v18 = _s23LighthouseDataProcessor45ToolKitProtoAssistantTypeSchemaDefinitionKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_20E04875C(v14, &qword_27C869D20, &unk_20E346340);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_20E2DC9FC(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v49 = a4;
  v51 = a2;
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = (&v42 - v9);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A28, &qword_20E33BE88);
  MEMORY[0x28223BE20](v44);
  v48 = &v42 - v10;
  v11 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE0, &qword_20E3563B0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v45 = a3(0);
  v22 = *(v45 + 20);
  v23 = *(v19 + 56);
  v50 = a1;
  sub_20E0486F4(a1 + v22, v21, &qword_27C869B00, &unk_20E346240);
  v24 = v51;
  sub_20E0486F4(v51 + v22, &v21[v23], &qword_27C869B00, &unk_20E346240);
  v25 = *(v12 + 48);
  if (v25(v21, 1, v11) == 1)
  {
    if (v25(&v21[v23], 1, v11) == 1)
    {
      sub_20E04875C(v21, &qword_27C869B00, &unk_20E346240);
      goto LABEL_9;
    }

LABEL_6:
    v26 = &qword_27C86CFE0;
    v27 = &qword_20E3563B0;
    v28 = v21;
LABEL_7:
    sub_20E04875C(v28, v26, v27);
    goto LABEL_18;
  }

  sub_20E0486F4(v21, v17, &qword_27C869B00, &unk_20E346240);
  if (v25(&v21[v23], 1, v11) == 1)
  {
    sub_20E2FB878(v17, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v21[v23], v14, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v29 = _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v17, v14);
  sub_20E2FB878(v14, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB878(v17, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E04875C(v21, &qword_27C869B00, &unk_20E346240);
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
  sub_20E0486F4(v30 + v31, v48, &qword_27C868A20, &qword_20E345F10);
  sub_20E0486F4(v24 + v31, v33 + v32, &qword_27C868A20, &qword_20E345F10);
  v34 = v47;
  v35 = *(v46 + 48);
  if (v35(v33, 1, v47) != 1)
  {
    v36 = v43;
    sub_20E0486F4(v33, v43, &qword_27C868A20, &qword_20E345F10);
    if (v35(v33 + v32, 1, v34) != 1)
    {
      v37 = v33 + v32;
      v38 = v42;
      sub_20E2FB8D8(v37, v42, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v39 = _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v36, v38);
      sub_20E2FB878(v38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E2FB878(v36, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E04875C(v33, &qword_27C868A20, &qword_20E345F10);
      if (v39)
      {
        goto LABEL_17;
      }

LABEL_18:
      v40 = 0;
      return v40 & 1;
    }

    sub_20E2FB878(v36, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_15;
  }

  if (v35(v33 + v32, 1, v34) != 1)
  {
LABEL_15:
    v26 = &qword_27C868A28;
    v27 = &qword_20E33BE88;
    v28 = v33;
    goto LABEL_7;
  }

  sub_20E04875C(v33, &qword_27C868A20, &qword_20E345F10);
LABEL_17:
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v40 = sub_20E322850();
  return v40 & 1;
}

uint64_t _s23LighthouseDataProcessor38ToolKitProtoSampleInvocationDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E1494E0(*a1, *a2) & 1) == 0)
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

  if (sub_20E1494E0(a1[1], a2[1]))
  {
    type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
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

  if (sub_20E1494E0(a1[2], a2[2]))
  {
    type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoAssistantSchemaVersionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV7AltTextV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEF0, &qword_20E3562C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869D88, &qword_20E3463C0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869D88, &qword_20E3463C0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869D88, &qword_20E3463C0);
LABEL_9:
      type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869D88, &qword_20E3463C0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86CEF0, &qword_20E3562C0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  v18 = static ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind.== infix(_:_:)();
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_20E04875C(v14, &qword_27C869D88, &qword_20E3463C0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CED8, &qword_20E3562A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869D90, &qword_20E3463C8);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869D90, &qword_20E3463C8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869D90, &qword_20E3463C8);
LABEL_9:
      type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869D90, &qword_20E3463C8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86CED8, &qword_20E3562A8);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  v18 = static ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind.== infix(_:_:)();
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_20E04875C(v14, &qword_27C869D90, &qword_20E3463C8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV6StaticV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1F0, &qword_20E3565B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869D98, &unk_20E3463D0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869D98, &unk_20E3463D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869D98, &unk_20E3463D0);
LABEL_9:
      type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869D98, &unk_20E3463D0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86D1F0, &qword_20E3565B0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  v18 = static ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind.== infix(_:_:)();
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_20E04875C(v14, &qword_27C869D98, &unk_20E3463D0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV6StaticV6SymbolV2eeoiySbAI_AItFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
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
      sub_20E047C8C(a1[2], a1[3]);
      sub_20E047C8C(v8, v7);
      sub_20E047D10(v6, v5);
      goto LABEL_11;
    }

LABEL_15:
    sub_20E047C8C(v6, v5);
    sub_20E047C8C(v8, v7);
    sub_20E047D10(v6, v5);
    sub_20E047D10(v8, v7);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_15;
  }

  sub_20E047C8C(a1[2], a1[3]);
  sub_20E047C8C(v8, v7);
  v9 = sub_20E15F7B0(v6, v5, v8, v7);
  sub_20E047D10(v8, v7);
  sub_20E047D10(v6, v5);
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

    sub_20E047C8C(a1[4], a1[5]);
    sub_20E047C8C(v8, v7);
    v11 = sub_20E15F7B0(v6, v5, v8, v7);
    sub_20E047D10(v8, v7);
    sub_20E047D10(v6, v5);
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

  sub_20E047C8C(a1[4], a1[5]);
  sub_20E047C8C(v8, v7);
  sub_20E047D10(v6, v5);
LABEL_18:
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D58, &qword_20E346390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF30, &qword_20E356300);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = *(a1 + 48);
  v15 = *(a2 + 48);
  if (v14)
  {
    if (!v15 || (*(a1 + 40) != *(a2 + 40) || v14 != v15) && (sub_20E322D60() & 1) == 0)
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

  if (!v17 || (*(a1 + 56) != *(a2 + 56) || v16 != v17) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  v27 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v18 = *(v27 + 40);
  v19 = *(v11 + 48);
  sub_20E0486F4(a1 + v18, v13, &qword_27C869D58, &qword_20E346390);
  v20 = a2 + v18;
  v21 = v19;
  sub_20E0486F4(v20, &v13[v19], &qword_27C869D58, &qword_20E346390);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C869D58, &qword_20E346390);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  sub_20E0486F4(v13, v10, &qword_27C869D58, &qword_20E346390);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoContainerDefinition.Device);
LABEL_26:
    sub_20E04875C(v13, &qword_27C86CF30, &qword_20E356300);
    goto LABEL_30;
  }

  sub_20E2FB8D8(&v13[v21], v7, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  v23 = sub_20E2EDF6C(v10, v7, sub_20E24FBD4, sub_20E24FBD8, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_20E04875C(v13, &qword_27C869D58, &qword_20E346390);
  if ((v23 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (*(a1 + 33) != *(a2 + 33))
  {
    goto LABEL_30;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v24 = sub_20E322850();
  return v24 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D060, &qword_20E356430);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869CE0, &qword_20E3462F8);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869CE0, &qword_20E3462F8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869CE0, &qword_20E3462F8);
LABEL_9:
      type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869CE0, &qword_20E3462F8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86D060, &qword_20E356430);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  v18 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0defG4KindO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  sub_20E04875C(v14, &qword_27C869CE0, &qword_20E3462F8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V4PairV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v33 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v13 = MEMORY[0x28223BE20](v12);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = *(v15 + 48);
  v36 = a1;
  sub_20E0486F4(a1, &v32 - v16, &qword_27C863B18, &qword_20E323EB0);
  v37 = a2;
  sub_20E0486F4(a2, &v17[v18], &qword_27C863B18, &qword_20E323EB0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_20E0486F4(v17, v11, &qword_27C863B18, &qword_20E323EB0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      v21 = &v17[v18];
      v22 = v34;
      sub_20E2FB8D8(v21, v34, type metadata accessor for ToolKitProtoTypedValue);
      v23 = sub_20E2EC518(v11, v22, sub_20E047CF8, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_20E047CA8, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB878(v22, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E04875C(v17, &qword_27C863B18, &qword_20E323EB0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    v20 = v17;
LABEL_14:
    sub_20E04875C(v20, &qword_27C867ED8, &qword_20E33AFA8);
    goto LABEL_15;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v17, &qword_27C863B18, &qword_20E323EB0);
LABEL_8:
  v24 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0) + 20);
  v25 = *(v12 + 48);
  v26 = v35;
  sub_20E0486F4(v36 + v24, v35, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(v37 + v24, v26 + v25, &qword_27C863B18, &qword_20E323EB0);
  if (v19(v26, 1, v4) == 1)
  {
    if (v19((v26 + v25), 1, v4) == 1)
    {
      sub_20E04875C(v26, &qword_27C863B18, &qword_20E323EB0);
LABEL_18:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = sub_20E322850();
      return v28 & 1;
    }

    goto LABEL_13;
  }

  v27 = v33;
  sub_20E0486F4(v26, v33, &qword_27C863B18, &qword_20E323EB0);
  if (v19((v26 + v25), 1, v4) == 1)
  {
    sub_20E2FB878(v27, type metadata accessor for ToolKitProtoTypedValue);
LABEL_13:
    v20 = v26;
    goto LABEL_14;
  }

  v30 = v34;
  sub_20E2FB8D8(v26 + v25, v34, type metadata accessor for ToolKitProtoTypedValue);
  v31 = sub_20E2EC518(v27, v30, sub_20E047CF8, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_20E047CA8, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB878(v30, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB878(v27, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v26, &qword_27C863B18, &qword_20E323EB0);
  if (v31)
  {
    goto LABEL_18;
  }

LABEL_15:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoSystemTypeProtocolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA8, &qword_20E33AF80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C867EA0, &qword_20E33AF78);
  sub_20E0486F4(a2, &v14[v15], &qword_27C867EA0, &qword_20E33AF78);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C867EA0, &qword_20E33AF78);
LABEL_9:
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C867EA0, &qword_20E33AF78);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867EA8, &qword_20E33AF80);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  v18 = _s23LighthouseDataProcessor34ToolKitProtoSystemTypeProtocolKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_20E04875C(v14, &qword_27C867EA0, &qword_20E33AF78);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoSystemTypeProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE0, &qword_20E3563B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869B00, &unk_20E346240);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869B00, &unk_20E346240);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869B00, &unk_20E346240);
LABEL_9:
      type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869B00, &unk_20E346240);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86CFE0, &qword_20E3563B0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v18 = _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E04875C(v14, &qword_27C869B00, &unk_20E346240);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB8, &qword_20E33AF88);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C867EB0, &qword_20E346320);
  sub_20E0486F4(a2, &v14[v15], &qword_27C867EB0, &qword_20E346320);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C867EB0, &qword_20E346320);
LABEL_9:
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C867EB0, &qword_20E346320);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867EB8, &qword_20E33AF88);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  v18 = _s23LighthouseDataProcessor34ToolKitProtoRuntimeRequirementKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_20E04875C(v14, &qword_27C867EB0, &qword_20E346320);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV22AvailabilityAnnotationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D08, &qword_20E346328);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D200, &qword_20E3565C0);
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
  sub_20E0486F4(&a1[v28], v25, &qword_27C869D08, &qword_20E346328);
  v30 = &a2[v28];
  v31 = a2;
  sub_20E0486F4(v30, &v25[v29], &qword_27C869D08, &qword_20E346328);
  v34 = *(v5 + 48);
  v33 = v5 + 48;
  v32 = v34;
  if (v34(v25, 1, v4) == 1)
  {
    if (v32(&v25[v29], 1, v4) == 1)
    {
      sub_20E04875C(v25, &qword_27C869D08, &qword_20E346328);
      goto LABEL_9;
    }

LABEL_7:
    v35 = v25;
LABEL_22:
    sub_20E04875C(v35, &qword_27C86D200, &qword_20E3565C0);
    goto LABEL_23;
  }

  sub_20E0486F4(v25, v16, &qword_27C869D08, &qword_20E346328);
  if (v32(&v25[v29], 1, v4) == 1)
  {
    sub_20E2FB878(v16, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
    goto LABEL_7;
  }

  v36 = &v25[v29];
  v37 = v60;
  sub_20E2FB8D8(v36, v60, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  v38 = _s23LighthouseDataProcessor34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v16, v37);
  sub_20E2FB878(v37, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB878(v16, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E04875C(v25, &qword_27C869D08, &qword_20E346328);
  if ((v38 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v39 = *(v62 + 24);
  v40 = *(v61 + 48);
  v41 = v59;
  sub_20E0486F4(&v59[v39], v21, &qword_27C869D08, &qword_20E346328);
  sub_20E0486F4(&v31[v39], &v21[v40], &qword_27C869D08, &qword_20E346328);
  if (v32(v21, 1, v4) != 1)
  {
    v42 = v58;
    sub_20E0486F4(v21, v58, &qword_27C869D08, &qword_20E346328);
    if (v32(&v21[v40], 1, v4) != 1)
    {
      v55 = v33;
      v43 = &v21[v40];
      v44 = v60;
      sub_20E2FB8D8(v43, v60, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      v45 = _s23LighthouseDataProcessor34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v42, v44);
      sub_20E2FB878(v44, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      sub_20E2FB878(v42, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      sub_20E04875C(v21, &qword_27C869D08, &qword_20E346328);
      if ((v45 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    sub_20E2FB878(v42, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
    goto LABEL_14;
  }

  if (v32(&v21[v40], 1, v4) != 1)
  {
LABEL_14:
    v35 = v21;
    goto LABEL_22;
  }

  v55 = v33;
  sub_20E04875C(v21, &qword_27C869D08, &qword_20E346328);
LABEL_16:
  v46 = *(v62 + 28);
  v47 = *(v61 + 48);
  v48 = v57;
  sub_20E0486F4(&v41[v46], v57, &qword_27C869D08, &qword_20E346328);
  sub_20E0486F4(&v31[v46], v48 + v47, &qword_27C869D08, &qword_20E346328);
  if (v32(v48, 1, v4) == 1)
  {
    if (v32((v48 + v47), 1, v4) == 1)
    {
      sub_20E04875C(v48, &qword_27C869D08, &qword_20E346328);
LABEL_26:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v50 = sub_20E322850();
      return v50 & 1;
    }

    goto LABEL_21;
  }

  v49 = v56;
  sub_20E0486F4(v48, v56, &qword_27C869D08, &qword_20E346328);
  if (v32((v48 + v47), 1, v4) == 1)
  {
    sub_20E2FB878(v49, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
LABEL_21:
    v35 = v48;
    goto LABEL_22;
  }

  v52 = v48 + v47;
  v53 = v60;
  sub_20E2FB8D8(v52, v60, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  v54 = _s23LighthouseDataProcessor34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v49, v53);
  sub_20E2FB878(v53, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB878(v49, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E04875C(v48, &qword_27C869D08, &qword_20E346328);
  if (v54)
  {
    goto LABEL_26;
  }

LABEL_23:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV16DeviceCapabilityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D10, &qword_20E346330);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1F8, &qword_20E3565B8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869D10, &qword_20E346330);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869D10, &qword_20E346330);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869D10, &qword_20E346330);
LABEL_9:
      type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869D10, &qword_20E346330);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86D1F8, &qword_20E3565B8);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  v18 = static ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind.== infix(_:_:)();
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_20E04875C(v14, &qword_27C869D10, &qword_20E346330);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV16DeviceCapabilityV13MobileGestaltV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV11FeatureFlagV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_20E322D60() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V9LinkQueryV2eeoiySbAI_AItFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_20E322D60() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D070, &qword_20E356440);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869CC8, &qword_20E3462E0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869CC8, &qword_20E3462E0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869CC8, &qword_20E3462E0);
LABEL_9:
      type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869CC8, &qword_20E3462E0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86D070, &qword_20E356440);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  v18 = _s23LighthouseDataProcessor42ToolKitProtoContentItemClassDescriptorKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_20E04875C(v14, &qword_27C869CC8, &qword_20E3462E0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V29ContentPropertyPossibleValuesV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D040, &qword_20E356410);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v23 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v24 = a1;
  v14 = *(v23 + 20);
  v15 = *(v11 + 56);
  sub_20E0486F4(a1 + v14, v13, &qword_27C869CC0, &qword_20E3462D8);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C869CC0, &qword_20E3462D8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v9, &qword_27C869CC0, &qword_20E3462D8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      sub_20E2FB8D8(&v13[v15], v22, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      v19 = _s23LighthouseDataProcessor38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v9, v18);
      sub_20E2FB878(v18, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      sub_20E2FB878(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      sub_20E04875C(v13, &qword_27C869CC0, &qword_20E3462D8);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_20E2FB878(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_6:
    sub_20E04875C(v13, &qword_27C86D040, &qword_20E356410);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v13, &qword_27C869CC0, &qword_20E3462D8);
LABEL_9:
  if (*v24 == *a2 && v24[1] == a2[1] || (sub_20E322D60() & 1) != 0)
  {
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_20E322850();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV13TextTypedWithV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoCoercionDefinitionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
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
  sub_20E0486F4(&v15[v17], v13, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(&v16[v17], &v13[v18], &qword_27C863C48, &qword_20E323F30);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
LABEL_11:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v13, v10, &qword_27C863C48, &qword_20E323F30);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_20E04875C(v13, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_8;
  }

  sub_20E2FB8D8(&v13[v18], v7, type metadata accessor for ToolKitProtoTypeInstance);
  v22 = sub_20E2EC518(v10, v7, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E58, &qword_20E33AF38);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C867E50, &qword_20E33AF30);
  sub_20E0486F4(a2, &v14[v15], &qword_27C867E50, &qword_20E33AF30);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C867E50, &qword_20E33AF30);
LABEL_9:
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C867E50, &qword_20E33AF30);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867E58, &qword_20E33AF38);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  v18 = static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_20E04875C(v14, &qword_27C867E50, &qword_20E33AF30);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C48, &qword_20E346250);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D210, &qword_20E3565D0);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C863B60, &qword_20E323F50);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C863B60, &qword_20E323F50);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C863B60, &qword_20E323F50);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E2FB8D8(&v19[v20], v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      v25 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v19, &qword_27C863B60, &qword_20E323F50);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v22 = &qword_27C867ED0;
    v23 = &qword_20E33AFA0;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C863B60, &qword_20E323F50);
LABEL_8:
  v26 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C869C48, &qword_20E346250);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C869C48, &qword_20E346250);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C869C48, &qword_20E346250);
LABEL_18:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C869C48, &qword_20E346250);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E2FB878(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
LABEL_13:
    v22 = &qword_27C86D210;
    v23 = &qword_20E3565D0;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E2FB8D8(v34, v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  V18PredicateTemplatesV2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(v31, v35);
  sub_20E2FB878(v35, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E2FB878(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E04875C(v28, &qword_27C869C48, &qword_20E346250);
  if (V18PredicateTemplatesV2eeoiySbAI_AItFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V8TemplateV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D058, &qword_20E356428);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869CE8, &qword_20E346300);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869CE8, &qword_20E346300);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
LABEL_9:
      type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869CE8, &qword_20E346300);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86D058, &qword_20E356428);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  v18 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V0defG12TemplateKindO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV8TemplateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v72 = a2;
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v57 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D040, &qword_20E356410);
  MEMORY[0x28223BE20](v61);
  v64 = &v57 - v7;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CF0, &qword_20E346308);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v57 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D048, &qword_20E356418);
  MEMORY[0x28223BE20](v66);
  v69 = &v57 - v12;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v57 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D050, &qword_20E356420);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v70 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  v71 = a1;
  v24 = *(v70 + 20);
  v25 = *(v21 + 56);
  sub_20E0486F4(a1 + v24, v23, &qword_27C869CD0, &qword_20E3462E8);
  v26 = v72 + v24;
  v27 = v72;
  sub_20E0486F4(v26, &v23[v25], &qword_27C869CD0, &qword_20E3462E8);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_20E04875C(v23, &qword_27C869CD0, &qword_20E3462E8);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_27C86D050;
    v30 = &qword_20E356420;
    v31 = v23;
LABEL_24:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_25;
  }

  sub_20E0486F4(v23, v19, &qword_27C869CD0, &qword_20E3462E8);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v23[v25], v16, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  v32 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(v19, v16);
  sub_20E2FB878(v16, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E04875C(v23, &qword_27C869CD0, &qword_20E3462E8);
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
  sub_20E0486F4(v71 + v35, v69, &qword_27C869CF0, &qword_20E346308);
  sub_20E0486F4(v27 + v35, v37 + v36, &qword_27C869CF0, &qword_20E346308);
  v38 = v68;
  v39 = *(v67 + 48);
  if (v39(v37, 1, v68) != 1)
  {
    v40 = v65;
    sub_20E0486F4(v37, v65, &qword_27C869CF0, &qword_20E346308);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v60;
      sub_20E2FB8D8(v41, v60, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      v43 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V8TemplateV2eeoiySbAG_AGtFZ_0(v40, v42);
      sub_20E2FB878(v42, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      sub_20E2FB878(v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      sub_20E04875C(v37, &qword_27C869CF0, &qword_20E346308);
      if ((v43 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    sub_20E2FB878(v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
    goto LABEL_13;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_13:
    v29 = &qword_27C86D048;
    v30 = &qword_20E356418;
    v31 = v37;
    goto LABEL_24;
  }

  sub_20E04875C(v37, &qword_27C869CF0, &qword_20E346308);
LABEL_15:
  if ((*v33 != *v27 || v33[1] != v27[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_25;
  }

  v44 = *(v34 + 28);
  v45 = *(v61 + 48);
  v46 = v64;
  sub_20E0486F4(v33 + v44, v64, &qword_27C869CC0, &qword_20E3462D8);
  v47 = v27 + v44;
  v48 = v46;
  sub_20E0486F4(v47, v46 + v45, &qword_27C869CC0, &qword_20E3462D8);
  v49 = v63;
  v50 = *(v62 + 48);
  if (v50(v46, 1, v63) == 1)
  {
    if (v50(v46 + v45, 1, v49) == 1)
    {
      sub_20E04875C(v46, &qword_27C869CC0, &qword_20E3462D8);
LABEL_28:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = sub_20E322850();
      return v52 & 1;
    }

    goto LABEL_23;
  }

  v51 = v59;
  sub_20E0486F4(v48, v59, &qword_27C869CC0, &qword_20E3462D8);
  if (v50(v48 + v45, 1, v49) == 1)
  {
    sub_20E2FB878(v51, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_23:
    v29 = &qword_27C86D040;
    v30 = &qword_20E356410;
    v31 = v48;
    goto LABEL_24;
  }

  v54 = v48 + v45;
  v55 = v58;
  sub_20E2FB8D8(v54, v58, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  v56 = _s23LighthouseDataProcessor38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v51, v55);
  sub_20E2FB878(v55, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E2FB878(v51, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E04875C(v48, &qword_27C869CC0, &qword_20E3462D8);
  if (v56)
  {
    goto LABEL_28;
  }

LABEL_25:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v139 = *(valid - 8);
  MEMORY[0x28223BE20](valid);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C78, &qword_20E346280);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v108 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D168, &qword_20E356530);
  MEMORY[0x28223BE20](v114);
  v116 = &v108 - v8;
  v120 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v113 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C70, &qword_20E346278);
  MEMORY[0x28223BE20](v10 - 8);
  v117 = &v108 - v11;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D170, &qword_20E356538);
  MEMORY[0x28223BE20](v118);
  v121 = &v108 - v12;
  v126 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v138 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C68, &qword_20E346270);
  MEMORY[0x28223BE20](v14 - 8);
  v123 = &v108 - v15;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D178, &qword_20E356540);
  MEMORY[0x28223BE20](v125);
  v127 = &v108 - v16;
  v17 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v131 = *(v17 - 8);
  v132 = v17;
  MEMORY[0x28223BE20](v17);
  v124 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C60, &qword_20E346268);
  MEMORY[0x28223BE20](v19 - 8);
  v128 = &v108 - v20;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D180, &qword_20E356548);
  MEMORY[0x28223BE20](v130);
  v133 = &v108 - v21;
  v22 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v135 = *(v22 - 8);
  v136 = v22;
  MEMORY[0x28223BE20](v22);
  v129 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C58, &qword_20E346260);
  MEMORY[0x28223BE20](v24 - 8);
  v134 = &v108 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D188, &qword_20E356550);
  MEMORY[0x28223BE20](v26);
  v137 = &v108 - v27;
  v28 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C50, &qword_20E346258);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v108 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D190, &qword_20E356558);
  MEMORY[0x28223BE20](v35);
  v37 = &v108 - v36;
  if ((sub_20E155988(*a1, *a2) & 1) == 0)
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
  sub_20E0486F4(a1 + v39, v37, &qword_27C869C50, &qword_20E346258);
  sub_20E0486F4(v140 + v39, &v37[v40], &qword_27C869C50, &qword_20E346258);
  v41 = *(v29 + 48);
  if (v41(v37, 1, v28) == 1)
  {
    if (v41(&v37[v40], 1, v28) == 1)
    {
      sub_20E04875C(v37, &qword_27C869C50, &qword_20E346258);
      goto LABEL_9;
    }

LABEL_7:
    v42 = &qword_27C86D190;
    v43 = &qword_20E356558;
    v44 = v37;
LABEL_31:
    sub_20E04875C(v44, v42, v43);
    goto LABEL_32;
  }

  sub_20E0486F4(v37, v34, &qword_27C869C50, &qword_20E346258);
  if (v41(&v37[v40], 1, v28) == 1)
  {
    sub_20E2FB878(v34, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v37[v40], v31, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = sub_20E322850();
  sub_20E2FB878(v31, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E2FB878(v34, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E04875C(v37, &qword_27C869C50, &qword_20E346258);
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
  sub_20E0486F4(v111 + v47, v137, &qword_27C869C58, &qword_20E346260);
  sub_20E0486F4(v140 + v47, v50 + v48, &qword_27C869C58, &qword_20E346260);
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
      sub_20E04875C(v50, &qword_27C869C58, &qword_20E346260);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v57 = v134;
  sub_20E0486F4(v50, v134, &qword_27C869C58, &qword_20E346260);
  v58 = v52(v50 + v48, 1, v51);
  v54 = v110;
  v55 = v138;
  v56 = v139;
  if (v58 == 1)
  {
    sub_20E2FB878(v57, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
LABEL_14:
    v42 = &qword_27C86D188;
    v43 = &qword_20E356550;
    v44 = v50;
    goto LABEL_31;
  }

  v59 = v50 + v48;
  v60 = v129;
  sub_20E2FB8D8(v59, v129, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v61 = sub_20E322850();
  sub_20E2FB878(v60, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E2FB878(v57, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E04875C(v50, &qword_27C869C58, &qword_20E346260);
  if ((v61 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v62 = v46[8];
  v63 = *(v130 + 48);
  v64 = v133;
  sub_20E0486F4(v49 + v62, v133, &qword_27C869C60, &qword_20E346268);
  v65 = v140 + v62;
  v66 = v64;
  sub_20E0486F4(v65, v64 + v63, &qword_27C869C60, &qword_20E346268);
  v67 = v132;
  v68 = *(v131 + 48);
  if (v68(v64, 1, v132) == 1)
  {
    if (v68(v64 + v63, 1, v67) == 1)
    {
      sub_20E04875C(v64, &qword_27C869C60, &qword_20E346268);
      goto LABEL_24;
    }

LABEL_21:
    v42 = &qword_27C86D180;
    v43 = &qword_20E356548;
LABEL_22:
    v44 = v66;
    goto LABEL_31;
  }

  v69 = v54;
  v70 = v128;
  sub_20E0486F4(v64, v128, &qword_27C869C60, &qword_20E346268);
  if (v68(v64 + v63, 1, v67) == 1)
  {
    sub_20E2FB878(v70, type metadata accessor for ToolKitProtoAllPredicate);
    goto LABEL_21;
  }

  v71 = v64 + v63;
  v72 = v124;
  sub_20E2FB8D8(v71, v124, type metadata accessor for ToolKitProtoAllPredicate);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v73 = sub_20E322850();
  sub_20E2FB878(v72, type metadata accessor for ToolKitProtoAllPredicate);
  sub_20E2FB878(v70, type metadata accessor for ToolKitProtoAllPredicate);
  sub_20E04875C(v64, &qword_27C869C60, &qword_20E346268);
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
  sub_20E0486F4(v49 + v74, v127, &qword_27C869C68, &qword_20E346270);
  v77 = v140 + v74;
  v78 = v140;
  v79 = v76;
  sub_20E0486F4(v77, v76 + v75, &qword_27C869C68, &qword_20E346270);
  v80 = *(v55 + 48);
  v81 = v76;
  v82 = v126;
  if (v80(v81, 1, v126) == 1)
  {
    if (v80(v79 + v75, 1, v82) == 1)
    {
      sub_20E04875C(v79, &qword_27C869C68, &qword_20E346270);
      goto LABEL_35;
    }

LABEL_29:
    v42 = &qword_27C86D178;
    v43 = &qword_20E356540;
LABEL_30:
    v44 = v79;
    goto LABEL_31;
  }

  v83 = v82;
  v84 = v123;
  sub_20E0486F4(v79, v123, &qword_27C869C68, &qword_20E346270);
  if (v80(v79 + v75, 1, v83) == 1)
  {
    sub_20E2FB878(v84, type metadata accessor for ToolKitProtoSuggestedPredicate);
    goto LABEL_29;
  }

  v87 = v79 + v75;
  v88 = v122;
  sub_20E2FB8D8(v87, v122, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v89 = sub_20E322850();
  sub_20E2FB878(v88, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_20E2FB878(v84, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_20E04875C(v79, &qword_27C869C68, &qword_20E346270);
  v78 = v140;
  if ((v89 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  if ((sub_20E1559DC(v49[1], v78[1]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v90 = v46[10];
  v91 = *(v118 + 48);
  v92 = v121;
  sub_20E0486F4(v49 + v90, v121, &qword_27C869C70, &qword_20E346278);
  v93 = v140 + v90;
  v66 = v92;
  sub_20E0486F4(v93, v92 + v91, &qword_27C869C70, &qword_20E346278);
  v94 = *(v119 + 48);
  v95 = v120;
  if (v94(v92, 1, v120) != 1)
  {
    v96 = v117;
    sub_20E0486F4(v66, v117, &qword_27C869C70, &qword_20E346278);
    if (v94(v66 + v91, 1, v95) != 1)
    {
      v97 = v66 + v91;
      v98 = v113;
      sub_20E2FB8D8(v97, v113, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v99 = sub_20E322850();
      sub_20E2FB878(v98, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_20E2FB878(v96, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_20E04875C(v66, &qword_27C869C70, &qword_20E346278);
      if ((v99 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    sub_20E2FB878(v96, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
    goto LABEL_41;
  }

  if (v94(v92 + v91, 1, v95) != 1)
  {
LABEL_41:
    v42 = &qword_27C86D170;
    v43 = &qword_20E356538;
    goto LABEL_22;
  }

  sub_20E04875C(v92, &qword_27C869C70, &qword_20E346278);
LABEL_43:
  v100 = v46[11];
  v101 = *(v114 + 48);
  v102 = v116;
  sub_20E0486F4(v49 + v100, v116, &qword_27C869C78, &qword_20E346280);
  v79 = v102;
  sub_20E0486F4(v140 + v100, v102 + v101, &qword_27C869C78, &qword_20E346280);
  v103 = *(v56 + 48);
  v104 = valid;
  if (v103(v102, 1, valid) == 1)
  {
    if (v103(v102 + v101, 1, v104) == 1)
    {
      sub_20E04875C(v102, &qword_27C869C78, &qword_20E346280);
LABEL_50:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v85 = sub_20E322850();
      return v85 & 1;
    }

    goto LABEL_48;
  }

  v105 = v102;
  v106 = v112;
  sub_20E0486F4(v105, v112, &qword_27C869C78, &qword_20E346280);
  if (v103(v79 + v101, 1, v104) == 1)
  {
    sub_20E2FB878(v106, type metadata accessor for ToolKitProtoValidPredicate);
LABEL_48:
    v42 = &qword_27C86D168;
    v43 = &qword_20E356530;
    goto LABEL_30;
  }

  sub_20E2FB8D8(v79 + v101, v54, type metadata accessor for ToolKitProtoValidPredicate);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v107 = sub_20E322850();
  sub_20E2FB878(v54, type metadata accessor for ToolKitProtoValidPredicate);
  sub_20E2FB878(v106, type metadata accessor for ToolKitProtoValidPredicate);
  sub_20E04875C(v79, &qword_27C869C78, &qword_20E346280);
  if (v107)
  {
    goto LABEL_50;
  }

LABEL_32:
  v85 = 0;
  return v85 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V11EnumerationV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A28, &qword_20E33BE88);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v19 = *(v43 + 32);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_20E0486F4(a1 + v19, v18, &qword_27C863B60, &qword_20E323F50);
  v21 = v48;
  sub_20E0486F4(v48 + v19, &v18[v20], &qword_27C863B60, &qword_20E323F50);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &qword_27C867ED0;
    v24 = &qword_20E33AFA0;
    v25 = v18;
LABEL_7:
    sub_20E04875C(v25, v23, v24);
    goto LABEL_21;
  }

  sub_20E0486F4(v18, v14, &qword_27C863B60, &qword_20E323F50);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  v26 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
  if ((v26 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v27 = v47;
  if ((sub_20E14BF4C(*v47, *v21) & 1) == 0 || (sub_20E155D3C(v27[1], *(v21 + 8)) & 1) == 0)
  {
    goto LABEL_21;
  }

  v28 = *(v43 + 36);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_20E0486F4(v27 + v28, v46, &qword_27C868A20, &qword_20E345F10);
  sub_20E0486F4(v21 + v28, v30 + v29, &qword_27C868A20, &qword_20E345F10);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    sub_20E0486F4(v30, v41, &qword_27C868A20, &qword_20E345F10);
    if (v32(v30 + v29, 1, v31) != 1)
    {
      v34 = v30 + v29;
      v35 = v40;
      sub_20E2FB8D8(v34, v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v36 = _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v35);
      sub_20E2FB878(v35, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E2FB878(v33, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E04875C(v30, &qword_27C868A20, &qword_20E345F10);
      if (v36)
      {
        goto LABEL_18;
      }

LABEL_21:
      v37 = 0;
      return v37 & 1;
    }

    sub_20E2FB878(v33, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_16;
  }

  if (v32(v30 + v29, 1, v31) != 1)
  {
LABEL_16:
    v23 = &qword_27C868A28;
    v24 = &qword_20E33BE88;
    v25 = v30;
    goto LABEL_7;
  }

  sub_20E04875C(v30, &qword_27C868A20, &qword_20E345F10);
LABEL_18:
  if (*(v27 + 16) != *(v21 + 16) || (sub_20E1562C0(v27[3], *(v21 + 24)) & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v37 = sub_20E322850();
  return v37 & 1;
}

uint64_t _s23LighthouseDataProcessor24ToolKitProtoTypeInstanceV8OptionalV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v37 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C863C48, &qword_20E323F30);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C863C48, &qword_20E323F30);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C863C48, &qword_20E323F30);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E2FB8D8(&v19[v20], v12, type metadata accessor for ToolKitProtoTypeInstance);
      v25 = sub_20E2EC518(v15, v12, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E04875C(v19, &qword_27C863C48, &qword_20E323F30);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_6:
    v22 = &qword_27C867E98;
    v23 = &qword_20E33AF70;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C863C48, &qword_20E323F30);
LABEL_8:
  v26 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C863B18, &qword_20E323EB0);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
LABEL_18:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C863B18, &qword_20E323EB0);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E2FB878(v31, type metadata accessor for ToolKitProtoTypedValue);
LABEL_13:
    v22 = &qword_27C867ED8;
    v23 = &qword_20E33AFA8;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E2FB8D8(v34, v37, type metadata accessor for ToolKitProtoTypedValue);
  v36 = sub_20E2EC518(v31, v35, sub_20E047CF8, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_20E047CA8, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB878(v35, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB878(v31, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor24ToolKitProtoTypeInstanceV8DeferredV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863C48, &qword_20E323F30);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863C48, &qword_20E323F30);
LABEL_9:
      type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863C48, &qword_20E323F30);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoTypeInstance);
  v18 = sub_20E2EC518(v10, v7, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v14, &qword_27C863C48, &qword_20E323F30);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D088, &qword_20E356458);
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
    if (!v19 && (sub_20E322D60() & 1) == 0)
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
  sub_20E0486F4(v20, v13, &qword_27C869CB8, &qword_20E3462D0);
  v26[1] = a2;
  sub_20E0486F4(a2, &v13[v21], &qword_27C869CB8, &qword_20E3462D0);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C869CB8, &qword_20E3462D0);
LABEL_19:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v23 = sub_20E322850();
      return v23 & 1;
    }

    goto LABEL_15;
  }

  sub_20E0486F4(v13, v10, &qword_27C869CB8, &qword_20E3462D0);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
LABEL_15:
    sub_20E04875C(v13, &qword_27C86D088, &qword_20E356458);
    goto LABEL_16;
  }

  sub_20E2FB8D8(&v13[v21], v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  v25 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV0def5ValueJ4KindO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_20E04875C(v13, &qword_27C869CB8, &qword_20E3462D0);
  if (v25)
  {
    goto LABEL_19;
  }

LABEL_16:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C48, &qword_20E346250);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D210, &qword_20E3565D0);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB0, &qword_20E3462C8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D218, &qword_20E3565D8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C869CB0, &qword_20E3462C8);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C869CB0, &qword_20E3462C8);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C869CB0, &qword_20E3462C8);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E2FB8D8(&v19[v20], v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      v25 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V2eeoiySbAG_AGtFZ_0(v15, v12);
      sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      sub_20E2FB878(v15, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      sub_20E04875C(v19, &qword_27C869CB0, &qword_20E3462C8);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v15, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
LABEL_6:
    v22 = &qword_27C86D218;
    v23 = &qword_20E3565D8;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C869CB0, &qword_20E3462C8);
LABEL_8:
  v26 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C869C48, &qword_20E346250);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C869C48, &qword_20E346250);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C869C48, &qword_20E346250);
LABEL_18:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C869C48, &qword_20E346250);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E2FB878(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
LABEL_13:
    v22 = &qword_27C86D210;
    v23 = &qword_20E3565D0;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E2FB8D8(v34, v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  V18PredicateTemplatesV2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(v31, v35);
  sub_20E2FB878(v35, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E2FB878(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E04875C(v28, &qword_27C869C48, &qword_20E346250);
  if (V18PredicateTemplatesV2eeoiySbAI_AItFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV2IDV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (!sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v21 = v7;
  v22 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C863C48, &qword_20E323F30);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
LABEL_11:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v13, v10, &qword_27C863C48, &qword_20E323F30);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_20E04875C(v13, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_8;
  }

  v19 = v21;
  sub_20E2FB8D8(&v13[v15], v21, type metadata accessor for ToolKitProtoTypeInstance);
  v20 = sub_20E2EC518(v10, v19, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_20E2E5848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  if (!sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v23 = v9;
  v24 = a3(0);
  v16 = *(v24 + 20);
  v17 = *(v13 + 48);
  sub_20E0486F4(a1 + v16, v15, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(a2 + v16, &v15[v17], &qword_27C863EB8, &qword_20E325D08);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) == 1)
  {
    if (v18(&v15[v17], 1, v6) == 1)
    {
      sub_20E04875C(v15, &qword_27C863EB8, &qword_20E325D08);
LABEL_11:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_20E322850();
      return v19 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v15, v12, &qword_27C863EB8, &qword_20E325D08);
  if (v18(&v15[v17], 1, v6) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_7:
    sub_20E04875C(v15, &qword_27C867E90, &qword_20E33AF68);
    goto LABEL_8;
  }

  v21 = v23;
  sub_20E2FB8D8(&v15[v17], v23, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v22 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v12, v21);
  sub_20E2FB878(v21, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v15, &qword_27C863EB8, &qword_20E325D08);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_20E2E5BE4(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = v9;
  v24 = a3(0);
  v16 = *(v24 + 20);
  v17 = *(v13 + 48);
  sub_20E0486F4(a1 + v16, v15, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(a2 + v16, &v15[v17], &qword_27C863EB8, &qword_20E325D08);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) == 1)
  {
    if (v18(&v15[v17], 1, v6) == 1)
    {
      sub_20E04875C(v15, &qword_27C863EB8, &qword_20E325D08);
LABEL_11:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_20E322850();
      return v19 & 1;
    }

    goto LABEL_8;
  }

  sub_20E0486F4(v15, v12, &qword_27C863EB8, &qword_20E325D08);
  if (v18(&v15[v17], 1, v6) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_8:
    sub_20E04875C(v15, &qword_27C867E90, &qword_20E33AF68);
    goto LABEL_9;
  }

  v20 = v23;
  sub_20E2FB8D8(&v15[v17], v23, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v21 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v12, v20);
  sub_20E2FB878(v20, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v15, &qword_27C863EB8, &qword_20E325D08);
  if (v21)
  {
    goto LABEL_11;
  }

LABEL_9:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14DateComponentsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C98, &unk_20E3462A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v98 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D238, &qword_20E3565F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v98 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v98 - v13, &qword_27C869C98, &unk_20E3462A0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869C98, &unk_20E3462A0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_20E0486F4(v14, v10, &qword_27C869C98, &unk_20E3462A0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      v19 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14DateComponentsV8CalendarV2eeoiySbAI_AItFZ_0(v10, v7);
      sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      sub_20E04875C(v14, &qword_27C869C98, &unk_20E3462A0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86D238, &qword_20E3565F8);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v14, &qword_27C869C98, &unk_20E3462A0);
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
      v27 = sub_20E322D60();
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
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
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

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14DateComponentsV8CalendarV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_20E322D60();
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
      v11 = sub_20E322D60();
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
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14CurrencyAmountV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C90, &qword_20E346298);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D240, &qword_20E356600);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v19 = *(v43 + 20);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_20E0486F4(a1 + v19, v18, &qword_27C869C90, &qword_20E346298);
  v21 = v48;
  sub_20E0486F4(v48 + v19, &v18[v20], &qword_27C869C90, &qword_20E346298);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) != 1)
  {
    sub_20E0486F4(v18, v14, &qword_27C869C90, &qword_20E346298);
    if (v22(&v18[v20], 1, v8) != 1)
    {
      sub_20E2FB8D8(&v18[v20], v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      v26 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V7DecimalV2eeoiySbAG_AGtFZ_0(v14, v11);
      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_20E04875C(v18, &qword_27C869C90, &qword_20E346298);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
LABEL_6:
    v23 = &qword_27C86D240;
    v24 = &qword_20E356600;
    v25 = v18;
LABEL_17:
    sub_20E04875C(v25, v23, v24);
    goto LABEL_18;
  }

  if (v22(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v18, &qword_27C869C90, &qword_20E346298);
LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != v21[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(v43 + 24);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_20E0486F4(v27 + v28, v46, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(v21 + v28, v30 + v29, &qword_27C863EB8, &qword_20E325D08);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      sub_20E04875C(v30, &qword_27C863EB8, &qword_20E325D08);
LABEL_21:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_20E322850();
      return v34 & 1;
    }

    goto LABEL_16;
  }

  v33 = v41;
  sub_20E0486F4(v30, v41, &qword_27C863EB8, &qword_20E325D08);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    sub_20E2FB878(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v23 = &qword_27C867E90;
    v24 = &qword_20E33AF68;
    v25 = v30;
    goto LABEL_17;
  }

  v36 = v30 + v29;
  v37 = v40;
  sub_20E2FB8D8(v36, v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v38 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v37);
  sub_20E2FB878(v37, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v30, &qword_27C863EB8, &qword_20E325D08);
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V13PaymentMethodV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
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
    if ((*(a1 + 1) != *(a2 + 1) || v15 != v16) && (sub_20E322D60() & 1) == 0)
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
  sub_20E0486F4(&a1[v18], v14, &qword_27C863EB8, &qword_20E325D08);
  v26 = v19;
  sub_20E0486F4(&a2[v18], &v14[v19], &qword_27C863EB8, &qword_20E325D08);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v26], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863EB8, &qword_20E325D08);
LABEL_18:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_20E322850();
      return v22 & 1;
    }

    goto LABEL_14;
  }

  sub_20E0486F4(v14, v10, &qword_27C863EB8, &qword_20E325D08);
  v21 = v26;
  if (v20(&v14[v26], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_14:
    sub_20E04875C(v14, &qword_27C867E90, &qword_20E33AF68);
    goto LABEL_15;
  }

  sub_20E2FB8D8(&v14[v21], v7, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v24 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v14, &qword_27C863EB8, &qword_20E325D08);
  if (v24)
  {
    goto LABEL_18;
  }

LABEL_15:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V11MeasurementV2eeoiySbAG_AGtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || a1[2] != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA0, &qword_20E3462B0);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v55 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D220, &qword_20E3565E0);
  MEMORY[0x28223BE20](v58);
  v61 = &v55 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = (&v55 - v12);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v63);
  v66 = &v55 - v13;
  v14 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v55 - v23;
  v25 = *(v22 + 56);
  v67 = a1;
  sub_20E0486F4(a1, &v55 - v23, &qword_27C863B60, &qword_20E323F50);
  v68 = a2;
  sub_20E0486F4(a2, &v24[v25], &qword_27C863B60, &qword_20E323F50);
  v26 = *(v15 + 48);
  if (v26(v24, 1, v14) == 1)
  {
    if (v26(&v24[v25], 1, v14) == 1)
    {
      sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_27C867ED0;
    v28 = &qword_20E33AFA0;
    v29 = v24;
LABEL_21:
    sub_20E04875C(v29, v27, v28);
    goto LABEL_22;
  }

  sub_20E0486F4(v24, v20, &qword_27C863B60, &qword_20E323F50);
  if (v26(&v24[v25], 1, v14) == 1)
  {
    sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v24[v25], v17, type metadata accessor for ToolKitProtoTypeIdentifier);
  v30 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v20, v17);
  sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
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
  sub_20E0486F4(v67 + v32, v66, &qword_27C863C48, &qword_20E323F30);
  v36 = v68;
  sub_20E0486F4(v68 + v32, v35 + v33, &qword_27C863C48, &qword_20E323F30);
  v37 = v65;
  v38 = *(v64 + 48);
  if (v38(v35, 1, v65) != 1)
  {
    v39 = v62;
    sub_20E0486F4(v35, v62, &qword_27C863C48, &qword_20E323F30);
    if (v38(v35 + v33, 1, v37) != 1)
    {
      v40 = v57;
      sub_20E2FB8D8(v35 + v33, v57, type metadata accessor for ToolKitProtoTypeInstance);
      v41 = sub_20E2EC518(v39, v40, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB878(v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB878(v39, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E04875C(v35, &qword_27C863C48, &qword_20E323F30);
      if ((v41 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_20E2FB878(v39, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_13;
  }

  if (v38(v35 + v33, 1, v37) != 1)
  {
LABEL_13:
    v27 = &qword_27C867E98;
    v28 = &qword_20E33AF70;
    v29 = v35;
    goto LABEL_21;
  }

  sub_20E04875C(v35, &qword_27C863C48, &qword_20E323F30);
LABEL_15:
  v42 = *(v31 + 24);
  v43 = *(v58 + 48);
  v44 = v61;
  sub_20E0486F4(v34 + v42, v61, &qword_27C869CA0, &qword_20E3462B0);
  v45 = v36 + v42;
  v46 = v44;
  sub_20E0486F4(v45, v44 + v43, &qword_27C869CA0, &qword_20E3462B0);
  v47 = v60;
  v48 = *(v59 + 48);
  if (v48(v44, 1, v60) == 1)
  {
    if (v48(v44 + v43, 1, v47) == 1)
    {
      sub_20E04875C(v44, &qword_27C869CA0, &qword_20E3462B0);
LABEL_25:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v50 = sub_20E322850();
      return v50 & 1;
    }

    goto LABEL_20;
  }

  v49 = v56;
  sub_20E0486F4(v46, v56, &qword_27C869CA0, &qword_20E3462B0);
  if (v48(v46 + v43, 1, v47) == 1)
  {
    sub_20E2FB878(v49, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
LABEL_20:
    v27 = &qword_27C86D220;
    v28 = &qword_20E3565E0;
    v29 = v46;
    goto LABEL_21;
  }

  v52 = v46 + v43;
  v53 = v55;
  sub_20E2FB8D8(v52, v55, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  v54 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V7StorageV2eeoiySbAG_AGtFZ_0(v49, v53);
  sub_20E2FB878(v53, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_20E2FB878(v49, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_20E04875C(v46, &qword_27C869CA0, &qword_20E3462B0);
  if (v54)
  {
    goto LABEL_25;
  }

LABEL_22:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V7StorageV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA8, &unk_20E3462B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0E0, &qword_20E3564B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869CA8, &unk_20E3462B8);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869CA8, &unk_20E3462B8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869CA8, &unk_20E3462B8);
LABEL_9:
      type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869CA8, &unk_20E3462B8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86D0E0, &qword_20E3564B0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  v18 = static ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind.== infix(_:_:)();
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_20E04875C(v14, &qword_27C869CA8, &unk_20E3462B8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_20E2E7E94(_BOOL8 *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if (!sub_20E15F7B0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV06EntityH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = (&v47 - v6);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v53 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v19 = *(v53 + 24);
  v20 = *(v16 + 56);
  v55 = a1;
  sub_20E0486F4(a1 + v19, v18, &qword_27C863B60, &qword_20E323F50);
  sub_20E0486F4(v56 + v19, &v18[v20], &qword_27C863B60, &qword_20E323F50);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) == 1)
  {
    if (v21(&v18[v20], 1, v8) == 1)
    {
      sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_11;
    }

LABEL_6:
    v22 = &qword_27C867ED0;
    v23 = &qword_20E33AFA0;
    v24 = v18;
LABEL_7:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_8;
  }

  sub_20E0486F4(v18, v14, &qword_27C863B60, &qword_20E323F50);
  if (v21(&v18[v20], 1, v8) == 1)
  {
    sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  v27 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
  if ((v27 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v55;
  v28 = v56;
  if ((*v55 != *v56 || v55[1] != v56[1]) && (sub_20E322D60() & 1) == 0 || (sub_20E15D148(v29[2], v28[2]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v31 = v53;
  v30 = v54;
  v32 = *(v53 + 28);
  v33 = *(v50 + 48);
  sub_20E0486F4(v29 + v32, v54, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(v28 + v32, v30 + v33, &qword_27C863EB8, &qword_20E325D08);
  v34 = v52;
  v35 = *(v51 + 48);
  if (v35(v30, 1, v52) != 1)
  {
    v36 = v49;
    sub_20E0486F4(v30, v49, &qword_27C863EB8, &qword_20E325D08);
    if (v35(v30 + v33, 1, v34) != 1)
    {
      v37 = v30 + v33;
      v38 = v48;
      sub_20E2FB8D8(v37, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
      v39 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v36, v38);
      sub_20E2FB878(v38, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_20E2FB878(v36, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_20E04875C(v30, &qword_27C863EB8, &qword_20E325D08);
      if ((v39 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    sub_20E2FB878(v36, type metadata accessor for ToolKitProtoDisplayRepresentation);
    goto LABEL_20;
  }

  if (v35(v30 + v33, 1, v34) != 1)
  {
LABEL_20:
    v22 = &qword_27C867E90;
    v23 = &qword_20E33AF68;
    v24 = v30;
    goto LABEL_7;
  }

  sub_20E04875C(v30, &qword_27C863EB8, &qword_20E325D08);
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
      sub_20E047C8C(v42, v41);
      sub_20E047C8C(v45, v44);
      sub_20E047D10(v42, v41);
LABEL_28:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v25 = sub_20E322850();
      return v25 & 1;
    }

    goto LABEL_26;
  }

  if (v44 >> 60 == 15)
  {
LABEL_26:
    sub_20E047C8C(v42, v41);
    sub_20E047C8C(v45, v44);
    sub_20E047D10(v42, v41);
    sub_20E047D10(v45, v44);
    goto LABEL_8;
  }

  sub_20E047C8C(v42, v41);
  sub_20E047C8C(v45, v44);
  v46 = sub_20E15F7B0(v42, v41, v45, v44);
  sub_20E047D10(v45, v44);
  sub_20E047D10(v42, v41);
  if (v46)
  {
    goto LABEL_28;
  }

LABEL_8:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV05QueryH0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D228, &qword_20E3565E8);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C863B60, &qword_20E323F50);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C863B60, &qword_20E323F50);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C863B60, &qword_20E323F50);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E2FB8D8(&v19[v20], v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      v25 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v19, &qword_27C863B60, &qword_20E323F50);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v22 = &qword_27C867ED0;
    v23 = &qword_20E33AFA0;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C863B60, &qword_20E323F50);
LABEL_8:
  v26 = *(type metadata accessor for ToolKitProtoTypedValue.QueryValue(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C863F28, &qword_20E325D30);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C863F28, &qword_20E325D30);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C863F28, &qword_20E325D30);
LABEL_18:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C863F28, &qword_20E325D30);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E2FB878(v31, type metadata accessor for ToolKitProtoQuery);
LABEL_13:
    v22 = &qword_27C86D228;
    v23 = &qword_20E3565E8;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E2FB8D8(v34, v37, type metadata accessor for ToolKitProtoQuery);
  V2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor17ToolKitProtoQueryV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_20E2FB878(v35, type metadata accessor for ToolKitProtoQuery);
  sub_20E2FB878(v31, type metadata accessor for ToolKitProtoQuery);
  sub_20E04875C(v28, &qword_27C863F28, &qword_20E325D30);
  if (V2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV016EntityIdentifierH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v19 = *(v43 + 20);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_20E0486F4(a1 + v19, v18, &qword_27C863B60, &qword_20E323F50);
  v21 = v48;
  sub_20E0486F4(v48 + v19, &v18[v20], &qword_27C863B60, &qword_20E323F50);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) != 1)
  {
    sub_20E0486F4(v18, v14, &qword_27C863B60, &qword_20E323F50);
    if (v22(&v18[v20], 1, v8) != 1)
    {
      sub_20E2FB8D8(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      v26 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v23 = &qword_27C867ED0;
    v24 = &qword_20E33AFA0;
    v25 = v18;
LABEL_17:
    sub_20E04875C(v25, v23, v24);
    goto LABEL_18;
  }

  if (v22(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != v21[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(v43 + 24);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_20E0486F4(v27 + v28, v46, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(v21 + v28, v30 + v29, &qword_27C863EB8, &qword_20E325D08);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      sub_20E04875C(v30, &qword_27C863EB8, &qword_20E325D08);
LABEL_21:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_20E322850();
      return v34 & 1;
    }

    goto LABEL_16;
  }

  v33 = v41;
  sub_20E0486F4(v30, v41, &qword_27C863EB8, &qword_20E325D08);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    sub_20E2FB878(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v23 = &qword_27C867E90;
    v24 = &qword_20E33AF68;
    v25 = v30;
    goto LABEL_17;
  }

  v36 = v30 + v29;
  v37 = v40;
  sub_20E2FB8D8(v36, v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v38 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v37);
  sub_20E2FB878(v37, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v30, &qword_27C863EB8, &qword_20E325D08);
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV8SubtitleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF00, &qword_20E3562D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869D80, &qword_20E3463B8);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869D80, &qword_20E3463B8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869D80, &qword_20E3463B8);
LABEL_9:
      type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869D80, &qword_20E3463B8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86CF00, &qword_20E3562D0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  v18 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV0deF12SubtitleKindO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_20E04875C(v14, &qword_27C869D80, &qword_20E3463B8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v82 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D78, &qword_20E3463B0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = (&v77 - v7);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF10, &qword_20E3562E0);
  MEMORY[0x28223BE20](v81);
  v9 = &v77 - v8;
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x28223BE20](v10);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D70, &qword_20E3463A8);
  MEMORY[0x28223BE20](v12 - 8);
  v87 = &v77 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF18, &qword_20E3562E8);
  MEMORY[0x28223BE20](v89);
  v92 = &v77 - v14;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  v95 = *(v15 - 8);
  v96 = v15;
  MEMORY[0x28223BE20](v15);
  v88 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D68, &qword_20E3463A0);
  MEMORY[0x28223BE20](v17 - 8);
  v93 = &v77 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF20, &qword_20E3562F0);
  MEMORY[0x28223BE20](v94);
  v97 = &v77 - v19;
  v20 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D60, &qword_20E346398);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v77 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF28, &qword_20E3562F8);
  MEMORY[0x28223BE20](v27);
  v29 = &v77 - v28;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_25;
  }

  v85 = v4;
  v78 = v9;
  v84 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v30 = *(v84 + 24);
  v31 = *(v27 + 48);
  v86 = a1;
  sub_20E0486F4(a1 + v30, v29, &qword_27C869D60, &qword_20E346398);
  v32 = a2 + v30;
  v33 = a2;
  sub_20E0486F4(v32, &v29[v31], &qword_27C869D60, &qword_20E346398);
  v34 = *(v21 + 48);
  if (v34(v29, 1, v20) == 1)
  {
    if (v34(&v29[v31], 1, v20) == 1)
    {
      sub_20E04875C(v29, &qword_27C869D60, &qword_20E346398);
      goto LABEL_10;
    }

LABEL_8:
    v35 = &qword_27C86CF28;
    v36 = &qword_20E3562F8;
    v37 = v29;
LABEL_24:
    sub_20E04875C(v37, v35, v36);
    goto LABEL_25;
  }

  sub_20E0486F4(v29, v26, &qword_27C869D60, &qword_20E346398);
  if (v34(&v29[v31], 1, v20) == 1)
  {
    sub_20E2FB878(v26, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
    goto LABEL_8;
  }

  sub_20E2FB8D8(&v29[v31], v23, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  v38 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV8SubtitleV2eeoiySbAE_AEtFZ_0(v26, v23);
  sub_20E2FB878(v23, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_20E2FB878(v26, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_20E04875C(v29, &qword_27C869D60, &qword_20E346398);
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
  sub_20E0486F4(v86 + v40, v97, &qword_27C869D68, &qword_20E3463A0);
  v44 = v33 + v40;
  v45 = v43;
  sub_20E0486F4(v44, v43 + v41, &qword_27C869D68, &qword_20E3463A0);
  v46 = v96;
  v47 = *(v95 + 48);
  if (v47(v43, 1, v96) == 1)
  {
    v48 = v47(v43 + v41, 1, v46);
    v49 = v85;
    if (v48 == 1)
    {
      sub_20E04875C(v43, &qword_27C869D68, &qword_20E3463A0);
      goto LABEL_17;
    }

LABEL_15:
    v35 = &qword_27C86CF20;
    v36 = &qword_20E3562F0;
LABEL_23:
    v37 = v45;
    goto LABEL_24;
  }

  v50 = v43;
  v51 = v93;
  sub_20E0486F4(v50, v93, &qword_27C869D68, &qword_20E3463A0);
  v52 = v47(v45 + v41, 1, v46);
  v49 = v85;
  if (v52 == 1)
  {
    sub_20E2FB878(v51, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
    goto LABEL_15;
  }

  v53 = v45 + v41;
  v54 = v88;
  sub_20E2FB8D8(v53, v88, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  v55 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV7AltTextV2eeoiySbAE_AEtFZ_0(v51, v54);
  sub_20E2FB878(v54, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_20E2FB878(v51, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_20E04875C(v45, &qword_27C869D68, &qword_20E3463A0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v56 = *(v39 + 32);
  v57 = *(v89 + 48);
  v58 = v92;
  sub_20E0486F4(v42 + v56, v92, &qword_27C869D70, &qword_20E3463A8);
  v59 = v33 + v56;
  v45 = v58;
  sub_20E0486F4(v59, v58 + v57, &qword_27C869D70, &qword_20E3463A8);
  v60 = v91;
  v61 = *(v90 + 48);
  if (v61(v58, 1, v91) != 1)
  {
    v62 = v87;
    sub_20E0486F4(v45, v87, &qword_27C869D70, &qword_20E3463A8);
    if (v61(v45 + v57, 1, v60) != 1)
    {
      v65 = v45 + v57;
      v66 = v83;
      sub_20E2FB8D8(v65, v83, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      v67 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV2eeoiySbAE_AEtFZ_0(v62, v66);
      sub_20E2FB878(v66, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      sub_20E2FB878(v62, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      sub_20E04875C(v45, &qword_27C869D70, &qword_20E3463A8);
      if ((v67 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    sub_20E2FB878(v62, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
    goto LABEL_22;
  }

  if (v61(v58 + v57, 1, v60) != 1)
  {
LABEL_22:
    v35 = &qword_27C86CF18;
    v36 = &qword_20E3562E8;
    goto LABEL_23;
  }

  sub_20E04875C(v58, &qword_27C869D70, &qword_20E3463A8);
LABEL_28:
  if ((sub_20E1494E0(v42[2], v33[2]) & 1) == 0)
  {
    goto LABEL_25;
  }

  v68 = *(v39 + 36);
  v69 = *(v81 + 48);
  v70 = v78;
  sub_20E0486F4(v42 + v68, v78, &qword_27C869D78, &qword_20E3463B0);
  sub_20E0486F4(v33 + v68, v70 + v69, &qword_27C869D78, &qword_20E3463B0);
  v71 = *(v49 + 48);
  v72 = v82;
  if (v71(v70, 1, v82) == 1)
  {
    if (v71(v70 + v69, 1, v72) == 1)
    {
      sub_20E04875C(v70, &qword_27C869D78, &qword_20E3463B0);
LABEL_32:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v63 = sub_20E322850();
      return v63 & 1;
    }

    goto LABEL_35;
  }

  v73 = v80;
  sub_20E0486F4(v70, v80, &qword_27C869D78, &qword_20E3463B0);
  if (v71(v70 + v69, 1, v72) == 1)
  {
    sub_20E2FB878(v73, type metadata accessor for ToolKitProtoPluginModelData);
LABEL_35:
    v35 = &qword_27C86CF10;
    v36 = &qword_20E3562E0;
    v37 = v70;
    goto LABEL_24;
  }

  v74 = v70 + v69;
  v75 = v79;
  sub_20E2FB8D8(v74, v79, type metadata accessor for ToolKitProtoPluginModelData);
  if (!sub_20E15F7B0(*v73, v73[1], *v75, v75[1]) || (v73[2] != v75[2] || v73[3] != v75[3]) && (sub_20E322D60() & 1) == 0)
  {
    sub_20E2FB878(v75, type metadata accessor for ToolKitProtoPluginModelData);
    sub_20E2FB878(v73, type metadata accessor for ToolKitProtoPluginModelData);
    v35 = &qword_27C869D78;
    v36 = &qword_20E3463B0;
    v37 = v78;
    goto LABEL_24;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v76 = sub_20E322850();
  sub_20E2FB878(v75, type metadata accessor for ToolKitProtoPluginModelData);
  sub_20E2FB878(v73, type metadata accessor for ToolKitProtoPluginModelData);
  sub_20E04875C(v78, &qword_27C869D78, &qword_20E3463B0);
  if (v76)
  {
    goto LABEL_32;
  }

LABEL_25:
  v63 = 0;
  return v63 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV011EnumerationH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v19 = *(v43 + 20);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_20E0486F4(a1 + v19, v18, &qword_27C863B60, &qword_20E323F50);
  v21 = v48;
  sub_20E0486F4(v48 + v19, &v18[v20], &qword_27C863B60, &qword_20E323F50);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) != 1)
  {
    sub_20E0486F4(v18, v14, &qword_27C863B60, &qword_20E323F50);
    if (v22(&v18[v20], 1, v8) != 1)
    {
      sub_20E2FB8D8(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      v26 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v23 = &qword_27C867ED0;
    v24 = &qword_20E33AFA0;
    v25 = v18;
LABEL_17:
    sub_20E04875C(v25, v23, v24);
    goto LABEL_18;
  }

  if (v22(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != v21[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(v43 + 24);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_20E0486F4(v27 + v28, v46, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(v21 + v28, v30 + v29, &qword_27C863EB8, &qword_20E325D08);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      sub_20E04875C(v30, &qword_27C863EB8, &qword_20E325D08);
LABEL_21:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_20E322850();
      return v34 & 1;
    }

    goto LABEL_16;
  }

  v33 = v41;
  sub_20E0486F4(v30, v41, &qword_27C863EB8, &qword_20E325D08);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    sub_20E2FB878(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v23 = &qword_27C867E90;
    v24 = &qword_20E33AF68;
    v25 = v30;
    goto LABEL_17;
  }

  v36 = v30 + v29;
  v37 = v40;
  sub_20E2FB8D8(v36, v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v38 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v37);
  sub_20E2FB878(v37, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v33, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v30, &qword_27C863EB8, &qword_20E325D08);
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_20E2EA948(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v26 = a4;
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v24 = a3(0);
  v17 = *(v24 + 20);
  v18 = *(v14 + 56);
  v27 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C863B60, &qword_20E323F50);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863B60, &qword_20E323F50);
  v19 = *(v8 + 48);
  if (v19(v16, 1, v7) == 1)
  {
    if (v19(&v16[v18], 1, v7) == 1)
    {
      sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v16, v12, &qword_27C863B60, &qword_20E323F50);
  if (v19(&v16[v18], 1, v7) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867ED0, &qword_20E33AFA0);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  v20 = v25;
  sub_20E2FB8D8(&v16[v18], v25, type metadata accessor for ToolKitProtoTypeIdentifier);
  v21 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v12, v20);
  sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v26(*v27, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_20E322850();
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor17ToolKitProtoQueryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CF8, &qword_20E346310);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D038, &qword_20E356408);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v27 = type metadata accessor for ToolKitProtoQuery(0);
  v14 = *(v27 + 20);
  v15 = *(v11 + 56);
  v29 = a1;
  sub_20E0486F4(&a1[v14], v13, &qword_27C869CF8, &qword_20E346310);
  sub_20E0486F4(&a2[v14], &v13[v15], &qword_27C869CF8, &qword_20E346310);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C869CF8, &qword_20E346310);
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

        sub_20E3221C0();
        sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v17 = sub_20E322850();
        return v17 & 1;
      }

LABEL_11:
      v17 = 0;
      return v17 & 1;
    }
  }

  else
  {
    sub_20E0486F4(v13, v9, &qword_27C869CF8, &qword_20E346310);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v28;
      sub_20E2FB8D8(&v13[v15], v28, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      V12AnyPredicateV2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor17ToolKitProtoQueryV12AnyPredicateV2eeoiySbAE_AEtFZ_0(v9, v18);
      sub_20E2FB878(v18, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      sub_20E2FB878(v9, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      sub_20E04875C(v13, &qword_27C869CF8, &qword_20E346310);
      if ((V12AnyPredicateV2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v9, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  }

  sub_20E04875C(v13, &qword_27C86D038, &qword_20E356408);
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor17ToolKitProtoQueryV12AnyPredicateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D008, &qword_20E3563D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869D00, &qword_20E346318);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869D00, &qword_20E346318);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
LABEL_9:
      type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869D00, &qword_20E346318);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86D008, &qword_20E3563D8);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v18 = static ToolKitProtoQuery.ToolKitProtoAnyPredicateKind.== infix(_:_:)();
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = v7;
  v22 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C863C48, &qword_20E323F30);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
LABEL_14:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_11;
  }

  sub_20E0486F4(v13, v10, &qword_27C863C48, &qword_20E323F30);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_11:
    sub_20E04875C(v13, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_12;
  }

  v18 = v21;
  sub_20E2FB8D8(&v13[v15], v21, type metadata accessor for ToolKitProtoTypeInstance);
  v19 = sub_20E2EC518(v10, v18, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v18, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_12:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v72 = a2;
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v57 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D040, &qword_20E356410);
  MEMORY[0x28223BE20](v61);
  v64 = &v57 - v7;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD8, &qword_20E3462F0);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v57 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D208, &qword_20E3565C8);
  MEMORY[0x28223BE20](v66);
  v69 = &v57 - v12;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v57 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D050, &qword_20E356420);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v70 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v71 = a1;
  v24 = *(v70 + 20);
  v25 = *(v21 + 56);
  sub_20E0486F4(a1 + v24, v23, &qword_27C869CD0, &qword_20E3462E8);
  v26 = v72 + v24;
  v27 = v72;
  sub_20E0486F4(v26, &v23[v25], &qword_27C869CD0, &qword_20E3462E8);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_20E04875C(v23, &qword_27C869CD0, &qword_20E3462E8);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_27C86D050;
    v30 = &qword_20E356420;
    v31 = v23;
LABEL_24:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_25;
  }

  sub_20E0486F4(v23, v19, &qword_27C869CD0, &qword_20E3462E8);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v23[v25], v16, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  v32 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(v19, v16);
  sub_20E2FB878(v16, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E04875C(v23, &qword_27C869CD0, &qword_20E3462E8);
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
  sub_20E0486F4(v71 + v35, v69, &qword_27C869CD8, &qword_20E3462F0);
  sub_20E0486F4(v27 + v35, v37 + v36, &qword_27C869CD8, &qword_20E3462F0);
  v38 = v68;
  v39 = *(v67 + 48);
  if (v39(v37, 1, v68) != 1)
  {
    v40 = v65;
    sub_20E0486F4(v37, v65, &qword_27C869CD8, &qword_20E3462F0);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v60;
      sub_20E2FB8D8(v41, v60, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      v43 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V2eeoiySbAE_AEtFZ_0(v40, v42);
      sub_20E2FB878(v42, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      sub_20E2FB878(v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      sub_20E04875C(v37, &qword_27C869CD8, &qword_20E3462F0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    sub_20E2FB878(v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
    goto LABEL_13;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_13:
    v29 = &qword_27C86D208;
    v30 = &qword_20E3565C8;
    v31 = v37;
    goto LABEL_24;
  }

  sub_20E04875C(v37, &qword_27C869CD8, &qword_20E3462F0);
LABEL_15:
  if ((*v33 != *v27 || v33[1] != v27[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_25;
  }

  v44 = *(v34 + 28);
  v45 = *(v61 + 48);
  v46 = v64;
  sub_20E0486F4(v33 + v44, v64, &qword_27C869CC0, &qword_20E3462D8);
  v47 = v27 + v44;
  v48 = v46;
  sub_20E0486F4(v47, v46 + v45, &qword_27C869CC0, &qword_20E3462D8);
  v49 = v63;
  v50 = *(v62 + 48);
  if (v50(v46, 1, v63) == 1)
  {
    if (v50(v46 + v45, 1, v49) == 1)
    {
      sub_20E04875C(v46, &qword_27C869CC0, &qword_20E3462D8);
LABEL_28:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = sub_20E322850();
      return v52 & 1;
    }

    goto LABEL_23;
  }

  v51 = v59;
  sub_20E0486F4(v48, v59, &qword_27C869CC0, &qword_20E3462D8);
  if (v50(v48 + v45, 1, v49) == 1)
  {
    sub_20E2FB878(v51, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_23:
    v29 = &qword_27C86D040;
    v30 = &qword_20E356410;
    v31 = v48;
    goto LABEL_24;
  }

  v54 = v48 + v45;
  v55 = v58;
  sub_20E2FB8D8(v54, v58, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  v56 = _s23LighthouseDataProcessor38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v51, v55);
  sub_20E2FB878(v55, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E2FB878(v51, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E04875C(v48, &qword_27C869CC0, &qword_20E3462D8);
  if (v56)
  {
    goto LABEL_28;
  }

LABEL_25:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s23LighthouseDataProcessor021ToolKitProtoAssistantD16SchemaDefinitionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE0, &qword_20E3563B0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v29 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v30 = a1;
  v14 = *(v29 + 28);
  v15 = *(v11 + 56);
  sub_20E0486F4(a1 + v14, v13, &qword_27C869B00, &unk_20E346240);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C869B00, &unk_20E346240);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v9, &qword_27C869B00, &unk_20E346240);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v28;
      sub_20E2FB8D8(&v13[v15], v28, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v20 = _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v9, v19);
      sub_20E2FB878(v19, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_20E2FB878(v9, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_20E04875C(v13, &qword_27C869B00, &unk_20E346240);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_20E2FB878(v9, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_20E04875C(v13, &qword_27C86CFE0, &qword_20E3563B0);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v13, &qword_27C869B00, &unk_20E346240);
LABEL_10:
  v21 = v30;
  if ((*v30 != *a2 || v30[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
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
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v26)
  {
    goto LABEL_7;
  }

  if (sub_20E1586A4(v21[2], a2[2]) & 1) != 0 && (sub_20E1559DC(v21[3], a2[3]))
  {
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_20E322850();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_20E2EC518(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t *, uint64_t *), void (*a5)(uint64_t), uint64_t (*a6)(void))
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
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E0, &qword_20E33B890);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C8688D8, &qword_20E33B888);
  sub_20E0486F4(a2, &v14[v15], &qword_27C8688D8, &qword_20E33B888);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
LABEL_9:
      type metadata accessor for ToolKitProtoSystemToolProtocol(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C8688D8, &qword_20E33B888);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8688E0, &qword_20E33B890);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  v18 = static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV16IntentSideEffectV2eeoiySbAE_AEtFZ_0(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 5))
  {
    if (*(a2 + 5))
    {
LABEL_3:
      type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_20E322850() & 1;
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

uint64_t _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D18, &qword_20E346338);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D258, &qword_20E356610);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = v7;
  v25 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v14 = *(v25 + 20);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C869D18, &qword_20E346338);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C869D18, &qword_20E346338);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C869D18, &qword_20E346338);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v24;
      sub_20E2FB8D8(v20, v24, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      if (*v10 == *v21 && v10[1] == v21[1] && v10[2] == v21[2])
      {
        sub_20E3221C0();
        sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_20E322850();
        sub_20E2FB878(v21, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
        sub_20E04875C(v13, &qword_27C869D18, &qword_20E346338);
        if (v22)
        {
          goto LABEL_6;
        }

LABEL_17:
        v17 = 0;
        return v17 & 1;
      }

      sub_20E2FB878(v21, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      v18 = &qword_27C869D18;
      v19 = &qword_20E346338;
LABEL_16:
      sub_20E04875C(v13, v18, v19);
      goto LABEL_17;
    }

    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
LABEL_9:
    v18 = &qword_27C86D258;
    v19 = &qword_20E356610;
    goto LABEL_16;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_20E04875C(v13, &qword_27C869D18, &qword_20E346338);
LABEL_6:
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_20E322850();
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE0, &qword_20E3563B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869B00, &unk_20E346240);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869B00, &unk_20E346240);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869B00, &unk_20E346240);
LABEL_9:
      type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869B00, &unk_20E346240);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86CFE0, &qword_20E3563B0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v18 = _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E04875C(v14, &qword_27C869B00, &unk_20E346240);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD19InvocationSignatureV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E1494E0(*a1, *a2) & 1) == 0 || (sub_20E1494E0(a1[1], a2[1]) & 1) == 0 || (sub_20E15F198(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoToolInvocationSignature(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v48 = a2;
  v3 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A28, &qword_20E33BE88);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v19 = *(v43 + 40);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_20E0486F4(a1 + v19, v18, &qword_27C863B60, &qword_20E323F50);
  v21 = v48;
  sub_20E0486F4(v48 + v19, &v18[v20], &qword_27C863B60, &qword_20E323F50);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &qword_27C867ED0;
    v24 = &qword_20E33AFA0;
    v25 = v18;
LABEL_7:
    sub_20E04875C(v25, v23, v24);
    goto LABEL_23;
  }

  sub_20E0486F4(v18, v14, &qword_27C863B60, &qword_20E323F50);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v18[v20], v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  v26 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
  if ((v26 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v27 = v47;
  if ((sub_20E14B888(*v47, *v21) & 1) == 0 || (sub_20E155D3C(v27[1], v21[1]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v28 = *(v43 + 44);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_20E0486F4(v27 + v28, v46, &qword_27C868A20, &qword_20E345F10);
  sub_20E0486F4(v21 + v28, v30 + v29, &qword_27C868A20, &qword_20E345F10);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    sub_20E0486F4(v30, v41, &qword_27C868A20, &qword_20E345F10);
    if (v32(v30 + v29, 1, v31) != 1)
    {
      v34 = v30 + v29;
      v35 = v40;
      sub_20E2FB8D8(v34, v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v36 = _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v33, v35);
      sub_20E2FB878(v35, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E2FB878(v33, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E04875C(v30, &qword_27C868A20, &qword_20E345F10);
      if (v36)
      {
        goto LABEL_18;
      }

LABEL_23:
      v37 = 0;
      return v37 & 1;
    }

    sub_20E2FB878(v33, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_16;
  }

  if (v32(v30 + v29, 1, v31) != 1)
  {
LABEL_16:
    v23 = &qword_27C868A28;
    v24 = &qword_20E33BE88;
    v25 = v30;
    goto LABEL_7;
  }

  sub_20E04875C(v30, &qword_27C868A20, &qword_20E345F10);
LABEL_18:
  if ((sub_20E1559DC(v27[2], v21[2]) & 1) == 0 || (sub_20E1562C0(v27[3], v21[3]) & 1) == 0 || (sub_20E19660C() & 1) == 0 || (sub_20E156844(v27[5], v21[5]) & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v37 = sub_20E322850();
  return v37 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD17DefinitionClosureV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FC8, &qword_20E33B088);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_20E0486F4(a1 + v14, v13, &qword_27C863B90, &unk_20E345EF0);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C863B90, &unk_20E345EF0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863B90, &unk_20E345EF0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v13, v9, &qword_27C863B90, &unk_20E345EF0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1);
LABEL_6:
    sub_20E04875C(v13, &qword_27C867FC8, &qword_20E33B088);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_20E2FB8D8(&v13[v15], v23, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v18 = _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V2eeoiySbAE_AEtFZ_0(v9, v17);
  sub_20E2FB878(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E2FB878(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E04875C(v13, &qword_27C863B90, &unk_20E345EF0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_20E158C24(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_20E322850();
  return v19 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD13SummaryStringV9ComponentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
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
      sub_20E195904(v3, v2, v4);
      sub_20E195904(v6, v5, v7);
      sub_20E195904(v3, v2, v4);
      v8 = _s23LighthouseDataProcessor012ToolKitProtoD13SummaryStringV0deF13ComponentKindO2eeoiySbAE_AEtFZ_0(&v13, &v10);
      sub_20E19593C(v10, v11);
      sub_20E19593C(v13, v14);
      sub_20E195924(v3, v2, v4);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_20E195904(v3, v2, v4);
    sub_20E195904(v6, v5, 255);
    sub_20E195904(v3, v2, v4);
    sub_20E19593C(v3, v2);
LABEL_8:
    sub_20E195924(v3, v2, v4);
    sub_20E195924(v6, v5, v7);
    return 0;
  }

  sub_20E195904(*a1, v2, 255);
  if (v7 != 255)
  {
    sub_20E195904(v6, v5, v7);
    goto LABEL_8;
  }

  sub_20E195904(v6, v5, 255);
  sub_20E195924(v3, v2, 255);
LABEL_10:
  type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2EDF6C(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
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
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_20E322850() & 1;
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

        v15 = sub_20E322D60();
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

uint64_t _s23LighthouseDataProcessor25ToolKitProtoAppDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D50, &qword_20E346388);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF38, &qword_20E356308);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_24;
  }

  v22 = v7;
  v21 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v14 = *(v21 + 40);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C869D50, &qword_20E346388);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C869D50, &qword_20E346388);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C869D50, &qword_20E346388);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  sub_20E0486F4(v13, v10, &qword_27C869D50, &qword_20E346388);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAppDefinition.Device);
LABEL_20:
    sub_20E04875C(v13, &qword_27C86CF38, &qword_20E356308);
LABEL_24:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v22;
  sub_20E2FB8D8(&v13[v15], v22, type metadata accessor for ToolKitProtoAppDefinition.Device);
  v18 = sub_20E2EDF6C(v10, v17, sub_20E24FBD4, sub_20E24FBD8, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_20E2FB878(v17, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_20E04875C(v13, &qword_27C869D50, &qword_20E346388);
  if ((v18 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (*(a1 + 80) != *(a2 + 80))
  {
    goto LABEL_24;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_20E322850();
  return v19 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v120 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v116 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v5 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D40, &qword_20E346368);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v114 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v109 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D260, &qword_20E356618);
  v10 = MEMORY[0x28223BE20](v119);
  v117 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = &v109 - v12;
  v125 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v118 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D38, &qword_20E346360);
  MEMORY[0x28223BE20](v14 - 8);
  v124 = &v109 - v15;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D268, &qword_20E356620);
  MEMORY[0x28223BE20](v122);
  v126 = &v109 - v16;
  v17 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  v130 = *(v17 - 8);
  v131 = v17;
  MEMORY[0x28223BE20](v17);
  v127 = (&v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D30, &qword_20E346358);
  MEMORY[0x28223BE20](v19 - 8);
  v128 = (&v109 - v20);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D270, &qword_20E356628);
  MEMORY[0x28223BE20](v129);
  v132 = &v109 - v21;
  v22 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v135 = *(v22 - 8);
  v136 = v22;
  MEMORY[0x28223BE20](v22);
  v133 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D28, &qword_20E346350);
  MEMORY[0x28223BE20](v24 - 8);
  v134 = &v109 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D278, &qword_20E356630);
  MEMORY[0x28223BE20](v26);
  v137 = &v109 - v27;
  v28 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = (&v109 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - v36;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_20E322D60() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (sub_20E1586A4(*(a1 + 40), *(a2 + 40)) & 1) == 0)
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
  sub_20E0486F4(v40 + v39, v37, &qword_27C863C48, &qword_20E323F30);
  v42 = v113 + v39;
  v43 = v113;
  sub_20E0486F4(v42, &v37[v41], &qword_27C863C48, &qword_20E323F30);
  v44 = *(v29 + 48);
  if (v44(v37, 1, v28) == 1)
  {
    if (v44(&v37[v41], 1, v28) == 1)
    {
      sub_20E04875C(v37, &qword_27C863C48, &qword_20E323F30);
      goto LABEL_18;
    }

LABEL_13:
    v45 = &qword_27C867E98;
    v46 = &qword_20E33AF70;
    v47 = v37;
LABEL_14:
    sub_20E04875C(v47, v45, v46);
    goto LABEL_15;
  }

  sub_20E0486F4(v37, v34, &qword_27C863C48, &qword_20E323F30);
  if (v44(&v37[v41], 1, v28) == 1)
  {
    sub_20E2FB878(v34, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_13;
  }

  sub_20E2FB8D8(&v37[v41], v31, type metadata accessor for ToolKitProtoTypeInstance);
  v50 = sub_20E2EC518(v34, v31, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v31, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v34, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v37, &qword_27C863C48, &qword_20E323F30);
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
    if (!v57 || (*v54 != *v56 || v55 != v57) && (sub_20E322D60() & 1) == 0)
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
  sub_20E0486F4(v53 + v58, v137, &qword_27C869D28, &qword_20E346350);
  sub_20E0486F4(v43 + v58, v60 + v59, &qword_27C869D28, &qword_20E346350);
  v61 = v136;
  v62 = *(v135 + 48);
  if (v62(v60, 1, v136) == 1)
  {
    if (v62(v60 + v59, 1, v61) == 1)
    {
      sub_20E04875C(v60, &qword_27C869D28, &qword_20E346350);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v63 = v134;
  sub_20E0486F4(v60, v134, &qword_27C869D28, &qword_20E346350);
  if (v62(v60 + v59, 1, v61) == 1)
  {
    sub_20E2FB878(v63, type metadata accessor for ToolKitProtoAppDefinition);
LABEL_30:
    v45 = &qword_27C86D278;
    v46 = &qword_20E356630;
    v47 = v60;
    goto LABEL_14;
  }

  v64 = v60 + v59;
  v65 = v133;
  sub_20E2FB8D8(v64, v133, type metadata accessor for ToolKitProtoAppDefinition);
  v66 = _s23LighthouseDataProcessor25ToolKitProtoAppDefinitionV2eeoiySbAC_ACtFZ_0(v63, v65);
  sub_20E2FB878(v65, type metadata accessor for ToolKitProtoAppDefinition);
  sub_20E2FB878(v63, type metadata accessor for ToolKitProtoAppDefinition);
  sub_20E04875C(v60, &qword_27C869D28, &qword_20E346350);
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
    if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v71)
  {
    goto LABEL_15;
  }

  if ((sub_20E159684(*(v53 + 48), *(v43 + 48)) & 1) == 0 || (sub_20E1494E0(*(v53 + 56), *(v43 + 56)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v72 = v51[21];
  v73 = *(v129 + 48);
  v74 = v132;
  sub_20E0486F4(v53 + v72, v132, &qword_27C869D30, &qword_20E346358);
  sub_20E0486F4(v43 + v72, v74 + v73, &qword_27C869D30, &qword_20E346358);
  v75 = v131;
  v76 = *(v130 + 48);
  if (v76(v74, 1, v131) == 1)
  {
    if (v76(v74 + v73, 1, v75) == 1)
    {
      sub_20E04875C(v74, &qword_27C869D30, &qword_20E346358);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v77 = v128;
  sub_20E0486F4(v74, v128, &qword_27C869D30, &qword_20E346358);
  if (v76(v74 + v73, 1, v75) == 1)
  {
    sub_20E2FB878(v77, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
LABEL_46:
    v45 = &qword_27C86D270;
    v46 = &qword_20E356628;
    v47 = v74;
    goto LABEL_14;
  }

  v78 = v74 + v73;
  v79 = v127;
  sub_20E2FB8D8(v78, v127, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  v80 = sub_20E2F1054(v77, v79, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E2FB878(v79, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E2FB878(v77, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E04875C(v74, &qword_27C869D30, &qword_20E346358);
  if ((v80 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_48:
  if ((sub_20E155D3C(*(v53 + 64), *(v43 + 64)) & 1) == 0 || (sub_20E15992C(*(v53 + 72), *(v43 + 72)) & 1) == 0 || *(v53 + 80) != *(v43 + 80) || (sub_20E1559DC(*(v53 + 88), *(v43 + 88)) & 1) == 0 || (sub_20E159998(*(v112 + 96), *(v113 + 96)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v81 = v111[22];
  v82 = *(v122 + 48);
  v83 = v126;
  sub_20E0486F4(v112 + v81, v126, &qword_27C869D38, &qword_20E346360);
  sub_20E0486F4(v113 + v81, v83 + v82, &qword_27C869D38, &qword_20E346360);
  v84 = *(v123 + 48);
  if (v84(v83, 1, v125) == 1)
  {
    if (v84(v126 + v82, 1, v125) == 1)
    {
      sub_20E04875C(v126, &qword_27C869D38, &qword_20E346360);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v85 = v126;
  sub_20E0486F4(v126, v124, &qword_27C869D38, &qword_20E346360);
  if (v84(v85 + v82, 1, v125) == 1)
  {
    sub_20E2FB878(v124, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
LABEL_58:
    v45 = &qword_27C86D268;
    v46 = &qword_20E356620;
    v47 = v126;
    goto LABEL_14;
  }

  v86 = v126;
  v87 = v126 + v82;
  v88 = v118;
  sub_20E2FB8D8(v87, v118, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  v89 = v124;
  v90 = _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0D4IconV2eeoiySbAG_AGtFZ_0(v124, v88);
  sub_20E2FB878(v88, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_20E2FB878(v89, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_20E04875C(v86, &qword_27C869D38, &qword_20E346360);
  if ((v90 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_60:
  if ((sub_20E1586A4(*(v112 + 104), *(v113 + 104)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v91 = v111[23];
  v92 = *(v119 + 48);
  v93 = v121;
  sub_20E0486F4(v112 + v91, v121, &qword_27C869D40, &qword_20E346368);
  sub_20E0486F4(v113 + v91, v93 + v92, &qword_27C869D40, &qword_20E346368);
  v94 = *(v116 + 48);
  if (v94(v93, 1, v120) == 1)
  {
    if (v94(v121 + v92, 1, v120) == 1)
    {
      sub_20E04875C(v121, &qword_27C869D40, &qword_20E346368);
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v95 = v121;
  sub_20E0486F4(v121, v115, &qword_27C869D40, &qword_20E346368);
  if (v94(v95 + v92, 1, v120) == 1)
  {
    sub_20E2FB878(v115, type metadata accessor for ToolKitProtoContainerDefinition);
LABEL_66:
    v45 = &qword_27C86D260;
    v46 = &qword_20E356618;
    v47 = v121;
    goto LABEL_14;
  }

  v96 = v121;
  v97 = v121 + v92;
  v98 = v110;
  sub_20E2FB8D8(v97, v110, type metadata accessor for ToolKitProtoContainerDefinition);
  v99 = v115;
  v100 = _s23LighthouseDataProcessor31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(v115, v98);
  sub_20E2FB878(v98, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E2FB878(v99, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E04875C(v96, &qword_27C869D40, &qword_20E346368);
  if ((v100 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_68:
  v101 = v111[24];
  v102 = *(v119 + 48);
  v103 = v117;
  sub_20E0486F4(v112 + v101, v117, &qword_27C869D40, &qword_20E346368);
  sub_20E0486F4(v113 + v101, v103 + v102, &qword_27C869D40, &qword_20E346368);
  if (v94(v103, 1, v120) != 1)
  {
    v104 = v117;
    sub_20E0486F4(v117, v114, &qword_27C869D40, &qword_20E346368);
    if (v94(v104 + v102, 1, v120) != 1)
    {
      v105 = v117;
      v106 = v110;
      sub_20E2FB8D8(v117 + v102, v110, type metadata accessor for ToolKitProtoContainerDefinition);
      v107 = v114;
      v108 = _s23LighthouseDataProcessor31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(v114, v106);
      sub_20E2FB878(v106, type metadata accessor for ToolKitProtoContainerDefinition);
      sub_20E2FB878(v107, type metadata accessor for ToolKitProtoContainerDefinition);
      sub_20E04875C(v105, &qword_27C869D40, &qword_20E346368);
      if ((v108 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_75;
    }

    sub_20E2FB878(v114, type metadata accessor for ToolKitProtoContainerDefinition);
    goto LABEL_73;
  }

  if (v94(v117 + v102, 1, v120) != 1)
  {
LABEL_73:
    v45 = &qword_27C86D260;
    v46 = &qword_20E356618;
    v47 = v117;
    goto LABEL_14;
  }

  sub_20E04875C(v117, &qword_27C869D40, &qword_20E346368);
LABEL_75:
  if (sub_20E19660C())
  {
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v48 = sub_20E322850();
    return v48 & 1;
  }

LABEL_15:
  v48 = 0;
  return v48 & 1;
}