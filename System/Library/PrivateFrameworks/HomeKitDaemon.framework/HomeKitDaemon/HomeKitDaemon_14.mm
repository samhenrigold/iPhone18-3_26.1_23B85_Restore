uint64_t sub_2296AAC58@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  sub_2296AF1D0(v1 + *(v6 + 24), v5);
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22967B128(v5, a1);
  }

  sub_22A4DC28C();
  v9 = *(v7 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_27D87DF28;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_22953EAE4(v5, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_2296AADDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  sub_2296AF1D0(v1 + *(v6 + 32), v5);
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22967B128(v5, a1);
  }

  sub_22A4DC28C();
  v9 = *(v7 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_27D87DF28;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_22953EAE4(v5, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_2296AAF60()
{
  v1 = (v0 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2296AAFB4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  sub_2296AF1D0(v1 + *(v6 + 28), v5);
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22967B128(v5, a1);
  }

  sub_22A4DC28C();
  v9 = *(v7 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_27D87DF28;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_22953EAE4(v5, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_2296AB138()
{
  v1 = (v0 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2296AB18C()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB7C8);
  __swift_project_value_buffer(v0, qword_27D8AB7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5779B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "modified_characteristics";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "associated_services";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "source";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_2296AB3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22A4DC2CC();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v11 = v4;
          type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0);
          sub_2296AEAF8(&qword_27D87ED18, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService, &unk_22A57D7E8);
          goto LABEL_15;
        }

        if (result == 4)
        {
          type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
          sub_22A4DC33C();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_2296AB584(a1, v5, a2, a3);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v11 = v4;
          type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
          sub_2296AEAF8(&qword_27D87ED30, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic, &unk_22A57D860);
LABEL_15:
          v4 = v11;
          sub_22A4DC35C();
        }
      }

LABEL_5:
      result = sub_22A4DC2CC();
    }
  }

  return result;
}

uint64_t sub_2296AB584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);
  return sub_22A4DC36C();
}

uint64_t sub_2296AB638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2296AB7C8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
      sub_2296AEAF8(&qword_27D87ED30, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic, &unk_22A57D860);
      sub_22A4DC43C();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0);
      sub_2296AEAF8(&qword_27D87ED18, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService, &unk_22A57D7E8);
      sub_22A4DC43C();
    }

    sub_2296AB9BC(v3, a1, a2, a3);
    type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AB7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  sub_2296AF1D0(a1 + *(v12 + 28), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22953EAE4(v7, &qword_27D87CC38, &unk_22A5784B0);
  }

  sub_22967B128(v7, v11);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);
  sub_22A4DC44C();
  return sub_2296B1D60(v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
}

uint64_t sub_2296AB9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_2296ABA34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  sub_22A4DC28C();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v8 = &a2[*(a1 + 32)];
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t sub_2296ABAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2296ABB60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2296ABC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED80, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent, &unk_22A57D738);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296ABCC8(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87ED48, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent, &unk_22A57D770);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296ABD34(uint64_t a1, uint64_t a2)
{
  sub_2296AEAF8(&qword_27D87ED48, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent, &unk_22A57D770);

  return sub_22A4DC39C();
}

uint64_t sub_2296ABDB4()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB7E0);
  __swift_project_value_buffer(v0, qword_27D8AB7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5779B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "characteristic_type";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "last_known_value";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "last_known_value_update_time";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "previous_value";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_2296ABFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        goto LABEL_11;
      }
    }

    else if (result == 1)
    {
LABEL_2:
      type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
      sub_22A4DC32C();
    }

    else if (result == 2)
    {
LABEL_11:
      type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
      sub_22A4DC2FC();
    }
  }
}

uint64_t sub_2296AC0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2296AC7B0(v3, a1, a2, a3, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
  if (!v4)
  {
    sub_2296AC1B0(v3, a1, a2, a3);
    sub_2296AC228(v3, a1, a2, a3);
    sub_2296AC2A0(v3, a1, a2, a3);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AC1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_22A4DC3DC();
  }

  return result;
}

uint64_t sub_2296AC228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_2296AC2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_22A4DC3DC();
  }

  return result;
}

uint64_t sub_2296AC318@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22A4DC28C();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_2296AC3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED70, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic, &unk_22A57D648);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296AC460(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87ED30, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic, &unk_22A57D860);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296AC4CC(uint64_t a1, uint64_t a2)
{
  sub_2296AEAF8(&qword_27D87ED30, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic, &unk_22A57D860);

  return sub_22A4DC39C();
}

uint64_t sub_2296AC54C()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB7F8);
  __swift_project_value_buffer(v0, qword_27D8AB7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22A576180;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "service_type";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22A4DC45C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_22A4DC46C();
}

uint64_t sub_2296AC6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0);
      sub_22A4DC32C();
    }
  }

  return result;
}

uint64_t sub_2296AC744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2296AC7B0(v3, a1, a2, a3, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
  if (!v4)
  {
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AC7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_2296AC82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22A4DC28C();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_2296AC8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED78, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService, &unk_22A57D558);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296AC94C(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87ED18, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService, &unk_22A57D7E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296AC9B8(uint64_t a1, uint64_t a2)
{
  sub_2296AEAF8(&qword_27D87ED18, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService, &unk_22A57D7E8);

  return sub_22A4DC39C();
}

uint64_t sub_2296ACA38()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB810);
  __swift_project_value_buffer(v0, qword_27D8AB810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5761A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "home_activity_state";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_2296ACC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2296ACCB4(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
      sub_22A4DC33C();
    }
  }

  return result;
}

uint64_t sub_2296ACCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);
  return sub_22A4DC36C();
}

uint64_t sub_2296ACD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2296ACDD8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2296ACFCC(v3, a1, a2, a3);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296ACDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  sub_2296AF1D0(a1 + *(v12 + 20), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22953EAE4(v7, &qword_27D87CC38, &unk_22A5784B0);
  }

  sub_22967B128(v7, v11);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);
  sub_22A4DC44C();
  return sub_2296B1D60(v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
}

uint64_t sub_2296ACFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_2296AD044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22A4DC28C();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_2296AD118(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED90, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent, &unk_22A57D3F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296AD1B8(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87CC10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent, &unk_22A57D428);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296AD224(uint64_t a1, uint64_t a2)
{
  sub_2296AEAF8(&qword_27D87CC10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent, &unk_22A57D428);

  return sub_22A4DC39C();
}

uint64_t sub_2296AD2A4()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB828);
  __swift_project_value_buffer(v0, qword_27D8AB828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5761B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "media_accessory_state";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "media_group_uuids";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_2296AD4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22A4DC30C();
        break;
      case 2:
        type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
        sub_22A4DC33C();
        break;
      case 1:
        sub_2296AD590(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_2296AD590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);
  return sub_22A4DC36C();
}

uint64_t sub_2296AD644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2296AD6FC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2296AD8F0(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_22A4DC3EC();
    }

    type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AD6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  sub_2296AF1D0(a1 + *(v12 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22953EAE4(v7, &qword_27D87CC38, &unk_22A5784B0);
  }

  sub_22967B128(v7, v11);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);
  sub_22A4DC44C();
  return sub_2296B1D60(v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
}

uint64_t sub_2296AD8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_2296AD968@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  sub_22A4DC28C();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v7 = &a2[*(a1 + 28)];
  *v7 = 0;
  v7[4] = 1;
  return result;
}

uint64_t sub_2296ADA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2296ADA94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2296ADB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87ED98, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent, &unk_22A57D288);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296ADBFC(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87D308, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent, &unk_22A57D2C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296ADC68(uint64_t a1, uint64_t a2)
{
  sub_2296AEAF8(&qword_27D87D308, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent, &unk_22A57D2C0);

  return sub_22A4DC39C();
}

uint64_t sub_2296ADCE8()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB840);
  __swift_project_value_buffer(v0, qword_27D8AB840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A57CFE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_identifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "prediction_timestamp";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "confidence_reasons";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "place_identifiers";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "place_scores";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "confidence";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_2296AE000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      if (result == 1)
      {
        sub_2296AE16C(a1, v5, a2, a3);
      }

      else if (result == 2 || result == 3)
      {
        type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
        sub_22A4DC32C();
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_22A4DC2EC();
      }

      else if (result == 7)
      {
        type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
        sub_22A4DC33C();
      }
    }

    else if (result == 4)
    {
      sub_22A4DC31C();
    }

    else
    {
      sub_22A4DC30C();
    }
  }

  return result;
}

uint64_t sub_2296AE16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);
  return sub_22A4DC36C();
}

uint64_t sub_2296AE220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2296AE354(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2296AE548(v3, a1, a2, a3);
    sub_2296AE5C0(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_22A4DC3FC();
    }

    if (*(v3[1] + 16))
    {
      sub_22A4DC3EC();
    }

    if (*(v3[2] + 16))
    {
      sub_22A4DC3CC();
    }

    sub_2296AE638(v3, a1, a2, a3);
    type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AE354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  sub_2296AF1D0(a1 + *(v12 + 32), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22953EAE4(v7, &qword_27D87CC38, &unk_22A5784B0);
  }

  sub_22967B128(v7, v11);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);
  sub_22A4DC44C();
  return sub_2296B1D60(v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
}

uint64_t sub_2296AE548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_2296AE5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_2296AE638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_2296AE6B0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  sub_22A4DC28C();
  v5 = a1[8];
  v6 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v8 = a1[10];
  v9 = &a2[a1[9]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[v8];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[a1[11]];
  *v11 = 0;
  v11[4] = 1;
  return result;
}

uint64_t sub_2296AE780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2296AE7F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2296AE8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87EDA0, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent, &unk_22A57D120);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296AE95C(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87E768, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent, &unk_22A57D158);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296AE9C8(uint64_t a1, uint64_t a2)
{
  sub_2296AEAF8(&qword_27D87E768, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent, &unk_22A57D158);

  return sub_22A4DC39C();
}

uint64_t sub_2296AEAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2296AF1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296AF240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v19 = *(v8 + 72);
  while (1)
  {
    result = sub_2296B1DC0(v13, v10, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
    if (!v11)
    {
      break;
    }

    sub_2296B1DC0(v14, v7, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
    sub_22A4DC70C();
    sub_2296AEAF8(&qword_27D87EE18, MEMORY[0x277D171F8], MEMORY[0x277D17218]);
    sub_22A4DD7DC();
    sub_22A4DD7DC();
    if (v21 != v20 || (sub_22A4DD7DC(), sub_22A4DD7DC(), v21 != v20))
    {
      sub_2296B1D60(v7, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
      sub_2296B1D60(v10, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
      return 0;
    }

    v16 = *&v10[*(v4 + 24)];
    sub_2296B1D60(v10, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
    v17 = *&v7[*(v4 + 24)];
    sub_2296B1D60(v7, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
    result = v16 == v17;
    v18 = v16 != v17 || v11-- == 1;
    v14 += v19;
    v13 += v19;
    if (v18)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296AF4F4(uint64_t a1, uint64_t a2)
{
  v113[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 72);
    for (i = (a1 + 40); ; i += 6)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9 = i[1];
      v10 = i[2];
      v11 = i[3];
      v12 = *(v3 - 4);
      v110 = *(v3 - 5);
      v111 = i[4];
      v13 = *(v3 - 3);
      v14 = *(v3 - 2);
      v15 = *v3;
      v109 = *(v3 - 1);
      v16 = *i >> 62;
      v17 = v12 >> 62;
      v107 = *i;
      v108 = v13;
      v106 = v7;
      if (v16 == 3)
      {
        break;
      }

      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v26 = *(v7 + 16);
          v25 = *(v7 + 24);
          v23 = __OFSUB__(v25, v26);
          v18 = v25 - v26;
          if (v23)
          {
            goto LABEL_164;
          }

          goto LABEL_25;
        }

        v18 = 0;
        if (v17 <= 1)
        {
          goto LABEL_26;
        }
      }

      else if (v16)
      {
        LODWORD(v18) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_163;
        }

        v18 = v18;
        if (v17 <= 1)
        {
LABEL_26:
          if (v17)
          {
            LODWORD(v24) = HIDWORD(v110) - v110;
            if (__OFSUB__(HIDWORD(v110), v110))
            {
              goto LABEL_158;
            }

            v24 = v24;
          }

          else
          {
            v24 = BYTE6(v12);
          }

          goto LABEL_32;
        }
      }

      else
      {
        v18 = BYTE6(v8);
        if (v17 <= 1)
        {
          goto LABEL_26;
        }
      }

LABEL_19:
      if (v17 != 2)
      {
        if (v18)
        {
          return 0;
        }

LABEL_38:
        v29 = *(v3 - 4);
        sub_22956C148(v7, *i);
        sub_22956C148(v9, v10);
        sub_22956C148(v11, v111);
        v19 = v110;
        v96 = v29;
        v20 = v29;
        v8 = v107;
LABEL_39:
        sub_22956C148(v19, v20);
        sub_22956C148(v13, v14);
        sub_22956C148(v109, v15);
        v28 = v96;
        goto LABEL_40;
      }

      v22 = *(v110 + 16);
      v21 = *(v110 + 24);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (v23)
      {
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
      }

LABEL_32:
      if (v18 != v24)
      {
        return 0;
      }

      if (v18 < 1)
      {
        goto LABEL_38;
      }

      v104 = *(v3 - 2);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v102 = v2;
          v40 = *(v3 - 4);
          v41 = *(v3 - 3);
          v42 = *i;
          v43 = *(v7 + 16);
          v97 = *(v7 + 24);
          sub_22956C148(v7, *i);
          v88 = v10;
          sub_22956C148(v9, v10);
          v92 = v11;
          sub_22956C148(v11, v111);
          v44 = v40;
          sub_22956C148(v110, v40);
          sub_22956C148(v41, v104);
          sub_22956C148(v109, v15);
          v45 = sub_22A4DB24C();
          if (v45)
          {
            v46 = sub_22A4DB27C();
            if (__OFSUB__(v43, v46))
            {
              goto LABEL_175;
            }

            v45 += v43 - v46;
          }

          v2 = v102;
          if (__OFSUB__(v97, v43))
          {
            goto LABEL_170;
          }

          v8 = v42;
          sub_22A4DB26C();
          sub_229838464(v45, v110, v44, v113);
          v28 = v44;
          v11 = v92;
          v10 = v88;
          v13 = v108;
          v14 = v104;
          if ((v113[0] & 1) == 0)
          {
            goto LABEL_156;
          }
        }

        else
        {
          memset(v113, 0, 14);
          v58 = v8;
          v59 = v12;
          sub_22956C148(v7, v58);
          sub_22956C148(v9, v10);
          sub_22956C148(v11, v111);
          sub_22956C148(v110, v59);
          sub_22956C148(v13, v14);
          sub_22956C148(v109, v15);
          sub_229838464(v113, v110, v59, &v112);
          v28 = v59;
          v8 = v107;
          if (!v112)
          {
            goto LABEL_156;
          }
        }
      }

      else
      {
        v100 = v2;
        v87 = i[2];
        v90 = *v3;
        if (v16)
        {
          v53 = v7;
          if (v7 >> 32 < v7)
          {
            goto LABEL_169;
          }

          v54 = *(v3 - 4);
          sub_22956C148(v7, v8);
          sub_22956C148(v9, v10);
          sub_22956C148(v11, v111);
          sub_22956C148(v110, v54);
          sub_22956C148(v108, v14);
          sub_22956C148(v109, v90);
          v55 = sub_22A4DB24C();
          if (v55)
          {
            v56 = sub_22A4DB27C();
            if (__OFSUB__(v53, v56))
            {
              goto LABEL_176;
            }

            v55 += v53 - v56;
          }

          v57 = v54;
          sub_22A4DB26C();
          sub_229838464(v55, v110, v54, v113);
          v10 = v87;
          v15 = v90;
          v28 = v57;
          v13 = v108;
          if ((v113[0] & 1) == 0)
          {
            goto LABEL_156;
          }
        }

        else
        {
          v113[0] = v7;
          LOWORD(v113[1]) = v8;
          BYTE2(v113[1]) = BYTE2(v8);
          BYTE3(v113[1]) = BYTE3(v8);
          BYTE4(v113[1]) = BYTE4(v8);
          BYTE5(v113[1]) = BYTE5(v8);
          v27 = v12;
          sub_22956C148(v7, v107);
          sub_22956C148(v9, v10);
          sub_22956C148(v11, v111);
          sub_22956C148(v110, v27);
          sub_22956C148(v13, v14);
          sub_22956C148(v109, v15);
          v8 = v107;
          sub_229838464(v113, v110, v27, &v112);
          v28 = v27;
          v2 = v100;
          if (!v112)
          {
            goto LABEL_156;
          }
        }
      }

LABEL_40:
      v30 = v10 >> 62;
      v31 = v14 >> 62;
      if (v10 >> 62 == 3)
      {
        v32 = 0;
        if (!v9 && v10 == 0xC000000000000000 && v14 >> 62 == 3)
        {
          v32 = 0;
          if (!v13 && v14 == 0xC000000000000000)
          {
            goto LABEL_108;
          }
        }

LABEL_56:
        if (v31 <= 1)
        {
          goto LABEL_57;
        }

        goto LABEL_50;
      }

      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v37 = *(v9 + 16);
          v36 = *(v9 + 24);
          v23 = __OFSUB__(v36, v37);
          v32 = v36 - v37;
          if (v23)
          {
            goto LABEL_166;
          }

          goto LABEL_56;
        }

        v32 = 0;
        if (v31 <= 1)
        {
          goto LABEL_57;
        }
      }

      else if (v30)
      {
        LODWORD(v32) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_165;
        }

        v32 = v32;
        if (v31 <= 1)
        {
LABEL_57:
          if (v31)
          {
            LODWORD(v35) = HIDWORD(v13) - v13;
            if (__OFSUB__(HIDWORD(v13), v13))
            {
              goto LABEL_159;
            }

            v35 = v35;
          }

          else
          {
            v35 = BYTE6(v14);
          }

          goto LABEL_63;
        }
      }

      else
      {
        v32 = BYTE6(v10);
        if (v31 <= 1)
        {
          goto LABEL_57;
        }
      }

LABEL_50:
      if (v31 != 2)
      {
        if (v32)
        {
          goto LABEL_156;
        }

        goto LABEL_108;
      }

      v34 = *(v13 + 16);
      v33 = *(v13 + 24);
      v23 = __OFSUB__(v33, v34);
      v35 = v33 - v34;
      if (v23)
      {
        goto LABEL_160;
      }

LABEL_63:
      if (v32 != v35)
      {
        goto LABEL_156;
      }

      if (v32 >= 1)
      {
        v101 = v2;
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            v47 = v28;
            v93 = v11;
            v48 = v10;
            v49 = *(v9 + 16);
            v50 = *(v9 + 24);
            v51 = sub_22A4DB24C();
            if (v51)
            {
              v52 = sub_22A4DB27C();
              if (__OFSUB__(v49, v52))
              {
                goto LABEL_177;
              }

              v51 += v49 - v52;
            }

            if (__OFSUB__(v50, v49))
            {
              goto LABEL_172;
            }

            sub_22A4DB26C();
            v13 = v108;
            sub_229838464(v51, v108, v14, v113);
            v10 = v48;
            v11 = v93;
            v8 = v107;
            v28 = v47;
            v2 = v101;
            if ((v113[0] & 1) == 0)
            {
              goto LABEL_156;
            }
          }

          else
          {
            memset(v113, 0, 14);
            v64 = v14;
            v65 = v28;
            v66 = v64;
            sub_229838464(v113, v13, v64, &v112);
            v28 = v65;
            v14 = v66;
            v2 = v101;
            v13 = v108;
            if (!v112)
            {
              goto LABEL_156;
            }
          }
        }

        else if (v30)
        {
          v98 = v28;
          if (v9 >> 32 < v9)
          {
            goto LABEL_171;
          }

          v60 = v11;
          v61 = v10;
          v62 = sub_22A4DB24C();
          v94 = v60;
          if (v62)
          {
            v63 = sub_22A4DB27C();
            if (__OFSUB__(v9, v63))
            {
              goto LABEL_178;
            }

            v62 += v9 - v63;
          }

          sub_22A4DB26C();
          v13 = v108;
          sub_229838464(v62, v108, v14, v113);
          v10 = v61;
          v2 = v101;
          v11 = v94;
          v28 = v98;
          v8 = v107;
          if ((v113[0] & 1) == 0)
          {
LABEL_156:
            sub_2295798D4(v110, v28);
            sub_2295798D4(v13, v14);
            sub_2295798D4(v109, v15);
            sub_2295798D4(v106, v8);
            sub_2295798D4(v9, v10);
            sub_2295798D4(v11, v111);
            return 0;
          }
        }

        else
        {
          v113[0] = v9;
          LOWORD(v113[1]) = v10;
          BYTE2(v113[1]) = BYTE2(v10);
          BYTE3(v113[1]) = BYTE3(v10);
          BYTE4(v113[1]) = BYTE4(v10);
          BYTE5(v113[1]) = BYTE5(v10);
          v38 = v13;
          v39 = v28;
          sub_229838464(v113, v38, v14, &v112);
          v28 = v39;
          v13 = v108;
          if (!v112)
          {
            goto LABEL_156;
          }
        }
      }

LABEL_108:
      v67 = v111 >> 62;
      v68 = v15 >> 62;
      if (v111 >> 62 == 3)
      {
        v69 = 0;
        if (!v11 && v111 == 0xC000000000000000 && v15 >> 62 == 3)
        {
          v69 = 0;
          if (!v109 && v15 == 0xC000000000000000)
          {
            sub_2295798D4(v110, v28);
            sub_2295798D4(v13, v14);
            sub_2295798D4(0, 0xC000000000000000);
            sub_2295798D4(v106, v8);
            sub_2295798D4(v9, v10);
            v5 = 0;
            v6 = 0xC000000000000000;
            goto LABEL_7;
          }
        }

LABEL_124:
        if (v68 <= 1)
        {
          goto LABEL_125;
        }

        goto LABEL_118;
      }

      if (v67 > 1)
      {
        if (v67 == 2)
        {
          v74 = *(v11 + 16);
          v73 = *(v11 + 24);
          v23 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          if (v23)
          {
            goto LABEL_167;
          }

          goto LABEL_124;
        }

        v69 = 0;
        if (v68 <= 1)
        {
          goto LABEL_125;
        }
      }

      else if (v67)
      {
        LODWORD(v69) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_168;
        }

        v69 = v69;
        if (v68 <= 1)
        {
LABEL_125:
          if (v68)
          {
            LODWORD(v72) = HIDWORD(v109) - v109;
            if (__OFSUB__(HIDWORD(v109), v109))
            {
              goto LABEL_161;
            }

            v72 = v72;
          }

          else
          {
            v72 = BYTE6(v15);
          }

          goto LABEL_129;
        }
      }

      else
      {
        v69 = BYTE6(v111);
        if (v68 <= 1)
        {
          goto LABEL_125;
        }
      }

LABEL_118:
      if (v68 != 2)
      {
        if (v69)
        {
          goto LABEL_156;
        }

LABEL_6:
        sub_2295798D4(v110, v28);
        sub_2295798D4(v13, v14);
        sub_2295798D4(v109, v15);
        sub_2295798D4(v106, v8);
        sub_2295798D4(v9, v10);
        v5 = v11;
        v6 = v111;
LABEL_7:
        sub_2295798D4(v5, v6);
        goto LABEL_8;
      }

      v71 = *(v109 + 16);
      v70 = *(v109 + 24);
      v23 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v23)
      {
        goto LABEL_162;
      }

LABEL_129:
      if (v69 != v72)
      {
        goto LABEL_156;
      }

      if (v69 < 1)
      {
        goto LABEL_6;
      }

      v105 = v14;
      if (v67 > 1)
      {
        if (v67 == 2)
        {
          v77 = v28;
          v91 = v9;
          v95 = v11;
          v89 = v10;
          v78 = *(v11 + 16);
          v79 = *(v11 + 24);
          v80 = v111;
          v81 = sub_22A4DB24C();
          if (v81)
          {
            v82 = sub_22A4DB27C();
            if (__OFSUB__(v78, v82))
            {
              goto LABEL_179;
            }

            v81 += v78 - v82;
          }

          if (__OFSUB__(v79, v78))
          {
            goto LABEL_174;
          }

          goto LABEL_150;
        }

        v103 = v2;
        memset(v113, 0, 14);
        v85 = v28;
        sub_229838464(v113, v109, v15, &v112);
        sub_2295798D4(v110, v85);
        sub_2295798D4(v108, v14);
        sub_2295798D4(v109, v15);
        sub_2295798D4(v106, v8);
        sub_2295798D4(v9, v10);
        v75 = v11;
        v76 = v111;
      }

      else
      {
        if (v67)
        {
          v91 = v9;
          v83 = v11;
          if (v11 >> 32 < v11)
          {
            goto LABEL_173;
          }

          v77 = v28;
          v95 = v11;
          v89 = v10;
          v80 = v111;
          v81 = sub_22A4DB24C();
          if (v81)
          {
            v84 = sub_22A4DB27C();
            if (__OFSUB__(v83, v84))
            {
              goto LABEL_180;
            }

            v81 += v83 - v84;
          }

LABEL_150:
          sub_22A4DB26C();
          sub_229838464(v81, v109, v15, v113);
          sub_2295798D4(v110, v77);
          sub_2295798D4(v108, v105);
          sub_2295798D4(v109, v15);
          sub_2295798D4(v106, v107);
          sub_2295798D4(v91, v89);
          sub_2295798D4(v95, v80);
          if ((v113[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_8;
        }

        v103 = v2;
        v113[0] = v11;
        LODWORD(v113[1]) = v111;
        WORD2(v113[1]) = WORD2(v111);
        v99 = v28;
        sub_229838464(v113, v109, v15, &v112);
        sub_2295798D4(v110, v99);
        sub_2295798D4(v108, v14);
        sub_2295798D4(v109, v15);
        sub_2295798D4(v106, v8);
        sub_2295798D4(v9, v10);
        v75 = v11;
        v76 = v111;
      }

      sub_2295798D4(v75, v76);
      if (!v112)
      {
        return 0;
      }

      v2 = v103;
LABEL_8:
      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    v18 = 0;
    if (!v7 && v8 == 0xC000000000000000 && v12 >> 62 == 3)
    {
      v18 = 0;
      if (!v110 && v12 == 0xC000000000000000)
      {
        v96 = 0xC000000000000000;
        sub_22956C148(0, 0xC000000000000000);
        sub_22956C148(v9, v10);
        sub_22956C148(v11, v111);
        v19 = 0;
        v20 = 0xC000000000000000;
        goto LABEL_39;
      }
    }

LABEL_25:
    if (v17 <= 1)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  return 1;
}

uint64_t sub_2296B0380(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_22A4DE60C() & 1) == 0)
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

uint64_t sub_2296B0410(uint64_t result, uint64_t a2)
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

uint64_t sub_2296B046C(uint64_t result, uint64_t a2)
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
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296B04C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v40 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2296B1DC0(v13, v10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
        sub_2296B1DC0(v14, v7, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
        v16 = v4[5];
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_39;
          }

          v21 = *v17 == *v19 && v18 == v20;
          if (!v21 && (sub_22A4DE60C() & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else if (v20)
        {
          goto LABEL_39;
        }

        v22 = v4[6];
        v23 = &v10[v22];
        v24 = v10[v22 + 4];
        v25 = &v7[v22];
        v26 = v7[v22 + 4];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v23 != *v25)
          {
            LOBYTE(v26) = 1;
          }

          if (v26)
          {
LABEL_39:
            sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
            sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
            goto LABEL_40;
          }
        }

        v27 = v4[7];
        v28 = &v10[v27];
        v29 = *&v10[v27 + 8];
        v30 = &v7[v27];
        v31 = *(v30 + 1);
        if (v29)
        {
          if (!v31)
          {
            goto LABEL_39;
          }

          v32 = *v28 == *v30 && v29 == v31;
          if (!v32 && (sub_22A4DE60C() & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else if (v31)
        {
          goto LABEL_39;
        }

        v33 = v4[8];
        v34 = &v10[v33];
        v35 = v10[v33 + 4];
        v36 = &v7[v33];
        v37 = v7[v33 + 4];
        if (v35)
        {
          if (!v37)
          {
            goto LABEL_39;
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
            goto LABEL_39;
          }
        }

        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v38 = sub_22A4DD58C();
        sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
        sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
        if (v38)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v38 & 1;
      }
    }

    v38 = 1;
  }

  else
  {
LABEL_40:
    v38 = 0;
  }

  return v38 & 1;
}

uint64_t sub_2296B07F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2296B1DC0(v13, v10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
        sub_2296B1DC0(v14, v7, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
        v16 = *(v4 + 20);
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_22A4DE60C() & 1) == 0))
          {
LABEL_18:
            sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
            sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
            goto LABEL_19;
          }
        }

        else if (v20)
        {
          goto LABEL_18;
        }

        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_22A4DD58C();
        sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
        sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
        if (v22)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v22 & 1;
      }
    }

    v22 = 1;
  }

  else
  {
LABEL_19:
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_2296B0A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87ED88, &unk_22A57D8E0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  v16 = *(v15 + 20);
  v17 = *(v12 + 56);
  sub_2296AF1D0(a1 + v16, v14);
  sub_2296AF1D0(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_2296AF1D0(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      sub_22967B128(&v14[v17], v7);
      v23 = *(v4 + 20);
      v24 = *&v10[v23];
      v25 = *&v7[v23];
      if (v24 == v25 || (, , v26 = sub_22961C468(v24, v25), , , v26))
      {
        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v27 = sub_22A4DD58C();
        sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_22953EAE4(v14, &qword_27D87CC38, &unk_22A5784B0);
        if ((v27 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      v19 = &qword_27D87CC38;
      v20 = &unk_22A5784B0;
LABEL_7:
      sub_22953EAE4(v14, v19, v20);
      goto LABEL_8;
    }

    sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
LABEL_6:
    v19 = &qword_27D87ED88;
    v20 = &unk_22A57D8E0;
    goto LABEL_7;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22953EAE4(v14, &qword_27D87CC38, &unk_22A5784B0);
LABEL_13:
  v28 = *(v15 + 24);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (v32)
    {
LABEL_19:
      sub_22A4DC29C();
      sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v21 = sub_22A4DD58C();
      return v21 & 1;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_2296B0E8C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87ED88, &unk_22A57D8E0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  v16 = *(v15 + 24);
  v17 = *(v12 + 56);
  sub_2296AF1D0(a1 + v16, v14);
  sub_2296AF1D0(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_2296AF1D0(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      sub_22967B128(&v14[v17], v7);
      v23 = *(v4 + 20);
      v24 = *&v10[v23];
      v25 = *&v7[v23];
      if (v24 == v25 || (, , v26 = sub_22961C468(v24, v25), , , v26))
      {
        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v27 = sub_22A4DD58C();
        sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_22953EAE4(v14, &qword_27D87CC38, &unk_22A5784B0);
        if ((v27 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      v19 = &qword_27D87CC38;
      v20 = &unk_22A5784B0;
LABEL_7:
      sub_22953EAE4(v14, v19, v20);
      goto LABEL_8;
    }

    sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
LABEL_6:
    v19 = &qword_27D87ED88;
    v20 = &unk_22A57D8E0;
    goto LABEL_7;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22953EAE4(v14, &qword_27D87CC38, &unk_22A5784B0);
LABEL_13:
  v28 = *(v15 + 28);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  if (sub_2296B0380(*a1, *a2))
  {
    sub_22A4DC29C();
    sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v21 = sub_22A4DD58C();
    return v21 & 1;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_2296B12B0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87ED88, &unk_22A57D8E0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  v16 = v15[8];
  v17 = *(v12 + 56);
  sub_2296AF1D0(a1 + v16, v14);
  sub_2296AF1D0(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_2296AF1D0(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      sub_22967B128(&v14[v17], v7);
      v23 = *(v4 + 20);
      v24 = *&v10[v23];
      v25 = *&v7[v23];
      if (v24 == v25 || (, , v26 = sub_22961C468(v24, v25), , , v26))
      {
        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v27 = sub_22A4DD58C();
        sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_22953EAE4(v14, &qword_27D87CC38, &unk_22A5784B0);
        if ((v27 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      v19 = &qword_27D87CC38;
      v20 = &unk_22A5784B0;
LABEL_7:
      sub_22953EAE4(v14, v19, v20);
      goto LABEL_8;
    }

    sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
LABEL_6:
    v19 = &qword_27D87ED88;
    v20 = &unk_22A57D8E0;
    goto LABEL_7;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22953EAE4(v14, &qword_27D87CC38, &unk_22A5784B0);
LABEL_13:
  v28 = v15[9];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_22A4DE60C() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v32)
  {
    goto LABEL_8;
  }

  v33 = v15[10];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37 || (*v34 != *v36 || v35 != v37) && (sub_22A4DE60C() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v37)
  {
    goto LABEL_8;
  }

  if (sub_2296B0410(*a1, *a2) & 1) != 0 && (sub_2296B0380(a1[1], a2[1]) & 1) != 0 && (sub_2296B046C(a1[2], a2[2]))
  {
    v38 = v15[11];
    v39 = (a1 + v38);
    v40 = *(a1 + v38 + 4);
    v41 = (a2 + v38);
    v42 = *(a2 + v38 + 4);
    if (v40)
    {
      if (v42)
      {
LABEL_37:
        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v21 = sub_22A4DD58C();
        return v21 & 1;
      }
    }

    else
    {
      if (*v39 != *v41)
      {
        LOBYTE(v42) = 1;
      }

      if ((v42 & 1) == 0)
      {
        goto LABEL_37;
      }
    }
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_2296B1784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22A4DE60C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (!v20)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v22)
  {
    return 0;
  }

  if (*v19 != *v21 || v20 != v22)
  {
    v24 = v4;
    v25 = sub_22A4DE60C();
    v4 = v24;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  v26 = v4[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  sub_22A4DC29C();
  sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22A4DD58C() & 1;
}

uint64_t sub_2296B1928(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87ED88, &unk_22A57D8E0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  v16 = *(v15 + 28);
  v17 = *(v12 + 56);
  sub_2296AF1D0(a1 + v16, v14);
  sub_2296AF1D0(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_22953EAE4(v14, &qword_27D87CC38, &unk_22A5784B0);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_2296AF1D0(v14, v10);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
LABEL_6:
    v19 = &qword_27D87ED88;
    v20 = &unk_22A57D8E0;
    goto LABEL_7;
  }

  sub_22967B128(&v14[v17], v7);
  v22 = *(v4 + 20);
  v23 = *&v10[v22];
  v24 = *&v7[v22];
  if (v23 == v24 || (, , v25 = sub_22961C468(v23, v24), , , v25))
  {
    sub_22A4DC29C();
    sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v26 = sub_22A4DD58C();
    sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
    sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
    sub_22953EAE4(v14, &qword_27D87CC38, &unk_22A5784B0);
    if ((v26 & 1) == 0)
    {
LABEL_15:
      v21 = 0;
      return v21 & 1;
    }

LABEL_11:
    if ((sub_2296B04C8(*a1, *a2) & 1) == 0 || (sub_2296B07F8(a1[1], a2[1]) & 1) == 0)
    {
      goto LABEL_15;
    }

    v27 = *(v15 + 32);
    v28 = (a1 + v27);
    v29 = *(a1 + v27 + 4);
    v30 = (a2 + v27);
    v31 = *(a2 + v27 + 4);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (*v28 != *v30)
      {
        LOBYTE(v31) = 1;
      }

      if (v31)
      {
        goto LABEL_15;
      }
    }

    sub_22A4DC29C();
    sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v21 = sub_22A4DD58C();
    return v21 & 1;
  }

  sub_2296B1D60(v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v19 = &qword_27D87CC38;
  v20 = &unk_22A5784B0;
LABEL_7:
  sub_22953EAE4(v14, v19, v20);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_2296B1D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2296B1DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296B1E28(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_22A4DE60C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_22A4DC29C();
    sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22A4DD58C() & 1;
  }

  return 0;
}

void sub_2296B1F28(uint64_t a1)
{
  sub_2296B20A8(319, &qword_27D87EDB8, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2296B20A8(319, &qword_27D87EDC0, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22A4DC29C();
      if (v3 <= 0x3F)
      {
        sub_2296B20A8(319, &qword_27D87EDC8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2296B2580(319, &qword_27D87DF98, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2296B20A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2296B2134(uint64_t a1)
{
  sub_22A4DC29C();
  if (v1 <= 0x3F)
  {
    sub_2296B20A8(319, &qword_27D87EDC8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2296B2580(319, &qword_27D87DF98, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2296B224C(uint64_t a1)
{
  sub_2296B2580(319, &qword_27D87EDF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22A4DC29C();
    if (v2 <= 0x3F)
    {
      sub_2296B20A8(319, &qword_27D87EDC8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2296B2580(319, &qword_27D87DF98, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2296B23A0(uint64_t a1)
{
  sub_2296B2580(319, &qword_27D87EE08, MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2296B2580(319, &qword_27D87EDF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2296B2580(319, &qword_27D87EE10, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_22A4DC29C();
        if (v4 <= 0x3F)
        {
          sub_2296B20A8(319, &qword_27D87EDC8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2296B2580(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2296B2580(319, &qword_27D87DF98, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
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

void sub_2296B2580(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2296B26B4()
{
  result = qword_27D87EE20;
  if (!qword_27D87EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87EC90, &unk_22A57CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87EE20);
  }

  return result;
}

uint64_t sub_2296B2730(__int128 *a1)
{
  v3 = sub_22A4DD34C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1[2])
  {
    (*(v11 + 16))(v13, v1, v10);
  }

  else
  {
    v24 = *a1;
    v25 = v24;
    sub_229588C00(&v25, &v22);
    sub_22A4DD33C();
    v15 = *(a1 + 2);
    v14 = *(a1 + 3);

    *&v24 = sub_22958F6F4(v15, v14);
    *(&v24 + 1) = v16;
    v22 = sub_22970DA38();
    v23 = v17;
    sub_22A4DD36C();
    sub_2296B29F0();
    sub_229588CA4();
    sub_22A4DD35C();
    v18 = *(v4 + 8);
    v18(v7, v3);
    sub_2295798D4(v22, v23);
    sub_2295798D4(v24, *(&v24 + 1));
    sub_22A4DD32C();
    v18(v9, v3);
  }

  v19 = sub_22A4DB76C();
  (*(v11 + 8))(v13, v10);
  return v19;
}

unint64_t sub_2296B29F0()
{
  result = qword_27D87D2D0;
  if (!qword_27D87D2D0)
  {
    sub_22A4DD36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D2D0);
  }

  return result;
}

unint64_t sub_2296B2A4C()
{
  result = qword_27D87ED30;
  if (!qword_27D87ED30)
  {
    type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87ED30);
  }

  return result;
}

uint64_t sub_2296B2AB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_22A4DB74C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  sub_22966901C(a2, v21 - v15);
  result = (*(v8 + 48))(v16, 1, v7);
  if (result != 1)
  {
    (*(v8 + 32))(v10, v16, v7);
    (*(v8 + 16))(v14, v10, v7);
    (*(v8 + 56))(v14, 0, 1, v7);
    v18 = sub_2297C337C(v14);
    v20 = v19;
    sub_22953EAE4(v14, &unk_27D881AA0, &qword_22A57BC20);
    (*(v8 + 8))(v10, v7);
    v21[0] = v18;
    v21[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);

    swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_2296B2D04(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D100, &unk_22A583B00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34[-v8];
  if ([v2 lastKnownValue])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v10 = *(&v41 + 1);
    v11 = __swift_project_boxed_opaque_existential_0(&v40, *(&v41 + 1));
    v37 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    sub_229543C58(v36, &v38);
    __swift_destroy_boxed_opaque_existential_0(&v40);
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v35 = 0;
      v13 = *v36;
      goto LABEL_9;
    }
  }

  else
  {
    sub_22953EAE4(&v40, &unk_27D87FC20, &unk_22A578810);
  }

  v35 = 1;
  v13 = 0.0;
LABEL_9:
  if ([v2 previousValue])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v14 = *(&v41 + 1);
    v15 = __swift_project_boxed_opaque_existential_0(&v40, *(&v41 + 1));
    v37 = v14;
    v16 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(*(v14 - 8) + 16))(v16, v15, v14);
    sub_229543C58(v36, &v38);
    __swift_destroy_boxed_opaque_existential_0(&v40);
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v17 = 0;
      v18 = *v36;
      goto LABEL_17;
    }
  }

  else
  {
    sub_22953EAE4(&v40, &unk_27D87FC20, &unk_22A578810);
  }

  v17 = 1;
  v18 = 0.0;
LABEL_17:
  v19 = [v2 characteristicType];
  v20 = sub_22A4DD5EC();
  v22 = v21;

  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE28, &qword_22A57DC78) + 36);
  v24 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v25 = (v23 + v24[5]);

  *v25 = v20;
  v25[1] = v22;
  if ((v35 & 1) == 0)
  {
    v26 = v23 + v24[6];
    *v26 = v13;
    *(v26 + 4) = 0;
  }

  KeyPath = swift_getKeyPath();
  v28 = [v2 lastKnownValueUpdateTime];
  if (v28)
  {
    v29 = v28;
    sub_22A4DB70C();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = sub_22A4DB74C();
  (*(*(v31 - 8) + 56))(v6, v30, 1, v31);
  sub_2296692F8(v6, v9);
  sub_2296B2AB8(KeyPath, v9, &qword_27D87EE28, &qword_22A57DC78);

  result = sub_22953EAE4(v9, &qword_27D87D100, &unk_22A583B00);
  if ((v17 & 1) == 0)
  {
    v33 = v23 + v24[8];
    *v33 = v18;
    *(v33 + 4) = 0;
  }

  return result;
}

double sub_2296B3188@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_2296B31EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void *sub_2296B3264()
{
  v1 = type metadata accessor for NetworkDetectAccessory(0);
  v86 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v80 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = v75 - v4;
  v6 = sub_22A4DBB4C();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + OBJC_IVAR____TtC13HomeKitDaemon23NetworkMismatchDetector_dataSource;
  Strong = swift_unknownObjectWeakLoadStrong();
  v82 = MEMORY[0x277D84F90];
  if (!Strong)
  {
    return v82;
  }

  v11 = Strong;
  v78 = v1;
  v81 = v5;
  v12 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  v85 = v12[3](ObjectType, v12);
  v14 = v12[2](ObjectType, v12);
  v15 = *(v14 + 16);
  v79 = v11;
  if (v15)
  {
    v76 = ObjectType;
    v77 = v12;
    v90 = MEMORY[0x277D84F90];
    sub_229583334(0, v15, 0);
    v16 = v90;
    v84 = *(v87 + 16);
    v17 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v75[1] = v14;
    v18 = v14 + v17;
    v83 = *(v87 + 72);
    v89 = v87 + 16;
    v19 = (v87 + 8);
    do
    {
      v20 = v88;
      v84(v8, v18, v88);
      v21 = sub_22A4DBB2C();
      v23 = v22;
      (*v19)(v8, v20);
      v90 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_229583334((v24 > 1), v25 + 1, 1);
        v16 = v90;
      }

      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v18 += v83;
      --v15;
    }

    while (v15);

    v12 = v77;
    ObjectType = v76;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v27 = sub_229672204(v16);

  v28 = v12[1](ObjectType, v12);
  v29 = v28[2];
  v89 = v27;
  if (v29)
  {
    v90 = MEMORY[0x277D84F90];
    sub_229583334(0, v29, 0);
    v30 = v90;
    v31 = *(v87 + 16);
    v32 = *(v87 + 80);
    v82 = v28;
    v33 = v28 + ((v32 + 32) & ~v32);
    v83 = *(v87 + 72);
    v84 = v31;
    v87 += 16;
    v34 = (v87 - 8);
    do
    {
      v35 = v88;
      v84(v8, v33, v88);
      v36 = sub_22A4DBB2C();
      v38 = v37;
      (*v34)(v8, v35);
      v90 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_229583334((v39 > 1), v40 + 1, 1);
        v30 = v90;
      }

      *(v30 + 16) = v40 + 1;
      v41 = v30 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v33 += v83;
      --v29;
    }

    while (v29);

    v27 = v89;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v42 = sub_229672204(v30);

  v44 = v85;
  v45 = v81;
  v87 = *(v85 + 16);
  if (!v87)
  {

    v82 = MEMORY[0x277D84F90];
LABEL_48:
    swift_unknownObjectRelease();

    return v82;
  }

  v46 = 0;
  v88 = *(v78 + 20);
  v83 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v84 = (v85 + v83);
  v47 = v27 + 56;
  v48 = v42 + 56;
  v82 = MEMORY[0x277D84F90];
  v49 = v89;
  while (v46 < *(v44 + 16))
  {
    v50 = *(v86 + 72);
    sub_2296B8404(v84 + v50 * v46, v45);
    v51 = sub_22A4DB76C();
    v53 = v52;
    if (*(v49 + 16) && (v54 = v51, sub_22A4DE77C(), sub_22A4DD6BC(), v55 = sub_22A4DE7BC(), v56 = -1 << *(v49 + 32), v57 = v55 & ~v56, ((*(v47 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0))
    {
      v58 = ~v56;
      while (1)
      {
        v59 = (*(v89 + 48) + 16 * v57);
        v60 = *v59 == v54 && v59[1] == v53;
        if (v60 || (sub_22A4DE60C() & 1) != 0)
        {
          break;
        }

        v57 = (v57 + 1) & v58;
        if (((*(v47 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v61 = sub_22A4DB76C();
      v63 = v62;
      if (*(v42 + 16))
      {
        v64 = v61;
        sub_22A4DE77C();
        sub_22A4DD6BC();
        v65 = sub_22A4DE7BC();
        v66 = -1 << *(v42 + 32);
        v67 = v65 & ~v66;
        if ((*(v48 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
        {
          v68 = ~v66;
          while (1)
          {
            v69 = (*(v42 + 48) + 16 * v67);
            v70 = *v69 == v64 && v69[1] == v63;
            if (v70 || (sub_22A4DE60C() & 1) != 0)
            {
              break;
            }

            v67 = (v67 + 1) & v68;
            if (((*(v48 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

LABEL_18:
          v45 = v81;
          goto LABEL_19;
        }
      }

LABEL_41:

      v45 = v81;
      sub_22966B7F0(v81, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_22958B1C8(0, v82[2] + 1, 1, v82);
      }

      v72 = v82[2];
      v71 = v82[3];
      if (v72 >= v71 >> 1)
      {
        v82 = sub_22958B1C8((v71 > 1), v72 + 1, 1, v82);
      }

      v73 = v82;
      v74 = v83;
      v82[2] = v72 + 1;
      result = sub_22966B7F0(v80, v73 + v74 + v72 * v50);
    }

    else
    {
LABEL_19:

      result = sub_2296B7214(v45);
    }

    v44 = v85;
    if (++v46 == v87)
    {

      goto LABEL_48;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296B39CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D208, &qword_22A578150);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE60, &qword_22A57DD68);
  v5[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE50, &qword_22A57DD48);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE68, &unk_22A57DD70);
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v9 = type metadata accessor for NetworkDetectAccessory(0);
  v5[27] = v9;
  v10 = *(v9 - 8);
  v5[28] = v10;
  v5[29] = *(v10 + 64);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296B3C74, 0, 0);
}

uint64_t sub_2296B3C74()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 224);
    v31 = **(v0 + 88);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v30 = *(v3 + 72);
    v29 = (v4 + 48) & ~v4;
    v6 = sub_22A4DD9DC();
    v7 = *(v6 - 8);
    v28 = *(v7 + 56);
    v26 = v6;
    v27 = (v7 + 48);
    v25 = (v7 + 8);
    do
    {
      v11 = *(v0 + 256);
      v10 = *(v0 + 264);
      v12 = *(v0 + 248);
      v32 = *(v0 + 104);
      v28(v10, 1, 1, v6);
      sub_2296B8404(v5, v12);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      v14 = (v13 + 16);
      *(v13 + 24) = 0;
      *(v13 + 32) = v32;
      sub_22966B7F0(v12, v13 + v29);
      sub_229564F88(v10, v11, &unk_27D87D8F0, &qword_22A578D70);
      LODWORD(v11) = (*v27)(v11, 1, v6);
      swift_unknownObjectRetain();
      v15 = *(v0 + 256);
      if (v11 == 1)
      {
        sub_22953EAE4(*(v0 + 256), &unk_27D87D8F0, &qword_22A578D70);
        if (*v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22A4DD9CC();
        (*v25)(v15, v6);
        if (*v14)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = sub_22A4DD8CC();
          v17 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v16 = 0;
      v17 = 0;
LABEL_10:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_22A57DD88;
      *(v19 + 24) = v13;

      if (v17 | v16)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v17;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 264);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_22953EAE4(v9, &unk_27D87D8F0, &qword_22A578D70);
      v5 += v30;
      --v2;
      v6 = v26;
    }

    while (v2);
  }

  sub_22A4DD91C();
  *(v0 + 272) = MEMORY[0x277D84F90];
  v20 = sub_2296B86E8();
  v21 = swift_task_alloc();
  *(v0 + 280) = v21;
  *v21 = v0;
  v21[1] = sub_2296B4024;
  v22 = *(v0 + 192);
  v23 = *(v0 + 144);

  return MEMORY[0x282200308](v23, v22, v20);
}

uint64_t sub_2296B4024()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[25];
    v3 = v2[26];
    v5 = v2[24];

    (*(v4 + 8))(v3, v5);

    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_2296B4178;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2296B4178()
{
  v1 = v0[19];
  v2 = v0[18];
  if ((*(v0[20] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[34];
    v4 = v0[10];
    (*(v0[25] + 8))(v0[26], v0[24]);
    sub_22953EAE4(v2, &qword_27D87EE60, &qword_22A57DD68);
    *v4 = v3;

    v5 = v0[1];

    return v5();
  }

  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[22];
  v10 = v0[23];
  sub_22957F2F8(v2, v10, &qword_27D87EE50, &qword_22A57DD48);
  sub_229564F88(v10, v9, &qword_27D87EE50, &qword_22A57DD48);
  v11 = *(v1 + 48);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v12 = v0[22];
    sub_22953EAE4(v0[23], &qword_27D87EE50, &qword_22A57DD48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
    (*(*(v13 - 8) + 8))(v9 + v11, v13);
    v14 = v12;
  }

  else
  {
    v15 = v0[23];
    v16 = v0[21];
    v17 = v0[19];
    sub_22966B7F0(v0[22], v0[30]);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
    v19 = *(*(v18 - 8) + 8);
    v19(v9 + v11, v18);
    sub_229564F88(v15, v16, &qword_27D87EE50, &qword_22A57DD48);
    v20 = *(v17 + 48);
    sub_22A4DBA4C();
    v21 = v0[9];
    if (v21)
    {
      v39 = v0[30];
      v22 = v0[21];
      v23 = v0[17];
      v24 = v0[15];
      v19(v16 + v20, v18);
      sub_22953EAE4(v22, &qword_27D87EE78, &unk_22A57DDA0);
      v25 = *(v24 + 48);
      sub_2296B8404(v39, v23);
      *(v23 + v25) = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v0[34];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_22958B218(0, v27[2] + 1, 1, v0[34]);
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        v27 = sub_22958B218((v28 > 1), v29 + 1, 1, v27);
      }

      v30 = v0[23];
      v32 = v0[16];
      v31 = v0[17];
      sub_2296B7214(v0[30]);
      sub_22953EAE4(v30, &qword_27D87EE50, &qword_22A57DD48);
      v27[2] = v29 + 1;
      sub_22957F2F8(v31, v27 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, &qword_27D87D208, &qword_22A578150);
      goto LABEL_15;
    }

    v33 = v0[23];
    v34 = v0[21];
    sub_2296B7214(v0[30]);
    sub_22953EAE4(v33, &qword_27D87EE50, &qword_22A57DD48);
    v19(v16 + v20, v18);
    v14 = v34;
  }

  sub_22953EAE4(v14, &qword_27D87EE78, &unk_22A57DDA0);
  v27 = v0[34];
LABEL_15:
  v0[34] = v27;
  v35 = sub_2296B86E8();
  v36 = swift_task_alloc();
  v0[35] = v36;
  *v36 = v0;
  v36[1] = sub_2296B4024;
  v37 = v0[24];
  v38 = v0[18];

  return MEMORY[0x282200308](v38, v37, v35);
}

uint64_t sub_2296B463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a1;
  v6[4] = a6;
  ObjectType = swift_getObjectType();
  v12 = (*(a5 + 32) + **(a5 + 32));
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_2296B4778;

  return v12(a6, ObjectType, a5);
}

uint64_t sub_2296B4778(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2296B4878, 0, 0);
}

uint64_t sub_2296B4878()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE50, &qword_22A57DD48);
  sub_2296B8404(v3, v2);
  v4 = type metadata accessor for NetworkDetectAccessory(0);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[2] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802C0, &qword_22A57C008);
  MEMORY[0x22AACEC10](v0 + 2, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2296B4990()
{
  v1 = sub_2296B3264();
  v0[4] = v1;
  if (v1[2] && (v2 = v0[3] + OBJC_IVAR____TtC13HomeKitDaemon23NetworkMismatchDetector_dataSource, Strong = swift_unknownObjectWeakLoadStrong(), (v0[5] = Strong) != 0))
  {
    v4 = Strong;
    v5 = *(v2 + 8);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE50, &qword_22A57DD48);
    v7 = swift_task_alloc();
    v0[6] = v7;
    v7[2] = v1;
    v7[3] = v4;
    v7[4] = v5;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE58, &qword_22A57DD60);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_2296B4B3C;

    return MEMORY[0x282200600](v0 + 2, v6, v8, 0, 0, &unk_22A57DD58, v7, v6);
  }

  else
  {

    v10 = v0[1];
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_2296B4B3C()
{

  return MEMORY[0x2822009F8](sub_2296B4C70, 0, 0);
}

uint64_t sub_2296B4C70()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2296B4CD4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[2] = a1;
  v1[3] = ObjectType;
  v1[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D208, &qword_22A578150);
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D218, &unk_22A578160);
  v1[20] = v6;
  v1[21] = *(v6 - 8);
  v1[22] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[23] = v7;
  *v7 = v1;
  v7[1] = sub_2296B4F38;

  return sub_2296B4970();
}

uint64_t sub_2296B4F38(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_2296B5038, 0, 0);
}

uint64_t sub_2296B5038()
{
  v139 = v0;
  v1 = v0[24];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v117 = v1;
  v119 = v2;
  if (v2)
  {
    v133 = v0[21];
    v4 = v0[14];
    v124 = v0[13];
    v128 = v0[20];
    v5 = v0[9];
    v138 = MEMORY[0x277D84F90];
    sub_229583960(0, v2, 0);
    v3 = v138;
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v123 = *(v4 + 72);
    do
    {
      v7 = v0[22];
      v9 = v0[18];
      v8 = v0[19];
      v10 = v0[8];
      sub_229564F88(v6, v8, &qword_27D87D208, &qword_22A578150);
      v11 = (v7 + *(v128 + 48));
      sub_229564F88(v8, v9, &qword_27D87D208, &qword_22A578150);

      (*(v5 + 16))(v7, v9, v10);
      sub_2296B7214(v9);
      *v11 = sub_2296B6AF0(*(v8 + *(v124 + 48)));
      v11[1] = v12;
      v11[2] = v13;
      sub_22953EAE4(v8, &qword_27D87D208, &qword_22A578150);
      v138 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_229583960((v14 > 1), v15 + 1, 1);
        v3 = v138;
      }

      v16 = v0[22];
      *(v3 + 16) = v15 + 1;
      sub_22957F2F8(v16, v3 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v15, &qword_27D87D218, &unk_22A578160);
      v6 += v123;
      --v2;
    }

    while (v2);
  }

  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882110, &qword_22A57DD30);
    v17 = sub_22A4DE40C();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v138 = v17;

  sub_2296B6560(v18, 1, &v138);
  v19 = v0[2];

  v20 = sub_2296B72BC(v19, v138);

  v21 = v19;
  v22 = sub_2296B8258(v20, v21);

  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v0[9];
    v116 = v0[4];
    v138 = MEMORY[0x277D84F90];
    sub_22958345C(0, v23, 0);
    v25 = v138;
    v26 = v22 + 64;
    result = sub_22A4DE04C();
    v28 = result;
    v29 = 0;
    v115 = v0;
    v30 = v24 + 32;
    v110 = v22 + 72;
    v111 = v23;
    v112 = v22 + 64;
    v113 = v24;
    v114 = v22;
    while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(v22 + 32))
    {
      if ((*(v26 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
      {
        goto LABEL_53;
      }

      v125 = v28 >> 6;
      v118 = v29;
      v121 = *(v22 + 36);
      v129 = v0[12];
      v32 = v0[7];
      v33 = v0[8];
      v35 = v0[5];
      v34 = v0[6];
      v134 = *(v24 + 72);
      (*(v24 + 16))(v32, *(v22 + 48) + v134 * v28, v33);
      v36 = (*(v22 + 56) + 24 * v28);
      v137 = v25;
      v37 = v24;
      v38 = *v36;
      v39 = v36[1];
      v40 = v30;
      v41 = v36[2];
      v42 = *(v37 + 32);
      v42(v34, v32, v33);
      v43 = (v34 + *(v116 + 48));
      *v43 = v38;
      v43[1] = v39;
      v43[2] = v41;
      sub_22957F2F8(v34, v35, &qword_27D87EE38, &qword_22A57DD28);
      v44 = v35 + *(v116 + 48);
      v45 = v41;
      v30 = v40;
      v25 = v137;

      v46 = *(v44 + 16);
      v47 = v42;

      v42(v129, v35, v33);
      v138 = v137;
      v49 = *(v137 + 16);
      v48 = *(v137 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_22958345C((v48 > 1), v49 + 1, 1);
        v25 = v138;
      }

      v0 = v115;
      v50 = v115[12];
      v51 = v115[8];
      *(v25 + 16) = v49 + 1;
      v24 = v113;
      result = v47(v25 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + v49 * v134, v50, v51);
      v22 = v114;
      v31 = 1 << *(v114 + 32);
      if (v28 >= v31)
      {
        goto LABEL_54;
      }

      v26 = v112;
      v52 = *(v112 + 8 * v125);
      if ((v52 & (1 << v28)) == 0)
      {
        goto LABEL_55;
      }

      if (v121 != *(v114 + 36))
      {
        goto LABEL_56;
      }

      v53 = v52 & (-2 << (v28 & 0x3F));
      if (v53)
      {
        v31 = __clz(__rbit64(v53)) | v28 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v54 = v125 << 6;
        v55 = (v110 + 8 * v125);
        v56 = v125 + 1;
        while (v56 < (v31 + 63) >> 6)
        {
          v58 = *v55++;
          v57 = v58;
          v54 += 64;
          ++v56;
          if (v58)
          {
            result = sub_22962F424(v28, v121, 0);
            v31 = __clz(__rbit64(v57)) + v54;
            goto LABEL_12;
          }
        }

        result = sub_22962F424(v28, v121, 0);
      }

LABEL_12:
      v29 = v118 + 1;
      v28 = v31;
      if (v118 + 1 == v111)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:

    v59 = v117;
    v60 = MEMORY[0x277D84F90];
    v135 = *(v117 + 16);
    if (!v135)
    {
LABEL_38:
      v75 = *(v60 + 16);
      if (v75)
      {
        v76 = v0[14];
        v136 = v0[13];
        v77 = v0[9];
        v138 = MEMORY[0x277D84F90];
        sub_22958345C(0, v75, 0);
        v78 = v138;
        v79 = v60 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
        v131 = *(v76 + 72);
        do
        {
          v80 = v0[18];
          v81 = v0[19];
          v82 = v0[11];
          v83 = v0[8];
          sub_229564F88(v79, v81, &qword_27D87D208, &qword_22A578150);
          sub_22957F2F8(v81, v80, &qword_27D87D208, &qword_22A578150);

          (*(v77 + 16))(v82, v80, v83);
          sub_2296B7214(v80);
          v138 = v78;
          v85 = *(v78 + 16);
          v84 = *(v78 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_22958345C((v84 > 1), v85 + 1, 1);
            v78 = v138;
          }

          v86 = v0[11];
          v87 = v0[8];
          *(v78 + 16) = v85 + 1;
          (*(v77 + 32))(v78 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v85, v86, v87);
          v79 += v131;
          --v75;
        }

        while (v75);
      }

      v88 = v0[24];
      v89 = v119;
      if (v119)
      {
        v90 = v0[14];
        v127 = v0[13];
        v91 = v0[9];
        v138 = MEMORY[0x277D84F90];
        sub_22958345C(0, v119, 0);
        v92 = v138;
        v93 = v88 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
        v122 = *(v90 + 72);
        do
        {
          v120 = v89;
          v95 = v0[18];
          v94 = v0[19];
          v96 = v0[15];
          v97 = v0[10];
          v132 = v0[8];
          sub_229564F88(v93, v94, &qword_27D87D208, &qword_22A578150);
          sub_229564F88(v94, v95, &qword_27D87D208, &qword_22A578150);
          v98 = *(v127 + 48);
          v99 = *(v95 + v98);
          sub_22966B7F0(v95, v96);
          *(v96 + v98) = v99;
          (*(v91 + 16))(v97, v96, v132);
          sub_22953EAE4(v96, &qword_27D87D208, &qword_22A578150);
          sub_22953EAE4(v94, &qword_27D87D208, &qword_22A578150);
          v138 = v92;
          v101 = *(v92 + 16);
          v100 = *(v92 + 24);
          if (v101 >= v100 >> 1)
          {
            sub_22958345C((v100 > 1), v101 + 1, 1);
            v92 = v138;
          }

          v102 = v0[10];
          v103 = v0[8];
          *(v92 + 16) = v101 + 1;
          (*(v91 + 32))(v92 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v101, v102, v103);
          v93 += v122;
          v89 = v120 - 1;
        }

        while (v120 != 1);
      }

      v104 = objc_allocWithZone(HMDNetworkMismatchDetectorResult);
      v105 = sub_22A4DD81C();

      v106 = sub_22A4DD81C();

      v107 = sub_22A4DD81C();

      v108 = [v104 initWithAccessoriesNotOnWiFi:v105 accessoriesNotOnWiFiAndNotConnectingToPrimaryResident:v106 accessoriesReportingDiagnostic:v107];

      v109 = v0[1];

      return v109(v108);
    }

    v61 = 0;
    v126 = v0[14];
    v130 = v0[13];
    while (v61 < *(v59 + 16))
    {
      v62 = v60;
      v63 = v0[17];
      v65 = v0[2];
      v64 = v0[3];
      v66 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v67 = *(v126 + 72);
      sub_229564F88(v0[24] + v66 + v67 * v61, v63, &qword_27D87D208, &qword_22A578150);
      sub_2296B5C48(v63, *(v63 + *(v130 + 48)), v65, v64);
      v69 = v68;
      v70 = v0[17];
      if (v69)
      {
        sub_22957F2F8(v70, v0[16], &qword_27D87D208, &qword_22A578150);
        v60 = v62;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_229583920(0, *(v62 + 16) + 1, 1);
          v60 = v138;
        }

        v73 = *(v60 + 16);
        v72 = *(v60 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_229583920((v72 > 1), v73 + 1, 1);
          v60 = v138;
        }

        v74 = v0[16];
        *(v60 + 16) = v73 + 1;
        result = sub_22957F2F8(v74, v60 + v66 + v73 * v67, &qword_27D87D208, &qword_22A578150);
      }

      else
      {
        result = sub_22953EAE4(v70, &qword_27D87D208, &qword_22A578150);
        v60 = v62;
      }

      ++v61;
      v59 = v117;
      if (v135 == v61)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void sub_2296B5C48(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for NetworkDetectAccessory(0);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - v16;
  v18 = sub_22A4DD07C();
  v75 = *(v18 - 8);
  v76 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v22);
  if (*(a1 + *(v9 + 36)))
  {
    sub_229541CB0(a4, &off_283CDFCA0);
    sub_2296B8404(a1, v12);
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCDC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = v29;
      *v28 = 136315138;
      sub_22A4DB7DC();
      sub_229586A3C();
      v30 = sub_22A4DE5CC();
      v32 = v31;
      sub_2296B7214(v12);
      v33 = sub_2295A3E30(v30, v32, &v77);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_229538000, v26, v27, "Accessory %s is primary resident.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);

LABEL_32:
      (*(v75 + 8))(v21, v76);
      return;
    }

    v46 = v12;
    goto LABEL_31;
  }

  v21 = &v72 - v25;
  v34 = sub_2296B6AF0(a2);
  v73 = v35;
  v74 = v34;
  v37 = v36;
  if ((sub_2296B7AC4(a3, v36, v35) & 1) == 0)
  {
    if ([a2 hasAppleMediaAccessoryDiagnosticInfo])
    {
      v47 = [a2 appleMediaAccessoryDiagnosticInfo];
      if (!v47)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v48 = v47;
      v49 = [v47 hasEventRouterServerInfo];

      if (v49)
      {
        v50 = [a2 appleMediaAccessoryDiagnosticInfo];
        if (!v50)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v51 = v50;
        v52 = [v50 eventRouterServerInfo];

        if (!v52)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v53 = [v52 hasConnectionState];

        if (v53)
        {
          v54 = [a2 appleMediaAccessoryDiagnosticInfo];
          if (v54)
          {
            v55 = v54;
            v56 = [v54 eventRouterServerInfo];

            if (v56)
            {
              [v56 connectionState];

              return;
            }

            goto LABEL_38;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }
      }
    }

    v57 = [a2 hasAppleMediaAccessoryDiagnosticInfo];
    v72 = v37;
    if ((v57 & 1) == 0)
    {
      v62 = 0x800000022A590B70;
      v61 = 0xD000000000000021;
LABEL_28:
      sub_229541CB0(a4, &off_283CDFCA0);
      sub_2296B8404(a1, v17);

      v63 = sub_22A4DD05C();
      v64 = sub_22A4DDCEC();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v77 = v66;
        *v65 = 136315394;
        sub_22A4DB7DC();
        sub_229586A3C();
        v67 = sub_22A4DE5CC();
        v69 = v68;
        sub_2296B7214(v17);
        v70 = sub_2295A3E30(v67, v69, &v77);

        *(v65 + 4) = v70;
        *(v65 + 12) = 2082;
        v71 = sub_2295A3E30(v61, v62, &v77);

        *(v65 + 14) = v71;
        _os_log_impl(&dword_229538000, v63, v64, "Accessory %s is missing %{public}s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v66, -1, -1);
        MEMORY[0x22AAD4E50](v65, -1, -1);

        goto LABEL_32;
      }

      v46 = v17;
LABEL_31:
      sub_2296B7214(v46);
      goto LABEL_32;
    }

    v58 = [a2 appleMediaAccessoryDiagnosticInfo];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 hasEventRouterServerInfo];

      if (v60)
      {
        v61 = 0x697463656E6E6F43;
      }

      else
      {
        v61 = 0xD000000000000015;
      }

      if (v60)
      {
        v62 = 0xEF65746174536E6FLL;
      }

      else
      {
        v62 = 0x800000022A590BA0;
      }

      goto LABEL_28;
    }

    goto LABEL_34;
  }

  sub_229541CB0(a4, &off_283CDFCA0);
  sub_2296B8404(a1, v15);
  v38 = sub_22A4DD05C();
  v39 = sub_22A4DDCDC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v77 = v41;
    *v40 = 136315138;
    sub_22A4DB7DC();
    sub_229586A3C();
    v42 = sub_22A4DE5CC();
    v44 = v43;
    sub_2296B7214(v15);
    v45 = sub_2295A3E30(v42, v44, &v77);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_229538000, v38, v39, "Accessory %s has matching network.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AAD4E50](v41, -1, -1);
    MEMORY[0x22AAD4E50](v40, -1, -1);
  }

  else
  {

    sub_2296B7214(v15);
  }

  (*(v75 + 8))(v24, v76);
}

id sub_2296B6460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkMismatchDetector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t *sub_2296B64C8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_2296B7F30(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void sub_2296B6560(uint64_t a1, char a2, void *a3)
{
  v65 = a3;
  v6 = sub_22A4DB7DC();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D218, &unk_22A578160);
  v62 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v61 = v56 - v10;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_24;
  }

  v56[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v61;
  v12 = (v61 + *(v9 + 48));
  v13 = *(v62 + 80);
  v60 = a1;
  v14 = (v63 + 32);
  v58 = a1 + ((v13 + 32) & ~v13);
  sub_229564F88(v58, v61, &qword_27D87D218, &unk_22A578160);
  v15 = v66;
  v57 = *v14;
  v57(v66, v11, v64);
  v16 = *v12;
  v17 = v12[1];
  v18 = v12[2];
  v19 = *v65;
  v21 = sub_2296DBEC0(v15);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (a2)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_229898590();
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2298941B0(v24, a2 & 1);
  v26 = sub_2296DBEC0(v66);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_14:
      v30 = v66;
      v31 = *v65;
      *(*v65 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v57(v31[6] + *(v63 + 72) * v21, v30, v64);
      v32 = (v31[7] + 24 * v21);
      *v32 = v16;
      v32[1] = v17;
      v32[2] = v18;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v59 != 1)
      {
        v36 = 1;
        while (v36 < *(v60 + 16))
        {
          v37 = v61;
          sub_229564F88(v58 + *(v62 + 72) * v36, v61, &qword_27D87D218, &unk_22A578160);
          v38 = *v14;
          v39 = v66;
          (*v14)(v66, v37, v64);
          v40 = *v12;
          v41 = v12[1];
          v18 = v12[2];
          v42 = *v65;
          v43 = sub_2296DBEC0(v39);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v34 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v34)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_2298941B0(v47, 1);
            v43 = sub_2296DBEC0(v66);
            if ((v48 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v50 = v66;
          v51 = *v65;
          *(*v65 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v38(v51[6] + *(v63 + 72) * v43, v50, v64);
          v53 = (v51[7] + 24 * v52);
          *v53 = v40;
          v53[1] = v41;
          v53[2] = v18;
          v54 = v51[2];
          v34 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v51[2] = v55;
          if (v59 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v28 = swift_allocError();
    swift_willThrow();
    v69 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v66, v64);
      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22A4DE67C();
  __break(1u);
LABEL_29:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A590BE0);
  sub_22A4DE31C();
  MEMORY[0x22AAD08C0](39, 0xE100000000000000);
  sub_22A4DE39C();
  __break(1u);
}

void *sub_2296B6AF0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8814C0, &unk_22A583F10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - v3;
  v54 = sub_22A4DBC3C();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE48, &qword_22A57DD40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_22A4DBAEC();
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result wifiInfo];

  if (v13)
  {
    v14 = [objc_opt_self() wifiNetworkInfoFromProto_];
  }

  else
  {
    v14 = 0;
  }

  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_57;
  }

  v15 = result;
  v16 = [result networkInfos];

  v58 = v4;
  if (v16 && (v61 = 0, sub_229562F68(0, &unk_27D8802D0, 0x277CD1718), sub_22A4DD82C(), v16, (v17 = v61) != 0))
  {
    v18 = v61 & 0xFFFFFFFFFFFFFF8;
    if (v61 >> 62)
    {
      goto LABEL_27;
    }

    v19 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = a1;
    for (i = v14; v19; i = v14)
    {
      a1 = 0;
      v14 = (v53 + 48);
      v55 = (v53 + 32);
      v56 = v17 & 0xC000000000000001;
      v60 = MEMORY[0x277D84F90];
      v51 = v19;
      while (1)
      {
        if (v56)
        {
          v20 = MEMORY[0x22AAD13F0](a1, v17);
        }

        else
        {
          if (a1 >= *(v18 + 16))
          {
            goto LABEL_26;
          }

          v20 = *(v17 + 8 * a1 + 32);
        }

        v21 = v20;
        v22 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          break;
        }

        sub_229800B20(v20, v8);

        if ((*v14)(v8, 1, v9) == 1)
        {
          sub_22953EAE4(v8, &qword_27D87EE48, &qword_22A57DD40);
        }

        else
        {
          v23 = v9;
          v24 = v17;
          v25 = v18;
          v26 = *v55;
          v27 = v23;
          (*v55)(v59, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_22958AD60(0, v60[2] + 1, 1, v60);
          }

          v29 = v60[2];
          v28 = v60[3];
          if (v29 >= v28 >> 1)
          {
            v60 = sub_22958AD60((v28 > 1), v29 + 1, 1, v60);
          }

          v30 = v59;
          v31 = v60;
          v60[2] = v29 + 1;
          (v26)(v31 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, v30, v27);
          v4 = v58;
          v18 = v25;
          v17 = v24;
          v9 = v27;
          v19 = v51;
        }

        ++a1;
        if (v22 == v19)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v19 = sub_22A4DE0EC();
      v49 = a1;
    }

    v60 = MEMORY[0x277D84F90];
LABEL_29:

    a1 = v49;
    v14 = i;
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_58;
  }

  v32 = result;
  v33 = [result networkServiceInfos];

  if (v33)
  {
    v61 = 0;
    sub_229562F68(0, &unk_27D87D7A0, 0x277CD1720);
    sub_22A4DD82C();

    v34 = v61;
    if (v61)
    {
      v35 = (v61 & 0xFFFFFFFFFFFFFF8);
      if (v61 >> 62)
      {
        goto LABEL_55;
      }

      for (j = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_22A4DE0EC())
      {
        v37 = v54;
        i = v14;
        if (!j)
        {
          break;
        }

        v38 = 0;
        v59 = (v34 & 0xC000000000000001);
        v14 = (v52 + 48);
        v39 = (v52 + 32);
        v40 = MEMORY[0x277D84F90];
        v56 = v35;
        while (1)
        {
          if (v59)
          {
            v41 = MEMORY[0x22AAD13F0](v38, v34);
          }

          else
          {
            if (v38 >= v35[2])
            {
              goto LABEL_54;
            }

            v41 = *(v34 + 8 * v38 + 32);
          }

          v35 = v41;
          v42 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          sub_229800F88(v41, v4);

          if ((*v14)(v4, 1, v37) == 1)
          {
            sub_22953EAE4(v4, &qword_27D8814C0, &unk_22A583F10);
          }

          else
          {
            v43 = v37;
            v44 = *v39;
            (*v39)(v57, v4, v43);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_22958ADB0(0, *(v40 + 2) + 1, 1, v40);
            }

            v46 = *(v40 + 2);
            v45 = *(v40 + 3);
            if (v46 >= v45 >> 1)
            {
              v40 = sub_22958ADB0((v45 > 1), v46 + 1, 1, v40);
            }

            *(v40 + 2) = v46 + 1;
            v47 = v54;
            v44(&v40[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v46], v57, v54);
            v37 = v47;
            v4 = v58;
          }

          v35 = v56;
          ++v38;
          if (v42 == j)
          {
            goto LABEL_51;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        ;
      }

LABEL_51:
    }
  }

  return v60;
}

uint64_t sub_2296B7214(uint64_t a1)
{
  v2 = type metadata accessor for NetworkDetectAccessory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for NetworkDetectAccessory(uint64_t a1)
{
  result = qword_281402398;
  if (!qword_281402398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2296B72BC(void *a1, uint64_t a2)
{
  v87 = a1;
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v95 = &v79 - v8;
  MEMORY[0x28223BE20](v7);
  v82 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE40, &qword_22A57DD38);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v92 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v79 - v13;
  v14 = *(a2 + 64);
  v91 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v90 = (v15 + 63) >> 6;
  v84 = v4;
  v85 = (v4 + 16);
  v93 = (v4 + 32);
  v88 = (v4 + 8);
  v83 = a2;

  v18 = 0;
  v81 = MEMORY[0x277D84F98];
  v86 = v3;
  while (2)
  {
    while (2)
    {
      v20 = v90;
      for (i = v91; ; i = v91)
      {
        if (!v17)
        {
          if (v20 <= v18 + 1)
          {
            v22 = v18 + 1;
          }

          else
          {
            v22 = v20;
          }

          v23 = v22 - 1;
          v24 = v92;
          while (1)
          {
            v21 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v21 >= v20)
            {
              v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
              (*(*(v53 - 8) + 56))(v24, 1, 1, v53);
              v17 = 0;
              v18 = v23;
              goto LABEL_18;
            }

            v17 = *(i + 8 * v21);
            ++v18;
            if (v17)
            {
              v18 = v21;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

        v21 = v18;
LABEL_17:
        v25 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v26 = v25 | (v21 << 6);
        v27 = v83;
        v28 = v84;
        (*(v84 + 16))(v82, *(v83 + 48) + *(v84 + 72) * v26, v3);
        v29 = (*(v27 + 56) + 24 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[2];
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
        v34 = &v92[*(v33 + 48)];
        v35 = *(v28 + 32);
        v24 = v92;
        v35();
        *v34 = v30;
        *(v34 + 1) = v31;
        *(v34 + 2) = v32;
        (*(*(v33 - 8) + 56))(v24, 0, 1, v33);
        v36 = v32;

LABEL_18:
        v37 = v89;
        sub_22957F2F8(v24, v89, &qword_27D87EE40, &qword_22A57DD38);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
        if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
        {

          return v81;
        }

        v39 = (v37 + *(v38 + 48));
        v40 = v39[1];
        v94 = *v39;
        v41 = v39[2];
        (*v93)(v95, v37, v3);
        if (!v41)
        {
LABEL_33:
          v42 = v41;
          goto LABEL_36;
        }

        v42 = v41;
        v43 = [v42 SSID];
        if (v43)
        {
          v44 = v43;
          v45 = sub_22A4DD5EC();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        v48 = [v87 SSID];
        if (!v48)
        {
          if (v47)
          {
LABEL_34:

            v3 = v86;
            goto LABEL_36;
          }

          goto LABEL_30;
        }

        v49 = v48;
        v50 = sub_22A4DD5EC();
        v52 = v51;

        if (!v47)
        {
          break;
        }

        if (!v52)
        {
          goto LABEL_34;
        }

        if (v45 == v50 && v47 == v52)
        {

LABEL_30:

          v3 = v86;
          goto LABEL_6;
        }

        v54 = sub_22A4DE60C();

        v3 = v86;
        if ((v54 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_6:

        (*v88)(v95, v3);
        v20 = v90;
      }

      v3 = v86;
      if (!v52)
      {
        goto LABEL_6;
      }

LABEL_36:
      v55 = *v85;
      v56 = v80;
      (*v85)(v80, v95, v3);
      v79 = v42;

      v57 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v57;
      v59 = sub_2296DBEC0(v56);
      v61 = v57[2];
      v62 = (v60 & 1) == 0;
      v63 = __OFADD__(v61, v62);
      v64 = v61 + v62;
      if (v63)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v65 = v60;
      if (v57[3] >= v64)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = v59;
          sub_229898590();
          v59 = v77;
        }
      }

      else
      {
        sub_2298941B0(v64, isUniquelyReferenced_nonNull_native);
        v59 = sub_2296DBEC0(v80);
        if ((v65 & 1) != (v66 & 1))
        {
          goto LABEL_50;
        }
      }

      v81 = v96;
      if (v65)
      {
        v67 = (v96[7] + 24 * v59);
        v68 = v67[2];
        *v67 = v94;
        v67[1] = v40;
        v67[2] = v41;

        v69 = *v88;
        (*v88)(v80, v3);
        v69(v95, v3);
        continue;
      }

      break;
    }

    v96[(v59 >> 6) + 8] |= 1 << v59;
    v70 = v80;
    v71 = v84;
    v72 = v59;
    v55(v81[6] + *(v84 + 72) * v59, v80, v3);
    v73 = (v81[7] + 24 * v72);
    *v73 = v94;
    v73[1] = v40;
    v73[2] = v41;

    v74 = *(v71 + 8);
    v74(v70, v3);
    v74(v95, v3);
    v75 = v81[2];
    v63 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (!v63)
    {
      v81[2] = v76;
      continue;
    }

    break;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

uint64_t sub_2296B7AC4(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_22A4DBC3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 networkGatewayIPAddress];
  if (!result)
  {
    return result;
  }

  v50 = v6;
  v11 = result;
  v51 = sub_22A4DD5EC();
  v13 = v12;

  v14 = [a1 networkGatewayMACAddress];
  if (!v14)
  {
LABEL_31:

    return 0;
  }

  v15 = v14;
  v45 = sub_22A4DD5EC();
  v46 = v16;

  if (!a3)
  {
LABEL_15:
    v29 = *(a2 + 16);
    if (v29)
    {
      v48 = *(v7 + 16);
      v49 = v7 + 16;
      v30 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v31 = (v7 + 8);
      v47 = *(v7 + 72);
      v48(v9, v30, v50);
      while (1)
      {
        v33 = sub_22A4DBBEC();
        if (v34)
        {
          v35 = v33;
          v36 = v34;
          v54 = v33;
          v55 = v34;
          v52 = v51;
          v53 = v13;
          sub_22962F254();
          if (sub_22A4DDFFC())
          {
            v54 = v35;
            v55 = v36;
            v52 = v45;
            v53 = v46;
            v37 = sub_22A4DDFFC();

            if (v37)
            {
              (*v31)(v9, v50);

              goto LABEL_35;
            }
          }

          else
          {
          }
        }

        v38 = sub_22A4DBBFC();
        if (v39)
        {
          v40 = v38;
          v41 = v39;
          v54 = v38;
          v55 = v39;
          v52 = v51;
          v53 = v13;
          sub_22962F254();
          if (sub_22A4DDFFC())
          {
            v54 = v40;
            v55 = v41;
            v52 = v45;
            v53 = v46;
            v42 = sub_22A4DDFFC();
            v32 = v50;
            (*v31)(v9, v50);

            if (v42)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v32 = v50;
            (*v31)(v9, v50);
          }
        }

        else
        {
          v32 = v50;
          (*v31)(v9, v50);
        }

        v30 += v47;
        if (!--v29)
        {
          break;
        }

        v48(v9, v30, v32);
      }
    }

    goto LABEL_31;
  }

  v17 = a3;
  v18 = [v17 networkGatewayIPAddress];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = sub_22A4DD5EC();
  v22 = v21;

  if (v20 == v51 && v22 == v13)
  {

    goto LABEL_10;
  }

  v23 = sub_22A4DE60C();

  if ((v23 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_10:
  v24 = [v17 networkGatewayMACAddress];
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = v24;
  v26 = sub_22A4DD5EC();
  v28 = v27;

  if (v26 == v45 && v28 == v46)
  {

    return 1;
  }

  v43 = sub_22A4DE60C();

  if ((v43 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:

LABEL_35:

  return 1;
}

uint64_t sub_2296B7F30(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = a2;
  v44 = a4;
  v33 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v5;
  v41 = sub_22A4DB7DC();
  result = MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v45 = a3;
  v10 = *(a3 + 64);
  v36 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v34 = 0;
  v35 = (v11 + 63) >> 6;
  v47 = v7;
  v38 = v7 + 8;
  v39 = v7 + 16;
  while (v13)
  {
    v14 = __clz(__rbit64(v13));
    v46 = (v13 - 1) & v13;
LABEL_11:
    v17 = v14 | (v9 << 6);
    v18 = v45;
    v19 = *(v47 + 16);
    v20 = v40;
    v21 = v41;
    v19(v40, v45[6] + *(v47 + 72) * v17, v41);
    v22 = v18[7];
    v37 = v17;
    v23 = (v22 + 24 * v17);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v27 = v42;
    v19(v42, v20, v21);
    v28 = (v27 + *(v43 + 48));
    *v28 = v25;
    v28[1] = v24;
    v28[2] = v26;
    v29 = v26;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v30 = v29;
    LOBYTE(v26) = sub_2296B7AC4(v44, v24, v26);
    sub_22953EAE4(v27, &qword_27D87EE38, &qword_22A57DD28);

    result = (*(v47 + 8))(v20, v21);
    v13 = v46;
    if ((v26 & 1) == 0)
    {
      *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_229772E24(v33, v32, v34, v45);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v35)
    {
      return sub_229772E24(v33, v32, v34, v45);
    }

    v16 = *(v36 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v46 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296B8258(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v9;
      v11 = sub_2296B64C8(v13, v6, a1, v14);
      MEMORY[0x22AAD4E50](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_2296B7F30((v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_2296B8404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDetectAccessory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B8468(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229586D38;

  return sub_2296B39CC(a1, a2, v6, v7, v8);
}

uint64_t sub_2296B852C(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetectAccessory(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229569B30;

  return sub_2296B463C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2296B8630(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_22977C8E0(a1, v4);
}

unint64_t sub_2296B86E8()
{
  result = qword_27D87EE70;
  if (!qword_27D87EE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87EE68, &unk_22A57DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87EE70);
  }

  return result;
}

uint64_t sub_2296B879C(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2296B8830(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2296B8878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2296B88C8()
{
  v1[2] = v0;
  v2 = sub_22A4DD07C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296B8988, 0, 0);
}

uint64_t sub_2296B8988()
{
  v21 = v0;
  v1 = v0[2];
  sub_2296B8FBC();
  sub_2297A46D4();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  if (v5)
  {
    v9 = v0[2];
    v19 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    v12 = [v9 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    v16 = sub_2295A3E30(v13, v15, &v20);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A590C70, &v20);
    _os_log_impl(&dword_229538000, v3, v4, "%s-%s Home energy cost context is unavailable", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v6 + 8))(v19, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_2296B8D0C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2296B8DB4;

  return sub_2296B88C8();
}

uint64_t sub_2296B8DB4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2296B8F10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_2296B8D0C(v2, v3);
}

unint64_t sub_2296B8FBC()
{
  result = qword_2814017B0;
  if (!qword_2814017B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814017B0);
  }

  return result;
}

uint64_t sub_2296B9008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22A4DB78C() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2296B9074(uint64_t *a1, char a2, int a3)
{
  LODWORD(v84) = a3;
  v83 = a1;
  v80 = *v3;
  v5 = sub_22A4DD07C();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE80, &qword_22A57DEC0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE88, &qword_22A57DEC8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v71 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v76 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v67 - v18;
  v20 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v73 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v72 = &v67 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v67 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v67 - v32;
  v34 = sub_22A4DB7DC();
  v35 = *(v34 - 8);
  v78 = *(v35 + 16);
  v79 = v34;
  v77 = v35 + 16;
  v78(v31, v83);
  v31[*(v20 + 20)] = a2;
  v31[*(v20 + 24)] = (a2 | v84) & 1;
  sub_2296B9BD8(v31, v33);
  v84 = v33;
  sub_2296B9C3C(v33, v19);
  v69 = *(v21 + 56);
  v69(v19, 0, 1, v20);
  v36 = OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_lastReportedState;
  swift_beginAccess();
  v37 = *(v10 + 56);
  sub_2296B9CA0(v19, v12);
  v83 = v3;
  v70 = v36;
  sub_2296B9CA0(v3 + v36, &v12[v37]);
  v38 = *(v21 + 48);
  if (v38(v12, 1, v20) == 1)
  {
    sub_22953EAE4(v19, &qword_27D87EE88, &qword_22A57DEC8);
    if (v38(&v12[v37], 1, v20) == 1)
    {
      sub_2296B9D10(v84);
      return sub_22953EAE4(v12, &qword_27D87EE88, &qword_22A57DEC8);
    }

    goto LABEL_6;
  }

  v40 = v76;
  sub_2296B9CA0(v12, v76);
  if (v38(&v12[v37], 1, v20) == 1)
  {
    sub_22953EAE4(v19, &qword_27D87EE88, &qword_22A57DEC8);
    sub_2296B9D10(v40);
LABEL_6:
    v68 = v21 + 56;
    v41 = &qword_27D87EE80;
    v42 = &qword_22A57DEC0;
LABEL_10:
    sub_22953EAE4(v12, v41, v42);
    v44 = v83;
    v45 = v84;
LABEL_11:
    v46 = type metadata accessor for NetworkDiagnosticsSymptom(0);
    v85[3] = v46;
    v85[4] = &off_283CE23D8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
    v48 = *(v45 + *(v20 + 20));
    v49 = *(v45 + *(v20 + 24));
    v51 = v78;
    v50 = v79;
    (v78)(boxed_opaque_existential_1 + v46[6], v44 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_homeUUID, v79);
    v51(boxed_opaque_existential_1 + v46[7], v45, v50);
    *boxed_opaque_existential_1 = v48;
    *(boxed_opaque_existential_1 + 1) = v49;
    v52 = (boxed_opaque_existential_1 + v46[8]);
    *v52 = 0xD000000000000022;
    v52[1] = 0x800000022A590D10;
    sub_2295FEE90(v85);
    __swift_destroy_boxed_opaque_existential_0(v85);
    v53 = v71;
    sub_2296B9C3C(v45, v71);
    v69(v53, 0, 1, v20);
    v54 = v70;
    swift_beginAccess();
    sub_2296B9D6C(v53, v44 + v54);
    swift_endAccess();
    v55 = v74;
    sub_229541CB0(v80, &off_283CDFE08);
    v56 = v72;
    sub_2296B9C3C(v45, v72);
    v57 = v73;
    sub_2296B9C3C(v45, v73);
    v58 = sub_22A4DD05C();
    v59 = sub_22A4DDCCC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 67109376;
      v61 = v56;
      v62 = *(v56 + *(v20 + 20));
      sub_2296B9D10(v61);
      *(v60 + 4) = v62;
      *(v60 + 8) = 1024;
      v63 = *(v57 + *(v20 + 24));
      sub_2296B9D10(v57);
      *(v60 + 10) = v63;
      _os_log_impl(&dword_229538000, v58, v59, "Sent Network Diagnostics symptom (isPrimaryResident=%{BOOL}d, canReachPrimaryResident=%{BOOL}d)", v60, 0xEu);
      MEMORY[0x22AAD4E50](v60, -1, -1);
    }

    else
    {
      sub_2296B9D10(v57);
      sub_2296B9D10(v56);
    }

    (*(v81 + 8))(v55, v82);
    return sub_2296B9D10(v45);
  }

  v68 = v21 + 56;
  sub_2296B9BD8(&v12[v37], v28);
  v43 = sub_22A4DB78C();
  sub_22953EAE4(v19, &qword_27D87EE88, &qword_22A57DEC8);
  if ((v43 & 1) == 0 || *(v40 + *(v20 + 20)) != v28[*(v20 + 20)])
  {
    sub_2296B9D10(v28);
    sub_2296B9D10(v40);
    v41 = &qword_27D87EE88;
    v42 = &qword_22A57DEC8;
    goto LABEL_10;
  }

  v64 = *(v20 + 24);
  v65 = *(v40 + v64);
  v66 = v28[v64];
  sub_2296B9D10(v28);
  sub_2296B9D10(v40);
  sub_22953EAE4(v12, &qword_27D87EE88, &qword_22A57DEC8);
  v44 = v83;
  v45 = v84;
  if (v65 != v66)
  {
    goto LABEL_11;
  }

  return sub_2296B9D10(v45);
}

uint64_t sub_2296B98F4()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_homeUUID;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_symptomReporter));
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_lastReportedState, &qword_27D87EE88, &qword_22A57DEC8);

  return swift_deallocClassInstance();
}

void sub_2296B99E8(uint64_t a1)
{
  sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    sub_2296B9ABC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2296B9ABC(uint64_t a1)
{
  if (!qword_2814020F0)
  {
    type metadata accessor for NetworkDiagnosticsSymptomReporter.State(255);
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_2814020F0);
    }
  }
}

uint64_t sub_2296B9B5C(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2296B9BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B9C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B9CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE88, &qword_22A57DEC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B9D10(uint64_t a1)
{
  v2 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2296B9D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE88, &qword_22A57DEC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B9DEC()
{
  v1 = [*v0 serviceType];
  v2 = sub_22A4DD5EC();
  v4 = v3;

  v6[3] = MEMORY[0x277D837D0];
  v6[4] = &off_283CDFC68;
  v6[0] = v2;
  v6[1] = v4;
  return sub_229890DC4(v6, 0x5465636976726573, 0xEB00000000657079);
}

id sub_2296B9EB8()
{
  v2.receiver = v0;
  v2.super_class = _s15SwiftExtensionsCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2296BA018()
{
  v1 = v0;
  v2 = _s15SwiftExtensionsCMa();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_homeGraphIndexer] = 0;
  *&v3[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_hindsightDigestController] = 0;
  v4 = [v0 workQueue];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for DispatchQueueMonitor();
    swift_allocObject();
    *&v3[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_dispatchQueueMonitor] = sub_2296EF3BC(v5, 0x8AC7230489E80000, 0, 0x8AC7230489E80000, 0);
    v7.receiver = v3;
    v7.super_class = v2;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    [v1 setSwiftExtensions_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2296BA158()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v36 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EEA8, &qword_22A57DFA8);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v36 - v4;
  v5 = [v0 _swiftExtensions];
  type metadata accessor for HomeGraphIndexer(0);
  v6 = v0;
  sub_2295D20D0(v6);
  *&v5[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_homeGraphIndexer] = v7;

  result = [v6 messageDispatcher];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = *MEMORY[0x277CD01E8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v11 = swift_allocObject();
  v40 = xmmword_22A576190;
  *(v11 + 16) = xmmword_22A576190;
  v12 = objc_opt_self();
  *(v11 + 32) = [v12 policyWithEntitlements_];
  sub_22960A928();
  v13 = sub_22A4DD81C();

  [v9 registerForMessage:v10 receiver:v6 policies:v13 selector:sel_handleFindVendorAccessoryRequest_];

  result = [v6 messageDispatcher];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = result;
  v15 = sub_22A4DD5AC();
  v16 = swift_allocObject();
  *(v16 + 16) = v40;
  *(v16 + 32) = [objc_opt_self() defaultSecurePolicy];
  v17 = sub_22A4DD81C();

  [v14 registerForMessage:v15 receiver:v6 policies:v17 selector:sel_handleRemoteEnergyKitClearAllMessage_];

  result = [v6 messageDispatcher];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = result;
  v19 = sub_22A4DDC5C();
  v20 = swift_allocObject();
  *(v20 + 16) = v40;
  *(v20 + 32) = [v12 policyWithEntitlements_];
  v21 = sub_22A4DD81C();

  [v18 registerForMessage:v19 receiver:v6 policies:v21 selector:sel_handleLocalEnergyKitClearAllMessage_];

  result = [v6 featuresDataSource];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v22 = [result isActivityHistory2025Enabled];
  swift_unknownObjectRelease();
  if (v22)
  {
    v23 = type metadata accessor for HindsightDigestController.Configuration(0);
    v24 = v37;
    (*(*(v23 - 8) + 56))(v37, 1, 1, v23);
    type metadata accessor for HindsightDigestController(0);
    memset(v41, 0, sizeof(v41));
    v42 = 0;
    swift_allocObject();
    v25 = v6;
    v26 = sub_2296BC4AC(v25, v24, v41);
    v27 = [v25 _swiftExtensions];
    *&v27[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_hindsightDigestController] = v26;

    v28 = sub_22A4DD9DC();
    v29 = v39;
    (*(*(v28 - 8) + 56))(v39, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v31 = ObjectType;
    v30[4] = v26;
    v30[5] = v31;
    sub_22957F3C0(0, 0, v29, &unk_22A57DFC8, v30);
  }

  result = isInternalBuild();
  if (result)
  {
    v32 = sub_22A4DD9DC();
    v33 = v39;
    (*(*(v32 - 8) + 56))(v39, 1, 1, v32);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v6;
    v35 = v6;
    sub_22957F3C0(0, 0, v33, &unk_22A57DFB8, v34);
  }

  return result;
}

uint64_t sub_2296BA720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  v5[5] = swift_task_alloc();
  v6 = sub_22A4DD07C();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296BA828, 0, 0);
}

uint64_t sub_2296BA828()
{
  sub_22A4DDBFC();
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "Scheduling hindsight digest task", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];

  v8 = *(v6 + 8);
  v0[11] = v8;
  v8(v4, v5);
  sub_22A4DD98C();
  *v7 = xmmword_22A57DF50;
  *(v7 + 16) = 6;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2296BA99C;
  v10 = v0[5];

  return sub_2296BBD98(v10);
}

uint64_t sub_2296BA99C()
{
  v2 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  sub_2296BBD3C(v2);
  if (v0)
  {
    v3 = sub_2296BABF4;
  }

  else
  {
    v3 = sub_2296BAACC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296BAACC()
{
  sub_22A4DDBFC();
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDD0C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "Scheduled hindsight digest task", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  (*(v0 + 88))(*(v0 + 72), *(v0 + 48));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2296BABF4()
{
  v1 = *(v0 + 104);
  sub_22A4DDBFC();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_229538000, v3, v4, "Failed to schedule hindsight digest task: %@", v7, 0xCu);
    sub_2295A1C40(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 88))(*(v0 + 64), *(v0 + 48));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2296BADBC()
{
  v1 = [*(v0 + 16) _swiftExtensions];
  v2 = *&v1[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_dispatchQueueMonitor];
  *(v0 + 24) = v2;

  return MEMORY[0x2822009F8](sub_2296BAE54, v2, 0);
}

uint64_t sub_2296BAE54()
{
  sub_22953E86C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296BB08C(void *a1, void *aBlock, void *a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_2296BB118, 0, 0);
}

uint64_t sub_2296BB118()
{
  v1 = type metadata accessor for NetworkMismatchDetector();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon23NetworkMismatchDetector_dataSource + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_283CDF2A8;
  swift_unknownObjectWeakAssign();
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v0[3].super_class = objc_msgSendSuper2(v0 + 1, sel_init);
  v3 = swift_task_alloc();
  v0[4].receiver = v3;
  *v3 = v0;
  v3[1] = sub_2296BB21C;
  receiver = v0[2].receiver;

  return sub_2296B4CD4(receiver);
}

uint64_t sub_2296BB21C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_2296BB31C, 0, 0);
}

uint64_t sub_2296BB31C()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = *(v0 + 72);
  if (v1)
  {
    v5 = *(v0 + 48);
    v5[2](v5, *(v0 + 72));

    _Block_release(v5);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2296BB3E0()
{
  if (qword_281402D50 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_229628B98();
}

uint64_t sub_2296BB600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2296BB620, 0, 0);
}

uint64_t sub_2296BB620()
{
  v1 = [*(v0 + 24) _swiftExtensions];
  v2 = *&v1[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_homeGraphIndexer];
  *(v0 + 32) = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_2296BB72C;

    return sub_2295D263C();
  }

  else
  {
    **(v0 + 16) = *(v0 + 32) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2296BB72C()
{

  return MEMORY[0x2822009F8](sub_2296BB844, 0, 0);
}

uint64_t sub_2296BB974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2296BB600(a1, v4, v5, v6);
}

uint64_t sub_2296BBA28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296BB3C4();
}

uint64_t sub_2296BBAD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2296BB08C(v2, v3, v4);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2296BBBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2296BAD9C(a1, v4, v5, v6);
}

uint64_t sub_2296BBC7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2296BA720(a1, v4, v5, v7, v6);
}

uint64_t sub_2296BBD3C(uint64_t a1)
{
  v2 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2296BBD98(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v2[7] = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = sub_22A4DD07C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296BBEBC, 0, 0);
}

uint64_t sub_2296BBEBC()
{
  v28 = v0;
  v1 = v0[9];
  v2 = v0[4];
  sub_229541CB0(v0[6], &off_283CDFFD0);
  sub_229568DA8(v2, v1);
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  if (v5)
  {
    v10 = v0[8];
    v25 = v0[12];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    sub_229568DA8(v9, v10);
    v13 = sub_22A4DD64C();
    v15 = v14;
    sub_2296BD150(v9, type metadata accessor for HindsightDigestController.TaskConfiguration);
    v16 = sub_2295A3E30(v13, v15, &v27);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_229538000, v3, v4, "Scheduling task: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v6 + 8))(v25, v8);
  }

  else
  {

    sub_2296BD150(v9, type metadata accessor for HindsightDigestController.TaskConfiguration);
    (*(v6 + 8))(v7, v8);
  }

  v17 = v0[5];
  v18 = v0[6];
  swift_weakInit();
  swift_weakAssign();
  v19 = v17 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_configuration;
  v20 = type metadata accessor for HindsightDigestController.Configuration(0);
  __swift_project_boxed_opaque_existential_0((v19 + *(v20 + 20)), *(v19 + *(v20 + 20) + 24));
  sub_229564F88((v0 + 2), (v0 + 3), &unk_27D87EF70, &qword_22A57E0E8);
  v21 = swift_allocObject();
  v0[13] = v21;
  sub_22957F2F8((v0 + 3), v21 + 16, &unk_27D87EF70, &qword_22A57E0E8);
  *(v21 + 24) = v18;
  v26 = off_283CDC478 + *off_283CDC478;
  v22 = swift_task_alloc();
  v0[14] = v22;
  *v22 = v0;
  v22[1] = sub_2296BC244;
  v23 = v0[4];

  return (v26)(0xD000000000000036, 0x800000022A590F50, v23, &unk_22A57E0F0, v21, &_s16DefaultSchedulerVN, &off_283CDC470);
}

uint64_t sub_2296BC244()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2296BC410;
  }

  else
  {
    v2 = sub_2296BC374;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296BC374()
{
  sub_22953EAE4(v0 + 16, &unk_27D87EF70, &qword_22A57E0E8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296BC410()
{
  sub_22953EAE4(v0 + 16, &unk_27D87EF70, &qword_22A57E0E8);

  v1 = *(v0 + 8);

  return v1();
}

id sub_2296BC4AC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EEA8, &qword_22A57DFA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for HindsightDigestController.Configuration(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v14 = swift_unknownObjectWeakAssign();
  sub_22957F2F8(v14, v3 + 16, &qword_27D87EF68, &qword_22A57E0D0);
  sub_229564F88(a2, v9, &qword_27D87EEA8, &qword_22A57DFA8);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    result = [a1 featuresDataSource];
    if (result)
    {
      v17 = result;
      result = [a1 workQueue];
      if (result)
      {
        v22 = &_s16DefaultSchedulerVN;
        v23 = &off_283CDC470;
        *&v21 = result;
        *&v19 = v17;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EF60, "6D\b");
        MEMORY[0x22AACEC10](&v19, v18);
        sub_229557188(&v21, &v13[*(v10 + 20)]);
        if (v15(v9, 1, v10) != 1)
        {
          sub_22953EAE4(v9, &qword_27D87EEA8, &qword_22A57DFA8);
        }

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_2296BD24C(v9, v13);
LABEL_7:
  sub_2296BD24C(v13, v3 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_configuration);
  sub_229564F88(a3, &v19, &unk_27D87EF80, &unk_22A57E100);
  if (v20)
  {

    sub_22953EAE4(a3, &unk_27D87EF80, &unk_22A57E100);
    sub_22953EAE4(a2, &qword_27D87EEA8, &qword_22A57DFA8);
    sub_229557188(&v19, &v21);
  }

  else
  {
    v22 = &_s15DefaultDelegateVN;
    v23 = &off_283CE5838;

    sub_22953EAE4(a3, &unk_27D87EF80, &unk_22A57E100);
    sub_22953EAE4(a2, &qword_27D87EEA8, &qword_22A57DFA8);
    if (v20)
    {
      sub_22953EAE4(&v19, &unk_27D87EF80, &unk_22A57E100);
    }
  }

  sub_229557188(&v21, v3 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_delegate);
  return v3;
}

uint64_t sub_2296BC804(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22A4DD07C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296BC8DC, 0, 0);
}

uint64_t sub_2296BC8DC()
{
  sub_229541CB0(v0[3], &off_283CDFFD0);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDD0C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "Task running", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];

  v7 = *(v6 + 8);
  v7(v4, v5);
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  v9 = v0[3];
  if (Strong)
  {
    sub_229541CB0(v9, &off_283CDFFD0);
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDD0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_229538000, v10, v11, "Calling delegate", v12, 2u);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    v13 = v0[6];
    v14 = v0[4];

    v7(v13, v14);
    v15 = swift_task_alloc();
    v0[10] = v15;
    *v15 = v0;
    v15[1] = sub_2296BCC0C;

    return sub_2297C7724(Strong);
  }

  else
  {
    sub_229541CB0(v9, &off_283CDFFD0);
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[7];
    v21 = v0[4];
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_229538000, v17, v18, "Died before running closure", v22, 2u);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    v7(v20, v21);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2296BCC0C()
{

  return MEMORY[0x2822009F8](sub_2296BCD08, 0, 0);
}

uint64_t sub_2296BCD08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296BCD88()
{
  sub_22953EAE4(v0 + 16, &qword_27D87EF68, &qword_22A57E0D0);
  sub_2296BD150(v0 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_configuration, type metadata accessor for HindsightDigestController.Configuration);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_delegate));

  return swift_deallocClassInstance();
}

uint64_t sub_2296BCE50(uint64_t a1)
{
  result = type metadata accessor for HindsightDigestController.Configuration(319);
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

uint64_t sub_2296BCF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2296BCF5C(uint64_t a1, int a2)
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

uint64_t sub_2296BCF7C(uint64_t result, int a2, int a3)
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

void sub_2296BCFE4(uint64_t a1)
{
  sub_2296BD068(319);
  if (v1 <= 0x3F)
  {
    sub_2296BD0CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2296BD068(uint64_t a1)
{
  if (!qword_281403848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87EF60, "6D\b");
    v1 = sub_22A4DBA5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281403848);
    }
  }
}

unint64_t sub_2296BD0CC()
{
  result = qword_281402178[0];
  if (!qword_281402178[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281402178);
  }

  return result;
}

uint64_t sub_2296BD150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2296BD1B0()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229569B30;

  return sub_2296BC804(v0 + 16, v2);
}

uint64_t sub_2296BD24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HindsightDigestController.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296BD2D8(uint64_t a1)
{
  result = sub_22A4DD9DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_2296BD35C(uint64_t a1)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = [objc_msgSend(v1 currentHomeDataSource)];
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_22A4DB79C();

    if (sub_22A4DB78C())
    {
      v11 = [v1 countersManager];
      v12 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
      v13 = sub_22A4DD5AC();
      v14 = sub_22A4DB6AC();
      v15 = [v12 initWithGroupName:v13 date:v14];

      v16 = [v11 objectForKeyedSubscript_];
      v17 = sub_22A4DD5AC();
      v29 = [v16 fetchEventCounterForEventName_];

      v18 = sub_22A4DD5AC();
      v19 = [v16 fetchEventCounterForEventName_];

      v20 = sub_22A4DD5AC();
      v21 = [v16 fetchEventCounterForEventName_];

      (*(v4 + 16))(v7, a1, v3);
      v22 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
      v23 = objc_allocWithZone(v22);
      *&v23[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v29;
      *&v23[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v19;
      *&v23[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v21;
      v23[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = 0;
      v24 = sub_22A4DB77C();
      v30.receiver = v23;
      v30.super_class = v22;
      v25 = objc_msgSendSuper2(&v30, sel_initWithHomeUUID_, v24);

      v26 = *(v4 + 8);
      v26(v7, v3);
      v26(v9, v3);
      return v25;
    }

    (*(v4 + 8))(v9, v3);
  }

  return 0;
}

uint64_t sub_2296BD6EC()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87EFA0);
  __swift_project_value_buffer(v0, qword_27D87EFA0);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296BD804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22A5761A0;
  *(v0 + 32) = sub_229562F68(0, &qword_27D87F068, off_278666098);
  result = sub_229562F68(0, &unk_27D87F070, off_2786660A0);
  *(v0 + 40) = result;
  qword_27D8AB860 = v0;
  return result;
}

uint64_t sub_2296BDA18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_2296BDA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_startMutex;
  *v6 = 0;
  *(v6 + 4) = 0;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_logEventDispatcher) = a1;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_countersManager) = a2;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_dailyScheduler) = a3;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_dateProvider) = a4;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_currentHomeDataSource) = a5;
  v8.super_class = HMDCameraRecordingEventObserver;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_2296BDB6C(_BYTE *a1, void *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_27D87B9D8 != -1)
    {
      swift_once();
    }

    v4 = sub_22A4DD07C();
    __swift_project_value_buffer(v4, qword_27D87EFA0);
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_229538000, v5, v6, "Starting", v7, 2u);
      MEMORY[0x22AAD4E50](v7, -1, -1);
    }

    v8 = [a2 logEventDispatcher];
    if (qword_27D87B9E0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
    v9 = sub_22A4DD81C();
    [v8 addObserver:a2 forEventClasses:v9];
    swift_unknownObjectRelease();

    v10 = [a2 dailyScheduler];
    [v10 registerDailyTaskRunner_];

    *a1 = 1;
  }
}

_BYTE *sub_2296BDDC0(_BYTE *result, void *a2)
{
  if (*result == 1)
  {
    v3 = result;
    if (qword_27D87B9D8 != -1)
    {
      swift_once();
    }

    v4 = sub_22A4DD07C();
    __swift_project_value_buffer(v4, qword_27D87EFA0);
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_229538000, v5, v6, "Stopping", v7, 2u);
      MEMORY[0x22AAD4E50](v7, -1, -1);
    }

    [objc_msgSend(a2 logEventDispatcher)];
    result = swift_unknownObjectRelease();
    *v3 = 0;
  }

  return result;
}

void sub_2296BDFCC(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 dateProvider];
  v9 = [v8 startOfCurrentDay];

  sub_22A4DB70C();
  v10 = [v2 countersManager];
  v11 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
  v12 = sub_22A4DD5AC();
  v13 = sub_22A4DB6AC();
  v14 = [v11 initWithGroupName:v12 date:v13];

  v15 = [v10 objectForKeyedSubscript_];
  if ([a1 operationType] == 5)
  {
    v16 = sub_22A4DD5AC();
    [v15 incrementEventCounterForEventName_];

    v17 = sub_22A4DD5AC();
    [v15 incrementEventCounterForEventName:v17 withValue:{objc_msgSend(a1, sel_totalClipDurationMilliseconds)}];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }
}

id sub_2296BE2B4()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = [objc_msgSend(v0 currentHomeDataSource)];
  swift_unknownObjectRelease();
  if (!v8)
  {
    return 0;
  }

  sub_22A4DB79C();

  (*(v2 + 32))(v7, v5, v1);
  v9 = sub_2296BD35C(v7);
  (*(v2 + 8))(v7, v1);
  return v9;
}

void sub_2296BE52C(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (a1)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v3 countersManager];
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  aBlock[4] = sub_2296BEDD0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2296BE8F0;
  aBlock[3] = &block_descriptor_15;
  v13 = _Block_copy(aBlock);

  [v10 removeCounterGroupsBasedOnPredicate_];
  _Block_release(v13);
}

uint64_t sub_2296BE710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 groupName];
    v11 = sub_22A4DD5EC();
    v13 = v12;

    v14 = [v9 date];
    sub_22A4DB70C();

    v15 = sub_22A4DB72C();
    (*(v5 + 8))(v7, v4);
    if (v15 == a3)
    {
      if (v11 == 0xD000000000000014 && 0x800000022A590F90 == v13)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_22A4DE60C();
      }
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2296BE8F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_2296BEADC()
{
  v1 = v0;
  v2 = sub_22A4DB74C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 dateProvider];
  v7 = [v6 startOfCurrentDay];

  sub_22A4DB70C();
  v8 = sub_22A4DB6AC();
  v9 = [v1 logEventForCurrentHomeWithDate_];

  if (v9)
  {
    [objc_msgSend(v1 logEventDispatcher)];

    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v5, v2);
}

void __swiftcall HMDCameraRecordingEventObserver.init()(HMDCameraRecordingEventObserver *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_2296BEDD0(uint64_t a1)
{
  v3 = *(sub_22A4DB74C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2296BE710(a1, v1 + v4, v5);
}

uint64_t sub_2296BEE6C()
{
  v1 = v0;
  v2 = sub_22A4DB74C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 dateProvider];
  v7 = [v6 startOfCurrentDay];

  sub_22A4DB70C();
  v8 = [v1 countersManager];
  v9 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
  v10 = sub_22A4DD5AC();
  v11 = sub_22A4DB6AC();
  v12 = [v9 initWithGroupName:v10 date:v11];

  v13 = [v8 objectForKeyedSubscript_];
  v14 = sub_22A4DD5AC();
  [v13 incrementEventCounterForEventName_];

  return (*(v3 + 8))(v5, v2);
}

uint64_t _s19MatterDeviceSupportOMa(uint64_t a1)
{
  result = qword_27D87F088;
  if (!qword_27D87F088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2296BF0D4(uint64_t a1)
{
  sub_2296BF12C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_2296BF12C()
{
  if (!qword_27D87F098)
  {
    v0 = sub_22A4DCD0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87F098);
    }
  }
}

id sub_2296BF174()
{
  result = [objc_allocWithZone(type metadata accessor for AccountMetadata()) init];
  qword_2814050B0 = result;
  return result;
}

id sub_2296BF1E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_22A4DD5AC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2296BF258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_22A4DD5EC();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

id sub_2296BF2B8()
{
  v1 = &v0[OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_iCloudAltDSID];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_firstName];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_lastName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_accountStore;
  v5 = [objc_opt_self() sharedManager];
  v6 = [v5 accountStore];

  *&v0[v4] = v6;
  if (v6)
  {
    v7 = [v6 aa_primaryAppleAccount];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 aa_altDSID];
      v10 = sub_22A4DD5EC();
      v12 = v11;

      *v1 = v10;
      v1[1] = v12;

      *&v29 = sub_22A4DD5EC();
      *(&v29 + 1) = v13;
      swift_unknownObjectRetain();
      v14 = [v8 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v14)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v29 = v27;
      v30 = v28;
      if (*(&v28 + 1))
      {
        v15 = swift_dynamicCast();
        v16 = v25;
        v17 = v26;
        if (!v15)
        {
          v16 = 0;
          v17 = 0;
        }
      }

      else
      {
        sub_229609094(&v29);
        v16 = 0;
        v17 = 0;
      }

      *v2 = v16;
      *(v2 + 1) = v17;

      *&v29 = sub_22A4DD5EC();
      *(&v29 + 1) = v18;
      v19 = [v8 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v19)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease_n();
        v27 = 0u;
        v28 = 0u;
      }

      v29 = v27;
      v30 = v28;
      if (*(&v28 + 1))
      {
        v20 = swift_dynamicCast();
        v21 = v25;
        v22 = v26;
        if (!v20)
        {
          v21 = 0;
          v22 = 0;
        }
      }

      else
      {
        sub_229609094(&v29);
        v21 = 0;
        v22 = 0;
      }

      *v3 = v21;
      *(v3 + 1) = v22;
    }
  }

  v23 = type metadata accessor for AccountMetadata();
  v31.receiver = v0;
  v31.super_class = v23;
  return objc_msgSendSuper2(&v31, sel_init);
}

id sub_2296BF5C8()
{
  result = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_accountStore);
  if (result)
  {
    result = [result aa_primaryAppleAccount];
    if (result)
    {
      v2 = result;
      v3 = [result aa_altDSID];
      v4 = sub_22A4DD5EC();
      v6 = v5;

      v7 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_iCloudAltDSID);
      *v7 = v4;
      v7[1] = v6;

      *&v24 = sub_22A4DD5EC();
      *(&v24 + 1) = v8;
      swift_unknownObjectRetain();
      v9 = [v2 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v9)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
      }

      v24 = v22;
      v25 = v23;
      if (*(&v23 + 1))
      {
        v10 = swift_dynamicCast();
        v11 = v20;
        v12 = v21;
        if (!v10)
        {
          v11 = 0;
          v12 = 0;
        }
      }

      else
      {
        sub_229609094(&v24);
        v11 = 0;
        v12 = 0;
      }

      v13 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_firstName);
      *v13 = v11;
      v13[1] = v12;

      *&v24 = sub_22A4DD5EC();
      *(&v24 + 1) = v14;
      v15 = [v2 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v15)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease_n();
        v22 = 0u;
        v23 = 0u;
      }

      v24 = v22;
      v25 = v23;
      if (*(&v23 + 1))
      {
        v16 = swift_dynamicCast();
        v17 = v20;
        v18 = v21;
        if (!v16)
        {
          v17 = 0;
          v18 = 0;
        }
      }

      else
      {
        sub_229609094(&v24);
        v17 = 0;
        v18 = 0;
      }

      v19 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_lastName);
      *v19 = v17;
      v19[1] = v18;
    }
  }

  return result;
}

uint64_t sub_2296BF88C()
{
  v1[38] = v0;
  v1[39] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F128, &qword_22A57E1D0);
  v1[43] = v3;
  v1[44] = *(v3 - 8);
  v1[45] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2E0, &qword_22A57E1D8);
  v1[46] = v4;
  v1[47] = *(v4 - 8);
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296BFA28, 0, 0);
}

uint64_t sub_2296BFA28()
{
  v1 = *(v0[38] + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_accountStore);
  if (v1)
  {
    v13 = v0 + 26;
    v2 = v0 + 10;
    v4 = v0[47];
    v3 = v0[48];
    v5 = v0[46];
    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_2296BFDF0;
    swift_continuation_init();
    v0[33] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F138, &qword_22A57E1E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_2296C0738;
    v0[29] = &block_descriptor_16;
    v7 = sel_aa_primaryAppleAccountWithCompletion_;
LABEL_5:
    [v1 v7];
    (*(v4 + 8))(boxed_opaque_existential_1, v5);

    return MEMORY[0x282200938](v2);
  }

  v0[50] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  v0[51] = v8;
  if (v8)
  {
    v1 = v8;
    v2 = v0 + 2;
    v13 = v0 + 18;
    v4 = v0[44];
    v9 = v0[45];
    v5 = v0[43];
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_2296C0184;
    swift_continuation_init();
    v0[25] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F130, &qword_22A57E1E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v9, v5);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_2296C07E0;
    v0[21] = &block_descriptor_16;
    v7 = sel_performPinnedOnlyRequestWithHandler_;
    goto LABEL_5;
  }

  type metadata accessor for ProfilePhoto();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = 0xC000000000000000;

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_2296BFDF0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_2296C05A4;
  }

  else
  {
    v2 = sub_2296BFF00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296BFF00()
{
  v1 = v0[36];
  v0[50] = v1;
  v2 = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  v0[51] = v2;
  if (v2)
  {
    v3 = v2;
    v5 = v0[44];
    v4 = v0[45];
    v6 = v0[43];
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_2296C0184;
    swift_continuation_init();
    v0[25] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F130, &qword_22A57E1E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_2296C07E0;
    v0[21] = &block_descriptor_16;
    [v3 performPinnedOnlyRequestWithHandler_];
    (*(v5 + 8))(boxed_opaque_existential_1, v6);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    type metadata accessor for ProfilePhoto();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0xC000000000000000;

    v9 = v0[1];

    return v9(v8);
  }
}

uint64_t sub_2296C0184()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_2296C0664;
  }

  else
  {
    v2 = sub_2296C0294;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_2296C0294()
{
  v1 = *(v0 + 280);
  if (!v1)
  {
    v11 = *(v0 + 400);

    goto LABEL_8;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v13 = *(v0 + 400);
    v12 = *(v0 + 408);

    goto LABEL_8;
  }

  v3 = v2;
  v4 = v1;
  result = [v4 httpResponse];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = [result statusCode];

  if ((v7 - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v18 = *(v0 + 312);

    sub_229541CB0(v18, &off_283CE0080);
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_229538000, v19, v20, "✅ Profile photo fetched successfully", v21, 2u);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v24 = *(v0 + 320);

    (*(v23 + 8))(v22, v24);
    v25 = [v3 cropRect];
    result = [v3 photoData];
    if (result)
    {
      v26 = result;
      v28 = *(v0 + 400);
      v27 = *(v0 + 408);
      v29 = sub_22A4DB62C();
      v15 = v30;

      type metadata accessor for ProfilePhoto();
      v14 = swift_allocObject();
      v14[2] = v25;
      v14[3] = v29;
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 400);
  v9 = *(v0 + 408);
  sub_22A4DE1FC();

  *(v0 + 296) = v7;
  v10 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v10);

LABEL_8:
  type metadata accessor for ProfilePhoto();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v15 = 0xC000000000000000;
LABEL_9:
  v14[4] = v15;
  v16 = v14;

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_2296C05A4(uint64_t a1)
{
  v2 = *(v1 + 392);
  swift_willThrow();

  type metadata accessor for ProfilePhoto();
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0xC000000000000000;

  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_2296C0664(uint64_t a1)
{
  v2 = v1[51];
  v3 = v1[52];
  v4 = v1[50];
  swift_willThrow();

  type metadata accessor for ProfilePhoto();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0xC000000000000000;

  v6 = v1[1];

  return v6(v5);
}

void sub_2296C0738(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2E0, &qword_22A57E1D8);
    sub_22A4DD8EC();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2E0, &qword_22A57E1D8);
    sub_22A4DD8FC();
  }
}

void sub_2296C07E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v7 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F128, &qword_22A57E1D0);
    sub_22A4DD8EC();
  }

  else
  {
    v8 = a2;
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F128, &qword_22A57E1D0);
    sub_22A4DD8FC();
  }
}

uint64_t sub_2296C0A04(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2296C0AAC;

  return sub_2296BF88C();
}

uint64_t sub_2296C0AAC(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_22A4DB3DC();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    v8[2](v8, a1, 0);
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  v10 = *(v7 + 8);

  return v10();
}

id sub_2296C0C50(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccountMetadata();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

HMDAccountMetadataFactory __swiftcall HMDAccountMetadataFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDAccountMetadataFactory()
{
  result = qword_27D87F120;
  if (!qword_27D87F120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87F120);
  }

  return result;
}

uint64_t sub_2296C0E8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229569B30;

  return sub_2296C0A04(v2, v3);
}

uint64_t sub_2296C0F40()
{
  result = sub_22A4DD5AC();
  qword_27D8AB868 = result;
  return result;
}

uint64_t sub_2296C0F78()
{
  result = sub_22A4DD5AC();
  qword_27D8AB870 = result;
  return result;
}

uint64_t sub_2296C0FB0()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB878);
  __swift_project_value_buffer(v0, qword_27D8AB878);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296C1048()
{
  v24 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      v0[4] = v5;

      if (v5)
      {
        v6 = v0[2];
        v7 = swift_allocObject();
        v0[5] = v7;
        *(v7 + 16) = v6;
        *(v7 + 24) = v5;

        v8 = v5;

        return MEMORY[0x2822009F8](sub_2296C149C, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D8AB878);

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[2];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_2295A3E30(*(v12 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v12 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v23);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A591730, v23);
      _os_log_impl(&dword_229538000, v10, v11, "%s %s Missing context, failed to save", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v15 = sub_22A4DD07C();
    __swift_project_value_buffer(v15, qword_27D8AB878);

    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[2];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2295A3E30(*(v18 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v18 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v23);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A591730, v23);
      _os_log_impl(&dword_229538000, v16, v17, "%s %s Missing home, failed to save", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_2296C149C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8C54;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_2296C15A4;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v5);
}

uint64_t sub_2296C15A4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2296C16D4;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 16);

    v3 = sub_2296C8C70;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296C16D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_2296C8C7C, v1, 0);
}

uint64_t sub_2296C1748()
{
  v1 = objc_opt_self();
  v2 = sub_22A4DB77C();
  v3 = [v1 findHAPAccessoryWithModelID_];

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v0)
  {
    sub_229678A8C();
    v5 = sub_22A4DDEAC();
    [v7 setHasOnboardedForAdaptiveTemperatureAutomations_];

    sub_2297082C0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296C18BC()
{
  v24 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      v0[4] = v5;

      if (v5)
      {
        v6 = v0[2];
        v7 = swift_allocObject();
        v0[5] = v7;
        *(v7 + 16) = v6;
        *(v7 + 24) = v5;

        v8 = v5;

        return MEMORY[0x2822009F8](sub_2296C1D10, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D8AB878);

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[2];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_2295A3E30(*(v12 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v12 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v23);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD00000000000002ALL, 0x800000022A591700, v23);
      _os_log_impl(&dword_229538000, v10, v11, "%s %s Missing context, failed to save", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v15 = sub_22A4DD07C();
    __swift_project_value_buffer(v15, qword_27D8AB878);

    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[2];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2295A3E30(*(v18 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v18 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v23);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2295A3E30(0xD00000000000002ALL, 0x800000022A591700, v23);
      _os_log_impl(&dword_229538000, v16, v17, "%s %s Missing home, failed to save", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_2296C1D10()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8BF8;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_2296C1E18;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v5);
}

uint64_t sub_2296C1E18()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2296C1FB0;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 16);

    v3 = sub_2296C1F48;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296C1F48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296C1FB0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_2296C2024, v1, 0);
}

uint64_t sub_2296C2024()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296C208C()
{
  v1 = objc_opt_self();
  v2 = sub_22A4DB77C();
  v3 = [v1 findHAPAccessoryWithModelID_];

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v0)
  {
    sub_229678A8C();
    v5 = sub_22A4DDEAC();
    [v7 setHasOnboardedForCleanEnergyAutomation_];

    sub_2297082C0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296C21E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2296C2204, v2, 0);
}

uint64_t sub_2296C2204()
{
  v25 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      v0[6] = v5;

      if (v5)
      {
        v7 = v0[3];
        v6 = v0[4];
        v8 = v0[2];
        v9 = swift_allocObject();
        v0[7] = v9;
        v9[2] = v6;
        v9[3] = v8;
        v9[4] = v7;
        v9[5] = v5;

        v10 = v5;

        return MEMORY[0x2822009F8](sub_2296C2608, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8AB878);

    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[4];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2295A3E30(*(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v24);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5916B0, &v24);
      _os_log_impl(&dword_229538000, v12, v13, "%s %s Missing context, failed save adaptive temperature settings", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v17 = sub_22A4DD07C();
    __swift_project_value_buffer(v17, qword_27D8AB878);

    v12 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v18))
    {
      v19 = v0[4];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_2295A3E30(*(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v24);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5916B0, &v24);
      _os_log_impl(&dword_229538000, v12, v18, "%s %s Missing home, failed to save adaptive temperature settings", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_2296C2608()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_task_alloc();
  v0[8] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8BD8;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2296C2710;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v5);
}

uint64_t sub_2296C2710()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_2296C2B60;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 32);

    v3 = sub_2296C2840;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296C2840(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 40);
  v3 = sub_22A4DB77C();
  v4 = [v2 accessoryWithUUID_];

  if (v4)
  {
    v5 = [*(v1 + 40) notificationCenter];
    if (qword_27D87B9F0 != -1)
    {
      swift_once();
    }

    v7 = *(v1 + 40);
    v6 = *(v1 + 48);
    logAndPostNotificationWithNotificationCenter(v5, qword_27D8AB868, v4, 0);
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v8 = sub_22A4DD07C();
    __swift_project_value_buffer(v8, qword_27D8AB878);

    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v1 + 40);
    v13 = *(v1 + 48);
    if (v11)
    {
      v22 = *(v1 + 40);
      v14 = *(v1 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_2295A3E30(*(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v23);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5916B0, &v23);
      *(v15 + 22) = 2080;
      sub_22A4DB7DC();
      sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_22A4DE5CC();
      v19 = sub_2295A3E30(v17, v18, &v23);

      *(v15 + 24) = v19;
      _os_log_impl(&dword_229538000, v9, v10, "%s %s Can't find accessory with UUID: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    else
    {
    }
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_2296C2B60()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_2296C2BD4, v1, 0);
}

uint64_t sub_2296C2BD4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296C2C3C(uint64_t a1, unint64_t a2, void (**a3)(void, void), uint64_t a4)
{
  v35 = a4;
  v38 = a3;
  v42 = a2;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_22A4DB77C();
  v11 = [v9 findHAPAccessoryWithModelID_];

  v44 = v11;
  v12 = "ggestedPreset(_:)";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v4)
  {
    v14 = v38;
    v40 = "rmostatDriverSettings()";
    v41 = v9;
    v15 = v42;
    if (HIDWORD(v42))
    {
      goto LABEL_21;
    }

    v39 = "ggestedPreset(_:)";
    v16 = v45;
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v42 = v16;
    [v16 setAdaptiveTemperatureDriver_];

    if (v14)
    {
      v18 = v14;
      v19 = v14[2];
      v12 = MEMORY[0x277D84F90];
      if (v19)
      {
        v45 = MEMORY[0x277D84F90];
        sub_22A4DE29C();
        v21 = v6 + 16;
        v20 = *(v6 + 16);
        v22 = v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v37 = v20;
        v38 = (v21 - 8);
        v36 = *(v21 + 56);
        do
        {
          v37(v8, v22, v5);
          v23 = sub_22A4DB77C();
          v24 = [v41 findRoomWithModelID_];

          v43 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F250, &qword_22A57E388);
          sub_22A4DBD4C();
          swift_unknownObjectRelease();
          (*v38)(v8, v5);
          sub_22A4DE27C();
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
          v22 += v36;
          --v19;
        }

        while (v19);
        v12 = v45;
      }

      v25 = [v42 localPresenceRooms];
      if (v25)
      {
        v26 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F250, &qword_22A57E388);
        v15 = sub_22A4DD83C();

        if (v15 >> 62)
        {
          goto LABEL_22;
        }

        v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
          while (1)
          {
            v28 = 0;
            while ((v15 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x22AAD13F0](v28, v15);
              v30 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
LABEL_19:
                __break(1u);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                (*v38)(v28, v27);
              }

LABEL_15:
              [v42 removeLocalPresenceRoomsObject_];
              swift_unknownObjectRelease();
              ++v28;
              if (v30 == v27)
              {
                goto LABEL_23;
              }
            }

            if (v28 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            v27 = sub_22A4DE0EC();
            if (!v27)
            {
              goto LABEL_23;
            }
          }

          v29 = *(v15 + 8 * v28 + 32);
          swift_unknownObjectRetain();
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_19;
          }

          goto LABEL_15;
        }

LABEL_23:
      }

      if (v12 >> 62)
      {
        goto LABEL_36;
      }

      v31 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_26:
        v32 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x22AAD13F0](v32, v12);
            v34 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v32 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v33 = *(v12 + 8 * v32 + 32);
            swift_unknownObjectRetain();
            v34 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v31 = sub_22A4DE0EC();
              if (!v31)
              {
                break;
              }

              goto LABEL_26;
            }
          }

          [v42 addLocalPresenceRoomsObject_];
          swift_unknownObjectRelease();
          ++v32;
        }

        while (v34 != v31);
      }
    }

    sub_2297082C0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296C31A8()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return MEMORY[0x2822009F8](sub_2296C31F0, v0, 0);
}

uint64_t sub_2296C31F0()
{
  v24 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      v0[11] = v5;

      if (v5)
      {
        v7 = v0[8];
        v6 = v0[9];
        v8 = swift_allocObject();
        v0[12] = v8;
        *(v8 + 16) = v7;
        *(v8 + 24) = v6;

        return MEMORY[0x2822009F8](sub_2296C36D8, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D8AB878);

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[8];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_2295A3E30(*(v12 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v12 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v23);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A591680, v23);
      _os_log_impl(&dword_229538000, v10, v11, "%s %s Missing context, failed save adaptive temperature settings", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    type metadata accessor for HMError(0);
    v0[7] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v15 = sub_22A4DD07C();
    __swift_project_value_buffer(v15, qword_27D8AB878);

    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[8];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2295A3E30(*(v18 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v18 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v23);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A591680, v23);
      _os_log_impl(&dword_229538000, v16, v17, "%s %s Missing home, failed to save adaptive temperature settings", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    type metadata accessor for HMError(0);
    v0[5] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_2296C36D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8BB0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3C0, &qword_22A576EA0);
  *v4 = v0;
  v4[1] = sub_2296C37F4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8BCC, v3, v5);
}

uint64_t sub_2296C37F4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2296C39A0;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 64);

    *(v2 + 128) = *(v2 + 16);
    v3 = sub_2296C3934;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296C3934()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);

  return v2(v3, v4);
}

uint64_t sub_2296C39A0()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_2296C3A14, v1, 0);
}

uint64_t sub_2296C3A14()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2296C3A7C(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_22A4DB77C();
  v11 = [v9 findHAPAccessoryWithModelID_];

  v55 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (v2)
  {
    return;
  }

  v53 = v5;
  v48 = "eepScheduleRules(_:)";
  v12 = v56;
  v13 = [v56 adaptiveTemperatureDriver];
  if (!v13)
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v26 = sub_22A4DD07C();
    __swift_project_value_buffer(v26, qword_27D8AB878);

    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v56 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_2295A3E30(*(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v56);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2295A3E30(0xD000000000000027, v48 | 0x8000000000000000, &v56);
      _os_log_impl(&dword_229538000, v27, v28, "%s %s Adaptive Temperature Driver has not been set", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    swift_unknownObjectRelease();

    *a2 = xmmword_22A57E210;
    return;
  }

  v14 = v13;
  v47 = 0;
  v15 = sub_22A4DDFCC();
  v16 = [v12 localPresenceRooms];
  if (!v16)
  {
    swift_unknownObjectRelease();

    *a2 = v15;
    a2[1] = 0;
    return;
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F250, &qword_22A57E388);
  v18 = sub_22A4DD83C();

  *a2 = v15;
  v19 = v18;
  if (v18 >> 62)
  {
LABEL_30:
    v20 = sub_22A4DE0EC();
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_31:
    swift_unknownObjectRelease();

    a2[1] = MEMORY[0x277D84F90];
    return;
  }

  v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_6:
  v44 = a1;
  v45 = v14;
  v43 = a2;
  v46 = v12;
  v56 = MEMORY[0x277D84F90];
  sub_22958345C(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
  }

  else
  {
    a1 = 0;
    a2 = v56;
    v21 = v19;
    v51 = v19;
    v52 = v19 & 0xC000000000000001;
    v49 = v19 & 0xFFFFFFFFFFFFFF8;
    v50 = v6 + 32;
    v12 = v20;
    while (1)
    {
      v14 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v52)
      {
        v19 = MEMORY[0x22AAD13F0](a1, v21);
      }

      else
      {
        if (a1 >= *(v49 + 16))
        {
          goto LABEL_29;
        }

        v19 = *(v21 + 8 * a1 + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v22 = [v19 modelID];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      sub_22A4DB79C();
      swift_unknownObjectRelease();

      v56 = a2;
      v25 = a2[2];
      v24 = a2[3];
      v19 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        sub_22958345C((v24 > 1), v25 + 1, 1);
        a2 = v56;
      }

      a2[2] = v19;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v8, v53);
      ++a1;
      v21 = v51;
      if (v14 == v12)
      {
        swift_unknownObjectRelease();

        v43[1] = a2;
        return;
      }
    }

    if (qword_27D87BA00 != -1)
    {
      goto LABEL_33;
    }
  }

  v31 = sub_22A4DD07C();
  __swift_project_value_buffer(v31, qword_27D8AB878);
  v32 = v44;

  swift_unknownObjectRetain();
  v33 = sub_22A4DD05C();
  v34 = sub_22A4DDCEC();
  swift_unknownObjectRelease();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v48;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315650;
    *(v37 + 4) = sub_2295A3E30(*(v32 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v32 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v55);
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_2295A3E30(0xD000000000000027, v36 | 0x8000000000000000, &v55);
    *(v37 + 22) = 2080;
    v54 = v19;
    swift_unknownObjectRetain();
    v39 = sub_22A4DD64C();
    v41 = sub_2295A3E30(v39, v40, &v55);

    *(v37 + 24) = v41;
    _os_log_impl(&dword_229538000, v33, v34, "%s %s nil room model ID on room model %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);
  }

  type metadata accessor for HMError(0);
  v54 = 20;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_2296C4238(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2296C4258, v1, 0);
}

uint64_t sub_2296C4258()
{
  v25 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      v0[5] = v5;

      if (v5)
      {
        v7 = v0[2];
        v6 = v0[3];
        v8 = swift_allocObject();
        v0[6] = v8;
        v8[2] = v6;
        v8[3] = v7;
        v8[4] = v5;

        v9 = v5;

        return MEMORY[0x2822009F8](sub_2296C46B8, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v10 = sub_22A4DD07C();
    __swift_project_value_buffer(v10, qword_27D8AB878);

    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCEC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[3];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_2295A3E30(*(v13 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v13 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v24);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A591650, v24);
      _os_log_impl(&dword_229538000, v11, v12, "%s %s Missing context, failed to save", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v16 = sub_22A4DD07C();
    __swift_project_value_buffer(v16, qword_27D8AB878);

    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[3];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_2295A3E30(*(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v24);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A591650, v24);
      _os_log_impl(&dword_229538000, v17, v18, "%s %s Missing home, failed to save", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  v22 = v0[1];

  return v22();
}