uint64_t sub_251B8FDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPatientMeta(0);
  type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  sub_251B9ED44(&qword_27F47AF60, type metadata accessor for PBPatientMeta.HeartRateMeds, &unk_251C7E814);
  return sub_251C70564();
}

uint64_t sub_251B8FE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPatientMeta(0);
  type metadata accessor for PBPatientMeta.HumanName(0);
  sub_251B9ED44(&qword_27F47AF40, type metadata accessor for PBPatientMeta.HumanName, &unk_251C7E6AC);
  return sub_251C70564();
}

uint64_t sub_251B8FF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_251C705F4(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for PBPatientMeta.CHRMeta(0), sub_251B9ED44(&qword_27F47AF80, type metadata accessor for PBPatientMeta.CHRMeta, &unk_251C7E97C), result = sub_251C70694(), !v4))
    {
      v9 = *(v3 + 24);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (!v10 || (result = sub_251C70674(), !v4))
      {
        v11 = *(v3 + 40);
        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (!v12 || (result = sub_251C70674(), !v4))
        {
          result = sub_251B900E8(v3, a1, a2, a3);
          if (!v4)
          {
            sub_251B90334(v3, a1, a2, a3);
            v13 = *(v3 + 56);
            v14 = HIBYTE(v13) & 0xF;
            if ((v13 & 0x2000000000000000) == 0)
            {
              v14 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
            }

            if (v14)
            {
              sub_251C70674();
            }

            type metadata accessor for PBPatientMeta(0);
            return sub_251C70394();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B900E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBPatientMeta(0);
  sub_251BB33C4(a1 + *(v12 + 40), v7, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBPatientMeta.HeartRateMeds);
  sub_251B9ED44(&qword_27F47AF60, type metadata accessor for PBPatientMeta.HeartRateMeds, &unk_251C7E814);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBPatientMeta.HeartRateMeds);
}

uint64_t sub_251B90334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPatientMeta.HumanName(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBPatientMeta(0);
  sub_251BB33C4(a1 + *(v12 + 44), v7, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBPatientMeta.HumanName);
  sub_251B9ED44(&qword_27F47AF40, type metadata accessor for PBPatientMeta.HumanName, &unk_251C7E6AC);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBPatientMeta.HumanName);
}

uint64_t sub_251B90580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  sub_251C703A4();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 44);
  v7 = type metadata accessor for PBPatientMeta.HumanName(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_251B90688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B906FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B907A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B820, type metadata accessor for PBPatientMeta, &unk_251C7EAAC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B90840(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FF8, type metadata accessor for PBPatientMeta, &unk_251C7EAE4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B908AC(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FF8, type metadata accessor for PBPatientMeta, &unk_251C7EAE4);

  return sub_251C705C4();
}

uint64_t sub_251B90950()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A24E0);
  __swift_project_value_buffer(v0, qword_27F4A24E0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "name";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "last_sync_time";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "gateway_id";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B90B88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_251C70674(), !v5))
  {
    v10 = v4[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_251C70674(), !v5))
    {
      v12 = v4[5];
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v4[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v13 || (result = sub_251C70674(), !v5))
      {
        a4(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B90CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B828, type metadata accessor for PBPatientMeta.CHRMeta, &unk_251C7E944);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B90D80(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AF80, type metadata accessor for PBPatientMeta.CHRMeta, &unk_251C7E97C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B90DEC(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AF80, type metadata accessor for PBPatientMeta.CHRMeta, &unk_251C7E97C);

  return sub_251C705C4();
}

uint64_t sub_251B90EC8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2508);
  __swift_project_value_buffer(v0, qword_27F4A2508);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "calciumChannelBlockers";
  *(v7 + 8) = 22;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "betaBlockers";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B910A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_251C70474();
    }
  }

  return result;
}

uint64_t sub_251B91128(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*v4 != 1 || (result = sub_251C705F4(), !v5))
  {
    if (v4[1] != 1 || (result = sub_251C705F4(), !v5))
    {
      a4(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B91240(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B830, type metadata accessor for PBPatientMeta.HeartRateMeds, &unk_251C7E7DC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B912E0(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AF60, type metadata accessor for PBPatientMeta.HeartRateMeds, &unk_251C7E814);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9134C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AF60, type metadata accessor for PBPatientMeta.HeartRateMeds, &unk_251C7E814);

  return sub_251C705C4();
}

uint64_t sub_251B913C8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B914A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x25308CDA0](a2, a3);
  *a4 = 0xD000000000000026;
  *a5 = 0x8000000251C8E640;
  return result;
}

uint64_t sub_251B9150C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2530);
  __swift_project_value_buffer(v0, qword_27F4A2530);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "first_name";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "last_name";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B91740(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B838, type metadata accessor for PBPatientMeta.HumanName, &unk_251C7E674);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B917E0(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AF40, type metadata accessor for PBPatientMeta.HumanName, &unk_251C7E6AC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9184C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AF40, type metadata accessor for PBPatientMeta.HumanName, &unk_251C7E6AC);

  return sub_251C705C4();
}

uint64_t sub_251B918C8(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B919C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70504();
    }
  }

  return result;
}

uint64_t sub_251B91A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_251C70654(), !v4))
  {
    type metadata accessor for PBActiveMedications(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B91B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B840, type metadata accessor for PBActiveMedications, &unk_251C7E50C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B91BA8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479030, type metadata accessor for PBActiveMedications, &unk_251C7E544);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B91C14(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F479030, type metadata accessor for PBActiveMedications, &unk_251C7E544);

  return sub_251C705C4();
}

uint64_t sub_251B91CA8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2560);
  __swift_project_value_buffer(v0, qword_27F4A2560);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_251C747E0;
  v5 = v44 + v4;
  v6 = v44 + v4 + *(v2 + 56);
  *(v44 + v4) = 1;
  *v6 = "medication_semantic_identifier";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v44 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "localized_ontology_preferred_name";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v44 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "localized_ontology_brand_name";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v44 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "localized_ontology_generic_name";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v44 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "specific_rx_norm_code";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v44 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "free_text_medication_form";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v44 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "free_text_quantified_strength";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  v21 = (v44 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "localized_ontology_basic_dose_forms";
  *(v22 + 1) = 35;
  v22[16] = 2;
  v9();
  v23 = v44 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "localized_ontology_logging_unit_singular";
  *(v23 + 8) = 40;
  *(v23 + 16) = 2;
  v9();
  v24 = (v44 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "localized_ontology_logging_unit_plural";
  *(v25 + 1) = 38;
  v25[16] = 2;
  v9();
  v26 = (v44 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "unlocalized_quantified_unit_strength_preferred_display_string";
  *(v27 + 1) = 61;
  v27[16] = 2;
  v9();
  v28 = (v44 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "date_added";
  *(v29 + 1) = 10;
  v29[16] = 2;
  v9();
  v30 = (v44 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "last_dosage_event_date";
  *(v31 + 1) = 22;
  v31[16] = 2;
  v9();
  v32 = (v44 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "generic_rx_norm_code";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v9();
  v34 = (v44 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 15;
  *v35 = "uuid";
  *(v35 + 1) = 4;
  v35[16] = 2;
  v9();
  v36 = (v44 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 16;
  *v37 = "free_text_medication_logging_unit";
  *(v37 + 1) = 33;
  v37[16] = 2;
  v9();
  v38 = v44 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 17;
  *v38 = "free_text_medication_name";
  *(v38 + 8) = 25;
  *(v38 + 16) = 2;
  v9();
  v39 = (v44 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 18;
  *v40 = "grouper_id";
  *(v40 + 1) = 10;
  v40[16] = 2;
  v9();
  v41 = (v44 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 19;
  *v42 = "free_text_quantified_strength_unit";
  *(v42 + 1) = 34;
  v42[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B922A8()
{
  type metadata accessor for PBMedicationTracking._StorageClass();
  swift_allocObject();
  result = sub_251B922E8();
  qword_27F47AC10 = result;
  return result;
}

uint64_t sub_251B922E8()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0xE000000000000000;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0xE000000000000000;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0xE000000000000000;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0xE000000000000000;
  return result;
}

uint64_t sub_251B9234C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 112) = 0;
  *(v1 + 104) = 1;
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 168) = 0xE000000000000000;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0xE000000000000000;
  *(v1 + 192) = 0;
  *(v1 + 208) = 0;
  *(v1 + 200) = 0xE000000000000000;
  *(v1 + 216) = 0xE000000000000000;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0xE000000000000000;
  *(v1 + 240) = 0;
  *(v1 + 248) = 0xE000000000000000;
  *(v1 + 256) = 0;
  *(v1 + 264) = 1;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0xE000000000000000;
  *(v1 + 288) = 0;
  *(v1 + 296) = 0xE000000000000000;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0xE000000000000000;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;

  swift_beginAccess();
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;

  swift_beginAccess();
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;

  swift_beginAccess();
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v11;
  *(v1 + 88) = v12;

  swift_beginAccess();
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v13;
  *(v1 + 104) = v14;
  swift_beginAccess();
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 112) = v15;
  *(v1 + 120) = v16;

  swift_beginAccess();
  v18 = *(a1 + 128);
  v17 = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 128) = v18;
  *(v1 + 136) = v17;

  swift_beginAccess();
  v20 = *(a1 + 144);
  v19 = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 144) = v20;
  *(v1 + 152) = v19;

  swift_beginAccess();
  v22 = *(a1 + 160);
  v21 = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 160) = v22;
  *(v1 + 168) = v21;

  swift_beginAccess();
  v24 = *(a1 + 176);
  v23 = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 176) = v24;
  *(v1 + 184) = v23;

  swift_beginAccess();
  v26 = *(a1 + 192);
  v25 = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 192) = v26;
  *(v1 + 200) = v25;

  swift_beginAccess();
  v28 = *(a1 + 208);
  v27 = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 208) = v28;
  *(v1 + 216) = v27;

  swift_beginAccess();
  v30 = *(a1 + 224);
  v29 = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 224) = v30;
  *(v1 + 232) = v29;

  swift_beginAccess();
  v32 = *(a1 + 240);
  v31 = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 240) = v32;
  *(v1 + 248) = v31;

  swift_beginAccess();
  v33 = *(a1 + 256);
  LOBYTE(v16) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 256) = v33;
  *(v1 + 264) = v16;
  swift_beginAccess();
  v35 = *(a1 + 272);
  v34 = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 272) = v35;
  *(v1 + 280) = v34;

  swift_beginAccess();
  v37 = *(a1 + 288);
  v36 = *(a1 + 296);
  swift_beginAccess();
  *(v1 + 288) = v37;
  *(v1 + 296) = v36;

  swift_beginAccess();
  v39 = *(a1 + 304);
  v38 = *(a1 + 312);

  swift_beginAccess();
  *(v1 + 304) = v39;
  *(v1 + 312) = v38;

  return v1;
}

void *sub_251B929C4()
{

  return v0;
}

uint64_t sub_251B92A64()
{
  sub_251B929C4();

  return swift_deallocClassInstance();
}

void sub_251B92BA0(uint64_t a1)
{
  sub_251B67AAC(319, &qword_27F47AC38, type metadata accessor for PBHKReferenceRange, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_251B92D7C(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B92EE0(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1EC8, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251B9307C(uint64_t a1)
{
  result = type metadata accessor for PBHKAllergyRecord(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PBHKConditionRecord(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PBHKVaccinationRecord(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PBHKMedicationDispenseRecord(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for PBHKMedicationOrder(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for PBHKDiagnosticTestResult(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for PBHKDiagnosticTestReport(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for PBHKAccountOwner(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for PBHKProcedureRecord(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for PBHKMedicationRecord(319);
                    if (v11 <= 0x3F)
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

  return result;
}

void sub_251B93318(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B93478(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_251B67AAC(319, &qword_2813E1ED8, type metadata accessor for PBMedicationDosage, MEMORY[0x277D83940]);
  if (v2 <= 0x3F)
  {
    sub_251BB35D8(319, &qword_2813E1E48, v1, MEMORY[0x277D83940]);
    if (v3 <= 0x3F)
    {
      sub_251C703B4();
      if (v4 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_282Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
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
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      sub_251B67AAC(0, a4, a5, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 48);
      v20 = a1 + *(a3 + 24);

      return v19(v20, a2, v18);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_283Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      sub_251B67AAC(0, a5, a6, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 56);
      v20 = v7 + *(a4 + 24);

      return v19(v20, a2, a2, v18);
    }
  }

  return result;
}

void sub_251B938D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_251C703B4();
  if (v7 <= 0x3F)
  {
    sub_251B67AAC(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B939BC(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_251C703B4();
      if (v3 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251B93B68(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1EF0, type metadata accessor for PBFHIRIdentifier, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B93D28(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251B93ED4(uint64_t a1)
{
  sub_251C703B4();
  if (v1 <= 0x3F)
  {
    sub_251B67AAC(319, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B94044(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B94194(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_379Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_380Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

void sub_251B94584(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1ED0, type metadata accessor for PBHKAllergyReaction, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B946E8(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251B949A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_251C703B4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_251B94BA8(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1E58, type metadata accessor for PBHKMedicationScheduleIntervalData, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B94D50(uint64_t a1)
{
  sub_251C703B4();
  if (v1 <= 0x3F)
  {
    sub_251B67AAC(319, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251B94F58(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B95164(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1E50, type metadata accessor for PBBucket, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251B9535C(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_577Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_578Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_251B955A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_251B67AAC(319, a4, a5, MEMORY[0x277D83940]);
  if (v6 <= 0x3F)
  {
    sub_251C703B4();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251B95690(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_406Tm(uint64_t a1, uint64_t a2, int *a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
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

  v16 = sub_251C703B4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v17 = v16;
    v18 = *(v16 - 8);
    v19 = a3[9];
LABEL_9:
    v21 = *(v18 + 48);

    return v21(a1 + v19, a2, v17);
  }

  sub_251B67AAC(0, a4, a5, MEMORY[0x277D83D88]);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v17 = v20;
    v18 = *(v20 - 8);
    v19 = a3[10];
    goto LABEL_9;
  }

  sub_251B67AAC(0, a6, a7, MEMORY[0x277D83D88]);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[11];

  return v24(v25, a2, v23);
}

void sub_251B95988(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F38, type metadata accessor for PBPatientMeta.CHRMeta, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_273Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_274Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_251B95D18(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1EA8, type metadata accessor for PBActivitySummarySeries.ActivitySummary, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251B95E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_251C703B4();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B95F40(uint64_t a1)
{
  sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251BB35D8(319, &qword_2813E1E38, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_251C703B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B960BC(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F18, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B96214(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F10, type metadata accessor for PBCycleTracking.Event, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B96350(uint64_t a1)
{
  sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251BB35D8(319, &qword_2813E1F20, &type metadata for PBCycleSymptoms, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_251C703B4();
      if (v3 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_667Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_251C703B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_668Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251B9678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_251C703B4();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251B96868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_251C703B4();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B9692C(uint64_t a1)
{
  sub_251C703B4();
  if (v1 <= 0x3F)
  {
    sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B96A54(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F08, type metadata accessor for PBCategorySeries.Event, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B96BC8(uint64_t a1)
{
  sub_251B67AAC(319, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251B96CE4(uint64_t a1)
{
  result = type metadata accessor for PBCategorySeries.Range(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_529Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_251C703B4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_530Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_251C703B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_251B96EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_251C703B4();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B96F6C(uint64_t a1)
{
  sub_251B67AAC(319, &qword_2813E1F40, type metadata accessor for PBTimeSeries.Value, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B970C0(uint64_t a1)
{
  sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251BB35D8(319, qword_2813E6AE8, &type metadata for PBTimeSeries.Value.OneOf_AdditionalData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_251C703B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B97240(uint64_t a1)
{
  sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251B97318()
{
  result = qword_27F47AC60;
  if (!qword_27F47AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AC60);
  }

  return result;
}

unint64_t sub_251B973A0()
{
  result = qword_27F47AC78;
  if (!qword_27F47AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AC78);
  }

  return result;
}

unint64_t sub_251B973F8()
{
  result = qword_27F47AC80;
  if (!qword_27F47AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AC80);
  }

  return result;
}

unint64_t sub_251B97450()
{
  result = qword_27F47AC88;
  if (!qword_27F47AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AC88);
  }

  return result;
}

uint64_t sub_251B974D4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251BB35D8(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251B9753C()
{
  result = qword_27F47ACA0;
  if (!qword_27F47ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACA0);
  }

  return result;
}

unint64_t sub_251B97594()
{
  result = qword_27F47ACA8;
  if (!qword_27F47ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACA8);
  }

  return result;
}

unint64_t sub_251B975EC()
{
  result = qword_27F47ACB0;
  if (!qword_27F47ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACB0);
  }

  return result;
}

unint64_t sub_251B97674()
{
  result = qword_27F47ACC8;
  if (!qword_27F47ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACC8);
  }

  return result;
}

unint64_t sub_251B976CC()
{
  result = qword_27F47ACD0;
  if (!qword_27F47ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACD0);
  }

  return result;
}

unint64_t sub_251B97724()
{
  result = qword_27F47ACD8;
  if (!qword_27F47ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACD8);
  }

  return result;
}

unint64_t sub_251B977AC()
{
  result = qword_27F47ACF0;
  if (!qword_27F47ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACF0);
  }

  return result;
}

unint64_t sub_251B97804()
{
  result = qword_27F47ACF8;
  if (!qword_27F47ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACF8);
  }

  return result;
}

unint64_t sub_251B9785C()
{
  result = qword_27F47AD00;
  if (!qword_27F47AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD00);
  }

  return result;
}

unint64_t sub_251B978E4()
{
  result = qword_27F47AD18;
  if (!qword_27F47AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD18);
  }

  return result;
}

unint64_t sub_251B9793C()
{
  result = qword_27F47AD20;
  if (!qword_27F47AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD20);
  }

  return result;
}

unint64_t sub_251B97994()
{
  result = qword_27F47AD28;
  if (!qword_27F47AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD28);
  }

  return result;
}

unint64_t sub_251B97A1C()
{
  result = qword_27F47AD40;
  if (!qword_27F47AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD40);
  }

  return result;
}

unint64_t sub_251B97A74()
{
  result = qword_27F47AD48;
  if (!qword_27F47AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD48);
  }

  return result;
}

unint64_t sub_251B97ACC()
{
  result = qword_27F47AD50;
  if (!qword_27F47AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD50);
  }

  return result;
}

unint64_t sub_251B97B54()
{
  result = qword_27F47AD68;
  if (!qword_27F47AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD68);
  }

  return result;
}

unint64_t sub_251B97BAC()
{
  result = qword_27F47AD70;
  if (!qword_27F47AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD70);
  }

  return result;
}

unint64_t sub_251B97C04()
{
  result = qword_27F47AD78;
  if (!qword_27F47AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD78);
  }

  return result;
}

unint64_t sub_251B97C8C()
{
  result = qword_27F47AD90;
  if (!qword_27F47AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD90);
  }

  return result;
}

unint64_t sub_251B97CE4()
{
  result = qword_27F47AD98;
  if (!qword_27F47AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD98);
  }

  return result;
}

unint64_t sub_251B97D3C()
{
  result = qword_27F47ADA0;
  if (!qword_27F47ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADA0);
  }

  return result;
}

unint64_t sub_251B97DC4()
{
  result = qword_27F47ADB8;
  if (!qword_27F47ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADB8);
  }

  return result;
}

unint64_t sub_251B97E1C()
{
  result = qword_27F47ADC0;
  if (!qword_27F47ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADC0);
  }

  return result;
}

unint64_t sub_251B97E74()
{
  result = qword_27F47ADC8;
  if (!qword_27F47ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADC8);
  }

  return result;
}

unint64_t sub_251B97EFC()
{
  result = qword_27F47ADE0;
  if (!qword_27F47ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADE0);
  }

  return result;
}

unint64_t sub_251B97F54()
{
  result = qword_27F47ADE8;
  if (!qword_27F47ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADE8);
  }

  return result;
}

unint64_t sub_251B97FAC()
{
  result = qword_27F47ADF0;
  if (!qword_27F47ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADF0);
  }

  return result;
}

unint64_t sub_251B98034()
{
  result = qword_27F47AE08;
  if (!qword_27F47AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AE08);
  }

  return result;
}

unint64_t sub_251B9808C()
{
  result = qword_27F47AE10;
  if (!qword_27F47AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AE10);
  }

  return result;
}

uint64_t sub_251B980E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for PBMedicationTracking(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v10 = sub_251B9234C(v11);
    *(v4 + v8) = v10;
  }

  return sub_251B98188(v10, a1, a2, a3);
}

uint64_t sub_251B98188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_251B98414(a2, a1, a3, a4);
        break;
      case 2:
        sub_251AB6E48(a2, a1, a3, a4);
        break;
      case 3:
        sub_251AB6ECC(a2, a1, a3, a4);
        break;
      case 4:
        sub_251AB6F50(a2, a1, a3, a4);
        break;
      case 5:
        sub_251B98498(a2, a1, a3, a4);
        break;
      case 6:
        sub_251B9851C(a2, a1, a3, a4);
        break;
      case 7:
        sub_251B985B0(a2, a1, a3, a4);
        break;
      case 8:
        sub_251B98634(a2, a1, a3, a4);
        break;
      case 9:
        sub_251B986B8(a2, a1, a3, a4);
        break;
      case 10:
        sub_251B9873C(a2, a1, a3, a4);
        break;
      case 11:
        sub_251B987C0(a2, a1, a3, a4);
        break;
      case 12:
        sub_251B98844(a2, a1, a3, a4);
        break;
      case 13:
        sub_251B988C8(a2, a1, a3, a4);
        break;
      case 14:
        sub_251B9894C(a2, a1, a3, a4);
        break;
      case 15:
        sub_251B989D0(a2, a1, a3, a4);
        break;
      case 16:
        sub_251B98A54(a2, a1, a3, a4);
        break;
      case 17:
        sub_251B98AE8(a2, a1, a3, a4);
        break;
      case 18:
        sub_251B98B6C(a2, a1, a3, a4);
        break;
      case 19:
        sub_251B98BF0(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_251B98414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B9851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251BB3220();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251B985B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B986B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B9873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B987C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B988C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B9894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B989D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251BB3274();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251B98AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98C74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = a1[3];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v8 = a1[5];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v10 = a1[7];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = a1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v12 = a1[9];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = a1[8] & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v14 = a1[11];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = a1[10] & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (a1[12])
  {
    sub_251BB3220();
    result = sub_251C70604();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = a1[15];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = a1[14] & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v19 = a1[17];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = a1[16] & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v21 = a1[19];
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = a1[18] & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v23 = a1[21];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = a1[20] & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_48;
  }

  sub_251C70674();
  if (v4)
  {
  }

LABEL_48:
  swift_beginAccess();
  v25 = a1[23];
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = a1[22] & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v27 = a1[25];
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = a1[24] & 0xFFFFFFFFFFFFLL;
  }

  if (!v28 || (, sub_251C70674(), result = , !v4))
  {
    swift_beginAccess();
    v29 = a1[27];
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = a1[26] & 0xFFFFFFFFFFFFLL;
    }

    if (!v30 || (, sub_251C70674(), result = , !v4))
    {
      swift_beginAccess();
      v31 = a1[29];
      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = a1[28] & 0xFFFFFFFFFFFFLL;
      }

      if (!v32 || (, sub_251C70674(), result = , !v4))
      {
        swift_beginAccess();
        v33 = a1[31];
        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = a1[30] & 0xFFFFFFFFFFFFLL;
        }

        if (!v34 || (, sub_251C70674(), result = , !v4))
        {
          swift_beginAccess();
          if (!a1[32] || (sub_251BB3274(), result = sub_251C70604(), !v4))
          {
            swift_beginAccess();
            v35 = a1[35];
            v36 = HIBYTE(v35) & 0xF;
            if ((v35 & 0x2000000000000000) == 0)
            {
              v36 = a1[34] & 0xFFFFFFFFFFFFLL;
            }

            if (!v36 || (, sub_251C70674(), result = , !v4))
            {
              swift_beginAccess();
              v37 = a1[37];
              v38 = HIBYTE(v37) & 0xF;
              if ((v37 & 0x2000000000000000) == 0)
              {
                v38 = a1[36] & 0xFFFFFFFFFFFFLL;
              }

              if (!v38 || (, sub_251C70674(), result = , !v4))
              {
                result = swift_beginAccess();
                v39 = a1[38];
                v40 = a1[39];
                v41 = HIBYTE(v40) & 0xF;
                if ((v40 & 0x2000000000000000) == 0)
                {
                  v41 = v39 & 0xFFFFFFFFFFFFLL;
                }

                if (v41)
                {

                  sub_251C70674();
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

BOOL sub_251B993DC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  result = 0;
  if (v6 || (sub_251C719D4() & 1) != 0)
  {
    if (swift_beginAccess(), v7 = *(a1 + 32), v8 = *(a1 + 40), swift_beginAccess(), v7 == a2[4]) && v8 == a2[5] || (sub_251C719D4())
    {
      if (swift_beginAccess(), v9 = *(a1 + 48), v10 = *(a1 + 56), swift_beginAccess(), v9 == a2[6]) && v10 == a2[7] || (sub_251C719D4())
      {
        if (swift_beginAccess(), v11 = *(a1 + 64), v12 = *(a1 + 72), swift_beginAccess(), v11 == a2[8]) && v12 == a2[9] || (sub_251C719D4())
        {
          if (swift_beginAccess(), v13 = *(a1 + 80), v14 = *(a1 + 88), swift_beginAccess(), v13 == a2[10]) && v14 == a2[11] || (sub_251C719D4())
          {
            swift_beginAccess();
            v15 = *(a1 + 96);
            v16 = *(a1 + 104);
            swift_beginAccess();
            if (sub_251A74D48(v15, v16, a2[12]))
            {
              if (swift_beginAccess(), v17 = *(a1 + 112), v18 = *(a1 + 120), swift_beginAccess(), v17 == a2[14]) && v18 == a2[15] || (sub_251C719D4())
              {
                if (swift_beginAccess(), v19 = *(a1 + 128), v20 = *(a1 + 136), swift_beginAccess(), v19 == a2[16]) && v20 == a2[17] || (sub_251C719D4())
                {
                  if (swift_beginAccess(), v21 = *(a1 + 144), v22 = *(a1 + 152), swift_beginAccess(), v21 == a2[18]) && v22 == a2[19] || (sub_251C719D4())
                  {
                    if (swift_beginAccess(), v23 = *(a1 + 160), v24 = *(a1 + 168), swift_beginAccess(), v23 == a2[20]) && v24 == a2[21] || (sub_251C719D4())
                    {
                      if (swift_beginAccess(), v25 = *(a1 + 176), v26 = *(a1 + 184), swift_beginAccess(), v25 == a2[22]) && v26 == a2[23] || (sub_251C719D4())
                      {
                        if (swift_beginAccess(), v27 = *(a1 + 192), v28 = *(a1 + 200), swift_beginAccess(), v27 == a2[24]) && v28 == a2[25] || (sub_251C719D4())
                        {
                          if (swift_beginAccess(), v29 = *(a1 + 208), v30 = *(a1 + 216), swift_beginAccess(), v29 == a2[26]) && v30 == a2[27] || (sub_251C719D4())
                          {
                            if (swift_beginAccess(), v31 = *(a1 + 224), v32 = *(a1 + 232), swift_beginAccess(), v31 == a2[28]) && v32 == a2[29] || (sub_251C719D4())
                            {
                              if (swift_beginAccess(), v33 = *(a1 + 240), v34 = *(a1 + 248), swift_beginAccess(), v33 == a2[30]) && v34 == a2[31] || (sub_251C719D4())
                              {
                                swift_beginAccess();
                                v35 = *(a1 + 256);
                                v36 = *(a1 + 264);
                                swift_beginAccess();
                                if (sub_251A74D48(v35, v36, a2[32]))
                                {
                                  if (swift_beginAccess(), v37 = *(a1 + 272), v38 = *(a1 + 280), swift_beginAccess(), v37 == a2[34]) && v38 == a2[35] || (sub_251C719D4())
                                  {
                                    if (swift_beginAccess(), v39 = *(a1 + 288), v40 = *(a1 + 296), swift_beginAccess(), v39 == a2[36]) && v40 == a2[37] || (sub_251C719D4())
                                    {
                                      swift_beginAccess();
                                      v42 = *(a1 + 304);
                                      v41 = *(a1 + 312);
                                      swift_beginAccess();
                                      if (v42 == a2[38] && v41 == a2[39])
                                      {
                                        return 1;
                                      }

                                      if (sub_251C719D4())
                                      {
                                        return 1;
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

uint64_t sub_251B99A68@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  sub_251C703A4();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_251B99B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B848, type metadata accessor for PBMedicationTracking, &unk_251C7E3A4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B99BF8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AF08, type metadata accessor for PBMedicationTracking, &unk_251C7E3DC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B99C64(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AF08, type metadata accessor for PBMedicationTracking, &unk_251C7E3DC);

  return sub_251C705C4();
}

uint64_t sub_251B99CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 != v5 && !sub_251B993DC(v4, v5))
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B99D8C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2578);
  __swift_project_value_buffer(v0, qword_27F4A2578);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_251C7C210;
  v5 = v42 + v4;
  v6 = v42 + v4 + *(v2 + 56);
  *(v42 + v4) = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "CAPSULE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "CREAM";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "DEVICE";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "DROPS";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "FOAM";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "GEL";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "INHALER";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "INJECTION";
  *(v23 + 8) = 9;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "LIQUID";
  *(v25 + 1) = 6;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "LOTION";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "OINTMENT";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "PATCH";
  *(v31 + 1) = 5;
  v31[16] = 2;
  v9();
  v32 = (v5 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "POWDER";
  *(v33 + 1) = 6;
  v33[16] = 2;
  v9();
  v34 = (v5 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "SPRAY";
  *(v35 + 1) = 5;
  v35[16] = 2;
  v9();
  v36 = (v5 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "SUPPOSITORY";
  *(v37 + 1) = 11;
  v37[16] = 2;
  v9();
  v38 = v5 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "TABLET";
  *(v38 + 8) = 6;
  *(v38 + 16) = 2;
  v9();
  v39 = (v5 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "TOPICAL";
  *(v40 + 1) = 7;
  v40[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9A36C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2590);
  __swift_project_value_buffer(v0, qword_27F4A2590);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251C78760;
  v5 = v33 + v4;
  v6 = v33 + v4 + *(v2 + 56);
  *(v33 + v4) = 0;
  *v6 = "NOT_SET_UNIT";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "CAPSULE_UNIT";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "APPLICATION_UNIT";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "DEVICE_UNIT";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "DROP_UNIT";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "INHALATION_UNIT";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "INJECTION_UNIT";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "MILLILITERS_UNIT";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "PATCH_UNIT";
  *(v23 + 8) = 10;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "SCOOP_UNIT";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "SPRAY_UNIT";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "UNIT_UNIT";
  *(v29 + 1) = 9;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "TABLET_UNIT";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9A824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBMedicationTracking(0), sub_251B9ED44(&qword_27F47AF08, type metadata accessor for PBMedicationTracking, &unk_251C7E3DC), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBMedicationTrackings(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B9A998(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B860, type metadata accessor for PBMedicationTrackings, &unk_251C7E1EC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9AA38(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479018, type metadata accessor for PBMedicationTrackings, &unk_251C7E224);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9AAA4(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F479018, type metadata accessor for PBMedicationTrackings, &unk_251C7E224);

  return sub_251C705C4();
}

uint64_t sub_251B9AB38()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A25C0);
  __swift_project_value_buffer(v0, qword_27F4A25C0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C78260;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "log_origin";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "status";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "schedule_item_identifier";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "medication_semantic_identifier";
  *(v15 + 1) = 30;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "scheduled_dose_quantity";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "dose_quantity";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "scheduled_date";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v10();
  v22 = (v6 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "log_date";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B9AEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
LABEL_4:
            sub_251C70534();
          }
        }

        else
        {
          sub_251C704F4();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          v6 = v3;
          sub_251BB32C8();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          sub_251BB331C();
        }

        v3 = v6;
        sub_251C70494();
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B9B008(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*v3)
  {
    sub_251BB32C8();
    v6 = sub_251C70604();
    if (v4)
    {
      return v6;
    }

    v5 = 0;
  }

  if (*(v3 + 16))
  {
    sub_251BB331C();
    v7 = v5;
    v6 = sub_251C70604();
    if (v5)
    {
      return v6;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v3 + 40);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (v6 = sub_251C70674(), !v7))
  {
    v10 = *(v3 + 56);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (v6 = sub_251C70674(), !v7))
    {
      if (!*(v3 + 64) || (v6 = sub_251C70644(), !v7))
      {
        if (!*(v3 + 68) || (v6 = sub_251C70644(), !v7))
        {
          v12 = *(v3 + 80);
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (v6 = sub_251C70674(), !v7))
          {
            v14 = *(v3 + 96);
            v15 = HIBYTE(v14) & 0xF;
            if ((v14 & 0x2000000000000000) == 0)
            {
              v15 = *(v3 + 88) & 0xFFFFFFFFFFFFLL;
            }

            if (!v15 || (v6 = sub_251C70674(), !v7))
            {
              type metadata accessor for PBMedicationTrackingDoseEvent(0);
              return sub_251C70394();
            }
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_251B9B20C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251B9B274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B9B2E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B9B38C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B868, type metadata accessor for PBMedicationTrackingDoseEvent, &unk_251C7E084);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9B42C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AED0, type metadata accessor for PBMedicationTrackingDoseEvent, &unk_251C7E0BC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9B498(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AED0, type metadata accessor for PBMedicationTrackingDoseEvent, &unk_251C7E0BC);

  return sub_251C705C4();
}

uint64_t sub_251B9B518()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A25D8);
  __swift_project_value_buffer(v0, qword_27F4A25D8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "LOG_ORIGIN_NOT_SET";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "AS_NEEDED";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "SCHEDULE";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B9B764()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A25F0);
  __swift_project_value_buffer(v0, qword_27F4A25F0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "STATUS_NOT_SET";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "NOT_INTERACTED";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "NOTIFICATION_NOT_SENT";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "SNOOZED";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "TAKEN";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "SKIPPED";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "NOT_LOGGED";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B9BAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBMedicationTrackingDoseEvent(0), sub_251B9ED44(&qword_27F47AED0, type metadata accessor for PBMedicationTrackingDoseEvent, &unk_251C7E0BC), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBMedicationTrackingDoseEvents(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B9BC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B880, type metadata accessor for PBMedicationTrackingDoseEvents, &unk_251C7DECC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9BCCC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479020, type metadata accessor for PBMedicationTrackingDoseEvents, &unk_251C7DF04);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9BD38(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F479020, type metadata accessor for PBMedicationTrackingDoseEvents, &unk_251C7DF04);

  return sub_251C705C4();
}

uint64_t sub_251B9BDCC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2620);
  __swift_project_value_buffer(v0, qword_27F4A2620);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_251C75810;
  v5 = v27 + v4;
  v6 = v27 + v4 + *(v2 + 56);
  *(v27 + v4) = 1;
  *v6 = "schedule_identifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v27 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "medication_semantic_identifier";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v27 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "created_utc_offset";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v27 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "start_date_time";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v27 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "end_date_time";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v27 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "notes";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v9();
  v19 = (v27 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "time_intervals";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v27 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "frequency_type";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = v27 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "unrecognized";
  *(v23 + 8) = 12;
  *(v23 + 16) = 2;
  v9();
  v24 = (v27 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "compatibility_version_range";
  *(v25 + 1) = 27;
  v25[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9C1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            goto LABEL_4;
          }

          type metadata accessor for PBHKMedicationScheduleIntervalData(0);
          sub_251B9ED44(&qword_27F47AE40, type metadata accessor for PBHKMedicationScheduleIntervalData, &unk_251C7D93C);
          sub_251C70554();
        }

        else
        {
          switch(result)
          {
            case 8:
              sub_251BB3370();
              sub_251C70494();
              break;
            case 9:
              sub_251C70474();
              break;
            case 10:
              sub_251B9C3B0(a1, v5, a2, a3);
              break;
          }
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
LABEL_4:
        sub_251C70534();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B9C3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBMedicationTrackingSchedule(0);
  type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  sub_251B9ED44(&qword_27F47AE78, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, &unk_251C7DC0C);
  return sub_251C70564();
}

uint64_t sub_251B9C464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_251C70674(), !v4))
    {
      v13 = *(v3 + 40);
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_251C70674(), !v4))
      {
        v15 = *(v3 + 56);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v16 || (result = sub_251C70674(), !v4))
        {
          v17 = *(v3 + 72);
          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
          }

          if (!v18 || (result = sub_251C70674(), !v4))
          {
            v19 = *(v3 + 88);
            v20 = HIBYTE(v19) & 0xF;
            if ((v19 & 0x2000000000000000) == 0)
            {
              v20 = *(v3 + 80) & 0xFFFFFFFFFFFFLL;
            }

            if (!v20 || (result = sub_251C70674(), !v4))
            {
              v21 = v4;
              if (*(*(v3 + 96) + 16))
              {
                type metadata accessor for PBHKMedicationScheduleIntervalData(0);
                sub_251B9ED44(&qword_27F47AE40, type metadata accessor for PBHKMedicationScheduleIntervalData, &unk_251C7D93C);
                result = sub_251C70694();
                if (v4)
                {
                  return result;
                }

                v21 = 0;
              }

              if (*(v3 + 104))
              {
                sub_251BB3370();
                v22 = v21;
                result = sub_251C70604();
                if (v21)
                {
                  return result;
                }
              }

              else
              {
                v22 = v21;
              }

              if (*(v3 + 113) != 1 || (result = sub_251C705F4(), !v22))
              {
                result = sub_251B9C700(v3, a1, a2, a3);
                if (!v22)
                {
                  type metadata accessor for PBMedicationTrackingSchedule(0);
                  return sub_251C70394();
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

uint64_t sub_251B9C700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBMedicationTrackingSchedule(0);
  sub_251BB33C4(a1 + *(v12 + 56), v7, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  sub_251B9ED44(&qword_27F47AE78, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, &unk_251C7DC0C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
}

uint64_t sub_251B9C950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
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
  v4 = MEMORY[0x277D84F90];
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  *(a2 + 96) = v4;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  sub_251C703A4();
  v5 = *(a1 + 56);
  v6 = type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_251B9CA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B888, type metadata accessor for PBMedicationTrackingSchedule, &unk_251C7DD64);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9CAEC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AE98, type metadata accessor for PBMedicationTrackingSchedule, &unk_251C7DD9C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9CB58(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AE98, type metadata accessor for PBMedicationTrackingSchedule, &unk_251C7DD9C);

  return sub_251C705C4();
}

uint64_t sub_251B9CBD4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2638);
  __swift_project_value_buffer(v0, qword_27F4A2638);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251C747F0;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 0;
  *v6 = "FREQUENCY_NOT_SET";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "CYCLE";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "DAILY";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "DAYS_OF_WEEK";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 4;
  *v15 = "AS_NEEDED";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9CE98()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2650);
  __swift_project_value_buffer(v0, qword_27F4A2650);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "minimum_compatibility_version";
  *(v7 + 8) = 29;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "origin_compatibility_version";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B9D078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_251C704F4();
    }
  }

  return result;
}

uint64_t sub_251B9D140(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B898, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, &unk_251C7DBD4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9D1E0(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AE78, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, &unk_251C7DC0C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9D24C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AE78, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, &unk_251C7DC0C);

  return sub_251C705C4();
}

uint64_t sub_251B9D2C8(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B9D398(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_251C706D4();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v11 = v10 - 8;
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_251C74800;
  v14 = v13 + v12 + *(v11 + 56);
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_251C706B4();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_251C706C4();
}

uint64_t sub_251B9D520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_251C70444();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_251B9ED44(a5, a6, a7);
      sub_251C70554();
    }
  }

  return result;
}

uint64_t sub_251B9D5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBMedicationTrackingSchedule(0), sub_251B9ED44(&qword_27F47AE98, type metadata accessor for PBMedicationTrackingSchedule, &unk_251C7DD9C), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBMedicationTrackingSchedules(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B9D770(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B8A0, type metadata accessor for PBMedicationTrackingSchedules, &unk_251C7DA6C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9D810(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479028, type metadata accessor for PBMedicationTrackingSchedules, &unk_251C7DAA4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9D87C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F479028, type metadata accessor for PBMedicationTrackingSchedules, &unk_251C7DAA4);

  return sub_251C705C4();
}

uint64_t sub_251B9D910(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B9D9BC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2680);
  __swift_project_value_buffer(v0, qword_27F4A2680);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "days_of_week";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "cycle_index";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "cycle_interval_days";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "dose";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "start_time";
  *(v16 + 8) = 10;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B9DC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_251B9DD44(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3 || result == 4)
    {
LABEL_2:
      sub_251C704F4();
    }

    else if (result == 5)
    {
      sub_251C70534();
    }
  }
}

uint64_t sub_251B9DD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKMedicationScheduleIntervalData(0);
  type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  sub_251B9ED44(&qword_27F47AE20, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, &unk_251C7D7D4);
  return sub_251C70564();
}

uint64_t sub_251B9DDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B9DF08(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_251C70644();
    }

    if (*(v3 + 4))
    {
      sub_251C70644();
    }

    if (*(v3 + 8))
    {
      sub_251C70644();
    }

    v6 = *(v3 + 24);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_251C70674();
    }

    type metadata accessor for PBHKMedicationScheduleIntervalData(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B9DF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKMedicationScheduleIntervalData(0);
  sub_251BB33C4(a1 + *(v12 + 36), v7, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  sub_251B9ED44(&qword_27F47AE20, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, &unk_251C7D7D4);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
}

uint64_t sub_251B9E154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  sub_251C703A4();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_251B9E230(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B8A8, type metadata accessor for PBHKMedicationScheduleIntervalData, &unk_251C7D904);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9E2D0(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AE40, type metadata accessor for PBHKMedicationScheduleIntervalData, &unk_251C7D93C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9E33C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AE40, type metadata accessor for PBHKMedicationScheduleIntervalData, &unk_251C7D93C);

  return sub_251C705C4();
}

uint64_t sub_251B9E3BC()
{
  result = MEMORY[0x25308CDA0](0xD000000000000019, 0x8000000251C8EF90);
  qword_27F4A2698 = 0xD00000000000003BLL;
  unk_27F4A26A0 = 0x8000000251C8EF10;
  return result;
}

uint64_t sub_251B9E434()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A26A8);
  __swift_project_value_buffer(v0, qword_27F4A26A8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_251C75420;
  v5 = v22 + v4;
  v6 = v22 + v4 + *(v2 + 56);
  *(v22 + v4) = 1;
  *v6 = "sunday";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "monday";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "tuesday";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "wednesday";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "thursday";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "friday";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "saturday";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9E748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_11:
          sub_251C70474();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_11;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B9E82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_251C705F4(), !v4))
  {
    if (v3[1] != 1 || (result = sub_251C705F4(), !v4))
    {
      if (v3[2] != 1 || (result = sub_251C705F4(), !v4))
      {
        if (v3[3] != 1 || (result = sub_251C705F4(), !v4))
        {
          if (v3[4] != 1 || (result = sub_251C705F4(), !v4))
          {
            if (v3[5] != 1 || (result = sub_251C705F4(), !v4))
            {
              if (v3[6] != 1 || (result = sub_251C705F4(), !v4))
              {
                type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
                return sub_251C70394();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B9E9A8@<X0>(_DWORD *a2@<X8>)
{
  *(a2 + 3) = 0;
  *a2 = 0;
  return sub_251C703A4();
}

uint64_t sub_251B9E9F8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
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

uint64_t sub_251B9EA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B9EACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B9EB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B8B0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, &unk_251C7D79C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9EC10(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AE20, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, &unk_251C7D7D4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9EC7C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AE20, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, &unk_251C7D7D4);

  return sub_251C705C4();
}

uint64_t sub_251B9ED44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251BA3424(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v26 - v9);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_15;
  }

  v27 = v12;
  nullsub_1();
  v16 = v15;
  nullsub_1();
  if (v16 != v17 || a1[5] != a2[5] || a1[6] != a2[6])
  {
    goto LABEL_15;
  }

  v26 = type metadata accessor for PBWorkout(0);
  v18 = *(v26 + 48);
  v19 = *(v27 + 48);
  sub_251BB33C4(a1 + v18, v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v20 = a2 + v18;
  v21 = v19;
  sub_251BB33C4(v20, &v14[v19], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v22 = *(v5 + 48);
  if (v22(v14, 1, v4) != 1)
  {
    sub_251BB33C4(v14, v10, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v22(&v14[v21], 1, v4) != 1)
    {
      sub_251BB23C4(&v14[v21], v7, type metadata accessor for PBDateRange);
      v23 = sub_251BB2194(v10, v7);
      sub_251BB2308(v7, type metadata accessor for PBDateRange);
      sub_251BB2308(v10, type metadata accessor for PBDateRange);
      sub_251BB3444(v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if (v23)
      {
        goto LABEL_12;
      }

LABEL_15:
      v24 = 0;
      return v24 & 1;
    }

    sub_251BB2308(v10, type metadata accessor for PBDateRange);
LABEL_10:
    sub_251BB242C(v14, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
    goto LABEL_15;
  }

  if (v22(&v14[v21], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_251BB3444(v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_12:
  if (a1[7] != a2[7] || a1[8] != a2[8])
  {
    goto LABEL_15;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v24 = sub_251C70ED4();
  return v24 & 1;
}

uint64_t sub_251BA3894(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for PBBucket(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BA395C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  sub_251BB34B4(0, &qword_27F4790F8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for PBHKMedicationScheduleIntervalData(0);
  v14 = *(v22 + 36);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_251BB33C4(a1 + v14, v13, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  sub_251BB33C4(a2 + v14, &v13[v15], qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_251BB3444(v13, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_251BB33C4(v13, v9, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_251BB2308(v9, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_6:
    sub_251BB242C(v13, &qword_27F4790F8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_15:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_251BB23C4(&v13[v15], v23, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v18 = sub_251BA3D80(v9, v17);
  sub_251BB2308(v17, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  sub_251BB2308(v9, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  sub_251BB3444(v13, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (*v24 != *a2 || *(v24 + 4) != *(a2 + 4) || *(v24 + 8) != *(a2 + 8) || (*(v24 + 16) != *(a2 + 16) || *(v24 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_251C70ED4();
  return v19 & 1;
}

uint64_t sub_251BA3D80(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6])
  {
    return 0;
  }

  type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BA3E88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
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

  v4 = a1[2];
  v5 = a2[2];
  if (*(a2 + 24) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5] || (v6 = a1, v7 = a2, v8 = sub_251C719D4(), a2 = v7, v9 = v8, a1 = v6, (v9 & 1) != 0))
  {
    if (a1[6] == a2[6] && a1[7] == a2[7] || (v10 = a1, v11 = a2, v12 = sub_251C719D4(), a2 = v11, v13 = v12, a1 = v10, (v13 & 1) != 0))
    {
      if (*(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17))
      {
        if (a1[9] == a2[9] && a1[10] == a2[10] || (v14 = a1, v15 = a2, v16 = sub_251C719D4(), a2 = v15, v17 = v16, a1 = v14, (v17 & 1) != 0))
        {
          if (a1[11] == a2[11] && a1[12] == a2[12] || (sub_251C719D4() & 1) != 0)
          {
            type metadata accessor for PBMedicationTrackingDoseEvent(0);
            sub_251C703B4();
            sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            return sub_251C70ED4() & 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_251BA411C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B67AAC(0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v25 - v9);
  sub_251BB34B4(0, &qword_27F47B5C0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_251C719D4() & 1) == 0 || (sub_251A9416C(*(a1 + 96), *(a2 + 96)) & 1) == 0)
  {
    goto LABEL_48;
  }

  v15 = *(a1 + 104);
  v16 = *(a2 + 104);
  if (*(a2 + 112) == 1)
  {
    if (v16 <= 1)
    {
      if (v16)
      {
        if (v15 != 1)
        {
          goto LABEL_48;
        }
      }

      else if (v15)
      {
        goto LABEL_48;
      }
    }

    else if (v16 == 2)
    {
      if (v15 != 2)
      {
        goto LABEL_48;
      }
    }

    else if (v16 == 3)
    {
      if (v15 != 3)
      {
        goto LABEL_48;
      }
    }

    else if (v15 != 4)
    {
      goto LABEL_48;
    }
  }

  else if (v15 != v16)
  {
LABEL_48:
    v22 = 0;
    return v22 & 1;
  }

  if (*(a1 + 113) != *(a2 + 113))
  {
    goto LABEL_48;
  }

  v26 = type metadata accessor for PBMedicationTrackingSchedule(0);
  v17 = *(v26 + 56);
  v18 = *(v12 + 48);
  sub_251BB33C4(a1 + v17, v14, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  v19 = a2 + v17;
  v20 = v18;
  sub_251BB33C4(v19, &v14[v18], qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  v21 = *(v5 + 48);
  if (v21(v14, 1, v4) == 1)
  {
    if (v21(&v14[v20], 1, v4) == 1)
    {
      sub_251BB3444(v14, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  sub_251BB33C4(v14, v10, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  if (v21(&v14[v20], 1, v4) == 1)
  {
    sub_251BB2308(v10, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
LABEL_36:
    sub_251BB242C(v14, &qword_27F47B5C0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
    goto LABEL_48;
  }

  sub_251BB23C4(&v14[v20], v7, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  if (*v10 != *v7 || v10[1] != v7[1])
  {
    sub_251BB2308(v7, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
    sub_251BB2308(v10, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
    sub_251BB3444(v14, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
    goto LABEL_48;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v23 = sub_251C70ED4();
  sub_251BB2308(v7, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  sub_251BB2308(v10, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  sub_251BB3444(v14, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  if ((v23 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_30:
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_251C70ED4();
  return v22 & 1;
}

uint64_t sub_251BA471C(void *a1, void *a2)
{
  v72 = a2;
  v3 = type metadata accessor for PBQuantity(0);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v61 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v61 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v61 - v11;
  sub_251BB34B4(0, &qword_27F47B578, qword_2813E6F88, type metadata accessor for PBQuantity);
  v67 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v61 - v15;
  v16 = type metadata accessor for PBGeneralMedication(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, v7);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v61 - v21);
  sub_251BB34B4(0, &qword_27F47B580, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v61 - v25;
  v27 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  v70 = a1;
  v71 = v27;
  v28 = *(v27 + 28);
  v29 = *(v24 + 56);
  sub_251BB33C4(a1 + v28, v26, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v30 = v72 + v28;
  v31 = v72;
  sub_251BB33C4(v30, &v26[v29], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v32 = *(v17 + 48);
  if (v32(v26, 1, v16) == 1)
  {
    if (v32(&v26[v29], 1, v16) == 1)
    {
      sub_251BB3444(v26, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
      goto LABEL_8;
    }

LABEL_6:
    v33 = &qword_27F47B580;
    v34 = qword_2813E52A0;
    v35 = type metadata accessor for PBGeneralMedication;
    v36 = v26;
LABEL_24:
    sub_251BB242C(v36, v33, v34, v35);
    goto LABEL_25;
  }

  sub_251BB33C4(v26, v22, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if (v32(&v26[v29], 1, v16) == 1)
  {
    sub_251BB2308(v22, type metadata accessor for PBGeneralMedication);
    goto LABEL_6;
  }

  sub_251BB23C4(&v26[v29], v19, type metadata accessor for PBGeneralMedication);
  v37 = sub_251BAA86C(v22, v19);
  sub_251BB2308(v19, type metadata accessor for PBGeneralMedication);
  sub_251BB2308(v22, type metadata accessor for PBGeneralMedication);
  sub_251BB3444(v26, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((v37 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v38 = v70;
  v39 = *(v71 + 32);
  v41 = v66;
  v40 = v67;
  v42 = *(v67 + 48);
  sub_251BB33C4(v70 + v39, v66, qword_2813E6F88, type metadata accessor for PBQuantity);
  sub_251BB33C4(v31 + v39, v41 + v42, qword_2813E6F88, type metadata accessor for PBQuantity);
  v43 = v69;
  v44 = *(v68 + 48);
  if (v44(v41, 1, v69) == 1)
  {
    if (v44(v41 + v42, 1, v43) == 1)
    {
      sub_251BB3444(v41, qword_2813E6F88, type metadata accessor for PBQuantity);
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v51 = v65;
  sub_251BB33C4(v41, v65, qword_2813E6F88, type metadata accessor for PBQuantity);
  if (v44(v41 + v42, 1, v43) == 1)
  {
    sub_251BB2308(v51, type metadata accessor for PBQuantity);
LABEL_23:
    v33 = &qword_27F47B578;
    v34 = qword_2813E6F88;
    v35 = type metadata accessor for PBQuantity;
    v36 = v41;
    goto LABEL_24;
  }

  v53 = v41 + v42;
  v54 = v64;
  sub_251BB23C4(v53, v64, type metadata accessor for PBQuantity);
  if (*v51 != *v54 || (*(v51 + 8) != *(v54 + 8) || *(v51 + 16) != *(v54 + 16)) && (sub_251C719D4() & 1) == 0)
  {
    sub_251BB2308(v54, type metadata accessor for PBQuantity);
    sub_251BB2308(v51, type metadata accessor for PBQuantity);
    v56 = v41;
    goto LABEL_34;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v38 = v70;
  v55 = sub_251C70ED4();
  sub_251BB2308(v54, type metadata accessor for PBQuantity);
  sub_251BB2308(v65, type metadata accessor for PBQuantity);
  sub_251BB3444(v41, qword_2813E6F88, type metadata accessor for PBQuantity);
  if ((v55 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((*v38 != *v31 || v38[1] != v31[1]) && (sub_251C719D4() & 1) == 0 || (v38[2] != v31[2] || v38[3] != v31[3]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v45 = *(v71 + 36);
  v46 = *(v40 + 48);
  v47 = v63;
  sub_251BB33C4(v38 + v45, v63, qword_2813E6F88, type metadata accessor for PBQuantity);
  v48 = v31 + v45;
  v49 = v47;
  sub_251BB33C4(v48, v47 + v46, qword_2813E6F88, type metadata accessor for PBQuantity);
  if (v44(v47, 1, v43) != 1)
  {
    v57 = v47;
    v58 = v62;
    sub_251BB33C4(v57, v62, qword_2813E6F88, type metadata accessor for PBQuantity);
    if (v44(v49 + v46, 1, v43) == 1)
    {
      sub_251BB2308(v58, type metadata accessor for PBQuantity);
      goto LABEL_37;
    }

    v59 = v61;
    sub_251BB23C4(v49 + v46, v61, type metadata accessor for PBQuantity);
    if (*v58 == *v59 && (*(v58 + 8) == *(v59 + 8) && *(v58 + 16) == *(v59 + 16) || (sub_251C719D4() & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v60 = sub_251C70ED4();
      sub_251BB2308(v59, type metadata accessor for PBQuantity);
      sub_251BB2308(v58, type metadata accessor for PBQuantity);
      sub_251BB3444(v49, qword_2813E6F88, type metadata accessor for PBQuantity);
      if (v60)
      {
        goto LABEL_20;
      }

LABEL_25:
      v50 = 0;
      return v50 & 1;
    }

    sub_251BB2308(v59, type metadata accessor for PBQuantity);
    sub_251BB2308(v58, type metadata accessor for PBQuantity);
    v56 = v49;
LABEL_34:
    sub_251BB3444(v56, qword_2813E6F88, type metadata accessor for PBQuantity);
    goto LABEL_25;
  }

  if (v44(v47 + v46, 1, v43) != 1)
  {
LABEL_37:
    v33 = &qword_27F47B578;
    v34 = qword_2813E6F88;
    v35 = type metadata accessor for PBQuantity;
    v36 = v49;
    goto LABEL_24;
  }

  sub_251BB3444(v47, qword_2813E6F88, type metadata accessor for PBQuantity);
LABEL_20:
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v50 = sub_251C70ED4();
  return v50 & 1;
}

uint64_t sub_251BA5240(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - v8;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v15 = v14;
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v49 = type metadata accessor for PBHKDiagnosticTestReport(0);
  v20 = *(v49 + 40);
  v47 = v15;
  v21 = *(v15 + 48);
  v51 = a1;
  sub_251BB33C4(a1 + v20, v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v52 = a2;
  sub_251BB33C4(a2 + v20, &v19[v21], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_251BB3444(v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_13;
    }

LABEL_6:
    v23 = v19;
LABEL_7:
    sub_251BB242C(v23, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_8;
  }

  sub_251BB33C4(v19, v13, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_251BB2308(v13, type metadata accessor for PBHKConcept);
    goto LABEL_6;
  }

  v26 = v50;
  sub_251BB23C4(&v19[v21], v50, type metadata accessor for PBHKConcept);
  v27 = *(v4 + 20);
  v28 = *&v13[v27];
  v29 = *(v26 + v27);
  if (v28 != v29)
  {

    v30 = sub_251B70648(v28, v29);

    if ((v30 & 1) == 0)
    {
      sub_251BB2308(v26, type metadata accessor for PBHKConcept);
      sub_251BB2308(v13, type metadata accessor for PBHKConcept);
      v37 = v19;
LABEL_30:
      sub_251BB3444(v37, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_8;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_251C70ED4();
  sub_251BB2308(v26, type metadata accessor for PBHKConcept);
  sub_251BB2308(v13, type metadata accessor for PBHKConcept);
  sub_251BB3444(v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v31 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v33 = v51;
  v32 = v52;
  if ((*v51 != *v52 || v51[1] != v52[1]) && (sub_251C719D4() & 1) == 0 || (v33[2] != v32[2] || v33[3] != v32[3]) && (sub_251C719D4() & 1) == 0 || (v33[4] != v32[4] || v33[5] != v32[5]) && (sub_251C719D4() & 1) == 0 || (v33[6] != v32[6] || v33[7] != v32[7]) && (sub_251C719D4() & 1) == 0 || (sub_251A94F54(v33[8], v32[8]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v34 = *(v49 + 44);
  v35 = *(v47 + 48);
  v36 = v48;
  sub_251BB33C4(v33 + v34, v48, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v32 + v34, v36 + v35, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v22(v36, 1, v4) == 1)
  {
    if (v22((v36 + v35), 1, v4) == 1)
    {
      sub_251BB3444(v36, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_37:
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v24 = sub_251C70ED4();
      return v24 & 1;
    }

    goto LABEL_33;
  }

  v38 = v46;
  sub_251BB33C4(v36, v46, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v22((v36 + v35), 1, v4) == 1)
  {
    sub_251BB2308(v38, type metadata accessor for PBHKConcept);
LABEL_33:
    v23 = v36;
    goto LABEL_7;
  }

  v39 = v45;
  sub_251BB23C4(v36 + v35, v45, type metadata accessor for PBHKConcept);
  v40 = *(v4 + 20);
  v41 = *(v38 + v40);
  v42 = *(v39 + v40);
  if (v41 != v42)
  {

    v43 = sub_251B70648(v41, v42);

    if ((v43 & 1) == 0)
    {
      sub_251BB2308(v39, type metadata accessor for PBHKConcept);
      sub_251BB2308(v38, type metadata accessor for PBHKConcept);
      v37 = v36;
      goto LABEL_30;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v44 = sub_251C70ED4();
  sub_251BB2308(v39, type metadata accessor for PBHKConcept);
  sub_251BB2308(v38, type metadata accessor for PBHKConcept);
  sub_251BB3444(v36, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v44)
  {
    goto LABEL_37;
  }

LABEL_8:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_251BA5AC8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v21 - v8);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for PBActivitySummarySeries(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_251BB33C4(a1 + v14, v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v14, &v13[v15], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_251BB3444(v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_251BB33C4(v13, v9, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_251BB2308(v9, type metadata accessor for PBDateRange);
LABEL_6:
    sub_251BB242C(v13, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_251BB23C4(&v13[v15], v23, type metadata accessor for PBDateRange);
  v18 = sub_251BB2194(v9, v17);
  sub_251BB2308(v17, type metadata accessor for PBDateRange);
  sub_251BB2308(v9, type metadata accessor for PBDateRange);
  sub_251BB3444(v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_251A951D8(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_251C70ED4();
  return v19 & 1;
}

uint64_t sub_251BA5EA4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BA5FDC(uint64_t a1, uint64_t a2)
{
  v106 = type metadata accessor for PBHKConcept(0);
  v4 = *(v106 - 8);
  v5 = MEMORY[0x28223BE20](v106);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v100 = &v95 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v101 = &v95 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v95 - v12;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v102 = &v95 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v103 = &v95 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v95 - v22;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v105 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v95 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v104 = &v95 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v95 - v33;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_11;
  }

  v97 = v27;
  v98 = v30;
  v95 = v7;
  v96 = v17;
  v99 = type metadata accessor for PBHKVaccinationRecord(0);
  v35 = *(v99 + 60);
  v36 = *(v105 + 48);
  sub_251BB33C4(a1 + v35, v34, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v35, &v34[v36], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v37 = *(v4 + 48);
  v38 = v106;
  if (v37(v34, 1, v106) == 1)
  {
    if (v37(&v34[v36], 1, v38) != 1)
    {
      goto LABEL_9;
    }

    sub_251BB3444(v34, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  else
  {
    sub_251BB33C4(v34, v23, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v37(&v34[v36], 1, v38) == 1)
    {
      v39 = v23;
LABEL_8:
      sub_251BB2308(v39, type metadata accessor for PBHKConcept);
      goto LABEL_9;
    }

    sub_251BB23C4(&v34[v36], v13, type metadata accessor for PBHKConcept);
    v43 = *(v38 + 20);
    v44 = *&v23[v43];
    v45 = *&v13[v43];
    if (v44 != v45)
    {

      v46 = sub_251B70648(v44, v45);

      if ((v46 & 1) == 0)
      {
        sub_251BB2308(v13, type metadata accessor for PBHKConcept);
        sub_251BB2308(v23, type metadata accessor for PBHKConcept);
        v57 = v34;
        goto LABEL_39;
      }
    }

    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v47 = sub_251C70ED4();
    sub_251BB2308(v13, type metadata accessor for PBHKConcept);
    sub_251BB2308(v23, type metadata accessor for PBHKConcept);
    sub_251BB3444(v34, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if ((v47 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_251C719D4() & 1) == 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 65) != *(a2 + 65) || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (sub_251C719D4() & 1) == 0 || (sub_251A956E8(*(a1 + 104), *(a2 + 104)) & 1) == 0 || (sub_251A956E8(*(a1 + 112), *(a2 + 112)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v48 = v99;
  v49 = v37;
  v50 = *(v99 + 64);
  v51 = v104;
  v52 = *(v105 + 48);
  sub_251BB33C4(a1 + v50, v104, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v53 = a2 + v50;
  v54 = v106;
  v55 = v51;
  sub_251BB33C4(v53, &v51[v52], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v49)(v51, 1, v54) != 1)
  {
    v58 = v103;
    sub_251BB33C4(v51, v103, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v59 = &v51[v52];
    v56 = v49;
    if ((v49)(v59, 1, v54) == 1)
    {
      v60 = v58;
LABEL_42:
      sub_251BB2308(v60, type metadata accessor for PBHKConcept);
      goto LABEL_43;
    }

    v61 = v101;
    sub_251BB23C4(v55 + v52, v101, type metadata accessor for PBHKConcept);
    v62 = *(v54 + 20);
    v63 = *(v58 + v62);
    v64 = *(v61 + v62);
    if (v63 == v64 || (, , v65 = sub_251B70648(v63, v64), , , (v65 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v66 = v103;
      v67 = sub_251C70ED4();
      sub_251BB2308(v61, type metadata accessor for PBHKConcept);
      sub_251BB2308(v66, type metadata accessor for PBHKConcept);
      sub_251BB3444(v104, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if ((v67 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_47;
    }

    sub_251BB2308(v61, type metadata accessor for PBHKConcept);
    sub_251BB2308(v103, type metadata accessor for PBHKConcept);
    v57 = v104;
LABEL_39:
    sub_251BB3444(v57, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_11;
  }

  if ((v49)(&v51[v52], 1, v54) != 1)
  {
LABEL_43:
    v40 = v55;
    goto LABEL_10;
  }

  v56 = v49;
  sub_251BB3444(v55, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_47:
  v68 = *(v48 + 68);
  v69 = *(v105 + 48);
  v34 = v98;
  sub_251BB33C4(a1 + v68, v98, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v70 = a2 + v68;
  v71 = v106;
  sub_251BB33C4(v70, &v34[v69], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v56)(v34, 1, v71) == 1)
  {
    if ((v56)(&v34[v69], 1, v71) == 1)
    {
      v104 = v56;
      sub_251BB3444(v34, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_55;
    }

LABEL_9:
    v40 = v34;
LABEL_10:
    sub_251BB242C(v40, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_11;
  }

  v72 = v102;
  sub_251BB33C4(v34, v102, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v104 = v56;
  if ((v56)(&v34[v69], 1, v71) == 1)
  {
    v39 = v72;
    goto LABEL_8;
  }

  v73 = v100;
  sub_251BB23C4(&v34[v69], v100, type metadata accessor for PBHKConcept);
  v74 = *(v71 + 20);
  v75 = *(v72 + v74);
  v76 = *(v73 + v74);
  if (v75 != v76)
  {

    v77 = sub_251B70648(v75, v76);

    if ((v77 & 1) == 0)
    {
      sub_251BB2308(v100, type metadata accessor for PBHKConcept);
      sub_251BB2308(v102, type metadata accessor for PBHKConcept);
      v57 = v98;
      goto LABEL_39;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v78 = v102;
  v79 = v100;
  v80 = sub_251C70ED4();
  sub_251BB2308(v79, type metadata accessor for PBHKConcept);
  sub_251BB2308(v78, type metadata accessor for PBHKConcept);
  sub_251BB3444(v98, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v80 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_55:
  v81 = *(v48 + 72);
  v82 = *(v105 + 48);
  v83 = v97;
  sub_251BB33C4(a1 + v81, v97, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v55 = v83;
  sub_251BB33C4(a2 + v81, v83 + v82, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v84 = v106;
  v85 = v104;
  if ((v104)(v83, 1, v106) == 1)
  {
    if ((v85)(v83 + v82, 1, v84) == 1)
    {
      sub_251BB3444(v83, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_64:
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = sub_251C70ED4();
      return v41 & 1;
    }

    goto LABEL_43;
  }

  v86 = v83;
  v87 = v96;
  sub_251BB33C4(v86, v96, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v85)(v55 + v82, 1, v84) == 1)
  {
    v60 = v87;
    goto LABEL_42;
  }

  v88 = v95;
  sub_251BB23C4(v55 + v82, v95, type metadata accessor for PBHKConcept);
  v89 = *(v84 + 20);
  v90 = *(v87 + v89);
  v91 = *(v88 + v89);
  if (v90 != v91)
  {

    v92 = sub_251B70648(v90, v91);

    if ((v92 & 1) == 0)
    {
      sub_251BB2308(v88, type metadata accessor for PBHKConcept);
      sub_251BB2308(v96, type metadata accessor for PBHKConcept);
      v57 = v97;
      goto LABEL_39;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v93 = v96;
  v94 = sub_251C70ED4();
  sub_251BB2308(v88, type metadata accessor for PBHKConcept);
  sub_251BB2308(v93, type metadata accessor for PBHKConcept);
  sub_251BB3444(v97, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v94)
  {
    goto LABEL_64;
  }

LABEL_11:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_251BA6F00(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBGeneralMedication(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v24 - v8);
  sub_251BB34B4(0, &qword_27F47B580, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for PBHKMedicationRecord(0);
  v14 = *(v25 + 52);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_251BB33C4(a1 + v14, v13, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251BB33C4(a2 + v14, &v13[v15], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_251BB33C4(v13, v9, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v26;
      sub_251BB23C4(&v13[v15], v26, type metadata accessor for PBGeneralMedication);
      v20 = sub_251BAA86C(v9, v19);
      sub_251BB2308(v19, type metadata accessor for PBGeneralMedication);
      sub_251BB2308(v9, type metadata accessor for PBGeneralMedication);
      sub_251BB3444(v13, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_251BB2308(v9, type metadata accessor for PBGeneralMedication);
LABEL_6:
    sub_251BB242C(v13, &qword_27F47B580, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251BB3444(v13, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
LABEL_10:
  v21 = v27;
  if ((*v27 != *a2 || v27[1] != *(a2 + 8)) && (sub_251C719D4() & 1) == 0 || (v21[2] != *(a2 + 16) || v21[3] != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_7;
  }

  v22 = v21[4];
  v23 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v23 <= 2)
    {
      if (v23)
      {
        if (v23 == 1)
        {
          if (v22 != 1)
          {
            goto LABEL_7;
          }
        }

        else if (v22 != 2)
        {
          goto LABEL_7;
        }
      }

      else if (v22)
      {
        goto LABEL_7;
      }
    }

    else if (v23 > 4)
    {
      if (v23 == 5)
      {
        if (v22 != 5)
        {
          goto LABEL_7;
        }
      }

      else if (v22 != 6)
      {
        goto LABEL_7;
      }
    }

    else if (v23 == 3)
    {
      if (v22 != 3)
      {
        goto LABEL_7;
      }
    }

    else if (v22 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_7;
  }

  if (v21[6] == *(a2 + 48) && v21[7] == *(a2 + 56) || (sub_251C719D4()) && (v21[8] == *(a2 + 64) && v21[9] == *(a2 + 72) || (sub_251C719D4()) && *(v21 + 80) == *(a2 + 80) && (sub_251A956E8(v21[11], *(a2 + 88)) & 1) != 0 && (sub_251A956E8(v21[12], *(a2 + 96)))
  {
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_251C70ED4();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_251BA7420(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v115 = &v107 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v116 = &v107 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v107 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v107 - v15;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v114 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v117 = &v107 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v119 = &v107 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v122 = &v107 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v107 - v26;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v29 = v28;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v118 = &v107 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v120 = &v107 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v123 = &v107 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v107 - v39;
  if ((sub_251A956E8(*a1, *a2) & 1) == 0)
  {
    goto LABEL_26;
  }

  v109 = v8;
  v110 = v32;
  v41 = type metadata accessor for PBHKProcedureRecord(0);
  v124 = a2;
  v111 = v41;
  v112 = v29;
  v42 = *(v41 + 52);
  v43 = a1;
  v44 = *(v29 + 48);
  v113 = v43;
  sub_251BB33C4(v43 + v42, v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v124 + v42, &v40[v44], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v45 = *(v5 + 48);
  if (v45(v40, 1, v4) == 1)
  {
    if (v45(&v40[v44], 1, v4) == 1)
    {
      sub_251BB3444(v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_12;
    }

LABEL_7:
    v46 = v40;
LABEL_8:
    sub_251BB242C(v46, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_26;
  }

  sub_251BB33C4(v40, v27, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v45(&v40[v44], 1, v4) == 1)
  {
    sub_251BB2308(v27, type metadata accessor for PBHKConcept);
    goto LABEL_7;
  }

  sub_251BB23C4(&v40[v44], v16, type metadata accessor for PBHKConcept);
  v47 = *(v4 + 20);
  v48 = *&v27[v47];
  v49 = *&v16[v47];
  if (v48 != v49)
  {

    v50 = sub_251B70648(v48, v49);

    if ((v50 & 1) == 0)
    {
      sub_251BB2308(v16, type metadata accessor for PBHKConcept);
      sub_251BB2308(v27, type metadata accessor for PBHKConcept);
      v61 = v40;
LABEL_25:
      sub_251BB3444(v61, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_26;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v51 = sub_251C70ED4();
  sub_251BB2308(v16, type metadata accessor for PBHKConcept);
  sub_251BB2308(v27, type metadata accessor for PBHKConcept);
  sub_251BB3444(v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v51 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v52 = v113;
  v53 = v124;
  if ((sub_251A956E8(v113[1], v124[1]) & 1) == 0 || (v52[2] != v53[2] || v52[3] != v53[3]) && (sub_251C719D4() & 1) == 0 || (v52[4] != v53[4] || v52[5] != v53[5]) && (sub_251C719D4() & 1) == 0 || (sub_251A956E8(v52[6], v53[6]) & 1) == 0 || *(v52 + 56) != *(v53 + 56))
  {
    goto LABEL_26;
  }

  v108 = v4;
  v54 = v111;
  v55 = *(v111 + 56);
  v56 = *(v112 + 48);
  v57 = v123;
  sub_251BB33C4(v52 + v55, v123, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v58 = v53 + v55;
  v59 = v108;
  sub_251BB33C4(v58, &v57[v56], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v45(v57, 1, v59) == 1)
  {
    v60 = v45;
    if (v45(&v57[v56], 1, v59) == 1)
    {
      sub_251BB3444(v57, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v64 = v122;
  sub_251BB33C4(v57, v122, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v60 = v45;
  if (v45(&v57[v56], 1, v59) == 1)
  {
    sub_251BB2308(v64, type metadata accessor for PBHKConcept);
LABEL_30:
    v46 = v57;
    goto LABEL_8;
  }

  v65 = v121;
  sub_251BB23C4(&v57[v56], v121, type metadata accessor for PBHKConcept);
  v66 = *(v59 + 20);
  v67 = *(v64 + v66);
  v68 = *(v65 + v66);
  if (v67 != v68)
  {

    v69 = sub_251B70648(v67, v68);

    if ((v69 & 1) == 0)
    {
      sub_251BB2308(v65, type metadata accessor for PBHKConcept);
      sub_251BB2308(v122, type metadata accessor for PBHKConcept);
      v61 = v123;
      goto LABEL_25;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v70 = v122;
  v71 = sub_251C70ED4();
  sub_251BB2308(v65, type metadata accessor for PBHKConcept);
  sub_251BB2308(v70, type metadata accessor for PBHKConcept);
  sub_251BB3444(v123, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v71 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_34:
  v72 = v124;
  if ((sub_251A93C70(v52[8], v124[8]) & 1) == 0)
  {
    goto LABEL_26;
  }

  v73 = *(v54 + 60);
  v74 = *(v112 + 48);
  v75 = v120;
  sub_251BB33C4(v52 + v73, v120, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v72 + v73, v75 + v74, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v60(v75, 1, v59) == 1)
  {
    if (v60(v75 + v74, 1, v59) == 1)
    {
      sub_251BB3444(v75, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v76 = v119;
  sub_251BB33C4(v75, v119, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v60(v75 + v74, 1, v59) == 1)
  {
    sub_251BB2308(v76, type metadata accessor for PBHKConcept);
LABEL_40:
    v46 = v75;
    goto LABEL_8;
  }

  v77 = v116;
  sub_251BB23C4(v75 + v74, v116, type metadata accessor for PBHKConcept);
  v78 = *(v59 + 20);
  v79 = *(v76 + v78);
  v80 = *(v77 + v78);
  if (v79 != v80)
  {

    v81 = sub_251B70648(v79, v80);

    if ((v81 & 1) == 0)
    {
      sub_251BB2308(v77, type metadata accessor for PBHKConcept);
      sub_251BB2308(v76, type metadata accessor for PBHKConcept);
      v61 = v120;
      goto LABEL_25;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v82 = sub_251C70ED4();
  sub_251BB2308(v77, type metadata accessor for PBHKConcept);
  sub_251BB2308(v76, type metadata accessor for PBHKConcept);
  sub_251BB3444(v120, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v82 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_45:
  v83 = v111;
  v84 = *(v111 + 64);
  v85 = *(v112 + 48);
  v86 = v118;
  sub_251BB33C4(v52 + v84, v118, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v124 + v84, v86 + v85, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v60(v86, 1, v59) == 1)
  {
    if (v60(v86 + v85, 1, v59) == 1)
    {
      v123 = v60;
      sub_251BB3444(v86, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_54;
    }

LABEL_50:
    v46 = v86;
    goto LABEL_8;
  }

  v87 = v117;
  sub_251BB33C4(v86, v117, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v123 = v60;
  if (v60(v86 + v85, 1, v59) == 1)
  {
    sub_251BB2308(v87, type metadata accessor for PBHKConcept);
    goto LABEL_50;
  }

  v88 = v115;
  sub_251BB23C4(v86 + v85, v115, type metadata accessor for PBHKConcept);
  v89 = *(v59 + 20);
  v90 = *(v87 + v89);
  v91 = *(v88 + v89);
  if (v90 != v91)
  {

    v92 = sub_251B70648(v90, v91);

    if ((v92 & 1) == 0)
    {
      sub_251BB2308(v88, type metadata accessor for PBHKConcept);
      sub_251BB2308(v117, type metadata accessor for PBHKConcept);
      v61 = v118;
      goto LABEL_25;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v93 = v117;
  v94 = sub_251C70ED4();
  sub_251BB2308(v88, type metadata accessor for PBHKConcept);
  sub_251BB2308(v93, type metadata accessor for PBHKConcept);
  sub_251BB3444(v118, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v94 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_54:
  v95 = v124;
  if ((sub_251A956E8(v52[9], v124[9]) & 1) == 0)
  {
    goto LABEL_26;
  }

  v96 = *(v83 + 68);
  v97 = *(v112 + 48);
  v86 = v110;
  sub_251BB33C4(v52 + v96, v110, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v95 + v96, v86 + v97, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v98 = v123;
  if ((v123)(v86, 1, v59) == 1)
  {
    if ((v98)(v86 + v97, 1, v59) == 1)
    {
      sub_251BB3444(v86, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_65:
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v62 = sub_251C70ED4();
      return v62 & 1;
    }

    goto LABEL_50;
  }

  sub_251BB33C4(v86, v114, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v98)(v86 + v97, 1, v59) == 1)
  {
    sub_251BB2308(v114, type metadata accessor for PBHKConcept);
    v86 = v110;
    goto LABEL_50;
  }

  v99 = v109;
  sub_251BB23C4(&v110[v97], v109, type metadata accessor for PBHKConcept);
  v100 = *(v108 + 20);
  v101 = *(v114 + v100);
  v102 = *(v99 + v100);
  if (v101 != v102)
  {

    v103 = sub_251B70648(v101, v102);

    if ((v103 & 1) == 0)
    {
      sub_251BB2308(v109, type metadata accessor for PBHKConcept);
      sub_251BB2308(v114, type metadata accessor for PBHKConcept);
      v61 = v110;
      goto LABEL_25;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v104 = v114;
  v105 = v109;
  v106 = sub_251C70ED4();
  sub_251BB2308(v105, type metadata accessor for PBHKConcept);
  sub_251BB2308(v104, type metadata accessor for PBHKConcept);
  sub_251BB3444(v110, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v106)
  {
    goto LABEL_65;
  }

LABEL_26:
  v62 = 0;
  return v62 & 1;
}

uint64_t sub_251BA8664(void *a1, uint64_t a2)
{
  v74 = a2;
  v3 = type metadata accessor for PBHKConcept(0);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v63 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v63 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = &v63 - v11;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v71 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v66 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v63 - v15;
  v16 = type metadata accessor for PBGeneralMedication(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, v7);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v63 - v21);
  sub_251BB34B4(0, &qword_27F47B580, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - v25;
  v72 = type metadata accessor for PBHKMedicationOrder(0);
  v73 = a1;
  v27 = v72[10];
  v28 = *(v24 + 56);
  sub_251BB33C4(a1 + v27, v26, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v29 = v74;
  sub_251BB33C4(v74 + v27, &v26[v28], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v30 = *(v17 + 48);
  if (v30(v26, 1, v16) == 1)
  {
    if (v30(&v26[v28], 1, v16) == 1)
    {
      sub_251BB3444(v26, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
      goto LABEL_9;
    }

LABEL_6:
    v31 = &qword_27F47B580;
    v32 = qword_2813E52A0;
    v33 = type metadata accessor for PBGeneralMedication;
    v34 = v26;
LABEL_7:
    sub_251BB242C(v34, v31, v32, v33);
LABEL_42:
    v60 = 0;
    return v60 & 1;
  }

  sub_251BB33C4(v26, v22, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if (v30(&v26[v28], 1, v16) == 1)
  {
    sub_251BB2308(v22, type metadata accessor for PBGeneralMedication);
    goto LABEL_6;
  }

  sub_251BB23C4(&v26[v28], v19, type metadata accessor for PBGeneralMedication);
  v35 = sub_251BAA86C(v22, v19);
  sub_251BB2308(v19, type metadata accessor for PBGeneralMedication);
  sub_251BB2308(v22, type metadata accessor for PBGeneralMedication);
  sub_251BB3444(v26, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((v35 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  v36 = v73;
  if ((*v73 != *v29 || v73[1] != *(v29 + 8)) && (sub_251C719D4() & 1) == 0 || *(v36 + 4) != *(v29 + 16) || (v36[3] != *(v29 + 24) || v36[4] != *(v29 + 32)) && (sub_251C719D4() & 1) == 0 || (sub_251A956E8(v36[5], *(v29 + 40)) & 1) == 0)
  {
    goto LABEL_42;
  }

  v37 = v72[11];
  v38 = *(v71 + 48);
  v39 = v70;
  sub_251BB33C4(v36 + v37, v70, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v29 + v37, v39 + v38, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v40 = v69;
  v41 = *(v68 + 48);
  if (v41(v39, 1, v69) == 1)
  {
    if (v41(v39 + v38, 1, v40) != 1)
    {
LABEL_31:
      v31 = &qword_27F4790E8;
      v32 = qword_2813E6D28;
      v33 = type metadata accessor for PBHKConcept;
      v34 = v39;
      goto LABEL_7;
    }

    sub_251BB3444(v39, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  else
  {
    v42 = v67;
    sub_251BB33C4(v39, v67, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v41(v39 + v38, 1, v40) == 1)
    {
      v43 = v42;
LABEL_30:
      sub_251BB2308(v43, type metadata accessor for PBHKConcept);
      goto LABEL_31;
    }

    v44 = v65;
    sub_251BB23C4(v39 + v38, v65, type metadata accessor for PBHKConcept);
    v45 = *(v40 + 20);
    v46 = *(v42 + v45);
    v47 = *(v44 + v45);
    if (v46 != v47)
    {

      v48 = sub_251B70648(v46, v47);

      if ((v48 & 1) == 0)
      {
        sub_251BB2308(v44, type metadata accessor for PBHKConcept);
        sub_251BB2308(v67, type metadata accessor for PBHKConcept);
        v61 = v70;
LABEL_41:
        sub_251BB3444(v61, qword_2813E6D28, type metadata accessor for PBHKConcept);
        goto LABEL_42;
      }
    }

    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v49 = v67;
    v50 = sub_251C70ED4();
    sub_251BB2308(v44, type metadata accessor for PBHKConcept);
    sub_251BB2308(v49, type metadata accessor for PBHKConcept);
    sub_251BB3444(v70, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if ((v50 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  v51 = v72[12];
  v52 = *(v71 + 48);
  v39 = v66;
  sub_251BB33C4(v36 + v51, v66, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v29 + v51, v39 + v52, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v41(v39, 1, v40) == 1)
  {
    if (v41(v39 + v52, 1, v40) == 1)
    {
      sub_251BB3444(v39, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  v53 = v64;
  sub_251BB33C4(v39, v64, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v41(v39 + v52, 1, v40) == 1)
  {
    v43 = v53;
    goto LABEL_30;
  }

  v54 = v63;
  sub_251BB23C4(v39 + v52, v63, type metadata accessor for PBHKConcept);
  v55 = *(v40 + 20);
  v56 = *(v53 + v55);
  v57 = *(v54 + v55);
  if (v56 != v57)
  {

    v58 = sub_251B70648(v56, v57);

    if ((v58 & 1) == 0)
    {
      sub_251BB2308(v54, type metadata accessor for PBHKConcept);
      sub_251BB2308(v53, type metadata accessor for PBHKConcept);
      v61 = v66;
      goto LABEL_41;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v59 = sub_251C70ED4();
  sub_251BB2308(v54, type metadata accessor for PBHKConcept);
  sub_251BB2308(v53, type metadata accessor for PBHKConcept);
  sub_251BB3444(v66, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v59 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_35:
  if ((v36[6] != *(v29 + 48) || v36[7] != *(v29 + 56)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v60 = sub_251C70ED4();
  return v60 & 1;
}

uint64_t sub_251BA91C0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v111 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v103 = &v97 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v106 = &v97 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v107 = &v97 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v97 - v14;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v104 = &v97 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v108 = &v97 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v110 = &v97 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v97 - v26;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v112 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v105 = &v97 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v109 = &v97 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v97 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v97 - v39;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_251C719D4() & 1) == 0 || (sub_251A956E8(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_31;
  }

  v98 = v7;
  v99 = v31;
  v97 = v19;
  v102 = type metadata accessor for PBHKConditionRecord(0);
  v41 = v102[10];
  v42 = a1;
  v43 = *(v112 + 48);
  v100 = v42;
  sub_251BB33C4(v42 + v41, v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v101 = a2;
  sub_251BB33C4(a2 + v41, &v40[v43], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v44 = *(v111 + 48);
  if (v44(v40, 1, v4) == 1)
  {
    if (v44(&v40[v43], 1, v4) == 1)
    {
      sub_251BB3444(v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_16;
    }

LABEL_12:
    v45 = v40;
LABEL_30:
    sub_251BB242C(v45, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_31;
  }

  sub_251BB33C4(v40, v27, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v44(&v40[v43], 1, v4) == 1)
  {
    sub_251BB2308(v27, type metadata accessor for PBHKConcept);
    goto LABEL_12;
  }

  sub_251BB23C4(&v40[v43], v15, type metadata accessor for PBHKConcept);
  v46 = *(v4 + 20);
  v47 = *&v27[v46];
  v48 = *&v15[v46];
  if (v47 != v48)
  {

    v49 = sub_251B70648(v47, v48);

    if ((v49 & 1) == 0)
    {
      sub_251BB2308(v15, type metadata accessor for PBHKConcept);
      sub_251BB2308(v27, type metadata accessor for PBHKConcept);
      v65 = v40;
      goto LABEL_54;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v50 = sub_251C70ED4();
  sub_251BB2308(v15, type metadata accessor for PBHKConcept);
  sub_251BB2308(v27, type metadata accessor for PBHKConcept);
  sub_251BB3444(v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v50 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v51 = v102[11];
  v52 = *(v112 + 48);
  v53 = v100;
  sub_251BB33C4(v100 + v51, v38, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v54 = v101;
  sub_251BB33C4(v101 + v51, &v38[v52], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v44(v38, 1, v4) != 1)
  {
    v55 = v110;
    sub_251BB33C4(v38, v110, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v44(&v38[v52], 1, v4) == 1)
    {
      goto LABEL_28;
    }

    v56 = v107;
    sub_251BB23C4(&v38[v52], v107, type metadata accessor for PBHKConcept);
    v57 = *(v4 + 20);
    v58 = *(v55 + v57);
    v59 = *(v56 + v57);
    if (v58 == v59 || (, , v60 = sub_251B70648(v58, v59), , , (v60 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v61 = v110;
      v62 = sub_251C70ED4();
      sub_251BB2308(v56, type metadata accessor for PBHKConcept);
      sub_251BB2308(v61, type metadata accessor for PBHKConcept);
      sub_251BB3444(v38, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if ((v62 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_23;
    }

    sub_251BB2308(v56, type metadata accessor for PBHKConcept);
    sub_251BB2308(v110, type metadata accessor for PBHKConcept);
    v65 = v38;
LABEL_54:
    sub_251BB3444(v65, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_31;
  }

  if (v44(&v38[v52], 1, v4) != 1)
  {
    goto LABEL_29;
  }

  sub_251BB3444(v38, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_23:
  v63 = v102[12];
  v64 = *(v112 + 48);
  v38 = v109;
  sub_251BB33C4(v53 + v63, v109, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v54 + v63, &v38[v64], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v44(v38, 1, v4) == 1)
  {
    if (v44(&v38[v64], 1, v4) == 1)
    {
      sub_251BB3444(v38, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_36;
    }

LABEL_29:
    v45 = v38;
    goto LABEL_30;
  }

  v55 = v108;
  sub_251BB33C4(v38, v108, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v44(&v38[v64], 1, v4) == 1)
  {
LABEL_28:
    sub_251BB2308(v55, type metadata accessor for PBHKConcept);
    goto LABEL_29;
  }

  v68 = v106;
  sub_251BB23C4(&v38[v64], v106, type metadata accessor for PBHKConcept);
  v69 = *(v4 + 20);
  v70 = *(v55 + v69);
  v71 = *(v68 + v69);
  if (v70 != v71)
  {

    v72 = sub_251B70648(v70, v71);

    if ((v72 & 1) == 0)
    {
      sub_251BB2308(v68, type metadata accessor for PBHKConcept);
      sub_251BB2308(v108, type metadata accessor for PBHKConcept);
      v65 = v109;
      goto LABEL_54;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v73 = v108;
  v74 = sub_251C70ED4();
  sub_251BB2308(v68, type metadata accessor for PBHKConcept);
  sub_251BB2308(v73, type metadata accessor for PBHKConcept);
  sub_251BB3444(v109, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v74 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_36:
  if ((v53[5] != v54[5] || v53[6] != v54[6]) && (sub_251C719D4() & 1) == 0 || (v53[7] != v54[7] || v53[8] != v54[8]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_31;
  }

  v75 = v102[13];
  v76 = *(v112 + 48);
  v38 = v105;
  sub_251BB33C4(v53 + v75, v105, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v54 + v75, &v38[v76], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v44(v38, 1, v4) == 1)
  {
    if (v44(&v38[v76], 1, v4) == 1)
    {
      sub_251BB3444(v38, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_50;
    }

    goto LABEL_29;
  }

  v55 = v104;
  sub_251BB33C4(v38, v104, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v44(&v38[v76], 1, v4) == 1)
  {
    goto LABEL_28;
  }

  v77 = v103;
  sub_251BB23C4(&v38[v76], v103, type metadata accessor for PBHKConcept);
  v78 = *(v4 + 20);
  v79 = *(v55 + v78);
  v80 = *(v77 + v78);
  if (v79 != v80)
  {

    v81 = sub_251B70648(v79, v80);

    if ((v81 & 1) == 0)
    {
      sub_251BB2308(v77, type metadata accessor for PBHKConcept);
      sub_251BB2308(v104, type metadata accessor for PBHKConcept);
      v65 = v105;
      goto LABEL_54;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v82 = v104;
  v83 = sub_251C70ED4();
  sub_251BB2308(v77, type metadata accessor for PBHKConcept);
  sub_251BB2308(v82, type metadata accessor for PBHKConcept);
  sub_251BB3444(v105, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v83 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_50:
  v84 = v102[14];
  v85 = *(v112 + 48);
  v86 = v99;
  sub_251BB33C4(v53 + v84, v99, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v112 = v85;
  sub_251BB33C4(v54 + v84, v86 + v85, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v44(v86, 1, v4) == 1)
  {
    if (v44((v86 + v112), 1, v4) == 1)
    {
      sub_251BB3444(v86, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_61:
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v66 = sub_251C70ED4();
      return v66 & 1;
    }

    goto LABEL_57;
  }

  v87 = v97;
  sub_251BB33C4(v86, v97, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v88 = v112;
  if (v44((v86 + v112), 1, v4) == 1)
  {
    sub_251BB2308(v87, type metadata accessor for PBHKConcept);
LABEL_57:
    v45 = v86;
    goto LABEL_30;
  }

  v89 = v98;
  sub_251BB23C4(v86 + v88, v98, type metadata accessor for PBHKConcept);
  v90 = *(v4 + 20);
  v91 = *(v87 + v90);
  v92 = *(v89 + v90);
  v93 = v87;
  if (v91 != v92)
  {

    v94 = sub_251B70648(v91, v92);

    if ((v94 & 1) == 0)
    {
      sub_251BB2308(v98, type metadata accessor for PBHKConcept);
      sub_251BB2308(v93, type metadata accessor for PBHKConcept);
      v65 = v99;
      goto LABEL_54;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v95 = v98;
  v96 = sub_251C70ED4();
  sub_251BB2308(v95, type metadata accessor for PBHKConcept);
  sub_251BB2308(v93, type metadata accessor for PBHKConcept);
  sub_251BB3444(v99, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v96)
  {
    goto LABEL_61;
  }

LABEL_31:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_251BAA378(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  if ((sub_251A956E8(*a1, *a2) & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = v7;
  v27 = type metadata accessor for PBHKAllergyReaction(0);
  v15 = *(v27 + 28);
  v16 = *(v12 + 48);
  sub_251BB33C4(a1 + v15, v14, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v15, &v14[v16], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_251BB3444(v14, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_16:
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_251C70ED4();
      return v18 & 1;
    }

    goto LABEL_10;
  }

  sub_251BB33C4(v14, v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_251BB2308(v10, type metadata accessor for PBHKConcept);
LABEL_10:
    sub_251BB242C(v14, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_11;
  }

  v20 = v26;
  sub_251BB23C4(&v14[v16], v26, type metadata accessor for PBHKConcept);
  v21 = *(v4 + 20);
  v22 = *&v10[v21];
  v23 = *(v20 + v21);
  if (v22 == v23 || (, , v24 = sub_251B70648(v22, v23), , , (v24 & 1) != 0))
  {
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v25 = sub_251C70ED4();
    sub_251BB2308(v20, type metadata accessor for PBHKConcept);
    sub_251BB2308(v10, type metadata accessor for PBHKConcept);
    sub_251BB3444(v14, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v25)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_251BB2308(v20, type metadata accessor for PBHKConcept);
    sub_251BB2308(v10, type metadata accessor for PBHKConcept);
    sub_251BB3444(v14, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

LABEL_11:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_251BAA86C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v49 - v9;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v15);
  v56 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_19;
  }

  v50 = v8;
  v21 = type metadata accessor for PBGeneralMedication(0);
  v22 = *(v21 + 36);
  v23 = *(v16 + 48);
  v51 = a1;
  v52 = v21;
  sub_251BB33C4(a1 + v22, v20, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v53 = a2;
  sub_251BB33C4(a2 + v22, &v20[v23], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v24 = *(v5 + 48);
  if (v24(v20, 1, v4) == 1)
  {
    if (v24(&v20[v23], 1, v4) == 1)
    {
      sub_251BB3444(v20, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_12;
    }

LABEL_8:
    v25 = v20;
LABEL_18:
    sub_251BB242C(v25, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_19;
  }

  sub_251BB33C4(v20, v14, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v24(&v20[v23], 1, v4) == 1)
  {
    sub_251BB2308(v14, type metadata accessor for PBHKConcept);
    goto LABEL_8;
  }

  v26 = &v20[v23];
  v27 = v55;
  sub_251BB23C4(v26, v55, type metadata accessor for PBHKConcept);
  v28 = *(v4 + 20);
  v29 = *&v14[v28];
  v30 = *(v27 + v28);
  if (v29 != v30)
  {

    v31 = sub_251B70648(v29, v30);

    if ((v31 & 1) == 0)
    {
      sub_251BB2308(v27, type metadata accessor for PBHKConcept);
      sub_251BB2308(v14, type metadata accessor for PBHKConcept);
      v48 = v20;
      goto LABEL_32;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v32 = sub_251C70ED4();
  sub_251BB2308(v27, type metadata accessor for PBHKConcept);
  sub_251BB2308(v14, type metadata accessor for PBHKConcept);
  sub_251BB3444(v20, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v33 = *(v52 + 40);
  v34 = *(v16 + 48);
  v35 = v51;
  v36 = v56;
  sub_251BB33C4(v51 + v33, v56, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v37 = v53 + v33;
  v38 = v53;
  sub_251BB33C4(v37, v36 + v34, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v24(v36, 1, v4) != 1)
  {
    v39 = v54;
    sub_251BB33C4(v36, v54, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v24((v36 + v34), 1, v4) == 1)
    {
      sub_251BB2308(v39, type metadata accessor for PBHKConcept);
      goto LABEL_17;
    }

    v42 = v50;
    sub_251BB23C4(v36 + v34, v50, type metadata accessor for PBHKConcept);
    v43 = *(v4 + 20);
    v44 = *(v39 + v43);
    v45 = *(v42 + v43);
    if (v44 == v45 || (, , v46 = sub_251B70648(v44, v45), , , (v46 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v47 = sub_251C70ED4();
      sub_251BB2308(v42, type metadata accessor for PBHKConcept);
      sub_251BB2308(v39, type metadata accessor for PBHKConcept);
      sub_251BB3444(v36, qword_2813E6D28, type metadata accessor for PBHKConcept);
      v38 = v53;
      if ((v47 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    sub_251BB2308(v42, type metadata accessor for PBHKConcept);
    sub_251BB2308(v39, type metadata accessor for PBHKConcept);
    v48 = v36;
LABEL_32:
    sub_251BB3444(v48, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_19;
  }

  if (v24((v36 + v34), 1, v4) != 1)
  {
LABEL_17:
    v25 = v36;
    goto LABEL_18;
  }

  sub_251BB3444(v36, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_24:
  if (sub_251A98080(v35[2], v38[2]) & 1) != 0 && (v35[3] == v38[3] && v35[4] == v38[4] || (sub_251C719D4()) && (sub_251A93C70(v35[5], v38[5]))
  {
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v40 = sub_251C70ED4();
    return v40 & 1;
  }

LABEL_19:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_251BAB0D0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v22 = v7;
  v23 = type metadata accessor for PBMedicationDosage(0);
  v15 = *(v23 + 24);
  v16 = *(v12 + 48);
  sub_251BB33C4(a1 + v15, v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v15, &v14[v16], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_251BB3444(v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_11:
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_251C70ED4();
      return v18 & 1;
    }

    goto LABEL_8;
  }

  sub_251BB33C4(v14, v10, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_251BB2308(v10, type metadata accessor for PBDateRange);
LABEL_8:
    sub_251BB242C(v14, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
    goto LABEL_9;
  }

  v19 = v22;
  sub_251BB23C4(&v14[v16], v22, type metadata accessor for PBDateRange);
  v20 = sub_251BB2194(v10, v19);
  sub_251BB2308(v19, type metadata accessor for PBDateRange);
  sub_251BB2308(v10, type metadata accessor for PBDateRange);
  sub_251BB3444(v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_9:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_251BAB4D4(uint64_t *a1, uint64_t a2)
{
  v84 = type metadata accessor for PBHKInspectableValue(0);
  v4 = *(v84 - 8);
  v5 = MEMORY[0x28223BE20](v84);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v81 = &v75 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v75 - v10;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v80 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v82 = &v75 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  sub_251BB34B4(0, &qword_27F47B588, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v20 = v19;
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v27 = &v75 - v26;
  v28 = *a1;
  v29 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v29 <= 1)
    {
      if (v29)
      {
        if (v28 != 1)
        {
          goto LABEL_43;
        }
      }

      else if (v28)
      {
        goto LABEL_43;
      }
    }

    else if (v29 == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_43;
      }
    }

    else if (v29 == 3)
    {
      if (v28 != 3)
      {
        goto LABEL_43;
      }
    }

    else if (v28 != 4)
    {
      goto LABEL_43;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_43;
  }

  v76 = v7;
  v77 = v25;
  v30 = type metadata accessor for PBHKInspectableValueCollection(0);
  v83 = a2;
  v31 = *(v30 + 32);
  v32 = *(v20 + 48);
  v78 = a1;
  v79 = v30;
  sub_251BB33C4(a1 + v31, v27, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  sub_251BB33C4(v83 + v31, &v27[v32], qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v33 = *(v4 + 48);
  v34 = v84;
  if (v33(v27, 1, v84) == 1)
  {
    if (v33(&v27[v32], 1, v34) == 1)
    {
      v75 = v33;
      sub_251BB3444(v27, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
      goto LABEL_20;
    }

LABEL_13:
    v35 = v27;
LABEL_42:
    sub_251BB242C(v35, &qword_27F47B588, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    goto LABEL_43;
  }

  sub_251BB33C4(v27, v18, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if (v33(&v27[v32], 1, v34) == 1)
  {
    sub_251BB2308(v18, type metadata accessor for PBHKInspectableValue);
    goto LABEL_13;
  }

  v75 = v33;
  sub_251BB23C4(&v27[v32], v11, type metadata accessor for PBHKInspectableValue);
  v36 = *(v34 + 20);
  v37 = *&v18[v36];
  v38 = *&v11[v36];
  if (v37 != v38)
  {

    v39 = sub_251B83760(v37, v38);

    if (!v39)
    {
      sub_251BB2308(v11, type metadata accessor for PBHKInspectableValue);
      sub_251BB2308(v18, type metadata accessor for PBHKInspectableValue);
      v63 = v27;
      goto LABEL_55;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v40 = sub_251C70ED4();
  sub_251BB2308(v11, type metadata accessor for PBHKInspectableValue);
  sub_251BB2308(v18, type metadata accessor for PBHKInspectableValue);
  sub_251BB3444(v27, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((v40 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_20:
  v42 = v78;
  v41 = v79;
  v43 = *(v79 + 36);
  v44 = *(v20 + 48);
  sub_251BB33C4(v78 + v43, v24, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  sub_251BB33C4(v83 + v43, &v24[v44], qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v45 = v84;
  v46 = v75;
  if (v75(v24, 1, v84) == 1)
  {
    if (v46(&v24[v44], 1, v45) == 1)
    {
      v47 = v46;
      sub_251BB3444(v24, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  v48 = v82;
  sub_251BB33C4(v24, v82, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v47 = v46;
  if (v46(&v24[v44], 1, v45) == 1)
  {
    sub_251BB2308(v48, type metadata accessor for PBHKInspectableValue);
LABEL_31:
    v35 = v24;
    goto LABEL_42;
  }

  v49 = &v24[v44];
  v50 = v81;
  sub_251BB23C4(v49, v81, type metadata accessor for PBHKInspectableValue);
  v51 = *(v45 + 20);
  v52 = *(v48 + v51);
  v53 = *(v50 + v51);
  if (v52 != v53)
  {

    v54 = sub_251B83760(v52, v53);

    if (!v54)
    {
      sub_251BB2308(v50, type metadata accessor for PBHKInspectableValue);
      sub_251BB2308(v48, type metadata accessor for PBHKInspectableValue);
      v63 = v24;
      goto LABEL_55;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v55 = sub_251C70ED4();
  sub_251BB2308(v50, type metadata accessor for PBHKInspectableValue);
  sub_251BB2308(v48, type metadata accessor for PBHKInspectableValue);
  sub_251BB3444(v24, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v41 = v79;
  if ((v55 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_35:
  v56 = *(v41 + 40);
  v57 = *(v20 + 48);
  v58 = v77;
  sub_251BB33C4(v42 + v56, v77, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v59 = v83 + v56;
  v60 = v83;
  v61 = v58;
  sub_251BB33C4(v59, v58 + v57, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v62 = v84;
  if (v47(v58, 1, v84) != 1)
  {
    v64 = v58;
    v65 = v80;
    sub_251BB33C4(v64, v80, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    if (v47(v61 + v57, 1, v62) == 1)
    {
      sub_251BB2308(v65, type metadata accessor for PBHKInspectableValue);
      goto LABEL_41;
    }

    v68 = v76;
    sub_251BB23C4(v61 + v57, v76, type metadata accessor for PBHKInspectableValue);
    v69 = *(v62 + 20);
    v70 = *(v65 + v69);
    v71 = *(v68 + v69);
    if (v70 == v71 || (, , v72 = sub_251B83760(v70, v71), , , v72))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v73 = v76;
      v74 = sub_251C70ED4();
      sub_251BB2308(v73, type metadata accessor for PBHKInspectableValue);
      sub_251BB2308(v65, type metadata accessor for PBHKInspectableValue);
      sub_251BB3444(v77, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
      if ((v74 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_48;
    }

    sub_251BB2308(v76, type metadata accessor for PBHKInspectableValue);
    sub_251BB2308(v65, type metadata accessor for PBHKInspectableValue);
    v63 = v77;
LABEL_55:
    sub_251BB3444(v63, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    goto LABEL_43;
  }

  if (v47(v58 + v57, 1, v62) != 1)
  {
LABEL_41:
    v35 = v61;
    goto LABEL_42;
  }

  sub_251BB3444(v58, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
LABEL_48:
  if (sub_251A9915C(v42[2], v60[2]) & 1) != 0 && (v42[3] == v60[3] && v42[4] == v60[4] || (sub_251C719D4()))
  {
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v66 = sub_251C70ED4();
    return v66 & 1;
  }

LABEL_43:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_251BAC0B8(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKInspectableValueCollection(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  sub_251BB34B4(0, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v22 = v7;
  v23 = type metadata accessor for PBHKReferenceRange(0);
  v15 = *(v23 + 24);
  v16 = *(v12 + 48);
  sub_251BB33C4(a1 + v15, v14, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB33C4(a2 + v15, &v14[v16], qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_251BB3444(v14, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
LABEL_11:
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_251C70ED4();
      return v18 & 1;
    }

    goto LABEL_8;
  }

  sub_251BB33C4(v14, v10, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_251BB2308(v10, type metadata accessor for PBHKInspectableValueCollection);
LABEL_8:
    sub_251BB242C(v14, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    goto LABEL_9;
  }

  v19 = v22;
  sub_251BB23C4(&v14[v16], v22, type metadata accessor for PBHKInspectableValueCollection);
  v20 = sub_251BAB4D4(v10, v19);
  sub_251BB2308(v19, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB2308(v10, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB3444(v14, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_9:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_251BAC4BC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_251A99698(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PBHistogramSeries.Value(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BAC5AC(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (sub_251C719D4() & 1) == 0 || a1[8] != *(a2 + 32) || (*(a1 + 5) != *(a2 + 40) || *(a1 + 6) != *(a2 + 48)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 7) != *(a2 + 56) || *(a1 + 8) != *(a2 + 64)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 9) != *(a2 + 72) || *(a1 + 10) != *(a2 + 80)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PBHKCodedQuantity(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BAC720(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 16))
  {
    return 0;
  }

  v5 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v5 && (sub_251C719D4() & 1) == 0 || (a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((a1[7] != *(a2 + 56) || a1[8] != *(a2 + 64)) && (sub_251C719D4() & 1) == 0 || (a1[9] != *(a2 + 72) || a1[10] != *(a2 + 80)) && (sub_251C719D4() & 1) == 0 || (sub_251A93C70(a1[11], *(a2 + 88)) & 1) == 0 || (sub_251A9990C(a1[12], *(a2 + 96)) & 1) == 0 || *(a1 + 26) != *(a2 + 104) || !sub_251B5CAD0(a1[14], *(a1 + 120), *(a2 + 112), *(a2 + 120)))
  {
    return 0;
  }

  type metadata accessor for PBECGMeasurement(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BAC8C4(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v66 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v69 = &v65 - v9;
  MEMORY[0x28223BE20](v8);
  v71 = &v65 - v10;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v70 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - v16;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v19 = v18;
  v20 = MEMORY[0x28223BE20](v18);
  v68 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v74 = &v65 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  v26 = type metadata accessor for PBHKAllergyRecord(0);
  v72 = v19;
  v73 = v26;
  v27 = *(v26 + 40);
  v28 = *(v19 + 48);
  v75 = a1;
  sub_251BB33C4(a1 + v27, v25, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v76 = a2;
  sub_251BB33C4(a2 + v27, &v25[v28], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v29 = *(v5 + 48);
  if (v29(v25, 1, v4) == 1)
  {
    if (v29(&v25[v28], 1, v4) == 1)
    {
      sub_251BB3444(v25, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_10;
    }

LABEL_6:
    v30 = v25;
LABEL_20:
    sub_251BB242C(v30, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_21;
  }

  sub_251BB33C4(v25, v17, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v29(&v25[v28], 1, v4) == 1)
  {
    sub_251BB2308(v17, type metadata accessor for PBHKConcept);
    goto LABEL_6;
  }

  v31 = v71;
  sub_251BB23C4(&v25[v28], v71, type metadata accessor for PBHKConcept);
  v32 = *(v4 + 20);
  v33 = *&v17[v32];
  v34 = *(v31 + v32);
  if (v33 != v34)
  {

    v35 = sub_251B70648(v33, v34);

    if ((v35 & 1) == 0)
    {
      sub_251BB2308(v31, type metadata accessor for PBHKConcept);
      sub_251BB2308(v17, type metadata accessor for PBHKConcept);
      v46 = v25;
      goto LABEL_41;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v36 = sub_251C70ED4();
  sub_251BB2308(v31, type metadata accessor for PBHKConcept);
  sub_251BB2308(v17, type metadata accessor for PBHKConcept);
  sub_251BB3444(v25, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v38 = v75;
  v37 = v76;
  if ((*v75 != *v76 || v75[1] != v76[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_21;
  }

  v39 = *(v73 + 44);
  v40 = *(v72 + 48);
  v41 = v74;
  sub_251BB33C4(v38 + v39, v74, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v37 + v39, v41 + v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v29(v41, 1, v4) != 1)
  {
    v42 = v70;
    sub_251BB33C4(v41, v70, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v29((v41 + v40), 1, v4) == 1)
    {
      v43 = v42;
LABEL_18:
      sub_251BB2308(v43, type metadata accessor for PBHKConcept);
      goto LABEL_19;
    }

    v47 = v69;
    sub_251BB23C4(v41 + v40, v69, type metadata accessor for PBHKConcept);
    v48 = *(v4 + 20);
    v49 = *(v42 + v48);
    v50 = *(v47 + v48);
    if (v49 == v50 || (, , v51 = sub_251B70648(v49, v50), , , (v51 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = sub_251C70ED4();
      sub_251BB2308(v47, type metadata accessor for PBHKConcept);
      sub_251BB2308(v42, type metadata accessor for PBHKConcept);
      sub_251BB3444(v74, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if ((v52 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    sub_251BB2308(v47, type metadata accessor for PBHKConcept);
    sub_251BB2308(v42, type metadata accessor for PBHKConcept);
    v46 = v74;
LABEL_41:
    sub_251BB3444(v46, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_21;
  }

  if (v29((v41 + v40), 1, v4) != 1)
  {
LABEL_19:
    v30 = v41;
    goto LABEL_20;
  }

  sub_251BB3444(v41, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_27:
  if ((v38[2] != v37[2] || v38[3] != v37[3]) && (sub_251C719D4() & 1) == 0 || (v38[4] != v37[4] || v38[5] != v37[5]) && (sub_251C719D4() & 1) == 0 || (sub_251A99968(v38[6], v37[6]) & 1) == 0 || (v38[7] != v37[7] || v38[8] != v37[8]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_21;
  }

  v53 = v4;
  v54 = *(v73 + 48);
  v55 = *(v72 + 48);
  v56 = v68;
  sub_251BB33C4(v38 + v54, v68, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v41 = v56;
  sub_251BB33C4(v37 + v54, v56 + v55, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v29(v56, 1, v53) == 1)
  {
    if (v29((v56 + v55), 1, v53) == 1)
    {
      sub_251BB3444(v56, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_47:
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v44 = sub_251C70ED4();
      return v44 & 1;
    }

    goto LABEL_19;
  }

  v57 = v56;
  v58 = v67;
  sub_251BB33C4(v57, v67, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v29((v41 + v55), 1, v53) == 1)
  {
    v43 = v58;
    goto LABEL_18;
  }

  v59 = v66;
  sub_251BB23C4(v41 + v55, v66, type metadata accessor for PBHKConcept);
  v60 = *(v53 + 20);
  v61 = *(v58 + v60);
  v62 = *(v59 + v60);
  if (v61 != v62)
  {

    v63 = sub_251B70648(v61, v62);

    if ((v63 & 1) == 0)
    {
      sub_251BB2308(v59, type metadata accessor for PBHKConcept);
      sub_251BB2308(v58, type metadata accessor for PBHKConcept);
      v46 = v68;
      goto LABEL_41;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v64 = sub_251C70ED4();
  sub_251BB2308(v59, type metadata accessor for PBHKConcept);
  sub_251BB2308(v58, type metadata accessor for PBHKConcept);
  sub_251BB3444(v68, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v64)
  {
    goto LABEL_47;
  }

LABEL_21:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_251BAD450(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v3 = type metadata accessor for PBHKMedicationRecord(0);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PBHKProcedureRecord(0);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for PBHKAccountOwner(0);
  MEMORY[0x28223BE20](v87);
  v98 = (&v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PBHKDiagnosticTestReport(0);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = (&v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for PBHKDiagnosticTestResult(0);
  MEMORY[0x28223BE20](v93);
  v96 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBHKMedicationOrder(0);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = (&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PBHKVaccinationRecord(0);
  MEMORY[0x28223BE20](v15 - 8);
  v90 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PBHKConditionRecord(0);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = (&v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for PBHKAllergyRecord(0);
  MEMORY[0x28223BE20](v19 - 8);
  v88 = (&v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v22 = MEMORY[0x28223BE20](v21);
  v101 = (&v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v100 = (&v87 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v103 = (&v87 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v99 = (&v87 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v102 = (&v87 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v87 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = (&v87 - v36);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v87 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = (&v87 - v42);
  MEMORY[0x28223BE20](v41);
  v45 = (&v87 - v44);
  sub_251BB2488(0, &qword_27F47B570, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v49 = &v87 - v48;
  v50 = *(v47 + 56);
  sub_251BB24E8(a1, &v87 - v48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  sub_251BB24E8(v104, &v49[v50], type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_251BB24E8(v49, v43, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v76 = &v49[v50];
          v77 = v89;
          sub_251BB23C4(v76, v89, type metadata accessor for PBHKConditionRecord);
          v54 = sub_251BA91C0(v43, v77);
          v55 = type metadata accessor for PBHKConditionRecord;
          sub_251BB2308(v77, type metadata accessor for PBHKConditionRecord);
          v56 = v43;
          goto LABEL_42;
        }

        v61 = type metadata accessor for PBHKConditionRecord;
        v62 = v43;
      }

      else
      {
        sub_251BB24E8(v49, v45, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        if (!swift_getEnumCaseMultiPayload())
        {
          v83 = &v49[v50];
          v84 = v88;
          sub_251BB23C4(v83, v88, type metadata accessor for PBHKAllergyRecord);
          v54 = sub_251BAC8C4(v45, v84);
          v55 = type metadata accessor for PBHKAllergyRecord;
          sub_251BB2308(v84, type metadata accessor for PBHKAllergyRecord);
          v56 = v45;
          goto LABEL_42;
        }

        v61 = type metadata accessor for PBHKAllergyRecord;
        v62 = v45;
      }

      goto LABEL_56;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_251BB24E8(v49, v40, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v70 = v90;
        sub_251BB23C4(&v49[v50], v90, type metadata accessor for PBHKVaccinationRecord);
        v54 = sub_251BA5FDC(v40, v70);
        sub_251BB2308(v70, type metadata accessor for PBHKVaccinationRecord);
        v56 = v40;
        v71 = type metadata accessor for PBHKVaccinationRecord;
LABEL_43:
        sub_251BB2308(v56, v71);
        sub_251BB2308(v49, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        return v54 & 1;
      }

      v61 = type metadata accessor for PBHKVaccinationRecord;
      v62 = v40;
      goto LABEL_56;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_251BB24E8(v49, v37, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v52 = &v49[v50];
        v53 = v91;
        sub_251BB23C4(v52, v91, type metadata accessor for PBHKMedicationDispenseRecord);
        v54 = sub_251BA471C(v37, v53);
        v55 = type metadata accessor for PBHKMedicationDispenseRecord;
        sub_251BB2308(v53, type metadata accessor for PBHKMedicationDispenseRecord);
        v56 = v37;
LABEL_42:
        v71 = v55;
        goto LABEL_43;
      }

      v80 = type metadata accessor for PBHKMedicationDispenseRecord;
      goto LABEL_52;
    }

    sub_251BB24E8(v49, v34, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v73 = &v49[v50];
      v74 = v92;
      sub_251BB23C4(v73, v92, type metadata accessor for PBHKMedicationOrder);
      v54 = sub_251BA8664(v34, v74);
      v55 = type metadata accessor for PBHKMedicationOrder;
      sub_251BB2308(v74, type metadata accessor for PBHKMedicationOrder);
      v56 = v34;
      goto LABEL_42;
    }

    v79 = type metadata accessor for PBHKMedicationOrder;
LABEL_49:
    v61 = v79;
    v62 = v34;
LABEL_56:
    sub_251BB2308(v62, v61);
    sub_251BB2368(v49, &qword_27F47B570, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
LABEL_57:
    v54 = 0;
    return v54 & 1;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v57 = v100;
        sub_251BB24E8(v49, v100, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v58 = &v49[v50];
          v59 = v95;
          sub_251BB23C4(v58, v95, type metadata accessor for PBHKProcedureRecord);
          v54 = sub_251BA7420(v57, v59);
          v60 = type metadata accessor for PBHKProcedureRecord;
LABEL_41:
          v55 = v60;
          sub_251BB2308(v59, v60);
          v56 = v57;
          goto LABEL_42;
        }

        v81 = type metadata accessor for PBHKProcedureRecord;
      }

      else
      {
        v57 = v101;
        sub_251BB24E8(v49, v101, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v75 = &v49[v50];
          v59 = v97;
          sub_251BB23C4(v75, v97, type metadata accessor for PBHKMedicationRecord);
          v54 = sub_251BA6F00(v57, v59);
          v60 = type metadata accessor for PBHKMedicationRecord;
          goto LABEL_41;
        }

        v81 = type metadata accessor for PBHKMedicationRecord;
      }

LABEL_55:
      v61 = v81;
      v62 = v57;
      goto LABEL_56;
    }

    v34 = v103;
    sub_251BB24E8(v49, v103, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v79 = type metadata accessor for PBHKAccountOwner;
      goto LABEL_49;
    }

    v72 = v98;
    sub_251BB23C4(&v49[v50], v98, type metadata accessor for PBHKAccountOwner);
    if (*v34 == *v72 && v34[1] == v72[1] || (sub_251C719D4()) && (v34[2] == v72[2] && v34[3] == v72[3] || (sub_251C719D4()))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_251C70ED4())
      {
        v68 = type metadata accessor for PBHKAccountOwner;
        sub_251BB2308(v72, type metadata accessor for PBHKAccountOwner);
        v69 = v34;
        goto LABEL_32;
      }
    }

    v85 = type metadata accessor for PBHKAccountOwner;
    sub_251BB2308(v72, type metadata accessor for PBHKAccountOwner);
    v86 = v34;
LABEL_62:
    sub_251BB2308(v86, v85);
    sub_251BB2308(v49, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v57 = v99;
    sub_251BB24E8(v49, v99, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v78 = &v49[v50];
      v59 = v94;
      sub_251BB23C4(v78, v94, type metadata accessor for PBHKDiagnosticTestReport);
      v54 = sub_251BA5240(v57, v59);
      v60 = type metadata accessor for PBHKDiagnosticTestReport;
      goto LABEL_41;
    }

    v81 = type metadata accessor for PBHKDiagnosticTestReport;
    goto LABEL_55;
  }

  v37 = v102;
  sub_251BB24E8(v49, v102, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    v80 = type metadata accessor for PBHKDiagnosticTestResult;
LABEL_52:
    v61 = v80;
    v62 = v37;
    goto LABEL_56;
  }

  v63 = v96;
  sub_251BB23C4(&v49[v50], v96, type metadata accessor for PBHKDiagnosticTestResult);
  v64 = *(v93 + 20);
  v65 = *(v37 + v64);
  v66 = *(v63 + v64);
  if (v65 != v66 && (, , v67 = sub_251B7C8C8(v65, v66), , , (v67 & 1) == 0) || (sub_251C703B4(), sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (sub_251C70ED4() & 1) == 0))
  {
    v85 = type metadata accessor for PBHKDiagnosticTestResult;
    sub_251BB2308(v63, type metadata accessor for PBHKDiagnosticTestResult);
    v86 = v37;
    goto LABEL_62;
  }

  v68 = type metadata accessor for PBHKDiagnosticTestResult;
  sub_251BB2308(v63, type metadata accessor for PBHKDiagnosticTestResult);
  v69 = v37;
LABEL_32:
  sub_251BB2308(v69, v68);
  sub_251BB2308(v49, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v54 = 1;
  return v54 & 1;
}

uint64_t sub_251BAE270(void *a1, void *a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v22 - v8);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for PBCategorySeries(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_251BB33C4(a1 + v14, v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v14, &v13[v15], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_251BB33C4(v13, v9, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_251BB23C4(&v13[v15], v24, type metadata accessor for PBDateRange);
      v18 = sub_251BB2194(v9, v17);
      sub_251BB2308(v17, type metadata accessor for PBDateRange);
      sub_251BB2308(v9, type metadata accessor for PBDateRange);
      sub_251BB3444(v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    sub_251BB2308(v9, type metadata accessor for PBDateRange);
LABEL_6:
    sub_251BB242C(v13, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251BB3444(v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_8:
  v19 = v25;
  if ((*v25 != *a2 || v25[1] != a2[1]) && (sub_251C719D4() & 1) == 0 || (sub_251A9A1F8(v19[2], a2[2]) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_251C70ED4();
  return v20 & 1;
}

uint64_t sub_251BAE674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v46 - v9;
  sub_251BB34B4(0, &qword_27F4790E0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for PBDateRange(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v7);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v46 - v18);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v21 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  if (*a1 != *a2 || (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v48 = v12;
  v46 = v6;
  v24 = type metadata accessor for PBCategorySeries.Event(0);
  v53 = a2;
  v47 = v24;
  v25 = *(v24 + 36);
  v26 = *(v21 + 48);
  sub_251BB33C4(a1 + v25, v23, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v27 = v53 + v25;
  v28 = v53;
  sub_251BB33C4(v27, &v23[v26], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v29 = *(v14 + 48);
  if (v29(v23, 1, v13) != 1)
  {
    sub_251BB33C4(v23, v19, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v29(&v23[v26], 1, v13) != 1)
    {
      sub_251BB23C4(&v23[v26], v16, type metadata accessor for PBDateRange);
      v34 = sub_251BB2194(v19, v16);
      sub_251BB2308(v16, type metadata accessor for PBDateRange);
      sub_251BB2308(v19, type metadata accessor for PBDateRange);
      sub_251BB3444(v23, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if ((v34 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    sub_251BB2308(v19, type metadata accessor for PBDateRange);
LABEL_10:
    v30 = &qword_27F4790D0;
    v31 = qword_2813E6EE8;
    v32 = type metadata accessor for PBDateRange;
    v33 = v23;
LABEL_21:
    sub_251BB242C(v33, v30, v31, v32);
    goto LABEL_22;
  }

  if (v29(&v23[v26], 1, v13) != 1)
  {
    goto LABEL_10;
  }

  sub_251BB3444(v23, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_12:
  if ((*(a1 + 24) != *(v28 + 24) || *(a1 + 32) != *(v28 + 32)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v35 = v48;
  v36 = *(v47 + 28);
  v37 = *(v50 + 48);
  sub_251BB33C4(a1 + v36, v48, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB33C4(v53 + v36, v35 + v37, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v38 = v52;
  v39 = *(v51 + 48);
  if (v39(v35, 1, v52) == 1)
  {
    if (v39(v35 + v37, 1, v38) == 1)
    {
      sub_251BB3444(v35, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
LABEL_25:
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = sub_251C70ED4();
      return v41 & 1;
    }

    goto LABEL_20;
  }

  v40 = v49;
  sub_251BB33C4(v35, v49, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  if (v39(v35 + v37, 1, v38) == 1)
  {
    sub_251BB2308(v40, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
LABEL_20:
    v30 = &qword_27F4790E0;
    v31 = qword_2813E5FC8;
    v32 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData;
    v33 = v35;
    goto LABEL_21;
  }

  v43 = v35 + v37;
  v44 = v46;
  sub_251BB23C4(v43, v46, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v45 = sub_251BAEDDC(v40, v44);
  sub_251BB2308(v44, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB2308(v40, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB3444(v35, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  if (v45)
  {
    goto LABEL_25;
  }

LABEL_22:
  v41 = 0;
  return v41 & 1;
}

BOOL sub_251BAEDDC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v38 = type metadata accessor for PBCategorySeries.Range(0);
  MEMORY[0x28223BE20](v38);
  v39 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v38 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v38 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v38 - v18);
  MEMORY[0x28223BE20](v17);
  v40 = (&v38 - v20);
  sub_251BB2488(0, &qword_27F47B560, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v38 - v23;
  v25 = (&v38 + *(v22 + 56) - v23);
  sub_251BB24E8(a1, &v38 - v23, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB24E8(v41, v25, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v33 = v40;
      sub_251BB24E8(v24, v40, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_251BB2308(v33, type metadata accessor for PBCategorySeries.Range);
        goto LABEL_39;
      }

      v35 = v39;
      sub_251BB23C4(v25, v39, type metadata accessor for PBCategorySeries.Range);
      if (*v33 == *v35 && v33[1] == v35[1])
      {
        sub_251C703B4();
        sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v36 = sub_251C70ED4();
        sub_251BB2308(v35, type metadata accessor for PBCategorySeries.Range);
        if (v36)
        {
          sub_251BB2308(v33, type metadata accessor for PBCategorySeries.Range);
          goto LABEL_48;
        }
      }

      else
      {
        sub_251BB2308(v35, type metadata accessor for PBCategorySeries.Range);
      }

      sub_251BB2308(v33, type metadata accessor for PBCategorySeries.Range);
      goto LABEL_50;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_251BB24E8(v24, v19, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v28 = *v19;
      v27 = v19[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v28 == *v25 && v27 == v25[1])
        {
        }

        else
        {
          v30 = sub_251C719D4();

          if ((v30 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_48;
      }

LABEL_39:
      sub_251BB2368(v24, &qword_27F47B560, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      return 0;
    }

    sub_251BB24E8(v24, v16, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v31 = *v16;
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_39;
    }

    v32 = *v25;
    if (*(v25 + 8) == 1)
    {
      if (v32 <= 1)
      {
        goto LABEL_27;
      }

LABEL_33:
      if (v32 == 2)
      {
        goto LABEL_34;
      }

      goto LABEL_47;
    }

    goto LABEL_36;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_251BB24E8(v24, v10, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v31 = *v10;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_39;
      }

      v32 = *v25;
      if (*(v25 + 8) == 1)
      {
        if (v32 <= 1)
        {
LABEL_27:
          if (!v32)
          {
            if (!v31)
            {
              goto LABEL_48;
            }

LABEL_50:
            sub_251BB2308(v24, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
            return 0;
          }

          if (v31 != 1)
          {
            goto LABEL_50;
          }

LABEL_48:
          sub_251BB2308(v24, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
          return 1;
        }

        if (v32 == 2)
        {
LABEL_34:
          if (v31 != 2)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        if (v32 != 3)
        {
          if (v31 != 4)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

LABEL_47:
        if (v31 != 3)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }
    }

    else
    {
      sub_251BB24E8(v24, v7, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v31 = *v7;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_39;
      }

      v32 = *v25;
      if (*(v25 + 8) == 1)
      {
        if (v32 <= 1)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

LABEL_36:
    if (v31 != v32)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  sub_251BB24E8(v24, v13, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_39;
  }

  v34 = sub_251A74D48(*v13, v13[8], *v25);
  sub_251BB2308(v24, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  return v34;
}

uint64_t sub_251BAF44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCycleTracking.Range(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v46 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = (&v42 - v8);
  sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v47 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (&v42 - v13);
  sub_251BB34B4(0, &qword_27F47B5A0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  if ((sub_251A9AD0C(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_23;
  }

  v43 = v19;
  v22 = type metadata accessor for PBCycleTracking(0);
  v45 = a2;
  v42 = v22;
  v23 = *(v22 + 36);
  v24 = *(v16 + 48);
  v44 = a1;
  sub_251BB33C4(a1 + v23, v21, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  v25 = v45 + v23;
  v26 = v45;
  sub_251BB33C4(v25, &v21[v24], qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  v27 = *(v5 + 48);
  if (v27(v21, 1, v4) == 1)
  {
    if (v27(&v21[v24], 1, v4) == 1)
    {
      goto LABEL_5;
    }

LABEL_14:
    v34 = v21;
LABEL_15:
    sub_251BB242C(v34, &qword_27F47B5A0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_23;
  }

  sub_251BB33C4(v21, v14, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if (v27(&v21[v24], 1, v4) == 1)
  {
    sub_251BB2308(v14, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_14;
  }

  sub_251BB23C4(&v21[v24], v9, type metadata accessor for PBCycleTracking.Range);
  if (*v14 != *v9 || v14[1] != v9[1])
  {
    sub_251BB2308(v9, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_21;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v35 = sub_251C70ED4();
  sub_251BB2308(v9, type metadata accessor for PBCycleTracking.Range);
  if ((v35 & 1) == 0)
  {
LABEL_21:
    sub_251BB2308(v14, type metadata accessor for PBCycleTracking.Range);
    v36 = v21;
LABEL_22:
    sub_251BB3444(v36, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_23;
  }

  sub_251BB2308(v14, type metadata accessor for PBCycleTracking.Range);
  v26 = v45;
LABEL_5:
  sub_251BB3444(v21, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if (*(v44 + 12) != *(v26 + 12))
  {
LABEL_23:
    v33 = 0;
    return v33 & 1;
  }

  v28 = *(v42 + 40);
  v29 = *(v16 + 48);
  v30 = v43;
  sub_251BB33C4(v44 + v28, v43, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  v31 = v45 + v28;
  v32 = v45;
  sub_251BB33C4(v31, v30 + v29, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if (v27(v30, 1, v4) == 1)
  {
    if (v27((v30 + v29), 1, v4) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

  v38 = v47;
  sub_251BB33C4(v30, v47, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if (v27((v30 + v29), 1, v4) == 1)
  {
    sub_251BB2308(v38, type metadata accessor for PBCycleTracking.Range);
LABEL_27:
    v34 = v30;
    goto LABEL_15;
  }

  v39 = v30 + v29;
  v40 = v46;
  sub_251BB23C4(v39, v46, type metadata accessor for PBCycleTracking.Range);
  if (*v38 != *v40 || v38[1] != v40[1])
  {
    sub_251BB2308(v40, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_33;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v41 = sub_251C70ED4();
  sub_251BB2308(v40, type metadata accessor for PBCycleTracking.Range);
  if ((v41 & 1) == 0)
  {
LABEL_33:
    sub_251BB2308(v38, type metadata accessor for PBCycleTracking.Range);
    v36 = v43;
    goto LABEL_22;
  }

  sub_251BB2308(v38, type metadata accessor for PBCycleTracking.Range);
  v30 = v43;
LABEL_8:
  sub_251BB3444(v30, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if ((*(v44 + 16) != *(v32 + 16) || *(v44 + 24) != *(v32 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v33 = sub_251C70ED4();
  return v33 & 1;
}

uint64_t sub_251BAFC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCycleTracking.SexualActivity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  sub_251BB34B4(0, &qword_27F47B5A8, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_56;
  }

  v15 = *(a1 + 16);
  v16 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        if (v15 != 3)
        {
          goto LABEL_56;
        }
      }

      else if (v16 == 4)
      {
        if (v15 != 4)
        {
          goto LABEL_56;
        }
      }

      else if (v15 != 5)
      {
        goto LABEL_56;
      }
    }

    else if (v16)
    {
      if (v16 == 1)
      {
        if (v15 != 1)
        {
          goto LABEL_56;
        }
      }

      else if (v15 != 2)
      {
        goto LABEL_56;
      }
    }

    else if (v15)
    {
      goto LABEL_56;
    }
  }

  else if (v15 != v16)
  {
    goto LABEL_56;
  }

  v28 = v7;
  v27 = type metadata accessor for PBCycleTracking.Event(0);
  v17 = *(v27 + 48);
  v18 = *(v12 + 48);
  sub_251BB33C4(a1 + v17, v14, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  sub_251BB33C4(a2 + v17, &v14[v18], qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  v19 = *(v5 + 48);
  if (v19(v14, 1, v4) == 1)
  {
    if (v19(&v14[v18], 1, v4) == 1)
    {
      goto LABEL_12;
    }

LABEL_24:
    sub_251BB242C(v14, &qword_27F47B5A8, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
    goto LABEL_56;
  }

  sub_251BB33C4(v14, v10, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  if (v19(&v14[v18], 1, v4) == 1)
  {
    sub_251BB2308(v10, type metadata accessor for PBCycleTracking.SexualActivity);
    goto LABEL_24;
  }

  v22 = &v14[v18];
  v23 = v28;
  sub_251BB23C4(v22, v28, type metadata accessor for PBCycleTracking.SexualActivity);
  if (*v10 != *v23 || v10[1] != v23[1])
  {
    sub_251BB2308(v23, type metadata accessor for PBCycleTracking.SexualActivity);
LABEL_28:
    sub_251BB2308(v10, type metadata accessor for PBCycleTracking.SexualActivity);
    sub_251BB3444(v14, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
    goto LABEL_56;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v25 = sub_251C70ED4();
  sub_251BB2308(v23, type metadata accessor for PBCycleTracking.SexualActivity);
  if ((v25 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_251BB2308(v10, type metadata accessor for PBCycleTracking.SexualActivity);
LABEL_12:
  sub_251BB3444(v14, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  v20 = *(a1 + 32);
  v21 = *(a2 + 32);
  if (*(a2 + 40) != 1)
  {
    if (v20 == v21)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

  if (v21 > 2)
  {
    if (v21 == 3)
    {
      if (v20 != 3)
      {
        goto LABEL_56;
      }

      goto LABEL_38;
    }

    if (v21 == 4)
    {
      if (v20 != 4)
      {
        goto LABEL_56;
      }

      goto LABEL_38;
    }

    if (v20 == 5)
    {
      goto LABEL_38;
    }

LABEL_56:
    v24 = 0;
    return v24 & 1;
  }

  if (!v21)
  {
    if (!v20)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

  if (v21 == 1)
  {
    if (v20 != 1)
    {
      goto LABEL_56;
    }
  }

  else if (v20 != 2)
  {
    goto LABEL_56;
  }

LABEL_38:
  if (*(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || (sub_251A93C70(*(a1 + 56), *(a2 + 56)) & 1) == 0 || (sub_251A9B180(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    goto LABEL_56;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v24 = sub_251C70ED4();
  return v24 & 1;
}

uint64_t sub_251BB0248(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_251C719D4() & 1) == 0 || (sub_251A9B314(a1[4], *(a2 + 32)) & 1) == 0 || *(a1 + 10) != *(a2 + 40) || *(a1 + 11) != *(a2 + 44))
  {
    return 0;
  }

  type metadata accessor for PBCycleTracking.Cycle(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB0358(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  type metadata accessor for PBSleepSummary.Schedule(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB0480(uint64_t *a1, uint64_t *a2)
{
  v61 = a2;
  v3 = type metadata accessor for PBHKInspectableValue(0);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v52 - v7;
  sub_251BB34B4(0, &qword_27F47B588, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v52 - v9;
  v10 = type metadata accessor for PBHKConcept(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - v15;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v56 = type metadata accessor for PBHKCodedValue(0);
  v21 = *(v56 + 24);
  v22 = *(v18 + 56);
  v60 = a1;
  sub_251BB33C4(a1 + v21, v20, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v23 = v61;
  sub_251BB33C4(v61 + v21, &v20[v22], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v24 = *(v11 + 48);
  if (v24(v20, 1, v10) == 1)
  {
    if (v24(&v20[v22], 1, v10) == 1)
    {
      sub_251BB3444(v20, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_10;
    }

LABEL_6:
    v25 = &qword_27F4790E8;
    v26 = qword_2813E6D28;
    v27 = type metadata accessor for PBHKConcept;
    v28 = v20;
LABEL_16:
    sub_251BB242C(v28, v25, v26, v27);
    goto LABEL_17;
  }

  sub_251BB33C4(v20, v16, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v24(&v20[v22], 1, v10) == 1)
  {
    sub_251BB2308(v16, type metadata accessor for PBHKConcept);
    goto LABEL_6;
  }

  sub_251BB23C4(&v20[v22], v13, type metadata accessor for PBHKConcept);
  v29 = *(v10 + 20);
  v30 = *&v16[v29];
  v31 = *&v13[v29];
  if (v30 != v31)
  {

    v32 = sub_251B70648(v30, v31);

    if ((v32 & 1) == 0)
    {
      sub_251BB2308(v13, type metadata accessor for PBHKConcept);
      sub_251BB2308(v16, type metadata accessor for PBHKConcept);
      v49 = qword_2813E6D28;
      v50 = type metadata accessor for PBHKConcept;
      v51 = v20;
      goto LABEL_26;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v33 = sub_251C70ED4();
  sub_251BB2308(v13, type metadata accessor for PBHKConcept);
  sub_251BB2308(v16, type metadata accessor for PBHKConcept);
  sub_251BB3444(v20, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v33 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v34 = *(v56 + 28);
  v35 = *(v55 + 48);
  v37 = v59;
  v36 = v60;
  sub_251BB33C4(v60 + v34, v59, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  sub_251BB33C4(v23 + v34, v37 + v35, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v38 = v58;
  v39 = *(v57 + 48);
  if (v39(v37, 1, v58) != 1)
  {
    v40 = v54;
    sub_251BB33C4(v37, v54, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    if (v39(v37 + v35, 1, v38) == 1)
    {
      sub_251BB2308(v40, type metadata accessor for PBHKInspectableValue);
      goto LABEL_15;
    }

    v43 = v53;
    sub_251BB23C4(v37 + v35, v53, type metadata accessor for PBHKInspectableValue);
    v44 = *(v38 + 20);
    v45 = *(v40 + v44);
    v46 = *(v43 + v44);
    if (v45 == v46 || (, , v47 = sub_251B83760(v45, v46), , , v47))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v48 = sub_251C70ED4();
      sub_251BB2308(v43, type metadata accessor for PBHKInspectableValue);
      sub_251BB2308(v40, type metadata accessor for PBHKInspectableValue);
      sub_251BB3444(v37, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
      if ((v48 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    sub_251BB2308(v43, type metadata accessor for PBHKInspectableValue);
    sub_251BB2308(v40, type metadata accessor for PBHKInspectableValue);
    v49 = qword_2813E4B40;
    v50 = type metadata accessor for PBHKInspectableValue;
    v51 = v37;
LABEL_26:
    sub_251BB3444(v51, v49, v50);
    goto LABEL_17;
  }

  if (v39(v37 + v35, 1, v38) != 1)
  {
LABEL_15:
    v25 = &qword_27F47B588;
    v26 = qword_2813E4B40;
    v27 = type metadata accessor for PBHKInspectableValue;
    v28 = v37;
    goto LABEL_16;
  }

  sub_251BB3444(v37, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
LABEL_22:
  if (sub_251A9B63C(*v36, *v23))
  {
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = sub_251C70ED4();
    return v41 & 1;
  }

LABEL_17:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_251BB0D30(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0 || *(a1 + 4) != *(a2 + 16) || *(a1 + 5) != *(a2 + 20) || *(a1 + 6) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for PBSleepSeries.Value(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB0E20(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBPatientMeta.HumanName(0);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = (&v49 - v8);
  sub_251BB34B4(0, &qword_27F47B5B0, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v56 = &v49 - v11;
  v12 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds, v6);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - v17;
  sub_251BB34B4(0, &qword_27F47B5B8, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  v20 = v19;
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - v21;
  if (*a1 != *a2 || (sub_251A9BE88(a1[1], a2[1]) & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_251C719D4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_26;
  }

  v50 = type metadata accessor for PBPatientMeta(0);
  v51 = a2;
  v23 = *(v50 + 40);
  v24 = a1;
  v25 = *(v20 + 48);
  v49 = v24;
  sub_251BB33C4(v24 + v23, v22, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  sub_251BB33C4(v51 + v23, &v22[v25], qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  v26 = *(v13 + 48);
  if (v26(v22, 1, v12) == 1)
  {
    if (v26(&v22[v25], 1, v12) == 1)
    {
      goto LABEL_11;
    }

LABEL_16:
    v35 = &qword_27F47B5B8;
    v36 = qword_2813E6890;
    v37 = type metadata accessor for PBPatientMeta.HeartRateMeds;
    v38 = v22;
LABEL_25:
    sub_251BB242C(v38, v35, v36, v37);
    goto LABEL_26;
  }

  sub_251BB33C4(v22, v18, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  if (v26(&v22[v25], 1, v12) == 1)
  {
    sub_251BB2308(v18, type metadata accessor for PBPatientMeta.HeartRateMeds);
    goto LABEL_16;
  }

  sub_251BB23C4(&v22[v25], v15, type metadata accessor for PBPatientMeta.HeartRateMeds);
  if (*v18 != *v15 || v18[1] != v15[1])
  {
    sub_251BB2308(v15, type metadata accessor for PBPatientMeta.HeartRateMeds);
LABEL_20:
    sub_251BB2308(v18, type metadata accessor for PBPatientMeta.HeartRateMeds);
    v39 = qword_2813E6890;
    v40 = type metadata accessor for PBPatientMeta.HeartRateMeds;
    v41 = v22;
    goto LABEL_21;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = sub_251C70ED4();
  sub_251BB2308(v15, type metadata accessor for PBPatientMeta.HeartRateMeds);
  if ((v48 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_251BB2308(v18, type metadata accessor for PBPatientMeta.HeartRateMeds);
LABEL_11:
  sub_251BB3444(v22, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  v27 = v49;
  v28 = *(v50 + 44);
  v29 = *(v10 + 48);
  v30 = v56;
  sub_251BB33C4(v49 + v28, v56, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  v31 = v51 + v28;
  v32 = v51;
  sub_251BB33C4(v31, v30 + v29, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  v33 = v55;
  v34 = *(v54 + 48);
  if (v34(v30, 1, v55) != 1)
  {
    v42 = v53;
    sub_251BB33C4(v30, v53, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
    if (v34(v30 + v29, 1, v33) == 1)
    {
      sub_251BB2308(v42, type metadata accessor for PBPatientMeta.HumanName);
      goto LABEL_24;
    }

    v45 = v30 + v29;
    v46 = v52;
    sub_251BB23C4(v45, v52, type metadata accessor for PBPatientMeta.HumanName);
    if (*v42 == *v46 && v42[1] == v46[1] || (sub_251C719D4()) && (v42[2] == v46[2] && v42[3] == v46[3] || (sub_251C719D4()))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = v51;
      v47 = sub_251C70ED4();
      sub_251BB2308(v46, type metadata accessor for PBPatientMeta.HumanName);
      sub_251BB2308(v42, type metadata accessor for PBPatientMeta.HumanName);
      sub_251BB3444(v30, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
      if ((v47 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    sub_251BB2308(v46, type metadata accessor for PBPatientMeta.HumanName);
    sub_251BB2308(v42, type metadata accessor for PBPatientMeta.HumanName);
    v39 = qword_2813E6758;
    v40 = type metadata accessor for PBPatientMeta.HumanName;
    v41 = v30;
LABEL_21:
    sub_251BB3444(v41, v39, v40);
    goto LABEL_26;
  }

  if (v34(v30 + v29, 1, v33) != 1)
  {
LABEL_24:
    v35 = &qword_27F47B5B0;
    v36 = qword_2813E6758;
    v37 = type metadata accessor for PBPatientMeta.HumanName;
    v38 = v30;
    goto LABEL_25;
  }

  sub_251BB3444(v30, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
LABEL_35:
  if (v27[6] == v32[6] && v27[7] == v32[7] || (sub_251C719D4() & 1) != 0)
  {
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v43 = sub_251C70ED4();
    return v43 & 1;
  }

LABEL_26:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_251BB1754(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_251C719D4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB1860(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) || (v2 = a1, v3 = a2, v4 = sub_251C719D4(), a2 = v3, v5 = v4, a1 = v2, (v5 & 1) != 0))
    {
      if (*(a1 + 40) == *(a2 + 40))
      {
        if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (v6 = a1, v7 = a2, v8 = sub_251C719D4(), a2 = v7, v9 = v8, a1 = v6, (v9 & 1) != 0))
        {
          if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) || (v10 = a1, v11 = a2, v12 = sub_251C719D4(), a2 = v11, v13 = v12, a1 = v10, (v13 & 1) != 0))
          {
            if (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112))
            {
              v14 = a1;
              v15 = a2;
              if (sub_251A93C70(*(a1 + 120), *(a2 + 120)))
              {
                if (*(v14 + 137))
                {
                  if (*(v15 + 137))
                  {
LABEL_24:
                    type metadata accessor for PBTimeSeries.Value(0);
                    sub_251C703B4();
                    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                    return sub_251C70ED4() & 1;
                  }
                }

                else if ((*(v15 + 137) & 1) == 0)
                {
                  v17 = *(v14 + 128);
                  v18 = *(v15 + 128);
                  if (*(v15 + 136))
                  {
                    if (v18)
                    {
                      if (v18 == 1)
                      {
                        if (v17 == 1)
                        {
                          goto LABEL_24;
                        }
                      }

                      else if (v17 == 2)
                      {
                        goto LABEL_24;
                      }
                    }

                    else if (!v17)
                    {
                      goto LABEL_24;
                    }
                  }

                  else if (v17 == v18)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_251BB1AEC(void *a1, void *a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v22 - v8);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for PBTimeSeries(0);
  v14 = *(v23 + 32);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_251BB33C4(a1 + v14, v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v14, &v13[v15], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_251BB33C4(v13, v9, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v24;
      sub_251BB23C4(&v13[v15], v24, type metadata accessor for PBDateRange);
      v20 = sub_251BB2194(v9, v19);
      sub_251BB2308(v19, type metadata accessor for PBDateRange);
      sub_251BB2308(v9, type metadata accessor for PBDateRange);
      sub_251BB3444(v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_251BB2308(v9, type metadata accessor for PBDateRange);
LABEL_6:
    sub_251BB242C(v13, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251BB3444(v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_10:
  v21 = v25;
  if (*v25 == *a2 && v25[1] == a2[1] || (sub_251C719D4()) && (v21[2] == a2[2] && v21[3] == a2[3] || (sub_251C719D4()) && (sub_251A9C444(v21[4], a2[4]))
  {
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_251C70ED4();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_251BB1F0C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 16))
  {
    return 0;
  }

  v5 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v5 && (sub_251C719D4() & 1) == 0 || (a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((a1[7] != *(a2 + 56) || a1[8] != *(a2 + 64)) && (sub_251C719D4() & 1) == 0 || (a1[9] != *(a2 + 72) || a1[10] != *(a2 + 80)) && (sub_251C719D4() & 1) == 0 || (sub_251A93C70(a1[11], *(a2 + 88)) & 1) == 0 || *(a1 + 24) != *(a2 + 96) || !sub_251B5CAD0(a1[13], *(a1 + 112), *(a2 + 104), *(a2 + 112)))
  {
    return 0;
  }

  type metadata accessor for PBECGMeta(0);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB20A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB2194(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7 > 2)
    {
      if (v7 > 4)
      {
        if (v7 == 5)
        {
          if (v6 != 5)
          {
            return 0;
          }
        }

        else if (v6 != 6)
        {
          return 0;
        }
      }

      else if (v7 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v6 != 4)
      {
        return 0;
      }

LABEL_18:
      type metadata accessor for PBDateRange(0);
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_251C70ED4() & 1;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_251BB2308(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BB2368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BB2488(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BB23C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BB242C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BB34B4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_251BB2488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251BB24E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_251BB2550()
{
  result = qword_27F47B5D0;
  if (!qword_27F47B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B5D0);
  }

  return result;
}

unint64_t sub_251BB25A4()
{
  result = qword_27F47B5E8;
  if (!qword_27F47B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B5E8);
  }

  return result;
}

unint64_t sub_251BB25F8()
{
  result = qword_27F47B640;
  if (!qword_27F47B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B640);
  }

  return result;
}

unint64_t sub_251BB264C()
{
  result = qword_27F47B648;
  if (!qword_27F47B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B648);
  }

  return result;
}

unint64_t sub_251BB26A0()
{
  result = qword_27F47B650;
  if (!qword_27F47B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B650);
  }

  return result;
}

unint64_t sub_251BB26F4()
{
  result = qword_27F47B658;
  if (!qword_27F47B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B658);
  }

  return result;
}

unint64_t sub_251BB2748()
{
  result = qword_27F47B678;
  if (!qword_27F47B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B678);
  }

  return result;
}

unint64_t sub_251BB279C()
{
  result = qword_27F47B690;
  if (!qword_27F47B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B690);
  }

  return result;
}

char *sub_251BB27F0(void *a1)
{
  v20 = type metadata accessor for PBHKConcept;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0xE000000000000000;
  *(v1 + 6) = 0;
  *(v1 + 7) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  v7 = type metadata accessor for PBHKConcept(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
  v1[OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory] = 0;
  swift_beginAccess();
  v9 = a1[2];
  v10 = a1[3];
  swift_beginAccess();
  *(v1 + 2) = v9;
  *(v1 + 3) = v10;
  swift_beginAccess();
  v11 = a1[4];
  v12 = a1[5];
  swift_beginAccess();
  *(v1 + 4) = v11;
  *(v1 + 5) = v12;
  swift_beginAccess();
  v13 = a1[6];
  v14 = a1[7];
  swift_beginAccess();
  *(v1 + 6) = v13;
  *(v1 + 7) = v14;
  v15 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;

  swift_beginAccess();
  v16 = v20;
  sub_251BB33C4(a1 + v15, v5, qword_2813E6D28, v20);
  swift_beginAccess();
  sub_251BB3050(v5, &v1[v6], qword_2813E6D28, v16);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v17);
  swift_beginAccess();
  v1[v8] = a1;
  return v1;
}