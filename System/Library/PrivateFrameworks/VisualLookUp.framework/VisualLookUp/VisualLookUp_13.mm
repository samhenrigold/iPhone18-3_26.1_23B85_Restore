uint64_t sub_1D9A88F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9A88F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1D9C7D77C(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A89088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52868, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition, &unk_1D9C8E478);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A89128(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD2E828, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition, &unk_1D9C8E4B0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A89194(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(&unk_1EDD2E828, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition, &unk_1D9C8E4B0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A89210(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A892B4()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000016, 0x80000001D9CA7A50);
  qword_1ECB70FF0 = 0xD00000000000002CLL;
  *algn_1ECB70FF8 = 0x80000001D9CA7890;
  return result;
}

uint64_t sub_1D9A89328()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41A78);
  __swift_project_value_buffer(v0, qword_1EDD41A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suppress_ontology_kg_id";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "keep_ontology_kg_id";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ioa_threshold_between_regions";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ioa_threshold_with_other_domains";
  *(v15 + 8) = 32;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A895C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        sub_1D9C7D5CC();
      }
    }

    else
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4 || result == 5)
      {
        sub_1D9C7D54C();
      }
    }
  }
}

uint64_t sub_1D9A89690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D9C7D7CC(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1D9C7D7CC(), !v4))
    {
      v10 = *(v3 + 40);
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_1D9C7D7CC(), !v4))
      {
        if (!*(v3 + 48) || (result = sub_1D9C7D77C(), !v4))
        {
          if (!*(v3 + 52) || (result = sub_1D9C7D77C(), !v4))
          {
            type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule(0);
            return sub_1D9C7D3AC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A897CC@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A89858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52870, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule, &unk_1D9C8E310);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A898F8(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD2E9B8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule, &unk_1D9C8E348);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A89964(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(&unk_1EDD2E9B8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule, &unk_1D9C8E348);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A899E4()
{
  result = MEMORY[0x1DA73DF90](0xD00000000000001FLL, 0x80000001D9CA7B00);
  qword_1ECB71000 = 0xD00000000000002CLL;
  *algn_1ECB71008 = 0x80000001D9CA7890;
  return result;
}

uint64_t sub_1D9A89A58()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41A00);
  __swift_project_value_buffer(v0, qword_1EDD41A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "face_count_threshold";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A89C28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D5CC();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D9A89CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D9C7D7CC(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_1D9C7D78C(), !v4))
    {
      type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A89DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52878, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule, &unk_1D9C8E1A8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A89E84(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD2E6C8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule, &unk_1D9C8E1E0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A89EF0(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(&unk_1EDD2E6C8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule, &unk_1D9C8E1E0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A89F6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 4) != *(a2 + 16))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8A038()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41A90);
  __swift_project_value_buffer(v0, qword_1EDD41A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "enabled";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prerequisites";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "requirements";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rich_label_config";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "max_num_of_domain_model_runs";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "image_source_type";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8A310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1D9A8A4F8(a1, v5, a2, a3);
            break;
          case 5:
            sub_1D9C7D55C();
            break;
          case 6:
            sub_1D9A92004();
            sub_1D9C7D4FC();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1D9C7D4EC();
            goto LABEL_5;
          case 2:
            v11 = v4;
            type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite(0);
            sub_1D9A8DB48(&qword_1EDD2EB38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite, &unk_1D9C8DF10);
            break;
          case 3:
            v11 = v4;
            type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0);
            sub_1D9A8DB48(&qword_1EDD2EBF8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement, &unk_1D9C8DDA8);
            break;
          default:
            goto LABEL_5;
        }

        v4 = v11;
        sub_1D9C7D5FC();
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A8A4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  sub_1D9A8DB48(&qword_1EDD2ECB8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig, &unk_1D9C8DC40);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A8A5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1D9C7D74C(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite(0), sub_1D9A8DB48(&qword_1EDD2EB38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite, &unk_1D9C8DF10), result = sub_1D9C7D7FC(), !v4))
    {
      if (!*(*(v3 + 16) + 16) || (type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0), sub_1D9A8DB48(&qword_1EDD2EBF8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement, &unk_1D9C8DDA8), result = sub_1D9C7D7FC(), !v4))
      {
        result = sub_1D9A8A7C4(v3, a1, a2, a3);
        if (!v4)
        {
          if (*(v3 + 24))
          {
            sub_1D9C7D78C();
          }

          if (*(v3 + 32))
          {
            sub_1D9A92004();
            sub_1D9C7D75C();
          }

          type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A8A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B70, &unk_1D9C8D140);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  sub_1D99AB100(a1 + *(v12 + 40), v7, &qword_1ECB51B70, &unk_1D9C8D140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51B70, &unk_1D9C8D140);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  sub_1D9A8DB48(&qword_1EDD2ECB8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig, &unk_1D9C8DC40);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
}

uint64_t sub_1D9A8A9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_1D9C7D3BC();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1D9A8AAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52880, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig, &unk_1D9C8E040);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8AB60(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2EA88, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig, &unk_1D9C8E078);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8ABCC(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(&qword_1EDD2EA88, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig, &unk_1D9C8E078);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8AC7C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41AA8);
  __swift_project_value_buffer(v0, qword_1EDD41AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "coarse_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_thresholds";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "domain_thresholds";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8AE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        v6 = v3;
        type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
        sub_1D9A8DB48(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, &unk_1D9C9A670);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
        sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold, &unk_1D9C8EA50);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1D9C7D4CC();
    }

    v6 = v3;
    type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
    sub_1D9A8DB48(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
LABEL_5:
    v3 = v6;
    sub_1D9C7D5FC();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1D9A8B02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
    sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold, &unk_1D9C8EA50);
    result = sub_1D9C7D7FC();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
    sub_1D9A8DB48(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
    v7 = v5;
    result = sub_1D9C7D7FC();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v7 = v5;
  }

  if (!*(v3[2] + 16) || (type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0), sub_1D9A8DB48(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, &unk_1D9C9A670), result = sub_1D9C7D7FC(), !v7))
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A8B208@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  a2[2] = v2;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A8B290(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52888, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite, &unk_1D9C8DED8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8B330(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2EB38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite, &unk_1D9C8DF10);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8B39C(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(&qword_1EDD2EB38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite, &unk_1D9C8DF10);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8B4B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1DA73DF90](a2, a3);
  *a4 = 0xD00000000000002CLL;
  *a5 = 0x80000001D9CA7B40;
  return result;
}

uint64_t sub_1D9A8B51C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41AC0);
  __swift_project_value_buffer(v0, qword_1EDD41AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "model_urn";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "label_thresholds";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "most_confident_class";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "reject_domain";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "new_domain_if_not_meet_requirement";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "require_same_top_class_domain";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8B7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
LABEL_4:
          sub_1D9C7D5CC();
          goto LABEL_5;
        }

        if (result == 5 || result == 6)
        {
          sub_1D9C7D4EC();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_4;
          case 2:
            type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
            sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold, &unk_1D9C8EA50);
            sub_1D9C7D5FC();
            break;
          case 3:
            goto LABEL_4;
        }
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A8B93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D9C7D7CC(), !v4))
  {
    if (!*(*(v3 + 16) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0), sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold, &unk_1D9C8EA50), result = sub_1D9C7D7FC(), !v4))
    {
      v8 = *(v3 + 32);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_1D9C7D7CC(), !v4))
      {
        v10 = *(v3 + 56);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_1D9C7D7CC(), !v4))
        {
          if (*(v3 + 40) != 1 || (result = sub_1D9C7D74C(), !v4))
          {
            if (*(v3 + 64) != 1 || (result = sub_1D9C7D74C(), !v4))
            {
              type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0);
              return sub_1D9C7D3AC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A8BB08@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A8BB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D9A8BBE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D9A8BCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52890, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement, &unk_1D9C8DD70);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8BD50(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2EBF8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement, &unk_1D9C8DDA8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8BDBC(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(&qword_1EDD2EBF8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement, &unk_1D9C8DDA8);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8BE3C()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000010, 0x80000001D9CA7CF0);
  qword_1ECB71030 = 0xD00000000000002CLL;
  *algn_1ECB71038 = 0x80000001D9CA7B40;
  return result;
}

uint64_t sub_1D9A8BEB0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41AD8);
  __swift_project_value_buffer(v0, qword_1EDD41AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "enabled";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_urn";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "label_thresholds";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "default_threshold";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8C104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
          sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold, &unk_1D9C8EA50);
          sub_1D9C7D5FC();
        }

        else if (result == 4)
        {
          sub_1D9C7D54C();
        }
      }

      else if (result == 1)
      {
        sub_1D9C7D4EC();
      }

      else if (result == 2)
      {
        sub_1D9C7D5CC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A8C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1D9C7D74C(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1D9C7D7CC(), !v4))
    {
      if (!*(*(v3 + 24) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0), sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold, &unk_1D9C8EA50), result = sub_1D9C7D7FC(), !v4))
      {
        if (!*(v3 + 32) || (result = sub_1D9C7D77C(), !v4))
        {
          type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A8C3B0@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A8C444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52898, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig, &unk_1D9C8DC08);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8C4E4(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2ECB8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig, &unk_1D9C8DC40);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8C550(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(&qword_1EDD2ECB8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig, &unk_1D9C8DC40);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8C5D0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71040);
  __swift_project_value_buffer(v0, qword_1ECB71040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "labelID";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8C798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1D9C7D55C();
    }
  }

  return result;
}

uint64_t sub_1D9A8C818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1D9C7D78C(), !v4))
  {
    if (!v3[1] || (result = sub_1D9C7D78C(), !v4))
    {
      type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A8C92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB528A0, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold, &unk_1D9C8DAA0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8C9CC(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2AD38, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold, &unk_1D9C8DAD8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8CA38(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(qword_1EDD2AD38, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold, &unk_1D9C8DAD8);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8CAB4(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8CB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold(0), sub_1D9A8DB48(qword_1EDD2AD38, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold, &unk_1D9C8DAD8), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A8CCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB528A8, type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig, &unk_1D9C8D938);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8CD94(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2ABF0, type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig, &unk_1D9C8D970);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8CE00(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(qword_1EDD2ABF0, type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig, &unk_1D9C8D970);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8CE94()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71070);
  __swift_project_value_buffer(v0, qword_1ECB71070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kg";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8D058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D55C();
    }

    else if (result == 2)
    {
      sub_1D9C7D5CC();
    }
  }

  return result;
}

uint64_t sub_1D9A8D0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1D9C7D78C(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1D9C7D7CC(), !v4))
    {
      type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A8D198@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A8D210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB528B0, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper, &unk_1D9C8D7D0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8D2B0(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2ADE0, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper, &unk_1D9C8D808);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8D31C(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(qword_1EDD2ADE0, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper, &unk_1D9C8D808);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8D398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8D488(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9C85660;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v15 = sub_1D9C7D81C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8D5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1D9A8DB48(a5, a6, a7);
      sub_1D9C7D5FC();
    }
  }

  return result;
}

uint64_t sub_1D9A8D6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper(0), sub_1D9A8DB48(qword_1EDD2ADE0, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper, &unk_1D9C8D808), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A8D84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB528B8, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig, &unk_1D9C8D668);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8D8EC(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2AC90, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig, &unk_1D9C8D6A0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8D958(uint64_t a1, uint64_t a2)
{
  sub_1D9A8DB48(qword_1EDD2AC90, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig, &unk_1D9C8D6A0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8D9EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8DB48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9A8FC20(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || a1[8] != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8FD20(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D0, &unk_1D9C85870);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E38, &unk_1D9C8A410);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v42 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  v17 = *(v42 + 24);
  v18 = *(v12 + 48);
  v40 = a1;
  sub_1D99AB100(a1 + v17, v16, &qword_1ECB510D0, &unk_1D9C85870);
  v41 = a2;
  sub_1D99AB100(a2 + v17, &v16[v18], &qword_1ECB510D0, &unk_1D9C85870);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      v20 = v4;
      sub_1D99A6AE0(v16, &qword_1ECB510D0, &unk_1D9C85870);
      goto LABEL_8;
    }

LABEL_6:
    v21 = v16;
LABEL_14:
    sub_1D99A6AE0(v21, &qword_1ECB51E38, &unk_1D9C8A410);
    goto LABEL_15;
  }

  sub_1D99AB100(v16, v11, &qword_1ECB510D0, &unk_1D9C85870);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    goto LABEL_6;
  }

  v20 = v4;
  v22 = &v16[v18];
  v23 = v38;
  sub_1D9A91CE4(v22, v38, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  v24 = sub_1D9A90270(v11, v23);
  sub_1D9A91D4C(v23, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  sub_1D99A6AE0(v16, &qword_1ECB510D0, &unk_1D9C85870);
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v25 = *(v42 + 28);
  v26 = *(v12 + 48);
  v28 = v39;
  v27 = v40;
  sub_1D99AB100(v40 + v25, v39, &qword_1ECB510D0, &unk_1D9C85870);
  v29 = v41;
  sub_1D99AB100(v41 + v25, v28 + v26, &qword_1ECB510D0, &unk_1D9C85870);
  v30 = v20;
  if (v19(v28, 1, v20) != 1)
  {
    v31 = v37;
    sub_1D99AB100(v28, v37, &qword_1ECB510D0, &unk_1D9C85870);
    if (v19((v28 + v26), 1, v30) != 1)
    {
      v34 = v28 + v26;
      v35 = v38;
      sub_1D9A91CE4(v34, v38, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      v36 = sub_1D9A90270(v31, v35);
      sub_1D9A91D4C(v35, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      sub_1D9A91D4C(v31, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      sub_1D99A6AE0(v28, &qword_1ECB510D0, &unk_1D9C85870);
      if ((v36 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_1D9A91D4C(v31, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    goto LABEL_13;
  }

  if (v19((v28 + v26), 1, v20) != 1)
  {
LABEL_13:
    v21 = v28;
    goto LABEL_14;
  }

  sub_1D99A6AE0(v28, &qword_1ECB510D0, &unk_1D9C85870);
LABEL_18:
  if (sub_1D9A247B4(*v27, *v29))
  {
    sub_1D9C7D3CC();
    sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v32 = sub_1D9C7DC2C();
    return v32 & 1;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_1D9A90270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E30, &unk_1D9C8A400);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v14 = *(v23 + 32);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB510C8, &unk_1D9C98580);
  v16 = a2 + v14;
  v17 = v15;
  sub_1D99AB100(v16, &v13[v15], &qword_1ECB510C8, &unk_1D9C98580);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB510C8, &unk_1D9C98580);
LABEL_13:
      sub_1D9C7D3CC();
      sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v19 = sub_1D9C7DC2C();
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB510C8, &unk_1D9C98580);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
LABEL_9:
    sub_1D99A6AE0(v13, &qword_1ECB51E30, &unk_1D9C8A400);
    goto LABEL_10;
  }

  sub_1D9A91CE4(&v13[v17], v7, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  v21 = sub_1D9BBD6FC(v10, v7);
  sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D99A6AE0(v13, &qword_1ECB510C8, &unk_1D9C98580);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1D9A905F8(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || (*(a1 + 4) != *(a2 + 32) || *(a1 + 5) != *(a2 + 40)) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  if (a1[12] != *(a2 + 48) || a1[13] != *(a2 + 52))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9071C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B70, &unk_1D9C8D140);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527D8, &qword_1D9C8FFA8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v15 = v12;
  if ((sub_1D9A249D4(*(a1 + 1), *(a2 + 1)) & 1) == 0 || (sub_1D9A24E44(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
    goto LABEL_25;
  }

  v25 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v16 = *(v25 + 40);
  v17 = *(v15 + 48);
  sub_1D99AB100(&a1[v16], v14, &qword_1ECB51B70, &unk_1D9C8D140);
  v26 = v17;
  sub_1D99AB100(&a2[v16], &v14[v17], &qword_1ECB51B70, &unk_1D9C8D140);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v26], 1, v4) == 1)
    {
      sub_1D99A6AE0(v14, &qword_1ECB51B70, &unk_1D9C8D140);
      goto LABEL_11;
    }

LABEL_9:
    sub_1D99A6AE0(v14, &qword_1ECB527D8, &qword_1D9C8FFA8);
    goto LABEL_25;
  }

  sub_1D99AB100(v14, v10, &qword_1ECB51B70, &unk_1D9C8D140);
  v19 = v26;
  if (v18(&v14[v26], 1, v4) == 1)
  {
    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
    goto LABEL_9;
  }

  sub_1D9A91CE4(&v14[v19], v7, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  v20 = sub_1D9A90D64(v10, v7);
  sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  sub_1D99A6AE0(v14, &qword_1ECB51B70, &unk_1D9C8D140);
  if ((v20 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  if (*(a1 + 6) != *(a2 + 6))
  {
    goto LABEL_25;
  }

  v21 = *(a1 + 4);
  v22 = *(a2 + 4);
  if (a2[40] != 1)
  {
    if (v21 == v22)
    {
      goto LABEL_19;
    }

LABEL_25:
    v23 = 0;
    return v23 & 1;
  }

  if (v22 > 2)
  {
    if (v22 == 3)
    {
      if (v21 != 3)
      {
        goto LABEL_25;
      }
    }

    else if (v22 == 4)
    {
      if (v21 != 4)
      {
        goto LABEL_25;
      }
    }

    else if (v21 != 5)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (!v22)
  {
    if (!v21)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v22 == 1)
  {
    if (v21 != 1)
    {
      goto LABEL_25;
    }
  }

  else if (v21 != 2)
  {
    goto LABEL_25;
  }

LABEL_19:
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v23 = sub_1D9C7DC2C();
  return v23 & 1;
}

uint64_t sub_1D9A90B40(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void, void), uint64_t (*a6)(void))
{
  if ((a3(*a1, *a2) & 1) == 0 || (a4(a1[1], a2[1]) & 1) == 0 || (a5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  a6(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A90C30(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D9A2534C(a1[2], *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 40) != *(a2 + 40) || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A90D64(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || (sub_1D9A2534C(*(a1 + 3), *(a2 + 3)) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A90E54(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A90F1C(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 16))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(a1 + 20) == *(a2 + 20))
  {
    type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet(0);
    sub_1D9C7D3CC();
    sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1D9C7DC2C() & 1;
  }

  return 0;
}

uint64_t sub_1D9A91020(float *a1, float *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if (*(a1 + 16))
  {
    v2 = v2 != 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9113C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A91214(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52528, &unk_1D9C8D030);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527B0, &unk_1D9C8FF68);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2))
  {
    goto LABEL_21;
  }

  v15 = v12;
  if ((sub_1D9A01074(*(a1 + 1), *(a2 + 1)) & 1) == 0 || (sub_1D9A01CB0(*(a1 + 2), *(a2 + 2)) & 1) == 0 || (sub_1D9A1EF04(*(a1 + 3), *(a2 + 3)) & 1) == 0 || (sub_1D9A1EF04(*(a1 + 4), *(a2 + 4)) & 1) == 0)
  {
    goto LABEL_21;
  }

  v25 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  v16 = *(v25 + 48);
  v17 = *(v15 + 48);
  sub_1D99AB100(&a1[v16], v14, &qword_1ECB52528, &unk_1D9C8D030);
  v26 = v17;
  sub_1D99AB100(&a2[v16], &v14[v17], &qword_1ECB52528, &unk_1D9C8D030);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v26], 1, v4) == 1)
    {
      sub_1D99A6AE0(v14, &qword_1ECB52528, &unk_1D9C8D030);
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  sub_1D99AB100(v14, v10, &qword_1ECB52528, &unk_1D9C8D030);
  v20 = v26;
  if (v18(&v14[v26], 1, v4) == 1)
  {
    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
LABEL_13:
    v21 = &qword_1ECB527B0;
    v22 = &unk_1D9C8FF68;
LABEL_20:
    sub_1D99A6AE0(v14, v21, v22);
    goto LABEL_21;
  }

  sub_1D9A91CE4(&v14[v20], v7, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
  if (*v10 != *v7 || (sub_1D9A1EF04(*(v10 + 1), *(v7 + 1)) & 1) == 0 || *(v10 + 4) != *(v7 + 4))
  {
    sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
    v21 = &qword_1ECB52528;
    v22 = &unk_1D9C8D030;
    goto LABEL_20;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v23 = sub_1D9C7DC2C();
  sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
  sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
  sub_1D99A6AE0(v14, &qword_1ECB52528, &unk_1D9C8D030);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((sub_1D9A27A14(*(a1 + 5), *(a2 + 5)) & 1) == 0)
  {
LABEL_21:
    v19 = 0;
    return v19 & 1;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = sub_1D9C7DC2C();
  return v19 & 1;
}

uint64_t sub_1D9A916AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || (sub_1D9A1EF04(*(a1 + 1), *(a2 + 1)) & 1) == 0 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A91778(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A91864(float *a1, float *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52530, &qword_1D9C8D0E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52758, &unk_1D9C8FEF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  v14 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v15 = *(v14 + 40);
  v16 = a1;
  v17 = *(v11 + 48);
  v27 = v14;
  v28 = v16;
  sub_1D99AB100(v16 + v15, v13, &qword_1ECB52530, &qword_1D9C8D0E8);
  v18 = a2 + v15;
  v19 = a2;
  sub_1D99AB100(v18, &v13[v17], &qword_1ECB52530, &qword_1D9C8D0E8);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB52530, &qword_1D9C8D0E8);
    if (v20(&v13[v17], 1, v4) != 1)
    {
      sub_1D9A91CE4(&v13[v17], v7, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
      v24 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (v24 || (sub_1D9C7E7DC()) && *(v10 + 4) == *(v7 + 4))
      {
        sub_1D9C7D3CC();
        sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v19 = a2;
        v25 = sub_1D9C7DC2C();
        sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
        sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
        sub_1D99A6AE0(v13, &qword_1ECB52530, &qword_1D9C8D0E8);
        if (v25)
        {
          goto LABEL_5;
        }

LABEL_23:
        v21 = 0;
        return v21 & 1;
      }

      sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
      sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
      v22 = &qword_1ECB52530;
      v23 = &qword_1D9C8D0E8;
LABEL_22:
      sub_1D99A6AE0(v13, v22, v23);
      goto LABEL_23;
    }

    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
LABEL_12:
    v22 = &qword_1ECB52758;
    v23 = &unk_1D9C8FEF0;
    goto LABEL_22;
  }

  if (v20(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1D99A6AE0(v13, &qword_1ECB52530, &qword_1D9C8D0E8);
LABEL_5:
  if (v28[1] != v19[1] || v28[2] != v19[2] || *(v28 + 12) != *(v19 + 12) || v28[4] != v19[4])
  {
    goto LABEL_23;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = sub_1D9C7DC2C();
  return v21 & 1;
}

uint64_t sub_1D9A91CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A91D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A91DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A91EA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D9A91F08()
{
  result = qword_1EDD2F668;
  if (!qword_1EDD2F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F668);
  }

  return result;
}

unint64_t sub_1D9A91F5C()
{
  result = qword_1EDD2F060;
  if (!qword_1EDD2F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F060);
  }

  return result;
}

unint64_t sub_1D9A91FB0()
{
  result = qword_1EDD30918;
  if (!qword_1EDD30918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30918);
  }

  return result;
}

unint64_t sub_1D9A92004()
{
  result = qword_1EDD2ED90;
  if (!qword_1EDD2ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED90);
  }

  return result;
}

uint64_t sub_1D9A92128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1D9C7D3CC();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9A921E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1D9A778AC(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9A922AC(uint64_t a1)
{
  result = sub_1D9C7D3CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D9A92370()
{
  v0 = sub_1D9C7D8DC();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v28 = sub_1D9C7B80C();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1D9C7DC4C();
  v12 = sub_1D9C7DC4C();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (!v13)
  {
    static Logger.argos.getter(v2);
    v17 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1D9A0E224(0xD000000000000012, 0x80000001D9CA7E40, &v29);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1D9A0E224(0x736C65646F6D6976, 0xE800000000000000, &v29);
      _os_log_impl(&dword_1D9962000, v17, v18, "Failed to get models bundle url %s.%s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v20, -1, -1);
      MEMORY[0x1DA7405F0](v19, -1, -1);
    }

    (*(v26 + 8))(v2, v27);
    return 0;
  }

  sub_1D9C7B7CC();

  v14 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v15 = sub_1D9C7B77C();
  v16 = [v14 initWithURL_];

  if (!v16)
  {
    static Logger.argos.getter(v5);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1D9A0E224(0xD000000000000012, 0x80000001D9CA7E40, &v29);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1D9A0E224(0x736C65646F6D6976, 0xE800000000000000, &v29);
      _os_log_impl(&dword_1D9962000, v21, v22, "Failed to load models bundle %s.%s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v24, -1, -1);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v26 + 8))(v5, v27);
    (*(v6 + 8))(v8, v28);
    return 0;
  }

  (*(v6 + 8))(v8, v28);
  return v16;
}

uint64_t sub_1D9A9283C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  *(v1 + 16) = sub_1D9A469F0(MEMORY[0x1E69E7CC0]);
  v11 = sub_1D9A92370();
  if (v11)
  {
    v12 = v11;
    sub_1D9A39304(v12);
    if (v13)
    {
      v15 = v13;
      v16 = v14;
      static Logger.argos.getter(v10);
      sub_1D9A3E0E0(v7);
      v39 = *(v5 + 8);
      v39(v10, v4);

      v17 = sub_1D9C7D8BC();
      v18 = sub_1D9C7E09C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v37 = v12;
        v20 = v19;
        v36 = swift_slowAlloc();
        v40 = v36;
        *v20 = 136315394;
        sub_1D9C7B80C();
        v38 = a1;
        sub_1D9A3B0BC();
        v35 = v18;

        v21 = sub_1D9C7DB6C();
        v34 = v17;
        v23 = v22;

        v24 = sub_1D9A0E224(v21, v23, &v40);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;

        v25 = sub_1D9C7DB6C();
        v27 = v26;

        v28 = sub_1D9A0E224(v25, v27, &v40);
        a1 = v38;

        *(v20 + 14) = v28;
        v29 = v34;
        _os_log_impl(&dword_1D9962000, v34, v35, "loaded providers for %s %s", v20, 0x16u);
        v30 = v36;
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v30, -1, -1);
        v31 = v20;
        v12 = v37;
        MEMORY[0x1DA7405F0](v31, -1, -1);
      }

      else
      {
      }

      v39(v7, v4);

      sub_1D9A3AD88(v15, v2);

      sub_1D9A3AF20(v16, a1, v2);
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_1D9A92BC4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v96 = a3;
  v100 = a2;
  v101 = sub_1D9C7B80C();
  v4 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v94 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v91 - v7;
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v91 - v21;
  static Logger.argos.getter(&v91 - v21);
  sub_1D9A3E0E0(v19);
  v23 = *(v10 + 8);
  v23(v22, v9);
  v24 = sub_1D9C7D8BC();
  v25 = sub_1D9C7E09C();
  v26 = os_log_type_enabled(v24, v25);
  v102 = v10 + 8;
  v97 = a1;
  if (v26)
  {
    v92 = v4;
    v98 = v23;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v104[0] = v28;
    *v27 = 136315138;
    v93 = v9;
    if (a1 <= 3u)
    {
      v37 = 0x65447463656A626FLL;
      v38 = 0xEF6E6F6974636574;
      v39 = 0x80000001D9CA29D0;
      v40 = 0xD000000000000019;
      if (a1 != 2)
      {
        v40 = 0x64656966696E75;
        v39 = 0xE700000000000000;
      }

      if (a1)
      {
        v37 = 0xD000000000000010;
        v38 = 0x80000001D9CA29B0;
      }

      if (a1 <= 1u)
      {
        v35 = v37;
      }

      else
      {
        v35 = v40;
      }

      if (a1 <= 1u)
      {
        v36 = v38;
      }

      else
      {
        v36 = v39;
      }
    }

    else
    {
      v29 = 0x6F7765727574616ELL;
      v30 = 0xED00003276646C72;
      v31 = 0xE400000000000000;
      v32 = 1685024614;
      if (a1 != 7)
      {
        v32 = 0x626D79536E676973;
        v31 = 0xEA00000000006C6FLL;
      }

      if (a1 != 6)
      {
        v29 = v32;
        v30 = v31;
      }

      v33 = 0x766432736F677261;
      v34 = 0xE900000000000032;
      if (a1 != 4)
      {
        v33 = 0x6F7765727574616ELL;
        v34 = 0xEB00000000646C72;
      }

      if (a1 <= 5u)
      {
        v35 = v33;
      }

      else
      {
        v35 = v29;
      }

      if (a1 <= 5u)
      {
        v36 = v34;
      }

      else
      {
        v36 = v30;
      }
    }

    v41 = sub_1D9A0E224(v35, v36, v104);

    *(v27 + 4) = v41;
    _os_log_impl(&dword_1D9962000, v24, v25, "loading provider for %s", v27, 0xCu);
    v42 = __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x1DA7405F0](v28, -1, -1, v42);
    MEMORY[0x1DA7405F0](v27, -1, -1);

    v9 = v93;
    v23 = v98;
    v98(v19, v93);
    v4 = v92;
  }

  else
  {

    v23(v19, v9);
  }

  v43 = v4;
  v44 = *(v4 + 16);
  v46 = v100;
  v45 = v101;
  v44(v8, v100, v101);
  type metadata accessor for ModelBundleProvider(0);
  swift_allocObject();
  v47 = sub_1D99CC1C0(v8);
  if (v47)
  {
    v48 = v47;
    v49 = v96;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(v49 + 16);
    *(v49 + 16) = 0x8000000000000000;
    v51 = v97;
    sub_1D9A9483C(v48, v97, isUniquelyReferenced_nonNull_native, &v103, &off_1F552B700);
    *(v49 + 16) = v103;
    swift_endAccess();
    static Logger.argos.getter(v14);
    v52 = v99;
    sub_1D9A3E0E0(v99);
    v23(v14, v9);

    v53 = sub_1D9C7D8BC();
    v54 = v23;
    v55 = sub_1D9C7E09C();

    if (os_log_type_enabled(v53, v55))
    {
      v56 = v9;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v104[0] = v58;
      *v57 = 136315394;
      if (v51 <= 3u)
      {
        v83 = 0x65447463656A626FLL;
        v84 = 0xEF6E6F6974636574;
        v85 = 0x80000001D9CA29D0;
        v86 = 0xD000000000000019;
        if (v51 != 2)
        {
          v86 = 0x64656966696E75;
          v85 = 0xE700000000000000;
        }

        if (v51)
        {
          v83 = 0xD000000000000010;
          v84 = 0x80000001D9CA29B0;
        }

        if (v51 <= 1u)
        {
          v65 = v83;
        }

        else
        {
          v65 = v86;
        }

        if (v51 <= 1u)
        {
          v66 = v84;
        }

        else
        {
          v66 = v85;
        }
      }

      else
      {
        v59 = 0x6F7765727574616ELL;
        v60 = 0xED00003276646C72;
        v61 = 0xE400000000000000;
        v62 = 1685024614;
        if (v51 != 7)
        {
          v62 = 0x626D79536E676973;
          v61 = 0xEA00000000006C6FLL;
        }

        if (v51 != 6)
        {
          v59 = v62;
          v60 = v61;
        }

        v63 = 0x766432736F677261;
        v64 = 0xE900000000000032;
        if (v51 != 4)
        {
          v63 = 0x6F7765727574616ELL;
          v64 = 0xEB00000000646C72;
        }

        if (v51 <= 5u)
        {
          v65 = v63;
        }

        else
        {
          v65 = v59;
        }

        if (v51 <= 5u)
        {
          v66 = v64;
        }

        else
        {
          v66 = v60;
        }
      }

      v87 = sub_1D9A0E224(v65, v66, v104);

      *(v57 + 4) = v87;
      *(v57 + 12) = 2080;
      v88 = *(v48 + OBJC_IVAR____TtC12VisualLookUp19ModelBundleProvider_info);
      v89 = *(v48 + OBJC_IVAR____TtC12VisualLookUp19ModelBundleProvider_info + 8);

      v90 = sub_1D9A0E224(v88, v89, v104);

      *(v57 + 14) = v90;
      _os_log_impl(&dword_1D9962000, v53, v55, "models bundle, providers[key] = provider, %s, %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v58, -1, -1);
      MEMORY[0x1DA7405F0](v57, -1, -1);

      v80 = v99;
      v81 = v56;
    }

    else
    {

      v80 = v52;
      v81 = v9;
    }

    return v54(v80, v81);
  }

  else
  {
    v98 = v23;
    v67 = v95;
    static Logger.argos.getter(v95);
    v68 = v94;
    v44(v94, v46, v45);
    v69 = sub_1D9C7D8BC();
    v70 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = v45;
      v73 = swift_slowAlloc();
      v104[0] = v73;
      *v71 = 136315138;
      sub_1D99AB1D0();
      v74 = sub_1D9C7E7AC();
      v76 = v75;
      (*(v43 + 8))(v68, v72);
      v77 = sub_1D9A0E224(v74, v76, v104);

      *(v71 + 4) = v77;
      _os_log_impl(&dword_1D9962000, v69, v70, "Failed to configure embedded MLModel provider with %s", v71, 0xCu);
      v78 = __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x1DA7405F0](v73, -1, -1, v78);
      MEMORY[0x1DA7405F0](v71, -1, -1);

      v79 = v95;
    }

    else
    {

      (*(v43 + 8))(v68, v45);
      v79 = v67;
    }

    return (v98)(v79, v9);
  }
}

uint64_t sub_1D9A93530(unsigned int a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v99 = a5;
  v100 = a3;
  v101 = a4;
  v102 = a2;
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v93 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v93 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v93 - v21;
  static Logger.argos.getter(&v93 - v21);
  sub_1D9A3E0E0(v19);
  v25 = *(v9 + 8);
  v23 = v9 + 8;
  v24 = v25;
  v25(v22, v8);
  v26 = sub_1D9C7D8BC();
  v27 = sub_1D9C7E09C();
  v28 = os_log_type_enabled(v26, v27);
  v95 = v11;
  v97 = a1;
  if (v28)
  {
    v96 = v24;
    v93 = v23;
    v94 = v8;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v104[0] = v30;
    *v29 = 136315138;
    if (a1 <= 3u)
    {
      v40 = 0x65447463656A626FLL;
      v41 = 0xEF6E6F6974636574;
      v42 = 0x80000001D9CA29D0;
      v43 = 0xD000000000000019;
      if (a1 != 2)
      {
        v43 = 0x64656966696E75;
        v42 = 0xE700000000000000;
      }

      if (a1)
      {
        v40 = 0xD000000000000010;
        v41 = 0x80000001D9CA29B0;
      }

      if (a1 <= 1u)
      {
        v37 = v40;
      }

      else
      {
        v37 = v43;
      }

      if (a1 <= 1u)
      {
        v38 = v41;
      }

      else
      {
        v38 = v42;
      }
    }

    else
    {
      v31 = 0x6F7765727574616ELL;
      v32 = 0xED00003276646C72;
      v33 = 0xE400000000000000;
      v34 = 1685024614;
      if (a1 != 7)
      {
        v34 = 0x626D79536E676973;
        v33 = 0xEA00000000006C6FLL;
      }

      if (a1 != 6)
      {
        v31 = v34;
        v32 = v33;
      }

      v35 = 0x766432736F677261;
      v36 = 0xE900000000000032;
      if (a1 != 4)
      {
        v35 = 0x6F7765727574616ELL;
        v36 = 0xEB00000000646C72;
      }

      if (a1 <= 5u)
      {
        v37 = v35;
      }

      else
      {
        v37 = v31;
      }

      if (a1 <= 5u)
      {
        v38 = v36;
      }

      else
      {
        v38 = v32;
      }
    }

    v39 = v101;
    v44 = sub_1D9A0E224(v37, v38, v104);

    *(v29 + 4) = v44;
    _os_log_impl(&dword_1D9962000, v26, v27, "loading trial provider for %s", v29, 0xCu);
    v45 = __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x1DA7405F0](v30, -1, -1, v45);
    MEMORY[0x1DA7405F0](v29, -1, -1);

    v8 = v94;
    v24 = v96;
    v96(v19, v94);
  }

  else
  {

    v24(v19, v8);
    v39 = v101;
  }

  type metadata accessor for TrialModelProvider(0);
  swift_allocObject();
  v46 = v100;

  v47 = v99;

  v48 = sub_1D9B21D8C(v102, v46, v39, v47);
  if (v48)
  {
    v49 = v48;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    v51 = v97;
    sub_1D9A9483C(v49, v97, isUniquelyReferenced_nonNull_native, &v103, &off_1F5531710);
    *(a6 + 16) = v103;
    swift_endAccess();
    static Logger.argos.getter(v16);
    v52 = v98;
    sub_1D9A3E0E0(v98);
    v24(v16, v8);

    v53 = sub_1D9C7D8BC();
    v54 = sub_1D9C7E09C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v51;
      v58 = v56;
      v104[0] = v56;
      *v55 = 136315394;
      v59 = v57;
      v60 = v24;
      if (v57 <= 3u)
      {
        v85 = 0x65447463656A626FLL;
        v86 = 0xEF6E6F6974636574;
        v87 = 0x80000001D9CA29D0;
        v88 = 0xD000000000000019;
        if (v59 != 2)
        {
          v88 = 0x64656966696E75;
          v87 = 0xE700000000000000;
        }

        if (v59)
        {
          v85 = 0xD000000000000010;
          v86 = 0x80000001D9CA29B0;
        }

        if (v59 <= 1)
        {
          v67 = v85;
        }

        else
        {
          v67 = v88;
        }

        if (v59 <= 1)
        {
          v68 = v86;
        }

        else
        {
          v68 = v87;
        }
      }

      else
      {
        v61 = 0x6F7765727574616ELL;
        v62 = 0xED00003276646C72;
        v63 = 0xE400000000000000;
        v64 = 1685024614;
        if (v59 != 7)
        {
          v64 = 0x626D79536E676973;
          v63 = 0xEA00000000006C6FLL;
        }

        if (v59 != 6)
        {
          v61 = v64;
          v62 = v63;
        }

        v65 = 0x766432736F677261;
        v66 = 0xE900000000000032;
        if (v59 != 4)
        {
          v65 = 0x6F7765727574616ELL;
          v66 = 0xEB00000000646C72;
        }

        if (v59 <= 5)
        {
          v67 = v65;
        }

        else
        {
          v67 = v61;
        }

        if (v59 <= 5)
        {
          v68 = v66;
        }

        else
        {
          v68 = v62;
        }
      }

      v89 = sub_1D9A0E224(v67, v68, v104);

      *(v55 + 4) = v89;
      *(v55 + 12) = 2080;
      v90 = *(v49 + OBJC_IVAR____TtC12VisualLookUp18TrialModelProvider_info);
      v91 = *(v49 + OBJC_IVAR____TtC12VisualLookUp18TrialModelProvider_info + 8);

      v92 = sub_1D9A0E224(v90, v91, v104);

      *(v55 + 14) = v92;
      _os_log_impl(&dword_1D9962000, v53, v54, "trial mapping, providers[key] = provider, %s, %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v58, -1, -1);
      MEMORY[0x1DA7405F0](v55, -1, -1);

      return v60(v98, v8);
    }

    v84 = v52;
    return (v24)(v84, v8);
  }

  v69 = v95;
  static Logger.argos.getter(v95);

  v70 = sub_1D9C7D8BC();
  v71 = sub_1D9C7E0AC();

  if (!os_log_type_enabled(v70, v71))
  {

    v84 = v69;
    return (v24)(v84, v8);
  }

  v96 = v24;
  v72 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  v74 = v46;
  v75 = v73;
  v104[0] = v73;
  *v72 = 136315394;
  *(v72 + 4) = sub_1D9A0E224(v102, v74, v104);
  *(v72 + 12) = 2080;
  v76 = 0xD000000000000017;
  v77 = "reportAnIssueEnvironment";
  v78 = "VISUAL_INTELLIGENCE_NATURE";
  v79 = 0xD000000000000018;
  if (v39 != 2)
  {
    v79 = 0xD00000000000001CLL;
    v78 = "VISUAL_INTELLIGENCE_PETS";
  }

  if (v39)
  {
    v76 = 0xD00000000000001ALL;
    v77 = "VISUAL_INTELLIGENCE_POC";
  }

  if (v39 <= 1u)
  {
    v80 = v76;
  }

  else
  {
    v80 = v79;
  }

  if (v39 <= 1u)
  {
    v81 = v77;
  }

  else
  {
    v81 = v78;
  }

  v82 = sub_1D9A0E224(v80, v81 | 0x8000000000000000, v104);

  *(v72 + 14) = v82;
  _os_log_impl(&dword_1D9962000, v70, v71, "Failed to configure Trial Model provider with factor: %s; namespace: %s", v72, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1DA7405F0](v75, -1, -1);
  MEMORY[0x1DA7405F0](v72, -1, -1);

  return (v96)(v69, v8);
}

uint64_t sub_1D9A93E64(uint64_t a1)
{
  v2 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v98 = (v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v97 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v99 = v97 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v97 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v97 - v17;
  static Logger.argos.getter(v97 - v17);
  sub_1D9A3E0E0(v15);
  v21 = *(v5 + 8);
  v20 = v5 + 8;
  v19 = v21;
  v21(v18, v4);
  v22 = sub_1D9C7D8BC();
  v23 = sub_1D9C7E09C();
  if (os_log_type_enabled(v22, v23))
  {
    v100 = v10;
    v97[1] = v20;
    v102 = v4;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v105[0] = v25;
    *v24 = 136315138;
    v26 = a1;
    v101 = v19;
    if (a1 <= 3u)
    {
      v36 = 0x65447463656A626FLL;
      v37 = 0xEF6E6F6974636574;
      v38 = 0x80000001D9CA29D0;
      v39 = 0xD000000000000019;
      if (a1 != 2)
      {
        v39 = 0x64656966696E75;
        v38 = 0xE700000000000000;
      }

      if (a1)
      {
        v36 = 0xD000000000000010;
        v37 = 0x80000001D9CA29B0;
      }

      if (a1 <= 1u)
      {
        v33 = v36;
      }

      else
      {
        v33 = v39;
      }

      if (a1 <= 1u)
      {
        v34 = v37;
      }

      else
      {
        v34 = v38;
      }
    }

    else
    {
      v27 = 0x6F7765727574616ELL;
      v28 = 0xED00003276646C72;
      v29 = 0xE400000000000000;
      v30 = 1685024614;
      if (a1 != 7)
      {
        v30 = 0x626D79536E676973;
        v29 = 0xEA00000000006C6FLL;
      }

      if (a1 != 6)
      {
        v27 = v30;
        v28 = v29;
      }

      v31 = 0x766432736F677261;
      v32 = 0xE900000000000032;
      if (a1 != 4)
      {
        v31 = 0x6F7765727574616ELL;
        v32 = 0xEB00000000646C72;
      }

      if (a1 <= 5u)
      {
        v33 = v31;
      }

      else
      {
        v33 = v27;
      }

      if (a1 <= 5u)
      {
        v34 = v32;
      }

      else
      {
        v34 = v28;
      }
    }

    v35 = v7;
    v40 = sub_1D9A0E224(v33, v34, v105);

    *(v24 + 4) = v40;
    _os_log_impl(&dword_1D9962000, v22, v23, "Providing model for %s.", v24, 0xCu);
    v41 = __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x1DA7405F0](v25, -1, -1, v41);
    MEMORY[0x1DA7405F0](v24, -1, -1);

    v19 = v101;
    v4 = v102;
    v101(v15, v102);
    v10 = v100;
  }

  else
  {
    v26 = a1;

    v19(v15, v4);
    v35 = v7;
  }

  v42 = v103;
  swift_beginAccess();
  v43 = *(v42 + 16);
  v44 = v26;
  if (*(v43 + 16))
  {

    v45 = sub_1D99EE2D4(v26);
    if (v46)
    {
      v47 = (*(v43 + 56) + 16 * v45);
      v48 = *v47;
      v49 = v47[1];
      swift_unknownObjectRetain();

      v50 = v99;
      static Logger.argos.getter(v99);
      sub_1D9A3E0E0(v10);
      v19(v50, v4);
      swift_unknownObjectRetain();
      v51 = v10;
      v52 = sub_1D9C7D8BC();
      v53 = v4;
      v54 = sub_1D9C7E09C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v52, v54))
      {
        v100 = v51;
        v102 = v53;
        v55 = v44;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v104 = v57;
        *v56 = 136315394;
        v101 = v19;
        if (v55 <= 3u)
        {
          v87 = 0x65447463656A626FLL;
          v88 = 0xEF6E6F6974636574;
          v89 = 0x80000001D9CA29D0;
          v90 = 0xD000000000000019;
          if (v55 != 2)
          {
            v90 = 0x64656966696E75;
            v89 = 0xE700000000000000;
          }

          if (v55)
          {
            v87 = 0xD000000000000010;
            v88 = 0x80000001D9CA29B0;
          }

          if (v55 <= 1u)
          {
            v64 = v87;
          }

          else
          {
            v64 = v90;
          }

          if (v55 <= 1u)
          {
            v65 = v88;
          }

          else
          {
            v65 = v89;
          }
        }

        else
        {
          v58 = 0x6F7765727574616ELL;
          v59 = 0xED00003276646C72;
          v60 = 0xE400000000000000;
          v61 = 1685024614;
          if (v55 != 7)
          {
            v61 = 0x626D79536E676973;
            v60 = 0xEA00000000006C6FLL;
          }

          if (v55 != 6)
          {
            v58 = v61;
            v59 = v60;
          }

          v62 = 0x766432736F677261;
          v63 = 0xE900000000000032;
          if (v55 != 4)
          {
            v62 = 0x6F7765727574616ELL;
            v63 = 0xEB00000000646C72;
          }

          if (v55 <= 5u)
          {
            v64 = v62;
          }

          else
          {
            v64 = v58;
          }

          if (v55 <= 5u)
          {
            v65 = v63;
          }

          else
          {
            v65 = v59;
          }
        }

        v91 = sub_1D9A0E224(v64, v65, &v104);

        *(v56 + 4) = v91;
        *(v56 + 12) = 2080;
        ObjectType = swift_getObjectType();
        v93 = v98;
        (*(v49 + 8))(ObjectType, v49);
        v94 = *v93;
        v95 = v93[1];

        sub_1D99A404C(v93);
        v96 = sub_1D9A0E224(v94, v95, &v104);

        *(v56 + 14) = v96;
        _os_log_impl(&dword_1D9962000, v52, v54, "%s -> %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v57, -1, -1);
        MEMORY[0x1DA7405F0](v56, -1, -1);

        v101(v100, v102);
      }

      else
      {

        v19(v51, v53);
      }

      return v48;
    }
  }

  static Logger.argos.getter(v35);
  v66 = sub_1D9C7D8BC();
  v67 = sub_1D9C7E09C();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v104 = v69;
    *v68 = 136315138;
    v70 = v44;
    v71 = v19;
    if (v70 <= 3)
    {
      v80 = 0x65447463656A626FLL;
      v81 = 0xEF6E6F6974636574;
      v82 = 0x80000001D9CA29D0;
      v83 = 0xD000000000000019;
      if (v70 != 2)
      {
        v83 = 0x64656966696E75;
        v82 = 0xE700000000000000;
      }

      if (v70)
      {
        v80 = 0xD000000000000010;
        v81 = 0x80000001D9CA29B0;
      }

      if (v70 <= 1)
      {
        v78 = v80;
      }

      else
      {
        v78 = v83;
      }

      if (v70 <= 1)
      {
        v79 = v81;
      }

      else
      {
        v79 = v82;
      }
    }

    else
    {
      v72 = 0x6F7765727574616ELL;
      v73 = 0xED00003276646C72;
      v74 = 0xE400000000000000;
      v75 = 1685024614;
      if (v70 != 7)
      {
        v75 = 0x626D79536E676973;
        v74 = 0xEA00000000006C6FLL;
      }

      if (v70 != 6)
      {
        v72 = v75;
        v73 = v74;
      }

      v76 = 0x766432736F677261;
      v77 = 0xE900000000000032;
      if (v70 != 4)
      {
        v76 = 0x6F7765727574616ELL;
        v77 = 0xEB00000000646C72;
      }

      if (v70 <= 5)
      {
        v78 = v76;
      }

      else
      {
        v78 = v72;
      }

      if (v70 <= 5)
      {
        v79 = v77;
      }

      else
      {
        v79 = v73;
      }
    }

    v84 = sub_1D9A0E224(v78, v79, &v104);

    *(v68 + 4) = v84;
    _os_log_impl(&dword_1D9962000, v66, v67, "There is no model for %s.", v68, 0xCu);
    v85 = __swift_destroy_boxed_opaque_existential_0Tm(v69);
    MEMORY[0x1DA7405F0](v69, -1, -1, v85);
    MEMORY[0x1DA7405F0](v68, -1, -1);

    v71(v35, v4);
  }

  else
  {

    v19(v35, v4);
  }

  return 0;
}

unint64_t sub_1D9A9483C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v10 = *a4;
  result = sub_1D99EE2D4(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1D9C0B734(v16, a3 & 1);
      result = sub_1D99EE2D4(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D9C15200();
      result = v19;
    }
  }

  v21 = *a4;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a2;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a5;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a5;

  return swift_unknownObjectRelease();
}

uint64_t sub_1D9A9499C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  sub_1D99A85E0(a1, &v22 - v10);
  Context = type metadata accessor for VisualQueryContext(0);
  v13 = *(*(Context - 8) + 48);
  if (v13(v11, 1, Context) == 1)
  {
    sub_1D99A8650(v11);
    v14 = 0;
  }

  else
  {
    v14 = *&v11[*(Context + 52)];
    sub_1D99A86B8(v11);
  }

  sub_1D99A85E0(a1, v8);
  if (v13(v8, 1, Context) == 1)
  {
    sub_1D99A8650(v8);
  }

  else
  {
    v15 = *v8;
    v16 = *(v8 + 1);

    sub_1D99A86B8(v8);
    if (v16)
    {
      goto LABEL_8;
    }
  }

  v15 = 0;
  v16 = 0xE000000000000000;
LABEL_8:
  if (a2)
  {
    v17 = 21;
  }

  else
  {
    v17 = 8;
  }

  v18 = objc_allocWithZone(MEMORY[0x1E69CA478]);

  v19 = [v18 initWithInput:0 triggerEvent:v17 queryId:v14];
  v20 = sub_1D9C7DC4C();

  [v19 setOriginatingApp_];

  result = sub_1D99A8650(a1);
  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  *(a3 + 24) = v19;
  *(a3 + 32) = 0;
  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.init(lo:hi:)(Swift::Double lo, Swift::Double hi)
{
  v4 = vceqq_f64(*&lo, vdupq_n_s64(0xC00921FB54442D18));
  v5 = vdupq_n_s64(0x400921FB54442D18uLL);
  v6 = vrev64_s32(vmovn_s64(vceqq_f64(*&lo, v5)));
  v7.i64[0] = v6.i32[0];
  v7.i64[1] = v6.i32[1];
  v8 = vbslq_s8(v4, vbslq_s8(v7, *&lo, v5), *&lo);
  *v2 = v8;
  result.hi = *v4.i64;
  result.lo = *v8.i64;
  return result;
}

BOOL S1Interval.isValid.getter()
{
  result = 0;
  v2 = *v0;
  if (fabs(*v0) <= 3.14159265)
  {
    v3 = v0[1];
    if (fabs(v3) <= 3.14159265)
    {
      if (v2 != -3.14159265 || v3 == 3.14159265)
      {
        return v2 == 3.14159265 || v3 != -3.14159265;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

double S1Interval.center.getter()
{
  v1 = v0[1];
  result = (*v0 + v1) * 0.5;
  if (v1 < *v0)
  {
    if (result <= 0.0)
    {
      v3 = 3.14159265;
    }

    else
    {
      v3 = -3.14159265;
    }

    return result + v3;
  }

  return result;
}

Swift::Bool __swiftcall S1Interval.contains(point:)(Swift::Double point)
{
  v3 = *v1;
  v2 = v1[1];
  if (point == -3.14159265)
  {
    point = 3.14159265;
    if (v2 < v3)
    {
      if (v3 <= 3.14159265 || v2 >= 3.14159265)
      {
        return v3 - v2 != 6.28318531;
      }

      return 0;
    }
  }

  else if (v2 < v3)
  {
    if (v3 <= point || v2 >= point)
    {
      return v3 - v2 != 6.28318531;
    }

    return 0;
  }

  if (v3 > point)
  {
    return 0;
  }

  return point <= v2;
}

uint64_t S1Interval.complement.getter@<X0>(double *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (*v1 == v3)
  {
    if (qword_1ECB50AD0 != -1)
    {
      v4 = a1;
      result = swift_once();
      a1 = v4;
    }

    v2 = *(&xmmword_1ECB528E0 + 1);
    v3 = *&xmmword_1ECB528E0;
  }

  *a1 = v3;
  a1[1] = v2;
  return result;
}

Swift::Bool __swiftcall S1Interval.intersects(with:)(VisualLookUp::S1Interval with)
{
  v3 = v1;
  result = 0;
  v5 = *v2;
  v6 = v2[1];
  if (*v2 - v6 != 6.28318531)
  {
    v8 = *v3;
    v7 = v3[1];
    if (*v3 - v7 != 6.28318531)
    {
      if (v6 >= v5)
      {
        if (v7 >= v8)
        {
          if (v8 > v6)
          {
            return 0;
          }
        }

        else if (v8 <= v6)
        {
          return 1;
        }

        return v5 <= v7;
      }

      else
      {
        v9 = v8 <= v6;
        if (v5 <= v7)
        {
          v9 = 1;
        }

        return v7 < v8 || v9;
      }
    }
  }

  return result;
}

double S1Interval.length.getter()
{
  result = v0[1] - *v0;
  v2 = result + 6.28318531;
  if (result + 6.28318531 <= 0.0)
  {
    v2 = -1.0;
  }

  if (result < 0.0)
  {
    return v2;
  }

  return result;
}

Swift::Bool __swiftcall S1Interval.interiorContains(point:)(Swift::Double point)
{
  v3 = *v1;
  v2 = v1[1];
  if (point == -3.14159265)
  {
    point = 3.14159265;
    if (v2 < v3)
    {
      if (v3 < 3.14159265)
      {
        return 1;
      }

      return point < v2;
    }

    if (v3 < 3.14159265 && v2 > 3.14159265)
    {
      return 1;
    }
  }

  else
  {
    if (v2 < v3)
    {
      if (v3 < point)
      {
        return 1;
      }

      return point < v2;
    }

    if (v3 < point)
    {
      v5 = v2 == point;
      v6 = v2 < point;
    }

    else
    {
      v5 = 1;
      v6 = 0;
    }

    if (!v6 && !v5)
    {
      return 1;
    }
  }

  return v2 - v3 == 6.28318531;
}

Swift::Bool __swiftcall S1Interval.contains(interval:)(VisualLookUp::S1Interval interval)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = *v2;
  v5 = v2[1];
  if (v5 >= *v2)
  {
    if (v3 < v4)
    {
      return v5 - v6 == 6.28318531 || v4 - v3 == 6.28318531;
    }
  }

  else if (v3 >= v4)
  {
    if (v6 > v4)
    {
      v8 = v3 == v5;
      v7 = v3 >= v5;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    if (v8 || !v7)
    {
      return v6 - v5 != 6.28318531;
    }

    return 0;
  }

  if (v6 > v4)
  {
    return 0;
  }

  return v3 <= v5;
}

Swift::Bool __swiftcall S1Interval.interiorContains(interval:)(VisualLookUp::S1Interval interval)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = *v2;
  v5 = v2[1];
  if (v5 >= *v2)
  {
    if (v3 >= v4)
    {
      if (v6 >= v4 || v3 >= v5)
      {
        v8 = v5 - v6;
        return v8 == 6.28318531;
      }
    }

    else if (v5 - v6 != 6.28318531)
    {
      return v4 - v3 == 6.28318531;
    }
  }

  else if (v3 >= v4)
  {
    if (v6 >= v4)
    {
      return v3 < v5;
    }
  }

  else if (v6 >= v4 || v3 >= v5)
  {
    v8 = v4 - v3;
    return v8 == 6.28318531;
  }

  return 1;
}

Swift::Bool __swiftcall S1Interval.interiorIntersects(with:)(VisualLookUp::S1Interval with)
{
  v3 = v1;
  result = 0;
  v5 = *v2;
  v6 = v2[1];
  if (*v2 != v6 && v5 - v6 != 6.28318531)
  {
    v8 = *v3;
    v7 = v3[1];
    if (*v3 - v7 != 6.28318531)
    {
      if (v6 >= v5)
      {
        if (v7 >= v8)
        {
          if (v8 >= v6 || v5 >= v7)
          {
            return v6 - v5 == 6.28318531;
          }
        }

        else if (v8 >= v6)
        {
          return v5 < v7;
        }

        return 1;
      }

      else
      {
        v9 = v8 < v6;
        if (v5 < v7)
        {
          v9 = 1;
        }

        return v7 < v8 || v9;
      }
    }
  }

  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.add(point:)(Swift::Double point)
{
  v3 = *v2;
  v4 = v2[1];
  if (point == -3.14159265)
  {
    point = 3.14159265;
  }

  if (v4 >= v3)
  {
    if (v3 > point || point > v4)
    {
      v6 = v3 - v4;
      goto LABEL_16;
    }

LABEL_18:
    *v1 = v3;
    v1[1] = v4;
    goto LABEL_36;
  }

  v5 = point > v4 && v3 > point;
  v6 = v3 - v4;
  if (!v5 && v6 != 6.28318531)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v6 == 6.28318531)
  {
    *v1 = point;
    v1[1] = point;
  }

  else
  {
    v8 = v3 - point;
    if (v3 - point < 0.0)
    {
      v8 = v3 + 3.14159265 - (point + -3.14159265);
    }

    v9 = point - v4;
    if (point - v4 < 0.0)
    {
      v9 = point + 3.14159265 - (v4 + -3.14159265);
    }

    if (v8 >= v9)
    {
      if (point == 3.14159265)
      {
        v10 = *v2;
      }

      else
      {
        v10 = 3.14159265;
      }

      if (v3 == -3.14159265)
      {
        v3 = v10;
      }

      *v1 = v3;
      v1[1] = point;
    }

    else
    {
      if (point == 3.14159265)
      {
        v3 = v2[1];
      }

      else
      {
        v3 = 3.14159265;
      }

      if (v4 != -3.14159265)
      {
        v3 = v2[1];
      }

      *v1 = point;
      v1[1] = v3;
    }
  }

LABEL_36:
  result.hi = v3;
  result.lo = point;
  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.expanded(radius:)(Swift::Double radius)
{
  v3 = *v2;
  v4 = v2[1];
  if (*v2 - v4 != 6.28318531)
  {
    v5 = v4 - v3;
    v6 = v4 - v3 + 6.28318531;
    if (v6 <= 0.0)
    {
      v6 = -1.0;
    }

    if (v5 < 0.0)
    {
      v5 = v6;
    }

    if (radius + radius + v5 >= 6.28318531)
    {
      if (qword_1ECB50AD0 != -1)
      {
        v11 = v1;
        swift_once();
        v1 = v11;
      }

      v4 = *(&xmmword_1ECB528E0 + 1);
      v3 = *&xmmword_1ECB528E0;
    }

    else
    {
      v7 = radius;
      v8 = v1;
      v9 = remainder(v3 - radius, 6.28318531);
      radius = remainder(v4 + v7, 6.28318531);
      v1 = v8;
      v10 = 3.14159265;
      if (v9 == -3.14159265)
      {
        v3 = 3.14159265;
      }

      else
      {
        v3 = v9;
      }

      if (v3 == 3.14159265)
      {
        v10 = radius;
      }

      if (radius == -3.14159265)
      {
        v4 = v10;
      }

      else
      {
        v4 = radius;
      }
    }
  }

  *v1 = v3;
  v1[1] = v4;
  result.hi = v3;
  result.lo = radius;
  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.union(with:)(VisualLookUp::S1Interval with)
{
  v5 = *v1;
  v4 = v1[1];
  v7 = *v3;
  v6 = v3[1];
  if (*v1 - v4 == 6.28318531)
  {
    *v2 = v7;
LABEL_3:
    v2[1] = v6;
    goto LABEL_46;
  }

  if (v6 < v7)
  {
    v8 = v7 <= v4;
    if (v4 <= v6)
    {
      v8 = 1;
    }

    v9 = v5 > v6 && v7 > v5;
    v10 = v7 - v6;
    if (!v9 && v10 != 6.28318531)
    {
      if (!v8)
      {
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    if (v10 == 6.28318531)
    {
      v8 = 0;
    }

    if (v8)
    {
LABEL_26:
      *v2 = v5;
      goto LABEL_3;
    }

LABEL_27:
    if (v10 == 6.28318531)
    {
LABEL_28:
      *v2 = v5;
      v2[1] = v4;
      goto LABEL_46;
    }

    if (v4 >= v5)
    {
      if (v5 > v7)
      {
        goto LABEL_40;
      }
    }

    else if (v5 <= v7)
    {
      goto LABEL_28;
    }

    if (v7 <= v4)
    {
      goto LABEL_28;
    }

LABEL_40:
    v15 = v7 - v4;
    if (v7 - v4 < 0.0)
    {
      v15 = v7 + 3.14159265 - (v4 + -3.14159265);
    }

    v16 = v5 + 3.14159265 - (v6 + -3.14159265);
    if (v5 - v6 >= 0.0)
    {
      v16 = v5 - v6;
    }

    if (v15 >= v16)
    {
      goto LABEL_45;
    }

    goto LABEL_26;
  }

  v11 = v7 <= v4;
  if (v4 > v6)
  {
    v11 = 0;
  }

  if (v7 > v5 || v5 > v6)
  {
    if (v11)
    {
      goto LABEL_26;
    }

    v10 = v7 - v6;
    goto LABEL_27;
  }

  if (!v11)
  {
LABEL_45:
    *v2 = v7;
    v2[1] = v4;
    goto LABEL_46;
  }

LABEL_30:
  v13 = v2;
  if (S1Interval.contains(interval:)(__PAIR128__(*&v5, *&v4)))
  {
    *v13 = v7;
    v13[1] = v6;
  }

  else
  {
    v14 = v13;
    if (qword_1ECB50AD0 != -1)
    {
      swift_once();
      v14 = v13;
    }

    *&v4 = xmmword_1ECB528E0;
    *v14 = xmmword_1ECB528E0;
  }

LABEL_46:
  result.hi = v5;
  result.lo = v4;
  return result;
}

BOOL == infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 == *a2 && v2 == v3)
  {
    return 1;
  }

  if (*a1 - v2 == 6.28318531)
  {
    return *a2 - v3 == 6.28318531;
  }

  return 0;
}

{
  return *a1 == *a2;
}

{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 == *a2 && v2 == v3)
  {
    return 1;
  }

  if (v2 >= *a1)
  {
    return 0;
  }

  return v3 < *a2;
}

{
  return a1[1] == a2[1] && *a1 == *a2;
}

{
  return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2];
}

{
  return a1[1] == a2[1] && *a1 == *a2;
}

VisualLookUp::S1Interval __swiftcall S1Interval.init(p1:p2:)(Swift::Double p1, Swift::Double p2)
{
  if (p1 == -3.14159265)
  {
    p1 = 3.14159265;
  }

  if (p2 == -3.14159265)
  {
    p2 = 3.14159265;
  }

  v3 = p2 + 3.14159265 - (p1 + -3.14159265);
  if (p2 - p1 >= 0.0)
  {
    v3 = p2 - p1;
  }

  v4 = v3 > 3.14159265;
  if (v3 <= 3.14159265)
  {
    v5 = p1;
  }

  else
  {
    v5 = p2;
  }

  if (!v4)
  {
    p1 = p2;
  }

  *v2 = v5;
  v2[1] = p1;
  result.hi = p2;
  result.lo = p1;
  return result;
}

double sub_1D9A95558()
{
  result = 3.14159265;
  xmmword_1ECB528D0 = xmmword_1D9C90150;
  return result;
}

double sub_1D9A95594()
{
  result = -3.14159265;
  xmmword_1ECB528E0 = xmmword_1D9C90160;
  return result;
}

__n128 sub_1D9A955D0@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a4;
    swift_once();
    a4 = v6;
    a2 = v5;
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.init(point:)(Swift::Double point)
{
  v2 = 3.14159265;
  if (point == -3.14159265)
  {
    point = 3.14159265;
  }

  *v1 = point;
  v1[1] = point;
  result.hi = v2;
  result.lo = point;
  return result;
}

double static S1Interval.positiveDistance(_:_:)(double a1, double a2)
{
  v2 = a2 - a1;
  result = a2 + 3.14159265 - (a1 + -3.14159265);
  if (v2 >= 0.0)
  {
    return v2;
  }

  return result;
}

Swift::Bool __swiftcall S1Interval.fastContains(point:)(Swift::Double point)
{
  v3 = *v1;
  v2 = v1[1];
  if (v2 < *v1)
  {
    if (v3 <= point || v2 >= point)
    {
      return v3 - v2 != 6.28318531;
    }

    return 0;
  }

  if (v3 > point)
  {
    return 0;
  }

  return v2 >= point;
}

BOOL sub_1D9A956B8(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 == *a2 && v2 == v3)
  {
    return 1;
  }

  if (*a1 - v2 == 6.28318531)
  {
    return *a2 - v3 == 6.28318531;
  }

  return 0;
}

id sub_1D9A95728(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v88 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB528F8, &qword_1D9C90210);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = (&v87 - v9);
  v105 = sub_1D9C7BACC();
  v10 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7C78C();
  v97 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - v15;
  v17 = sub_1D9C7C5AC();
  v19 = v18;
  v20 = sub_1D9C7C5BC();
  v22 = v21;
  v99 = a1;
  v23 = sub_1D9C7CA7C();
  v98 = v17;
  v24 = v17 == 0xD00000000000001BLL;
  v25 = v19;
  v106 = v12;
  if ((!v24 || 0x80000001D9CA7E60 != v19) && (sub_1D9C7E7DC() & 1) == 0)
  {
    if (v98 == 0xD000000000000020 && 0x80000001D9CA7E80 == v19 || (sub_1D9C7E7DC() & 1) != 0)
    {
      v57 = sub_1D9C7CA5C();
      v58 = *(v57 + 16);
      if (v58)
      {
        v90 = v25;
        v91 = v20;
        v92 = v22;
        v93 = v23;
        v59 = *(v97 + 16);
        v60 = *(v97 + 80);
        v94 = v57;
        v61 = v57 + ((v60 + 32) & ~v60);
        v101 = *(v97 + 72);
        v102 = v59;
        v100 = (v10 + 8);
        v62 = (v97 + 8);
        v63 = MEMORY[0x1E69E7CC0];
        v64 = v103;
        do
        {
          v102(v64, v61, v12);
          v65 = v104;
          sub_1D9C7C77C();
          v66 = sub_1D9C7BAAC();
          v68 = v67;
          (*v100)(v65, v105);
          (*v62)(v64, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_1D9AF9940(0, *(v63 + 2) + 1, 1, v63);
          }

          v70 = *(v63 + 2);
          v69 = *(v63 + 3);
          if (v70 >= v69 >> 1)
          {
            v63 = sub_1D9AF9940((v69 > 1), v70 + 1, 1, v63);
          }

          *(v63 + 2) = v70 + 1;
          v71 = &v63[16 * v70];
          *(v71 + 4) = v66;
          *(v71 + 5) = v68;
          v61 += v101;
          --v58;
          v12 = v106;
        }

        while (v58);

        v23 = v93;
      }

      else
      {

        v63 = MEMORY[0x1E69E7CC0];
      }

      v42 = sub_1D9A6C960(v63);

      if (!v42)
      {
        v82 = v88;
        static Logger.argos.getter(v88);
        v83 = sub_1D9C7D8BC();
        v84 = sub_1D9C7E09C();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_1D9962000, v83, v84, "Failed to render shopping cards.", v85, 2u);
          MEMORY[0x1DA7405F0](v85, -1, -1);
        }

        (*(v95 + 8))(v82, v96);
        v56 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_36;
        }

        goto LABEL_48;
      }

      v78 = sub_1D9C7CA5C();
      if (*(v78 + 16))
      {
        v79 = v97;
        v80 = v89;
        (*(v97 + 16))(v89, v78 + ((*(v97 + 80) + 32) & ~*(v97 + 80)), v12);
        v81 = 0;
      }

      else
      {
        v81 = 1;
        v79 = v97;
        v80 = v89;
      }

      (*(v79 + 56))(v80, v81, 1, v12);
      v72 = v80;
      goto LABEL_34;
    }

    v86 = v99;
    v53 = sub_1D9C7CA5C();
    MEMORY[0x1EEE9AC00](v53);
    v54 = &v87 - 4;
    *(&v87 - 2) = v86;
    v55 = sub_1D9A97748;
LABEL_20:
    v56 = sub_1D9BE8408(v55, v54, v53);

    goto LABEL_35;
  }

  v26 = sub_1D9C7CA5C();
  v27 = *(v26 + 16);
  if (v27)
  {
    v90 = v19;
    v91 = v20;
    v92 = v22;
    v93 = v23;
    v28 = *(v97 + 16);
    v29 = *(v97 + 80);
    v89 = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v101 = *(v97 + 72);
    v102 = v28;
    v31 = (v10 + 8);
    v103 = (v97 + 16);
    v32 = (v97 + 8);
    v33 = MEMORY[0x1E69E7CC0];
    do
    {
      v34 = v106;
      v102(v16, v30, v106);
      v35 = v104;
      sub_1D9C7C77C();
      v36 = sub_1D9C7BAAC();
      v38 = v37;
      (*v31)(v35, v105);
      (*v32)(v16, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D9AF9940(0, *(v33 + 2) + 1, 1, v33);
      }

      v40 = *(v33 + 2);
      v39 = *(v33 + 3);
      if (v40 >= v39 >> 1)
      {
        v33 = sub_1D9AF9940((v39 > 1), v40 + 1, 1, v33);
      }

      *(v33 + 2) = v40 + 1;
      v41 = &v33[16 * v40];
      *(v41 + 4) = v36;
      *(v41 + 5) = v38;
      v30 += v101;
      --v27;
    }

    while (v27);

    v23 = v93;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v42 = sub_1D9A6C94C(v33);

  v43 = v106;
  v44 = v100;
  if (!v42)
  {
    v48 = v94;
    static Logger.argos.getter(v94);
    v49 = sub_1D9C7D8BC();
    v50 = sub_1D9C7E09C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D9962000, v49, v50, "Fallback to default rendering for web images.", v51, 2u);
      MEMORY[0x1DA7405F0](v51, -1, -1);
    }

    (*(v95 + 8))(v48, v96);
    v52 = v99;
    v53 = sub_1D9C7CA5C();
    MEMORY[0x1EEE9AC00](v53);
    v54 = &v87 - 4;
    *(&v87 - 2) = v52;
    v55 = sub_1D9A977E4;
    goto LABEL_20;
  }

  v45 = sub_1D9C7CA5C();
  if (*(v45 + 16))
  {
    v46 = v97;
    (*(v97 + 16))(v44, v45 + ((*(v97 + 80) + 32) & ~*(v97 + 80)), v43);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v97;
  }

  (*(v46 + 56))(v44, v47, 1, v43);
  v72 = v44;
LABEL_34:
  sub_1D9A97764(v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8, &qword_1D9C94280);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1D9C88F90;
  *(v56 + 32) = v42;
LABEL_35:

  if (!(v56 >> 62))
  {
LABEL_36:
    v73 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_37;
  }

LABEL_48:
  v73 = sub_1D9C7E50C();
LABEL_37:

  if (v73)
  {
    v73 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
    sub_1D9A976CC();
    v74 = sub_1D9C7DF1C();

    [v73 setResults_];

    v75 = sub_1D9C7DC4C();

    [v73 setBundleIdentifier_];

    v76 = sub_1D9C7DC4C();

    [v73 setTitle_];

    [v73 setMaxInitiallyVisibleResults_];
  }

  else
  {
  }

  return v73;
}

id sub_1D9A961B4(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  v100 = *(v2 - 8);
  v101 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v94 - v6;
  v118 = sub_1D9C7D36C();
  v110 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1D9C7C0AC();
  v109 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1D9C7C42C();
  v9 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v95 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v94 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - v20;
  v22 = sub_1D9C7C82C();
  v24 = v23;
  v25 = sub_1D9C7C3FC();
  v27 = v26;
  v108 = a1;
  v104 = sub_1D9C7C83C();
  v103 = v25;
  v107 = v22;
  if ((v22 != 0xD00000000000001BLL || 0x80000001D9CA7E60 != v24) && (sub_1D9C7E7DC() & 1) == 0)
  {
    if (v22 == 0xD000000000000020 && 0x80000001D9CA7E80 == v24 || (sub_1D9C7E7DC() & 1) != 0)
    {
      v62 = sub_1D9C7BB2C();
      v63 = *(v62 + 16);
      if (v63)
      {
        v102 = v4;
        v105 = v24;
        v106 = v27;
        v97 = v9;
        v65 = *(v9 + 16);
        v64 = v9 + 16;
        v112 = v65;
        v66 = (*(v64 + 64) + 32) & ~*(v64 + 64);
        v99 = v62;
        v67 = v62 + v66;
        v68 = *(v64 + 56);
        ++v110;
        v111 = v68;
        ++v109;
        v113 = v64;
        v69 = (v64 - 8);
        v70 = MEMORY[0x1E69E7CC0];
        v71 = v115;
        do
        {
          v72 = v114;
          v73 = v119;
          v112(v114, v67, v119);
          sub_1D9C7C41C();
          v74 = v117;
          sub_1D9C7C08C();
          v75 = sub_1D9C7D34C();
          v77 = v76;
          (*v110)(v74, v118);
          (*v109)(v71, v116);
          (*v69)(v72, v73);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_1D9AF9940(0, *(v70 + 2) + 1, 1, v70);
          }

          v79 = *(v70 + 2);
          v78 = *(v70 + 3);
          if (v79 >= v78 >> 1)
          {
            v70 = sub_1D9AF9940((v78 > 1), v79 + 1, 1, v70);
          }

          *(v70 + 2) = v79 + 1;
          v80 = &v70[16 * v79];
          *(v80 + 4) = v75;
          *(v80 + 5) = v77;
          v67 += v111;
          --v63;
        }

        while (v63);

        v9 = v97;
        v4 = v102;
      }

      else
      {

        v70 = MEMORY[0x1E69E7CC0];
      }

      v46 = sub_1D9A6C960(v70);

      if (!v46)
      {
        static Logger.argos.getter(v4);
        v90 = sub_1D9C7D8BC();
        v91 = sub_1D9C7E09C();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_1D9962000, v90, v91, "Failed to render shopping cards.", v92, 2u);
          MEMORY[0x1DA7405F0](v92, -1, -1);
        }

        (*(v100 + 8))(v4, v101);
        v61 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_38;
        }

        goto LABEL_46;
      }

      v81 = sub_1D9C7BB2C();
      if (*(v81 + 16))
      {
        v82 = v95;
        v83 = v119;
        (*(v9 + 16))(v95, v81 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v119);

        v84 = v96;
        (*(v9 + 32))(v96, v82, v83);
        sub_1D9A96DA0(v84, v46);
        (*(v9 + 8))(v84, v83);
        goto LABEL_36;
      }

LABEL_35:

      goto LABEL_36;
    }

    v93 = v108;
    v58 = sub_1D9C7BB2C();
    MEMORY[0x1EEE9AC00](v58);
    v59 = &v94 - 4;
    *(&v94 - 2) = v93;
    v60 = sub_1D9A976B4;
LABEL_19:
    v61 = sub_1D9BE8780(v60, v59, v58);

    goto LABEL_37;
  }

  v105 = v24;
  v106 = v27;
  v28 = sub_1D9C7BB2C();
  v29 = *(v28 + 16);
  v97 = v9;
  if (v29)
  {
    v31 = *(v9 + 16);
    v30 = (v9 + 16);
    v113 = v31;
    v32 = (v30[64] + 32) & ~v30[64];
    v96 = v28;
    v33 = v28 + v32;
    v34 = *(v30 + 7);
    v111 = v110 + 1;
    v112 = v34;
    v110 = v109 + 1;
    v114 = v30;
    v35 = (v30 - 8);
    v36 = MEMORY[0x1E69E7CC0];
    do
    {
      v37 = v119;
      v113(v21, v33, v119);
      v38 = v115;
      sub_1D9C7C41C();
      v39 = v117;
      sub_1D9C7C08C();
      v40 = sub_1D9C7D34C();
      v42 = v41;
      (*v111)(v39, v118);
      (*v110)(v38, v116);
      (*v35)(v21, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1D9AF9940(0, *(v36 + 2) + 1, 1, v36);
      }

      v44 = *(v36 + 2);
      v43 = *(v36 + 3);
      if (v44 >= v43 >> 1)
      {
        v36 = sub_1D9AF9940((v43 > 1), v44 + 1, 1, v36);
      }

      *(v36 + 2) = v44 + 1;
      v45 = &v36[16 * v44];
      *(v45 + 4) = v40;
      *(v45 + 5) = v42;
      v33 += v112;
      --v29;
    }

    while (v29);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v46 = sub_1D9A6C94C(v36);

  if (!v46)
  {
    v52 = v102;
    static Logger.argos.getter(v102);
    v53 = sub_1D9C7D8BC();
    v54 = sub_1D9C7E09C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D9962000, v53, v54, "Fallback to default rendering for web images.", v55, 2u);
      v56 = v55;
      v52 = v102;
      MEMORY[0x1DA7405F0](v56, -1, -1);
    }

    (*(v100 + 8))(v52, v101);
    v57 = v108;
    v58 = sub_1D9C7BB2C();
    MEMORY[0x1EEE9AC00](v58);
    v59 = &v94 - 4;
    *(&v94 - 2) = v57;
    v60 = sub_1D9A977CC;
    goto LABEL_19;
  }

  v47 = sub_1D9C7BB2C();
  if (!*(v47 + 16))
  {
    goto LABEL_35;
  }

  v48 = v97;
  v49 = v98;
  v50 = v119;
  (*(v97 + 16))(v98, v47 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v119);

  v51 = v99;
  (*(v48 + 32))(v99, v49, v50);
  sub_1D9A96DA0(v51, v46);
  (*(v48 + 8))(v51, v50);
LABEL_36:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8, &qword_1D9C94280);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1D9C88F90;
  *(v61 + 32) = v46;
LABEL_37:

  if (!(v61 >> 62))
  {
LABEL_38:
    v85 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_39;
  }

LABEL_46:
  v85 = sub_1D9C7E50C();
LABEL_39:

  if (v85)
  {
    v85 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
    sub_1D9A976CC();
    v86 = sub_1D9C7DF1C();

    [v85 setResults_];

    v87 = sub_1D9C7DC4C();

    [v85 setBundleIdentifier_];

    v88 = sub_1D9C7DC4C();

    [v85 setTitle_];

    [v85 setMaxInitiallyVisibleResults_];
  }

  else
  {
  }

  return v85;
}

id sub_1D9A96DA0(uint64_t a1, void *a2)
{
  v3 = sub_1D9C7C07C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7C40C();
  result = (*(v4 + 88))(v6, v3);
  if (result != *MEMORY[0x1E69BD118] && result != *MEMORY[0x1E69BD110])
  {
    if (result == *MEMORY[0x1E69BD120])
    {
      return [a2 setPlacement_];
    }

    else if (result == *MEMORY[0x1E69BD128])
    {
      return [a2 setPlacement_];
    }

    else if (result == *MEMORY[0x1E69BD130])
    {
      return [a2 setPlacement_];
    }

    else
    {
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

id sub_1D9A96F2C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v2 = sub_1D9C7C07C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D9C7D36C();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7C0AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  sub_1D9C7C41C();
  sub_1D9C7C08C();
  v33 = sub_1D9C7D34C();
  v15 = v14;
  (*(v4 + 8))(v6, v34);
  v16 = *(v8 + 8);
  v16(v13, v7);
  sub_1D9C7C41C();
  v17 = sub_1D9C7C09C();
  v19 = v18;
  v16(v10, v7);
  v20 = sub_1D9C7C3FC();
  v22 = v21;
  v23 = sub_1D9C7C82C();
  v24 = v33;
  v26 = sub_1D9A6FDF8(v33, v15, v17, v19, v20, v22, v23, v25);
  sub_1D99A5748(v24, v15);

  sub_1D99A5748(v17, v19);
  if (v26)
  {
    v27 = v30;
    sub_1D9C7C40C();
    v28 = (*(v31 + 88))(v27, v32);
    if (v28 != *MEMORY[0x1E69BD118] && v28 != *MEMORY[0x1E69BD110])
    {
      if (v28 == *MEMORY[0x1E69BD120])
      {
        [v26 setPlacement_];
      }

      else if (v28 == *MEMORY[0x1E69BD128])
      {
        [v26 setPlacement_];
      }

      else if (v28 == *MEMORY[0x1E69BD130])
      {
        [v26 setPlacement_];
      }

      else
      {
        (*(v31 + 8))(v30, v32);
      }
    }
  }

  return v26;
}

void sub_1D9A972F4(uint64_t a1@<X1>, void *a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v3 = sub_1D9C7BACC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  sub_1D9C7C77C();
  v10 = sub_1D9C7BAAC();
  v24 = v11;
  v12 = *(v4 + 8);
  v12(v9, v3);
  sub_1D9C7C77C();
  v13 = sub_1D9C7BABC();
  v15 = v14;
  v12(v6, v3);
  v16 = sub_1D9C7C5BC();
  v18 = v17;
  v19 = sub_1D9C7C5AC();
  v20 = v24;
  v22 = sub_1D9A6FDF8(v10, v24, v13, v15, v16, v18, v19, v21);
  sub_1D99A5748(v10, v20);

  sub_1D99A5748(v13, v15);
  *v26 = v22;
}

uint64_t sub_1D9A974BC(uint64_t a1)
{
  v2 = sub_1D9C7C84C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7BB2C();
  v21 = MEMORY[0x1E69E7CC0];
  v7 = *(v6 + 16);
  if (v7)
  {
    v19 = a1;
    v20 = v6;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    v13 = MEMORY[0x1E69E7CC0];
    v10(v5, v11, v2);
    while (1)
    {
      v14 = sub_1D9A961B4(v5);
      v15 = (*(v8 - 8))(v5, v2);
      if (v14)
      {
        MEMORY[0x1DA73E0E0](v15);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D9C7DF4C();
        }

        sub_1D9C7DF6C();
        v13 = v21;
      }

      v11 += v12;
      if (!--v7)
      {
        break;
      }

      v9(v5, v11, v2);
    }

    a1 = v19;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1D9C7BB3C();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v13;
}

unint64_t sub_1D9A976CC()
{
  result = qword_1ECB528F0;
  if (!qword_1ECB528F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB528F0);
  }

  return result;
}

id sub_1D9A97718@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D9A96F2C(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D9A97764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB528F8, &qword_1D9C90210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9A977FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    a1 = *(v2 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName);
    v4 = *(v2 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName + 8);
  }

  v5 = *(v2 + 16);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = sub_1D99ED894(a1, v4);
    v9 = v8;

    if (v9)
    {
      return *(*(*(v5 + 56) + 8 * v7) + 16);
    }
  }

  else
  {
  }

  return 0;
}

void sub_1D9A978B0(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v47 = a4;
  v46 = sub_1D9C7D8DC();
  v8 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    a2 = *(v4 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName);
    v17 = *(v4 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName + 8);
  }

  v18 = *(v4 + 16);
  v19 = *(v18 + 16);

  if (v19 && (v20 = sub_1D99ED894(a2, v17), (v21 & 1) != 0))
  {
    v22 = *(*(v18 + 56) + 8 * v20);
    if (*(v22 + 16) > a1)
    {

      if (a1 < 0)
      {
        __break(1u);
      }

      else if (*(v22 + 16) > a1)
      {
        v23 = v22 + 32 * a1;
        v24 = *(v23 + 48);
        v44 = *(v23 + 32);
        v45 = v24;
        v25 = *(&v44 + 1);
        sub_1D99FE1B4(v44, *(&v44 + 1), v24, *(&v24 + 1));

        if (v25)
        {
          v26 = v47;
          v27 = v45;
          *v47 = v44;
          v26[1] = v27;
          return;
        }

        static Logger.argos.getter(v16);
        v41 = sub_1D9C7D8BC();
        v42 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 134217984;
          *(v43 + 4) = a1;
          _os_log_impl(&dword_1D9962000, v41, v42, "returning no ontology entry for label %ld", v43, 0xCu);
          MEMORY[0x1DA7405F0](v43, -1, -1);
        }

        (*(v8 + 8))(v16, v46);
        goto LABEL_15;
      }

      __break(1u);
      return;
    }

    static Logger.argos.getter(v13);

    v35 = sub_1D9C7D8BC();
    v36 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 134218242;
      *(v37 + 4) = a1;
      *(v37 + 12) = 2080;
      v39 = sub_1D9A0E224(a2, v17, &v48);

      *(v37 + 14) = v39;
      _os_log_impl(&dword_1D9962000, v35, v36, "Label is out of bounds %ld, incompatible mapping %s used?", v37, 0x16u);
      v40 = __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1DA7405F0](v38, -1, -1, v40);
      MEMORY[0x1DA7405F0](v37, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v13, v46);
  }

  else
  {
    static Logger.argos.getter(v10);

    v28 = sub_1D9C7D8BC();
    v29 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v30 = 136315138;
      v32 = sub_1D9A0E224(a2, v17, &v48);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_1D9962000, v28, v29, "Mapping %s is missing, unable to retrieve ontology node", v30, 0xCu);
      v33 = __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x1DA7405F0](v31, -1, -1, v33);
      MEMORY[0x1DA7405F0](v30, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v46);
  }

LABEL_15:
  v34 = v47;
  *v47 = 0u;
  v34[1] = 0u;
}

VisualLookUp::S1Angle __swiftcall S1Angle.init(degrees:)(Swift::Double degrees)
{
  result.radians = degrees * 0.0174532925;
  *v1 = result.radians;
  return result;
}

uint64_t S1Angle.e5.getter()
{
  v1 = round(*v0 * 57.2957795 * 100000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t S1Angle.e6.getter()
{
  v1 = round(*v0 * 57.2957795 * 1000000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t S1Angle.e7.getter()
{
  v1 = round(*v0 * 57.2957795 * 10000000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

VisualLookUp::S1Angle __swiftcall S1Angle.init(e5:)(Swift::Int64 e5)
{
  result.radians = e5 * 0.00001 * 0.0174532925;
  *v1 = result.radians;
  return result;
}

VisualLookUp::S1Angle __swiftcall S1Angle.init(e6:)(Swift::Int64 e6)
{
  result.radians = e6 * 0.000001 * 0.0174532925;
  *v1 = result.radians;
  return result;
}

VisualLookUp::S1Angle __swiftcall S1Angle.init(e7:)(Swift::Int64 e7)
{
  result.radians = e7 * 0.0000001 * 0.0174532925;
  *v1 = result.radians;
  return result;
}

BOOL < infix(_:_:)(double *a1, double *a2)
{
  return *a1 < *a2;
}

{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a2 >= *a1)
  {
    return a1[1] < a2[1];
  }

  return 0;
}

{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a2 < *a1)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 >= v3)
  {
    return a1[2] < a2[2];
  }

  return 0;
}

double + infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double - infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double * infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 * a3;
  *a2 = result;
  return result;
}

unint64_t sub_1D9A97FE4()
{
  result = qword_1ECB52900;
  if (!qword_1ECB52900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52900);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for S1Angle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for S1Angle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D9A98094()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB710A0);
  __swift_project_value_buffer(v0, qword_1ECB710A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "landmark";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "storefront_list";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A98264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9A982F8(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_1D9A988B4(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D9A982F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0, &qword_1D9C90F20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA8, &qword_1D9C90F28);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB52AA0, &qword_1D9C90F20);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB52AA0, &qword_1D9C90F20);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9A9FA84(v12, v19, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    sub_1D9A9FA84(v19, v16, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9A9FA24(v16, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
      v30 = v45;
    }

    else
    {
      sub_1D99A6AE0(v25, &qword_1ECB52AA8, &qword_1D9C90F28);
      v32 = v41;
      sub_1D9A9FA84(v16, v41, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      sub_1D9A9FA84(v32, v25, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1D9A9F0AC(&qword_1ECB52A60, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet, &unk_1D9C90D3C);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB52AA8, &qword_1D9C90F28);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB52AA8, &qword_1D9C90F28);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB52AA8, &qword_1D9C90F28);
    return sub_1D99A6AE0(v33, &qword_1ECB52AA8, &qword_1D9C90F28);
  }

  else
  {
    v36 = v40;
    sub_1D9A9FA84(v33, v40, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB52AA8, &qword_1D9C90F28);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB52AA0, &qword_1D9C90F20);
    sub_1D9A9FA84(v36, v37, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9A988B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0, &qword_1D9C90F20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AB0, &qword_1D9C90F30);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB52AA0, &qword_1D9C90F20);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB52AA0, &qword_1D9C90F20);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9A9FA84(v12, v19, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    sub_1D9A9FA84(v19, v16, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D99A6AE0(v25, &qword_1ECB52AB0, &qword_1D9C90F30);
      v32 = v41;
      sub_1D9A9FA84(v16, v41, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
      sub_1D9A9FA84(v32, v25, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9A9FA24(v16, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9A9F0AC(&qword_1ECB52A20, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet, &unk_1D9C90A6C);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB52AB0, &qword_1D9C90F30);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB52AB0, &qword_1D9C90F30);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB52AB0, &qword_1D9C90F30);
    return sub_1D99A6AE0(v33, &qword_1ECB52AB0, &qword_1D9C90F30);
  }

  else
  {
    v36 = v40;
    sub_1D9A9FA84(v33, v40, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB52AB0, &qword_1D9C90F30);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB52AA0, &qword_1D9C90F20);
    sub_1D9A9FA84(v36, v37, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9A98E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0, &qword_1D9C90F20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1D99AB100(v3, &v13 - v9, &qword_1ECB52AA0, &qword_1D9C90F20);
  v11 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9A99238(v3, a1, a2, a3);
  }

  else
  {
    sub_1D9A99000(v3, a1, a2, a3);
  }

  result = sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Com_Apple_Visualintelligence_AspireResult(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A99000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0, &qword_1D9C90F20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB52AA0, &qword_1D9C90F20);
  v11 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB52AA0, &qword_1D9C90F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9A9FA84(v7, v10, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
    sub_1D9A9F0AC(&qword_1ECB52A60, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet, &unk_1D9C90D3C);
    sub_1D9C7D80C();
    return sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
  }

  result = sub_1D9A9FA24(v7, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  __break(1u);
  return result;
}

uint64_t sub_1D9A99238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0, &qword_1D9C90F20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB52AA0, &qword_1D9C90F20);
  v11 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB52AA0, &qword_1D9C90F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9A9FA84(v7, v10, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    sub_1D9A9F0AC(&qword_1ECB52A20, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet, &unk_1D9C90A6C);
    sub_1D9C7D80C();
    return sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
  }

  result = sub_1D9A9FA24(v7, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  __break(1u);
  return result;
}

uint64_t sub_1D9A99470@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A9952C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52A98, type metadata accessor for Com_Apple_Visualintelligence_AspireResult, &unk_1D9C90E6C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A995CC(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A80, type metadata accessor for Com_Apple_Visualintelligence_AspireResult, &unk_1D9C90EA4);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A99638(uint64_t a1, uint64_t a2)
{
  sub_1D9A9F0AC(&qword_1ECB52A80, type metadata accessor for Com_Apple_Visualintelligence_AspireResult, &unk_1D9C90EA4);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A996B8()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB710B8);
  __swift_project_value_buffer(v0, qword_1ECB710B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D9C8CDC0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1D9C7D81C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "location_point";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "popularity";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "coverage";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "localized_names";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A99988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
          sub_1D9C7D54C();
        }

        else if (result == 6)
        {
          type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
          sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName, &unk_1D9C904CC);
          sub_1D9C7D5FC();
        }
      }

      else if (result == 1 || result == 2)
      {
        sub_1D9C7D5CC();
      }

      else if (result == 3)
      {
        sub_1D9A99AF0(a1, v5, a2, a3);
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A99AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  sub_1D9A9F0AC(&qword_1ECB52A40, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint, &unk_1D9C90BD4);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A99BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1D9C7D7CC(), !v4))
  {
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1D9C7D7CC(), !v4))
    {
      result = sub_1D9A99D54(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 32) != 0.0)
        {
          sub_1D9C7D77C();
        }

        if (*(v3 + 36) != 0.0)
        {
          sub_1D9C7D77C();
        }

        if (*(*(v3 + 40) + 16))
        {
          type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
          sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName, &unk_1D9C904CC);
          sub_1D9C7D7FC();
        }

        type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A99D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AC8, &qword_1D9C90F48);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  sub_1D99AB100(a1 + *(v12 + 40), v7, &qword_1ECB52AC8, &qword_1D9C90F48);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52AC8, &qword_1D9C90F48);
  }

  sub_1D9A9FA84(v7, v11, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
  sub_1D9A9F0AC(&qword_1ECB52A40, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint, &unk_1D9C90BD4);
  sub_1D9C7D80C();
  return sub_1D9A9FA24(v11, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
}

uint64_t sub_1D9A99F74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = MEMORY[0x1E69E7CC0];
  sub_1D9C7D3BC();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9A9A05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B10, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet, &unk_1D9C90D04);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9A0FC(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A60, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet, &unk_1D9C90D3C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9A168(uint64_t a1, uint64_t a2)
{
  sub_1D9A9F0AC(&qword_1ECB52A60, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet, &unk_1D9C90D3C);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9A1E8()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB710D0);
  __swift_project_value_buffer(v0, qword_1ECB710D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lat";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lng";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "geo_src";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "age";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9A438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        sub_1D9C7D5CC();
      }

      else if (result == 6)
      {
        sub_1D9A9A500(a1, v5, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1D9C7D5BC();
    }
  }

  return result;
}

uint64_t sub_1D9A9A500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  sub_1D9C7D33C();
  sub_1D9A9F0AC(&qword_1ECB52B20, MEMORY[0x1E69AA930], MEMORY[0x1E69AA928]);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A9A5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1D9C7D7BC(), !v4))
  {
    if (*(v3 + 8) == 0.0 || (result = sub_1D9C7D7BC(), !v4))
    {
      v8 = *(v3 + 24);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_1D9C7D7CC(), !v4))
      {
        result = sub_1D9A9A6B0(v3, a1, a2, a3);
        if (!v4)
        {
          type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A9A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AD8, &qword_1D9C90F58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1D9C7D33C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  sub_1D99AB100(a1 + *(v12 + 32), v7, &qword_1ECB52AD8, &qword_1D9C90F58);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52AD8, &qword_1D9C90F58);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1D9A9F0AC(&qword_1ECB52B20, MEMORY[0x1E69AA930], MEMORY[0x1E69AA928]);
  sub_1D9C7D80C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D9A9A8D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_1D9C7D3BC();
  v4 = *(a1 + 32);
  v5 = sub_1D9C7D33C();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9A9A9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B18, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint, &unk_1D9C90B9C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9AA48(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A40, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint, &unk_1D9C90BD4);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9AAB4(uint64_t a1, uint64_t a2)
{
  sub_1D9A9F0AC(&qword_1ECB52A40, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint, &unk_1D9C90BD4);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9AB34()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB710E8);
  __swift_project_value_buffer(v0, qword_1ECB710E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9C85660;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "pois";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1D9C7D81C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9ACA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0);
        sub_1D9A9F0AC(&qword_1ECB52A00, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi, &unk_1D9C90904);
        sub_1D9C7D5FC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A9AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0), sub_1D9A9F0AC(&qword_1ECB52A00, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi, &unk_1D9C90904), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A9AEB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B28, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet, &unk_1D9C90A34);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9AF50(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A20, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet, &unk_1D9C90A6C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9AFBC(uint64_t a1, uint64_t a2)
{
  sub_1D9A9F0AC(&qword_1ECB52A20, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet, &unk_1D9C90A6C);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9B038(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1D9A22A44(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9B0E0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71100);
  __swift_project_value_buffer(v0, qword_1ECB71100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pref_locale";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pref_name";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "pref_address";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "pref_phone";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "localized_name";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "pref_category_id";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9B438()
{
  type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  v2 = type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  v6 = type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v8 = (v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName) = MEMORY[0x1E69E7CC0];
  v9 = (v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  qword_1ECB52908 = v0;
  return result;
}

uint64_t sub_1D9A9B568(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AF8, &qword_1D9C90F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52B08, &qword_1D9C90F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  v10 = type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  v40 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  v14 = type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v41 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName) = MEMORY[0x1E69E7CC0];
  v16 = (v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  v43 = v16;
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  v18 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  swift_beginAccess();
  sub_1D99AB100(a1 + v18, v8, &qword_1ECB52B08, &qword_1D9C90F80);
  swift_beginAccess();
  sub_1D9A91EA0(v8, v2 + v9, &qword_1ECB52B08, &qword_1D9C90F80);
  swift_endAccess();
  v19 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  swift_beginAccess();
  v21 = *v19;
  v20 = v19[1];
  swift_beginAccess();
  *v11 = v21;
  v11[1] = v20;

  v22 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  swift_beginAccess();
  v24 = *v22;
  v23 = v22[1];
  swift_beginAccess();
  *v12 = v24;
  v12[1] = v23;

  v25 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  swift_beginAccess();
  v26 = v42;
  sub_1D99AB100(a1 + v25, v42, &qword_1ECB52AF8, &qword_1D9C90F70);
  v27 = v40;
  swift_beginAccess();
  sub_1D9A91EA0(v26, v2 + v27, &qword_1ECB52AF8, &qword_1D9C90F70);
  swift_endAccess();
  v28 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  *v15 = v30;
  v15[1] = v29;

  v31 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v41;
  swift_beginAccess();
  *(v2 + v33) = v32;

  v34 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];

  v37 = v43;
  swift_beginAccess();
  *v37 = v36;
  v37[1] = v35;

  return v2;
}

uint64_t sub_1D9A9BA00()
{
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location, &qword_1ECB52B08, &qword_1D9C90F80);

  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress, &qword_1ECB52AF8, &qword_1D9C90F70);

  return swift_deallocClassInstance();
}

void sub_1D9A9BB1C(uint64_t a1)
{
  sub_1D9A9BC90(319, &qword_1ECB52958, type metadata accessor for Com_Apple_Visualintelligence_LatLng, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9A9BC90(319, &qword_1ECB52960, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D9A9BC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D9A9BD5C(uint64_t a1)
{
  result = sub_1D9C7D3CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9A9BE08(uint64_t a1)
{
  sub_1D9A003F4();
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9A9BED4(uint64_t a1)
{
  result = sub_1D9C7D3CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9A9BF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi._StorageClass(0);
    swift_allocObject();
    v10 = sub_1D9A9B568(v11);
    *(v4 + v8) = v10;
  }

  return sub_1D9A9BFF8(v10, a1, a2, a3);
}

uint64_t sub_1D9A9BFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D9C7D4CC();
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
        if (result > 6)
        {
          if (result == 7)
          {
            sub_1D9A9C3EC(a2, a1, a3, a4);
          }

          else if (result == 8)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID;
            goto LABEL_5;
          }
        }

        else
        {
          if (result != 5)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone;
LABEL_5:
            sub_1D9A9C4C8(v11, v12, v13, v14, v15);
            goto LABEL_6;
          }

          sub_1D9A9C310(a2, a1, a3, a4);
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName;
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          sub_1D9A9C1B0(a2, a1, a3, a4);
        }

        else if (result == 2)
        {
          sub_1D9A9C234(a2, a1, a3, a4);
        }
      }

LABEL_6:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A9C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D9C7D5EC();
  return swift_endAccess();
}

uint64_t sub_1D9A9C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  sub_1D9A9F0AC(&qword_1ECB529E0, type metadata accessor for Com_Apple_Visualintelligence_LatLng, &unk_1D9C9079C);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A9C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  sub_1D9A9F0AC(&qword_1ECB529C0, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress, &unk_1D9C90634);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A9C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
  sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName, &unk_1D9C904CC);
  sub_1D9C7D5FC();
  return swift_endAccess();
}

uint64_t sub_1D9A9C4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_1D9C7D5CC();
  return swift_endAccess();
}

void sub_1D9A9C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0);
  sub_1D9A9C5BC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    sub_1D9C7D3AC();
  }
}

void sub_1D9A9C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (sub_1D9C7D7EC(), !v4))
  {
    sub_1D9A9C900(a1, a2, a3, a4);
    if (!v4)
    {
      v9 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
      swift_beginAccess();
      v10 = *v9;
      v11 = v9[1];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {

        sub_1D9C7D7CC();
      }

      swift_beginAccess();

      sub_1D9C7D7CC();

      sub_1D9A9CB28(a1, a2, a3, a4);
      v13 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
      swift_beginAccess();
      v14 = *v13;
      v15 = v13[1];
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {

        sub_1D9C7D7CC();
      }

      v17 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
      swift_beginAccess();
      if (*(*(a1 + v17) + 16))
      {
        type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
        sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName, &unk_1D9C904CC);

        sub_1D9C7D7FC();
      }

      v18 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
      swift_beginAccess();
      v19 = *v18;
      v20 = v18[1];
      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {

        sub_1D9C7D7CC();
      }
    }
  }
}

uint64_t sub_1D9A9C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52B08, &qword_1D9C90F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB52B08, &qword_1D9C90F80);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52B08, &qword_1D9C90F80);
  }

  sub_1D9A9FA84(v7, v11, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  sub_1D9A9F0AC(&qword_1ECB529E0, type metadata accessor for Com_Apple_Visualintelligence_LatLng, &unk_1D9C9079C);
  sub_1D9C7D80C();
  return sub_1D9A9FA24(v11, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
}

uint64_t sub_1D9A9CB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AF8, &qword_1D9C90F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB52AF8, &qword_1D9C90F70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52AF8, &qword_1D9C90F70);
  }

  sub_1D9A9FA84(v7, v11, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
  sub_1D9A9F0AC(&qword_1ECB529C0, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress, &unk_1D9C90634);
  sub_1D9C7D80C();
  return sub_1D9A9FA24(v11, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
}

BOOL sub_1D9A9CD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  v86 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AF0, &qword_1D9C90F68);
  MEMORY[0x1EEE9AC00](v84);
  v8 = &v78 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AF8, &qword_1D9C90F70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v78 - v12;
  v13 = type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  v14 = *(v13 - 8);
  v89 = v13;
  v90 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v87 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52B00, &qword_1D9C90F78);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52B08, &qword_1D9C90F80);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v88 = (&v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78 - v22;
  swift_beginAccess();
  v24 = *(a1 + 16);
  swift_beginAccess();
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  v80 = v6;
  v81 = v4;
  v82 = v8;
  v25 = a2;
  v26 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  swift_beginAccess();
  v27 = a1;
  v28 = a1 + v26;
  v29 = v25;
  sub_1D99AB100(v28, v23, &qword_1ECB52B08, &qword_1D9C90F80);
  v30 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  swift_beginAccess();
  v31 = *(v16 + 48);
  sub_1D99AB100(v23, v18, &qword_1ECB52B08, &qword_1D9C90F80);
  sub_1D99AB100(v25 + v30, &v18[v31], &qword_1ECB52B08, &qword_1D9C90F80);
  v32 = v89;
  v33 = *(v90 + 6);
  v34 = v18;
  if (v33(v18, 1, v89) == 1)
  {

    sub_1D99A6AE0(v23, &qword_1ECB52B08, &qword_1D9C90F80);
    v35 = v33(&v18[v31], 1, v32);
    v36 = v27;
    if (v35 == 1)
    {
      sub_1D99A6AE0(v34, &qword_1ECB52B08, &qword_1D9C90F80);
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v52 = v88;
  sub_1D99AB100(v18, v88, &qword_1ECB52B08, &qword_1D9C90F80);
  if (v33(&v18[v31], 1, v32) == 1)
  {

    sub_1D99A6AE0(v23, &qword_1ECB52B08, &qword_1D9C90F80);
    sub_1D9A9FA24(v52, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
LABEL_16:
    v53 = &qword_1ECB52B00;
    v54 = &qword_1D9C90F78;
    v55 = v34;
LABEL_25:
    sub_1D99A6AE0(v55, v53, v54);
    goto LABEL_26;
  }

  v90 = v23;
  v79 = v18;
  v56 = &v18[v31];
  v57 = v87;
  sub_1D9A9FA84(v56, v87, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  v36 = v27;
  if (*v52 != *v57 || v52[1] != v57[1])
  {

    sub_1D9A9FA24(v57, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
    sub_1D99A6AE0(v90, &qword_1ECB52B08, &qword_1D9C90F80);
    sub_1D9A9FA24(v52, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
    v55 = v79;
    v53 = &qword_1ECB52B08;
    v54 = &qword_1D9C90F80;
    goto LABEL_25;
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);

  v58 = sub_1D9C7DC2C();
  sub_1D9A9FA24(v57, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  sub_1D99A6AE0(v90, &qword_1ECB52B08, &qword_1D9C90F80);
  sub_1D9A9FA24(v52, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  sub_1D99A6AE0(v79, &qword_1ECB52B08, &qword_1D9C90F80);
  if ((v58 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_5:
  v37 = (v36 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  v40 = (v29 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  swift_beginAccess();
  if ((v38 != *v40 || v39 != v40[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v41 = (v36 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = (v29 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  swift_beginAccess();
  if ((v42 != *v44 || v43 != v44[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v45 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  swift_beginAccess();
  v46 = v85;
  sub_1D99AB100(v36 + v45, v85, &qword_1ECB52AF8, &qword_1D9C90F70);
  v47 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  swift_beginAccess();
  v48 = *(v84 + 48);
  v49 = v82;
  sub_1D99AB100(v46, v82, &qword_1ECB52AF8, &qword_1D9C90F70);
  sub_1D99AB100(v29 + v47, v49 + v48, &qword_1ECB52AF8, &qword_1D9C90F70);
  v50 = *(v86 + 48);
  v51 = v81;
  if (v50(v49, 1, v81) != 1)
  {
    v59 = v83;
    sub_1D99AB100(v49, v83, &qword_1ECB52AF8, &qword_1D9C90F70);
    if (v50(v49 + v48, 1, v51) != 1)
    {
      v61 = v49 + v48;
      v62 = v80;
      sub_1D9A9FA84(v61, v80, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
      v63 = sub_1D9A9FAEC(v59, v62);
      sub_1D9A9FA24(v62, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
      sub_1D99A6AE0(v46, &qword_1ECB52AF8, &qword_1D9C90F70);
      sub_1D9A9FA24(v59, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
      sub_1D99A6AE0(v49, &qword_1ECB52AF8, &qword_1D9C90F70);
      if (v63)
      {
        goto LABEL_30;
      }

LABEL_26:

      return 0;
    }

    sub_1D99A6AE0(v46, &qword_1ECB52AF8, &qword_1D9C90F70);
    sub_1D9A9FA24(v59, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
    goto LABEL_24;
  }

  sub_1D99A6AE0(v46, &qword_1ECB52AF8, &qword_1D9C90F70);
  if (v50(v49 + v48, 1, v51) != 1)
  {
LABEL_24:
    v53 = &qword_1ECB52AF0;
    v54 = &qword_1D9C90F68;
    v55 = v49;
    goto LABEL_25;
  }

  sub_1D99A6AE0(v49, &qword_1ECB52AF8, &qword_1D9C90F70);
LABEL_30:
  v64 = (v36 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  swift_beginAccess();
  v65 = *v64;
  v66 = v64[1];
  v67 = (v29 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  swift_beginAccess();
  if ((v65 != *v67 || v66 != v67[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v68 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
  swift_beginAccess();
  v69 = *(v36 + v68);
  v70 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
  swift_beginAccess();
  v71 = *(v29 + v70);

  v72 = sub_1D9A25ADC(v69, v71);

  if ((v72 & 1) == 0)
  {
    goto LABEL_26;
  }

  v73 = (v36 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  swift_beginAccess();
  v74 = *v73;
  v75 = v73[1];
  v76 = (v29 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  swift_beginAccess();
  if (v74 == *v76 && v75 == v76[1])
  {

    return 1;
  }

  v77 = sub_1D9C7E7DC();

  return (v77 & 1) != 0;
}

uint64_t sub_1D9A9D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D9C7D3BC();
  v4 = *(a1 + 20);
  if (qword_1ECB50B00 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1ECB52908;
}

uint64_t sub_1D9A9D90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B30, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi, &unk_1D9C908CC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9D9AC(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A00, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi, &unk_1D9C90904);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9DA18(uint64_t a1, uint64_t a2)
{
  sub_1D9A9F0AC(&qword_1ECB52A00, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi, &unk_1D9C90904);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9DA98()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71118);
  __swift_project_value_buffer(v0, qword_1ECB71118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lat";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lng";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9DC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1D9C7D5BC();
    }
  }

  return result;
}

uint64_t sub_1D9A9DCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1D9C7D7BC(), !v4))
  {
    if (v3[1] == 0.0 || (result = sub_1D9C7D7BC(), !v4))
    {
      type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A9DDE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B38, type metadata accessor for Com_Apple_Visualintelligence_LatLng, &unk_1D9C90764);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9DE80(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB529E0, type metadata accessor for Com_Apple_Visualintelligence_LatLng, &unk_1D9C9079C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9DEEC(uint64_t a1, uint64_t a2)
{
  sub_1D9A9F0AC(&qword_1ECB529E0, type metadata accessor for Com_Apple_Visualintelligence_LatLng, &unk_1D9C9079C);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9DF68(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9E01C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71130);
  __swift_project_value_buffer(v0, qword_1ECB71130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D9C902E0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "country";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "country_code";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "administrative_area";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "administrative_area_code";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sub_administrative_area";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "locality";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dependent_locality";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "thoroughfare";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "sub_throughfare";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "post_code";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9E3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            sub_1D9C7D57C();
            goto LABEL_17;
          }

LABEL_16:
          sub_1D9C7D5CC();
          goto LABEL_17;
        }

        if (result == 8 || result == 9 || result == 10)
        {
          goto LABEL_16;
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_16;
      }

LABEL_17:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A9E514(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = v4[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_1D9C7D7CC(), !v5))
  {
    v9 = v4[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_1D9C7D7CC(), !v5))
    {
      v11 = v4[5];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v4[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_1D9C7D7CC(), !v5))
      {
        v13 = v4[7];
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = v4[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v14 || (result = sub_1D9C7D7CC(), !v5))
        {
          v15 = v4[9];
          v16 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v16 = v4[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v16 || (result = sub_1D9C7D7CC(), !v5))
          {
            v17 = v4[11];
            v18 = HIBYTE(v17) & 0xF;
            if ((v17 & 0x2000000000000000) == 0)
            {
              v18 = v4[10] & 0xFFFFFFFFFFFFLL;
            }

            if (!v18 || (result = sub_1D9C7D7CC(), !v5))
            {
              if (!*(v4[12] + 16) || (result = sub_1D9C7D7AC(), !v5))
              {
                v19 = v4[14];
                v20 = HIBYTE(v19) & 0xF;
                if ((v19 & 0x2000000000000000) == 0)
                {
                  v20 = v4[13] & 0xFFFFFFFFFFFFLL;
                }

                if (!v20 || (result = sub_1D9C7D7CC(), !v5))
                {
                  v21 = v4[16];
                  v22 = HIBYTE(v21) & 0xF;
                  if ((v21 & 0x2000000000000000) == 0)
                  {
                    v22 = v4[15] & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v22 || (result = sub_1D9C7D7CC(), !v5))
                  {
                    v23 = v4[18];
                    v24 = HIBYTE(v23) & 0xF;
                    if ((v23 & 0x2000000000000000) == 0)
                    {
                      v24 = v4[17] & 0xFFFFFFFFFFFFLL;
                    }

                    if (!v24 || (result = sub_1D9C7D7CC(), !v5))
                    {
                      type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
                      return sub_1D9C7D3AC();
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

uint64_t sub_1D9A9E74C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  a2[7] = 0xE000000000000000;
  a2[8] = 0;
  a2[9] = 0xE000000000000000;
  a2[10] = 0;
  a2[11] = 0xE000000000000000;
  a2[12] = MEMORY[0x1E69E7CC0];
  a2[13] = 0;
  a2[14] = 0xE000000000000000;
  a2[15] = 0;
  a2[16] = 0xE000000000000000;
  a2[17] = 0;
  a2[18] = 0xE000000000000000;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A9E7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D9A9E830(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D9A9E8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B40, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress, &unk_1D9C905FC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9E998(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB529C0, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress, &unk_1D9C90634);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9EA04(uint64_t a1, uint64_t a2)
{
  sub_1D9A9F0AC(&qword_1ECB529C0, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress, &unk_1D9C90634);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9EA84()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71148);
  __swift_project_value_buffer(v0, qword_1ECB71148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "languageCode";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "phoneticName";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9EC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 4 || result == 2)
    {
      sub_1D9C7D5CC();
    }
  }

  return result;
}

uint64_t sub_1D9A9ED20(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = v4[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_1D9C7D7CC(), !v5))
  {
    v9 = v4[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_1D9C7D7CC(), !v5))
    {
      v11 = v4[5];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v4[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_1D9C7D7CC(), !v5))
      {
        type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A9EE14@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A9EE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B48, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName, &unk_1D9C90494);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9EF30(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName, &unk_1D9C904CC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9EF9C(uint64_t a1, uint64_t a2)
{
  sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName, &unk_1D9C904CC);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9F0AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9A9FA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A9FA84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A9FAEC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1D9C7E7DC() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1D9C7E7DC() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_1D9C7E7DC() & 1) == 0 || (sub_1D9A1EF04(a1[12], a2[12]) & 1) == 0 || (a1[13] != a2[13] || a1[14] != a2[14]) && (sub_1D9C7E7DC() & 1) == 0 || (a1[15] != a2[15] || a1[16] != a2[16]) && (sub_1D9C7E7DC() & 1) == 0 || (a1[17] != a2[17] || a1[18] != a2[18]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9FCD8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1D9A9CD50(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9FDC0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9FEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0, &qword_1D9C90F20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AB8, &qword_1D9C90F38);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D99AB100(a1, &v20 - v12, &qword_1ECB52AA0, &qword_1D9C90F20);
  sub_1D99AB100(a2, &v13[v15], &qword_1ECB52AA0, &qword_1D9C90F20);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB52AA0, &qword_1D9C90F20);
LABEL_9:
      type metadata accessor for Com_Apple_Visualintelligence_AspireResult(0);
      sub_1D9C7D3CC();
      sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB52AA0, &qword_1D9C90F20);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
LABEL_6:
    sub_1D99A6AE0(v13, &qword_1ECB52AB8, &qword_1D9C90F38);
    goto LABEL_7;
  }

  sub_1D9A9FA84(&v13[v15], v7, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  v18 = sub_1D9AA09D8(v10, v7);
  sub_1D9A9FA24(v7, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  sub_1D99A6AE0(v13, &qword_1ECB52AA0, &qword_1D9C90F20);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9AA0208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7D33C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AD8, &qword_1D9C90F58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AE0, &qword_1D9C90F60);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_12;
  }

  v15 = v12;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_12;
  }

  v26 = v7;
  v27 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  v16 = *(v27 + 32);
  v17 = *(v15 + 48);
  sub_1D99AB100(a1 + v16, v14, &qword_1ECB52AD8, &qword_1D9C90F58);
  v18 = a2 + v16;
  v19 = v5;
  sub_1D99AB100(v18, &v14[v17], &qword_1ECB52AD8, &qword_1D9C90F58);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v17], 1, v4) == 1)
    {
      sub_1D99A6AE0(v14, &qword_1ECB52AD8, &qword_1D9C90F58);
LABEL_15:
      sub_1D9C7D3CC();
      sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1D9C7DC2C();
      return v21 & 1;
    }

    goto LABEL_11;
  }

  sub_1D99AB100(v14, v10, &qword_1ECB52AD8, &qword_1D9C90F58);
  if (v20(&v14[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_1D99A6AE0(v14, &qword_1ECB52AE0, &qword_1D9C90F60);
    goto LABEL_12;
  }

  v23 = v26;
  (*(v5 + 32))(v26, &v14[v17], v4);
  sub_1D9A9F0AC(&qword_1ECB52AE8, MEMORY[0x1E69AA930], MEMORY[0x1E69AA938]);
  v24 = sub_1D9C7DC2C();
  v25 = *(v19 + 8);
  v25(v23, v4);
  v25(v10, v4);
  sub_1D99A6AE0(v14, &qword_1ECB52AD8, &qword_1D9C90F58);
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_12:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1D9AA05F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AC8, &qword_1D9C90F48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AD0, &qword_1D9C90F50);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1D9C7E7DC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_17;
  }

  v22 = v7;
  v21 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  v14 = *(v21 + 40);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB52AC8, &qword_1D9C90F48);
  sub_1D99AB100(a2 + v14, &v13[v15], &qword_1ECB52AC8, &qword_1D9C90F48);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB52AC8, &qword_1D9C90F48);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v22;
      sub_1D9A9FA84(&v13[v15], v22, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
      v18 = sub_1D9AA0208(v10, v17);
      sub_1D9A9FA24(v17, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
      sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
      sub_1D99A6AE0(v13, &qword_1ECB52AC8, &qword_1D9C90F48);
      if (v18)
      {
        goto LABEL_13;
      }

LABEL_17:
      v19 = 0;
      return v19 & 1;
    }

    sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
LABEL_11:
    sub_1D99A6AE0(v13, &qword_1ECB52AD0, &qword_1D9C90F50);
    goto LABEL_17;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1D99A6AE0(v13, &qword_1ECB52AC8, &qword_1D9C90F48);
LABEL_13:
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || (sub_1D9A25ADC(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = sub_1D9C7DC2C();
  return v19 & 1;
}

uint64_t sub_1D9AA09D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AC0, &qword_1D9C90F40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25 - v17;
  v20 = *(v19 + 56);
  sub_1D9AA0DD4(a1, &v25 - v17);
  sub_1D9AA0DD4(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9AA0DD4(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D9A9FA84(&v18[v20], v9, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      v21 = sub_1D9AA05F0(v15, v9);
      sub_1D9A9FA24(v9, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      sub_1D9A9FA24(v15, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      sub_1D9A9FA24(v18, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
      return v21 & 1;
    }

    v22 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet;
    v23 = v15;
    goto LABEL_9;
  }

  sub_1D9AA0DD4(v18, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet;
    v23 = v12;
LABEL_9:
    sub_1D9A9FA24(v23, v22);
    sub_1D99A6AE0(v18, &qword_1ECB52AC0, &qword_1D9C90F40);
LABEL_12:
    v21 = 0;
    return v21 & 1;
  }

  sub_1D9A9FA84(&v18[v20], v6, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
  if ((sub_1D9A22A44(*v12, *v6) & 1) == 0 || (sub_1D9C7D3CC(), sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]), (sub_1D9C7DC2C() & 1) == 0))
  {
    sub_1D9A9FA24(v6, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    sub_1D9A9FA24(v12, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    sub_1D9A9FA24(v18, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    goto LABEL_12;
  }

  sub_1D9A9FA24(v6, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
  sub_1D9A9FA24(v12, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
  sub_1D9A9FA24(v18, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D9AA0DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AA0E38(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D9AA0F30(uint64_t a1)
{
  sub_1D9A9BC90(319, &qword_1ECB52B88, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      sub_1D9A9BC90(319, &qword_1ECB52B90, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9AA1070(uint64_t a1)
{
  sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    sub_1D9A9BC90(319, &qword_1ECB52BA8, MEMORY[0x1E69AA930], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9AA11A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1D9A9BC90(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9AA1258(uint64_t a1)
{
  result = sub_1D9C7D3CC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t ObjectKnowledge.knowledgeGraphID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ObjectKnowledge.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for ObjectKnowledge(uint64_t a1)
{
  result = qword_1EDD2BB98;
  if (!qword_1EDD2BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ObjectKnowledge.shortDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectKnowledge(0) + 32));

  return v1;
}

uint64_t ObjectKnowledge.detailedDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectKnowledge(0) + 36));

  return v1;
}

double ObjectKnowledge.knowledgeProperties.getter()
{
  type metadata accessor for ObjectKnowledge(0);

  return result;
}

uint64_t ObjectKnowledge.serializedDomainType.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ObjectKnowledge(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ObjectKnowledge.serializedDomainResponse.getter()
{
  v1 = v0 + *(type metadata accessor for ObjectKnowledge(0) + 56);
  v2 = *v1;
  sub_1D99DF410(*v1, *(v1 + 8));
  return v2;
}

void ObjectKnowledge.serializedDomainResponse.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ObjectKnowledge(0) + 56);
  sub_1D99B3C44(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t ObjectKnowledge.csuDataCarrier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ObjectKnowledge(0) + 60));
  v4 = v3[6];
  v5 = v3[4];
  v18 = v3[5];
  v19 = v4;
  v6 = v3[4];
  v8 = v3[2];
  v16 = v3[3];
  v7 = v16;
  v17 = v6;
  v9 = v3[1];
  v15[0] = *v3;
  v10 = v3[2];
  v11 = *v3;
  v15[1] = v3[1];
  v15[2] = v10;
  v12 = v3[6];
  *(a1 + 80) = v18;
  *(a1 + 96) = v12;
  *(a1 + 48) = v7;
  *(a1 + 64) = v5;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  v20 = *(v3 + 28);
  *(a1 + 112) = *(v3 + 28);
  *a1 = v11;
  return sub_1D99CF644(v15, v14);
}

unint64_t sub_1D9AA1748(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x69616E626D756874;
      break;
    case 3:
    case 9:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 7:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4C5255626577;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x4361746144757363;
      break;
    case 12:
      result = 0x65726F6373;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1D9AA18AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9AA41C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9AA18E0(uint64_t a1)
{
  v2 = sub_1D9AA3A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9AA191C(uint64_t a1)
{
  v2 = sub_1D9AA3A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObjectKnowledge.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52BD8, &qword_1D9C91090);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9AA3A20();
  sub_1D9C7E96C();
  LOBYTE(v38[0]) = 0;
  sub_1D9C7E6BC();
  if (!v2)
  {
    LOBYTE(v38[0]) = 1;
    sub_1D9C7E6EC();
    v57 = type metadata accessor for ObjectKnowledge(0);
    LOBYTE(v38[0]) = 2;
    sub_1D9C7B80C();
    sub_1D9AA45E4(&qword_1ECB52BE8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D9C7E6DC();
    LOBYTE(v38[0]) = 3;
    sub_1D9C7E71C();
    LOBYTE(v38[0]) = 4;
    sub_1D9C7E6EC();
    LOBYTE(v38[0]) = 5;
    sub_1D9C7E6EC();
    LOBYTE(v38[0]) = 6;
    sub_1D9C7E6DC();
    v56[0] = *(v3 + v57[11]);
    v55 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52BF0, &qword_1D9C91098);
    sub_1D9AA3B70(&qword_1ECB52BF8, sub_1D9AA3A74, MEMORY[0x1E69E6300]);
    sub_1D9C7E74C();
    v9 = (v3 + v57[12]);
    v10 = v9[1];
    v54[0] = *v9;
    v54[1] = v10;
    v11 = v9[3];
    v13 = *v9;
    v12 = v9[1];
    v54[2] = v9[2];
    v54[3] = v11;
    v50 = v13;
    v51 = v12;
    v14 = v9[3];
    v52 = v9[2];
    v53 = v14;
    v49 = 8;
    sub_1D99AB100(v54, v38, &qword_1ECB51B80, &qword_1D9C89138);
    sub_1D9AA3AC8();
    sub_1D9C7E6DC();
    v48[0] = v50;
    v48[1] = v51;
    v48[2] = v52;
    v48[3] = v53;
    sub_1D99A6AE0(v48, &qword_1ECB51B80, &qword_1D9C89138);
    LOBYTE(v38[0]) = 9;
    sub_1D9C7E6CC();
    v15 = (v3 + v57[14]);
    v16 = v15[1];
    v46 = *v15;
    v47 = v16;
    v45 = 10;
    sub_1D99DF410(v46, v16);
    sub_1D99DF2FC();
    sub_1D9C7E6DC();
    sub_1D99B3C44(v46, v47);
    v17 = (v3 + v57[15]);
    v18 = v17[5];
    v19 = v17[3];
    v41 = v17[4];
    v42 = v18;
    v20 = v17[5];
    v43 = v17[6];
    v21 = v17[1];
    v38[0] = *v17;
    v38[1] = v21;
    v22 = v17[3];
    v24 = *v17;
    v23 = v17[1];
    v39 = v17[2];
    v40 = v22;
    v34 = v41;
    v35 = v20;
    v36 = v17[6];
    v30 = v24;
    v31 = v23;
    v44 = *(v17 + 28);
    v37 = *(v17 + 28);
    v32 = v39;
    v33 = v19;
    v29 = 11;
    sub_1D99CF644(v38, v27);
    sub_1D9AA3B1C();
    sub_1D9C7E74C();
    v27[4] = v34;
    v27[5] = v35;
    v27[6] = v36;
    v28 = v37;
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v27[3] = v33;
    sub_1D99CF67C(v27);
    v26[15] = 12;
    sub_1D9C7E71C();
  }

  return (*(v6 + 8))(v8, v5);
}

double ObjectKnowledge.hash(into:)(uint64_t a1)
{
  v3 = sub_1D9C7B80C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  if (*(v1 + 8))
  {
    sub_1D9C7E8FC();
    sub_1D9C7DD6C();
  }

  else
  {
    sub_1D9C7E8FC();
  }

  sub_1D9C7DD6C();
  v12 = type metadata accessor for ObjectKnowledge(0);
  sub_1D99AB100(v1 + v12[6], v11, &qword_1ECB51FD0, &unk_1D9C862F0);
  v13 = *(v4 + 48);
  if (v13(v11, 1, v3) == 1)
  {
    v14 = v4;
    sub_1D9C7E8FC();
  }

  else
  {
    v15 = *(v4 + 32);
    v31 = v8;
    v16 = v32;
    v15(v32, v11, v3);
    sub_1D9C7E8FC();
    sub_1D9AA45E4(&qword_1ECB52C18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D9C7DBDC();
    v14 = v4;
    v17 = v16;
    v8 = v31;
    (*(v4 + 8))(v17, v3);
  }

  sub_1D9C7E91C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D99AB100(v1 + v12[10], v8, &qword_1ECB51FD0, &unk_1D9C862F0);
  if (v13(v8, 1, v3) == 1)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    v18 = v32;
    (*(v14 + 32))(v32, v8, v3);
    sub_1D9C7E8FC();
    sub_1D9AA45E4(&qword_1ECB52C18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D9C7DBDC();
    (*(v14 + 8))(v18, v3);
  }

  sub_1D9A2F6DC(a1, *(v1 + v12[11]));
  v19 = (v1 + v12[12]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = *(v19 + 2);
    v43 = *(v19 + 1);
    v44 = v22;
    v45 = *(v19 + 3);
    v41 = v21;
    v42 = v20;
    sub_1D9C7E8FC();
    sub_1D99FDE2C(a1);
  }

  else
  {
    sub_1D9C7E8FC();
  }

  v23 = (v1 + v12[13]);
  if (*(v23 + 8) == 1)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    v24 = *v23;
    sub_1D9C7E8FC();
    MEMORY[0x1DA73EAC0](v24);
  }

  if (*(v1 + v12[14] + 8) >> 60 == 15)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    sub_1D9C7E8FC();
    sub_1D9C7B88C();
  }

  v25 = (v1 + v12[15]);
  v26 = v25[5];
  v37 = v25[4];
  v38 = v26;
  v39 = v25[6];
  v40 = *(v25 + 28);
  v27 = v25[1];
  v33 = *v25;
  v28 = v25[2];
  v29 = v25[3];
  v34 = v27;
  v35 = v28;
  v36 = v29;
  ObjectKnowledgeCSUCarrier.hash(into:)(a1);
  sub_1D9C7E91C();
  return result;
}

uint64_t ObjectKnowledge.hashValue.getter()
{
  sub_1D9C7E8DC();
  ObjectKnowledge.hash(into:)(v1);
  return sub_1D9C7E93C();
}

void ObjectKnowledge.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v75 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52C20, &qword_1D9C910A0);
  v10 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v12 = v75 - v11;
  v13 = type metadata accessor for ObjectKnowledge(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v15 + v16[12];
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v82 = v17;
  v83 = v15;
  v84 = v16;
  v18 = v15 + v16[14];
  v80 = a1;
  v81 = v18;
  *v18 = xmmword_1D9C8CD70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9AA3A20();
  v78 = v12;
  sub_1D9C7E95C();
  if (v2)
  {
    v85 = v2;
    v23 = v84;
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    v24 = 0;
    v25 = v83;
    goto LABEL_4;
  }

  v19 = v10;
  LOBYTE(v94) = 0;
  v20 = v78;
  v21 = v79;
  v22 = sub_1D9C7E5AC();
  v32 = v83;
  *v83 = v22;
  v32[1] = v33;
  LOBYTE(v94) = 1;
  v32[2] = sub_1D9C7E5FC();
  v32[3] = v34;
  v35 = sub_1D9C7B80C();
  LOBYTE(v94) = 2;
  v36 = sub_1D9AA45E4(&qword_1ECB52C28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v76 = 0;
  sub_1D9C7E5EC();
  v85 = 0;
  v75[1] = v36;
  v75[2] = v35;
  v37 = v84;
  sub_1D9A59E80(v9, v32 + v84[6]);
  LOBYTE(v94) = 3;
  v38 = v85;
  sub_1D9C7E62C();
  if (v38)
  {
    v85 = v38;
    (*(v19 + 8))(v20, v21);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v25 = v32;
    v44 = v76;
    goto LABEL_9;
  }

  *(v32 + v37[7]) = v39;
  LOBYTE(v94) = 4;
  v46 = sub_1D9C7E5FC();
  v44 = v76;
  v47 = (v32 + v37[8]);
  *v47 = v46;
  v47[1] = v48;
  LOBYTE(v94) = 5;
  v49 = sub_1D9C7E5FC();
  v50 = (v32 + v37[9]);
  *v50 = v49;
  v50[1] = v51;
  LOBYTE(v94) = 6;
  sub_1D9C7E5EC();
  v85 = 0;
  sub_1D9A59E80(v6, v32 + v37[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52BF0, &qword_1D9C91098);
  LOBYTE(v102) = 7;
  sub_1D9AA3B70(&qword_1ECB52C30, sub_1D9AA3BE8, MEMORY[0x1E69E6330]);
  v52 = v85;
  sub_1D9C7E65C();
  v85 = v52;
  if (v52)
  {
    (*(v19 + 8))(v20, v21);
    v43 = 0;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v25 = v83;
    goto LABEL_9;
  }

  v25 = v83;
  *(v83 + v37[11]) = v94;
  v93 = 8;
  sub_1D9AA3C3C();
  v53 = v85;
  sub_1D9C7E5EC();
  v85 = v53;
  if (v53)
  {
    (*(v19 + 8))(v20, v79);
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v80);

    if (!v44)
    {
    }

    v23 = v84;
    sub_1D99A6AE0(v25 + v84[6], &qword_1ECB51FD0, &unk_1D9C862F0);
    if (v40)
    {

      if (v41)
      {
LABEL_13:

        if ((v42 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    else if (v41)
    {
      goto LABEL_13;
    }

    if (!v42)
    {
LABEL_14:
      v45 = 0;
      v24 = 0;
      if (!v43)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1D99A6AE0(v25 + v23[10], &qword_1ECB51FD0, &unk_1D9C862F0);
    v45 = 0;
    v24 = 0;
    if ((v43 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v88 = v102;
  v89 = v103;
  v90 = v104;
  v91 = v105;
  v54 = v82;
  v55 = *(v82 + 1);
  v92[0] = *v82;
  v92[1] = v55;
  v56 = *(v82 + 3);
  v92[2] = *(v82 + 2);
  v92[3] = v56;
  sub_1D99A6AE0(v92, &qword_1ECB51B80, &qword_1D9C89138);
  v57 = v89;
  *v54 = v88;
  *(v54 + 1) = v57;
  v58 = v91;
  *(v54 + 2) = v90;
  *(v54 + 3) = v58;
  LOBYTE(v94) = 9;
  v59 = v85;
  v60 = sub_1D9C7E5CC();
  v85 = v59;
  if (v59 || (v62 = v83 + v84[13], *v62 = v60, v62[8] = v61 & 1, v87 = 10, sub_1D99DF350(), v63 = v85, sub_1D9C7E5EC(), (v85 = v63) != 0) || (v64 = v94, v65 = v81, sub_1D99B3C44(*v81, *(v81 + 1)), *v65 = v64, v87 = 11, sub_1D9AA3C90(), v66 = v85, sub_1D9C7E65C(), (v85 = v66) != 0))
  {
    (*(v19 + 8))(v78, v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    v45 = 0;
  }

  else
  {
    v67 = v83 + v84[15];
    v68 = v99;
    *(v67 + 4) = v98;
    *(v67 + 5) = v68;
    *(v67 + 6) = v100;
    *(v67 + 28) = v101;
    v69 = v95;
    *v67 = v94;
    *(v67 + 1) = v69;
    v70 = v97;
    *(v67 + 2) = v96;
    *(v67 + 3) = v70;
    v86 = 12;
    v71 = v85;
    sub_1D9C7E62C();
    v85 = v71;
    if (!v71)
    {
      v73 = v72;
      (*(v19 + 8))(v78, v79);
      v74 = v83;
      *(v83 + v84[16]) = v73;
      sub_1D9A702A8(v74, v77);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      sub_1D9A7030C(v74);
      return;
    }

    (*(v19 + 8))(v78, v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    v45 = 1;
  }

  v25 = v83;

  v23 = v84;
  sub_1D99A6AE0(v25 + v84[6], &qword_1ECB51FD0, &unk_1D9C862F0);

  sub_1D99A6AE0(v25 + v23[10], &qword_1ECB51FD0, &unk_1D9C862F0);
LABEL_19:

  v24 = v45;
LABEL_4:
  v26 = *(v82 + 1);
  v102 = *v82;
  v103 = v26;
  v27 = *(v82 + 3);
  v104 = *(v82 + 2);
  v105 = v27;
  sub_1D99A6AE0(&v102, &qword_1ECB51B80, &qword_1D9C89138);
  sub_1D99B3C44(*v81, *(v81 + 1));
  if (v24)
  {
    v28 = v25 + v23[15];
    v29 = *(v28 + 5);
    v98 = *(v28 + 4);
    v99 = v29;
    v100 = *(v28 + 6);
    v101 = *(v28 + 28);
    v30 = *(v28 + 1);
    v94 = *v28;
    v95 = v30;
    v31 = *(v28 + 3);
    v96 = *(v28 + 2);
    v97 = v31;
    sub_1D99CF67C(&v94);
  }
}

uint64_t sub_1D9AA2EA0()
{
  sub_1D9C7E8DC();
  ObjectKnowledge.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9AA2EE4()
{
  sub_1D9C7E8DC();
  ObjectKnowledge.hash(into:)(v1);
  return sub_1D9C7E93C();
}

BOOL _s12VisualLookUp15ObjectKnowledgeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9C7B80C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v108[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v115 = &v108[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v108[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52C70, &qword_1D9C912E8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v108[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v108[-v17];
  v19 = a1[1];
  v20 = a2[1];
  if (v19)
  {
    if (!v20 || (*a1 != *a2 || v19 != v20) && (sub_1D9C7E7DC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v110 = v15;
  v111 = v7;
  v21 = type metadata accessor for ObjectKnowledge(0);
  v116 = a2;
  v22 = *(v21 + 24);
  v23 = a1;
  v24 = *(v13 + 48);
  v112 = v21;
  v113 = v23;
  sub_1D99AB100(v23 + v22, v18, &qword_1ECB51FD0, &unk_1D9C862F0);
  v25 = v116 + v22;
  v26 = v116;
  sub_1D99AB100(v25, v18 + v24, &qword_1ECB51FD0, &unk_1D9C862F0);
  v114 = v5;
  v27 = *(v5 + 48);
  if (v27(v18, 1, v4) == 1)
  {
    if (v27(v18 + v24, 1, v4) == 1)
    {
      sub_1D99A6AE0(v18, &qword_1ECB51FD0, &unk_1D9C862F0);
      goto LABEL_20;
    }

LABEL_16:
    v28 = &qword_1ECB52C70;
    v29 = &qword_1D9C912E8;
    v30 = v18;
LABEL_17:
    sub_1D99A6AE0(v30, v28, v29);
    return 0;
  }

  sub_1D99AB100(v18, v12, &qword_1ECB51FD0, &unk_1D9C862F0);
  if (v27(v18 + v24, 1, v4) == 1)
  {
    (*(v114 + 8))(v12, v4);
    goto LABEL_16;
  }

  v32 = v114;
  v33 = v111;
  (*(v114 + 32))(v111, v18 + v24, v4);
  sub_1D9AA45E4(&qword_1ECB52C80, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v109 = sub_1D9C7DC2C();
  v34 = *(v32 + 8);
  v34(v33, v4);
  v34(v12, v4);
  v26 = v116;
  sub_1D99A6AE0(v18, &qword_1ECB51FD0, &unk_1D9C862F0);
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v36 = v112;
  v35 = v113;
  if (*(v113 + v112[7]) != *(v26 + v112[7]))
  {
    return 0;
  }

  v37 = v112[8];
  v38 = *(v113 + v37);
  v39 = *(v113 + v37 + 8);
  v40 = (v26 + v37);
  if ((v38 != *v40 || v39 != v40[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v41 = v36[9];
  v42 = *(v35 + v41);
  v43 = *(v35 + v41 + 8);
  v44 = (v26 + v41);
  if ((v42 != *v44 || v43 != v44[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v45 = v36[10];
  v46 = *(v13 + 48);
  v47 = v110;
  sub_1D99AB100(v35 + v45, v110, &qword_1ECB51FD0, &unk_1D9C862F0);
  v48 = v116 + v45;
  v49 = v116;
  sub_1D99AB100(v48, v47 + v46, &qword_1ECB51FD0, &unk_1D9C862F0);
  if (v27(v47, 1, v4) == 1)
  {
    if (v27((v47 + v46), 1, v4) == 1)
    {
      sub_1D99A6AE0(v47, &qword_1ECB51FD0, &unk_1D9C862F0);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v50 = v115;
  sub_1D99AB100(v47, v115, &qword_1ECB51FD0, &unk_1D9C862F0);
  if (v27((v47 + v46), 1, v4) == 1)
  {
    (*(v114 + 8))(v50, v4);
    v47 = v110;
LABEL_32:
    v28 = &qword_1ECB52C70;
    v29 = &qword_1D9C912E8;
    v30 = v47;
    goto LABEL_17;
  }

  v51 = v114;
  v52 = v47 + v46;
  v53 = v47;
  v54 = v111;
  (*(v114 + 32))(v111, v52, v4);
  sub_1D9AA45E4(&qword_1ECB52C80, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v55 = sub_1D9C7DC2C();
  v56 = *(v51 + 8);
  v56(v54, v4);
  v56(v50, v4);
  sub_1D99A6AE0(v53, &qword_1ECB51FD0, &unk_1D9C862F0);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  v57 = v113;
  if ((sub_1D9A290D8(*(v113 + v36[11]), *(v49 + v36[11])) & 1) == 0)
  {
    return 0;
  }

  v58 = (v57 + v36[12]);
  v59 = v58[1];
  v165[0] = *v58;
  v165[1] = v59;
  v60 = v58[1];
  v61 = v58[3];
  v166 = v58[2];
  v167 = v61;
  v62 = (v49 + v36[12]);
  v63 = v62[1];
  v168[0] = *v62;
  v168[1] = v63;
  v64 = v62[3];
  v168[2] = v62[2];
  v168[3] = v64;
  v65 = v165[0];
  v141 = v60;
  v142 = v166;
  v143 = v58[3];
  if (!*(&v165[0] + 1))
  {
    if (!*(&v168[0] + 1))
    {
      v157 = *&v165[0];
      v72 = v58[2];
      v158 = v58[1];
      v159 = v72;
      v160 = v58[3];
      sub_1D99AB100(v165, &v149, &qword_1ECB51B80, &qword_1D9C89138);
      sub_1D99AB100(v168, &v149, &qword_1ECB51B80, &qword_1D9C89138);
      sub_1D99A6AE0(&v157, &qword_1ECB51B80, &qword_1D9C89138);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (!*(&v168[0] + 1))
  {
LABEL_40:
    v157 = v165[0];
    v70 = v58[2];
    v158 = v58[1];
    v159 = v70;
    v160 = v58[3];
    v161 = v168[0];
    v71 = v62[2];
    v162 = v62[1];
    v163 = v71;
    v164 = v62[3];
    sub_1D99AB100(v165, &v149, &qword_1ECB51B80, &qword_1D9C89138);
    sub_1D99AB100(v168, &v149, &qword_1ECB51B80, &qword_1D9C89138);
    v28 = &unk_1ECB52C78;
    v29 = &unk_1D9C912F0;
    v30 = &v157;
    goto LABEL_17;
  }

  v149 = v168[0];
  v66 = v62[2];
  v150 = v62[1];
  v151 = v66;
  v152 = v62[3];
  v170[1] = v150;
  v170[2] = v66;
  v170[3] = v152;
  v67 = v58[1];
  v68 = v58[2];
  v169[3] = v58[3];
  v170[0] = v168[0];
  v169[1] = v67;
  v169[2] = v68;
  v169[0] = v165[0];
  sub_1D99AB100(v165, &v157, &qword_1ECB51B80, &qword_1D9C89138);
  sub_1D99AB100(v168, &v157, &qword_1ECB51B80, &qword_1D9C89138);
  v69 = sub_1D99FE618(v169, v170);
  sub_1D99A6AE0(&v149, &qword_1ECB51B80, &qword_1D9C89138);
  v157 = v65;
  v158 = v141;
  v159 = v142;
  v160 = v143;
  sub_1D99A6AE0(&v157, &qword_1ECB51B80, &qword_1D9C89138);
  if (!v69)
  {
    return 0;
  }

LABEL_42:
  v73 = v36[13];
  v74 = (v113 + v73);
  v75 = *(v113 + v73 + 8);
  v76 = (v116 + v73);
  v77 = *(v116 + v73 + 8);
  if (v75)
  {
    if (v77)
    {
      goto LABEL_48;
    }

    return 0;
  }

  if (*v74 != *v76)
  {
    LOBYTE(v77) = 1;
  }

  if (v77)
  {
    return 0;
  }

LABEL_48:
  v78 = v36[14];
  v79 = v113 + v78;
  v81 = *(v113 + v78);
  v80 = *(v113 + v78 + 8);
  v82 = (v116 + v78);
  v84 = *v82;
  v83 = v82[1];
  if (v80 >> 60 == 15)
  {
    if (v83 >> 60 == 15)
    {
      sub_1D99DF410(*v79, *(v79 + 1));
      sub_1D99DF410(v84, v83);
      sub_1D99B3C44(v81, v80);
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (v83 >> 60 == 15)
  {
LABEL_52:
    sub_1D99DF410(*v79, *(v79 + 1));
    sub_1D99DF410(v84, v83);
    sub_1D99B3C44(v81, v80);
    sub_1D99B3C44(v84, v83);
    return 0;
  }

  sub_1D99DF410(*v79, *(v79 + 1));
  sub_1D99DF410(v84, v83);
  v85 = sub_1D99FBD74(v81, v80, v84, v83);
  sub_1D99B3C44(v84, v83);
  sub_1D99B3C44(v81, v80);
  if (!v85)
  {
    return 0;
  }

LABEL_54:
  v86 = v113;
  v87 = v113 + v36[15];
  v88 = *(v87 + 5);
  v89 = *(v87 + 3);
  v137 = *(v87 + 4);
  v138 = v88;
  v90 = *(v87 + 5);
  v139 = *(v87 + 6);
  v140 = *(v87 + 28);
  v91 = *(v87 + 1);
  v134[0] = *v87;
  v134[1] = v91;
  v92 = *(v87 + 3);
  v94 = *v87;
  v93 = *(v87 + 1);
  v135 = *(v87 + 2);
  v136 = v92;
  v130 = v137;
  v131 = v90;
  v132 = *(v87 + 6);
  v133 = *(v87 + 28);
  v126 = v94;
  v127 = v93;
  v128 = v135;
  v129 = v89;
  v95 = v116;
  v96 = v116 + v36[15];
  v97 = *(v96 + 5);
  v98 = *(v96 + 3);
  v145 = *(v96 + 4);
  v146 = v97;
  v99 = *(v96 + 5);
  v147 = *(v96 + 6);
  v100 = *v96;
  v101 = *(v96 + 1);
  v102 = *(v96 + 3);
  v143 = *(v96 + 2);
  v144 = v102;
  v103 = *(v96 + 1);
  v104 = *(v96 + 2);
  v105 = *v96;
  v141 = v100;
  v142 = v103;
  v106 = *(v96 + 6);
  v123 = v99;
  v124 = v106;
  v118 = v105;
  v148 = *(v96 + 28);
  v125 = *(v96 + 28);
  v119 = v101;
  v120 = v104;
  v121 = v98;
  v122 = v145;
  sub_1D99CF644(v134, v117);
  sub_1D99CF644(&v141, v117);
  v107 = _s12VisualLookUp25ObjectKnowledgeCSUCarrierV2eeoiySbAC_ACtFZ_0(&v126, &v118);
  v153 = v122;
  v154 = v123;
  v155 = v124;
  v149 = v118;
  v150 = v119;
  v156 = v125;
  v151 = v120;
  v152 = v121;
  sub_1D99CF67C(&v149);
  v161 = v130;
  v162 = v131;
  v163 = v132;
  LODWORD(v164) = v133;
  v157 = v126;
  v158 = v127;
  v159 = v128;
  v160 = v129;
  sub_1D99CF67C(&v157);
  if ((v107 & 1) == 0)
  {
    return 0;
  }

  return *(v86 + v36[16]) == *(v95 + v36[16]);
}

unint64_t sub_1D9AA3A20()
{
  result = qword_1ECB52BE0;
  if (!qword_1ECB52BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52BE0);
  }

  return result;
}

unint64_t sub_1D9AA3A74()
{
  result = qword_1ECB52C00;
  if (!qword_1ECB52C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C00);
  }

  return result;
}

unint64_t sub_1D9AA3AC8()
{
  result = qword_1ECB52C08;
  if (!qword_1ECB52C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C08);
  }

  return result;
}

unint64_t sub_1D9AA3B1C()
{
  result = qword_1ECB52C10;
  if (!qword_1ECB52C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C10);
  }

  return result;
}

uint64_t sub_1D9AA3B70(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB52BF0, &qword_1D9C91098);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9AA3BE8()
{
  result = qword_1ECB52C38;
  if (!qword_1ECB52C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C38);
  }

  return result;
}

unint64_t sub_1D9AA3C3C()
{
  result = qword_1ECB52C40;
  if (!qword_1ECB52C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C40);
  }

  return result;
}

unint64_t sub_1D9AA3C90()
{
  result = qword_1ECB52C48;
  if (!qword_1ECB52C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C48);
  }

  return result;
}

void sub_1D9AA3D54(uint64_t a1)
{
  sub_1D9AA3F1C(319, &qword_1EDD2C5E0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9A587D8(319);
    if (v2 <= 0x3F)
    {
      sub_1D9AA3F1C(319, &qword_1EDD2A778, &type metadata for ObjectKnowledge.Property, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1D9AA3F1C(319, qword_1EDD2B998, &type metadata for ThirdPartyObject, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1D9AA3F1C(319, &qword_1EDD2A6F8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D9AA3F1C(319, &qword_1EDD2C318, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
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

void sub_1D9AA3F1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ObjectKnowledge.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectKnowledge.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}