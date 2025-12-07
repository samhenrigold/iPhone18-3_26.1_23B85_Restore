uint64_t sub_25800ACDC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v3 = sub_25804A560();

    if ((v3 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v4 = sub_258004F04();
  v6 = v5;
  v7 = sub_258004F04();
  v9 = v8;
  if (!v6)
  {
    if (v8)
    {

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v8)
  {
    if (v4 == v7 && v6 == v8)
    {
    }

    else
    {
      v10 = sub_25804A560();

      if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_13:
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
    v11 = sub_258049EE0();

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v12 = sub_258049EE0();

    if (v11)
    {
      if (v12)
      {
        v9 = sub_25800AB18(v11, v12);

        return v9 & 1;
      }
    }

    else if (!v12)
    {
      v9 = 1;
      return v9 & 1;
    }

LABEL_18:
    v9 = 0;
    return v9 & 1;
  }

  return v9 & 1;
}

uint64_t sub_25800B08C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v4 = sub_25804A560();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25804A560();
  }

  return v5 & 1;
}

uint64_t sub_25800B374(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258049F00();

  v4 = sub_257FF644C(a1, v21);
  if (v4 == 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v6 = sub_257FF644C(a2, v21);
  if (v6 == 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if ((sub_257FFDE00(v5, v7) & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v8 = sub_25804A560();

    if ((v8 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v9 = sub_257FFC028();
  v11 = v10;
  v12 = sub_257FFC028();
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_20;
    }

LABEL_17:

    goto LABEL_28;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v14 = sub_25804A560();

    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_20:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    goto LABEL_23;
  }

  v15 = sub_25804A560();

  if ((v15 & 1) == 0)
  {
LABEL_28:
    v18 = 0;
    return v18 & 1;
  }

LABEL_23:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  v16 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v17 = sub_258049EE0();

  if (!v16)
  {
    if (!v17)
    {
      v18 = 1;
      return v18 & 1;
    }

    goto LABEL_27;
  }

  if (!v17)
  {
LABEL_27:

    goto LABEL_28;
  }

  v18 = sub_25800B08C(v16, v17);

  return v18 & 1;
}

uint64_t sub_25800B93C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v4 = sub_258049EE0();

  if (v4)
  {
    swift_getKeyPath();
    sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v5 = v4;
    v4 = v12;
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v6 = sub_258049EE0();

  if (!v6)
  {
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (!v4)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  if (v5 == v6 && v4 == v12)
  {
  }

  else
  {
    v9 = sub_25804A560();

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v10 = sub_25804A560();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    goto LABEL_23;
  }

  v11 = sub_25804A560();

  if ((v11 & 1) == 0)
  {
LABEL_14:
    v7 = 0;
    return v7 & 1;
  }

LABEL_23:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_25804A560();
  }

  return v7 & 1;
}

uint64_t sub_25800C010(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v4 = sub_258049EE0();

  if (v4)
  {
    swift_getKeyPath();
    sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v5 = v4;
    v4 = v12;
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v6 = sub_258049EE0();

  if (!v6)
  {
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (!v4)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  if (v5 == v6 && v4 == v12)
  {
  }

  else
  {
    v9 = sub_25804A560();

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v10 = sub_25804A560();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    goto LABEL_23;
  }

  v11 = sub_25804A560();

  if ((v11 & 1) == 0)
  {
LABEL_14:
    v7 = 0;
    return v7 & 1;
  }

LABEL_23:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_25804A560();
  }

  return v7 & 1;
}

uint64_t sub_25800C6E4(unint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v4 = sub_25804A560();

    if ((v4 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v5 = sub_25804A560();

    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v17)
  {
    if (a1 == a2)
    {
    }

    else
    {
      v6 = sub_25804A560();

      if ((v6 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049EF0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  v7 = sub_257FFF4A8(a1, a2, sub_25800ACDC);

  if ((v7 & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  v8 = sub_257FFF4A8(a1, a2, sub_25800B374);

  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  v9 = sub_257FFF294(a1, a2);

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 != a2)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v17)
  {
    if (a1 == a2)
    {
    }

    else
    {
      v12 = sub_25804A560();

      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v13 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v14 = sub_258049EE0();

  if (!v13)
  {
    if (!v14)
    {
LABEL_28:
      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      type metadata accessor for ExtensionCodeIdentityRecord(0);
      sub_258011E3C();
      sub_258049EF0();

      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_258049EF0();

      v10 = sub_257FFF4A8(a1, a2, sub_25800C010);

      return v10 & 1;
    }

    goto LABEL_29;
  }

  if (!v14)
  {
LABEL_29:

    goto LABEL_19;
  }

  v15 = sub_25800B93C(v13, v14);

  if (v15)
  {
    goto LABEL_28;
  }

LABEL_19:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_25800D3B8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_258049CB0();
  v4 = v3;
  sub_258049CA0();
  v5 = type metadata accessor for ExtensionRecord(0);
  v6 = swift_allocObject();
  *(v6 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F8, &qword_25804DD90);
  v83[0] = v5;
  v83[1] = v5;
  v84 = sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  v85 = v84;
  *(v6 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v6 + 24));
  sub_258049EA0();
  *(v6 + 16) = 257;
  *(v6 + 18) = 1;
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  v83[0] = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
  v8 = type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  v83[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
  v78 = type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049D40();

  sub_258049AA0();
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  type metadata accessor for AppRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049D60();

  *(v6 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  v83[1] = v4;
  sub_258049D50();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A7D0);
  swift_getKeyPath();
  sub_258049A80();

  v83[0] = v6;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  v9 = MEMORY[0x277D84F90];
  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A62C);
  swift_getKeyPath();
  sub_258049A80();

  v10 = v9;
  v11 = a1;

  v58 = v6;

  sub_258049C60();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F0, &qword_25804DC98);
    v83[0] = v8;
    v83[1] = v8;
    v84 = sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
    v85 = v84;
    *(v14 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v14 + 24));
    sub_258049EA0();
    *(v14 + 16) = 16843009;
    *(v14 + 20) = 1;
    sub_258049AA0();
    __swift_project_boxed_opaque_existential_1((v14 + 24), *(v14 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v14 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v14 + 24), *(v14 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v14 + 17) = 0;
    __swift_project_boxed_opaque_existential_1((v14 + 24), *(v14 + 48));
    swift_getKeyPath();
    strcpy(v83, "configDetails");
    HIWORD(v83[1]) = -4864;
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v14 + 24), *(v14 + 48));
    swift_getKeyPath();
    v83[1] = v13;
    sub_258049D50();

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
    sub_258049A80();

    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    sub_258049A80();

    v83[0] = v14;
    v17 = swift_getKeyPath();
    MEMORY[0x28223BE20](v17);
    sub_258049A80();

    MEMORY[0x259C766C0](v18);
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25804A210();
    }

    sub_25804A220();
    v19 = v10;
    v11 = a1;
    v20 = MEMORY[0x277D84F90];
    if (!(v10 >> 62))
    {
LABEL_5:
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v19 = v10;
    v20 = v10;
    if (!(v10 >> 62))
    {
      goto LABEL_5;
    }
  }

  if (sub_25804A480() >= 1)
  {
LABEL_6:
    v83[0] = v58;
    v21 = swift_getKeyPath();
    MEMORY[0x28223BE20](v21);
    sub_258049A80();
  }

LABEL_7:
  v82 = v20;
  v22 = sub_258049C80();
  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = v22;
  if (!(v22 >> 62))
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 >= 1)
    {
      goto LABEL_10;
    }

LABEL_20:

    goto LABEL_21;
  }

  v24 = sub_25804A480();
  if (v24 < 1)
  {
    goto LABEL_20;
  }

LABEL_10:
  v79 = v20;
  sub_25804A430();
  v25 = 0;
  v60 = v23 & 0xC000000000000001;
  v63 = v23;
  do
  {
    if (v60)
    {
      v26 = MEMORY[0x259C768B0](v25, v23);
    }

    else
    {
      v26 = *(v23 + 8 * v25 + 32);
    }

    ++v25;
    v75 = v26;
    v66 = sub_258049B40();
    v28 = v27;
    v72 = sub_258049B30();
    v69 = v29;
    v30 = swift_allocObject();
    *(v30 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    v31 = sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
    v83[0] = v78;
    v83[1] = v78;
    v84 = v31;
    v85 = v31;
    *(v30 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v30 + 24));
    sub_258049EA0();
    *(v30 + 16) = 257;
    *(v30 + 18) = 1;
    sub_258049AA0();
    __swift_project_boxed_opaque_existential_1((v30 + 24), *(v30 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v30 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v30 + 24), *(v30 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v30 + 17) = 0;
    __swift_project_boxed_opaque_existential_1((v30 + 24), *(v30 + 48));
    swift_getKeyPath();
    strcpy(v83, "password");
    BYTE1(v83[1]) = 0;
    WORD1(v83[1]) = 0;
    HIDWORD(v83[1]) = -402653184;
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v30 + 24), *(v30 + 48));
    swift_getKeyPath();
    v83[0] = v66;
    v83[1] = v28;
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v30 + 24), *(v30 + 48));
    swift_getKeyPath();
    v83[0] = v72;
    v83[1] = v69;
    sub_258049D50();

    v83[0] = v30;
    v32 = swift_getKeyPath();
    MEMORY[0x28223BE20](v32);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
    sub_258049A80();

    sub_25804A410();
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v23 = v63;
  }

  while (v24 != v25);

  sub_257FF9784(v79, sub_25800A62C);
  v11 = a1;
  v20 = MEMORY[0x277D84F90];
LABEL_21:
  v33 = sub_258049C90();
  if (!v33)
  {
    goto LABEL_32;
  }

  v34 = v33;
  if (!(v33 >> 62))
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35 >= 1)
    {
      goto LABEL_24;
    }

LABEL_31:

    goto LABEL_32;
  }

  v35 = sub_25804A480();
  if (v35 < 1)
  {
    goto LABEL_31;
  }

LABEL_24:
  v80 = v20;
  sub_25804A430();
  v36 = 0;
  v61 = v34 & 0xC000000000000001;
  v64 = v34;
  do
  {
    if (v61)
    {
      v37 = MEMORY[0x259C768B0](v36, v34);
    }

    else
    {
      v37 = *(v34 + 8 * v36 + 32);
    }

    ++v36;
    v76 = v37;
    v67 = sub_258049B40();
    v39 = v38;
    v73 = sub_258049B30();
    v70 = v40;
    v41 = swift_allocObject();
    *(v41 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    v42 = sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
    v83[0] = v78;
    v83[1] = v78;
    v84 = v42;
    v85 = v42;
    *(v41 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v41 + 24));
    sub_258049EA0();
    *(v41 + 16) = 257;
    *(v41 + 18) = 1;
    sub_258049AA0();
    __swift_project_boxed_opaque_existential_1((v41 + 24), *(v41 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v41 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v41 + 24), *(v41 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v41 + 17) = 0;
    __swift_project_boxed_opaque_existential_1((v41 + 24), *(v41 + 48));
    swift_getKeyPath();
    strcpy(v83, "certificate");
    HIDWORD(v83[1]) = -352321536;
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v41 + 24), *(v41 + 48));
    swift_getKeyPath();
    v83[0] = v67;
    v83[1] = v39;
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v41 + 24), *(v41 + 48));
    swift_getKeyPath();
    v83[0] = v73;
    v83[1] = v70;
    sub_258049D50();

    v83[0] = v41;
    v43 = swift_getKeyPath();
    MEMORY[0x28223BE20](v43);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
    sub_258049A80();

    sub_25804A410();
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v34 = v64;
  }

  while (v35 != v36);

  sub_257FF9784(v80, sub_25800A62C);
  v11 = a1;
  v20 = MEMORY[0x277D84F90];
LABEL_32:
  v44 = sub_258049C70();
  if (!v44)
  {
LABEL_43:

    goto LABEL_44;
  }

  v45 = v44;
  if (!(v44 >> 62))
  {
    v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46 >= 1)
    {
      goto LABEL_35;
    }

    goto LABEL_42;
  }

  v46 = sub_25804A480();
  if (v46 < 1)
  {
LABEL_42:

    goto LABEL_43;
  }

LABEL_35:
  v81 = v20;
  sub_25804A430();
  v47 = 0;
  v62 = v45 & 0xC000000000000001;
  v65 = v45;
  do
  {
    if (v62)
    {
      v48 = MEMORY[0x259C768B0](v47, v45);
    }

    else
    {
      v48 = *(v45 + 8 * v47 + 32);
    }

    ++v47;
    v77 = v48;
    v68 = sub_258049B40();
    v50 = v49;
    v74 = sub_258049B30();
    v71 = v51;
    v52 = swift_allocObject();
    *(v52 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    v53 = sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
    v83[0] = v78;
    v83[1] = v78;
    v84 = v53;
    v85 = v53;
    *(v52 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v52 + 24));
    sub_258049EA0();
    *(v52 + 16) = 257;
    *(v52 + 18) = 1;
    sub_258049AA0();
    __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v52 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v52 + 17) = 0;
    __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
    swift_getKeyPath();
    strcpy(v83, "identity");
    BYTE1(v83[1]) = 0;
    WORD1(v83[1]) = 0;
    HIDWORD(v83[1]) = -402653184;
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
    swift_getKeyPath();
    v83[0] = v68;
    v83[1] = v50;
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
    swift_getKeyPath();
    v83[0] = v74;
    v83[1] = v71;
    sub_258049D50();

    v83[0] = v52;
    v54 = swift_getKeyPath();
    MEMORY[0x28223BE20](v54);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
    sub_258049A80();

    sub_25804A410();
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v45 = v65;
  }

  while (v46 != v47);

  sub_257FF9784(v81, sub_25800A62C);
  v11 = a1;
LABEL_44:
  if (v82 >> 62)
  {
    if (sub_25804A480() >= 1)
    {
      goto LABEL_46;
    }

LABEL_48:

    v55 = v58;

    return v55;
  }

  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_48;
  }

LABEL_46:
  v55 = v58;
  v83[0] = v58;
  v56 = swift_getKeyPath();
  MEMORY[0x28223BE20](v56);
  sub_258049A80();

  return v55;
}

uint64_t sub_25800EF1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_258049BD0();
  type metadata accessor for AppRecord(0);
  v6 = swift_allocObject();
  *(v6 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159E8, &unk_25804DB98);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  *(v6 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v6 + 24));

  sub_258049EA0();
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
  sub_258012034(&qword_27F9159E0, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
  sub_258049D50();

  *(v6 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
  type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152D0, &qword_25804B4C0);
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  *(v6 + 17) = 256;
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159D8, &unk_25804DB88);
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258011E3C();
  sub_258049D40();

  sub_258049AA0();
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A7D0);
  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A62C);
  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A974);
  swift_getKeyPath();
  sub_258049A80();

  v7 = sub_258049BE0();
  v54 = v6;
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_25804A480();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < 1)
  {

LABEL_12:

    goto LABEL_13;
  }

  sub_25804A430();
  v10 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x259C768B0](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    ++v10;

    sub_25800D3B8(v12, a4, a5);
    sub_25804A410();
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
  }

  while (v9 != v10);

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_258049A80();

LABEL_13:
  v14 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  sub_258049BB0();
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F0, &qword_25804DC98);
    sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
    *(v16 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v16 + 24));
    sub_258049EA0();
    *(v16 + 16) = 16843009;
    *(v16 + 20) = 1;
    sub_258049AA0();
    __swift_project_boxed_opaque_existential_1((v16 + 24), *(v16 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v16 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v16 + 24), *(v16 + 48));
    swift_getKeyPath();
    sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
    sub_258049D60();

    *(v16 + 17) = 0;
    __swift_project_boxed_opaque_existential_1((v16 + 24), *(v16 + 48));
    swift_getKeyPath();
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v16 + 24), *(v16 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v17 = swift_getKeyPath();
    MEMORY[0x28223BE20](v17);
    sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
    sub_258049A80();

    v18 = swift_getKeyPath();
    MEMORY[0x28223BE20](v18);
    sub_258049A80();

    v19 = swift_getKeyPath();
    MEMORY[0x28223BE20](v19);
    sub_258049A80();

    MEMORY[0x259C766C0](v20);
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25804A210();
    }

    sub_25804A220();
    v21 = v67;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v21 = v14;
  }

  sub_258049BC0();
  if (v22)
  {
    v23 = swift_allocObject();
    *(v23 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F0, &qword_25804DC98);
    sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
    *(v23 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v23 + 24));
    sub_258049EA0();
    *(v23 + 16) = 16843009;
    *(v23 + 20) = 1;
    sub_258049AA0();
    __swift_project_boxed_opaque_existential_1((v23 + 24), *(v23 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v23 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v23 + 24), *(v23 + 48));
    swift_getKeyPath();
    sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
    sub_258049D60();

    *(v23 + 17) = 0;
    __swift_project_boxed_opaque_existential_1((v23 + 24), *(v23 + 48));
    swift_getKeyPath();
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v23 + 24), *(v23 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v24 = swift_getKeyPath();
    MEMORY[0x28223BE20](v24);
    sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
    sub_258049A80();

    v25 = swift_getKeyPath();
    MEMORY[0x28223BE20](v25);
    sub_258049A80();

    v26 = swift_getKeyPath();
    MEMORY[0x28223BE20](v26);
    sub_258049A80();

    MEMORY[0x259C766C0](v27);
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25804A210();
    }

    sub_25804A220();
    v28 = v67;
    v14 = MEMORY[0x277D84F90];
    if (!(v67 >> 62))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v28 = v21;
    if (!(v21 >> 62))
    {
LABEL_22:
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }
  }

  v29 = sub_25804A480();
LABEL_23:
  if (v29 >= 1)
  {
    v30 = swift_getKeyPath();
    MEMORY[0x28223BE20](v30);
    sub_258049A80();

    v14 = MEMORY[0x277D84F90];
  }

  v66 = v14;
  v31 = sub_258049C00();
  if (v31)
  {
    v32 = v31;
    if (v31 >> 62)
    {
      v33 = sub_25804A480();
      if (v33 >= 1)
      {
LABEL_28:
        sub_25804A430();
        v34 = 0;
        v56 = v32 & 0xC000000000000001;
        v59 = v32;
        do
        {
          if (v56)
          {
            v35 = MEMORY[0x259C768B0](v34, v32);
          }

          else
          {
            v35 = *(v32 + 8 * v34 + 32);
          }

          ++v34;
          v63 = v35;
          sub_258049B40();
          sub_258049B30();
          v36 = swift_allocObject();
          *(v36 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
          sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
          *(v36 + 56) = swift_getOpaqueTypeConformance2();
          __swift_allocate_boxed_opaque_existential_1((v36 + 24));
          sub_258049EA0();
          *(v36 + 16) = 257;
          *(v36 + 18) = 1;
          sub_258049AA0();
          __swift_project_boxed_opaque_existential_1((v36 + 24), *(v36 + 48));
          swift_getKeyPath();
          sub_258049D60();

          *(v36 + 16) = 0;
          __swift_project_boxed_opaque_existential_1((v36 + 24), *(v36 + 48));
          swift_getKeyPath();
          sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
          sub_258049D60();

          *(v36 + 17) = 0;
          __swift_project_boxed_opaque_existential_1((v36 + 24), *(v36 + 48));
          swift_getKeyPath();
          sub_258049D50();

          __swift_project_boxed_opaque_existential_1((v36 + 24), *(v36 + 48));
          swift_getKeyPath();
          sub_258049D50();

          __swift_project_boxed_opaque_existential_1((v36 + 24), *(v36 + 48));
          swift_getKeyPath();
          sub_258049D50();

          v37 = swift_getKeyPath();
          MEMORY[0x28223BE20](v37);
          sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
          sub_258049A80();

          sub_25804A410();
          sub_25804A440();
          sub_25804A450();
          sub_25804A420();
          v32 = v59;
        }

        while (v33 != v34);

        sub_257FF9784(v14, sub_25800A62C);
        v6 = v54;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33 >= 1)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_39:
  v38 = sub_258049C10();
  if (!v38)
  {
    goto LABEL_50;
  }

  v39 = v38;
  if (!(v38 >> 62))
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40 >= 1)
    {
      goto LABEL_42;
    }

LABEL_49:

    goto LABEL_50;
  }

  v40 = sub_25804A480();
  if (v40 < 1)
  {
    goto LABEL_49;
  }

LABEL_42:
  sub_25804A430();
  v41 = 0;
  v57 = v39 & 0xC000000000000001;
  v60 = v39;
  do
  {
    if (v57)
    {
      v42 = MEMORY[0x259C768B0](v41, v39);
    }

    else
    {
      v42 = *(v39 + 8 * v41 + 32);
    }

    ++v41;
    v64 = v42;
    sub_258049B40();
    sub_258049B30();
    v43 = swift_allocObject();
    *(v43 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
    *(v43 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v43 + 24));
    sub_258049EA0();
    *(v43 + 16) = 257;
    *(v43 + 18) = 1;
    sub_258049AA0();
    __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v43 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
    swift_getKeyPath();
    sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
    sub_258049D60();

    *(v43 + 17) = 0;
    __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
    swift_getKeyPath();
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
    swift_getKeyPath();
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v44 = swift_getKeyPath();
    MEMORY[0x28223BE20](v44);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
    sub_258049A80();

    sub_25804A410();
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v39 = v60;
  }

  while (v40 != v41);

  sub_257FF9784(v14, sub_25800A62C);
  v6 = v54;
  v14 = MEMORY[0x277D84F90];
LABEL_50:
  v45 = sub_258049BF0();
  if (!v45)
  {
    goto LABEL_62;
  }

  v46 = v45;
  if (!(v45 >> 62))
  {
    v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47 >= 1)
    {
      goto LABEL_53;
    }

    goto LABEL_61;
  }

  v47 = sub_25804A480();
  if (v47 < 1)
  {
LABEL_61:

LABEL_62:

    goto LABEL_63;
  }

LABEL_53:
  sub_25804A430();
  v48 = 0;
  v58 = v46 & 0xC000000000000001;
  v61 = v46;
  do
  {
    if (v58)
    {
      v49 = MEMORY[0x259C768B0](v48, v46);
    }

    else
    {
      v49 = *(v46 + 8 * v48 + 32);
    }

    ++v48;
    v65 = v49;
    sub_258049B40();
    sub_258049B30();
    v50 = swift_allocObject();
    *(v50 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
    *(v50 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v50 + 24));
    sub_258049EA0();
    *(v50 + 16) = 257;
    *(v50 + 18) = 1;
    sub_258049AA0();
    __swift_project_boxed_opaque_existential_1((v50 + 24), *(v50 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v50 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v50 + 24), *(v50 + 48));
    swift_getKeyPath();
    sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
    sub_258049D60();

    *(v50 + 17) = 0;
    __swift_project_boxed_opaque_existential_1((v50 + 24), *(v50 + 48));
    swift_getKeyPath();
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v50 + 24), *(v50 + 48));
    swift_getKeyPath();
    sub_258049D50();

    __swift_project_boxed_opaque_existential_1((v50 + 24), *(v50 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v51 = swift_getKeyPath();
    MEMORY[0x28223BE20](v51);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
    sub_258049A80();

    sub_25804A410();
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v46 = v61;
  }

  while (v47 != v48);

  sub_257FF9784(v14, sub_25800A62C);
  v6 = v54;
LABEL_63:
  if (v66 >> 62)
  {
    if (sub_25804A480() >= 1)
    {
      goto LABEL_65;
    }

LABEL_67:

    return v6;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_67;
  }

LABEL_65:
  v52 = swift_getKeyPath();
  MEMORY[0x28223BE20](v52);
  sub_258049A80();

  return v6;
}

uint64_t sub_2580113AC()
{
  v42 = sub_258049FE0();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v33 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v1 = *(sub_25804A030() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  v39 = v4;
  *(v4 + 16) = xmmword_25804CBE0;
  v5 = v4 + v3;
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159B0, &qword_25804D920);
  sub_25804A080();
  v6 = swift_allocObject();
  v43 = xmmword_25804B660;
  *(v6 + 16) = xmmword_25804B660;
  sub_25804A070();
  v7 = sub_25804A090();
  swift_allocObject();
  v8 = sub_25804A0A0();
  *(&v46 + 1) = v7;
  v9 = sub_258009670(&qword_27F9159B8, MEMORY[0x277CDD5E8], MEMORY[0x277CDD5E0]);
  v47 = v9;
  *&v45 = v8;
  sub_25804A020();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  *(swift_allocObject() + 16) = v43;
  sub_25804A070();
  swift_allocObject();
  v10 = sub_25804A0A0();
  *(&v46 + 1) = v7;
  v47 = v9;
  *&v45 = v10;
  v11 = v5;
  sub_25804A020();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_25804A020();
  v35 = 3 * v2;
  v40 = v2;
  KeyPath = swift_getKeyPath();
  *(&v49 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159C0, &qword_25804D9A0);
  v12 = *(&v49 + 1);
  *&v48 = MEMORY[0x277D84F90];
  v13 = *MEMORY[0x277CDD5A0];
  v34 = *(v44 + 104);
  v44 += 104;
  v14 = v38;
  LODWORD(v43) = v13;
  v15 = v42;
  v34(v38, v13, v42);
  swift_getKeyPath();
  v16 = sub_258049FF0();
  swift_allocObject();
  v17 = sub_25804A000();
  *(&v46 + 1) = v16;
  v41 = sub_258009670(&qword_27F9159C8, MEMORY[0x277CDD5B8], MEMORY[0x277CDD5B0]);
  v47 = v41;
  *&v45 = v17;
  v33 = v11;
  sub_25804A020();
  v18 = 4 * v2;
  KeyPath = "_parentCredentialRecords";
  v35 = swift_getKeyPath();
  *(&v49 + 1) = v12;
  v19 = v12;
  v37 = v12;
  *&v48 = MEMORY[0x277D84F90];
  v20 = v34;
  v34(v14, v13, v15);
  swift_getKeyPath();
  swift_allocObject();
  v21 = sub_25804A000();
  v22 = v41;
  *(&v46 + 1) = v16;
  v47 = v41;
  *&v45 = v21;
  sub_25804A020();
  KeyPath = (v18 + v40);
  v35 = "credentialRecords";
  swift_getKeyPath();
  *(&v49 + 1) = v19;
  *&v48 = MEMORY[0x277D84F90];
  v20(v14, v43, v15);
  swift_getKeyPath();
  swift_allocObject();
  v23 = v14;
  v24 = sub_25804A000();
  *(&v46 + 1) = v16;
  v47 = v22;
  *&v45 = v24;
  v25 = v33;
  sub_25804A020();
  swift_getKeyPath();
  v26 = MEMORY[0x277D839B0];
  *(&v49 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  *(&v49 + 1) = v26;
  LOBYTE(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_25804A020();
  KeyPath = swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v27 = v42;
  v20(v23, v43, v42);
  swift_getKeyPath();
  swift_allocObject();
  v28 = MEMORY[0x277D84F90];
  v29 = sub_25804A000();
  v30 = v41;
  *(&v46 + 1) = v16;
  v47 = v41;
  *&v45 = v29;
  sub_25804A020();
  v40 = v25 + 10 * v40;
  swift_getKeyPath();
  *(&v49 + 1) = v37;
  *&v48 = v28;
  v20(v23, v43, v27);
  swift_getKeyPath();
  swift_allocObject();
  v31 = sub_25804A000();
  *(&v46 + 1) = v16;
  v47 = v30;
  *&v45 = v31;
  sub_25804A020();
  return v39;
}

unint64_t sub_258011E3C()
{
  result = qword_27F9159D0;
  if (!qword_27F9159D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9159D8, &unk_25804DB88);
    sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9159D0);
  }

  return result;
}

uint64_t sub_258012034(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915528, &qword_25804BFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258012150()
{
  v0 = sub_258049FE0();
  v18 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v4 = *(sub_25804A030() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v21 = v6;
  *(v6 + 16) = xmmword_25804CBF0;
  v7 = v6 + v5;
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = v7;
  sub_25804A020();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_25804A020();
  KeyPath = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159C0, &qword_25804D9A0);
  *(&v26 + 1) = v8;
  *&v25 = MEMORY[0x277D84F90];
  v9 = *MEMORY[0x277CDD5A0];
  v10 = *(v1 + 104);
  v17[1] = v1 + 104;
  v10(v3, v9, v0);
  swift_getKeyPath();
  v11 = sub_258049FF0();
  swift_allocObject();
  v12 = v3;
  v13 = sub_25804A000();
  *(&v23 + 1) = v11;
  v14 = sub_258009670(&qword_27F9159C8, MEMORY[0x277CDD5B8], MEMORY[0x277CDD5B0]);
  v24 = v14;
  *&v22 = v13;
  sub_25804A020();
  KeyPath = "_parentCredentialRecords";
  swift_getKeyPath();
  *(&v26 + 1) = v8;
  *&v25 = MEMORY[0x277D84F90];
  v10(v12, v9, v18);
  swift_getKeyPath();
  swift_allocObject();
  v15 = sub_25804A000();
  *(&v23 + 1) = v11;
  v24 = v14;
  *&v22 = v15;
  sub_25804A020();
  return v21;
}

uint64_t sub_2580125F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  sub_25804A030();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25804CC00;
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  return v4;
}

uint64_t sub_2580127E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  sub_25804A030();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25804CC10;
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  return v0;
}

uint64_t sub_25801318C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  sub_25804A030();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25804CBF0;
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  return v0;
}

uint64_t sub_258013438()
{
  v0 = sub_258049FE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  sub_25804A030();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25804CC00;
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159B0, &qword_25804D920);
  sub_25804A080();
  *(swift_allocObject() + 16) = xmmword_25804B660;
  sub_25804A070();
  v5 = sub_25804A090();
  swift_allocObject();
  v6 = sub_25804A0A0();
  *(&v11 + 1) = v5;
  v12 = sub_258009670(&qword_27F9159B8, MEMORY[0x277CDD5E8], MEMORY[0x277CDD5E0]);
  *&v10 = v6;
  sub_25804A020();
  swift_getKeyPath();
  *(&v14 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159C0, &qword_25804D9A0);
  *&v13 = MEMORY[0x277D84F90];
  (*(v1 + 104))(v3, *MEMORY[0x277CDD5A8], v0);
  swift_getKeyPath();
  v7 = sub_258049FF0();
  swift_allocObject();
  v8 = sub_25804A000();
  *(&v11 + 1) = v7;
  v12 = sub_258009670(&qword_27F9159C8, MEMORY[0x277CDD5B8], MEMORY[0x277CDD5B0]);
  *&v10 = v8;
  sub_25804A020();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  *(&v14 + 1) = &type metadata for DataResolveStatus;
  v13 = xmmword_25804CBD0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_25804A020();
  return v4;
}

unint64_t sub_25801393C()
{
  result = qword_27F915A00;
  if (!qword_27F915A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915A00);
  }

  return result;
}

uint64_t sub_258013990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258013A00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258013A68()
{
  result = qword_27F915A08;
  if (!qword_27F915A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915268, &qword_25804F1E0);
    sub_258009670(&qword_27F915A10, type metadata accessor for DataPersistenceValue, &unk_25804C308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915A08);
  }

  return result;
}

uint64_t sub_258013B38()
{
  v26 = sub_25804A030();
  v0 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258049FE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v7 = *(v0 + 72);
  v25 = v0;
  v8 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v22[1] = 4 * v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25804CC20;
  v23 = v8;
  v24 = v9;
  swift_getKeyPath();
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  *(&v31 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159C0, &qword_25804D9A0);
  *&v30 = MEMORY[0x277D84F90];
  (*(v4 + 104))(v6, *MEMORY[0x277CDD5A8], v3);
  swift_getKeyPath();
  v10 = sub_258049FF0();
  swift_allocObject();
  v11 = sub_25804A000();
  *(&v28 + 1) = v10;
  v29 = sub_258009670(&qword_27F9159C8, MEMORY[0x277CDD5B8], MEMORY[0x277CDD5B0]);
  *&v27 = v11;
  sub_25804A020();
  swift_getKeyPath();
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  *(&v31 + 1) = &type metadata for DataResolveStatus;
  v30 = xmmword_25804CBD0;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v30 = 0u;
  v31 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A20, &qword_25804E0D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25804B660;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A28, &qword_25804E0D8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25804CC30;
  *(v13 + 32) = swift_getKeyPath();
  *(v13 + 40) = swift_getKeyPath();
  *(v12 + 32) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A30, &qword_25804E0E0);
  swift_allocObject();
  v15 = sub_25804A040();
  *(&v28 + 1) = v14;
  v29 = sub_257FECB0C(&qword_27F915A38, &qword_27F915A30, &qword_25804E0E0, MEMORY[0x277CDD5D8]);
  *&v27 = v15;
  sub_25804A020();
  v16 = sub_25800A3B4(0, 1, 1, MEMORY[0x277D84F90]);
  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_25800A3B4((v17 > 1), v18 + 1, 1, v16);
  }

  v16[2] = v18 + 1;
  v19 = v16 + v23 + v18 * v7;
  v20 = v16;
  (*(v25 + 32))(v19, v2, v26);
  *&v27 = v24;
  sub_257FF987C(v20);
  return v27;
}

uint64_t sub_2580141BC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915A48, &qword_25804E0E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258014250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2580142C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915608, &qword_25804BDB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_258014598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x444964726F636572;
  *(inited + 16) = xmmword_25804E120;
  *(inited + 40) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();
  v2 = v0;

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  v3 = *(&v43 + 1);
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v0;
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  strcpy((inited + 80), "managementKey");
  v5 = v4;
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v6 = *(&v43 + 1);
  *(inited + 96) = v0;
  *(inited + 104) = v6;
  *(inited + 120) = v5;
  *(inited + 128) = 0x49616E6F73726570;
  *(inited + 136) = 0xE900000000000044;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  v7 = v0;
  v8 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    v7 = 7104878;
    v8 = 0xE300000000000000;
  }

  *(inited + 144) = v7;
  *(inited + 152) = v8;
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 176) = 0x4449656C646E7562;
  *(inited + 184) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v9 = v0;
  v10 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    v9 = 7104878;
    v10 = 0xE300000000000000;
  }

  v11 = MEMORY[0x277D837D0];
  *(inited + 192) = v9;
  *(inited + 200) = v10;
  *(inited + 216) = v11;
  strcpy((inited + 224), "codeIdentity");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *&v43 = v0;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v12 = sub_258049EE0();

  if (v12)
  {
    v13 = sub_25801593C();

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    *&v43 = v13;
    sub_258019BBC(&v43, (inited + 240));
  }

  else
  {
    *(inited + 264) = v11;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
  }

  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x8000000258050A00;
  *&v43 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258011E3C();
  sub_258049EF0();

  v14 = v43;
  if (v43 >> 62)
  {
    v15 = sub_25804A480();
  }

  else
  {
    v15 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    *&v43 = MEMORY[0x277D84F90];
    result = sub_258033244(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_57;
    }

    v17 = 0;
    v18 = v43;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v17, v14);
      }

      else
      {
      }

      v19 = sub_258015D8C();

      *&v43 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_258033244((v20 > 1), v21 + 1, 1);
        v18 = v43;
      }

      ++v17;
      *(v18 + 16) = v21 + 1;
      *(v18 + 8 * v21 + 32) = v19;
    }

    while (v15 != v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB0, &qword_25804E958);
  *(inited + 288) = v18;
  v42 = v22;
  *(inited + 312) = v22;
  *(inited + 320) = 0x6576697463417369;
  *(inited + 328) = 0xE800000000000000;
  *&v43 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v23 = MEMORY[0x277D839B0];
  *(inited + 336) = v43;
  *(inited + 360) = v23;
  strcpy((inited + 368), "pendingRemoval");
  *(inited + 383) = -18;
  *&v43 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 384) = v43;
  *(inited + 408) = v23;
  *(inited + 416) = 0xD000000000000013;
  *(inited + 424) = 0x8000000258050D20;
  if (sub_25801BF90(1))
  {
    v24 = sub_2580161DC();

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    *&v43 = v24;
    sub_258019BBC(&v43, (inited + 432));
    v25 = MEMORY[0x277D837D0];
  }

  else
  {
    v25 = MEMORY[0x277D837D0];
    *(inited + 456) = MEMORY[0x277D837D0];
    *(inited + 432) = 7104878;
    *(inited + 440) = 0xE300000000000000;
  }

  *(inited + 464) = 0xD000000000000013;
  *(inited + 472) = 0x8000000258050D40;
  if (sub_25801BF90(2))
  {
    v26 = sub_2580161DC();

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    *&v43 = v26;
    sub_258019BBC(&v43, (inited + 480));
  }

  else
  {
    *(inited + 504) = v25;
    *(inited + 480) = 7104878;
    *(inited + 488) = 0xE300000000000000;
  }

  *(inited + 512) = 0xD000000000000011;
  *(inited + 520) = 0x80000002580509C0;
  *&v43 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  v27 = v43;
  if (v43 >> 62)
  {
    v28 = sub_25804A480();
  }

  else
  {
    v28 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v28)
  {

    v30 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  *&v43 = MEMORY[0x277D84F90];
  result = sub_258033244(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v29 = 0;
  v30 = v43;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](v29, v27);
    }

    else
    {
    }

    v31 = sub_258016CCC();

    *&v43 = v30;
    v33 = *(v30 + 16);
    v32 = *(v30 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_258033244((v32 > 1), v33 + 1, 1);
      v30 = v43;
    }

    ++v29;
    *(v30 + 16) = v33 + 1;
    *(v30 + 8 * v33 + 32) = v31;
  }

  while (v28 != v29);

LABEL_40:
  *(inited + 552) = v42;
  *(inited + 528) = v30;
  *(inited + 560) = 0xD000000000000010;
  *(inited + 568) = 0x80000002580509E0;
  *&v43 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  v34 = v43;
  if (!(v43 >> 62))
  {
    v35 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_42;
    }

LABEL_54:

    v37 = MEMORY[0x277D84F90];
LABEL_55:
    *(inited + 600) = v42;
    *(inited + 576) = v37;
    v41 = sub_258036B88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
    swift_arrayDestroy();
    return v41;
  }

  v35 = sub_25804A480();
  if (!v35)
  {
    goto LABEL_54;
  }

LABEL_42:
  *&v43 = MEMORY[0x277D84F90];
  result = sub_258033244(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v43;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v36, v34);
      }

      else
      {
      }

      v38 = sub_2580151A0();

      *&v43 = v37;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_258033244((v39 > 1), v40 + 1, 1);
        v37 = v43;
      }

      ++v36;
      *(v37 + 16) = v40 + 1;
      *(v37 + 8 * v40 + 32) = v38;
    }

    while (v35 != v36);

    goto LABEL_55;
  }

LABEL_58:
  __break(1u);
  return result;
}

void *sub_2580151A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7041746E65726170;
  *(inited + 16) = xmmword_25804CC10;
  *(inited + 40) = 0xEF64726F63655270;
  *&v26 = v0;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v3 = sub_258049EE0();

  v4 = MEMORY[0x277D837D0];
  if (v3)
  {
    swift_getKeyPath();
    sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v6 = v3;
    v5 = *(&v26 + 1);
    v7 = (inited + 48);
    *(inited + 72) = v4;
    if (v5)
    {
      v8 = v4;
      *v7 = v6;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
  }

  v8 = v4;
  *v7 = 7104878;
  v5 = 0xE300000000000000;
LABEL_6:
  *(inited + 56) = v5;
  *(inited + 80) = 0x4449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v9 = *(&v26 + 1);
  *(inited + 96) = v0;
  *(inited + 104) = v9;
  *(inited + 120) = v8;
  *(inited + 128) = 0x44496D616574;
  *(inited + 136) = 0xE600000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  v10 = v0;
  v11 = *(&v26 + 1);
  if (!*(&v26 + 1))
  {
    v10 = 7104878;
    v11 = 0xE300000000000000;
  }

  *(inited + 144) = v10;
  *(inited + 152) = v11;
  *(inited + 168) = v8;
  *(inited + 176) = 0x49616E6F73726570;
  *(inited + 184) = 0xE900000000000044;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v12 = v0;
  v13 = *(&v26 + 1);
  if (!*(&v26 + 1))
  {
    v12 = 7104878;
    v13 = 0xE300000000000000;
  }

  *(inited + 192) = v12;
  *(inited + 200) = v13;
  *(inited + 216) = v8;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000258050D20;
  if (sub_25801C304(1))
  {
    v14 = sub_2580161DC();

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    *&v26 = v14;
    sub_258019BBC(&v26, (inited + 240));
  }

  else
  {
    *(inited + 264) = v8;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
  }

  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x80000002580509C0;
  *&v26 = v0;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  v15 = v26;
  if (v26 >> 62)
  {
    v16 = sub_25804A480();
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_25:

    v19 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v16 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_15:
  *&v26 = MEMORY[0x277D84F90];
  result = sub_258033244(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
    return result;
  }

  v18 = 0;
  v19 = v26;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](v18, v15);
    }

    else
    {
    }

    v20 = sub_258016CCC();

    *&v26 = v19;
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_258033244((v21 > 1), v22 + 1, 1);
      v19 = v26;
    }

    ++v18;
    *(v19 + 16) = v22 + 1;
    *(v19 + 8 * v22 + 32) = v20;
  }

  while (v16 != v18);

  v1 = v0;
LABEL_26:
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB0, &qword_25804E958);
  *(inited + 288) = v19;
  *(inited + 312) = v23;
  *(inited + 320) = 0x64656E616870726FLL;
  *(inited + 328) = 0xE800000000000000;
  *&v26 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v24 = sub_258049EE0();

  if (v24)
  {
  }

  *(inited + 360) = MEMORY[0x277D839B0];
  *(inited + 336) = v24 == 0;
  v25 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v25;
}

unint64_t sub_25801593C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x726F636552707061;
  *(inited + 16) = xmmword_25804CC00;
  *(inited + 40) = 0xE900000000000064;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v2 = sub_258049EE0();

  v3 = MEMORY[0x277D837D0];
  if (!v2)
  {
    v5 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();
  v3 = MEMORY[0x277D837D0];

  v4 = v8;
  v5 = (inited + 48);
  *(inited + 72) = v3;
  if (!v8)
  {
LABEL_5:
    *v5 = 7104878;
    v4 = 0xE300000000000000;
    goto LABEL_6;
  }

  *v5 = v2;
LABEL_6:
  *(inited + 56) = v4;
  strcpy((inited + 80), "codeSigningID");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 96) = v0;
  *(inited + 104) = v8;
  *(inited + 120) = v3;
  *(inited + 128) = 0x44496D616574;
  *(inited + 136) = 0xE600000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 144) = v0;
  *(inited + 152) = v8;
  *(inited + 168) = v3;
  *(inited + 176) = 1752457584;
  *(inited + 184) = 0xE400000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 216) = v3;
  *(inited + 192) = v0;
  *(inited + 200) = v8;
  v6 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_258015D8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x726F636552707061;
  *(inited + 16) = xmmword_25804CC00;
  *(inited + 40) = 0xE900000000000064;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v2 = sub_258049EE0();

  v3 = MEMORY[0x277D837D0];
  if (!v2)
  {
    v5 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();
  v3 = MEMORY[0x277D837D0];

  v4 = v8;
  v5 = (inited + 48);
  *(inited + 72) = v3;
  if (!v8)
  {
LABEL_5:
    *v5 = 7104878;
    v4 = 0xE300000000000000;
    goto LABEL_6;
  }

  *v5 = v2;
LABEL_6:
  *(inited + 56) = v4;
  strcpy((inited + 80), "codeSigningID");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 96) = v0;
  *(inited + 104) = v8;
  *(inited + 120) = v3;
  *(inited + 128) = 0x44496D616574;
  *(inited + 136) = 0xE600000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 144) = v0;
  *(inited + 152) = v8;
  *(inited + 168) = v3;
  *(inited + 176) = 1752457584;
  *(inited + 184) = 0xE400000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 216) = v3;
  *(inited + 192) = v0;
  *(inited + 200) = v8;
  v6 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_2580161DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6570795461746164;
  *&v19 = v0;
  *(inited + 16) = xmmword_25804CC10;
  *(inited + 40) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258049F00();

  v3 = *(&v19 + 1);
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v19;
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  strcpy((inited + 80), "managementKey");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v5 = *(&v19 + 1);
  *(inited + 96) = v0;
  *(inited + 104) = v5;
  *(inited + 120) = v4;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000258050A60;
  v6 = sub_258004F04();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 7104878;
  }

  v9 = 0xE300000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 168) = v4;
  *(inited + 176) = 0x6365527465737361;
  *(inited + 184) = 0xEB0000000064726FLL;
  *&v19 = v0;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  v10 = sub_258049EE0();

  if (v10)
  {

    v11 = 0xE700000000000000;
    v12 = 0x746E6573657270;
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x746E65736261;
  }

  *(inited + 192) = v12;
  *(inited + 200) = v11;
  *(inited + 216) = v4;
  *(inited + 224) = 0x6F43737574617473;
  *(inited + 232) = 0xEA00000000006564;
  *&v19 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0);
  sub_258049F00();

  if (BYTE8(v19))
  {
    *(inited + 264) = v4;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
  }

  else
  {
    v20 = MEMORY[0x277D83B88];
    sub_258019BBC(&v19, (inited + 240));
  }

  strcpy((inited + 272), "statusReason");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  *&v19 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  v14 = *(&v19 + 1);
  v13 = v19;
  if (!*(&v19 + 1))
  {
    v13 = 7104878;
    v14 = 0xE300000000000000;
  }

  *(inited + 288) = v13;
  *(inited + 296) = v14;
  *(inited + 312) = v4;
  *(inited + 320) = 0x64656E616870726FLL;
  *(inited + 328) = 0xE800000000000000;
  sub_258004F04();
  v16 = v15;
  if (v15)
  {
  }

  *(inited + 360) = MEMORY[0x277D839B0];
  *(inited + 336) = v16 == 0;
  v17 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v17;
}

unint64_t sub_25801672C()
{
  v1 = v0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  MEMORY[0x28223BE20](v24);
  v23 = v22 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "managementKey");
  *(inited + 16) = xmmword_25804CC20;
  *(inited + 46) = -4864;
  v28 = v0;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_258049F00();

  v4 = v29;
  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = v28;
  *(inited + 56) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0x636E657265666572;
  *(inited + 88) = 0xEA00000000007365;
  v28 = v0;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v6 = type metadata accessor for DataRecord(0);
  v22[0] = sub_257FDAD00();
  v22[1] = v6;
  sub_258049EF0();

  v25 = inited + 32;
  if (v28 >> 62)
  {
    v7 = sub_25804A480();
  }

  else
  {
    v7 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0x6465766C6F736552;

  v9 = MEMORY[0x277D83B88];
  *(inited + 96) = v7;
  *(inited + 120) = v9;
  *(inited + 128) = 0x6465766C6F736572;
  *(inited + 136) = 0xE800000000000000;
  v28 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FDAB10();
  sub_258049F00();

  v10 = v29;
  if (v29 == 2)
  {
    v11 = 0xE800000000000000;
  }

  else if (v29 == 1)
  {
    v8 = 0x766C6F7365726E55;
    v11 = 0xEA00000000006465;
  }

  else
  {
    v12 = v28;
    v28 = 0x203A64656C696146;
    v29 = 0xE800000000000000;
    v26 = v12;
    v27 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
    v13 = sub_25804A120();
    MEMORY[0x259C76670](v13);

    sub_257FDAB64(v12, v10);
    v8 = v28;
    v11 = v29;
  }

  *(inited + 144) = v8;
  *(inited + 152) = v11;
  v14 = MEMORY[0x277D837D0];
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 176) = 0x65756C6176;
  *(inited + 184) = 0xE500000000000000;
  v28 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEC568();
  v15 = v23;
  sub_258049F00();

  v16 = sub_25804A330();
  v18 = v17;
  sub_258013A00(v15);
  *(inited + 192) = v16;
  *(inited + 200) = v18;
  *(inited + 216) = v14;
  *(inited + 224) = 0x64656E616870726FLL;
  *(inited + 232) = 0xE800000000000000;
  v28 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  if (v28 >> 62)
  {
    v19 = sub_25804A480();
  }

  else
  {
    v19 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = v19 == 0;
  v20 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v20;
}

unint64_t sub_258016CCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "credentialType");
  *(inited + 16) = xmmword_25804CBF0;
  *(inited + 47) = -18;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258049F00();

  v2 = sub_257FF644C(v0, v17);
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 0xE800000000000000;
      v4 = 0x64726F7773736170;
    }
  }

  else if (v2 == 2)
  {
    v3 = 0xEB00000000657461;
    v4 = 0x6369666974726563;
  }

  else if (v2 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x797469746E656469;
  }

  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 72) = v5;
  strcpy((inited + 80), "managementKey");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 96) = v0;
  *(inited + 104) = v17;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000258050A60;
  v6 = sub_257FFC028();
  v8 = 7104878;
  if (v7)
  {
    v8 = v6;
  }

  v9 = 0xE300000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 168) = v5;
  strcpy((inited + 176), "appIdentifier");
  *(inited + 190) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 192) = v0;
  *(inited + 200) = v17;
  *(inited + 216) = v5;
  *(inited + 224) = 0x6365527465737361;
  *(inited + 232) = 0xEB0000000064726FLL;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  v10 = sub_258049EE0();

  if (v10)
  {

    v11 = 0xE700000000000000;
    v12 = 0x746E6573657270;
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x746E65736261;
  }

  *(inited + 240) = v12;
  *(inited + 248) = v11;
  *(inited + 264) = v5;
  *(inited + 272) = 0x64656E616870726FLL;
  *(inited + 280) = 0xE800000000000000;
  sub_257FFC028();
  v14 = v13;
  if (v13)
  {
  }

  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = v14 == 0;
  v15 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v15;
}

unint64_t sub_2580171AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25804CBF0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000258050A60;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049F00();

  v3 = MEMORY[0x277D837D0];
  *(inited + 48) = v0;
  *(inited + 56) = v18;
  *(inited + 72) = v3;
  strcpy((inited + 80), "managementKey");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 96) = v0;
  *(inited + 104) = v18;
  *(inited + 120) = v3;
  *(inited + 128) = 0x636E657265666572;
  *(inited + 136) = 0xEA00000000007365;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  if (v0 >> 62)
  {
    v4 = sub_25804A480();
  }

  else
  {
    v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0x6465766C6F736552;

  v6 = MEMORY[0x277D83B88];
  *(inited + 144) = v4;
  *(inited + 168) = v6;
  *(inited + 176) = 0x6465766C6F736572;
  v7 = 0xE800000000000000;
  *(inited + 184) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FDAB10();
  sub_258049F00();

  v8 = v18;
  if (v18 != 2)
  {
    if (v18 == 1)
    {
      v5 = 0x766C6F7365726E55;
      v7 = 0xEA00000000006465;
    }

    else
    {
      v18 = 0xE800000000000000;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
      v9 = sub_25804A120();
      MEMORY[0x259C76670](v9);

      sub_257FDAB64(v1, v8);
      v5 = 0x203A64656C696146;
      v7 = 0xE800000000000000;
    }
  }

  *(inited + 192) = v5;
  *(inited + 200) = v7;
  v10 = MEMORY[0x277D837D0];
  *(inited + 216) = MEMORY[0x277D837D0];
  *(inited + 224) = 0x65756C6176;
  *(inited + 232) = 0xE500000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019B00();
  sub_258049F00();

  if (v18 >> 60 == 15)
  {
    v11 = (inited + 240);
    *(inited + 264) = v10;
  }

  else
  {
    v12 = sub_258049A50();
    v14 = v13;
    sub_257FDAAA0(v1, v18);
    v11 = (inited + 240);
    *(inited + 264) = v10;
    if (v14)
    {
      *v11 = v12;
      goto LABEL_12;
    }
  }

  *v11 = 7104878;
  v14 = 0xE300000000000000;
LABEL_12:
  *(inited + 248) = v14;
  *(inited + 272) = 0x64656E616870726FLL;
  *(inited + 280) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  if (v1 >> 62)
  {
    v15 = sub_25804A480();
  }

  else
  {
    v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = v15 == 0;
  v16 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_2580177CC()
{
  v1 = v0;
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD000000000000017, 0x8000000258050AE0);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0xD000000000000011, 0x80000002580505C0);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v3 = v0;
  v2 = v55;
  if (sub_25804A160() >= 13)
  {
    v55 = 0xE100000000000000;

    v5 = sub_2580368E4(6, v0, v2, v4);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = MEMORY[0x259C76630](v5, v7, v9, v11);
    v14 = v13;

    MEMORY[0x259C76670](v12, v14);

    MEMORY[0x259C76670](10911970, 0xA300000000000000);

    v16 = sub_25801994C(6uLL, v3, v2, v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = MEMORY[0x259C76630](v16, v18, v20, v22);
    v25 = v24;

    MEMORY[0x259C76670](v23, v25);

    MEMORY[0x259C76670](62, 0xE100000000000000);

    v3 = 60;
    v2 = 0xE100000000000000;
  }

  v26 = 7104878;
  MEMORY[0x259C76670](v3, v2);

  MEMORY[0x259C76670](0x6E6F73726570202CLL, 0xED0000203A444961);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  if (v55)
  {
    v27 = v1;
  }

  else
  {
    v27 = 7104878;
  }

  v28 = 0xE300000000000000;
  if (v55)
  {
    v29 = v55;
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v27, v29);

  MEMORY[0x259C76670](0x656C646E7562202CLL, 0xEC000000203A4449);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v55)
  {
    v30 = v1;
  }

  else
  {
    v30 = 7104878;
  }

  if (v55)
  {
    v31 = v55;
  }

  else
  {
    v31 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v30, v31);

  MEMORY[0x259C76670](0xD000000000000010, 0x8000000258050B00);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v32 = sub_258049EE0();

  if (v32)
  {
    v33 = sub_258018184();
    v28 = v34;
  }

  else
  {
    v33 = 7104878;
  }

  MEMORY[0x259C76670](v33, v28);

  MEMORY[0x259C76670](0x697463417369202CLL, 0xEC000000203A6576);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v1)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v1)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x259C76670](v35, v36);

  MEMORY[0x259C76670](0xD000000000000017, 0x8000000258050B20);
  if (sub_25801BF90(1))
  {
    v37 = sub_258018424();
    v39 = v38;
  }

  else
  {
    v39 = 0xE300000000000000;
    v37 = 7104878;
  }

  MEMORY[0x259C76670](v37, v39);

  MEMORY[0x259C76670](0xD000000000000017, 0x8000000258050B40);
  if (sub_25801BF90(2))
  {
    v26 = sub_258018424();
    v41 = v40;
  }

  else
  {
    v41 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v26, v41);

  MEMORY[0x259C76670](0xD000000000000014, 0x8000000258050B60);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v42 = type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  v43 = MEMORY[0x259C766F0](v1, v42);
  v45 = v44;

  MEMORY[0x259C76670](v43, v45);

  MEMORY[0x259C76670](0xD000000000000014, 0x8000000258050B80);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v46 = type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  v47 = MEMORY[0x259C766F0](v1, v46);
  v49 = v48;

  MEMORY[0x259C76670](v47, v49);

  MEMORY[0x259C76670](0xD00000000000001BLL, 0x8000000258050BA0);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v50 = type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258011E3C();
  sub_258049EF0();

  v51 = MEMORY[0x259C766F0](v1, v50);
  v53 = v52;

  MEMORY[0x259C76670](v51, v53);

  MEMORY[0x259C76670](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_258018184()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD000000000000027, 0x8000000258050C00);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x44496D616574202CLL, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x203A68746170202CLL, 0xE800000000000000);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](125, 0xE100000000000000);
  return 0;
}

unint64_t sub_258018424()
{
  sub_25804A3B0();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258049F00();

  v2 = v0;
  v1 = v30;
  if (sub_25804A160() >= 13)
  {

    v4 = sub_2580368E4(6, v0, v30, v3);
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = MEMORY[0x259C76630](v4, v6, v8, v10);
    v13 = v12;

    MEMORY[0x259C76670](v11, v13);

    MEMORY[0x259C76670](10911970, 0xA300000000000000);

    v15 = sub_25801994C(6uLL, v2, v30, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = MEMORY[0x259C76630](v15, v17, v19, v21);
    v24 = v23;

    MEMORY[0x259C76670](v22, v24);

    MEMORY[0x259C76670](62, 0xE100000000000000);

    v2 = 60;
    v1 = 0xE100000000000000;
  }

  MEMORY[0x259C76670](v2, v1);

  MEMORY[0x259C76670](0x527465737361202CLL, 0xEF203A64726F6365);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  v25 = sub_258049EE0();

  if (v25)
  {
    v26 = sub_258018F98();
    v28 = v27;
  }

  else
  {
    v28 = 0xE300000000000000;
    v26 = 7104878;
  }

  MEMORY[0x259C76670](v26, v28);

  MEMORY[0x259C76670](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_2580187EC()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD00000000000001CLL, 0x8000000258050C30);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x44496D616574202CLL, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  if (v14)
  {
    v1 = v0;
  }

  else
  {
    v1 = 7104878;
  }

  if (v14)
  {
    v2 = v14;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v1, v2);

  MEMORY[0x259C76670](0x6E6F73726570202CLL, 0xED0000203A444961);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v14)
  {
    v3 = v0;
  }

  else
  {
    v3 = 7104878;
  }

  if (v14)
  {
    v4 = v14;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v3, v4);

  MEMORY[0x259C76670](0xD000000000000017, 0x8000000258050B20);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v5 = type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049EF0();

  v6 = MEMORY[0x259C766F0](v0, v5);
  v8 = v7;

  MEMORY[0x259C76670](v6, v8);

  MEMORY[0x259C76670](0xD000000000000015, 0x8000000258050C50);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v9 = type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  v10 = MEMORY[0x259C766F0](v0, v9);
  v12 = v11;

  MEMORY[0x259C76670](v10, v12);

  MEMORY[0x259C76670](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_258018CD4()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD00000000000002DLL, 0x8000000258050C70);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x44496D616574202CLL, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x203A68746170202CLL, 0xE800000000000000);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](125, 0xE100000000000000);
  return 0;
}

unint64_t sub_258018F98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  MEMORY[0x28223BE20](v1);
  sub_25804A3B0();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x3A65756C6176202CLL, 0xE900000000000020);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEC568();
  sub_258049F00();

  v2 = sub_25804A120();
  MEMORY[0x259C76670](v2);

  return 0xD00000000000001FLL;
}

uint64_t sub_25801921C()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD000000000000021, 0x8000000258050CA0);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258049F00();

  sub_257FF644C(v0, v6);
  sub_25804A460();
  MEMORY[0x259C76670](0xD000000000000011, 0x80000002580505C0);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0xD000000000000011, 0x8000000258050CD0);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x6552746573736120, 0xEE00203A64726F63);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  v1 = sub_258049EE0();

  if (v1)
  {
    v2 = sub_2580195E4();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x259C76670](v2, v4);

  MEMORY[0x259C76670](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2580195E4()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD00000000000002DLL, 0x8000000258050CF0);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](2108192, 0xE300000000000000);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x65756C6176202C29, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019B00();
  sub_258049F00();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A48, &qword_25804E0E8);
  v1 = sub_25804A120();
  MEMORY[0x259C76670](v1);

  return 0;
}

uint64_t sub_25801994C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_25804A170();
  if (a2)
  {
    a1 = 15;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_258019AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258019B00()
{
  result = qword_27F915A50;
  if (!qword_27F915A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915A48, &qword_25804E0E8);
    sub_257FF7854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915A50);
  }

  return result;
}

_OWORD *sub_258019BBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_258019BEC(char a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a2, a3);
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_35:
    v5 = sub_25804A480();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C768B0](v6, v4);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v7 = *(v4 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_31;
          }
        }

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
        sub_258049A90();

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
        sub_258049F00();

        v9 = sub_25804A4C0();

        if (v9 == 2)
        {
          v10 = 0x704179636167656CLL;
          v11 = 0xEF6769666E6F4370;
        }

        else
        {
          if (v9 == 1)
          {
            v10 = 0x65446769666E6F63;
          }

          else
          {
            v10 = 0x6E776F6E6B6E75;
          }

          if (v9 == 1)
          {
            v11 = 0xED0000736C696174;
          }

          else
          {
            v11 = 0xE700000000000000;
          }
        }

        if (a1)
        {
          if (a1 == 1)
          {
            v12 = 0x65446769666E6F63;
          }

          else
          {
            v12 = 0x704179636167656CLL;
          }

          if (a1 == 1)
          {
            v13 = 0xED0000736C696174;
          }

          else
          {
            v13 = 0xEF6769666E6F4370;
          }

          if (v10 != v12)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v13 = 0xE700000000000000;
          if (v10 != 0x6E776F6E6B6E75)
          {
            goto LABEL_26;
          }
        }

        if (v11 == v13)
        {
          goto LABEL_32;
        }

LABEL_26:
        v14 = sub_25804A560();

        if (v14)
        {

          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_258019F30(char a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v3) = a1;
  v4 = (*(a3 + 8))(a2, a3);
  v5 = v4;
  v21 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_42:
    v6 = sub_25804A480();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = v3;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x259C768B0](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            v19 = v21;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_42;
          }

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_39;
          }
        }

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
        sub_258049A90();

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
        sub_258049F00();

        v10 = sub_25804A4C0();

        if (v10 == 3)
        {
          v13 = 0xE800000000000000;
          v12 = 0x797469746E656469;
          v11 = 0x64726F7773736170;
        }

        else
        {
          v11 = 0x64726F7773736170;
          if (v10 == 2)
          {
            v12 = 0x6369666974726563;
            v13 = 0xEB00000000657461;
          }

          else
          {
            if (v10 == 1)
            {
              v12 = 0x64726F7773736170;
            }

            else
            {
              v12 = 0x6E776F6E6B6E75;
            }

            if (v10 == 1)
            {
              v13 = 0xE800000000000000;
            }

            else
            {
              v13 = 0xE700000000000000;
            }
          }
        }

        v14 = 0x797469746E656469;
        if (v8 == 2)
        {
          v14 = 0x6369666974726563;
        }

        v15 = 0xEB00000000657461;
        if (v8 != 2)
        {
          v15 = 0xE800000000000000;
        }

        if (v8)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v11 = 0x6E776F6E6B6E75;
          v16 = 0xE700000000000000;
        }

        if (v8 <= 1)
        {
          v17 = v11;
        }

        else
        {
          v17 = v14;
        }

        if (v8 <= 1)
        {
          v3 = v16;
        }

        else
        {
          v3 = v15;
        }

        if (v12 == v17 && v13 == v3)
        {
        }

        else
        {
          v18 = sub_25804A560();

          if ((v18 & 1) == 0)
          {

            goto LABEL_6;
          }
        }

        sub_25804A410();
        v3 = *(v21 + 16);
        sub_25804A440();
        sub_25804A450();
        sub_25804A420();
LABEL_6:
        ++v7;
        if (v9 == v6)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_44:

  return v19;
}

uint64_t sub_25801A2C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v5) = a1;
  v6 = (*(a5 + 8))(a4, a5);
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_44:
    v8 = sub_25804A480();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v26 = v7 & 0xFFFFFFFFFFFFFF8;
      v27 = v7 & 0xC000000000000001;
      v24 = v5;
      v25 = v7;
      do
      {
        if (v27)
        {
          v5 = MEMORY[0x259C768B0](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_40:
            __break(1u);
LABEL_41:

            return v5;
          }
        }

        else
        {
          if (v9 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          v5 = *(v7 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_40;
          }
        }

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
        sub_258049A90();

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
        sub_258049F00();

        v12 = sub_25804A4C0();

        if (v12 == 3)
        {
          v16 = 0xE800000000000000;
          v15 = 0x797469746E656469;
          v13 = 0x6E776F6E6B6E75;
          v14 = 0xE700000000000000;
        }

        else
        {
          v13 = 0x6E776F6E6B6E75;
          v14 = 0xE700000000000000;
          if (v12 == 2)
          {
            v15 = 0x6369666974726563;
            v16 = 0xEB00000000657461;
          }

          else
          {
            if (v12 == 1)
            {
              v15 = 0x64726F7773736170;
            }

            else
            {
              v15 = 0x6E776F6E6B6E75;
            }

            if (v12 == 1)
            {
              v16 = 0xE800000000000000;
            }

            else
            {
              v16 = 0xE700000000000000;
            }
          }
        }

        v17 = 0x797469746E656469;
        if (v24 == 2)
        {
          v17 = 0x6369666974726563;
        }

        v18 = 0xEB00000000657461;
        if (v24 != 2)
        {
          v18 = 0xE800000000000000;
        }

        if (v24)
        {
          v13 = 0x64726F7773736170;
          v14 = 0xE800000000000000;
        }

        if (v24 <= 1)
        {
          v19 = v13;
        }

        else
        {
          v19 = v17;
        }

        if (v24 <= 1)
        {
          v20 = v14;
        }

        else
        {
          v20 = v18;
        }

        v21 = v8;
        if (v15 == v19 && v16 == v20)
        {

          v7 = v25;
        }

        else
        {
          v22 = sub_25804A560();

          v7 = v25;
          if ((v22 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        if (v5 == a2 && v30 == a3)
        {
          goto LABEL_41;
        }

        v10 = sub_25804A560();

        if (v10)
        {

          return v5;
        }

LABEL_5:

        ++v9;
        v8 = v21;
      }

      while (v11 != v21);
    }
  }

  return 0;
}

uint64_t sub_25801A70C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25801A75C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_25804A3B0();

      v7 = 0xD000000000000021;
    }

    else
    {
      sub_25804A3B0();

      v7 = 0xD000000000000020;
    }

    swift_getErrorValue();
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    sub_25804A3B0();

    v7 = 0xD000000000000020;
    swift_getErrorValue();
LABEL_11:
    v5 = sub_25804A5B0();
    MEMORY[0x259C76670](v5);

    return v7;
  }

  if (a3 != 3)
  {
    sub_25804A3B0();

    v7 = 0xD000000000000029;
    swift_getErrorValue();
    goto LABEL_11;
  }

  sub_25804A3B0();

  v7 = 0xD000000000000014;
  MEMORY[0x259C76670](a1, a2);
  return v7;
}

unint64_t sub_25801A998(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD8, &qword_25804EC50);
    v2 = sub_25804A4B0();
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

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_258019BBC(&v22, v24);
        sub_258019BBC(v24, v25);
        sub_258019BBC(v25, &v23);
        result = sub_2580337E4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_258019BBC(&v23, v11);
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
          result = sub_258019BBC(&v23, (v2[7] + 32 * result));
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25801AC40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25801AC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_25801ACE8()
{
  result = qword_27F915AC0;
  if (!qword_27F915AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915AC0);
  }

  return result;
}

void sub_25801AD3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v7 = sub_258049A20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  v12 = a2;
  v13 = sub_25804A100();
  v14 = sub_25804A100();
  v15 = _CFPreferencesCopyPathForManagedDomain();

  if (!v15)
  {
    v53 = v4;
    goto LABEL_5;
  }

  sub_25804A110();

  sub_2580499D0();

  v16 = sub_258049A30();
  if (v4)
  {

    (*(v8 + 8))(v10, v7);
    v53 = 0;
LABEL_5:
    v18 = v12;
    v19 = sub_258036B88(MEMORY[0x277D84F90]);
    goto LABEL_6;
  }

  v29 = v16;
  v30 = v17;
  v53 = 0;
  (*(v8 + 8))(v10, v7);
  v31 = objc_opt_self();
  v32 = sub_258049A40();
  *&v56[0] = 0;
  v33 = [v31 propertyListWithData:v32 options:1 format:0 error:v56];

  v34 = *&v56[0];
  if (!v33)
  {
    v49 = v34;
    v50 = sub_2580499B0();

    v53 = v50;
    swift_willThrow();
    sub_257FDAAB4(v29, v30);
    return;
  }

  sub_25804A350();
  sub_257FDAAB4(v29, v30);
  swift_unknownObjectRelease();
  sub_258019BBC(&v57, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = v54;
  v18 = v12;
LABEL_6:
  v21 = v51;
  v20 = v52;
  v55 = v19;
  if (v52 >> 60 == 15)
  {
    if (!*(v19 + 16))
    {

      return;
    }

    goto LABEL_18;
  }

  v22 = v19;
  v23 = objc_opt_self();
  sub_257FECD7C(v21, v20);
  v24 = sub_258049A40();
  *&v56[0] = 0;
  v25 = [v23 propertyListWithData:v24 options:1 format:0 error:v56];

  v26 = *&v56[0];
  if (!v25)
  {
    v35 = v26;
    v36 = sub_2580499B0();

    v53 = v36;
    swift_willThrow();
    sub_257FDAAA0(v21, v20);

    return;
  }

  sub_25804A350();
  swift_unknownObjectRelease();
  sub_25801BC58(&v57, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD0, &qword_25804EC48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v57);
    sub_257FDAAA0(v21, v20);
    goto LABEL_18;
  }

  v27 = sub_25801A998(v54);
  sub_257FDAAA0(v21, v20);

  __swift_destroy_boxed_opaque_existential_1(&v57);
  if (!v27)
  {
LABEL_18:
    sub_25803385C(0xD00000000000001FLL, 0x8000000258050EA0, v56);
    sub_25801BBF0(v56);
    goto LABEL_19;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
  *&v57 = v27;
  sub_258019BBC(&v57, v56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v22;
  sub_2580351E4(v56, 0xD00000000000001FLL, 0x8000000258050EA0, isUniquelyReferenced_nonNull_native);
  v55 = v54;
LABEL_19:
  v37 = sub_25804A0D0();
  v38 = sub_25804A100();
  v39 = sub_25804A100();
  v40 = _CFPreferencesWriteManagedDomain();

  if (!v40)
  {
    if (qword_27F915170 != -1)
    {
      swift_once();
    }

    v41 = sub_258049D30();
    __swift_project_value_buffer(v41, qword_27F919E00);
    v42 = sub_258049D10();
    v43 = sub_25804A2D0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v57 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258050EC0, &v57);
      _os_log_impl(&dword_257FD4000, v42, v43, "%s - failed to write managed preferences", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x259C77210](v45, -1, -1);
      MEMORY[0x259C77210](v44, -1, -1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A78, &unk_25804E110);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_25804B660;
  *(v46 + 32) = v11;
  *(v46 + 40) = v18;

  v47 = sub_25804A1E0();
  _CFPreferencesManagementStatusChangedForDomains();

  v48 = sub_25804A1E0();

  _CFPreferencesPostValuesChangedInDomains();
}

void sub_25801B440(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_27F915170 != -1)
  {
    swift_once();
  }

  v9 = sub_258049D30();
  __swift_project_value_buffer(v9, qword_27F919E00);

  v10 = sub_258049D10();
  v11 = sub_25804A2C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_258032C5C(0xD000000000000019, 0x8000000258050F30, v14);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_258032C5C(a1, a2, v14);
    _os_log_impl(&dword_257FD4000, v10, v11, "%s - for: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v13, -1, -1);
    MEMORY[0x259C77210](v12, -1, -1);
  }

  sub_25801AD3C(a1, a2, a3, a4);
  if (v4)
  {
    v14[0] = v4;
    v14[1] = 0;
    v15 = 0;
    sub_25801ACE8();
    swift_willThrowTypedImpl();
  }
}

void sub_25801B634(uint64_t a1, unint64_t a2)
{
  if (qword_27F915170 != -1)
  {
    swift_once();
  }

  v5 = sub_258049D30();
  __swift_project_value_buffer(v5, qword_27F919E00);

  v6 = sub_258049D10();
  v7 = sub_25804A2C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_258032C5C(0xD000000000000015, 0x8000000258050E80, v10);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_258032C5C(a1, a2, v10);
    _os_log_impl(&dword_257FD4000, v6, v7, "%s - for: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  sub_25801AD3C(a1, a2, 0, 0xF000000000000000);
  if (v2)
  {
    v10[0] = v2;
    v10[1] = 0;
    v11 = 1;
    sub_25801ACE8();
    swift_willThrowTypedImpl();
  }
}

unint64_t sub_25801B81C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = (a1 + *(type metadata accessor for AppRecordLookalike(0) + 32));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    if (a3 >> 60 == 15)
    {
      sub_25801B634(v9, v8);
      if (v3)
      {
        return v10;
      }
    }

    else
    {
      sub_257FECD7C(a2, a3);
      sub_25801B440(v9, v8, a2, a3);
      if (v3)
      {
        v4 = v16;
      }

      else
      {
        v4 = 0;
      }

      sub_257FDAAA0(a2, a3);
    }
  }

  else
  {
    if (qword_27F915170 != -1)
    {
      swift_once();
    }

    v4 = 0xD000000000000010;
    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919E00);
    v12 = sub_258049D10();
    v13 = sub_25804A2D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_258032C5C(0xD000000000000023, 0x8000000258050F00, v18);
      _os_log_impl(&dword_257FD4000, v12, v13, "%s - app record is missing bundleID", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x259C77210](v15, -1, -1);
      MEMORY[0x259C77210](v14, -1, -1);
    }

    v18[0] = 0xD000000000000010;
    v18[1] = 0x8000000258050EE0;
    v19 = 3;
    sub_25801ACE8();
    swift_willThrowTypedImpl();
  }

  return v4;
}

void sub_25801BA64(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AppRecordLookalike(0) + 32));
  v2 = v1[1];
  if (v2)
  {
    sub_25801B634(*v1, v2);
  }

  else
  {
    if (qword_27F915170 != -1)
    {
      swift_once();
    }

    v3 = sub_258049D30();
    __swift_project_value_buffer(v3, qword_27F919E00);
    v4 = sub_258049D10();
    v5 = sub_25804A2C0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_258032C5C(0x704165766F6D6572, 0xEF293A7070612870, &v8);
      _os_log_impl(&dword_257FD4000, v4, v5, "%s - app record has no bundleID", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x259C77210](v7, -1, -1);
      MEMORY[0x259C77210](v6, -1, -1);
    }
  }
}

uint64_t sub_25801BBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AC8, &unk_25804EC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25801BC58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25801BD08()
{
  v0 = sub_258049D30();
  __swift_allocate_value_buffer(v0, qword_27F919E00);
  __swift_project_value_buffer(v0, qword_27F919E00);
  return sub_258049D20();
}

uint64_t sub_25801BD88()
{
  v0 = sub_258049D30();
  __swift_allocate_value_buffer(v0, qword_27F919E18);
  __swift_project_value_buffer(v0, qword_27F919E18);
  return sub_258049D20();
}

uint64_t sub_25801BE08()
{
  v0 = sub_258049D30();
  __swift_allocate_value_buffer(v0, qword_27F919E30);
  __swift_project_value_buffer(v0, qword_27F919E30);
  return sub_258049D20();
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

uint64_t sub_25801BF18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_258049D30();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_258049D20();
}

uint64_t sub_25801BF90(char a1)
{
  v2 = off_2869384B8(*v1, &off_2869384B0);
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_35:
    v4 = sub_25804A480();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x259C768B0](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:

            return v6;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_31;
          }
        }

        swift_getKeyPath();
        sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
        sub_258049A90();

        swift_getKeyPath();
        sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
        sub_258049F00();

        v8 = sub_25804A4C0();

        if (v8 == 1)
        {
          v9 = 0x65446769666E6F63;
          v10 = 0xED0000736C696174;
        }

        else
        {
          if (v8 == 2)
          {
            v9 = 0x704179636167656CLL;
          }

          else
          {
            v9 = 0x6E776F6E6B6E75;
          }

          if (v8 == 2)
          {
            v10 = 0xEF6769666E6F4370;
          }

          else
          {
            v10 = 0xE700000000000000;
          }
        }

        if (a1)
        {
          if (a1 == 1)
          {
            v11 = 0x65446769666E6F63;
          }

          else
          {
            v11 = 0x704179636167656CLL;
          }

          if (a1 == 1)
          {
            v12 = 0xED0000736C696174;
          }

          else
          {
            v12 = 0xEF6769666E6F4370;
          }

          if (v9 != v11)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v12 = 0xE700000000000000;
          if (v9 != 0x6E776F6E6B6E75)
          {
            goto LABEL_26;
          }
        }

        if (v10 == v12)
        {
          goto LABEL_32;
        }

LABEL_26:
        v13 = sub_25804A560();

        if (v13)
        {

          return v6;
        }

        ++v5;
      }

      while (v7 != v4);
    }
  }

  return 0;
}

uint64_t sub_25801C304(char a1)
{
  v2 = off_2869384A8(*v1, &off_2869384A0);
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_35:
    v4 = sub_25804A480();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x259C768B0](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:

            return v6;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_31;
          }
        }

        swift_getKeyPath();
        sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
        sub_258049A90();

        swift_getKeyPath();
        sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
        sub_258049F00();

        v8 = sub_25804A4C0();

        if (v8 == 1)
        {
          v9 = 0x65446769666E6F63;
          v10 = 0xED0000736C696174;
        }

        else
        {
          if (v8 == 2)
          {
            v9 = 0x704179636167656CLL;
          }

          else
          {
            v9 = 0x6E776F6E6B6E75;
          }

          if (v8 == 2)
          {
            v10 = 0xEF6769666E6F4370;
          }

          else
          {
            v10 = 0xE700000000000000;
          }
        }

        if (a1)
        {
          if (a1 == 1)
          {
            v11 = 0x65446769666E6F63;
          }

          else
          {
            v11 = 0x704179636167656CLL;
          }

          if (a1 == 1)
          {
            v12 = 0xED0000736C696174;
          }

          else
          {
            v12 = 0xEF6769666E6F4370;
          }

          if (v9 != v11)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v12 = 0xE700000000000000;
          if (v9 != 0x6E776F6E6B6E75)
          {
            goto LABEL_26;
          }
        }

        if (v10 == v12)
        {
          goto LABEL_32;
        }

LABEL_26:
        v13 = sub_25804A560();

        if (v13)
        {

          return v6;
        }

        ++v5;
      }

      while (v7 != v4);
    }
  }

  return 0;
}

uint64_t sub_25801C678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_258034ED8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2580337E4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_258035608();
        v14 = v16;
      }

      result = sub_2580349BC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_25801C770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_257FDAA0C(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    MEMORY[0x28223BE20](v7);
    v9 = (&v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    sub_258036524(*v9, a2, a3, isUniquelyReferenced_nonNull_native, &v12);

    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *v3 = v12;
  }

  else
  {
    sub_257FDAB84(a1, &qword_27F915B60, &qword_25804F150);
    sub_258033900(a2, a3, v13);

    return sub_257FDAB84(v13, &qword_27F915B60, &qword_25804F150);
  }

  return result;
}

uint64_t sub_25801C8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_258035348(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27F915B20, &qword_25804F108);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2580337E4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_258035DA4(&qword_27F915B20, &qword_25804F108);
        v14 = v16;
      }

      result = sub_2580349BC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_25801CAC0(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_258037F14(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  a2(0);
  sub_258037F14(a3, a4, a5);
  v10 = sub_258049DE0();
  if (v5)
  {

    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919DE8);
    v12 = v5;
    v13 = sub_258049D10();
    v14 = sub_25804A2D0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
      v18 = sub_25804A120();
      v20 = sub_258032C5C(v18, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_257FD4000, v13, v14, "AppConfigDatabase - fetch failed with error: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x259C77210](v16, -1, -1);
      MEMORY[0x259C77210](v15, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
  }

  return v10;
}

uint64_t sub_25801CF2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAEC0();
  sub_258049EF0();

  *a2 = v4;
  return result;
}

uint64_t sub_25801D04C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_25801D118@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  *a2 = v4;
  return result;
}

uint64_t sub_25801D224(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

double sub_25801D2F4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25801D424(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_25801D4FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_25801D608(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A80();
}

uint64_t sub_25801D6E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_25801D7EC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A80();
}

uint64_t sub_25801D8C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0);
  sub_258049F00();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_25801D9FC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A80();
}

uint64_t ManagedAppsServer.__allocating_init(scope:inMemoryDatabase:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  ManagedAppsServer.init(scope:inMemoryDatabase:)(a1, v2);
  return v4;
}

uint64_t ManagedAppsServer.init(scope:inMemoryDatabase:)(uint64_t a1, char a2)
{
  type metadata accessor for SecKeyProxyCache();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 112) = sub_258036FA4(MEMORY[0x277D84F90], &qword_27F915B20, &qword_25804F108);
  *(v5 + 120) = 0;
  *(v2 + 80) = v5;
  *(v2 + 88) = sub_258036CB8(v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_25801DBC4()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919E48);
  v7 = sub_258049D10();
  v8 = sub_25804A2E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_257FD4000, v7, v8, "MADaemonServer - startServer", v9, 2u);
    MEMORY[0x259C77210](v9, -1, -1);
  }

  result = sub_25801E064();
  if (!v1)
  {
    v11 = *(v2 + 16);
    if (*(v2 + 24) == 1)
    {
      v12 = sub_258049A20();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    }

    else
    {
      sub_258049B10();
      v13 = sub_258049A20();
      (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    }

    v14 = sub_257FEB5A8(v11, v5, 0);
    v17[3] = type metadata accessor for AppConfigDatabaseImpl(0);
    v17[4] = &off_286937E20;
    v17[0] = v14;
    swift_beginAccess();
    sub_258036DEC(v17, v2 + 32);
    swift_endAccess();
    type metadata accessor for LegacyAppConfigController();
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v2 + 72) = v15;

    return sub_25801DE38();
  }

  return result;
}

uint64_t sub_25801DE38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v5 = sub_258049D30();
  __swift_project_value_buffer(v5, qword_27F919E48);
  v6 = sub_258049D10();
  v7 = sub_25804A2E0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_258032C5C(0xD000000000000014, 0x8000000258051310, &v14);
    _os_log_impl(&dword_257FD4000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  sub_25804A240();
  v10 = sub_25804A270();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_258038E50(0, 0, v4, &unk_25804F3B8, v11);
}

uint64_t sub_25801E064()
{
  v1 = v0;
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = sub_258049A20();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 24) & 1) == 0)
  {
    sub_258049B10();
    v7 = objc_opt_self();
    v8 = [v7 defaultManager];
    sub_258049A00();
    v9 = sub_25804A100();

    v10 = [v8 fileExistsAtPath_];

    if ((v10 & 1) == 0)
    {
      v11 = [v7 defaultManager];
      v12 = sub_2580499E0();
      v17[0] = 0;
      v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v17];

      if (!v13)
      {
        v16 = v17[0];
        sub_2580499B0();

        swift_willThrow();
        return (*(v3 + 8))(v6, v2);
      }

      v14 = v17[0];
    }

    sub_258049A00();
    v15 = sub_25804A100();

    DMCSetSkipBackupAttributeToItemAtPath();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_25801E298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v21 - v10;
  swift_beginAccess();
  v12 = *(v3 + 88);
  if (*(v12 + 16))
  {

    v13 = sub_2580337E4(a1, a2);
    if (v14)
    {
      sub_257FDA854(*(v12 + 56) + 40 * v13, &v24);

      return sub_257FDAA0C(&v24, a3);
    }
  }

  swift_beginAccess();
  result = sub_257FDA958(v5 + 32, v23, &qword_27F915AE0, &qword_25804EC98);
  if (!v23[3])
  {
    goto LABEL_13;
  }

  v16 = *(v5 + 16);
  v17 = sub_258049A20();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = type metadata accessor for AppAssetResolverImpl(0);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  swift_allocObject();
  result = sub_257FD5578(v23, v16, v11, v21);
  if (v4)
  {
    return result;
  }

  v25 = v18;
  v26 = &off_286937DB0;
  *&v24 = result;
  swift_beginAccess();

  sub_25801C770(&v24, a1, a2);
  result = swift_endAccess();
  v19 = *(v5 + 88);
  if (!*(v19 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  result = sub_2580337E4(a1, a2);
  if ((v20 & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  sub_257FDA854(*(v19 + 56) + 40 * result, a3);
}

uint64_t sub_25801E500(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_258049D00();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for ExtensionRecordLookalike(0);
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B78, &qword_25804F3A8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for AppRecordLookalike(0);
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25801E710, 0, 0);
}

uint64_t sub_25801E710()
{
  v1 = v0[17];
  swift_beginAccess();
  result = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v3 = v0[5];
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v4 = sub_258049CD0();
    v0[32] = v4;
    v5 = swift_task_alloc();
    v0[33] = v5;
    *v5 = v0;
    v5[1] = sub_25801E810;
    v6 = v0[31];

    return sub_257FE1B48(v6, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25801E810()
{
  v2 = *(*v1 + 256);
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_25801EC30;
  }

  else
  {
    v3 = sub_25801E93C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25801E93C()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_257FDA958(v2, v1, &qword_27F915280, &qword_25804ED30);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[30];
  if (v5 == 1)
  {
    v7 = v0[17];
    sub_257FDAB84(v6, &qword_27F915280, &qword_25804ED30);
    result = sub_257FDA958(v7 + 32, (v0 + 7), &qword_27F915AE0, &qword_25804EC98);
    v9 = v0[10];
    if (v9)
    {
      __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
      v10 = sub_258049CD0();
      v0[35] = v10;
      v11 = swift_task_alloc();
      v0[36] = v11;
      *v11 = v0;
      v11[1] = sub_25801ECFC;
      v12 = v0[26];

      return sub_257FE3464(v12, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = v0[29];
    v14 = v0[16];
    sub_258037D4C(v6, v13, type metadata accessor for AppRecordLookalike);
    if (sub_2580370D0(v13, v14))
    {
      sub_258037CE4(v0[29], v0[15], type metadata accessor for AppRecordLookalike);
      v15 = type metadata accessor for LookalikeType(0);
      swift_storeEnumTagMultiPayload();
      v16 = 0;
    }

    else
    {
      v15 = type metadata accessor for LookalikeType(0);
      v16 = 1;
    }

    v17 = v0[31];
    v18 = v0[29];
    (*(*(v15 - 8) + 56))(v0[15], v16, 1, v15);
    sub_258037DB4(v18, type metadata accessor for AppRecordLookalike);
    sub_257FDAB84(v17, &qword_27F915280, &qword_25804ED30);

    v19 = v0[1];

    return v19();
  }

  return result;
}

uint64_t sub_25801EC30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25801ECFC()
{
  v2 = *(*v1 + 280);
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_25801F25C;
  }

  else
  {
    v3 = sub_25801EE28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25801EE28()
{
  v43 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_257FDA958(v2, v1, &qword_27F915B78, &qword_25804F3A8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[25];
  if (v5 == 1)
  {
    sub_257FDAB84(v6, &qword_27F915B78, &qword_25804F3A8);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v7 = v0[21];
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[16];
    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919E48);
    v12 = *(v9 + 16);
    v12(v7, v10, v8);
    v13 = sub_258049D10();
    v14 = sub_25804A2E0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[31];
    v17 = v0[26];
    v18 = v0[21];
    if (v15)
    {
      v41 = v0[26];
      v19 = v0[19];
      v20 = v0[20];
      v21 = v0[18];
      v40 = v0[31];
      v22 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v22 = 136446210;
      v12(v20, v18, v21);
      v23 = sub_25804A120();
      v24 = v14;
      v26 = v25;
      (*(v19 + 8))(v18, v21);
      v27 = sub_258032C5C(v23, v26, &v42);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_257FD4000, v13, v24, "App/extension record for client %{public}s does not exist", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x259C77210](v39, -1, -1);
      MEMORY[0x259C77210](v22, -1, -1);

      sub_257FDAB84(v41, &qword_27F915B78, &qword_25804F3A8);
      v28 = v40;
    }

    else
    {
      v35 = v0[18];
      v34 = v0[19];

      (*(v34 + 8))(v18, v35);
      sub_257FDAB84(v17, &qword_27F915B78, &qword_25804F3A8);
      v28 = v16;
    }

    sub_257FDAB84(v28, &qword_27F915280, &qword_25804ED30);
    v36 = v0[15];
    v37 = type metadata accessor for LookalikeType(0);
    (*(*(v37 - 8) + 56))(v36, 1, 1, v37);

    v38 = v0[1];

    return v38();
  }

  else
  {
    sub_258037D4C(v6, v0[24], type metadata accessor for ExtensionRecordLookalike);
    v29 = swift_task_alloc();
    v0[38] = v29;
    *v29 = v0;
    v29[1] = sub_25801F340;
    v30 = v0[24];
    v31 = v0[15];
    v32 = v0[16];

    return sub_25801F684(v31, v30, v32);
  }
}

uint64_t sub_25801F25C()
{
  sub_257FDAB84(v0[31], &qword_27F915280, &qword_25804ED30);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25801F340()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_25801F56C;
  }

  else
  {
    v2 = sub_25801F454;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25801F454()
{
  v1 = v0[31];
  v2 = v0[26];
  sub_258037DB4(v0[24], type metadata accessor for ExtensionRecordLookalike);
  sub_257FDAB84(v2, &qword_27F915B78, &qword_25804F3A8);
  sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25801F56C()
{
  v1 = v0[31];
  v2 = v0[26];
  sub_258037DB4(v0[24], type metadata accessor for ExtensionRecordLookalike);
  sub_257FDAB84(v2, &qword_27F915B78, &qword_25804F3A8);
  sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25801F684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for AppRecordLookalike(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25801F780, 0, 0);
}

uint64_t sub_25801F780()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for ExtensionRecordLookalike(0);
  sub_257FDA958(v4 + *(v5 + 20), v3, &qword_27F915280, &qword_25804ED30);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_257FDAB84(v0[5], &qword_27F915280, &qword_25804ED30);
  }

  else
  {
    v6 = v0[8];
    v7 = v0[4];
    sub_258037D4C(v0[5], v6, type metadata accessor for AppRecordLookalike);
    LOBYTE(v7) = sub_2580370D0(v6, v7);
    sub_258037DB4(v6, type metadata accessor for AppRecordLookalike);
    if (v7)
    {
      sub_258037CE4(v0[3], v0[2], type metadata accessor for ExtensionRecordLookalike);
      v8 = type metadata accessor for LookalikeType(0);
      swift_storeEnumTagMultiPayload();
      v9 = 0;
      goto LABEL_6;
    }
  }

  v8 = type metadata accessor for LookalikeType(0);
  v9 = 1;
LABEL_6:
  (*(*(v8 - 8) + 56))(v0[2], v9, 1, v8);

  v10 = v0[1];

  return v10();
}

void *ManagedAppsServer.deinit()
{
  sub_257FDAB84(v0 + 32, &qword_27F915AE0, &qword_25804EC98);

  return v0;
}

uint64_t ManagedAppsServer.__deallocating_deinit()
{
  sub_257FDAB84(v0 + 32, &qword_27F915AE0, &qword_25804EC98);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t ManagedAppsServer.getConfigDetailsData(clientIdentity:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE8, &qword_25804ECA8);
  v4 = swift_task_alloc();
  v2[16] = v4;
  v5 = type metadata accessor for LookalikeType(0);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[20] = v6;
  *v6 = v2;
  v6[1] = sub_25801FB28;

  return sub_25801E500(v4, a1);
}

uint64_t sub_25801FB28()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_25802071C;
  }

  else
  {
    v2 = sub_25801FC3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25801FC3C()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915AE8, &qword_25804ECA8);
    sub_258036E5C();
    swift_allocError();
    *v2 = xmmword_25804EC70;
    *(v2 + 16) = 16;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_258037D4C(v1, v0[19], type metadata accessor for LookalikeType);
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_25801FDC4;
    v6 = v0[19];
    v7 = v0[14];

    return sub_258020948((v0 + 2), v6, v7);
  }
}

uint64_t sub_25801FDC4()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 184) = v0;
  *(v3 + 192) = *(v3 + 16);
  *(v3 + 208) = *(v2 + 32);
  *(v3 + 216) = *(v3 + 40);
  *(v3 + 232) = *(v2 + 56);

  if (v0)
  {
    v4 = sub_25802078C;
  }

  else
  {
    v4 = sub_25801FF18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25801FF18()
{
  v20 = v0;
  if (v0[25] >> 60 == 15)
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v1 = sub_258049D30();
    v0[30] = __swift_project_value_buffer(v1, qword_27F919E48);
    v2 = sub_258049D10();
    v3 = sub_25804A2C0();
    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[26];
      v4 = v0[27];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136446210;

      v8 = sub_258032C5C(v5, v4, &v19);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_257FD4000, v2, v3, "Data asset record %{public}s hasn't been resolved yet", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x259C77210](v7, -1, -1);
      MEMORY[0x259C77210](v6, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[31] = v9;
    *v9 = v0;
    v9[1] = sub_258020198;
    v10 = v0[28];
    v11 = v0[29];
    v12 = v0[26];
    v13 = v0[27];
    v14 = v0[19];

    return sub_258020D40(v14, v12, v13, v10, v11);
  }

  else
  {

    v17 = v0[24];
    v16 = v0[25];
    sub_258037DB4(v0[19], type metadata accessor for LookalikeType);

    v18 = v0[1];

    return v18(v17, v16);
  }
}

uint64_t sub_258020198()
{
  v2 = *v1;
  v2[32] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258020818, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[33] = v3;
    *v3 = v2;
    v3[1] = sub_258020338;
    v4 = v2[19];
    v5 = v2[14];

    return sub_258020948((v2 + 8), v4, v5);
  }
}

uint64_t sub_258020338()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 272) = v0;
  *(v3 + 280) = *(v3 + 64);
  *(v3 + 296) = *(v2 + 80);
  *(v3 + 304) = *(v2 + 88);

  if (v0)
  {
    v4 = sub_2580208B0;
  }

  else
  {

    v4 = sub_2580204AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2580204AC()
{
  v18 = v0;
  v1 = v0[36];

  if (v1 >> 60 == 15)
  {

    v2 = sub_258049D10();
    v3 = sub_25804A2D0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[38];
    if (v4)
    {
      v6 = v0[37];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136446210;
      v9 = sub_258032C5C(v6, v5, &v17);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_257FD4000, v2, v3, "Config data is still nil after resolving data asset record %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x259C77210](v8, -1, -1);
      MEMORY[0x259C77210](v7, -1, -1);
    }

    else
    {
    }

    v14 = v0[19];
    sub_258036E5C();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 16;
    swift_willThrow();
    sub_258037DB4(v14, type metadata accessor for LookalikeType);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v11 = v0[35];
    v10 = v0[36];
    sub_258037DB4(v0[19], type metadata accessor for LookalikeType);

    v12 = v0[1];

    return v12(v11, v10);
  }
}

uint64_t sub_25802071C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25802078C()
{
  sub_258037DB4(*(v0 + 152), type metadata accessor for LookalikeType);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258020818()
{
  sub_258037DB4(*(v0 + 152), type metadata accessor for LookalikeType);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580208B0()
{
  sub_258037DB4(*(v0 + 152), type metadata accessor for LookalikeType);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258020948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x2822009F8](sub_25802096C, 0, 0);
}

uint64_t sub_25802096C()
{
  *(v0 + 80) = xmmword_25804B2B0;
  *(v0 + 96) = 0;
  *(v0 + 112) = 0;
  v1 = *(v0 + 152);
  *(v0 + 104) = 0;
  *(v0 + 120) = 0;
  swift_beginAccess();
  result = sub_257FDA958(v1 + 32, v0 + 16, &qword_27F915AE0, &qword_25804EC98);
  v3 = *(v0 + 40);
  if (v3)
  {
    v4 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    v5[2] = v4;
    v5[3] = v0 + 96;
    v5[4] = v0 + 112;
    v5[5] = v0 + 80;
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_258020AC0;
    v7 = *(v0 + 136);

    return sub_257FDF778(v7, sub_258038088, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258020AC0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_258020CC4;
  }

  else
  {
    v2 = sub_258020BF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258020BF0()
{
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[10];
  v3 = v0[12];
  v4 = v0[13];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v0[15];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = v0[11];
  v7 = v0[16];
  v8 = v0[14];
  sub_257FECD68(v0[10], v6);
  sub_257FDAAA0(v2, v6);
  *v7 = v2;
  v7[1] = v6;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v8;
  v7[5] = v5;
  v9 = v0[1];

  return v9();
}

uint64_t sub_258020CC4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_257FDAAA0(v0[10], v0[11]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_258020D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = type metadata accessor for AppRecordLookalike(0);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for ExtensionRecordLookalike(0);
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for LookalikeType(0);
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258020EAC, 0, 0);
}

uint64_t sub_258020EAC()
{
  v34 = v0;
  sub_258037CE4(v0[11], v0[23], type metadata accessor for LookalikeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[25];
  v3 = v0[23];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[20];
    v4 = v0[21];
    sub_258037D4C(v3, v4, type metadata accessor for ExtensionRecordLookalike);
    sub_257FDA958(v4 + *(v5 + 20), v2, &qword_27F915280, &qword_25804ED30);
    sub_258037DB4(v4, type metadata accessor for ExtensionRecordLookalike);
  }

  else
  {
    v6 = v0[17];
    v7 = v0[18];
    sub_258037D4C(v3, v0[25], type metadata accessor for AppRecordLookalike);
    (*(v7 + 56))(v2, 0, 1, v6);
  }

  v8 = v0[24];
  v9 = v0[17];
  v10 = v0[18];
  sub_257FDA958(v0[25], v8, &qword_27F915280, &qword_25804ED30);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = v0[24];
  if (v11 == 1)
  {
    sub_257FDAB84(v12, &qword_27F915280, &qword_25804ED30);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v13 = sub_258049D30();
    __swift_project_value_buffer(v13, qword_27F919E48);

    v14 = sub_258049D10();
    v15 = sub_25804A2D0();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[12];
      v16 = v0[13];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_258032C5C(v17, v16, &v33);
      _os_log_impl(&dword_257FD4000, v14, v15, "Data record %{public}s is orphaned", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x259C77210](v19, -1, -1);
      MEMORY[0x259C77210](v18, -1, -1);
    }

    v20 = v0[25];
    sub_258036E5C();
    v21 = swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 16;
    swift_willThrow();
    sub_257FDAB84(v20, &qword_27F915280, &qword_25804ED30);
    swift_getErrorValue();
    v25 = sub_25804A5B0();
    v27 = v26;
    sub_258036E5C();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = 11;
    swift_willThrow();

    v29 = v0[1];

    return v29();
  }

  else
  {
    v23 = v0[19];
    v24 = v0[17];
    sub_258037D4C(v12, v23, type metadata accessor for AppRecordLookalike);
    sub_25801E298(*(v23 + *(v24 + 20)), *(v23 + *(v24 + 20) + 8), (v0 + 2));
    v31 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v32 = *v31;
    v0[26] = *v31;

    return MEMORY[0x2822009F8](sub_258021334, v32, 0);
  }
}

uint64_t sub_258021334()
{
  v1 = v0[26];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];

  MEMORY[0x259C76670](32, 0xE100000000000000);
  MEMORY[0x259C76670](v3, v2);
  v0[27] = v4;
  v0[28] = *(v1 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_configTasks);
  v6 = swift_allocObject();
  v0[29] = v6;
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_2580214A0;

  return sub_258048C6C(v5, v4, &unk_25804F350, v6);
}

uint64_t sub_2580214A0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = sub_258021710;
  }

  else
  {

    v2 = sub_258021630;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258021630()
{
  v1 = v0[19];
  sub_257FDAB84(v0[25], &qword_27F915280, &qword_25804ED30);
  sub_258037DB4(v1, type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_258021710()
{
  v1 = v0[19];
  sub_257FDAB84(v0[25], &qword_27F915280, &qword_25804ED30);
  sub_258037DB4(v1, type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[31];
  swift_getErrorValue();
  v3 = sub_25804A5B0();
  v5 = v4;
  sub_258036E5C();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v5;
  *(v6 + 16) = 11;
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t ManagedAppsServer.getPasswordIdentifiers(clientIdentity:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return sub_258021900(1, a1);
}

uint64_t sub_258021900(char a1, uint64_t a2)
{
  *(v3 + 136) = a2;
  *(v3 + 144) = v2;
  *(v3 + 248) = a1;
  v5 = sub_258049D00();
  *(v3 + 152) = v5;
  *(v3 + 160) = *(v5 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE8, &qword_25804ECA8);
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  v7 = type metadata accessor for LookalikeType(0);
  *(v3 + 192) = v7;
  *(v3 + 200) = *(v7 - 8);
  *(v3 + 208) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v3 + 216) = v8;
  *v8 = v3;
  v8[1] = sub_258021AAC;

  return sub_25801E500(v6, a2);
}

uint64_t sub_258021AAC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_2580222E8;
  }

  else
  {
    v2 = sub_258021BC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258021BC0()
{
  v1 = *(v0 + 184);
  if ((*(*(v0 + 200) + 48))(v1, 1, *(v0 + 192)) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915AE8, &qword_25804ECA8);

    v2 = *(v0 + 8);
    v3 = MEMORY[0x277D84F90];

    return v2(v3);
  }

  else
  {
    v5 = *(v0 + 144);
    sub_258037D4C(v1, *(v0 + 208), type metadata accessor for LookalikeType);
    *(v0 + 128) = 0;
    swift_beginAccess();
    result = sub_257FDA958(v5 + 32, v0 + 16, &qword_27F915AE0, &qword_25804EC98);
    v6 = *(v0 + 40);
    if (v6)
    {
      v7 = *__swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      v8 = swift_task_alloc();
      *(v0 + 232) = v8;
      *v8 = v0;
      v8[1] = sub_258021D94;
      v9 = *(v0 + 208);
      v10 = *(v0 + 248);

      return sub_257FDFFF4(v9, v7, v0 + 128, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_258021D94()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_258022230;
  }

  else
  {
    v2 = sub_258021EA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258021EA8()
{
  v38 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = sub_258049D30();
  __swift_project_value_buffer(v5, qword_27F919E48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_258049D10();
  v8 = sub_25804A2C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 134218498;
    result = swift_beginAccess();
    v12 = *(v0 + 128);
    if (!v12)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v34 = v6;
    v35 = v10;
    v36 = v8;
    v13 = *(v0 + 248);
    v14 = 0xE700000000000000;
    *(v9 + 4) = *(v12 + 16);
    *(v9 + 12) = 2080;
    v15 = 0x6E776F6E6B6E75;
    v16 = 0xEB00000000657461;
    v17 = 0x6369666974726563;
    if (v13 != 2)
    {
      v17 = 0x797469746E656469;
      v16 = 0xE800000000000000;
    }

    if (v13)
    {
      v15 = 0x64726F7773736170;
      v14 = 0xE800000000000000;
    }

    if (v13 <= 1)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    if (v13 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v23 = *(v0 + 152);
    v22 = *(v0 + 160);
    v24 = sub_258032C5C(v18, v19, &v37);

    *(v9 + 14) = v24;
    *(v9 + 22) = 2082;
    v34(v21, v20, v23);
    v25 = sub_25804A120();
    v27 = v26;
    (*(v22 + 8))(v20, v23);
    v28 = sub_258032C5C(v25, v27, &v37);

    *(v9 + 24) = v28;
    _os_log_impl(&dword_257FD4000, v7, v36, "Returning %ld %s identifiers for client %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v35, -1, -1);
    MEMORY[0x259C77210](v9, -1, -1);
  }

  else
  {
    v29 = *(v0 + 176);
    v30 = *(v0 + 152);
    v31 = *(v0 + 160);

    (*(v31 + 8))(v29, v30);
  }

  result = swift_beginAccess();
  v32 = *(v0 + 128);
  if (!v32)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_258037DB4(*(v0 + 208), type metadata accessor for LookalikeType);

  v33 = *(v0 + 8);

  return v33(v32);
}

uint64_t sub_258022230()
{
  sub_258037DB4(v0[26], type metadata accessor for LookalikeType);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2580222E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ManagedAppsServer.getPassword(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v8 = sub_258049D00();
  v4[6] = v8;
  v4[7] = *(v8 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[10] = v9;
  *v9 = v4;
  v9[1] = sub_25802249C;

  return sub_258022A2C(a1, a2, 1, a3);
}

uint64_t sub_25802249C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2580225F4, 0, 0);
  }
}

uint64_t sub_2580225F4()
{
  v48 = v0;
  v1 = objc_opt_self();
  v2 = sub_258049A40();
  v3 = sub_258049B20();
  v4 = [v1 copyPasswordWithPersistentID:v2 useSystemKeychain:v3 == sub_258049B20() enforcePersonalPersona:0];

  if (v4)
  {
    v5 = sub_25804A110();
    v46 = v6;

    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[4];
    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919E48);
    v12 = *(v9 + 16);
    v12(v7, v10, v8);
    v13 = sub_258049D10();
    v14 = sub_25804A2C0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[9];
    if (v15)
    {
      v18 = v0[7];
      v17 = v0[8];
      v44 = v0[12];
      v45 = v5;
      v19 = v0[6];
      v43 = v0[11];
      v42 = v14;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = v21;
      *v20 = 136446210;
      v12(v17, v16, v19);
      v22 = sub_25804A120();
      v23 = v13;
      v25 = v24;
      v26 = v19;
      v5 = v45;
      (*(v18 + 8))(v16, v26);
      v27 = sub_258032C5C(v22, v25, &v47);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_257FD4000, v23, v42, "Returning password for client %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x259C77210](v21, -1, -1);
      MEMORY[0x259C77210](v20, -1, -1);
      sub_257FDAAB4(v43, v44);
    }

    else
    {
      v39 = v0[6];
      v40 = v0[7];
      sub_257FDAAB4(v0[11], v0[12]);

      (*(v40 + 8))(v16, v39);
    }

    v41 = v0[1];

    return v41(v5, v46);
  }

  else
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v28 = sub_258049D30();
    __swift_project_value_buffer(v28, qword_27F919E48);
    v29 = sub_258049D10();
    v30 = sub_25804A2D0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_257FD4000, v29, v30, "Failed to find password from keychain", v31, 2u);
      MEMORY[0x259C77210](v31, -1, -1);
    }

    v33 = v0[11];
    v32 = v0[12];
    v34 = v0[2];
    v35 = v0[3];

    sub_258036E5C();
    swift_allocError();
    *v36 = v34;
    *(v36 + 8) = v35;
    *(v36 + 16) = 15;
    swift_willThrow();

    sub_257FDAAB4(v33, v32);

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_258022A2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 232) = a4;
  *(v5 + 240) = v4;
  *(v5 + 384) = a3;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE8, &qword_25804ECA8);
  v7 = swift_task_alloc();
  *(v5 + 248) = v7;
  v8 = type metadata accessor for LookalikeType(0);
  *(v5 + 256) = v8;
  *(v5 + 264) = *(v8 - 8);
  *(v5 + 272) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v5 + 280) = v9;
  *v9 = v5;
  v9[1] = sub_258022B74;

  return sub_25801E500(v7, a4);
}

uint64_t sub_258022B74()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_258023AE4;
  }

  else
  {
    v2 = sub_258022C88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258022C88()
{
  v1 = *(v0 + 248);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915AE8, &qword_25804ECA8);
    sub_258036E5C();
    swift_allocError();
    *v2 = xmmword_25804EC70;
    *(v2 + 16) = 16;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 240);
    sub_258037D4C(v1, *(v0 + 272), type metadata accessor for LookalikeType);
    *(v0 + 120) = xmmword_25804B2B0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    *(v0 + 160) = 0;
    swift_beginAccess();
    result = sub_257FDA958(v5 + 32, v0 + 16, &qword_27F915AE0, &qword_25804EC98);
    v6 = *(v0 + 40);
    if (v6)
    {
      v7 = *(v0 + 384);
      v8 = *(v0 + 216);
      v12 = *(v0 + 224);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      v9 = swift_task_alloc();
      *(v0 + 296) = v9;
      *(v9 + 16) = v7;
      *(v9 + 24) = v8;
      *(v9 + 32) = v12;
      *(v9 + 48) = v0 + 136;
      *(v9 + 56) = v0 + 152;
      *(v9 + 64) = v0 + 120;
      v10 = swift_task_alloc();
      *(v0 + 304) = v10;
      *v10 = v0;
      v10[1] = sub_258022EE0;
      v11 = *(v0 + 272);

      return sub_257FE0874(v11, sub_258037CA4, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_258022EE0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_2580232E4;
  }

  else
  {
    v2 = sub_258023014;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258023014()
{
  v18 = v0;
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[18];
  v0[40] = v4;
  v5 = v0[17];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v0[19];
  v6 = v0[20];
  v0[41] = v6;
  if (!v6)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_257FECD68(v2, v3);
  sub_257FDAAA0(v2, v3);
  if (v3 >> 60 == 15)
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v8 = sub_258049D30();
    v0[42] = __swift_project_value_buffer(v8, qword_27F919E48);
    v9 = sub_258049D10();
    v10 = sub_25804A2C0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;

      v13 = sub_258032C5C(v5, v4, &v17);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_257FD4000, v9, v10, "Credential asset record %{public}s hasn't been resolved yet", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x259C77210](v12, -1, -1);
      MEMORY[0x259C77210](v11, -1, -1);
    }

    v14 = swift_task_alloc();
    v0[43] = v14;
    *v14 = v0;
    v14[1] = sub_258023394;
    v15 = v0[34];

    return sub_258026528(v15, v5, v4, v7, v6);
  }

  else
  {

    sub_258037DB4(v0[34], type metadata accessor for LookalikeType);

    v16 = v0[1];

    return v16(v2, v3);
  }
}

uint64_t sub_2580232E4()
{
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_257FDAAA0(v0[15], v0[16]);
  sub_258037DB4(v1, type metadata accessor for LookalikeType);

  v2 = v0[1];

  return v2();
}

uint64_t sub_258023394()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_258023B54;
  }

  else
  {
    v2 = sub_2580234E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2580234E4()
{
  *(v0 + 168) = xmmword_25804B2B0;
  *(v0 + 184) = 0;
  *(v0 + 200) = 0;
  v1 = *(v0 + 240);
  *(v0 + 192) = 0;
  *(v0 + 208) = 0;
  result = sub_257FDA958(v1 + 32, v0 + 56, &qword_27F915AE0, &qword_25804EC98);
  v3 = *(v0 + 80);
  if (v3)
  {
    v4 = *(v0 + 384);
    v5 = *(v0 + 216);
    v9 = *(v0 + 224);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
    v6 = swift_task_alloc();
    *(v0 + 360) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v6 + 32) = v9;
    *(v6 + 48) = v0 + 184;
    *(v6 + 56) = v0 + 200;
    *(v6 + 64) = v0 + 168;
    v7 = swift_task_alloc();
    *(v0 + 368) = v7;
    *v7 = v0;
    v7[1] = sub_258023648;
    v8 = *(v0 + 272);

    return sub_257FE0874(v8, sub_2580381F4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258023648()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_258023A28;
  }

  else
  {
    v2 = sub_25802377C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802377C()
{
  v16 = v0;
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[21];
  v3 = v0[23];
  v4 = v0[24];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (!v0[26])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v5 = v0[22];
  sub_257FECD68(v0[21], v5);

  sub_257FDAAA0(v0[21], v0[22]);

  if (v5 >> 60 == 15)
  {

    v6 = sub_258049D10();
    v7 = sub_25804A2D0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      v10 = sub_258032C5C(v3, v4, &v15);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_257FD4000, v6, v7, "Credential data is still nil after resolving data asset record %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x259C77210](v9, -1, -1);
      MEMORY[0x259C77210](v8, -1, -1);
    }

    else
    {
    }

    v12 = v0[34];
    sub_258036E5C();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 16;
    swift_willThrow();
    sub_258037DB4(v12, type metadata accessor for LookalikeType);

    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_258037DB4(v0[34], type metadata accessor for LookalikeType);

    v11 = v0[1];

    return v11(v2, v5);
  }
}

uint64_t sub_258023A28()
{
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  sub_257FDAAA0(v0[21], v0[22]);
  sub_258037DB4(v1, type metadata accessor for LookalikeType);

  v2 = v0[1];

  return v2();
}

uint64_t sub_258023AE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258023B54()
{
  sub_258037DB4(*(v0 + 272), type metadata accessor for LookalikeType);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ManagedAppsServer.getCertificateIdentifiers(clientIdentity:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return sub_258021900(2, a1);
}

uint64_t ManagedAppsServer.getCertificate(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v8 = sub_258049D00();
  v4[6] = v8;
  v4[7] = *(v8 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[10] = v9;
  *v9 = v4;
  v9[1] = sub_258023DAC;

  return sub_258022A2C(a1, a2, 2, a3);
}

uint64_t sub_258023DAC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258023F04, 0, 0);
  }
}

uint64_t sub_258023F04()
{
  v45 = v0;
  v1 = objc_opt_self();
  v2 = sub_258049A40();
  v3 = sub_258049B20();
  v4 = [v1 copyCertificateWithPersistentID:v2 useSystemKeychain:v3 == sub_258049B20() enforcePersonalPersona:0];

  v5 = v1;
  if (v4)
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[4];
    v10 = sub_258049D30();
    __swift_project_value_buffer(v10, qword_27F919E48);
    v11 = *(v8 + 16);
    v11(v6, v9, v7);
    v12 = sub_258049D10();
    v13 = sub_25804A2C0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[9];
    if (v14)
    {
      v43 = v4;
      v16 = v0[7];
      v17 = v0[8];
      v18 = v0[6];
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v19 = 136446210;
      v11(v17, v15, v18);
      v20 = sub_25804A120();
      v22 = v21;
      (*(v16 + 8))(v15, v18);
      v23 = v20;
      v4 = v43;
      v24 = sub_258032C5C(v23, v22, &v44);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_257FD4000, v12, v13, "Returning certificate for client %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x259C77210](v42, -1, -1);
      MEMORY[0x259C77210](v19, -1, -1);
    }

    else
    {
      v37 = v0[6];
      v36 = v0[7];

      (*(v36 + 8))(v15, v37);
    }

    v39 = v0[11];
    v38 = v0[12];
    v40 = v4;
    sub_257FDAAB4(v39, v38);

    v41 = v0[1];

    return v41(v40);
  }

  else
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v25 = sub_258049D30();
    __swift_project_value_buffer(v25, qword_27F919E48);
    v26 = sub_258049D10();
    v27 = sub_25804A2D0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_257FD4000, v26, v27, "Failed to find certificate from keychain", v28, 2u);
      MEMORY[0x259C77210](v28, -1, -1);
    }

    v30 = v0[11];
    v29 = v0[12];
    v31 = v0[2];
    v32 = v0[3];

    sub_258036E5C();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = v32;
    *(v33 + 16) = 14;
    swift_willThrow();

    sub_257FDAAB4(v30, v29);

    v34 = v0[1];

    return v34();
  }
}

uint64_t ManagedAppsServer.getIdentityIdentifiers(clientIdentity:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return sub_258021900(3, a1);
}

uint64_t ManagedAppsServer.getIdentityProxyEndpoint(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_2580243E4, 0, 0);
}

uint64_t sub_2580243E4()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_258049CD0();
  v5 = [v4 codeSigningID];

  v6 = sub_25804A110();
  v8 = v7;

  v16 = v6;
  v17 = v8;
  MEMORY[0x259C76670](45, 0xE100000000000000);
  v9 = sub_258049CD0();
  v10 = [v9 teamID];

  v11 = sub_25804A110();
  v13 = v12;

  MEMORY[0x259C76670](v11, v13);

  MEMORY[0x259C76670](45, 0xE100000000000000);
  MEMORY[0x259C76670](v3, v2);
  v0[9] = v16;
  v0[10] = v17;
  v14 = *(v1 + 80);
  v0[11] = v14;

  return MEMORY[0x2822009F8](sub_258024534, v14, 0);
}

uint64_t sub_258024534()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[9];
    v3 = v0[10];

    v5 = sub_2580337E4(v4, v3);
    if (v6)
    {
      v7 = v5;

      v8 = *(*(v2 + 56) + 8 * v7);
      v0[12] = v8;
      v9 = v8;

      return MEMORY[0x2822009F8](sub_25802467C, 0, 0);
    }
  }

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_258024700;
  v11 = v0[7];
  v13 = v0[5];
  v12 = v0[6];

  return sub_2580249A0(v13, v12, v11);
}

uint64_t sub_25802467C()
{
  v1 = [*(v0 + 96) endpoint];

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_258024700(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_25802493C;
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 88);
    *(v4 + 120) = a1;
    v5 = sub_258024834;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_258024834()
{
  v0[16] = sub_258047FC8(v0[9], v0[10], v0[15]);

  return MEMORY[0x2822009F8](sub_2580248B4, 0, 0);
}

uint64_t sub_2580248B4()
{
  v1 = *(v0 + 120);
  v2 = [*(v0 + 128) endpoint];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_25802493C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580249A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v8 = sub_258049D00();
  v4[6] = v8;
  v4[7] = *(v8 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[10] = v9;
  *v9 = v4;
  v9[1] = sub_258024AC8;

  return sub_258022A2C(a1, a2, 3, a3);
}

uint64_t sub_258024AC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258024C20, 0, 0);
  }
}

uint64_t sub_258024C20()
{
  v45 = v0;
  v1 = objc_opt_self();
  v2 = sub_258049A40();
  v3 = sub_258049B20();
  v4 = [v1 copyIdentityWithPersistentID:v2 useSystemKeychain:v3 == sub_258049B20() enforcePersonalPersona:0];

  v5 = v1;
  if (v4)
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[4];
    v10 = sub_258049D30();
    __swift_project_value_buffer(v10, qword_27F919E48);
    v11 = *(v8 + 16);
    v11(v6, v9, v7);
    v12 = sub_258049D10();
    v13 = sub_25804A2C0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[9];
    if (v14)
    {
      v43 = v4;
      v16 = v0[7];
      v17 = v0[8];
      v18 = v0[6];
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v19 = 136446210;
      v11(v17, v15, v18);
      v20 = sub_25804A120();
      v22 = v21;
      (*(v16 + 8))(v15, v18);
      v23 = v20;
      v4 = v43;
      v24 = sub_258032C5C(v23, v22, &v44);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_257FD4000, v12, v13, "Returning identity for client %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x259C77210](v42, -1, -1);
      MEMORY[0x259C77210](v19, -1, -1);
    }

    else
    {
      v37 = v0[6];
      v36 = v0[7];

      (*(v36 + 8))(v15, v37);
    }

    v39 = v0[11];
    v38 = v0[12];
    v40 = v4;
    sub_257FDAAB4(v39, v38);

    v41 = v0[1];

    return v41(v40);
  }

  else
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v25 = sub_258049D30();
    __swift_project_value_buffer(v25, qword_27F919E48);
    v26 = sub_258049D10();
    v27 = sub_25804A2D0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_257FD4000, v26, v27, "Failed to find identity from keychain", v28, 2u);
      MEMORY[0x259C77210](v28, -1, -1);
    }

    v30 = v0[11];
    v29 = v0[12];
    v31 = v0[2];
    v32 = v0[3];

    sub_258036E5C();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = v32;
    *(v33 + 16) = 13;
    swift_willThrow();

    sub_257FDAAB4(v30, v29);

    v34 = v0[1];

    return v34();
  }
}

uint64_t ManagedAppsServer.reportConfigDetailsState(code:reason:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a3;
  v5[15] = v4;
  v5[12] = a1;
  v5[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE8, &qword_25804ECA8);
  v7 = swift_task_alloc();
  v5[16] = v7;
  v8 = type metadata accessor for LookalikeType(0);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[20] = v9;
  *v9 = v5;
  v9[1] = sub_258025188;

  return sub_25801E500(v7, a4);
}

uint64_t sub_258025188()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_25802071C;
  }

  else
  {
    v2 = sub_25802529C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802529C()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915AE8, &qword_25804ECA8);
    sub_258036E5C();
    swift_allocError();
    *v2 = xmmword_25804EC70;
    *(v2 + 16) = 16;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  v5 = v0[14];
  sub_258037D4C(v1, v0[19], type metadata accessor for LookalikeType);
  if (v5)
  {

    if (sub_25804A160() >= 257)
    {
      v7 = sub_2580368E4(256, v0[13], v5, v6);
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = MEMORY[0x259C76630](v7, v9, v11, v13);
      v16 = v15;

      goto LABEL_10;
    }
  }

  v14 = v0[13];
  v16 = v0[14];

LABEL_10:
  v0[22] = v16;
  v17 = v0[15];
  swift_beginAccess();
  result = sub_257FDA958(v17 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v18 = v0[5];
  if (v18)
  {
    v19 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v18);

    v20 = swift_task_alloc();
    v0[23] = v20;
    *v20 = v0;
    v20[1] = sub_258025534;
    v21 = v0[19];
    v22 = v0[12];

    return sub_257FED888(v21, v19, v22, v14, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258025534()
{
  *(*v1 + 192) = v0;

  swift_bridgeObjectRelease_n();
  if (v0)
  {
    v2 = sub_258025704;
  }

  else
  {
    v2 = sub_25802566C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802566C()
{
  sub_258037DB4(v0[19], type metadata accessor for LookalikeType);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_258025704()
{
  v23 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD000000000000035, 0x8000000258050FD0, v22);
    *(v7 + 12) = 2082;
    v0[11] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v10 = sub_25804A120();
    v12 = sub_258032C5C(v10, v11, v22);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v13 = v0[24];
  v14 = v0[19];
  v0[10] = v13;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v16 = sub_25804A120();
  v18 = v17;
  sub_258036E5C();
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v18;
  *(v19 + 16) = 8;
  swift_willThrow();

  sub_258037DB4(v14, type metadata accessor for LookalikeType);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2580259B0(uint64_t a1)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();
}

uint64_t sub_258025B0C(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v72 = a2;
  v69 = a5;
  v8 = sub_258049D00();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v66 - v13;
  v68 = sub_258049A20();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v70 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v71 = &v66 - v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_258019BEC(1, v20, v21);
  if (v22)
  {
    v23 = v22;
    v74 = v22;
    swift_getKeyPath();
    sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
    sub_258049F00();

    v24 = v75;
    *a3 = v74;
    a3[1] = v24;

    v25 = sub_258004F04();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v28 = 0xE000000000000000;
    if (v26)
    {
      v28 = v26;
    }

    *a4 = v27;
    a4[1] = v28;

    v74 = v23;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
    v29 = sub_258049EE0();

    if (v29)
    {
      v74 = v29;
      swift_getKeyPath();
      sub_258037F14(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FDAB10();
      sub_258049F00();

      if (v75 != 2)
      {
        sub_257FDAB64(v74, v75);
      }

      v74 = v29;
      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_257FEC568();
      v30 = v71;
      sub_258049F00();

      v31 = type metadata accessor for DataPersistenceValue(0);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {

        return sub_257FDAB84(v30, &qword_27F915268, &qword_25804F1E0);
      }

      v52 = v70;
      sub_257FDA958(v30, v70, &qword_27F915268, &qword_25804F1E0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v54 = v73;
      if (EnumCaseMultiPayload == 1)
      {
        v55 = v67;
        v56 = v66 + 32;
        v57 = v68;
        (*(v66 + 32))(v67, v52, v68);
        v58 = sub_258049A30();
        v60 = (v56 - 24);
        if (v54)
        {

          (*v60)(v55, v57);
          return sub_257FDAB84(v30, &qword_27F915268, &qword_25804F1E0);
        }

        v61 = v58;
        v62 = v59;

        (*v60)(v55, v57);
      }

      else
      {

        v61 = *v52;
        v62 = v52[1];
      }

      sub_257FDAB84(v30, &qword_27F915268, &qword_25804F1E0);
      v63 = v69;
      v64 = *v69;
      v65 = v69[1];
      *v69 = v61;
      v63[1] = v62;
      return sub_257FDAAA0(v64, v65);
    }

    else
    {
      if (qword_27F915188 != -1)
      {
        swift_once();
      }

      v44 = sub_258049D30();
      __swift_project_value_buffer(v44, qword_27F919E48);

      v45 = sub_258049D10();
      v46 = sub_25804A2D0();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v74 = v23;
        v76 = v73;
        *v47 = 136446210;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        v48 = sub_258032C5C(v74, v75, &v76);

        *(v47 + 4) = v48;
        _os_log_impl(&dword_257FD4000, v45, v46, "Data record %{public}s is missing asset record", v47, 0xCu);
        v49 = v73;
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x259C77210](v49, -1, -1);
        MEMORY[0x259C77210](v47, -1, -1);
      }

      sub_258036E5C();
      swift_allocError();
      *v50 = 0;
      *(v50 + 8) = 0;
      *(v50 + 16) = 16;
      swift_willThrow();
    }
  }

  else
  {
    v33 = v72;
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v34 = sub_258049D30();
    __swift_project_value_buffer(v34, qword_27F919E48);
    v35 = *(v9 + 16);
    v35(v14, v33, v8);
    v36 = sub_258049D10();
    v37 = sub_25804A2C0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = v73;
      *v38 = 136446210;
      v35(v12, v14, v8);
      v39 = sub_25804A120();
      v41 = v40;
      (*(v9 + 8))(v14, v8);
      v42 = sub_258032C5C(v39, v41, &v74);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_257FD4000, v36, v37, "Data record for client %{public}s does not exist", v38, 0xCu);
      v43 = v73;
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x259C77210](v43, -1, -1);
      MEMORY[0x259C77210](v38, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    sub_258036E5C();
    swift_allocError();
    *v51 = xmmword_25804EC80;
    *(v51 + 16) = 16;
    return swift_willThrow();
  }
}

uint64_t sub_258026528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = type metadata accessor for AppRecordLookalike(0);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for ExtensionRecordLookalike(0);
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for LookalikeType(0);
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258026694, 0, 0);
}

uint64_t sub_258026694()
{
  v34 = v0;
  sub_258037CE4(v0[11], v0[23], type metadata accessor for LookalikeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[25];
  v3 = v0[23];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[20];
    v4 = v0[21];
    sub_258037D4C(v3, v4, type metadata accessor for ExtensionRecordLookalike);
    sub_257FDA958(v4 + *(v5 + 20), v2, &qword_27F915280, &qword_25804ED30);
    sub_258037DB4(v4, type metadata accessor for ExtensionRecordLookalike);
  }

  else
  {
    v6 = v0[17];
    v7 = v0[18];
    sub_258037D4C(v3, v0[25], type metadata accessor for AppRecordLookalike);
    (*(v7 + 56))(v2, 0, 1, v6);
  }

  v8 = v0[24];
  v9 = v0[17];
  v10 = v0[18];
  sub_257FDA958(v0[25], v8, &qword_27F915280, &qword_25804ED30);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = v0[24];
  if (v11 == 1)
  {
    sub_257FDAB84(v12, &qword_27F915280, &qword_25804ED30);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v13 = sub_258049D30();
    __swift_project_value_buffer(v13, qword_27F919E48);

    v14 = sub_258049D10();
    v15 = sub_25804A2D0();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[12];
      v16 = v0[13];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_258032C5C(v17, v16, &v33);
      _os_log_impl(&dword_257FD4000, v14, v15, "Credential record %{public}s is orphaned", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x259C77210](v19, -1, -1);
      MEMORY[0x259C77210](v18, -1, -1);
    }

    v20 = v0[25];
    sub_258036E5C();
    v21 = swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 16;
    swift_willThrow();
    sub_257FDAB84(v20, &qword_27F915280, &qword_25804ED30);
    swift_getErrorValue();
    v25 = sub_25804A5B0();
    v27 = v26;
    sub_258036E5C();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = 11;
    swift_willThrow();

    v29 = v0[1];

    return v29();
  }

  else
  {
    v23 = v0[19];
    v24 = v0[17];
    sub_258037D4C(v12, v23, type metadata accessor for AppRecordLookalike);
    sub_25801E298(*(v23 + *(v24 + 20)), *(v23 + *(v24 + 20) + 8), (v0 + 2));
    v31 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v32 = *v31;
    v0[26] = *v31;

    return MEMORY[0x2822009F8](sub_258026B1C, v32, 0);
  }
}

uint64_t sub_258026B1C()
{
  v1 = v0[26];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];

  MEMORY[0x259C76670](32, 0xE100000000000000);
  MEMORY[0x259C76670](v3, v2);
  v0[27] = v4;
  v0[28] = *(v1 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks);
  v6 = swift_allocObject();
  v0[29] = v6;
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_258026C88;

  return sub_258048C6C(v5, v4, &unk_25804F270, v6);
}

uint64_t sub_258026C88()
{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = sub_25803820C;
  }

  else
  {

    v2 = sub_2580381AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_258026E18(void *a1, void *a2, char a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = sub_258019F30(a3, v5, v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v12 = MEMORY[0x277D84F90];
LABEL_14:
    *a2 = v12;
  }

  v19 = v7;
  v8 = sub_25804A480();
  v7 = v19;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v9 = v7;
  v23 = MEMORY[0x277D84F90];
  result = sub_258033204(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v20 = a2;
    v11 = 0;
    v12 = v23;
    v13 = v9;
    v21 = v9 & 0xC000000000000001;
    v14 = v9;
    do
    {
      if (v21)
      {
        v15 = MEMORY[0x259C768B0](v11, v13);
      }

      else
      {
        v15 = *(v13 + 8 * v11 + 32);
      }

      swift_getKeyPath();
      sub_258037F14(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
      sub_258049A90();

      swift_getKeyPath();
      sub_258037F14(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
      sub_258049F00();

      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_258033204((v16 > 1), v17 + 1, 1);
      }

      ++v11;
      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v22;
      v13 = v14;
    }

    while (v8 != v11);

    a2 = v20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_258027084(void *a1, char a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  v66 = a6;
  v62 = a8;
  v67 = a7;
  v64 = a5;
  v12 = sub_258049D00();
  v63 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_25801A2C4(a2, a3, a4, v18, v19);
  if (v20)
  {
    v21 = v20;
    v68 = v20;
    swift_getKeyPath();
    sub_258037F14(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
    sub_258049F00();

    v22 = v69;
    v23 = v66;
    *v66 = v68;
    v23[1] = v22;

    v24 = sub_257FFC028();
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = 0xE000000000000000;
    v28 = v67;
    if (v25)
    {
      v27 = v25;
    }

    *v67 = v26;
    v28[1] = v27;

    v68 = v21;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
    v29 = sub_258049EE0();

    if (v29)
    {
      v68 = v29;
      swift_getKeyPath();
      sub_258037F14(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FDAB10();
      sub_258049F00();

      if (v69 == 2)
      {
        v68 = v29;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258019B00();
        sub_258049F00();

        v31 = v69;
        if (v69 >> 60 != 15)
        {
          v32 = v62;
          v33 = *v62;
          v34 = v62[1];
          *v62 = v68;
          v32[1] = v31;
          return sub_257FDAAA0(v33, v34);
        }
      }

      else
      {
        sub_257FDAB64(v68, v69);
      }
    }

    else
    {
      if (qword_27F915188 != -1)
      {
        swift_once();
      }

      v52 = sub_258049D30();
      __swift_project_value_buffer(v52, qword_27F919E48);

      v53 = sub_258049D10();
      v54 = sub_25804A2D0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v70 = v56;
        *v55 = 136446210;
        v68 = v21;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        v57 = sub_258032C5C(v68, v69, &v70);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_257FD4000, v53, v54, "Credential record %{public}s is missing asset record", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x259C77210](v56, -1, -1);
        MEMORY[0x259C77210](v55, -1, -1);
      }

      sub_258036E5C();
      swift_allocError();
      *v58 = 0;
      *(v58 + 8) = 0;
      *(v58 + 16) = 16;
      swift_willThrow();
    }
  }

  else
  {
    v35 = v15;
    v37 = v63;
    v36 = v64;
    v66 = a3;
    v67 = a4;
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v38 = sub_258049D30();
    __swift_project_value_buffer(v38, qword_27F919E48);
    v39 = *(v37 + 16);
    v40 = v12;
    v39(v17, v36, v12);
    v41 = sub_258049D10();
    v42 = sub_25804A2C0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v17;
      v44 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v68 = v65;
      *v44 = 136446210;
      v39(v35, v43, v40);
      v45 = sub_25804A120();
      v46 = v37;
      v47 = v45;
      v49 = v48;
      (*(v46 + 8))(v43, v40);
      v50 = sub_258032C5C(v47, v49, &v68);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_257FD4000, v41, v42, "Credential record for client %{public}s does not exist", v44, 0xCu);
      v51 = v65;
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x259C77210](v51, -1, -1);
      MEMORY[0x259C77210](v44, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v17, v12);
    }

    v60 = v66;
    v59 = v67;
    sub_258036E5C();
    swift_allocError();
    *v61 = v60;
    *(v61 + 8) = v59;
    *(v61 + 16) = 12;
    swift_willThrow();
  }

  return result;
}