uint64_t sub_226E25F08(uint64_t a1)
{
  v2 = sub_226E62EA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CC71F8])
  {
    return 8;
  }

  if (v6 == *MEMORY[0x277CC7200] || v6 == *MEMORY[0x277CC7210])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277CC7208])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277CC7218])
  {
    return 6;
  }

  (*(v3 + 8))(v5, v2);
  return -1;
}

uint64_t sub_226E26088(uint64_t a1)
{
  v2 = sub_226E62E90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != *MEMORY[0x277CC71F0])
  {
    if (v6 == *MEMORY[0x277CC71E8])
    {
      return 1;
    }

    else if (v6 == *MEMORY[0x277CC71E0])
    {
      return 2;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_226E261DC(uint64_t a1, void *a2)
{
  v4 = sub_226E63320();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226E62D30();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = v10;
  v28[4] = MEMORY[0x277CC6C70];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(v9 + 16))(boxed_opaque_existential_1, a1, v8);
  sub_226E63300();
  if (v14)
  {
    v15 = sub_226E639B0();

    [a2 setDisplayName_];
  }

  sub_226E632D0();
  if (v16)
  {
    v17 = sub_226E639B0();

    [a2 setMerchantDetailedCategory_];
  }

  sub_226E2703C(v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69A8, &qword_226E68878);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(v12, v8);
    [a2 setMapsMerchantID_];
    strcpy(v27, "mapsMerchant-");
    HIWORD(v27[3]) = -4864;
    v26 = sub_226E632F0();
    v18 = sub_226E63FE0();
    MEMORY[0x22AA8D010](v18);

    v19 = sub_226E639B0();

    [a2 setMerchantUniqueIdentifier_];

    v20 = sub_226E632E0();
    if ((v20 & 0x100000000) == 0)
    {
      [a2 setMapsMerchantResultProviderID_];
    }
  }

  else
  {
    sub_226E2703C(v28, v27);
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v7, v4);
      [a2 setMapsMerchantBrandID_];
      strcpy(v27, "mapsBrand-");
      HIBYTE(v27[2]) = 0;
      v27[3] = -369098752;
      v26 = sub_226E632F0();
      v21 = sub_226E63FE0();
      MEMORY[0x22AA8D010](v21);

      v22 = sub_226E639B0();

      [a2 setMerchantUniqueIdentifier_];

      v23 = sub_226E632E0();
      if ((v23 & 0x100000000) == 0)
      {
        [a2 setMapsMerchantBrandResultProviderID_];
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_226E2662C(uint64_t a1, void *a2)
{
  v4 = sub_226E63320();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226E62D30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = v4;
  v27[4] = MEMORY[0x277CC85C0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(v5 + 16))(boxed_opaque_existential_1, a1, v4);
  sub_226E63300();
  if (v13)
  {
    v14 = sub_226E639B0();

    [a2 setDisplayName_];
  }

  sub_226E632D0();
  if (v15)
  {
    v16 = sub_226E639B0();

    [a2 setMerchantDetailedCategory_];
  }

  sub_226E2703C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69A8, &qword_226E68878);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(v11, v8);
    [a2 setMapsMerchantID_];
    strcpy(v26, "mapsMerchant-");
    HIWORD(v26[3]) = -4864;
    v25 = sub_226E632F0();
    v17 = sub_226E63FE0();
    MEMORY[0x22AA8D010](v17);

    v18 = sub_226E639B0();

    [a2 setMerchantUniqueIdentifier_];

    v19 = sub_226E632E0();
    if ((v19 & 0x100000000) == 0)
    {
      [a2 setMapsMerchantResultProviderID_];
    }
  }

  else
  {
    sub_226E2703C(v27, v26);
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v7, v4);
      [a2 setMapsMerchantBrandID_];
      strcpy(v26, "mapsBrand-");
      HIBYTE(v26[2]) = 0;
      v26[3] = -369098752;
      v25 = sub_226E632F0();
      v20 = sub_226E63FE0();
      MEMORY[0x22AA8D010](v20);

      v21 = sub_226E639B0();

      [a2 setMerchantUniqueIdentifier_];

      v22 = sub_226E632E0();
      if ((v22 & 0x100000000) == 0)
      {
        [a2 setMapsMerchantBrandResultProviderID_];
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t sub_226E26A7C(uint64_t a1)
{
  v2 = sub_226E62E70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CC7028])
  {
    return 16;
  }

  if (v6 != *MEMORY[0x277CC6FC0])
  {
    if (v6 != *MEMORY[0x277CC6FF8])
    {
      if (v6 == *MEMORY[0x277CC6FD0])
      {
        return 10;
      }

      if (v6 == *MEMORY[0x277CC7010])
      {
        return 22;
      }

      if (v6 == *MEMORY[0x277CC7020] || v6 == *MEMORY[0x277CC6FE8])
      {
        return 6;
      }

      if (v6 == *MEMORY[0x277CC7030])
      {
        return 17;
      }

      if (v6 == *MEMORY[0x277CC7000])
      {
        return 4;
      }

      if (v6 == *MEMORY[0x277CC7038])
      {
        return 11;
      }

      if (v6 == *MEMORY[0x277CC6FE0])
      {
        return 0;
      }

      if (v6 == *MEMORY[0x277CC7040])
      {
        return 21;
      }

      if (v6 == *MEMORY[0x277CC6FC8])
      {
        return 5;
      }

      if (v6 == *MEMORY[0x277CC6FF0])
      {
        return 19;
      }

      if (v6 == *MEMORY[0x277CC6FD8])
      {
        return 20;
      }

      if (v6 == *MEMORY[0x277CC7008])
      {
        return 18;
      }

      if (v6 == *MEMORY[0x277CC7018])
      {
        return 1;
      }

      (*(v3 + 8))(v5, v2);
    }

    return 16;
  }

  return 7;
}

unint64_t sub_226E26D3C()
{
  result = qword_27D7B69A0;
  if (!qword_27D7B69A0)
  {
    sub_226E62FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B69A0);
  }

  return result;
}

uint64_t sub_226E26D94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_226E26DFC(uint64_t a1)
{
  v2 = sub_226E62CE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = 0;
  if (v6 != *MEMORY[0x277CC6C48])
  {
    if (v6 == *MEMORY[0x277CC6C28])
    {
      return 1;
    }

    else if (v6 == *MEMORY[0x277CC6C58])
    {
      return 2;
    }

    else if (v6 == *MEMORY[0x277CC6C40])
    {
      return 3;
    }

    else if (v6 == *MEMORY[0x277CC6C50])
    {
      return 4;
    }

    else if (v6 == *MEMORY[0x277CC6C30])
    {
      return 5;
    }

    else if (v6 == *MEMORY[0x277CC6C38])
    {
      return 6;
    }

    else if (v6 == *MEMORY[0x277CC6C60])
    {
      return 7;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return v7;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_226E2703C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_226E270A0()
{
  type metadata accessor for TransactionBiomeStreamDonator();
  sub_226E48FC8(v1);
  return sub_226E48FE0(v1);
}

uint64_t sub_226E270E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[28] = a7;
  v8[29] = v7;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[22] = a1;
  v8[23] = a2;
  v9 = sub_226E635C0();
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69B0, &qword_226E68898);
  v8[33] = v10;
  v8[34] = *(v10 - 8);
  v8[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69B8, &unk_226E688A0);
  v8[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v8[37] = swift_task_alloc();
  v11 = sub_226E632C0();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = swift_task_alloc();
  v12 = sub_226E63870();
  v8[41] = v12;
  v8[42] = *(v12 - 8);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v13 = sub_226E62B30();
  v8[45] = v13;
  v8[46] = *(v13 - 8);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C0, &qword_226E688B0);
  v8[49] = swift_task_alloc();
  v14 = sub_226E630A0();
  v8[50] = v14;
  v8[51] = *(v14 - 8);
  v8[52] = swift_task_alloc();
  v15 = sub_226E630F0();
  v8[53] = v15;
  v8[54] = *(v15 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C8, &qword_226E688B8);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v16 = sub_226E638E0();
  v8[67] = v16;
  v8[68] = *(v16 - 8);
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v17 = sub_226E63830();
  v8[80] = v17;
  v8[81] = *(v17 - 8);
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v18 = sub_226E63860();
  v8[88] = v18;
  v8[89] = *(v18 - 8);
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E27774, 0, 0);
}

uint64_t sub_226E27774()
{
  v1 = v0[94];
  v2 = v0[89];
  v3 = v0[88];
  v4 = sub_226E572E0();
  v0[95] = v4;
  v5 = *(v2 + 16);
  v0[96] = v5;
  v0[97] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  sub_226E63820();
  v6 = sub_226E63850();
  v7 = sub_226E63CD0();
  if (sub_226E63D70())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_226E63810();
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v6, v7, v9, "FinanceKitDateStore:streamTransactions", "", v8, 2u);
    MEMORY[0x22AA8E1B0](v8, -1, -1);
  }

  v10 = v0[94];
  v11 = v0[89];
  v12 = v0[88];
  v13 = v0[87];
  v14 = v0[86];
  v15 = v0[81];
  v16 = v0[80];
  v17 = v0[29];

  (*(v15 + 16))(v14, v13, v16);
  sub_226E638A0();
  swift_allocObject();
  v0[98] = sub_226E63890();
  v18 = *(v15 + 8);
  v0[99] = v18;
  v0[100] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v16);
  v19 = *(v11 + 8);
  v0[101] = v19;
  v0[102] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v10, v12);
  sub_226E62C40();
  swift_allocObject();
  v20 = sub_226E62C30();
  v0[103] = v20;
  v21 = *((*MEMORY[0x277D85000] & *v17) + 0x78);
  v24 = (v21 + *v21);
  v22 = swift_task_alloc();
  v0[104] = v22;
  *v22 = v0;
  v22[1] = sub_226E27A64;

  return v24(v20);
}

uint64_t sub_226E27A64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v4 = sub_226E2CBE4;
  }

  else
  {
    v4 = sub_226E27B7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226E27B7C()
{
  v173 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 544);
  (*((*MEMORY[0x277D85000] & **(v0 + 232)) + 0x80))(*(v0 + 840));
  v3 = sub_226E56FC8();
  *(v0 + 856) = v3;
  v4 = *(v2 + 16);
  *(v0 + 864) = v4;
  *(v0 + 872) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v164 = v3;
  v165 = v4;
  (v4)(v1);

  v5 = sub_226E638C0();
  v6 = sub_226E63C90();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 632);
    v8 = v0;
    v9 = *(v0 + 544);
    v10 = v8[67];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v172[0] = v12;
    *v11 = 136380675;
    sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
    v13 = sub_226E63970();
    v15 = sub_226E1FC98(v13, v14, v172);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_226DD4000, v5, v6, "FinanceKitDataStore : fhAccountsDict = %{private}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x22AA8E1B0](v12, -1, -1);
    MEMORY[0x22AA8E1B0](v11, -1, -1);
  }

  else
  {
    v7 = *(v0 + 632);
    v8 = v0;
    v9 = *(v0 + 544);
    v10 = v8[67];
  }

  v16 = *(v9 + 8);
  v16(v7, v10);
  v163 = v16;
  v8[110] = v16;
  v17 = v8[24];
  v172[0] = MEMORY[0x277D84F90];
  if (v17 >> 62)
  {
LABEL_24:
    v18 = sub_226E63DE0();
    v171 = v8;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v171 = v8;
    if (v18)
    {
LABEL_6:
      v19 = 0;
      v20 = v8[24];
      v166 = v8[105];
      v170 = v17 & 0xC000000000000001;
      v8 = (v17 & 0xFFFFFFFFFFFFFF8);
      v21 = v20 + 32;
      while (1)
      {
        if (v170)
        {
          v22 = MEMORY[0x22AA8D480](v19, v171[24]);
        }

        else
        {
          if (v19 >= v8[2])
          {
            goto LABEL_23;
          }

          v22 = *(v21 + 8 * v19);
        }

        v23 = v22;
        v24 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v25 = [v23 accountID];
        v26 = sub_226E639C0();
        v28 = v27;

        v17 = v171[105];
        if (*(v166 + 16))
        {
          sub_226E20614(v26, v28);
          v30 = v29;

          if (v30)
          {
            goto LABEL_7;
          }
        }

        else
        {
        }

        if ([v23 sourceType] == 1)
        {
          v17 = v172;
          sub_226E63EC0();
          sub_226E63EE0();
          sub_226E63EF0();
          sub_226E63ED0();
          goto LABEL_8;
        }

LABEL_7:

LABEL_8:
        ++v19;
        if (v24 == v18)
        {
          v8 = v171;
          v31 = v172[0];
          if ((v172[0] & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_89;
        }
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_89;
  }

LABEL_26:
  if ((v31 & 0x4000000000000000) != 0)
  {
LABEL_89:
    v32 = sub_226E63DE0();
  }

  else
  {
    v32 = *(v31 + 16);
  }

  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v172[0] = MEMORY[0x277D84F90];
    v34 = sub_226E217DC(0, v32 & ~(v32 >> 63), 0);
    if (v32 < 0)
    {
      __break(1u);
      goto LABEL_91;
    }

    v36 = 0;
    v33 = v172[0];
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x22AA8D480](v36, v31);
      }

      else
      {
        v37 = *(v31 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = [v38 accountID];
      v40 = sub_226E639C0();
      v42 = v41;

      v172[0] = v33;
      v44 = *(v33 + 16);
      v43 = *(v33 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_226E217DC((v43 > 1), v44 + 1, 1);
        v33 = v172[0];
      }

      ++v36;
      *(v33 + 16) = v44 + 1;
      v45 = v33 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
    }

    while (v32 != v36);
    v8 = v171;
  }

  v8[111] = v33;
  v46 = v8[29];
  v165(v8[78], v164, v8[67]);
  v47 = v46;
  v48 = sub_226E638C0();
  v49 = sub_226E63CB0();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v8[29];
  v52 = 0x27D7B6000uLL;
  if (v50)
  {
    v53 = swift_slowAlloc();
    *v53 = 67109120;
    *(v53 + 4) = (*(**&v51[OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator] + 136))() & 1;

    _os_log_impl(&dword_226DD4000, v48, v49, "Biome donation learnFromApp=%{BOOL}d ", v53, 8u);
    MEMORY[0x22AA8E1B0](v53, -1, -1);
  }

  else
  {
  }

  v54 = v171;
  v55 = v171[78];
  v56 = v171[67];
  v171[112] = (v171[68] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v163(v55, v56);
  if (*(v33 + 16))
  {
    v165(v171[77], v164, v171[67]);

    v57 = sub_226E638C0();
    v58 = sub_226E63C90();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v171[77];
    v61 = v171[67];
    if (v59)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v172[0] = v63;
      *v62 = 136315138;
      v64 = MEMORY[0x22AA8D0F0](v33, MEMORY[0x277D837D0]);
      v167 = v60;
      v66 = sub_226E1FC98(v64, v65, v172);
      v52 = 0x27D7B6000;

      *(v62 + 4) = v66;
      _os_log_impl(&dword_226DD4000, v57, v58, "FinanceKitDataStore : deleting biome events for accountIds=%s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x22AA8E1B0](v63, -1, -1);
      MEMORY[0x22AA8E1B0](v62, -1, -1);

      v67 = v167;
    }

    else
    {

      v67 = v60;
    }

    v163(v67, v61);
    v68 = v171[106];
    (*(**(v171[29] + *(v52 + 2512)) + 120))(v33);
    if (v68)
    {

LABEL_77:

      v107 = v54[1];
LABEL_78:

      return v107();
    }

    v165(v171[76], v164, v171[67]);

    v69 = sub_226E638C0();
    v70 = sub_226E63C90();

    v71 = os_log_type_enabled(v69, v70);
    v72 = v171[76];
    v73 = v171[67];
    if (v71)
    {
      v74 = swift_slowAlloc();
      v169 = v72;
      v75 = swift_slowAlloc();
      v172[0] = v75;
      *v74 = 136315138;
      v76 = MEMORY[0x22AA8D0F0](v33, MEMORY[0x277D837D0]);
      v160 = v73;
      v78 = sub_226E1FC98(v76, v77, v172);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_226DD4000, v69, v70, "FinanceKitDataStore : deletion of biome events complete for accountIds=%s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x22AA8E1B0](v75, -1, -1);
      MEMORY[0x22AA8E1B0](v74, -1, -1);

      v163(v169, v160);
    }

    else
    {

      v163(v72, v73);
    }

    v168 = 0;
  }

  else
  {
    v168 = v171[106];
  }

  v79 = v171[105];
  v80 = *(v79 + 16);
  if (!v80)
  {
    v81 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v81 = sub_226E33090(*(v79 + 16), 0);
  v82 = sub_226E33840(v172, v81 + 4, v80, v79);
  v83 = v172[0];
  v161 = v82;

  v34 = sub_226E33994(v83);
  if (v161 != v80)
  {
LABEL_91:
    __break(1u);
    return MEMORY[0x282116DF0](v34, v35);
  }

LABEL_56:
  v84 = (v171[27])(v81, v31);

  if ((v84 & 1) == 0)
  {
    v99 = v171[75];
    v100 = v171[67];

    v165(v99, v164, v100);
    v101 = sub_226E638C0();
    v102 = sub_226E63CA0();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v171[75];
    v105 = v171[67];
    if (v103)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_226DD4000, v101, v102, "FinanceKitDataStore : failed to delete accounts", v106, 2u);
      MEMORY[0x22AA8E1B0](v106, -1, -1);
    }

    v163(v104, v105);

    v107 = v171[1];
    goto LABEL_78;
  }

  v85 = v171[23];
  v165(v171[74], v164, v171[67]);

  v86 = sub_226E638C0();
  v87 = sub_226E63C90();

  v88 = os_log_type_enabled(v86, v87);
  v89 = v171[74];
  v90 = v171[67];
  if (v88)
  {
    v91 = v171[23];
    v92 = v171[22];
    v93 = swift_slowAlloc();
    v162 = v89;
    v94 = swift_slowAlloc();
    v172[0] = v94;
    *v93 = 136315138;
    v95 = v91 == 0;
    v54 = v171;
    if (v95)
    {
      v92 = 7104878;
      v96 = 0xE300000000000000;
    }

    else
    {
      v96 = v85;
    }

    v97 = sub_226E1FC98(v92, v96, v172);

    *(v93 + 4) = v97;
    _os_log_impl(&dword_226DD4000, v86, v87, "FinanceKitDataStore : fetching transactions since token = %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    MEMORY[0x22AA8E1B0](v94, -1, -1);
    MEMORY[0x22AA8E1B0](v93, -1, -1);

    v98 = v162;
  }

  else
  {

    v98 = v89;
  }

  v108 = (v163)(v98, v90);
  v109 = v54[73];
  v110 = v54[67];
  v111 = v54[66];
  v112 = v54[65];
  v113 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v54[29]) + 0x88))(v108);
  v165(v109, v164, v110);
  sub_226E1A598(v111, v112, &qword_27D7B6858, &qword_226E688C0);
  v114 = sub_226E638C0();
  v115 = sub_226E63C90();
  v116 = os_log_type_enabled(v114, v115);
  v117 = v54[65];
  if (v116)
  {
    v118 = v54[64];
    v119 = swift_slowAlloc();
    *v119 = 134217984;
    sub_226E1A598(v117, v118, &qword_27D7B6858, &qword_226E688C0);
    v120 = sub_226E63590();
    v121 = v54;
    v122 = *(v120 - 8);
    v123 = (*(v122 + 48))(v118, 1, v120);
    v124 = v121[65];
    v125 = v121[64];
    if (v123 == 1)
    {
      sub_226E15E98(v124, &qword_27D7B6858, &qword_226E688C0);
      sub_226E15E98(v125, &qword_27D7B6858, &qword_226E688C0);
      v126 = 0;
    }

    else
    {
      sub_226E63550();
      v126 = v127;
      sub_226E15E98(v124, &qword_27D7B6858, &qword_226E688C0);
      (*(v122 + 8))(v125, v120);
    }

    *(v119 + 4) = v126;
    _os_log_impl(&dword_226DD4000, v114, v115, "FinanceKitDataStore : earliestDonationDate for biome events =%f", v119, 0xCu);
    MEMORY[0x22AA8E1B0](v119, -1, -1);

    v54 = v171;
    v113 = MEMORY[0x277D85000];
  }

  else
  {

    sub_226E15E98(v117, &qword_27D7B6858, &qword_226E688C0);
  }

  v128 = v54[29];
  v130 = v54[22];
  v129 = v54[23];
  v163(v54[73], v54[67]);
  (*((*v113 & *v128) + 0x70))(v130, v129);
  if (v168)
  {
    sub_226E15E98(v54[66], &qword_27D7B6858, &qword_226E688C0);

    goto LABEL_77;
  }

  v132 = v54[62];
  v131 = v54[63];
  v133 = v54;
  v134 = v54[46];
  v135 = v133[45];
  sub_226E1A598(v131, v132, &qword_27D7B69C8, &qword_226E688B8);
  v136 = *(v134 + 48);
  v133[113] = v136;
  v133[114] = (v134 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v135) = v136(v132, 1, v135);
  v137 = sub_226E15E98(v132, &qword_27D7B69C8, &qword_226E688B8);
  if (v135 == 1)
  {
    (*(**(v133[29] + OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator) + 128))(v137);
    v165(v133[72], v164, v133[67]);
    v139 = sub_226E638C0();
    v140 = sub_226E63C90();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_226DD4000, v139, v140, "FinanceKitDataStore : deleted all biome events because we are fetching all transactions", v141, 2u);
      MEMORY[0x22AA8E1B0](v141, -1, -1);
    }

    v142 = v133[72];
    v143 = v133[67];
    v144 = v133[61];
    v145 = v133[46];
    v146 = v133[45];

    v163(v142, v143);
    v147 = *(v145 + 56);
    v133[115] = v147;
    v133[116] = (v145 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v147(v144, 1, 1, v146);
    v133[117] = 0;
    *(v133 + 1072) = 0;
    v149 = v133[51];
    v148 = v133[52];
    v151 = v133[49];
    v150 = v133[50];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69D8, &qword_226E688C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69E0, &qword_226E688D0);
    *(swift_allocObject() + 16) = xmmword_226E685F0;
    swift_getKeyPath();
    sub_226E34C7C(&qword_27D7B69E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
    sub_226E63430();
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69F0, &qword_226E68908);
    (*(*(v152 - 8) + 56))(v151, 1, 1, v152);
    sub_226E63090();
    v153 = MEMORY[0x277CC7C08];
    v133[5] = v150;
    v133[6] = v153;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v133 + 2);
    (*(v149 + 16))(boxed_opaque_existential_1, v148, v150);
    v155 = swift_task_alloc();
    v133[118] = v155;
    *v155 = v133;
    v155[1] = sub_226E294CC;
    v34 = v133[55];
    v35 = v133 + 2;

    return MEMORY[0x282116DF0](v34, v35);
  }

  (*(v133[31] + 56))(v133[37], 1, 1, v133[30]);
  sub_226E62B60();
  sub_226E15E98(v133[37], &qword_27D7B6940, &qword_226E68A90);
  sub_226E632B0();

  v156 = sub_226E34C7C(&qword_280CEA238, MEMORY[0x277CC8098], MEMORY[0x277CC80A0]);
  v157 = swift_task_alloc();
  v133[126] = v157;
  *v157 = v133;
  v157[1] = sub_226E2B41C;
  v158 = v133[38];
  v159 = v133[36];

  return MEMORY[0x282200308](v159, v158, v156);
}

uint64_t sub_226E294CC()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  if (v0)
  {

    v3 = sub_226E2CEBC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v3 = sub_226E295FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E295FC()
{
  if (*(v0 + 1072) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));
  }

  v1 = *(v0 + 904);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 360);
  (*(*(v0 + 432) + 32))(*(v0 + 448), *(v0 + 440), *(v0 + 424));
  sub_226E1A598(v3, v2, &qword_27D7B69C8, &qword_226E688B8);
  LODWORD(v3) = v1(v2, 1, v4);
  sub_226E15E98(v2, &qword_27D7B69C8, &qword_226E688B8);
  if (v3 == 1)
  {
    v5 = *(v0 + 488);
    v6 = *(v0 + 472);
    sub_226E630E0();
    sub_226E15E98(v5, &qword_27D7B69C8, &qword_226E688B8);
    sub_226E26D94(v6, v5, &qword_27D7B69C8, &qword_226E688B8);
  }

  v7 = sub_226E630D0();
  *(v0 + 960) = v7;
  v8 = swift_task_alloc();
  *(v0 + 968) = v8;
  *v8 = v0;
  v8[1] = sub_226E297B8;
  v9 = *(v0 + 888);
  v10 = *(v0 + 840);
  v11 = *(v0 + 824);
  v12 = *(v0 + 528);
  v13 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];

  return sub_226E2E68C(v7, v13, v14, v11, v10, v9, v12);
}

uint64_t sub_226E297B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 976) = a1;
  *(v3 + 984) = v1;

  if (v1)
  {

    v4 = sub_226E2D234;
  }

  else
  {
    v4 = sub_226E29914;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226E29914(uint64_t a1)
{
  v86 = v1;
  v2 = *(v1 + 936);
  v3 = *(sub_226E630D0() + 16);

  v78 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = 0;
    v4 = *(v1 + 976);
    *(v1 + 80) = 0xE000000000000000;
    sub_226E63E70();

    *(v1 + 56) = 0x3D73747265736E69;
    *(v1 + 64) = 0xE800000000000000;
    if (!(v4 >> 62))
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v5 = sub_226E63DE0();
LABEL_4:
  *(v1 + 120) = v5;
  v6 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v6);

  MEMORY[0x22AA8D010](0x6F686563616C7020, 0xED00003D7265646CLL);
  v7 = *(sub_226E630D0() + 16);

  v10 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
    __break(1u);
    return MEMORY[0x282116DF0](v8, v9);
  }

  v11 = *(v1 + 864);
  v12 = *(v1 + 856);
  v13 = *(v1 + 568);
  v14 = *(v1 + 536);
  *(v1 + 128) = v10;
  v15 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v15);

  v17 = *(v1 + 56);
  v16 = *(v1 + 64);
  v11(v13, v12, v14);

  v18 = sub_226E638C0();
  v19 = sub_226E63CB0();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v1 + 880);
  v22 = *(v1 + 568);
  v23 = *(v1 + 536);
  v77 = v17;
  if (v20)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v85[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_226E1FC98(v17, v16, v85);
    _os_log_impl(&dword_226DD4000, v18, v19, "FinanceKitDataStore : batch transactions %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x22AA8E1B0](v25, -1, -1);
    MEMORY[0x22AA8E1B0](v24, -1, -1);

    v21(v22, v23);
  }

  else
  {

    v21(v22, v23);
  }

  v26 = *(v1 + 768);
  v27 = *(v1 + 760);
  v28 = *(v1 + 744);
  v29 = *(v1 + 704);
  (*(v1 + 200))(*(v1 + 976), MEMORY[0x277D84F90], 0, 0);

  v26(v28, v27, v29);

  sub_226E63820();
  v30 = sub_226E63850();
  v76 = sub_226E63CE0();

  v31 = sub_226E63D70();
  v32 = *(v1 + 808);
  v33 = *(v1 + 792);
  v80 = *(v1 + 704);
  v34 = *(v1 + 680);
  v35 = *(v1 + 640);
  v37 = *(v1 + 408);
  v36 = *(v1 + 416);
  v82 = *(v1 + 744);
  v84 = *(v1 + 400);
  if (v31)
  {
    v75 = *(v1 + 808);
    v38 = swift_slowAlloc();
    v74 = v36;
    v39 = swift_slowAlloc();
    v85[0] = v39;
    *v38 = 136315138;
    v40 = sub_226E1FC98(v77, v16, v85);

    *(v38 + 4) = v40;
    v41 = sub_226E63810();
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v30, v76, v41, "FinanceKitDateStore:transactionUpdates", "%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x22AA8E1B0](v39, -1, -1);
    MEMORY[0x22AA8E1B0](v38, -1, -1);

    v33(v34, v35);
    v75(v82, v80);
    (*(v37 + 8))(v74, v84);
  }

  else
  {

    v33(v34, v35);
    v32(v82, v80);
    (*(v37 + 8))(v36, v84);
  }

  v42 = *(sub_226E630D0() + 16);

  if (v42)
  {
    *(v1 + 936) = v78;
    *(v1 + 1072) = 1;
    v44 = *(v1 + 408);
    v43 = *(v1 + 416);
    v45 = *(v1 + 392);
    v46 = *(v1 + 400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69D8, &qword_226E688C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69E0, &qword_226E688D0);
    *(swift_allocObject() + 16) = xmmword_226E685F0;
    swift_getKeyPath();
    sub_226E34C7C(&qword_27D7B69E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
    sub_226E63430();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69F0, &qword_226E68908);
    (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
    sub_226E63090();
    v48 = MEMORY[0x277CC7C08];
    *(v1 + 40) = v46;
    *(v1 + 48) = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
    (*(v44 + 16))(boxed_opaque_existential_1, v43, v46);
    v50 = swift_task_alloc();
    *(v1 + 944) = v50;
    *v50 = v1;
    v50[1] = sub_226E294CC;
    v8 = *(v1 + 440);
    v9 = v1 + 16;

    return MEMORY[0x282116DF0](v8, v9);
  }

  v51 = *(v1 + 904);
  v52 = *(v1 + 464);
  v53 = *(v1 + 360);
  sub_226E1A598(*(v1 + 488), v52, &qword_27D7B69C8, &qword_226E688B8);
  if (v51(v52, 1, v53) == 1)
  {
    sub_226E15E98(*(v1 + 464), &qword_27D7B69C8, &qword_226E688B8);
LABEL_22:
    v72 = swift_task_alloc();
    *(v1 + 992) = v72;
    *v72 = v1;
    v72[1] = sub_226E2A4EC;
    v73 = *(v1 + 456);

    return sub_226E323C0(v73);
  }

  v54 = *(v1 + 984);
  v55 = *(v1 + 384);
  v56 = *(v1 + 232);
  v57 = *(*(v1 + 368) + 32);
  v57(v55, *(v1 + 464), *(v1 + 360));
  v58 = (*((*MEMORY[0x277D85000] & *v56) + 0x68))(v55);
  if (!v54)
  {
    v68 = *(v1 + 920);
    v69 = *(v1 + 504);
    v70 = *(v1 + 384);
    v71 = *(v1 + 360);
    (*(v1 + 200))(MEMORY[0x277D84F90], MEMORY[0x277D84F90], v58, v59);

    sub_226E15E98(v69, &qword_27D7B69C8, &qword_226E688B8);
    v57(v69, v70, v71);
    v68(v69, 0, 1, v71);
    goto LABEL_22;
  }

  v81 = *(v1 + 504);
  v83 = *(v1 + 528);
  v60 = *(v1 + 488);
  v79 = *(v1 + 448);
  v62 = *(v1 + 424);
  v61 = *(v1 + 432);
  v63 = *(v1 + 384);
  v64 = *(v1 + 360);
  v65 = *(v1 + 368);

  (*(v65 + 8))(v63, v64);
  sub_226E15E98(v60, &qword_27D7B69C8, &qword_226E688B8);
  (*(v61 + 8))(v79, v62);
  sub_226E15E98(v81, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v83, &qword_27D7B6858, &qword_226E688C0);

  v66 = *(v1 + 8);

  return v66();
}

uint64_t sub_226E2A4EC()
{
  *(*v1 + 1000) = v0;

  if (v0)
  {

    v2 = sub_226E2B0D0;
  }

  else
  {
    v2 = sub_226E2A614;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E2A614()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[70];
  v4 = v0[67];
  v5 = v0[57];
  v6 = sub_226E34034(v0[63], v5);
  sub_226E15E98(v5, &qword_27D7B69C8, &qword_226E688B8);
  v1(v3, v2, v4);
  v7 = sub_226E638C0();
  v8 = sub_226E63CB0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v6 & 1;
    _os_log_impl(&dword_226DD4000, v7, v8, "FinanceKitDataStore : first pull complete. isTokenUpdated = %{BOOL}d", v9, 8u);
    MEMORY[0x22AA8E1B0](v9, -1, -1);
  }

  v10 = v0[110];
  v11 = v0[70];
  v12 = v0[67];

  v10(v11, v12);
  if ((v6 & 1) == 0)
  {
    v21 = v0[96];
    v22 = v0[95];
    v23 = v0[92];
    v24 = v0[88];

    v21(v23, v22, v24);
    v25 = sub_226E63850();
    sub_226E63880();
    v26 = sub_226E63CC0();
    if (sub_226E63D70())
    {
      v27 = v0[44];
      v28 = v0[41];
      v29 = v0[42];

      sub_226E638B0();

      if ((*(v29 + 88))(v27, v28) == *MEMORY[0x277D85B00])
      {
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[42] + 8))(v0[44], v0[41]);
        v30 = "";
      }

      v57 = v0[101];
      v51 = v0[92];
      v49 = v0[99];
      v50 = v0[88];
      v42 = v0[84];
      v43 = v0[80];
      v58 = v0[63];
      v59 = v0[66];
      v48 = v0[61];
      v44 = v0[54];
      v53 = v0[53];
      v55 = v0[56];
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = sub_226E63810();
      _os_signpost_emit_with_name_impl(&dword_226DD4000, v25, v26, v46, "FinanceKitDateStore:streamTransactions", v30, v45, 2u);
      MEMORY[0x22AA8E1B0](v45, -1, -1);

      v49(v42, v43);
      v57(v51, v50);
      sub_226E15E98(v48, &qword_27D7B69C8, &qword_226E688B8);
      (*(v44 + 8))(v55, v53);
    }

    else
    {
      v56 = v0[101];
      v31 = v0[99];
      v32 = v0[92];
      v33 = v0[88];
      v34 = v0[84];
      v35 = v0[80];
      v58 = v0[63];
      v59 = v0[66];
      v36 = v0[61];
      v54 = v0[56];
      v37 = v0[54];
      v52 = v0[53];

      v31(v34, v35);
      v56(v32, v33);
      sub_226E15E98(v36, &qword_27D7B69C8, &qword_226E688B8);
      (*(v37 + 8))(v54, v52);
    }

    sub_226E15E98(v58, &qword_27D7B69C8, &qword_226E688B8);
    sub_226E15E98(v59, &qword_27D7B6858, &qword_226E688C0);

    v20 = v0[1];
    goto LABEL_16;
  }

  v13 = v0[56];
  v14 = v0[53];
  v15 = v0[54];
  sub_226E15E98(v0[61], &qword_27D7B69C8, &qword_226E688B8);
  (*(v15 + 8))(v13, v14);
  v16 = v0[125];
  (*(v0[31] + 56))(v0[37], 1, 1, v0[30]);
  sub_226E62B60();
  if (v16)
  {
    v17 = v0[66];
    v18 = v0[63];
    v19 = v0[37];

    sub_226E15E98(v19, &qword_27D7B6940, &qword_226E68A90);
    sub_226E15E98(v18, &qword_27D7B69C8, &qword_226E688B8);
    sub_226E15E98(v17, &qword_27D7B6858, &qword_226E688C0);

    v20 = v0[1];
LABEL_16:

    return v20();
  }

  sub_226E15E98(v0[37], &qword_27D7B6940, &qword_226E68A90);
  sub_226E632B0();

  v38 = sub_226E34C7C(&qword_280CEA238, MEMORY[0x277CC8098], MEMORY[0x277CC80A0]);
  v39 = swift_task_alloc();
  v0[126] = v39;
  *v39 = v0;
  v39[1] = sub_226E2B41C;
  v40 = v0[38];
  v41 = v0[36];

  return MEMORY[0x282200308](v41, v40, v38);
}

uint64_t sub_226E2B0D0()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[61];
  v4 = v0[56];
  v5 = v0[53];
  v6 = v0[54];

  sub_226E15E98(v3, &qword_27D7B69C8, &qword_226E688B8);
  (*(v6 + 8))(v4, v5);
  sub_226E15E98(v2, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v1, &qword_27D7B6858, &qword_226E688C0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_226E2B41C()
{
  *(*v1 + 1016) = v0;

  if (v0)
  {

    v2 = sub_226E2BB70;
  }

  else
  {
    v2 = sub_226E2B544;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E2B544()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[96];
    v5 = v0[95];
    v6 = v0[90];
    v7 = v0[88];
    (*(v0[39] + 8))(v0[40], v0[38]);

    v4(v6, v5, v7);
    v8 = sub_226E63850();
    sub_226E63880();
    v9 = sub_226E63CC0();
    if (sub_226E63D70())
    {
      v11 = v0[42];
      v10 = v0[43];
      v12 = v0[41];

      sub_226E638B0();

      if ((*(v11 + 88))(v10, v12) == *MEMORY[0x277D85B00])
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[42] + 8))(v0[43], v0[41]);
        v13 = "";
      }

      v40 = v0[101];
      v39 = v0[90];
      v37 = v0[99];
      v38 = v0[88];
      v32 = v0[82];
      v36 = v0[80];
      v28 = v0[66];
      v29 = v0[63];
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_226E63810();
      _os_signpost_emit_with_name_impl(&dword_226DD4000, v8, v9, v34, "FinanceKitDateStore:streamTransactions", v13, v33, 2u);
      MEMORY[0x22AA8E1B0](v33, -1, -1);

      v37(v32, v36);
      v31 = v38;
      v30 = v39;
    }

    else
    {
      v40 = v0[101];
      v23 = v0[99];
      v24 = v0[90];
      v25 = v0[88];
      v26 = v0[82];
      v27 = v0[80];
      v28 = v0[66];
      v29 = v0[63];

      v23(v26, v27);
      v30 = v24;
      v31 = v25;
    }

    v40(v30, v31);
    sub_226E15E98(v29, &qword_27D7B69C8, &qword_226E688B8);
    sub_226E15E98(v28, &qword_27D7B6858, &qword_226E688C0);

    v35 = v0[1];

    return v35();
  }

  else
  {
    (*(v3 + 32))(v0[35], v1, v2);
    v14 = sub_226E62C10();
    v0[128] = v14;
    v15 = sub_226E62C00();
    v0[129] = v15;
    v16 = sub_226E62BF0();
    v0[130] = v16;
    v17 = swift_task_alloc();
    v0[131] = v17;
    *v17 = v0;
    v17[1] = sub_226E2BF34;
    v18 = v0[111];
    v19 = v0[105];
    v20 = v0[103];
    v21 = v0[66];

    return sub_226E2E68C(v14, v15, v16, v20, v19, v18, v21);
  }
}

uint64_t sub_226E2BB70()
{
  *(v0 + 136) = *(v0 + 1016);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_226E2BC04, 0, 0);
}

uint64_t sub_226E2BC04()
{
  v1 = v0[66];
  v2 = v0[63];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];

  (*(v4 + 8))(v3, v5);
  sub_226E15E98(v2, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v1, &qword_27D7B6858, &qword_226E688C0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226E2BF34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1056) = a1;
  *(v3 + 1064) = v1;

  if (v1)
  {

    v4 = sub_226E2D5A4;
  }

  else
  {
    v4 = sub_226E2C0E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226E2C0E0()
{
  v95 = v0;
  v1 = sub_226E62BF0();
  v2 = *(v1 + 16);
  v93 = v0;
  if (v2)
  {
    v3 = v0[31];
    v0[18] = MEMORY[0x277D84F90];
    sub_226E217DC(0, v2, 0);
    v4 = v0[18];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v91 = *(v3 + 72);
    v6 = *(v3 + 16);
    do
    {
      v8 = v0[31];
      v7 = v0[32];
      v9 = v0[30];
      v6(v7, v5, v9);
      v10 = sub_226E635B0();
      v12 = v11;
      (*(v8 + 8))(v7, v9);
      v0[18] = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226E217DC((v13 > 1), v14 + 1, 1);
        v4 = v0[18];
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v5 += v91;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v16 = v0;
  v17 = *(sub_226E62C10() + 16);

  v18 = *(sub_226E62C00() + 16);

  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
  }

  else
  {
    v20 = v16[132];
    v16[13] = 0;
    v16[14] = 0xE000000000000000;
    sub_226E63E70();

    v16[11] = 0x3D73657461647075;
    v16[12] = 0xE800000000000000;
    v17 = v16;
    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  v21 = sub_226E63DE0();
LABEL_11:
  v17[19] = v21;
  v22 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v22);

  MEMORY[0x22AA8D010](0x736574656C656420, 0xE90000000000003DLL);
  v17[20] = *(v4 + 16);
  v23 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v23);

  v24 = MEMORY[0x22AA8D010](0x6F686563616C7020, 0xED00003D7265646CLL);
  v27 = &v19[-v21];
  if (__OFSUB__(v19, v21))
  {
    __break(1u);
    return MEMORY[0x282200308](v24, v25, v26);
  }

  v28 = v93[108];
  v29 = v93[107];
  v30 = v93[69];
  v31 = v93[67];
  v93[21] = v27;
  v32 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v32);

  v33 = v93[11];
  v34 = v93[12];
  v28(v30, v29, v31);

  v35 = sub_226E638C0();
  v36 = sub_226E63CB0();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v93[110];
  v39 = v93[69];
  v40 = v93[67];
  v92 = v34;
  v88 = v33;
  if (v37)
  {
    v41 = v33;
    v42 = swift_slowAlloc();
    v85 = v38;
    v43 = swift_slowAlloc();
    v94[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_226E1FC98(v41, v34, v94);
    _os_log_impl(&dword_226DD4000, v35, v36, "FinanceKitDataStore : batch transactions %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x22AA8E1B0](v43, -1, -1);
    MEMORY[0x22AA8E1B0](v42, -1, -1);

    v85(v39, v40);
  }

  else
  {

    v38(v39, v40);
  }

  v44 = v93[133];
  v45 = v93[47];
  v46 = v93[29];
  sub_226E62C20();
  v47 = (*((*MEMORY[0x277D85000] & *v46) + 0x68))(v45);
  v49 = v93[132];
  v50 = v93[46];
  v51 = v93[47];
  v52 = v93[45];
  if (!v44)
  {
    v57 = v47;
    v58 = v48;
    v83 = v93[96];
    v59 = v93[91];
    v77 = v93[88];
    v80 = v93[95];
    v60 = v93[25];
    (*(v50 + 8))(v51, v52);
    v60(v49, v4, v57, v58);

    v83(v59, v80, v77);

    sub_226E63820();
    v61 = sub_226E63850();
    v78 = sub_226E63CE0();

    v62 = sub_226E63D70();
    v63 = v93[101];
    v64 = v93[99];
    v81 = v93[88];
    v84 = v93[91];
    v65 = v93[83];
    v66 = v93[80];
    v67 = v93[34];
    v90 = v93[35];
    v87 = v93[33];
    if (v62)
    {
      v68 = swift_slowAlloc();
      v74 = v63;
      v69 = swift_slowAlloc();
      v94[0] = v69;
      *v68 = 136315138;
      v70 = sub_226E1FC98(v88, v92, v94);

      *(v68 + 4) = v70;
      v71 = sub_226E63810();
      _os_signpost_emit_with_name_impl(&dword_226DD4000, v61, v78, v71, "FinanceKitDateStore:transactionUpdates", "%s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x22AA8E1B0](v69, -1, -1);
      MEMORY[0x22AA8E1B0](v68, -1, -1);

      v64(v65, v66);
      v74(v84, v81);
    }

    else
    {

      v64(v65, v66);
      v63(v84, v81);
    }

    (*(v67 + 8))(v90, v87);
    v72 = sub_226E34C7C(&qword_280CEA238, MEMORY[0x277CC8098], MEMORY[0x277CC80A0]);
    v73 = swift_task_alloc();
    v93[126] = v73;
    *v73 = v93;
    v73[1] = sub_226E2B41C;
    v25 = v93[38];
    v24 = v93[36];
    v26 = v72;

    return MEMORY[0x282200308](v24, v25, v26);
  }

  v86 = v93[63];
  v89 = v93[66];
  v53 = v93[39];
  v79 = v93[38];
  v82 = v93[40];
  v54 = v93[34];
  v76 = v93[35];
  v75 = v93[33];

  (*(v50 + 8))(v51, v52);
  (*(v54 + 8))(v76, v75);
  (*(v53 + 8))(v82, v79);
  sub_226E15E98(v86, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v89, &qword_27D7B6858, &qword_226E688C0);

  v55 = v93[1];

  return v55();
}

uint64_t sub_226E2CBE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E2CEBC()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 528);
  v3 = *(v0 + 504);
  v4 = *(v0 + 488);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 400);

  (*(v6 + 8))(v5, v7);
  sub_226E15E98(v4, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v3, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v2, &qword_27D7B6858, &qword_226E688C0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1 == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_226E2D234()
{
  v11 = v0[66];
  v1 = v0[63];
  v2 = v0[61];
  v3 = v0[56];
  v4 = v0[53];
  v5 = v0[54];
  v6 = v0[51];
  v7 = v0[52];
  v8 = v0[50];

  (*(v6 + 8))(v7, v8);
  sub_226E15E98(v2, &qword_27D7B69C8, &qword_226E688B8);
  (*(v5 + 8))(v3, v4);
  sub_226E15E98(v1, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v11, &qword_27D7B6858, &qword_226E688C0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226E2D5A4()
{
  v1 = v0[66];
  v2 = v0[63];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_226E15E98(v2, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v1, &qword_27D7B6858, &qword_226E688C0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226E2D8F4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = MEMORY[0x28223BE20](v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = MEMORY[0x277D84F90];
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, *(v25 + 16) + 1, 1);
          v25 = v42;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v30(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t sub_226E2DC00(uint64_t a1)
{
  v2 = sub_226E635C0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_226E62F70();
}

uint64_t FinanceStore.isTokenUpdated(savedToken:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C8, &qword_226E688B8);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_226E2DD9C;

  return sub_226E323C0(v2);
}

uint64_t sub_226E2DD9C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_226E2DF40;
  }

  else
  {
    v2 = sub_226E2DEB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E2DEB0()
{
  v1 = v0[3];
  v2 = sub_226E34034(v0[2], v1);
  sub_226E15E98(v1, &qword_27D7B69C8, &qword_226E688B8);

  v3 = v0[1];

  return v3(v2 & 1);
}

uint64_t sub_226E2DF40()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_226E2E164(uint64_t a1, uint64_t a2, void *aBlock, const void *a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(a4);
  v6[3] = _Block_copy(a5);
  if (a1)
  {
    v13 = sub_226E639C0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v6[4] = v15;
  sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
  v16 = sub_226E63AF0();
  v6[5] = v16;
  v17 = swift_allocObject();
  v6[6] = v17;
  *(v17 + 16) = v11;
  v18 = swift_allocObject();
  v6[7] = v18;
  *(v18 + 16) = v12;
  a6;
  v19 = swift_task_alloc();
  v6[8] = v19;
  *v19 = v6;
  v19[1] = sub_226E2E31C;

  return sub_226E270E0(v13, v15, v16, sub_226E34B4C, v17, sub_226E34B54, v18);
}

uint64_t sub_226E2E31C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_226E63450();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

void sub_226E2E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_226E202A4(0, &qword_280CE9FB0, off_2785CA828);
  v7 = sub_226E63AE0();
  v8 = sub_226E63AE0();
  if (a4)
  {
    v9 = sub_226E639B0();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a5 + 16))(a5, v7, v8);
}

uint64_t sub_226E2E5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
  v4 = sub_226E63AE0();
  v5 = sub_226E63AE0();
  v6 = (*(a3 + 16))(a3, v4, v5);

  return v6;
}

uint64_t sub_226E2E68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[27] = a7;
  v8[28] = v7;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  v9 = sub_226E638E0();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A40, &qword_226E68A10);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v10 = sub_226E62FC0();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v11 = sub_226E635C0();
  v8[39] = v11;
  v8[40] = *(v11 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E2E89C, 0, 0);
}

uint64_t sub_226E2E89C()
{
  v1 = MEMORY[0x277D84F90];
  v0[20] = MEMORY[0x277D84F90];
  v3 = v0[22];
  v2 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A48, &qword_226E68A18);
  v70 = *(v0 + 27);
  inited = swift_initStackObject();
  v65 = v0 + 20;
  v0[46] = inited;
  *(inited + 16) = xmmword_226E685E0;
  *(inited + 32) = v2;
  v66 = inited + 32;
  v5 = swift_task_alloc();
  v5[1] = vextq_s8(v70, v70, 8uLL);

  v6 = sub_226E2D8F4(sub_226E34B5C, v5, v3, MEMORY[0x277CC7678], sub_226E331A0);

  v7 = *(v6 + 16);
  v64 = inited;
  if (v7)
  {
    v8 = v0[40];
    v9 = v0[35];
    sub_226E3315C(0, v7, 0);
    v10 = v1;
    v11 = *(v9 + 16);
    v9 += 16;
    v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v67 = *(v9 + 56);
    v68 = v11;
    v13 = (v9 - 8);
    do
    {
      v14 = v0[38];
      v15 = v0[34];
      v68(v14, v12, v15);
      sub_226E62F60();
      (*v13)(v14, v15);
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_226E3315C((v16 > 1), v17 + 1, 1);
      }

      v18 = v0[45];
      v19 = v0[39];
      *(v10 + 16) = v17 + 1;
      (*(v8 + 32))(v10 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v18, v19);
      v12 += v67;
      --v7;
    }

    while (v7);

    inited = v64;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *(inited + 40) = v10;
  v20 = *(inited + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v66;
    while (1)
    {
      v23 = *(*(v66 + 8 * v21) + 16);
      v24 = v23 == 0;
      if (v23)
      {
        break;
      }

      if (v20 == ++v21)
      {
        v21 = *(inited + 16);
        break;
      }
    }
  }

  else
  {
    v21 = 0;
    v24 = 1;
    v22 = v66;
  }

  if (sub_226E3399C(v21, 0, v24, 2, 0, 1, inited) <= 0)
  {
    goto LABEL_52;
  }

  v25 = *(inited + 16);
  if (v25)
  {
    v26 = 0;
    while (1)
    {
      v27 = *(*(v22 + 8 * v26) + 16);
      v28 = v27 == 0;
      if (v27)
      {
        break;
      }

      if (v25 == ++v26)
      {
        v26 = *(inited + 16);
        break;
      }
    }
  }

  else
  {
    v26 = 0;
    v28 = 1;
  }

  v29 = *(v0[28] + OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator);
  v30 = sub_226E3399C(v26, 0, v28, 2, 0, 1, inited);
  v31 = MEMORY[0x277D84F90];
  v71 = v0;
  if (!v30)
  {
LABEL_51:
    (*(*v29 + 112))(v31);

    v0 = v71;
LABEL_52:
    v56 = v0[21];
    v57 = v0[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A50, &qword_226E68A20);
    v58 = swift_initStackObject();
    v0[47] = v58;
    *(v58 + 16) = xmmword_226E685E0;
    *(v58 + 32) = v56;
    *(v58 + 40) = v57;

    v59 = sub_226E2FD74(v58);
    v0[48] = v59;
    v60 = swift_task_alloc();
    v0[49] = v60;
    *v60 = v0;
    v60[1] = sub_226E2F050;
    v33 = v59;

    return MEMORY[0x282116E18](v33);
  }

  v32 = v30;
  v72 = MEMORY[0x277D84F90];
  v33 = sub_226E217DC(0, v30 & ~(v30 >> 63), 0);
  v34 = *(inited + 16);
  if (v34)
  {
    v35 = 0;
    v36 = v71;
    while (1)
    {
      v37 = *(*(v22 + 8 * v35) + 16);
      v38 = v37 == 0;
      if (v37)
      {
        break;
      }

      if (v34 == ++v35)
      {
        v35 = *(inited + 16);
        break;
      }
    }
  }

  else
  {
    v35 = 0;
    v38 = 1;
    v36 = v71;
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    v40 = 0;
    v62 = (v65 - 6);
    v63 = v29;
    v31 = v72;
    v69 = v36[40];
    while (v39 < v32)
    {
      v41 = __OFADD__(v39++, 1);
      if (v41)
      {
        goto LABEL_56;
      }

      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v35 > 1)
      {
        goto LABEL_58;
      }

      if (v38)
      {
        goto LABEL_62;
      }

      v42 = *(v22 + 8 * v35);
      if (v40 >= *(v42 + 16))
      {
        goto LABEL_59;
      }

      v43 = v32;
      v44 = v36[44];
      v45 = v36[39];
      (*(v69 + 16))(v44, v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v40, v45);
      v46 = sub_226E635B0();
      v48 = v47;
      v33 = (*(v69 + 8))(v44, v45);
      v50 = *(v72 + 16);
      v49 = *(v72 + 24);
      if (v50 >= v49 >> 1)
      {
        v33 = sub_226E217DC((v49 > 1), v50 + 1, 1);
      }

      *(v72 + 16) = v50 + 1;
      v51 = v72 + 16 * v50;
      *(v51 + 32) = v46;
      *(v51 + 40) = v48;
      ++v40;
      v22 = v66;
      if (v40 == *(*(v66 + 8 * v35) + 16))
      {
        ++v35;
        v36 = v71;
        v32 = v43;
        while (1)
        {
          v38 = v35 == 2;
          if (v35 == 2)
          {
            v40 = 0;
            goto LABEL_41;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A68, &qword_226E68A38);
          sub_226E34C18();
          v52 = sub_226E337D0(v62, v35, v64);
          v54 = *v53;

          (v52)(v62, 0);
          v55 = *(v54 + 16);

          if (v55)
          {
            break;
          }

          v41 = __OFADD__(v35++, 1);
          v36 = v71;
          if (v41)
          {
            goto LABEL_61;
          }
        }

        v40 = 0;
        v36 = v71;
      }

      else
      {
        v38 = 0;
        v36 = v71;
        v32 = v43;
      }

LABEL_41:
      if (v39 == v32)
      {
        v29 = v63;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return MEMORY[0x282116E18](v33);
}

uint64_t sub_226E2F050(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A58, &qword_226E68A28);
    swift_arrayDestroy();

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A60, &qword_226E68A30);
    swift_arrayDestroy();
    v4 = sub_226E2FC80;
  }

  else
  {
    v4 = sub_226E2F1D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226E2F1D8()
{
  v98 = v0;
  v77 = 0;
  v1 = v0[35];
  v2 = v0[30];
  v76 = v0[28];
  v95 = v0[25];
  v75 = OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator;
  v3 = (v1 + 56);
  v89 = (v1 + 32);
  v4 = (v0[40] + 8);
  v91 = v1;
  v90 = (v1 + 8);
  v84 = (v2 + 8);
  v85 = (v2 + 16);
  v94 = v0[50];
  v78 = v0[51];
  v74 = MEMORY[0x277D84F90];
  v87 = v4;
  v88 = (v1 + 56);
LABEL_33:
  while (1)
  {
    result = v0[47];
    v67 = *(result + 16);
    if (v77 == v67)
    {
      break;
    }

    if (v77 >= v67)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v68 = result + 8 * v77++;
    v69 = *(v68 + 32);

    v15 = v69;
    v93 = v69;
    if (v69)
    {
      v5 = *(v69 + 16);
      if (!v5)
      {
        v65 = *v3;
        goto LABEL_32;
      }

      v6 = 0;
      while (1)
      {
        v7 = v6 + 1;
        while (1)
        {
          if (v7 - 1 >= v5)
          {
            __break(1u);
            goto LABEL_46;
          }

          v16 = v0[33];
          v17 = v0[34];
          v18 = v0[32];
          v19 = v15 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * (v7 - 1);
          v20 = *(v91 + 16);
          v20(v18, v19, v17);
          v92 = *(v91 + 56);
          v92(v18, 0, 1, v17);
          sub_226E26D94(v18, v16, &qword_27D7B6A40, &qword_226E68A10);
          if ((*(v91 + 48))(v16, 1, v17) == 1)
          {

            goto LABEL_38;
          }

          (*v89)(v0[37], v0[33], v0[34]);
          sub_226E62F60();
          v96 = v7;
          if (*(v94 + 16))
          {
            v21 = sub_226E18C8C(v0[43]);
            v22 = *v4;
            if (v23)
            {
              v24 = v0[43];
              v25 = v0[39];
              v26 = *(*(v94 + 56) + 8 * v21);

              v22(v24, v25);
              goto LABEL_15;
            }
          }

          else
          {
            v22 = *v4;
          }

          v22(v0[43], v0[39]);
          v26 = MEMORY[0x277D84F90];
LABEL_15:
          v27 = v0[42];
          v28 = v0[39];
          sub_226E62FB0();
          v29 = sub_226E635B0();
          v31 = v30;
          v22(v27, v28);
          if (!*(v95 + 16))
          {

LABEL_22:
            v86 = v22;
            v42 = v0[36];
            v43 = v0[37];
            v44 = v0[34];
            v45 = v0[31];
            v46 = v0[29];

            v47 = sub_226E56FC8();
            (*v85)(v45, v47, v46);
            v20(v42, v43, v44);
            v48 = sub_226E638C0();
            v49 = sub_226E63CA0();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = v0[41];
              v51 = v0[36];
              v79 = v0[39];
              v80 = v0[34];
              v82 = v0[31];
              v83 = v0[37];
              v81 = v0[29];
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v97[0] = v53;
              *v52 = 136315138;
              sub_226E62FB0();
              v54 = sub_226E635B0();
              v56 = v55;
              v86(v50, v79);
              v57 = *v90;
              (*v90)(v51, v80);
              v58 = sub_226E1FC98(v54, v56, v97);

              *(v52 + 4) = v58;
              _os_log_impl(&dword_226DD4000, v48, v49, "Warning: Missing account ID  %s or personalizedInsightsEnabled disabled", v52, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v53);
              MEMORY[0x22AA8E1B0](v53, -1, -1);
              MEMORY[0x22AA8E1B0](v52, -1, -1);

              (*v84)(v82, v81);
              result = (v57)(v83, v80);
            }

            else
            {
              v8 = v0[36];
              v9 = v0[37];
              v10 = v0[34];
              v11 = v0[31];
              v12 = v0[29];

              v13 = *v90;
              (*v90)(v8, v10);
              (*v84)(v11, v12);
              result = (v13)(v9, v10);
            }

            v15 = v93;
            v3 = v88;
            goto LABEL_7;
          }

          v32 = sub_226E20614(v29, v31);
          v34 = v33;

          if ((v34 & 1) == 0)
          {
            goto LABEL_22;
          }

          v35 = v0[26];
          v36 = *(*(v95 + 56) + 8 * v32);
          v37 = [v36 accountID];
          v38 = sub_226E639C0();
          v40 = v39;

          v0[18] = v38;
          v0[19] = v40;
          v41 = swift_task_alloc();
          *(v41 + 16) = v0 + 18;
          LOBYTE(v35) = sub_226E31B70(sub_226E34BC0, v41, v35);

          if (v35 & 1) == 0 && ((*((*MEMORY[0x277D85000] & *v0[28]) + 0x90))(v0[37], v0[27]))
          {
            (*(**(v76 + v75) + 104))(v0[37], v36, v26);
            if (v78)
            {
              (*v90)(v0[37], v0[34]);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A58, &qword_226E68A28);
              swift_arrayDestroy();

              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A60, &qword_226E68A30);
              swift_arrayDestroy();

              v73 = v0[1];

              return v73();
            }
          }

          if ([v36 accountType] != 5)
          {
            break;
          }

          (*v90)(v0[37], v0[34]);

          v3 = v88;
          v15 = v93;
LABEL_7:
          v5 = *(v15 + 16);
          v7 = v96 + 1;
          v4 = v87;
          if (v96 == v5)
          {
            v65 = v92;
            goto LABEL_32;
          }
        }

        v59 = v0[37];
        v60 = v0[38];
        v61 = v0[34];
        sub_226E202A4(0, &qword_280CE9FB0, off_2785CA828);
        v20(v60, v59, v61);
        v62 = v36;
        sub_226E23504(v60, v36, v26);
        MEMORY[0x22AA8D0C0]();
        if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_226E63B10();
        }

        v63 = v0[37];
        v64 = v0[34];
        sub_226E63B30();

        result = (*v90)(v63, v64);
        v74 = v0[20];
        v65 = v92;
        v15 = v93;
        v5 = *(v93 + 16);
        v6 = v96;
        v4 = v87;
        v3 = v88;
        if (v5 == v96)
        {
LABEL_32:
          v66 = v0[32];
          v65(v66, 1, 1, v0[34]);
          sub_226E15E98(v66, &qword_27D7B6A40, &qword_226E68A10);
          goto LABEL_33;
        }
      }
    }
  }

  v72 = v0[33];
  v71 = v0[34];

  (*v3)(v72, 1, 1, v71);
LABEL_38:

  v70 = v0[1];

  return v70(v74);
}

uint64_t sub_226E2FC80()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_226E2FD74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_226E635C0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v48 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v33 - v9;
  v10 = sub_226E62FC0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v47 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A40, &qword_226E68A10);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  v20 = 0;
  v50 = v11 + 16;
  v51 = (v11 + 56);
  v49 = v11 + 48;
  v45 = (v6 + 56);
  v46 = (v11 + 32);
  v43 = (v6 + 48);
  v44 = (v11 + 8);
  v39 = v6;
  v42 = (v6 + 32);
  v34 = a1 + 32;
  v35 = a1;
  v52 = MEMORY[0x277D84F90];
  v40 = v5;
  v37 = v16;
  while (1)
  {
    v31 = *(v35 + 16);
    if (v20 == v31)
    {
      break;
    }

    if (v20 >= v31)
    {
      goto LABEL_22;
    }

    v32 = v20 + 1;
    v30 = *(v34 + 8 * v20);

    v20 = v32;
    if (v30)
    {
      v36 = v32;
      v21 = *(v30 + 16);
      if (v21)
      {
        v22 = 0;
        v41 = v30;
        while (v22 < v21)
        {
          (*(v11 + 16))(v16, v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v10);
          (*(v11 + 56))(v16, 0, 1, v10);
          sub_226E26D94(v16, v19, &qword_27D7B6A40, &qword_226E68A10);
          if ((*(v11 + 48))(v19, 1, v10) == 1)
          {
            goto LABEL_20;
          }

          v23 = v47;
          (*v46)(v47, v19, v10);
          sub_226E62F60();
          (*v45)(v4, 0, 1, v5);
          (*v44)(v23, v10);
          if ((*v43)(v4, 1, v5) == 1)
          {
            result = sub_226E15E98(v4, &qword_27D7B6940, &qword_226E68A90);
          }

          else
          {
            v24 = *v42;
            v25 = v38;
            (*v42)(v38);
            (v24)(v48, v25, v5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_226E32EB8(0, v52[2] + 1, 1, v52);
            }

            v27 = v52[2];
            v26 = v52[3];
            if (v27 >= v26 >> 1)
            {
              v52 = sub_226E32EB8((v26 > 1), v27 + 1, 1, v52);
            }

            v28 = v52;
            v52[2] = v27 + 1;
            v29 = v28 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27;
            v5 = v40;
            result = (v24)(v29, v48, v40);
            v30 = v41;
            v16 = v37;
          }

          ++v22;
          v21 = *(v30 + 16);
          if (v22 == v21)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

LABEL_14:
      (*v51)(v16, 1, 1, v10);
      result = sub_226E15E98(v16, &qword_27D7B6A40, &qword_226E68A10);
      v20 = v36;
    }
  }

  (*v51)(v19, 1, 1, v10);
LABEL_20:

  return v52;
}

uint64_t sub_226E30320(uint64_t a1)
{
  sub_226E63380();
  swift_allocObject();
  sub_226E63370();
  sub_226E62B30();
  sub_226E34C7C(&unk_280CEA240, MEMORY[0x277CC6610], MEMORY[0x277CC6618]);
  v2 = sub_226E63360();
  v4 = v3;

  if (!v1)
  {
    v6 = sub_226E634F0();
    sub_226E3437C(v2, v4);
    return v6;
  }

  return result;
}

uint64_t sub_226E30414@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 && (v5 = sub_226E634B0(), v6 >> 60 != 15))
  {
    v9 = v5;
    v10 = v6;
    sub_226E63350();
    swift_allocObject();
    sub_226E63340();
    v11 = sub_226E62B30();
    sub_226E34C7C(&qword_27D7B69F8, MEMORY[0x277CC6610], MEMORY[0x277CC6628]);
    sub_226E63330();
    if (v3)
    {

      return sub_226E343D0(v9, v10);
    }

    else
    {
      sub_226E343D0(v9, v10);

      return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    }
  }

  else
  {
    v7 = sub_226E62B30();
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t sub_226E30590(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_226E635C0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_226E62E60();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = sub_226E630C0();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A00, &qword_226E68938);
  v1[13] = swift_task_alloc();
  v5 = sub_226E63080();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A08, &qword_226E68940);
  v1[17] = swift_task_alloc();
  v6 = sub_226E62FF0();
  v1[18] = v6;
  v1[19] = *(v6 - 8);
  v1[20] = swift_task_alloc();
  v7 = sub_226E63060();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();
  v8 = sub_226E638E0();
  v1[24] = v8;
  v1[25] = *(v8 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E3090C, 0, 0);
}

uint64_t sub_226E3090C(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[24];
  v4 = v1[25];
  v5 = sub_226E56FC8();
  v1[29] = v5;
  v6 = *(v4 + 16);
  v1[30] = v6;
  v1[31] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_226E638C0();
  v8 = sub_226E63C90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226DD4000, v7, v8, "FinanceKitDataStore : fetching accounts", v9, 2u);
    MEMORY[0x22AA8E1B0](v9, -1, -1);
  }

  v10 = v1[28];
  v11 = v1[24];
  v12 = v1[25];
  v13 = v1[17];

  v14 = *(v12 + 8);
  v1[32] = v14;
  v14(v10, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A10, &qword_226E68948);
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_226E62FE0();
  v16 = swift_task_alloc();
  v1[33] = v16;
  *v16 = v1;
  v16[1] = sub_226E30AFC;
  v17 = v1[23];
  v18 = v1[20];

  return MEMORY[0x282116D98](v17, v18);
}

uint64_t sub_226E30AFC()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[19] + 8))(v2[20], v2[18]);
  if (v0)
  {
    v3 = sub_226E31414;
  }

  else
  {
    v3 = sub_226E30C64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E30C64()
{
  v1 = v0[13];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A18, qword_226E68958);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_226E63070();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_226E30D7C;
  v4 = v0[16];
  v5 = v0[12];

  return MEMORY[0x282116DE0](v5, v4);
}

uint64_t sub_226E30D7C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_226E31638;
  }

  else
  {
    v2 = sub_226E30E90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_226E30E90()
{
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[12];
  v6 = sub_226E63050();
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v8 = sub_226E2D8F4(sub_226E343E4, v7, v6, MEMORY[0x277CC6F70], sub_226E33118);

  v1(v3, v2, v4);

  v9 = sub_226E638C0();
  v10 = sub_226E63C90();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v8 + 16);

    _os_log_impl(&dword_226DD4000, v9, v10, "FinanceKitDataStore : fetched accounts count = %ld", v11, 0xCu);
    MEMORY[0x22AA8E1B0](v11, -1, -1);
  }

  else
  {
  }

  v12 = v64;
  (*(v64 + 256))(*(v64 + 216), *(v64 + 192));
  v63 = *(v8 + 16);
  if (v63)
  {
    v13 = *(v64 + 56);
    v14 = *(v64 + 32);
    result = sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
    v16 = 0;
    v61 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v60 = (v14 + 8);
    v62 = v13;
    v59 = (v13 + 8);
    v17 = MEMORY[0x277D84F98];
    v58 = v8;
    while (1)
    {
      if (v16 >= *(v8 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v22 = v12[8];
      v21 = v12[9];
      v23 = v12[5];
      v24 = v12[6];
      v25 = v12[3];
      v65 = v16;
      v26 = *(v62 + 16);
      v26(v21, v61 + *(v62 + 72) * v16, v24);
      sub_226E62E40();
      v27 = sub_226E635B0();
      v29 = v28;
      (*v60)(v23, v25);
      v26(v22, v21, v24);
      v30 = v27;
      v31 = FHAccount.init(from:)(v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_226E20614(v27, v29);
      v34 = v17[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_26;
      }

      v38 = v33;
      if (v17[3] >= v37)
      {
        v12 = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = result;
          sub_226E33664();
          result = v45;
        }
      }

      else
      {
        sub_226E333C0(v37, isUniquelyReferenced_nonNull_native);
        result = sub_226E20614(v27, v29);
        v12 = v64;
        if ((v38 & 1) != (v39 & 1))
        {

          return sub_226E64010();
        }
      }

      v40 = v12[9];
      v41 = v12[6];
      if (v38)
      {
        v18 = result;

        v19 = v17[7];
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = v31;

        result = (*v59)(v40, v41);
      }

      else
      {
        v17[(result >> 6) + 8] |= 1 << result;
        v42 = (v17[6] + 16 * result);
        *v42 = v30;
        v42[1] = v29;
        *(v17[7] + 8 * result) = v31;
        result = (*v59)(v40, v41);
        v43 = v17[2];
        v36 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v36)
        {
          goto LABEL_27;
        }

        v17[2] = v44;
      }

      v16 = v65 + 1;
      v8 = v58;
      if (v63 == v65 + 1)
      {
        goto LABEL_19;
      }
    }
  }

  v17 = MEMORY[0x277D84F98];
LABEL_19:
  v47 = v12[22];
  v46 = v12[23];
  v57 = v12[21];
  v48 = v12[16];
  v49 = v12;
  v52 = v12 + 14;
  v51 = v12[14];
  v50 = v52[1];
  v53 = v49[12];
  v54 = v49[10];
  v55 = v49[11];

  (*(v50 + 8))(v48, v51);
  (*(v47 + 8))(v46, v57);
  (*(v55 + 8))(v53, v54);

  v56 = v49[1];

  return v56(v17);
}

uint64_t sub_226E31414()
{
  v1 = *(v0 + 272);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 232), *(v0 + 192));
  v2 = v1;
  v3 = sub_226E638C0();
  v4 = sub_226E63CA0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_226DD4000, v3, v4, "Failed to retrive accounts : %@", v5, 0xCu);
    sub_226E15E98(v6, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v6, -1, -1);
    MEMORY[0x22AA8E1B0](v5, -1, -1);
  }

  v9 = *(v0 + 256);
  v10 = *(v0 + 208);
  v11 = *(v0 + 192);

  v9(v10, v11);
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226E31638()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 288);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 232), *(v0 + 192));
  v5 = v4;
  v6 = sub_226E638C0();
  v7 = sub_226E63CA0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226DD4000, v6, v7, "Failed to retrive accounts : %@", v8, 0xCu);
    sub_226E15E98(v9, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v9, -1, -1);
    MEMORY[0x22AA8E1B0](v8, -1, -1);
  }

  v12 = *(v0 + 256);
  v13 = *(v0 + 208);
  v14 = *(v0 + 192);

  v12(v13, v14);
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_226E31894(uint64_t a1)
{
  v25 = a1;
  v24 = sub_226E632A0();
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_226E62C80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_226E630B0();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v27 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v26 = v4 + 16;
    v11 = (v4 + 8);
    v21 = result;
    v22 = (v1 + 8);
    v20 = v9;
    while (v10 < *(v8 + 16))
    {
      (*(v4 + 16))(v6, v27 + *(v4 + 72) * v10, v3);
      if (sub_226E62C60())
      {
        v12 = sub_226E62C70();
        v14 = v13;
        v15 = v23;
        sub_226E62D90();
        v16 = sub_226E63280();
        v18 = v17;
        (*v22)(v15, v24);
        if (v12 == v16 && v14 == v18)
        {

          (*v11)(v6, v3);
LABEL_13:

          return 1;
        }

        v19 = sub_226E63FF0();

        result = (*v11)(v6, v3);
        v9 = v20;
        v8 = v21;
        if (v19)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = (*v11)(v6, v3);
      }

      if (v9 == ++v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_226E31B70(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_226E31CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_226E63590();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_226E53C0C() & 1) != 0 && (v8 = *sub_226E553A8(), v9 = sub_226E639B0(), v10 = [v8 BOOLForKey_], v8, v9, v10))
  {
    v11 = *(v17 + 56);

    return v11(a1, 1, 1, v5);
  }

  else
  {
    sub_226E63570();
    v13 = sub_226E63530();
    (*(v17 + 8))(v7, v5);
    v14 = FHDateFromNumberOfDays(v13, -365);

    if (v14)
    {
      sub_226E63560();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    (*(v17 + 56))(v4, v15, 1, v5);
    return sub_226E26D94(v4, a1, &qword_27D7B6858, &qword_226E688C0);
  }
}

BOOL sub_226E31EF4(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_226E63590();
  v26 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = sub_226E62E70();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v24 = a1;
  sub_226E62F00();
  (*(v13 + 104))(v16, *MEMORY[0x277CC6FE0], v12);
  sub_226E34C7C(&qword_27D7B6A20, MEMORY[0x277CC7048], MEMORY[0x277CC7058]);
  sub_226E63AC0();
  sub_226E63AC0();
  v19 = *(v13 + 8);
  v19(v16, v12);
  v19(v18, v12);
  if (v28 != v27)
  {
    return 0;
  }

  sub_226E1A598(v25, v5, &qword_27D7B6858, &qword_226E688C0);
  v20 = v26;
  if ((*(v26 + 48))(v5, 1, v6) != 1)
  {
    (*(v20 + 32))(v11, v5, v6);
    sub_226E62EF0();
    v21 = sub_226E63540();
    v22 = *(v20 + 8);
    v22(v9, v6);
    v22(v11, v6);
    return (v21 & 1) == 0;
  }

  sub_226E15E98(v5, &qword_27D7B6858, &qword_226E688C0);
  return 1;
}

id FinanceKitDataStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitDataStore.init()()
{
  v1 = OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator;
  type metadata accessor for TransactionBiomeStreamDonator();
  sub_226E48FC8(v4);
  *&v0[v1] = sub_226E48FE0(v4);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FinanceKitDataStore();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FinanceKitDataStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitDataStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226E323C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_226E630F0();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C0, &qword_226E688B0);
  v2[12] = swift_task_alloc();
  v4 = sub_226E630A0();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E32514, 0, 0);
}

uint64_t sub_226E32514()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69F0, &qword_226E68908);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_226E63090();
  v6 = MEMORY[0x277CC7C08];
  v0[5] = v3;
  v0[6] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_226E32660;
  v9 = v0[11];

  return MEMORY[0x282116DF0](v9, v0 + 2);
}

uint64_t sub_226E32660()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_226E32850;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v3 = sub_226E3277C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E3277C(uint64_t a1)
{
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  sub_226E630E0();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v1[1];

  return v8();
}

uint64_t sub_226E32850()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226E328F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_226E1A614;

  return v6();
}

uint64_t sub_226E329DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_226E17C50;

  return v7();
}

uint64_t sub_226E32AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_226E1A598(a3, v23 - v10, &qword_27D7B6870, &qword_226E683B0);
  v12 = sub_226E63B80();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226E15E98(v11, &qword_27D7B6870, &qword_226E683B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_226E63B70();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_226E63B40();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_226E639E0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);

    return v21;
  }

LABEL_8:
  sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_226E32DC0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E1C5F8;

  return v6(a1);
}

void *sub_226E32EB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6948, &qword_226E68A40);
  v10 = *(sub_226E635C0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_226E635C0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_226E33090(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_226E33118(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226E331E4(a1, a2, a3, *v3, &qword_27D7B6A30, &unk_226E68A00, MEMORY[0x277CC6F70]);
  *v3 = result;
  return result;
}

void *sub_226E3315C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226E331E4(a1, a2, a3, *v3, &qword_27D7B6948, &qword_226E68A40, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_226E331A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226E331E4(a1, a2, a3, *v3, &qword_27D7B6A78, &qword_226E68A48, MEMORY[0x277CC7678]);
  *v3 = result;
  return result;
}

void *sub_226E331E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_226E333C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A28, &qword_226E689F8);
  v35 = v4;
  result = sub_226E63F60();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_226E33664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A28, &qword_226E689F8);
  v2 = *v0;
  v3 = sub_226E63F50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t (*sub_226E337D0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    *result = *(a3 + 8 * a2 + 32);

    return sub_226E33838;
  }

  __break(1u);
  return result;
}

void *sub_226E33840(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_226E3399C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4 != result)
  {
    v7 = result;
    if (a4 >= result)
    {
      if (result < 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a7 + 16);
      if (v8 <= result)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (a3)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v12 = *(*(a7 + 8 * result + 32) + 16);
      result = v12 - a2;
      if (__OFSUB__(v12, a2))
      {
        goto LABEL_45;
      }

      v10 = 1;
      a2 = a5;
      a3 = a6;
      v11 = a4;
      a4 = v7;
    }

    else
    {
      if (a4 < 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = *(a7 + 16);
      if (v8 <= a4)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a6)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v9 = *(*(a7 + 8 * a4 + 32) + 16);
      result = a5 - v9;
      if (__OFSUB__(a5, v9))
      {
        goto LABEL_43;
      }

      v10 = -1;
      v11 = v7;
    }

    v13 = a4 + 1;
    if (a4 + 1 >= v11)
    {
LABEL_27:
      if (a3)
      {
        return result;
      }

      if (v11 < 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v11 >= v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v16 = __OFADD__(result, a2 * v10);
      result += a2 * v10;
      if (!v16)
      {
        return result;
      }

      __break(1u);
    }

    else
    {
      v14 = a7 + 8 * a4 + 40;
      while (v13 < v8)
      {
        v15 = *(*v14 + 16) * v10;
        v16 = __OFADD__(result, v15);
        result += v15;
        if (v16)
        {
          goto LABEL_34;
        }

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        ++v13;
        v14 += 8;
        if (v17 >= v11)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (a3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a4 < 0)
  {
    goto LABEL_39;
  }

  if (*(a7 + 16) <= a4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = a5 - a2;
  if (__OFSUB__(a5, a2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

void sub_226E33AFC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v47 = v2;
  if (v2 && (v3 = [v2 passesOfStyles_]) != 0)
  {
    v4 = v3;
    sub_226E202A4(0, &qword_280CE9F90, 0x277D37F98);
    v5 = sub_226E63AF0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v54 = v5 & 0xC000000000000001;
  v55 = v5 & 0xFFFFFFFFFFFFFF8;
  v50 = a1;
  v51 = v5 >> 62;
  v12 = FHRelativeDBDirectoryName;
  v48 = v10;
  v49 = a1 + 64;
  while (v9)
  {
    v13 = v9;
LABEL_16:
    v9 = (v13 - 1) & v13;
    if (v5)
    {
      v15 = *(*(a1 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v13)))));
      v52 = (v13 - 1) & v13;
      if (v51)
      {
        v16 = sub_226E63DE0();
      }

      else
      {
        v16 = *(v55 + 16);
      }

      v56 = v15;

      if (v16)
      {
        v17 = 0;
        v53 = v16;
        while (1)
        {
          if (v54)
          {
            v18 = MEMORY[0x22AA8D480](v17, v5);
          }

          else
          {
            if (v17 >= *(v55 + 16))
            {
              goto LABEL_59;
            }

            v18 = *(v5 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_58;
          }

          v21 = [v18 v12[336]];
          if (v21)
          {
            v22 = v21;
            v23 = [v21 isPeerPaymentPass];

            if (v23)
            {
              if ([v56 accountType] == 1)
              {
                break;
              }
            }
          }

          v24 = [v19 v12[336]];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 isAppleCardPass];

            if (v26)
            {
              if ([v56 accountType] == 2)
              {
                break;
              }
            }
          }

          v27 = v5;
          v28 = [v19 v12[336]];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 primaryAccountIdentifier];

            v31 = sub_226E639C0();
            v33 = v32;
          }

          else
          {
            v31 = 0;
            v33 = 0;
          }

          v34 = [v56 externalAccountID];
          v35 = sub_226E639C0();
          v37 = v36;

          if (v33)
          {
            if (v31 == v35 && v33 == v37)
            {
              v5 = v27;

              goto LABEL_45;
            }

            v38 = sub_226E63FF0();

            if (v38)
            {
              v5 = v27;
LABEL_45:

              v12 = FHRelativeDBDirectoryName;
LABEL_46:
              v39 = [v19 v12[336]];
              if (v39)
              {
                v40 = v39;
                v41 = [v39 devicePrimaryPaymentApplication];
                v42 = v41;
                if (v41)
                {
                  v43 = v41;
                  v44 = [v43 dpanSuffix];
                  [v56 setDpanSuffix_];

                  v45 = [v43 virtualCardSuffix];
                  [v56 setVirtualCardSuffix_];
                }

                v46 = [v40 primaryAccountNumberSuffix];
                if (!v46)
                {
                  sub_226E639C0();
                  v46 = sub_226E639B0();
                }

                [v56 setFpanSuffix_];
              }

              else
              {
              }

              goto LABEL_9;
            }
          }

          else
          {
          }

          v5 = v27;
          v12 = FHRelativeDBDirectoryName;
          ++v17;
          if (v20 == v53)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_46;
      }

LABEL_8:

LABEL_9:
      v6 = v49;
      a1 = v50;
      v10 = v48;
      v9 = v52;
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return;
    }

    v13 = *(v6 + 8 * v14);
    ++v11;
    if (v13)
    {
      v11 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t sub_226E34034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C8, &qword_226E688B8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = sub_226E62B30();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = *(v11 + 48);
  if (v17(a1, 1, v10) == 1 && v17(a2, 1, v10) == 1)
  {
    v18 = 0;
  }

  else
  {
    sub_226E1A598(a1, v9, &qword_27D7B69C8, &qword_226E688B8);
    if (v17(v9, 1, v10) == 1)
    {
      sub_226E15E98(v9, &qword_27D7B69C8, &qword_226E688B8);
      v18 = v17(a2, 1, v10) != 1;
    }

    else
    {
      v19 = v9;
      v20 = *(v11 + 32);
      v20(v16, v19, v10);
      sub_226E1A598(a2, v7, &qword_27D7B69C8, &qword_226E688B8);
      if (v17(v7, 1, v10) == 1)
      {
        (*(v11 + 8))(v16, v10);
        sub_226E15E98(v7, &qword_27D7B69C8, &qword_226E688B8);
        v18 = 0;
      }

      else
      {
        v20(v14, v7, v10);
        sub_226E34C7C(&qword_27D7B6A38, MEMORY[0x277CC6610], MEMORY[0x277CC6620]);
        v21 = sub_226E639A0();
        v22 = *(v11 + 8);
        v22(v14, v10);
        v22(v16, v10);
        v18 = v21 ^ 1;
      }
    }
  }

  return v18 & 1;
}

uint64_t sub_226E3437C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_226E343D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226E3437C(result, a2);
  }

  return result;
}

uint64_t dispatch thunk of FinanceKitDataStore.streamTransactions(since:savedAccounts:transactionHandler:accountHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *((*MEMORY[0x277D85000] & *v7) + 0x58);
  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_226E17C50;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of FinanceKitDataStore.fetchAccounts(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E346F8;

  return v7(a1);
}

uint64_t sub_226E346F8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_226E347F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226E17C50;

  return sub_226E2E164(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_226E348C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E328F4(v2, v3, v4);
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226E349C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E1A614;

  return sub_226E329DC(a1, v4, v5, v6);
}

uint64_t sub_226E34A94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E1A614;

  return sub_226E32DC0(a1, v4);
}

uint64_t sub_226E34BC0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_226E63FF0() & 1;
  }
}

unint64_t sub_226E34C18()
{
  result = qword_27D7B6A70;
  if (!qword_27D7B6A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B6A68, &qword_226E68A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6A70);
  }

  return result;
}

uint64_t sub_226E34C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226E34CC4()
{
  v0 = sub_226E3A188(&unk_283A7A2A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A80, &qword_226E68A70);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_226E34D48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_226E63490();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_226E34DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_url;
  swift_beginAccess();
  return sub_226E1A598(v1 + v3, a1, &qword_27D7B6A98, &qword_226E68A78);
}

uint64_t sub_226E34E1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_url;
  swift_beginAccess();
  sub_226E3A28C(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_226E34EE4()
{
  v1 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionFeatures;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_226E34F30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionFeatures;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id UpcomingPayments.init(accountTypes:transactionTypes:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v50 = a1;
  v51 = a2;
  v4 = sub_226E63490();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A98, &qword_226E68A78);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v44 - v9;
  v10 = sub_226E638E0();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionCadence;
  v13 = sub_226E3A188(&unk_283A7A410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A80, &qword_226E68A70);
  swift_arrayDestroy();
  *&v2[v12] = v13;
  *&v2[OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionKeys] = &unk_283A7A490;
  v14 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_url;
  v44 = v5;
  v15 = *(v5 + 56);
  v49 = v4;
  v15(&v2[OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_url], 1, 1, v4);
  v16 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionFeatures;
  *&v2[OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionFeatures] = 0;
  v52 = type metadata accessor for UpcomingPayments(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = @"ModelResources/upcoming_payments_classifier_v1";
  v20 = sub_226E639B0();
  v21 = [v18 pathForResource:v19 ofType:v20];

  if (v21)
  {
    sub_226E639C0();

    v22 = v47;
    sub_226E63460();

    v15(v22, 0, 1, v49);
    swift_beginAccess();
    sub_226E3A28C(v22, &v3[v14]);
    swift_endAccess();
    type metadata accessor for PredictionFeatures();
    PredictionFeatures.__allocating_init(accountTypes:transactionTypes:)(v50, v51);
    v24 = v23;

    swift_beginAccess();
    v25 = *&v3[v16];
    *&v3[v16] = v24;
  }

  else
  {
    v26 = v7;
    v27 = v44;
    v28 = v49;

    v29 = sub_226E56FC8();
    v31 = v45;
    v30 = v46;
    (*(v45 + 16))(v48, v29, v46);
    v32 = v18;
    v33 = sub_226E638C0();
    v34 = sub_226E63C90();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53[0] = v51;
      *v35 = 136315138;
      v36 = [v32 bundleURL];
      LODWORD(v50) = v34;
      v37 = v36;
      sub_226E63480();

      sub_226E3D208(&qword_27D7B6AA0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v38 = sub_226E63FE0();
      v40 = v39;
      (*(v27 + 8))(v26, v28);
      v41 = sub_226E1FC98(v38, v40, v53);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_226DD4000, v33, v50, "Failed to load model from bundleURL %s", v35, 0xCu);
      v42 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x22AA8E1B0](v42, -1, -1);
      MEMORY[0x22AA8E1B0](v35, -1, -1);

      (*(v31 + 8))(v48, v46);
    }

    else
    {

      (*(v31 + 8))(v48, v30);
    }
  }

  v54.receiver = v3;
  v54.super_class = v52;
  return objc_msgSendSuper2(&v54, sel_init);
}

uint64_t sub_226E35598()
{
  v1 = v0;
  v2 = sub_226E638E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AA8, &qword_226E68A80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = type metadata accessor for IntermediatePrediction(0);
  v74 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v72 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A98, &qword_226E68A78);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_226E63490();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v75 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock[0]) = 1;
  if ((static FinHealthFeatureFlag.isEnabled(_:)(aBlock) & 1) == 0)
  {
    v24 = sub_226E56FC8();
    (*(v3 + 16))(v5, v24, v2);
    v25 = sub_226E638C0();
    v26 = sub_226E63CA0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_226DD4000, v25, v26, "UpcomingPayment batchPredictions: Maps Data Donation feature flag(FinHealthMapsDataDonation) is disabled", v27, 2u);
      MEMORY[0x22AA8E1B0](v27, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return MEMORY[0x277D84F90];
  }

  v19 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity_];
  v71 = sub_226E3A688(v19);
  v20 = objc_opt_self();
  aBlock[4] = sub_226E35EBC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E23500;
  aBlock[3] = &block_descriptor_0;
  v21 = _Block_copy(aBlock);
  v22 = [v20 initWithBuilder_];
  _Block_release(v21);
  v23 = [v19 clearDataWithClauseBuilder_];
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v23);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_226E15E98(v15, &qword_27D7B6A98, &qword_226E68A78);
    return v71;
  }

  v67 = v22;
  v29 = v75;
  (*(v17 + 32))(v75, v15, v16);
  v30 = objc_allocWithZone(FHModel);
  v31 = @"UpcomingPaymentsClassifier";
  v32 = sub_226E63470();
  v68 = [v30 initWithModelURL:v32 modelName:v31];

  v33 = MEMORY[0x277D85000];
  v34 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  if (!v34)
  {

    (*(v17 + 8))(v29, v16);
    return v71;
  }

  v35 = v34;
  v64 = v17;
  v65 = v16;
  v62 = v8;
  v63 = v9;
  v36 = (*((*v33 & *v34) + 0x70))();

  v37 = 1 << *(v36 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v36 + 64);
  v40 = (v37 + 63) >> 6;
  v70 = "ource_identifier";
  v61 = (v74 + 48);

  v41 = 0;
  v42 = v68;
  v69 = v19;
  while (v39)
  {
LABEL_20:
    v44 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v45 = v44 | (v41 << 6);
    v46 = *(*(v36 + 56) + 8 * v45);
    if (*(v46 + 16))
    {
      v47 = (*(v36 + 48) + 16 * v45);
      v48 = v47[1];
      v66 = *v47;

      v49 = sub_226E20614(0xD000000000000017, v70 | 0x8000000000000000);
      if ((v50 & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_226E2233C(*(v46 + 56) + 32 * v49, aBlock);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_14;
      }

      if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      if (v76 <= -9.22337204e18)
      {
        goto LABEL_39;
      }

      if (v76 >= 9.22337204e18)
      {
        goto LABEL_40;
      }

      if (v76 == 4)
      {
        v51 = v42;
        v52 = v62;
        (*((*MEMORY[0x277D85000] & *v1) + 0xB0))(v66, v48, v51, v46);
        if ((*v61)(v52, 1, v63) != 1)
        {
          v53 = v73;
          sub_226E3C6A0(v52, v73);
          if (*(*(v53 + *(v63 + 24)) + 16))
          {
            sub_226E3C760(v53, v72);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v42 = v68;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v71 = sub_226E38E94(0, v71[2] + 1, 1, v71);
            }

            v55 = v71;
            v57 = v71[2];
            v56 = v71[3];
            v58 = v57 + 1;
            if (v57 >= v56 >> 1)
            {
              v66 = v57 + 1;
              v55 = sub_226E38E94((v56 > 1), v57 + 1, 1, v71);
              v58 = v66;
            }

            v55[2] = v58;
            v59 = (*(v74 + 80) + 32) & ~*(v74 + 80);
            v71 = v55;
            sub_226E3C6A0(v72, v55 + v59 + *(v74 + 72) * v57);
            v53 = v73;
          }

          else
          {
            v42 = v68;
          }

          sub_226E3C704(v53);
          goto LABEL_14;
        }

        sub_226E15E98(v52, &qword_27D7B6AA8, &qword_226E68A80);

        v42 = v68;
        v19 = v69;
      }

      else
      {
LABEL_14:

        v19 = v69;
      }
    }
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v40)
    {

      (*(v64 + 8))(v75, v65);

      return v71;
    }

    v39 = *(v36 + 64 + 8 * v43);
    ++v41;
    if (v39)
    {
      v41 = v43;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_226E35EBC(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = @"!=";

    MEMORY[0x22AA8D010](0xD000000000000015, 0x8000000226E733E0);

    v3 = sub_226E639B0();

    [a1 addIntegerClause:v2 fieldName:v3 expression:2];
  }
}

uint64_t sub_226E35FA4(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v48 = sub_226E638E0();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v47 = sub_226E635C0();
  v8 = MEMORY[0x28223BE20](v47);
  v44 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v33 - v11;
  result = MEMORY[0x28223BE20](v10);
  v42 = &v33 - v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v46 = (v13 + 48);
    v38 = (v13 + 16);
    v39 = (v13 + 32);
    v36 = (v3 + 16);
    v37 = (v13 + 8);
    v35 = (v3 + 8);
    v17 = (a1 + 40);
    *&v14 = 136315138;
    v34 = v14;
    v40 = v7;
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;

      sub_226E635A0();
      v20 = v47;
      if ((*v46)(v7, 1, v47) == 1)
      {
        sub_226E15E98(v7, &qword_27D7B6940, &qword_226E68A90);
        v21 = sub_226E56FC8();
        v22 = v41;
        (*v36)(v41, v21, v48);

        v23 = sub_226E638C0();
        v24 = sub_226E63CA0();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v49 = v26;
          *v25 = v34;
          *(v25 + 4) = sub_226E1FC98(v19, v18, &v49);
          _os_log_impl(&dword_226DD4000, v23, v24, "Failed to convert transactionID %s to UUID", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x22AA8E1B0](v26, -1, -1);
          MEMORY[0x22AA8E1B0](v25, -1, -1);
        }

        (*v35)(v22, v48);

        v7 = v40;
      }

      else
      {
        v27 = v42;
        (*v39)(v42, v7, v20);
        v28 = v44;
        (*v38)(v44, v27, v20);
        v29 = v43;
        v30 = v28;
        v31 = v20;
        sub_226E2035C(v43, v30);
        v32 = *v37;
        (*v37)(v29, v31);
        v32(v27, v31);
      }

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  return result;
}

void sub_226E363E8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v242 = a1;
  v243 = a2;
  v254 = a5;
  v234 = sub_226E63030();
  v232 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v230 = &v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AB0, &qword_226E68A88);
  MEMORY[0x28223BE20](v9 - 8);
  v229 = &v215 - v10;
  v11 = sub_226E63040();
  v240 = *(v11 - 8);
  v241 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v236 = &v215 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v238 = &v215 - v14;
  v239 = sub_226E62FD0();
  v237 = *(v239 - 8);
  v15 = MEMORY[0x28223BE20](v239);
  v224 = &v215 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v231 = &v215 - v17;
  v235 = sub_226E63590();
  v233 = *(v235 - 8);
  v18 = MEMORY[0x28223BE20](v235);
  v223 = &v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v227 = &v215 - v20;
  v228 = sub_226E62D70();
  v226 = *(v228 - 8);
  v21 = MEMORY[0x28223BE20](v228);
  v221 = &v215 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v225 = &v215 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  MEMORY[0x28223BE20](v24 - 8);
  v245 = &v215 - v25;
  v26 = sub_226E635C0();
  v246 = *(v26 - 8);
  v247 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v220 = &v215 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v219 = &v215 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v222 = &v215 - v32;
  MEMORY[0x28223BE20](v31);
  v244 = &v215 - v33;
  v34 = sub_226E638E0();
  v35 = *(v34 - 1);
  v36 = MEMORY[0x28223BE20](v34);
  v259 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v249 = &v215 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v248 = &v215 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v253 = &v215 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v215 - v44;
  v273[0] = sub_226E3A188(MEMORY[0x277D84F90]);
  v252 = v5;
  v46 = *(v5 + OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionKeys);

  sub_226E3C7C4(v46, v273, a4);
  v218 = 0;
  v250 = a4;

  v47 = sub_226E56FC8();
  v49 = v35 + 16;
  v48 = *(v35 + 16);
  v256 = v47;
  v257 = v48;
  (v48)(v45);
  v50 = sub_226E638C0();
  v51 = sub_226E63C80();
  v52 = os_log_type_enabled(v50, v51);
  v255 = v34;
  v258 = v35;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    *&v270 = v251;
    *v53 = 136315138;
    swift_beginAccess();

    v54 = a3;
    v55 = sub_226E63970();
    v57 = v56;

    v58 = v55;
    a3 = v54;
    v59 = sub_226E1FC98(v58, v57, &v270);
    v49 = v35 + 16;

    *(v53 + 4) = v59;
    v34 = v255;
    v35 = v258;
    _os_log_impl(&dword_226DD4000, v50, v51, "predictionFeatures: %s", v53, 0xCu);
    v60 = v251;
    __swift_destroy_boxed_opaque_existential_1Tm(v251);
    MEMORY[0x22AA8E1B0](v60, -1, -1);
    MEMORY[0x22AA8E1B0](v53, -1, -1);
  }

  v61 = *(v35 + 8);
  v61(v45, v34);
  swift_beginAccess();
  v62 = v273[0];

  sub_226E38488(v63);

  v64 = sub_226E63950();

  v65 = [a3 predictClassProbabilitiesWithDict_];

  if (!v65)
  {
    v78 = v259;
    v257(v259, v256, v34);
    v79 = sub_226E638C0();
    v80 = sub_226E63CA0();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_226DD4000, v79, v80, "failed to predict due to potential feauture name mismatch", v81, 2u);
      MEMORY[0x22AA8E1B0](v81, -1, -1);
    }

    v61(v78, v34);
    goto LABEL_88;
  }

  sub_226E3CA2C();
  v66 = sub_226E63960();

  v67 = v253;
  v257(v253, v256, v34);

  v68 = sub_226E638C0();
  v69 = sub_226E63C80();

  v70 = os_log_type_enabled(v68, v69);
  v259 = v66;
  v251 = v62;
  v216 = v61;
  v217 = v49;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v270 = v72;
    *v71 = 136315138;
    v73 = sub_226E63970();
    v75 = v61;
    v76 = sub_226E1FC98(v73, v74, &v270);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_226DD4000, v68, v69, "prediction: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    v77 = v72;
    v66 = v259;
    MEMORY[0x22AA8E1B0](v77, -1, -1);
    MEMORY[0x22AA8E1B0](v71, -1, -1);

    v75(v67, v34);
  }

  else
  {

    v61(v67, v34);
  }

  v82 = v66 + 64;
  v83 = 1 << v66[32];
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v66 + 8);
  if (v85)
  {
    v86 = 0;
    v87 = __clz(__rbit64(v85));
    v88 = (v85 - 1) & v85;
    v89 = (v83 + 63) >> 6;
LABEL_18:
    sub_226E3CA78(*(v66 + 6) + 40 * v87, &v264);
    v92 = *(*(v66 + 7) + 8 * v87);
    *(&v266 + 1) = v92;
    v267 = v264;
    v268 = v265;
    v269 = v266;

    v93 = v92;
    v94 = &qword_226E68A98;
    while (v88)
    {
      v95 = v86;
LABEL_26:
      v96 = __clz(__rbit64(v88));
      v88 &= v88 - 1;
      v97 = v96 | (v95 << 6);
      sub_226E3CA78(*(v66 + 6) + 40 * v97, v262);
      v98 = *(*(v66 + 7) + 8 * v97);
      *(&v263 + 1) = v98;
      v264 = v262[0];
      v34 = &v264;
      v265 = v262[1];
      v266 = v263;
      sub_226E1A598(&v267, v262, &qword_27D7B6AC0, &qword_226E68A98);
      v99 = *(&v263 + 1);
      v100 = v98;
      [v99 doubleValue];
      v102 = v101;

      sub_226E1A598(&v264, v260, &qword_27D7B6AC0, &qword_226E68A98);
      v103 = v261;
      [v261 doubleValue];
      v105 = v104;

      sub_226E3CAD4(v260);
      sub_226E3CAD4(v262);
      if (v102 >= v105)
      {
        sub_226E15E98(&v264, &qword_27D7B6AC0, &qword_226E68A98);
      }

      else
      {
        sub_226E15E98(&v267, &qword_27D7B6AC0, &qword_226E68A98);
        v267 = v264;
        v268 = v265;
        v269 = v266;
      }

      v86 = v95;
      v66 = v259;
    }

    while (1)
    {
      v95 = (v86 + 1);
      if (__OFADD__(v86, 1))
      {
        break;
      }

      if (v95 >= v89)
      {

        v270 = v267;
        v271 = v268;
        v272 = v269;
        v34 = v255;
        goto LABEL_29;
      }

      v88 = *&v82[8 * v95];
      ++v86;
      if (v88)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  v90 = 0;
  v89 = (v83 + 63) >> 6;
  while (v89 - 1 != v90)
  {
    v86 = (v90 + 1);
    v91 = *&v66[8 * v90 + 72];
    v85 -= 64;
    ++v90;
    if (v91)
    {
      v88 = (v91 - 1) & v91;
      v87 = __clz(__rbit64(v91)) - v85;
      goto LABEL_18;
    }
  }

  v270 = 0u;
  v271 = 0u;
  v272 = 0u;
LABEL_29:
  sub_226E1A598(&v270, &v267, &qword_27D7B6AC8, qword_226E68AA0);
  if (*(&v268 + 1))
  {

    v264 = v267;
    v265 = v268;
    *&v266 = v269;
    if (swift_dynamicCast())
    {
      v95 = *(&v267 + 1);
      v89 = v267;
      goto LABEL_34;
    }
  }

  else
  {
    sub_226E15E98(&v267, &qword_27D7B6AC8, qword_226E68AA0);
  }

  v95 = 0xED00006E6F697463;
  v89 = 0x69646572705F6F6ELL;
LABEL_34:
  sub_226E1A598(&v270, &v267, &qword_27D7B6AC8, qword_226E68AA0);
  if (*(&v268 + 1))
  {
    v106 = *(&v269 + 1);
    [*(&v269 + 1) doubleValue];
    v108 = v107;

    sub_226E3CAD4(&v267);
  }

  else
  {
    sub_226E15E98(&v267, &qword_27D7B6AC8, qword_226E68AA0);
    v108 = 0.0;
  }

  v94 = *(v252 + OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionCadence);
  if (!v94[2] || (, sub_226E20614(v89, v95), v110 = v109, , (v110 & 1) == 0))
  {

    sub_226E15E98(&v270, &qword_27D7B6AC8, qword_226E68AA0);
    goto LABEL_44;
  }

  if (v108 < 0.66)
  {
    sub_226E15E98(&v270, &qword_27D7B6AC8, qword_226E68AA0);
LABEL_41:

LABEL_42:

LABEL_44:
    v111 = v254;
    v112 = type metadata accessor for IntermediatePrediction(0);
    (*(*(v112 - 8) + 56))(v111, 1, 1, v112);
LABEL_89:

    return;
  }

  if (!*(v250 + 16) || (v113 = sub_226E20614(0x6E5F797469746E65, 0xEB00000000656D61), v114 = v250, (v115 & 1) == 0) || (sub_226E2233C(*(v250 + 56) + 32 * v113, &v267), (swift_dynamicCast() & 1) == 0))
  {
LABEL_81:

    v143 = v249;
    v257(v249, v256, v34);

    v119 = v34;
    v144 = sub_226E638C0();
    v145 = sub_226E63CA0();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&v267 = v147;
      *v146 = 136315138;
      v148 = sub_226E63970();
      v150 = sub_226E1FC98(v148, v149, &v267);

      *(v146 + 4) = v150;
      _os_log_impl(&dword_226DD4000, v144, v145, "Skipping due to empty entity name %s", v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v147);
      MEMORY[0x22AA8E1B0](v147, -1, -1);
      MEMORY[0x22AA8E1B0](v146, -1, -1);

      v151 = v249;
LABEL_87:
      v216(v151, v119);
      sub_226E15E98(&v270, &qword_27D7B6AC8, qword_226E68AA0);
LABEL_88:
      v158 = type metadata accessor for IntermediatePrediction(0);
      (*(*(v158 - 8) + 56))(v254, 1, 1, v158);
      goto LABEL_89;
    }

LABEL_86:

    v151 = v143;
    goto LABEL_87;
  }

  v86 = v264;
  v116 = HIBYTE(*(&v264 + 1)) & 0xFLL;
  if ((*(&v264 + 1) & 0x2000000000000000) == 0)
  {
    v116 = v264 & 0xFFFFFFFFFFFFLL;
  }

  if (!v116)
  {

    goto LABEL_81;
  }

  v253 = *(&v264 + 1);
  if (*(v114 + 16))
  {
    v117 = sub_226E20614(0xD000000000000012, 0x8000000226E73240);
    if (v118)
    {
      sub_226E2233C(*(v250 + 56) + 32 * v117, &v267);
      if (swift_dynamicCast())
      {
        v119 = v34;
        v121 = *(&v264 + 1);
        v120 = v264;
        goto LABEL_59;
      }
    }
  }

LABEL_58:
  v119 = v34;
  v120 = 0;
  v121 = 0xE000000000000000;
LABEL_59:
  v122 = sub_226E63A10();
  v252 = v121;
  if (v122 > 0)
  {
    v86 = v120;
  }

  else
  {
    v121 = v253;
  }

  if (!*(v250 + 16) || (v123 = sub_226E20614(0x79636E6572727563, 0xED000065646F635FLL), v124 = v250, (v125 & 1) == 0) || (sub_226E2233C(*(v250 + 56) + 32 * v123, &v267), (swift_dynamicCast() & 1) == 0))
  {
LABEL_84:

    v143 = v248;
    v257(v248, v256, v119);

    v144 = sub_226E638C0();
    v152 = sub_226E63CA0();

    if (os_log_type_enabled(v144, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *&v267 = v154;
      *v153 = 136315138;
      v155 = sub_226E63970();
      v157 = sub_226E1FC98(v155, v156, &v267);

      *(v153 + 4) = v157;
      _os_log_impl(&dword_226DD4000, v144, v152, "Skipping due to currency code not three character string%s", v153, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v154);
      MEMORY[0x22AA8E1B0](v154, -1, -1);
      MEMORY[0x22AA8E1B0](v153, -1, -1);

      v151 = v248;
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  v249 = v86;
  v215 = v264;
  if (sub_226E63A10() != 3)
  {

    goto LABEL_84;
  }

  if (!*(v124 + 16) || (v126 = sub_226E20614(0x695F656372756F73, 0xE900000000000064), (v127 & 1) == 0))
  {
    sub_226E15E98(&v270, &qword_27D7B6AC8, qword_226E68AA0);

    goto LABEL_41;
  }

  sub_226E2233C(*(v124 + 56) + 32 * v126, &v267);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_226E15E98(&v270, &qword_27D7B6AC8, qword_226E68AA0);

    goto LABEL_42;
  }

  v128 = *(&v264 + 1);
  if (!v94[2] || (v129 = v264, v130 = sub_226E20614(v89, v95), (v131 & 1) == 0))
  {
    sub_226E15E98(&v270, &qword_27D7B6AC8, qword_226E68AA0);

    goto LABEL_88;
  }

  v258 = v121;
  if (!*(v250 + 16) || (v132 = *(v94[7] + 8 * v130), v133 = sub_226E20614(0xD000000000000010, 0x8000000226E73260), (v134 & 1) == 0) || (sub_226E2233C(*(v250 + 56) + 32 * v133, &v267), (swift_dynamicCast() & 1) == 0) || !*(v250 + 16) || (v135 = *&v264, v136 = sub_226E20614(0x615F746E756F6D61, 0xEE00656761726576), (v137 & 1) == 0) || (sub_226E2233C(*(v250 + 56) + 32 * v136, &v267), (swift_dynamicCast() & 1) == 0))
  {
    sub_226E15E98(&v270, &qword_27D7B6AC8, qword_226E68AA0);

LABEL_94:
    v159 = type metadata accessor for IntermediatePrediction(0);
    (*(*(v159 - 8) + 56))(v254, 1, 1, v159);
    goto LABEL_89;
  }

  v138 = *&v264;
  v139 = v245;
  sub_226E635A0();
  if ((*(v246 + 48))(v139, 1, v247) == 1)
  {
    sub_226E15E98(&v270, &qword_27D7B6AC8, qword_226E68AA0);

    v140 = &qword_27D7B6940;
    v141 = &qword_226E68A90;
    v142 = v245;
LABEL_107:
    sub_226E15E98(v142, v140, v141);
    goto LABEL_94;
  }

  (*(v246 + 32))(v244, v245, v247);
  if (!*(v250 + 16))
  {
    goto LABEL_106;
  }

  v160 = sub_226E20614(0xD00000000000001BLL, 0x8000000226E73000);
  if ((v161 & 1) == 0)
  {
    goto LABEL_106;
  }

  sub_226E2233C(*(v250 + 56) + 32 * v160, &v267);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_106;
  }

  v162 = v264;
  if ((v89 != 0x796C68746E6F6DLL || v95 != 0xE700000000000000) && (sub_226E63FF0() & 1) == 0)
  {
    v165 = v135 + v132 * 0x15180uLL;
    goto LABEL_110;
  }

  if (!*(v250 + 16) || (v163 = sub_226E20614(0xD000000000000015, 0x8000000226E732B0), (v164 & 1) == 0) || (sub_226E2233C(*(v250 + 56) + 32 * v163, &v267), !swift_dynamicCast()))
  {
LABEL_106:

    (*(v246 + 8))(v244, v247);
    v140 = &qword_27D7B6AC8;
    v141 = qword_226E68AA0;
    v142 = &v270;
    goto LABEL_107;
  }

  v165 = *&v264;
LABEL_110:
  if (*(v250 + 16) && (v166 = sub_226E20614(0x746361736E617274, 0xEF7364695F6E6F69), (v167 & 1) != 0) && (sub_226E2233C(*(v250 + 56) + 32 * v166, &v267), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD0, &unk_226E68D40), (swift_dynamicCast() & 1) != 0))
  {
    v168 = v264;
  }

  else
  {
    v168 = MEMORY[0x277D84F90];
  }

  v255 = v168;
  v257 = objc_opt_self();
  v169 = swift_allocObject();
  v170 = v258;
  *(v169 + 16) = v249;
  *(v169 + 24) = v170;
  *(v169 + 32) = v129;
  *(v169 + 40) = v128;
  *(v169 + 48) = v138;
  *(v169 + 56) = v165;
  v171 = v243;
  *(v169 + 64) = v242;
  *(v169 + 72) = v171;
  *(v169 + 80) = v162;
  *&v269 = sub_226E3CB28;
  *(&v269 + 1) = v169;
  *&v267 = MEMORY[0x277D85DD0];
  *(&v267 + 1) = 1107296256;
  *&v268 = sub_226E23500;
  *(&v268 + 1) = &block_descriptor_9;
  v172 = _Block_copy(&v267);

  v173 = [v257 initWithBuilder_];
  _Block_release(v172);
  v257 = v173;
  if (!v173)
  {
    goto LABEL_128;
  }

  v256 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity_];
  if (v256)
  {
    [v256 insertOrUpdate:v257 upsert:1];
  }

  if ((*&v138 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_126;
  }

  if (v138 <= -9.22337204e18)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v138 >= 9.22337204e18)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v174 = MEMORY[0x22AA8D350](v138);
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v180 = HIDWORD(v174);
  v216 = HIWORD(v174);
  v245 = (v176 >> 16);
  v248 = HIDWORD(v176);
  v250 = HIWORD(v176);
  LODWORD(v217) = HIWORD(v178);
  v181 = objc_allocWithZone(MEMORY[0x277CCA980]);
  LODWORD(v267) = v175;
  WORD2(v267) = v180;
  WORD3(v267) = v216;
  WORD4(v267) = v177;
  WORD5(v267) = v245;
  WORD6(v267) = v248;
  HIWORD(v267) = v250;
  LOWORD(v268) = v179;
  WORD1(v268) = v217;
  v182 = [v181 initWithDecimal_];
  v183 = [objc_opt_self() defaultDatabaseAmountMultiplier];
  if (v183)
  {
    v184 = v183;

    v185 = [v182 decimalNumberByDividingBy_];
    v259 = v185;

    [v185 decimalValue];
    v186 = v225;
    sub_226E62D80();
    sub_226E63500();
    v187 = sub_226E53234();
    v188 = v222;
    asUUID(rawString:lossy:)(v242, v243, v187, v222);
    v189 = sub_226E62D60();
    v191 = v190;
    v193 = v192;
    v194 = MEMORY[0x22AA8D320](0);
    v197 = MEMORY[0x22AA8D330](v189, v191, v193, v194, v195, v196);
    v198 = v237;
    v199 = MEMORY[0x277CC7788];
    if ((v197 & 1) == 0)
    {
      v199 = MEMORY[0x277CC7790];
    }

    v200 = v231;
    v201 = v239;
    (*(v237 + 104))(v231, *v199, v239);
    v202 = v247;
    v203 = *(v246 + 16);
    v203(v219, v188, v247);
    v203(v220, v244, v202);
    (*(v226 + 16))(v221, v186, v228);
    (*(v198 + 16))(v224, v200, v201);
    v267 = 0u;
    v268 = 0u;
    *&v269 = 0;
    BYTE8(v269) = 1;
    v204 = v233;
    (*(v233 + 16))(v223, v227, v235);
    v205 = sub_226E63390();
    (*(*(v205 - 8) + 56))(v229, 1, 1, v205);
    (*(v232 + 104))(v230, *MEMORY[0x277CC7810], v234);
    v206 = v238;
    sub_226E63020();
    *&v264 = MEMORY[0x277D84FA0];
    sub_226E35FA4(v255, &v264);

    v208 = v240;
    v207 = v241;
    v209 = v236;
    (*(v240 + 16))(v236, v206, v241);
    v210 = v264;
    v211 = v243;

    sub_226E550F0(v242, v211, v209, v210, v254);

    (*(v208 + 8))(v206, v207);
    (*(v198 + 8))(v231, v239);
    v212 = v247;
    v213 = *(v246 + 8);
    v213(v222, v247);
    (*(v204 + 8))(v227, v235);
    (*(v226 + 8))(v225, v228);
    v213(v244, v212);
    sub_226E15E98(&v270, &qword_27D7B6AC8, qword_226E68AA0);
    v214 = type metadata accessor for IntermediatePrediction(0);
    (*(*(v214 - 8) + 56))(v254, 0, 1, v214);

    goto LABEL_89;
  }

LABEL_129:
  __break(1u);
}

unint64_t sub_226E38488(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD8, &qword_226E68B08);
    v2 = sub_226E63F70();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_226E3D250(&v22, v24);
        sub_226E3D250(v24, v25);
        sub_226E3D250(v25, &v23);
        result = sub_226E20614(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_226E3D250(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_226E3D250(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_226E386D0(id result)
{
  if (result)
  {
    return [result addKeyPairsWithJoinType:@"right" leftEntity:@"features_heuristics" rightEntity:@"transactions" joinKey:@"t_identifier"];
  }

  return result;
}

void sub_226E38714(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = @"==";

    MEMORY[0x22AA8D010](0xD000000000000015, 0x8000000226E733E0);

    v3 = sub_226E639B0();

    [a1 addIntegerClause:v2 fieldName:v3 expression:2];
  }
}

uint64_t sub_226E387FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v47 - v9;
  v11 = sub_226E635C0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v47 - v17;
  result = MEMORY[0x28223BE20](v16);
  v21 = v47 - v20;
  if (!a1)
  {
    return result;
  }

  v22 = *(a1 + 16);
  if (!v22)
  {
    return result;
  }

  if (v22 == 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v53 = a4;
  v54 = result;
  sub_226E2233C(a1 + 64, v58);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v52 = a3;
  if (v22 < 3)
  {
    goto LABEL_26;
  }

  v23 = v12;
  v24 = v57;
  v51 = v56;
  sub_226E2233C(a1 + 96, v58);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
  }

  v50 = v24;
  if (v22 == 3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = v57;
  v48 = v56;
  sub_226E2233C(a1 + 128, v58);
  result = swift_dynamicCast();
  v49 = v23;
  if ((result & 1) == 0)
  {
  }

  if (v22 < 5)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v47[1] = v56;
  sub_226E2233C(a1 + 160, v58);
  v26 = swift_dynamicCast();
  v27 = v52;
  v28 = v25;
  if ((v26 & 1) == 0)
  {
  }

  v30 = v56;
  v29 = v57;
  sub_226E635A0();

  v31 = v49;
  if ((*(v49 + 48))(v10, 1, v54) == 1)
  {

    return sub_226E15E98(v10, &qword_27D7B6940, &qword_226E68A90);
  }

  else
  {
    (*(v31 + 32))(v21, v10, v54);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_226E39BC0(v48, v28, v30, v29, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v56;
    swift_endAccess();
    swift_beginAccess();
    v33 = v50;
    v34 = v51;
    if (*(*(v27 + 16) + 16) && (sub_226E20614(v51, v50), (v35 & 1) != 0))
    {
      swift_endAccess();
      v36 = v53;
      swift_beginAccess();
      v37 = *(v36 + 16);
      if (*(v37 + 16) && (v38 = sub_226E20614(v34, v33), (v39 & 1) != 0))
      {
        v40 = *(*(v37 + 56) + 8 * v38);
        swift_endAccess();
        v56 = v40;
      }

      else
      {
        swift_endAccess();
        v56 = MEMORY[0x277D84FA0];
      }

      v41 = v49;
      v42 = v54;
      (*(v49 + 16))(v15, v21, v54);
      sub_226E2035C(v18, v15);
      v43 = *(v41 + 8);
      v43(v18, v42);
      v44 = v56;
      v45 = v53;
      swift_beginAccess();
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v55 = *(v45 + 16);
      *(v45 + 16) = 0x8000000000000000;
      sub_226E39A20(v44, v34, v33, v46, &qword_27D7B6B08, &qword_226E68B40);

      *(v45 + 16) = v55;
      swift_endAccess();
      return (v43)(v21, v42);
    }

    else
    {
      swift_endAccess();

      return (*(v31 + 8))(v21, v54);
    }
  }
}

id UpcomingPayments.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UpcomingPayments.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpcomingPayments(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_226E38E94(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AE8, &qword_226E68B18);
  v10 = *(type metadata accessor for IntermediatePrediction(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for IntermediatePrediction(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_226E3906C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AE0, &qword_226E68B10);
  v33 = v4;
  result = sub_226E63F60();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_226E39310(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_226E63F60();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_226E395B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B10, &qword_226E68B48);
  v37 = v4;
  result = sub_226E63F60();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_226E39870(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226E63DB0() + 1) & ~v5;
    do
    {
      sub_226E640A0();

      sub_226E63A00();
      v9 = sub_226E640C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_226E39A20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_226E20614(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_226E39310(v20, a4 & 1, a5, a6);
      v15 = sub_226E20614(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_226E64010();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_226E39EB0(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_226E39BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_226E20614(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_226E395B0(v18, a5 & 1);
      v13 = sub_226E20614(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_226E64010();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_226E3A010();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_226E39D48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AE0, &qword_226E68B10);
  v2 = *v0;
  v3 = sub_226E63F50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_226E39EB0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_226E63F50();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_226E3A010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B10, &qword_226E68B48);
  v2 = *v0;
  v3 = sub_226E63F50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_226E3A188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AE0, &qword_226E68B10);
    v3 = sub_226E63F70();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E20614(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_226E3A28C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A98, &qword_226E68A78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UpcomingPayments(uint64_t a1)
{
  result = qword_280CEA380;
  if (!qword_280CEA380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226E3A348(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_226E63F70();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_226E20614(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226E3A444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B10, &qword_226E68B48);
    v3 = sub_226E63F70();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_226E20614(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226E3A558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD8, &qword_226E68B08);
    v3 = sub_226E63F70();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E1A598(v4, &v13, &qword_27D7B6AF8, &qword_226E68B28);
      v5 = v13;
      v6 = v14;
      result = sub_226E20614(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_226E3D250(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_226E3A688(void *a1)
{
  v215 = sub_226E638E0();
  v217 = *(v215 - 8);
  v2 = MEMORY[0x28223BE20](v215);
  v198 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v207 = &v147 - v5;
  MEMORY[0x28223BE20](v4);
  v212 = &v147 - v6;
  v197 = type metadata accessor for IntermediatePrediction(0);
  v175 = *(v197 - 8);
  v7 = MEMORY[0x28223BE20](v197);
  v190 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v189 = &v147 - v9;
  v174 = sub_226E63030();
  v216 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AB0, &qword_226E68A88);
  MEMORY[0x28223BE20](v11 - 8);
  v172 = &v147 - v12;
  v188 = sub_226E63040();
  *&v205 = *(v188 - 8);
  v13 = MEMORY[0x28223BE20](v188);
  v171 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v187 = &v147 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  MEMORY[0x28223BE20](v16 - 8);
  v177 = &v147 - v17;
  v192 = sub_226E62D70();
  v204 = *(v192 - 8);
  v18 = MEMORY[0x28223BE20](v192);
  v186 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v195 = &v147 - v20;
  v196 = sub_226E62FD0();
  v203 = *(v196 - 8);
  v21 = MEMORY[0x28223BE20](v196);
  v170 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v194 = &v147 - v23;
  v191 = sub_226E63590();
  v202 = *(v191 - 8);
  v24 = MEMORY[0x28223BE20](v191);
  v169 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v193 = &v147 - v26;
  v210 = sub_226E635C0();
  v27 = *(v210 - 8);
  v28 = MEMORY[0x28223BE20](v210);
  v185 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v184 = &v147 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v183 = &v147 - v33;
  MEMORY[0x28223BE20](v32);
  v218 = &v147 - v34;
  v35 = objc_opt_self();
  v229 = sub_226E386D0;
  v230 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v228 = sub_226E23500;
  *(&v228 + 1) = &block_descriptor_14;
  v36 = _Block_copy(&aBlock);
  v37 = @"features_heuristics";
  v38 = [v35 initWithBuilder_];
  _Block_release(v36);
  v220 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity:v37 joinClause:v38];

  v39 = objc_opt_self();
  v229 = sub_226E38714;
  v230 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v228 = sub_226E23500;
  *(&v228 + 1) = &block_descriptor_17;
  v40 = _Block_copy(&aBlock);
  v41 = [v39 initWithBuilder_];
  _Block_release(v40);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_226E3A348(MEMORY[0x277D84F90], &qword_27D7B6B00, &unk_226E68B30);
  v211 = (v42 + 16);
  if (a1)
  {
    v43 = @"AND";
    v44 = sub_226E63AE0();
    v229 = sub_226E3D26C;
    v230 = v42;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v228 = sub_226E1EB4C;
    *(&v228 + 1) = &block_descriptor_35;
    v45 = _Block_copy(&aBlock);

    [a1 0x1FCE66826];
    _Block_release(v45);
  }

  v199 = v41;
  v206 = v42;
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D84F90];
  *(v46 + 16) = sub_226E3A348(MEMORY[0x277D84F90], &qword_27D7B6B08, &qword_226E68B40);
  v48 = v46 + 16;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_226E3A444(v47);
  v182 = v49 + 16;
  v50 = v220;
  if (v220)
  {
    v219 = v220;
    v51 = @"AND";
    v52 = sub_226E63AE0();
    v53 = swift_allocObject();
    v54 = v206;
    v53[2] = v49;
    v53[3] = v54;
    v53[4] = v46;
    v229 = sub_226E3D260;
    v230 = v53;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v228 = sub_226E1EB4C;
    *(&v228 + 1) = &block_descriptor_32;
    v55 = _Block_copy(&aBlock);

    v56 = v219;
    [v219 0x1FCE66826];
    _Block_release(v55);

    v50 = v220;
  }

  v200 = v49;
  v201 = v46;
  swift_beginAccess();
  v57 = *v48;
  v58 = *v48 + 64;
  v59 = 1 << *(*v48 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(*v48 + 64);
  v62 = (v59 + 63) >> 6;
  v219 = @"_4bd92d83a";
  v213 = (v217 + 16);
  v214 = (v217 + 8);
  v209 = (v27 + 8);
  v179 = *MEMORY[0x277CC7788];
  v178 = v203 + 104;
  v176 = (v27 + 48);
  v168 = (v27 + 32);
  v167 = (v27 + 16);
  v166 = (v204 + 2);
  v165 = (v203 + 16);
  v164 = (v202 + 2);
  v163 = *MEMORY[0x277CC7810];
  v162 = (v216 + 104);
  v161 = (v205 + 16);
  v160 = (v205 + 8);
  v180 = (v204 + 1);
  v181 = (v203 + 8);
  ++v202;

  v63 = 0;
  v204 = MEMORY[0x277D84F90];
  *&v64 = 136315138;
  v205 = v64;
  v65 = v215;
  v66 = v212;
  v217 = v58;
  v216 = v62;
  v208 = v57;
LABEL_8:
  v67 = v63;
  while (1)
  {
    if (!v61)
    {
      while (1)
      {
        v63 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          __break(1u);
          goto LABEL_64;
        }

        if (v63 >= v62)
        {
          break;
        }

        v61 = *(v58 + 8 * v63);
        ++v67;
        if (v61)
        {
          goto LABEL_16;
        }
      }

      v134 = sub_226E56FC8();
      v135 = v198;
      (*v213)(v198, v134, v65);
      v136 = sub_226E638C0();
      v137 = sub_226E63C80();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *&v224 = v139;
        *v138 = v205;
        v140 = v204;

        v142 = v50;
        v143 = MEMORY[0x22AA8D0F0](v141, v197);
        v145 = v144;

        v146 = sub_226E1FC98(v143, v145, &v224);

        *(v138 + 4) = v146;
        _os_log_impl(&dword_226DD4000, v136, v137, "IntermediatePredictions from FPP: %s", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v139);
        MEMORY[0x22AA8E1B0](v139, -1, -1);
        MEMORY[0x22AA8E1B0](v138, -1, -1);

        (*v214)(v135, v65);
      }

      else
      {

        (*v214)(v135, v65);
        v140 = v204;
      }

      return v140;
    }

    v63 = v67;
LABEL_16:
    v68 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v69 = v68 | (v63 << 6);
    v70 = (*(v57 + 48) + 16 * v69);
    v71 = *v70;
    v50 = v70[1];
    v72 = *(*(v57 + 56) + 8 * v69);
    sub_226E639C0();

    v73 = sub_226E63A80();

    if ((v73 & 1) == 0)
    {

      v67 = v63;
      v50 = v220;
      goto LABEL_10;
    }

    v74 = v211;
    swift_beginAccess();
    v75 = *v74;
    if (!*(v75 + 16))
    {
      break;
    }

    v76 = sub_226E20614(v71, v50);
    if ((v77 & 1) == 0)
    {
      break;
    }

    v78 = *(*(v75 + 56) + 8 * v76);
    swift_endAccess();
    *&v224 = 0x726163656C707061;
    *(&v224 + 1) = 0xEA00000000002D64;

    MEMORY[0x22AA8D010](v71, v50);
    v79 = v224;
    v80 = sub_226E53234();
    asUUID(rawString:lossy:)(v79, *(&v79 + 1), v80, v218);
    if (!*(v78 + 16))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_endAccess();

      (*v180)(v195, v192);
      (*v181)(v194, v196);
      (*v202)(v193, v191);
      (*v209)(v218, v210);
LABEL_68:

      return MEMORY[0x277D84F90];
    }

    v81 = sub_226E20614(0x695F656372756F73, 0xE900000000000064);
    if ((v82 & 1) == 0)
    {
      goto LABEL_65;
    }

    sub_226E2233C(*(v78 + 56) + 32 * v81, &v223);
    sub_226E3D250(&v223, &v224);
    swift_dynamicCast();
    v83 = v222;
    if (!*(v78 + 16))
    {
      goto LABEL_37;
    }

    v203 = v221;
    v84 = sub_226E20614(0x6E5F797469746E65, 0xEB00000000656D61);
    if ((v85 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_226E2233C(*(v78 + 56) + 32 * v84, &v224);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    v86 = HIBYTE(*(&v223 + 1)) & 0xFLL;
    if ((*(&v223 + 1) & 0x2000000000000000) == 0)
    {
      v86 = v223 & 0xFFFFFFFFFFFFLL;
    }

    if (!v86)
    {

LABEL_37:

      v100 = sub_226E56FC8();
      v101 = v207;
      v65 = v215;
      (*v213)(v207, v100, v215);

      v102 = sub_226E638C0();
      v103 = sub_226E63CA0();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v224 = v105;
        *v104 = v205;
        v106 = sub_226E63970();
        v108 = v107;

        v109 = sub_226E1FC98(v106, v108, &v224);
        v65 = v215;

        *(v104 + 4) = v109;
        _os_log_impl(&dword_226DD4000, v102, v103, "Skipping due to empty entity name %s", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        MEMORY[0x22AA8E1B0](v105, -1, -1);
        MEMORY[0x22AA8E1B0](v104, -1, -1);
      }

      else
      {
      }

      (*v214)(v101, v65);
      (*v209)(v218, v210);
      v67 = v63;
      v66 = v212;
      goto LABEL_41;
    }

    v158 = v223;
    if (!*(v78 + 16) || (v159 = *(&v223 + 1), v87 = sub_226E20614(0x79636E6572727563, 0xED000065646F635FLL), (v88 & 1) == 0) || (sub_226E2233C(*(v78 + 56) + 32 * v87, &v224), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_34;
    }

    v89 = *(&v223 + 1);
    v157 = v223;
    result = sub_226E63A10();
    if (result == 3)
    {
      v156 = v89;
      if (!*(v78 + 16))
      {
        goto LABEL_70;
      }

      result = sub_226E20614(0x615F746E756F6D61, 0xEE00656761726576);
      v66 = v212;
      if ((v110 & 1) == 0)
      {
        goto LABEL_71;
      }

      sub_226E2233C(*(v78 + 56) + 32 * result, &v223);
      sub_226E3D250(&v223, &v224);
      result = swift_dynamicCast();
      if (!*(v78 + 16))
      {
        goto LABEL_72;
      }

      v155 = v221;
      result = sub_226E20614(0x6974636964657270, 0xEF657461645F6E6FLL);
      if ((v111 & 1) == 0)
      {
        goto LABEL_73;
      }

      sub_226E2233C(*(v78 + 56) + 32 * result, &v223);
      sub_226E3D250(&v223, &v224);
      swift_dynamicCast();
      sub_226E63500();
      (*v178)(v194, v179, v196);
      v112 = MEMORY[0x22AA8D350](v155);
      v114 = v113;
      v151 = v115;
      v148 = v112;
      v149 = HIDWORD(v112);
      v150 = HIWORD(v112);
      v152 = v113 >> 16;
      v154 = HIDWORD(v113);
      v155 = HIWORD(v113);
      v153 = HIWORD(v115);
      v116 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v224) = v148;
      WORD2(v224) = v149;
      WORD3(v224) = v150;
      WORD4(v224) = v114;
      WORD5(v224) = v152;
      WORD6(v224) = v154;
      HIWORD(v224) = v155;
      v225 = v151;
      v226 = v153;
      v155 = [v116 initWithDecimal_];
      result = [objc_opt_self() defaultDatabaseAmountMultiplier];
      if (!result)
      {
        goto LABEL_74;
      }

      v117 = result;

      v118 = v155;
      v50 = [v155 decimalNumberByDividingBy_];

      [v50 decimalValue];
      sub_226E62D80();
      v119 = v182;
      swift_beginAccess();
      if (!*(*v119 + 16))
      {
        goto LABEL_66;
      }

      sub_226E20614(v203, v83);
      if ((v120 & 1) == 0)
      {
        goto LABEL_66;
      }

      v203 = v50;
      swift_endAccess();

      v121 = v177;
      sub_226E635A0();

      v122 = v210;
      if ((*v176)(v121, 1, v210) == 1)
      {

        sub_226E15E98(v121, &qword_27D7B6940, &qword_226E68A90);

        (*v180)(v195, v192);
        (*v181)(v194, v196);
        (*v202)(v193, v191);
        (*v209)(v218, v122);
        goto LABEL_68;
      }

      v123 = v183;
      (*v168)(v183, v121, v122);
      v124 = *v167;
      (*v167)(v184, v218, v122);
      v124(v185, v123, v122);
      (*v166)(v186, v195, v192);
      (*v165)(v170, v194, v196);
      aBlock = 0u;
      v228 = 0u;
      v229 = 0;
      LOBYTE(v230) = 1;
      (*v164)(v169, v193, v191);
      v125 = sub_226E63390();
      (*(*(v125 - 8) + 56))(v172, 1, 1, v125);
      (*v162)(v173, v163, v174);
      v126 = v187;
      sub_226E63020();
      v127 = v171;
      (*v161)(v171, v126, v188);
      v128 = v189;
      sub_226E550F0(v79, *(&v79 + 1), v127, v72, v189);
      sub_226E3C760(v128, v190);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v204 = sub_226E38E94(0, v204[2] + 1, 1, v204);
      }

      v65 = v215;
      v50 = v220;
      v57 = v208;
      v130 = v204[2];
      v129 = v204[3];
      v159 = v130 + 1;
      if (v130 >= v129 >> 1)
      {
        v204 = sub_226E38E94((v129 > 1), v130 + 1, 1, v204);
      }

      sub_226E3C704(v189);
      (*v160)(v187, v188);
      v131 = *v209;
      v132 = v210;
      (*v209)(v183, v210);
      (*v180)(v195, v192);
      (*v181)(v194, v196);
      (*v202)(v193, v191);
      v131(v218, v132);
      v133 = v204;
      v204[2] = v159;
      sub_226E3C6A0(v190, v133 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v130);
      v58 = v217;
      v62 = v216;
      goto LABEL_8;
    }

    v66 = v212;
LABEL_34:
    v91 = sub_226E56FC8();
    v65 = v215;
    (*v213)(v66, v91, v215);

    v92 = sub_226E638C0();
    v93 = sub_226E63CA0();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v224 = v95;
      *v94 = v205;
      v96 = sub_226E63970();
      v98 = v97;

      v99 = sub_226E1FC98(v96, v98, &v224);
      v65 = v215;

      *(v94 + 4) = v99;
      _os_log_impl(&dword_226DD4000, v92, v93, "Skipping due to currency code not three character string%s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x22AA8E1B0](v95, -1, -1);
      MEMORY[0x22AA8E1B0](v94, -1, -1);
    }

    else
    {
    }

    (*v214)(v66, v65);
    (*v209)(v218, v210);
    v67 = v63;
LABEL_41:
    v50 = v220;
    v57 = v208;
LABEL_10:
    v58 = v217;
    v62 = v216;
  }

  result = swift_endAccess();
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226E3C6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntermediatePrediction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E3C704(uint64_t a1)
{
  v2 = type metadata accessor for IntermediatePrediction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226E3C760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntermediatePrediction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E3C7C4(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v7 = *i;
    v9 = *(a3 + 16);

    if (!v9 || (v10 = sub_226E20614(v8, v7), (v11 & 1) == 0) || (sub_226E2233C(*(a3 + 56) + 32 * v10, &v33), (swift_dynamicCast() & 1) == 0))
    {
      v22 = sub_226E20614(v8, v7);
      if (v23)
      {
        v24 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *a2;
        v33 = *a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226E39D48();
          v26 = v33;
        }

        sub_226E39870(v24, v26);
        *a2 = v26;
      }

      goto LABEL_5;
    }

    v12 = swift_isUniquelyReferenced_nonNull_native();
    v33 = *a2;
    v13 = v33;
    v14 = sub_226E20614(v8, v7);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v13[3] >= v19)
    {
      if ((v12 & 1) == 0)
      {
        v31 = v14;
        sub_226E39D48();
        v14 = v31;
      }
    }

    else
    {
      sub_226E3906C(v19, v12);
      v14 = sub_226E20614(v8, v7);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_26;
      }
    }

    v27 = v33;
    if (v20)
    {
      *(v33[7] + 8 * v14) = v32;
    }

    else
    {
      v33[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v27[6] + 16 * v14);
      *v28 = v8;
      v28[1] = v7;
      *(v27[7] + 8 * v14) = v32;
      v29 = v27[2];
      v18 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v27[2] = v30;
    }

    *a2 = v27;

LABEL_5:
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_226E64010();
  __break(1u);
  return result;
}

unint64_t sub_226E3CA2C()
{
  result = qword_27D7B6AB8;
  if (!qword_27D7B6AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7B6AB8);
  }

  return result;
}

void sub_226E3CB28(void *a1)
{
  if (!a1)
  {
    return;
  }

  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[10];
  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000010, 0x8000000226E73380);

  v6 = sub_226E639B0();

  v7 = sub_226E639B0();
  [a1 addStringValueForField:v6 fieldValue:v7];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000012, 0x8000000226E733A0);

  v8 = sub_226E639B0();

  v9 = sub_226E639B0();
  [a1 addStringValueForField:v8 fieldValue:v9];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0x746E756F6D612ELL, 0xE700000000000000);

  v10 = sub_226E639B0();

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [a1 addIntegerValueForField:v10 fieldValue:v4];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0x73616365726F662ELL, 0xEE00657461645F74);

  v11 = sub_226E639B0();

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [a1 addIntegerValueForField:v11 fieldValue:v3];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E733C0);

  v12 = sub_226E639B0();

  [a1 addIntegerValueForField:v12 fieldValue:0];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000015, 0x8000000226E733E0);

  v13 = sub_226E639B0();

  [a1 addIntegerValueForField:v13 fieldValue:1000];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000015, 0x8000000226E73400);

  v14 = sub_226E639B0();

  v15 = sub_226E639B0();
  [a1 addStringValueForField:v14 fieldValue:v15];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000011, 0x8000000226E73420);

  v16 = sub_226E639B0();

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return;
  }

  [a1 addIntegerValueForField:v16 fieldValue:v5];
}

void sub_226E3D074(uint64_t a1)
{
  sub_226E3D1B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_226E3D1B0(uint64_t a1)
{
  if (!qword_280CEA230)
  {
    sub_226E63490();
    v1 = sub_226E63D80();
    if (!v2)
    {
      atomic_store(v1, &qword_280CEA230);
    }
  }
}

uint64_t sub_226E3D208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_226E3D250(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_226E3D26C(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 16);
    if (v3)
    {
      sub_226E2233C(result + 32, v21);
      result = swift_dynamicCast();
      if (result)
      {
        v4 = v19;
      }

      else
      {
        v4 = 0;
      }

      if (result)
      {
        v5 = v20;
      }

      else
      {
        v5 = 0;
      }

      if (v3 == 1)
      {
        __break(1u);
      }

      else
      {
        sub_226E2233C(v2 + 64, v21);
        result = swift_dynamicCast();
        if (result)
        {
          v6 = v19;
        }

        else
        {
          v6 = 0;
        }

        if (result)
        {
          v7 = v20;
        }

        else
        {
          v7 = 0;
        }

        if (v3 >= 3)
        {
          sub_226E2233C(v2 + 96, v21);
          result = swift_dynamicCast();
          if (v3 >= 5)
          {
            v17 = result;
            sub_226E2233C(v2 + 160, v21);
            v8 = swift_dynamicCast();
            sub_226E2233C(v2 + 32 * v3, v21);
            v9 = MEMORY[0x277D837D0];
            v10 = swift_dynamicCast();
            v11 = v19;
            if (!v10)
            {
              v11 = 0;
            }

            v16 = v11;
            if (v10)
            {
              v12 = v20;
            }

            else
            {
              v12 = 0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AF0, &qword_226E68B20);
            result = swift_initStackObject();
            *(result + 16) = xmmword_226E68A60;
            *(result + 32) = 0x695F656372756F73;
            *(result + 40) = 0xE900000000000064;
            if (v5)
            {
              v13 = result;
              *(result + 48) = v4;
              *(result + 56) = v5;
              *(result + 72) = v9;
              *(result + 80) = 0x6E5F797469746E65;
              *(result + 88) = 0xEB00000000656D61;
              if (v7)
              {
                *(result + 96) = v6;
                *(result + 104) = v7;
                *(result + 120) = v9;
                strcpy((result + 128), "currency_code");
                *(result + 142) = -4864;
                *(result + 144) = 4477781;
                *(result + 152) = 0xE300000000000000;
                *(result + 168) = v9;
                strcpy((result + 176), "amount_average");
                *(result + 191) = -18;
                if (v17)
                {
                  *(result + 192) = v19;
                  *(result + 216) = MEMORY[0x277D83B88];
                  *(result + 224) = 0x6974636964657270;
                  *(result + 232) = 0xEF657461645F6E6FLL;
                  if (v8)
                  {
                    *(result + 264) = MEMORY[0x277D839F8];
                    *(result + 240) = v19;

                    v14 = sub_226E3A558(v13);
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AF8, &qword_226E68B28);
                    result = swift_arrayDestroy();
                    if (v12)
                    {

                      swift_beginAccess();
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v18 = *(v1 + 16);
                      *(v1 + 16) = 0x8000000000000000;
                      sub_226E39A20(v14, v16, v12, isUniquelyReferenced_nonNull_native, &qword_27D7B6B00, &unk_226E68B30);

                      *(v1 + 16) = v18;
                      return swift_endAccess();
                    }

LABEL_37:
                    __break(1u);
                    return result;
                  }

LABEL_36:
                  __break(1u);
                  goto LABEL_37;
                }

LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }

  return result;
}

unint64_t sub_226E3D670()
{
  type metadata accessor for TaskCollectionOrchestrator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  v0[14] = 0;
  v0[15] = v1;
  result = sub_226E47DDC(v1);
  v0[17] = 0;
  v0[18] = 0;
  v0[16] = result;
  qword_27D7B73E8 = v0;
  return result;
}

uint64_t *sub_226E3D6C4()
{
  if (qword_27D7B73E0 != -1)
  {
    swift_once();
  }

  return &qword_27D7B73E8;
}

uint64_t static TaskCollectionOrchestrator.shared.getter()
{
  if (qword_27D7B73E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_226E3D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 136) = v15;
  *(v9 + 144) = v8;
  *(v9 + 297) = a7;
  *(v9 + 120) = a6;
  *(v9 + 128) = a8;
  *(v9 + 296) = a5;
  *(v9 + 104) = a3;
  *(v9 + 112) = a4;
  *(v9 + 88) = a1;
  *(v9 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  *(v9 + 152) = swift_task_alloc();
  v10 = sub_226E638E0();
  *(v9 + 160) = v10;
  *(v9 + 168) = *(v10 - 8);
  *(v9 + 176) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  *(v9 + 184) = v11;
  *(v9 + 192) = *(v11 - 8);
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = type metadata accessor for TaskCollectionOrchestrator.JobRequest(0);
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 298) = *v14;

  return MEMORY[0x2822009F8](sub_226E3D928, v8, 0);
}

uint64_t sub_226E3D928(uint64_t a1)
{
  v85 = v1;
  if (!*(v1 + 298))
  {
    v21 = *(v1 + 144);
    v22 = v21;
    if (*(v21 + 112))
    {

      sub_226E63BA0();

      v22 = *(v1 + 144);
    }

    v23 = *(v1 + 152);
    v24 = *(v1 + 136);
    v81 = *(v1 + 297);
    v78 = *(v1 + 120);
    v75 = *(v1 + 296);
    v70 = *(v1 + 104);
    v72 = *(v1 + 112);
    v26 = *(v1 + 88);
    v25 = *(v1 + 96);
    v27 = swift_allocObject();
    *(v1 + 256) = v27;
    sub_226E19F54();
    v28 = swift_allocError();
    *v29 = 4;
    *(v27 + 16) = v28;
    *(v27 + 24) = 1;
    v30 = sub_226E63B80();
    (*(*(v30 - 8) + 56))(v23, 1, 1, v30);
    v32 = sub_226E48774(&qword_27D7B6B20, v31, type metadata accessor for TaskCollectionOrchestrator, &protocol conformance descriptor for TaskCollectionOrchestrator);
    v33 = swift_allocObject();
    *(v33 + 16) = v22;
    *(v33 + 24) = v32;
    *(v33 + 32) = v26;
    *(v33 + 40) = v25;
    *(v33 + 48) = v22;
    *(v33 + 56) = v27;
    *(v33 + 64) = v70;
    *(v33 + 72) = v72;
    *(v33 + 80) = v75 & 1;
    *(v33 + 88) = v78;
    *(v33 + 96) = v81 & 1;
    *(v33 + 104) = v24;
    swift_retain_n();

    v34 = sub_226E3F804(0, 0, v23, &unk_226E68B88, v33);
    *(v1 + 264) = v34;
    *(v21 + 112) = v34;

    v35 = swift_task_alloc();
    *(v1 + 272) = v35;
    *v35 = v1;
    v35[1] = sub_226E3E5FC;
    v36 = MEMORY[0x277D84F78] + 8;
    v37 = v34;
LABEL_20:

    return MEMORY[0x282200460](v35, v37, v36);
  }

  if (*(v1 + 298) == 1)
  {
    v2 = *(v1 + 144);
    if (*(v2 + 112))
    {
      v4 = *(v1 + 168);
      v3 = *(v1 + 176);
      v5 = *(v1 + 160);
      v6 = sub_226E56FC8();
      (*(v4 + 16))(v3, v6, v5);

      v7 = sub_226E638C0();
      v8 = sub_226E63CA0();

      v9 = os_log_type_enabled(v7, v8);
      v11 = *(v1 + 168);
      v10 = *(v1 + 176);
      v12 = *(v1 + 160);
      if (v9)
      {
        v14 = *(v1 + 88);
        v13 = *(v1 + 96);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v84 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_226E1FC98(v14, v13, &v84);
        _os_log_impl(&dword_226DD4000, v7, v8, "Rejecting task '%s'", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x22AA8E1B0](v16, -1, -1);
        MEMORY[0x22AA8E1B0](v15, -1, -1);
      }

      (*(v11 + 8))(v10, v12);
      sub_226E19F54();
      v17 = swift_allocError();
      *v18 = 4;
      swift_willThrow();
      v19 = v17;
      sub_226E47FFC(v17, 1);

      v20 = *(v1 + 8);
      goto LABEL_16;
    }

    v55 = *(v1 + 152);
    v56 = *(v1 + 136);
    v83 = *(v1 + 297);
    v80 = *(v1 + 120);
    v77 = *(v1 + 296);
    v57 = *(v1 + 104);
    v74 = *(v1 + 112);
    v59 = *(v1 + 88);
    v58 = *(v1 + 96);
    v60 = swift_allocObject();
    *(v1 + 224) = v60;
    sub_226E19F54();
    v61 = swift_allocError();
    *v62 = 4;
    *(v60 + 16) = v61;
    *(v60 + 24) = 1;
    v63 = sub_226E63B80();
    (*(*(v63 - 8) + 56))(v55, 1, 1, v63);
    v65 = sub_226E48774(&qword_27D7B6B20, v64, type metadata accessor for TaskCollectionOrchestrator, &protocol conformance descriptor for TaskCollectionOrchestrator);
    v66 = swift_allocObject();
    *(v66 + 16) = v2;
    *(v66 + 24) = v65;
    *(v66 + 32) = v59;
    *(v66 + 40) = v58;
    *(v66 + 48) = v2;
    *(v66 + 56) = v60;
    *(v66 + 64) = v57;
    *(v66 + 72) = v74;
    *(v66 + 80) = v77 & 1;
    *(v66 + 88) = v80;
    *(v66 + 96) = v83 & 1;
    *(v66 + 104) = v56;
    swift_retain_n();

    v67 = sub_226E3F804(0, 0, v55, &unk_226E68B90, v66);
    *(v1 + 232) = v67;
    *(v2 + 112) = v67;

    v35 = swift_task_alloc();
    *(v1 + 240) = v35;
    *v35 = v1;
    v35[1] = sub_226E3E1EC;
    v36 = MEMORY[0x277D84F78] + 8;
    v37 = v67;
    goto LABEL_20;
  }

  v39 = *(v1 + 208);
  v38 = *(v1 + 216);
  v40 = *(v1 + 200);
  v41 = *(v1 + 144);
  v79 = *(v1 + 184);
  v82 = *(v1 + 136);
  v73 = *(v1 + 297);
  v76 = *(v1 + 128);
  v71 = *(v1 + 120);
  v69 = *(v1 + 296);
  v42 = *(v1 + 104);
  v43 = *(v1 + 112);
  v45 = *(v1 + 88);
  v44 = *(v1 + 96);

  sub_226E63580();
  *v38 = v45;
  *(v38 + 8) = v44;
  *(v38 + 16) = v42;
  *(v38 + 24) = v43;
  *(v38 + 32) = v69 & 1;
  *(v38 + 40) = v71;
  *(v38 + 48) = v73 & 1;
  *(v38 + *(v39 + 36)) = v76;
  v46 = *(v79 + 48);
  sub_226E47F3C(v38, v40);
  *(v40 + v46) = v82;
  swift_beginAccess();
  v47 = *(v41 + 120);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v41 + 120) = v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = sub_226E4599C(0, v47[2] + 1, 1, v47);
    *(v41 + 120) = v47;
  }

  v50 = v47[2];
  v49 = v47[3];
  if (v50 >= v49 >> 1)
  {
    v47 = sub_226E4599C((v49 > 1), v50 + 1, 1, v47);
  }

  v52 = *(v1 + 192);
  v51 = *(v1 + 200);
  v53 = *(v1 + 144);
  v47[2] = v50 + 1;
  sub_226E26D94(v51, v47 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50, &qword_27D7B6B18, &qword_226E68B70);
  *(v41 + 120) = v47;
  swift_endAccess();
  if (*(v53 + 112))
  {
    sub_226E47FA0(*(v1 + 216));

    v20 = *(v1 + 8);
LABEL_16:

    return v20();
  }

  v68 = swift_task_alloc();
  *(v1 + 288) = v68;
  *v68 = v1;
  v68[1] = sub_226E3EA0C;

  return sub_226E3FB04();
}

uint64_t sub_226E3E1EC()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_226E3E318, v1, 0);
}

uint64_t sub_226E3E318()
{
  *(*(v0 + 144) + 112) = 0;

  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_226E3E3B8;

  return sub_226E3FB04();
}

uint64_t sub_226E3E3B8()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_226E3E4C8, v1, 0);
}

uint64_t sub_226E3E4C8()
{
  v1 = *(v0 + 224);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_226E48124(v2, *(v1 + 24));

  if (v3 == 1)
  {
    swift_willThrow();
    v4 = v2;
    sub_226E47FFC(v2, 1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226E3E5FC()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_226E3E728, v1, 0);
}

uint64_t sub_226E3E728()
{
  *(*(v0 + 144) + 112) = 0;

  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_226E3E7C8;

  return sub_226E3FB04();
}

uint64_t sub_226E3E7C8()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_226E3E8D8, v1, 0);
}

uint64_t sub_226E3E8D8()
{
  v1 = *(v0 + 256);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_226E48124(v2, *(v1 + 24));

  if (v3 == 1)
  {
    swift_willThrow();
    v4 = v2;
    sub_226E47FFC(v2, 1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226E3EA0C()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_226E3EB1C, v1, 0);
}

uint64_t sub_226E3EB1C()
{
  sub_226E47FA0(*(v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E3EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 313) = v17;
  *(v8 + 208) = v16;
  *(v8 + 216) = v18;
  *(v8 + 312) = v15;
  *(v8 + 192) = a8;
  *(v8 + 200) = v14;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  v10 = sub_226E638E0();
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v11 = sub_226E63B50();
  *(v8 + 264) = v11;
  *(v8 + 272) = *(v11 - 8);
  *(v8 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E3ED18, a6, 0);
}

uint64_t sub_226E3ED18()
{
  v43 = v0;
  if (sub_226E63BC0())
  {
    v1 = *(v0 + 256);
    v2 = *(v0 + 224);
    v3 = *(v0 + 232);
    v4 = sub_226E56FC8();
    (*(v3 + 16))(v1, v4, v2);

    v5 = sub_226E638C0();
    v6 = sub_226E63C80();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 256);
    v9 = *(v0 + 224);
    v10 = *(v0 + 232);
    if (v7)
    {
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v46 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_226E1FC98(v12, v11, &v46);
      _os_log_impl(&dword_226DD4000, v5, v6, "Task set %s was cancelled before execution", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x22AA8E1B0](v14, -1, -1);
      MEMORY[0x22AA8E1B0](v13, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
    v15 = *(v0 + 184);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    v42 = 2;
    sub_226E4577C(v16, v17, &v42);
    sub_226E48774(&qword_27D7B6B38, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v18 = swift_allocError();
    sub_226E63940();
    swift_beginAccess();
    v19 = *(v15 + 16);
    v20 = *(v15 + 24);
    *(v15 + 16) = v18;
    *(v15 + 24) = 1;
    sub_226E47FFC(v19, v20);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v41 = *(v0 + 313);
    v23 = *(v0 + 216);
    v40 = *(v0 + 208);
    v24 = *(v0 + 312);
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 176);
    v39 = *(v0 + 160);
    v28 = *(v23 + 16);
    v29 = sub_226E55240();
    if (*v29 >= v28)
    {
      v31 = v28;
    }

    else
    {
      v31 = *v29;
    }

    v32 = -1 << *(v23 + 32);
    v33 = ~v32;
    v34 = *(v23 + 64);
    v35 = -v32;
    *(v0 + 16) = v23;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    *(v0 + 24) = v23 + 64;
    *(v0 + 32) = v33;
    *(v0 + 40) = 0;
    *(v0 + 48) = v36 & v34;
    sub_226E48774(&qword_27D7B6B20, v30, type metadata accessor for TaskCollectionOrchestrator, &protocol conformance descriptor for TaskCollectionOrchestrator);
    v37 = swift_task_alloc();
    *(v0 + 288) = v37;
    *(v37 + 16) = v31;
    *(v37 + 24) = v0 + 16;
    *(v37 + 32) = v27;
    *(v37 + 40) = v39;
    *(v37 + 56) = v26;
    *(v37 + 64) = v25;
    *(v37 + 72) = v24 & 1;
    *(v37 + 80) = v40;
    *(v37 + 88) = v41 & 1;

    v38 = swift_task_alloc();
    *(v0 + 296) = v38;
    *v38 = v0;
    v38[1] = sub_226E3F120;
    v45 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v38);
  }
}

uint64_t sub_226E3F120()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = sub_226E3F30C;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_226E3F248;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226E3F248()
{
  v1 = v0[23];
  sub_226E33994(v0[2]);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_226E47FFC(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226E3F30C()
{
  v57 = v0;
  v1 = *(v0 + 304);

  sub_226E33994(*(v0 + 16));
  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 304);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  if (v3)
  {
    v7 = *(v0 + 248);

    v8 = sub_226E56FC8();
    (*(v6 + 16))(v7, v8, v5);

    v9 = sub_226E638C0();
    v10 = sub_226E63C80();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 248);
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    if (v11)
    {
      v55 = *(v0 + 248);
      v16 = *(v0 + 160);
      v15 = *(v0 + 168);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v56 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_226E1FC98(v16, v15, &v56);
      _os_log_impl(&dword_226DD4000, v9, v10, "Task set %s cancelled.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x22AA8E1B0](v18, -1, -1);
      MEMORY[0x22AA8E1B0](v17, -1, -1);

      (*(v13 + 8))(v55, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v33 = *(v0 + 272);
    v34 = *(v0 + 280);
    v35 = *(v0 + 264);
    v36 = *(v0 + 184);
    v37 = *(v0 + 160);
    v38 = *(v0 + 168);
    LOBYTE(v56) = 2;
    sub_226E4577C(v37, v38, &v56);
    sub_226E48774(&qword_27D7B6B38, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v39 = swift_allocError();
    sub_226E63940();
    swift_beginAccess();
    v40 = *(v36 + 16);
    v41 = *(v36 + 24);
    *(v36 + 16) = v39;
    *(v36 + 24) = 1;
    sub_226E47FFC(v40, v41);
    (*(v33 + 8))(v34, v35);
  }

  else
  {
    v19 = *(v0 + 240);

    v20 = sub_226E56FC8();
    (*(v6 + 16))(v19, v20, v5);
    v21 = v4;

    v22 = sub_226E638C0();
    v23 = sub_226E63C80();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 304);
      v25 = *(v0 + 232);
      v53 = *(v0 + 224);
      v54 = *(v0 + 240);
      v27 = *(v0 + 160);
      v26 = *(v0 + 168);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v30 = v56;
      *v28 = 136315394;
      *(v28 + 4) = sub_226E1FC98(v27, v26, &v56);
      *(v28 + 12) = 2112;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v32;
      *v29 = v32;
      _os_log_impl(&dword_226DD4000, v22, v23, "Task set %s failed: %@", v28, 0x16u);
      sub_226E15E98(v29, &qword_27D7B6918, &qword_226E68950);
      MEMORY[0x22AA8E1B0](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x22AA8E1B0](v30, -1, -1);
      MEMORY[0x22AA8E1B0](v28, -1, -1);

      (*(v25 + 8))(v54, v53);
    }

    else
    {
      v42 = *(v0 + 232);
      v43 = *(v0 + 240);
      v44 = *(v0 + 224);

      (*(v42 + 8))(v43, v44);
    }

    v45 = *(v0 + 304);
    v46 = *(v0 + 184);
    v47 = *(v0 + 160);
    v48 = *(v0 + 168);
    LOBYTE(v56) = 1;
    sub_226E4577C(v47, v48, &v56);
    swift_beginAccess();
    v49 = *(v46 + 16);
    v50 = *(v46 + 24);
    *(v46 + 16) = v45;
    *(v46 + 24) = 1;
    sub_226E47FFC(v49, v50);
  }

  v51 = *(v0 + 8);

  return v51();
}