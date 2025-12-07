uint64_t sub_18EFFBD30(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB81E8, &qword_18F0A1018);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCBE50();
  sub_18F0945BC();
  LOBYTE(v15) = 0;
  sub_18F09437C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_18F09437C();
    LOBYTE(v15) = 2;
    sub_18F09437C();
    v15 = *(v3 + 48);
    v17 = 3;
    sub_18F012B0C();
    sub_18F09436C();
    v15 = *(v3 + 56);
    v17 = 4;
    sub_18F09436C();
    LOBYTE(v15) = 5;
    sub_18F09433C();
    v15 = *(v3 + 80);
    v17 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    sub_18EF85B48(&unk_1EACB73B8);
    sub_18F09436C();
    v15 = *(v3 + 88);
    v17 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18F012A58();
    sub_18F09436C();
    v15 = *(v3 + 96);
    v17 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB81D0, &qword_18F0A1008);
    sub_18F018988();
    sub_18F0943CC();
    v15 = *(v3 + 104);
    v17 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB81D8, &qword_18F0A1010);
    sub_18F018A3C();
    sub_18F0943CC();
    v15 = *(v3 + 112);
    v17 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    sub_18F09436C();
    v12 = *(v3 + 128);
    v15 = *(v3 + 120);
    v16 = v12;
    v17 = 11;
    type metadata accessor for LNQueryCapabilities(0, v9, v10, v11);
    sub_18EF8558C(&unk_1EACB8210);
    sub_18F09436C();
    v13 = _s14CodableWrapperVMa_32(0);
    LOBYTE(v15) = 12;
    _s14CodableWrapperVMa_1(0);
    sub_18EF8558C(&unk_1EACB73E0);
    sub_18F09436C();
    LOWORD(v15) = *(v3 + *(v13 + 68));
    v17 = 13;
    sub_18F01319C();
    sub_18F09436C();
    LOBYTE(v15) = 14;
    sub_18F09434C();
    LOBYTE(v15) = 15;
    sub_18F09433C();
    v15 = *(v3 + *(v13 + 80));
    v17 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0132A4();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18EFFC324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFB7CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFC34C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFFBD28();
  *a1 = result;
  return result;
}

uint64_t sub_18EFFC374(uint64_t a1)
{
  v2 = sub_18EFCBE50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFC3B0(uint64_t a1)
{
  v2 = sub_18EFCBE50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNQueryMetadata.asJson(prettyPrinted:sortKeys:)(Swift::Bool prettyPrinted, Swift::Bool sortKeys)
{
  OUTLINED_FUNCTION_180();
  v35 = v2;
  v6 = v5;
  v8 = v7;
  v9 = _s14CodableWrapperVMa_32(0);
  v10 = OUTLINED_FUNCTION_95(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  v11 = sub_18F09305C();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = sub_18F0930BC();
  OUTLINED_FUNCTION_277(v18);
  sub_18F0930AC();
  if (v8)
  {
    sub_18F09304C();
    v34 = OUTLINED_FUNCTION_411();
    v19 = OUTLINED_FUNCTION_197();
    sub_18EFD2A7C(v19, v20);
    v8 = v6;
    v6 = *(v13 + 8);
    v21 = OUTLINED_FUNCTION_178();
    v6(v21);
    (v6)(v17, v11);
    LOBYTE(v6) = v8;
    v22 = OUTLINED_FUNCTION_369();
    v34(v22);
  }

  if (v6)
  {
    sub_18F09303C();
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_134();
    v23 = OUTLINED_FUNCTION_197();
    sub_18EFD2A7C(v23, v24);
    v25 = *(v13 + 8);
    v26 = OUTLINED_FUNCTION_178();
    v25(v26);
    (v25)(v17, v11);
    v27 = OUTLINED_FUNCTION_369();
    v8(v27);
  }

  sub_18EFED20C(v4);
  sub_18EFD3070();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_200();
  sub_18EF86A6C();

  if (v3)
  {
    v28 = sub_18EFD2EC8();
    v29 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v28);
    *v30 = v3;
    OUTLINED_FUNCTION_117(v29, v30);
  }

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t sub_18EFFC89C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436D6574737973 && a2 == 0xEB00000000726F6CLL;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726156726F6C6F63 && a2 == 0xEC000000746E6169)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFFC96C(char a1)
{
  if (a1)
  {
    return 0x726156726F6C6F63;
  }

  else
  {
    return 0x6F436D6574737973;
  }
}

uint64_t sub_18EFFC9B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9068, &qword_18F0A9CC0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F020258();
  sub_18F0945BC();
  v14 = a2;
  v13 = 0;
  type metadata accessor for LNSystemColor(0);
  sub_18EF8558C(&unk_1EACB9070);
  sub_18F0943CC();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    type metadata accessor for LNColorVariant(0);
    sub_18EF8558C(&unk_1EACB9078);
    sub_18F0943CC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_18EFFCBBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9048, &qword_18F0A9CB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F020258();
  sub_18F09459C();
  type metadata accessor for LNSystemColor(0);
  HIBYTE(v8) = 0;
  sub_18EF8558C(&unk_1EACB9058);
  sub_18F0942CC();
  v6 = v9;
  type metadata accessor for LNColorVariant(0);
  HIBYTE(v8) = 1;
  sub_18EF8558C(&unk_1EACB9060);
  sub_18F0942CC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_18EFFCE04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000018F0AE9D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFFCEA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFFCF1C(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E68, &qword_18F0A7D20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E70, &qword_18F0A7D28);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E784();
  sub_18F0945BC();
  sub_18F01E7D8();
  sub_18F09431C();
  v15 = v13;
  v16 = v14;
  sub_18F01E880();
  sub_18F0943CC();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_18EFFD12C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E40, &qword_18F0A7D10);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E48, &qword_18F0A7D18);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E784();
  v9 = a1;
  sub_18F09459C();
  if (v1)
  {
    goto LABEL_9;
  }

  v28 = v3;
  v29 = v5;
  v10 = v31;
  v11 = sub_18F0942EC();
  sub_18EF89690(v11, 0);
  v16 = v6;
  if (v14 == v15 >> 1)
  {
    v17 = v9;
LABEL_8:
    v23 = sub_18F0940BC();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80);
    *v25 = &_s14CodableWrapperON;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v30 + 8))(v8, v16);
    v9 = v17;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return;
  }

  if (v14 < (v15 >> 1))
  {
    v17 = v9;
    sub_18F019378(v14 + 1, v15 >> 1, v12, v13, v14, v15);
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    if (v19 == v21 >> 1)
    {
      sub_18F01E7D8();
      v22 = v29;
      sub_18F09421C();
      sub_18F01E82C();
      sub_18F0942CC();
      v26 = v30;
      swift_unknownObjectRelease();
      (*(v10 + 8))(v22, v28);
      (*(v26 + 8))(v8, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      return;
    }

    v16 = v6;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_18EFFDA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFC89C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFDA60(uint64_t a1)
{
  v2 = sub_18F020258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFDA9C(uint64_t a1)
{
  v2 = sub_18F020258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFDAD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFFCBBC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_18EFFDB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFCE04(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFFDB50(uint64_t a1)
{
  v2 = sub_18F01E784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFDB8C(uint64_t a1)
{
  v2 = sub_18F01E784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFDBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFCEA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFFDBF8(uint64_t a1)
{
  v2 = sub_18F01E7D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFDC34(uint64_t a1)
{
  v2 = sub_18F01E7D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFFDC70(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18EFFD12C(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_18EFFDCB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFFDD90(char a1)
{
  if (a1)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x756F726765726F66;
  }
}

uint64_t sub_18EFFDDC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83E0, &qword_18F0A10E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019608();
  sub_18F0945BC();
  v12 = *v3;
  v13 = *(v3 + 16);
  v11 = 0;
  sub_18F0196B0();
  sub_18F09436C();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v13 = *(v3 + 40);
    v11 = 1;
    sub_18F09436C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18EFFDF68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83C8, &qword_18F0A10D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019608();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  sub_18F01965C();
  sub_18F09426C();
  v9 = v16;
  v15 = v17;
  v19 = v18;
  v20 = 1;
  sub_18F09426C();
  (*(v6 + 8))(v8, v5);
  v10 = v16;
  v11 = v17;
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v14 = v15;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  return result;
}

uint64_t sub_18EFFE16C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFFE230(char a1)
{
  if (a1)
  {
    return 0x5379616C70736964;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_18EFFE264(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000018F0AE4E0 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFFE378(char a1)
{
  if (!a1)
  {
    return 12383;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x5379616C70736964;
}

uint64_t sub_18EFFE3D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFFE4A0(char a1)
{
  if (a1)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_18EFFE4D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A69726F6C6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFFE598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974)
      {

        return 3;
      }

      else
      {
        v9 = sub_18F09444C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18EFFE6E4(char a1)
{
  result = 12383;
  switch(a1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x5379616C70736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFFE75C(void *a1)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8390, &qword_18F0A10A8);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v58 - v2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8398, &qword_18F0A10B0);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v58 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83A0, &qword_18F0A10B8);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v58 - v4;
  v5 = sub_18F0932BC();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  *&v72 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83A8, &qword_18F0A10C0);
  v58 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83B0, &qword_18F0A10C8);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v11 = &v58 - v10;
  v12 = _s14CodableWrapperOMa(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83B8, &qword_18F0A10D0);
  v75 = *(v15 - 8);
  v76 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8FCA8();
  v77 = v17;
  sub_18F0945BC();
  sub_18EF86A14(v73, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v48 = *(v14 + 1);
      v72 = *(v14 + 2);
      v73 = v48;
      v71 = *(v14 + 6);
      LODWORD(v70) = v14[56];
      v49 = v14[57];
      LOBYTE(v78) = 1;
      sub_18EF91480();
      v25 = v76;
      v26 = v77;
      sub_18F09431C();
      LOBYTE(v78) = 0;
      v50 = v74;
      sub_18F09437C();
      if (v50)
      {

        v28 = &v83;
        goto LABEL_13;
      }

      v79 = v72;
      v78 = v73;
      v80 = v71;
      v81 = v70;
      v82 = v49;
      v84 = 1;
      sub_18F0195B4();
      sub_18F09436C();
      (*(v58 + 8))(v9, v7);
      goto LABEL_19;
    case 2u:
      v29 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8380, &qword_18F0A10A0) + 80)];
      *&v73 = *v29;
      LODWORD(v66) = v29[8];
      v31 = v69;
      v30 = v70;
      v32 = v72;
      (*(v69 + 32))(v72, v14, v70);
      LOBYTE(v78) = 2;
      sub_18F01950C();
      v33 = v71;
      v34 = v76;
      v35 = v77;
      sub_18F09431C();
      LOBYTE(v78) = 0;
      sub_18EF8558C(&unk_1EACB6B48);
      v36 = v68;
      v37 = v74;
      sub_18F0943CC();
      if (v37)
      {
        (*(v67 + 8))(v33, v36);
        (*(v31 + 8))(v32, v30);
        v38 = *(v75 + 8);
        v39 = v35;
      }

      else
      {
        v51 = v66;
        v52 = v73;
        LOBYTE(v78) = 1;
        sub_18F09439C();
        LOBYTE(v78) = 2;
        sub_18F09439C();
        *&v78 = v52;
        BYTE8(v78) = v51;
        v84 = 3;
        type metadata accessor for LNImageDisplayStyle(0);
        sub_18EF8558C(&unk_1EACB6AA8);
        v56 = v71;
        sub_18F09436C();
        v57 = v77;
        (*(v67 + 8))(v56, v36);
        (*(v31 + 8))(v72, v30);
        v38 = *(v75 + 8);
        v39 = v57;
      }

      v53 = v34;
      return v38(v39, v53);
    case 3u:
      v41 = *v14;
      v40 = *(v14 + 1);
      *&v73 = *(v14 + 2);
      v42 = v14[24];
      LOBYTE(v78) = 3;
      sub_18F0194B8();
      v43 = v61;
      v44 = v76;
      v45 = v77;
      sub_18F09431C();
      *&v78 = v41;
      *(&v78 + 1) = v40;
      v84 = 0;
      sub_18F017448();
      v46 = v63;
      v47 = v74;
      sub_18F0943CC();
      if (v47)
      {
        (*(v62 + 8))(v43, v46);
        (*(v75 + 8))(v45, v44);
        return sub_18EF9A4AC(v41, v40);
      }

      else
      {
        *&v78 = v73;
        BYTE8(v78) = v42;
        v84 = 1;
        type metadata accessor for LNImageDisplayStyle(0);
        sub_18EF8558C(&unk_1EACB6AA8);
        sub_18F09436C();
        sub_18EF9A4AC(v41, v40);
        (*(v62 + 8))(v43, v46);
        return (*(v75 + 8))(v45, v44);
      }

    case 4u:
      v24 = *v14;
      LOBYTE(v78) = 4;
      sub_18F019464();
      v9 = v64;
      v25 = v76;
      v26 = v77;
      sub_18F09431C();
      *&v78 = v24;
      v84 = 0;
      type metadata accessor for LNImageISIconType(0);
      sub_18EF8558C(&unk_1EACB83C0);
      v7 = v66;
      v27 = v74;
      sub_18F0943CC();
      if (!v27)
      {
        LOBYTE(v78) = 1;
        sub_18F09437C();
      }

      v28 = &v85;
LABEL_13:
      (*(*(v28 - 32) + 8))(v9, v7);
      return (*(v75 + 8))(v26, v25);
    default:
      *&v73 = *(v14 + 2);
      *&v72 = *(v14 + 4);
      v18 = v14[40];
      LOBYTE(v78) = 0;
      sub_18F019560();
      v19 = v76;
      v20 = v77;
      sub_18F09431C();
      LOBYTE(v78) = 0;
      v21 = v60;
      v22 = v74;
      sub_18F09437C();

      if (v22)
      {

        (*(v59 + 8))(v11, v21);
        return (*(v75 + 8))(v20, v19);
      }

      else
      {
        v54 = v18;
        v55 = v72;
        LOBYTE(v78) = 1;
        sub_18F09433C();

        *&v78 = v55;
        BYTE8(v78) = v54;
        v84 = 2;
        type metadata accessor for LNImageDisplayStyle(0);
        sub_18EF8558C(&unk_1EACB6AA8);
        sub_18F09436C();
        (*(v59 + 8))(v11, v21);
LABEL_19:
        v53 = v76;
        v38 = *(v75 + 8);
        v39 = v77;
        return v38(v39, v53);
      }
  }
}

uint64_t sub_18EFFF440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFDCB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF468(uint64_t a1)
{
  v2 = sub_18F019608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF4A4(uint64_t a1)
{
  v2 = sub_18F019608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18EFFF4E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18EFFDF68(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_18EFFF560(uint64_t a1)
{
  v2 = sub_18EF8FCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF59C(uint64_t a1)
{
  v2 = sub_18EF8FCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE16C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF608(uint64_t a1)
{
  v2 = sub_18F0194B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF644(uint64_t a1)
{
  v2 = sub_18F0194B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF6B0(uint64_t a1)
{
  v2 = sub_18F019560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF6EC(uint64_t a1)
{
  v2 = sub_18F019560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE3D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF758(uint64_t a1)
{
  v2 = sub_18F019464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF794(uint64_t a1)
{
  v2 = sub_18F019464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF7F8(uint64_t a1)
{
  v2 = sub_18EF91480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF834(uint64_t a1)
{
  v2 = sub_18EF91480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF8A0(uint64_t a1)
{
  v2 = sub_18F01950C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF8DC(uint64_t a1)
{
  v2 = sub_18F01950C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_18EFFF930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_18F093B5C();

  v8 = [v6 initWithImageNamed:v7 renderingMode:a3 displayStyle:a4];

  return v8;
}

id sub_18EFFF9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18F093B5C();

  v6 = [v4 initWithIconType:a1 identifier:v5];

  return v6;
}

id sub_18EFFFA38(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_18F09324C();
  v12 = [v10 initWithURL:v11 width:a2 height:a3 renderingMode:a4 displayStyle:a5];

  v13 = sub_18F0932BC();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_18EFFFB04(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithINImage:a1 displayStyle:a2 size:a3];

  return v5;
}

uint64_t sub_18EFFFB68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x32566567616D69 && a2 == 0xE700000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7470697263736564 && a2 == 0xEF747865546E6F69)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F09444C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18EFFFD50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8330, &qword_18F0A1068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9208C();
  sub_18F0945BC();
  v20 = 0;
  _s14CodableWrapperVMa_0(0);
  sub_18EF8558C(&unk_1EACB6A38);
  sub_18F0943CC();
  if (!v2)
  {
    v9 = _s14CodableWrapperVMa_2(0);
    v19 = 1;
    sub_18F09436C();
    v13 = *(v9 + 24);
    v18 = 2;
    v10 = _s14CodableWrapperOMa(0);
    v12[1] = sub_18EF8558C(&unk_1EACB6A28);
    v13 = v10;
    sub_18F09436C();
    v17 = 3;
    sub_18F09436C();
    v14 = *(v3 + *(v9 + 32));
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F09436C();
    v15 = 5;
    sub_18F09436C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18F00005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFFB68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F000084(uint64_t a1)
{
  v2 = sub_18EF9208C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F0000C0(uint64_t a1)
{
  v2 = sub_18EF9208C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F000114(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018F0AE7B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F0001EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB80D0, &qword_18F0A0F80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8F4C8();
  sub_18F0945BC();
  v8[15] = 0;
  sub_18F09437C();
  if (!v1)
  {
    _s14CodableWrapperVMa_18(0);
    v8[14] = 1;
    _s14CodableWrapperVMa_2(0);
    sub_18EF8558C(&unk_1EACB6AA0);
    sub_18F0943CC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18F0003A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F000114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0003CC(uint64_t a1)
{
  v2 = sub_18EF8F4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F000408(uint64_t a1)
{
  v2 = sub_18EF8F4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18F00045C(uint64_t *a1@<X8>)
{
  v3 = [v1 identifier];
  v4 = sub_18F093B8C();
  v6 = v5;

  v7 = [v1 displayRepresentation];
  v8 = _s14CodableWrapperVMa_18(0);
  sub_18EFE6608(a1 + *(v8 + 20));

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_18F0004F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5464656C676E616DLL && a2 == 0xEF656D614E657079;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000021 && 0x800000018F0ADDD0 == a2;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x800000018F0ADE50 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5479616C70736964 && a2 == 0xEF656D614E657079;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x800000018F0AE170 == a2;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7365736163 && a2 == 0xE500000000000000;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x800000018F0AE1F0 == a2;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2;
                  if (v13 || (sub_18F09444C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D65747379537369 && a2 == 0xE800000000000000;
                    if (v14 || (sub_18F09444C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000;
                      if (v15 || (sub_18F09444C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x800000018F0AE050 == a2;
                        if (v16 || (sub_18F09444C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x800000018F0ADFF0 == a2;
                          if (v17 || (sub_18F09444C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x800000018F0AE030 == a2;
                            if (v18 || (sub_18F09444C() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x546465776F6C6C61 && a2 == 0xEE00737465677261)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_18F09444C();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

uint64_t sub_18F00096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F0004F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F000994(uint64_t a1)
{
  v2 = sub_18EF8F408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F0009D0(uint64_t a1)
{
  v2 = sub_18EF8F408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNEnumMetadata.CodableWrapper.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7630, &qword_18F09BE60);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_80();
  v2 = sub_18EF8F408();
  OUTLINED_FUNCTION_214(&_s14CodableWrapperV10CodingKeysON_3, v3, v2);
  OUTLINED_FUNCTION_35();
  sub_18F09437C();
  if (!v0)
  {
    OUTLINED_FUNCTION_250();
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    OUTLINED_FUNCTION_397();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_79(&unk_1EACB73B8);
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    OUTLINED_FUNCTION_294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18F012A58();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    v4 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
    OUTLINED_FUNCTION_379();
    _s14CodableWrapperVMa_0(0);
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v5);
    OUTLINED_FUNCTION_69();
    sub_18F0943CC();
    OUTLINED_FUNCTION_69();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v4[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7640, &qword_18F09BE68);
    sub_18F0138B8();
    OUTLINED_FUNCTION_3();
    sub_18F0943CC();
    OUTLINED_FUNCTION_233(v4[11]);
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    OUTLINED_FUNCTION_167(v4[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    OUTLINED_FUNCTION_110();
    sub_18F09434C();
    OUTLINED_FUNCTION_167(v4[14]);
    OUTLINED_FUNCTION_361();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    OUTLINED_FUNCTION_233(v4[15]);
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    OUTLINED_FUNCTION_167(v4[16]);
    OUTLINED_FUNCTION_360();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F012FEC();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    sub_18F01319C();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_110();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v4[18]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0132A4();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
  }

  v6 = OUTLINED_FUNCTION_318();
  v7(v6);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

void LNEnumMetadata.wrapper(encodingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_260();
  v23 = v20;
  v173 = v24;
  v25 = _s14CodableWrapperVMa_18(0);
  v26 = OUTLINED_FUNCTION_45(v25);
  v179 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_220();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v28);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_133(v30, v159);
  v181 = _s14CodableWrapperVMa_0(0);
  OUTLINED_FUNCTION_7();
  v177 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_42();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v174 = &v159 - v37;
  v38 = OUTLINED_FUNCTION_237();
  v39 = _s14CodableWrapperVMa(v38);
  v40 = OUTLINED_FUNCTION_45(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_22();
  v43 = (v42 - v41);
  v44 = [v20 identifier];
  v45 = sub_18F093B8C();
  v171 = v46;
  v172 = v45;

  v47 = [v20 mangledTypeName];
  v48 = sub_18F093B8C();
  v169 = v49;
  v170 = v48;

  v50 = [v20 mangledTypeNameByBundleIdentifier];
  v168 = sub_18F093A4C();

  v51 = [v20 effectiveBundleIdentifiers];
  v52 = [v51 array];

  v53 = sub_18F093DCC();
  v54 = sub_18EFF3050(v53);

  v178 = v23;
  if (v54)
  {
    v55 = sub_18EFA0A7C(v54);
    if (v55)
    {
      v56 = v55;
      OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
      sub_18F00F468();
      if (v56 < 0)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v176 = v35;
      v57 = 0;
      v180 = v183;
      do
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v58 = OUTLINED_FUNCTION_197();
          v59 = MEMORY[0x193AD8BA0](v58);
        }

        else
        {
          v59 = *(v54 + 8 * v57 + 32);
        }

        v60 = v59;
        sub_18EFF0A68(v43);

        OUTLINED_FUNCTION_129();
        if (v63)
        {
          OUTLINED_FUNCTION_41(v61);
          sub_18F00F468();
          v62 = v183;
        }

        ++v57;
        *(v62 + 16) = v21;
        OUTLINED_FUNCTION_149();
        v180 = v64;
        OUTLINED_FUNCTION_25();
        sub_18EF88240(v43, v65);
      }

      while (v56 != v57);

      v23 = v178;
      v35 = v176;
    }

    else
    {

      v180 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v180 = 0;
  }

  v66 = &selRef_scrollProtocol;
  v67 = [v23 displayRepresentation];
  v68 = [v67 name];

  sub_18EFD9154(v174);
  v69 = [v23 displayRepresentation];
  v70 = [v69 numericFormat];

  if (v70)
  {
    v71 = v175;
    sub_18EFD9154(v175);

    v72 = 0;
  }

  else
  {
    v72 = 1;
    v71 = v175;
  }

  __swift_storeEnumTagSinglePayload(v71, v72, 1, v181);
  v73 = [v23 cases];
  sub_18EF825F4(0, &qword_1ED5FDFF0, off_1E72B0040);
  OUTLINED_FUNCTION_272();
  v74 = sub_18F093DCC();

  v75 = sub_18EFA0A7C(v74);
  if (!v75)
  {

    v181 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v76 = v75;
  OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
  sub_18F00F620();
  if (v76 < 0)
  {
    __break(1u);
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_394();
  v181 = v77;
  do
  {
    if ((v74 & 0xC000000000000001) != 0)
    {
      v78 = OUTLINED_FUNCTION_273();
      v79 = MEMORY[0x193AD8BA0](v78);
    }

    else
    {
      v79 = OUTLINED_FUNCTION_353();
    }

    v70 = v79;
    sub_18F00045C(v22);

    OUTLINED_FUNCTION_129();
    if (v63)
    {
      OUTLINED_FUNCTION_41(v80);
      sub_18F00F620();
      v81 = v183;
    }

    ++v73;
    *(v81 + 16) = &selRef_scrollProtocol;
    OUTLINED_FUNCTION_149();
    v181 = v82;
    OUTLINED_FUNCTION_179();
    sub_18EF88240(v22, v83);
  }

  while (v76 != v73);

  v23 = v178;
  v66 = &selRef_scrollProtocol;
LABEL_28:
  sub_18F013BD0(v23, &selRef_customIntentEnumTypeName);
  OUTLINED_FUNCTION_327();
  v84 = sub_18F013B0C(v23);
  if (v84)
  {
    v73 = v84;
    v85 = sub_18EFD61FC(v84);
    OUTLINED_FUNCTION_281(v85);
  }

  else
  {
    v165 = 0;
  }

  v86 = [v23 isSystem];
  v167 = v70;
  v166 = v74;
  if (v86)
  {
    v73 = v86;
    v164 = [v86 BOOLValue];
  }

  else
  {
    v164 = 2;
  }

  v87 = sub_18F012924([v23 v66[234]]);
  if (!v87)
  {
    v179 = 0;
    goto LABEL_47;
  }

  v88 = v87;
  v89 = sub_18EFA0A7C(v87);
  if (!v89)
  {

    v179 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v90 = v89;
  OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
  sub_18F00F0B8();
  if (v90 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_394();
  v179 = v91;
  do
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      v92 = OUTLINED_FUNCTION_273();
      v93 = MEMORY[0x193AD8BA0](v92);
    }

    else
    {
      v93 = OUTLINED_FUNCTION_353();
    }

    v70 = v93;
    sub_18EFD9154(v35);

    OUTLINED_FUNCTION_129();
    if (v63)
    {
      OUTLINED_FUNCTION_41(v94);
      sub_18F00F0B8();
      v95 = v183;
    }

    ++v73;
    *(v95 + 16) = v66;
    OUTLINED_FUNCTION_149();
    v179 = v96;
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v35, v97);
  }

  while (v90 != v73);

LABEL_47:
  v98 = sub_18F013BD0(v23, &selRef_fullyQualifiedTypeName);
  v100 = v99;
  v101 = sub_18F012778(v23, &selRef_assistantDefinedSchemas, qword_1ED5FE9A0, off_1E72AFF10);
  v163 = v98;
  v162 = v100;
  if (!v101)
  {
    v109 = 0;
    goto LABEL_60;
  }

  v102 = v101;
  v103 = sub_18EFA0A7C(v101);
  if (!v103)
  {

    v109 = MEMORY[0x1E69E7CC0];
    goto LABEL_60;
  }

  v104 = v103;
  v105 = OUTLINED_FUNCTION_92(MEMORY[0x1E69E7CC0]);
  sub_18F00F398(v105, v106, v107);
  if (v104 < 0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v108 = 0;
  v109 = v182;
  do
  {
    if ((v102 & 0xC000000000000001) != 0)
    {
      v110 = OUTLINED_FUNCTION_189();
      v111 = MEMORY[0x193AD8BA0](v110);
    }

    else
    {
      v111 = *(v102 + 8 * v108 + 32);
    }

    v112 = v111;
    OUTLINED_FUNCTION_412();

    v182 = v109;
    v114 = *(v109 + 16);
    v113 = *(v109 + 24);
    if (v114 >= v113 >> 1)
    {
      v115 = OUTLINED_FUNCTION_114(v113);
      v70 = &v182;
      sub_18F00F398(v115, v114 + 1, 1);
      v109 = v182;
    }

    ++v108;
    *(v109 + 16) = v114 + 1;
    OUTLINED_FUNCTION_91(v109 + 48 * v114);
  }

  while (v104 != v108);

LABEL_60:
  v116 = v178;
  v117 = [v178 visibilityMetadata];
  v118 = [v117 isDiscoverable];
  v119 = [v117 assistantOnly];

  v120 = sub_18F012778(v116, &selRef_allowedTargets, &unk_1EACB72E8, off_1E72B01E8);
  v161 = v118;
  v160 = v119;
  if (v120)
  {
    v121 = v120;
    v122 = sub_18EFA0A7C(v120);
    if (v122)
    {
      v123 = v122;
      v124 = OUTLINED_FUNCTION_92(MEMORY[0x1E69E7CC0]);
      sub_18F00F308(v124, v125, v126);
      if ((v123 & 0x8000000000000000) == 0)
      {
        v127 = 0;
        v128 = v182;
        v176 = v121 & 0xC000000000000001;
        v177 = v123;
        v178 = v121;
        do
        {
          if (v176)
          {
            v129 = MEMORY[0x193AD8BA0](v127, v121);
          }

          else
          {
            v129 = *(v121 + 8 * v127 + 32);
          }

          v130 = v129;
          v131 = sub_18EFF17B4();
          v133 = v132;
          v135 = v134;
          v137 = v136;

          v182 = v128;
          v139 = *(v128 + 16);
          v138 = *(v128 + 24);
          if (v139 >= v138 >> 1)
          {
            OUTLINED_FUNCTION_114(v138);
            OUTLINED_FUNCTION_339();
            sub_18F00F308(v141, v142, v143);
            v128 = v182;
          }

          ++v127;
          *(v128 + 16) = v139 + 1;
          v140 = (v128 + 32 * v139);
          v140[4] = v131;
          v140[5] = v133;
          v140[6] = v135;
          v140[7] = v137;
          v121 = v178;
        }

        while (v177 != v127);

        goto LABEL_73;
      }

LABEL_81:
      __break(1u);
      return;
    }

    v128 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v128 = 0;
  }

LABEL_73:
  OUTLINED_FUNCTION_305();
  if (v151)
  {
    v144 = 0;
  }

  v152 = v173;
  *v173 = v145;
  v152[1] = v146;
  v153 = v144 | v161;
  v152[2] = v147;
  v152[3] = v148;
  v152[4] = v149;
  v152[5] = v150;
  v154 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  OUTLINED_FUNCTION_1_1();
  sub_18EF88240(v174, v152 + v155);
  sub_18EF869B4();
  *(v152 + v154[10]) = v181;
  OUTLINED_FUNCTION_255((v152 + v154[11]));
  *(v152 + v156) = v157;
  *(v152 + v154[13]) = v164;
  *(v152 + v154[14]) = v179;
  OUTLINED_FUNCTION_286((v152 + v154[15]));
  *(v152 + v158) = v109;
  *(v152 + v154[17]) = v153;
  *(v152 + v154[18]) = v128;
  OUTLINED_FUNCTION_259();
}

uint64_t sub_18F0019B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F001A7C(char a1)
{
  if (a1)
  {
    return 0x6D496D6574737973;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_18F001ABC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E08, &qword_18F0A7CE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E5E8();
  sub_18F0945BC();
  v8[15] = 0;
  _s14CodableWrapperVMa_0(0);
  sub_18EF8558C(&unk_1EACB6A38);
  sub_18F0943CC();
  if (!v1)
  {
    _s14CodableWrapperVMa_31(0);
    v8[14] = 1;
    sub_18F09433C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18F001C78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8DF0, &qword_18F0A7CD8);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v22 - v6;
  v8 = _s14CodableWrapperVMa_31(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E5E8();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v8;
  v11 = v10;
  v12 = v25;
  v29 = 0;
  sub_18EF8558C(&unk_1ED5FF4F8);
  v14 = v26;
  v13 = v27;
  sub_18F0942CC();
  sub_18EF88240(v14, v11);
  v28 = 1;
  v15 = sub_18F09423C();
  v16 = v12;
  v17 = v15;
  v19 = v18;
  v20 = (v11 + *(v23 + 20));
  (*(v16 + 8))(v7, v13);
  *v20 = v17;
  v20[1] = v19;
  sub_18EF86A14(v11, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

uint64_t sub_18F001FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F0019B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F001FE4(uint64_t a1)
{
  v2 = sub_18F01E5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F002020(uint64_t a1)
{
  v2 = sub_18F01E5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F00208C@<X0>(SEL *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [v4 *a1];
  sub_18EFD9154(a4);

  v9 = OUTLINED_FUNCTION_189();
  sub_18F013BD0(v9, v10);
  OUTLINED_FUNCTION_327();
  result = a3(0);
  v12 = (a4 + *(result + 20));
  *v12 = v8;
  v12[1] = a2;
  return result;
}

void sub_18F002110()
{
  OUTLINED_FUNCTION_260();
  v21 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_320();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_95(v13);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_256();
  v15 = _s14CodableWrapperVMa_0(0);
  v16 = OUTLINED_FUNCTION_95(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_330();
  v17 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  OUTLINED_FUNCTION_8();
  sub_18EF86A14(v10, v0);
  sub_18EF9FE2C();
  v18 = v6;
  sub_18EF9CEB8(v0, v1, v6);
  v19 = OUTLINED_FUNCTION_138();
  if (*(v10 + *(v4(v19) + 20) + 8))
  {
    v20 = sub_18F093B5C();
  }

  else
  {
    v20 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) *v21];

  sub_18EF933AC(v8, &qword_1EACB72C8);
  sub_18EF86A6C();
  OUTLINED_FUNCTION_259();
}

uint64_t sub_18F0022B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000018F0AE810 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6369666963657073 && a2 == 0xED0000656C746954;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x54636972656E6567 && a2 == 0xEC000000656C7469;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x800000018F0AE830 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000011 && 0x800000018F0AE850 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_18F09444C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_18F002470(char a1)
{
  result = 0x6369666963657073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x54636972656E6567;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_18F002528(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB81A0, &qword_18F0A0FF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0186F0();
  sub_18F0945BC();
  LOBYTE(v12) = 0;
  sub_18F09437C();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 32);
    v11 = 1;
    sub_18F018880();
    sub_18F0943CC();
    LOBYTE(v12) = 2;
    sub_18F09433C();
    LOBYTE(v12) = 3;
    sub_18F09433C();
    *&v12 = *(v3 + 72);
    v11 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8198, &qword_18F0A0FF0);
    sub_18F0188D4();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_18F002750@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8190, &qword_18F0A0FE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0186F0();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v30) = 0;
  v9 = sub_18F09427C();
  v28 = v10;
  LOBYTE(__src[0]) = 1;
  sub_18EFA3674();
  sub_18F0942CC();
  v25 = v30;
  v27 = v31;
  v26 = v32;
  LOBYTE(v30) = 2;
  v23 = sub_18F09423C();
  v24 = v11;
  LOBYTE(v30) = 3;
  v21 = sub_18F09423C();
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8198, &qword_18F0A0FF0);
  v40 = 4;
  sub_18F018744();
  sub_18F09426C();
  (*(v6 + 8))(v8, v5);
  v20 = v41;
  v13 = v28;
  __src[0] = v9;
  __src[1] = v28;
  v14 = v27;
  __src[2] = v25;
  __src[3] = v27;
  v15 = v26;
  __src[4] = v26;
  __src[5] = v23;
  v16 = v24;
  __src[6] = v24;
  __src[7] = v21;
  v17 = v22;
  __src[8] = v22;
  __src[9] = v41;
  sub_18F018818(__src, &v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v30 = v9;
  v31 = v13;
  v32 = v25;
  v33 = v14;
  v34 = v15;
  v35 = v23;
  v36 = v16;
  v37 = v21;
  v38 = v17;
  v39 = v20;
  sub_18F018850(&v30);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_18F002BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F0022B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F002BDC(uint64_t a1)
{
  v2 = sub_18F0186F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F002C18(uint64_t a1)
{
  v2 = sub_18F0186F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_18F002C54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_18F002750(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

void sub_18F002CF4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s14CodableWrapperVMa_31(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 parameterIdentifier];
  v9 = sub_18F093B8C();
  v11 = v10;

  v12 = [v2 specificTitle];
  v13 = sub_18EFE33A0();
  v35 = v15;
  v36 = v14;

  v16 = sub_18F013BD0(v2, &selRef_localizationTable);
  v34 = v17;
  v18 = sub_18F012778(v2, &selRef_optionsCollection, &qword_1EACB6E78, off_1E72AFEF0);
  v37 = v13;
  if (!v18)
  {
    v23 = 0;
LABEL_15:
    *a1 = v9;
    *(a1 + 8) = v11;
    v27 = v36;
    *(a1 + 16) = v37;
    *(a1 + 24) = v27;
    *(a1 + 32) = v35;
    *(a1 + 40) = xmmword_18F09BCE0;
    v28 = v34;
    *(a1 + 56) = v16;
    *(a1 + 64) = v28;
    *(a1 + 72) = v23;
    return;
  }

  v19 = v18;
  v33 = v11;
  v20 = sub_18EFA0A7C(v18);
  if (!v20)
  {

    v23 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v11 = v33;
    goto LABEL_15;
  }

  v21 = v20;
  v32 = v16;
  v38 = MEMORY[0x1E69E7CC0];
  sub_18F00F4C0();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v30 = v9;
    v31 = a1;
    v22 = 0;
    v23 = v38;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x193AD8BA0](v22, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v22 + 32);
      }

      v25 = v24;
      sub_18F00208C(&selRef_title, &selRef_systemImageName, _s14CodableWrapperVMa_31, v7);

      v38 = v23;
      v26 = *(v23 + 16);
      if (v26 >= *(v23 + 24) >> 1)
      {
        sub_18F00F4C0();
        v23 = v38;
      }

      ++v22;
      *(v23 + 16) = v26 + 1;
      sub_18EF88240(v7, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26);
    }

    while (v21 != v22);

    v9 = v30;
    a1 = v31;
    v16 = v32;
    goto LABEL_14;
  }

  __break(1u);
}

id sub_18F002FC4(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v28 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1ED5FDB38, off_1E72AFEC8);
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v12 = a2;
  sub_18EF9FE2C();
  v13 = a3;

  v14 = sub_18EFA4D44(v10, v9, v11, v8, a3);
  v15 = v14;
  if (a1[8])
  {

    v16 = sub_18F093B5C();
  }

  else
  {
    v16 = 0;
  }

  v17 = a1[9];
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v14);
    *(&v27 - 2) = v12;
    *(&v27 - 1) = a3;

    sub_18EF9D97C(sub_18F019CEC, (&v27 - 4), v17, _s14CodableWrapperVMa_31, v18, v19, v20, v21, v27, v28, v29, v30);
    sub_18F018850(a1);

    sub_18EF825F4(0, &qword_1EACB6E78, off_1E72AFEF0);
    v22 = sub_18F093DBC();
  }

  else
  {
    sub_18F018850(a1);
    v22 = 0;
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = v28;
  v25 = [v23 initWithParameterIdentifier:v28 specificTitle:v15 localizationTable:v16 optionsCollection:v22];

  sub_18EF933AC(v12, &qword_1EACB72C8);
  return v25;
}

void sub_18F003248(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = _s14CodableWrapperVMa_31(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &qword_1EACB6E78, off_1E72AFEF0);
  sub_18EF86A14(a1, v9);
  sub_18EF9FE2C();
  v10 = a2;
  sub_18F002110();
  *a3 = v11;
}

uint64_t sub_18F0033D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000018F0AE250 == a2;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6554657361726870 && a2 == 0xEF736574616C706DLL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000018F0AE7D0 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x800000018F0AE7F0 == a2;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_18F09444C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18F003628(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8180, &qword_18F0A0FE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA810C();
  sub_18F0945BC();
  LOBYTE(__dst[0]) = 0;
  sub_18F09437C();
  if (!v2)
  {
    __dst[0] = *(v3 + 16);
    v15[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F0943CC();
    v12 = _s14CodableWrapperVMa_29(0);
    LOBYTE(__dst[0]) = 2;
    _s14CodableWrapperVMa_0(0);
    sub_18EF8558C(&unk_1EACB6A38);
    sub_18F09436C();
    LOBYTE(__dst[0]) = 3;
    sub_18F09436C();
    v19 = 4;
    sub_18F09433C();
    v9 = *(v12 + 36);
    memcpy(__dst, (v3 + v9), sizeof(__dst));
    memcpy(v15, (v3 + v9), sizeof(v15));
    v18 = 5;
    sub_18EF9FE2C();
    sub_18F01869C();
    sub_18F09436C();
    memcpy(v14, v15, sizeof(v14));
    sub_18EF933AC(v14, &unk_1EACB8170);
    v13 = *(v3 + *(v12 + 40));
    v17 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18F0039D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F0033D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0039FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F003620();
  *a1 = result;
  return result;
}

uint64_t sub_18F003A24(uint64_t a1)
{
  v2 = sub_18EFA810C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F003A60(uint64_t a1)
{
  v2 = sub_18EFA810C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_18F003AB4@<X0>(const void *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11[-v7];
  memcpy(__dst, a1, sizeof(__dst));
  sub_18EF825F4(0, &unk_1EACB6E40, off_1E72AFEF8);
  sub_18EF9FE2C();
  sub_18F018818(__dst, v11);
  v9 = a2;
  result = sub_18F002FC4(__dst, v8, a2);
  *a3 = result;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAutoShortcutMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v3 = OUTLINED_FUNCTION_146();
  v4 = _s14CodableWrapperVMa_29(v3);
  v5 = OUTLINED_FUNCTION_95(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_141();
  sub_18EFEBE88(v2);
  OUTLINED_FUNCTION_109();
  sub_18EFDADC8();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_224();
  if (v1)
  {
    v6 = sub_18EFD2EC8();
    v7 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v6);
    OUTLINED_FUNCTION_43(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_49();
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_18F003CA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F003D70(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_18F003DA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8150, &qword_18F0A0FC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018648();
  sub_18F0945BC();
  v8[15] = 0;
  sub_18F09437C();
  if (!v1)
  {
    _s14CodableWrapperVMa_28(0);
    v8[14] = 1;
    _s19BasicCodableWrapperOMa(0);
    sub_18EF8558C(&unk_1EACB6A08);
    sub_18F09436C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18F003F60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8148, &qword_18F0A0FC0);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = _s14CodableWrapperVMa_28(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 28);
  v13 = _s19BasicCodableWrapperOMa(0);
  v20 = v12;
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018648();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF933AC(v11 + v20, &unk_1EACB72F8);
  }

  else
  {
    v14 = v18;
    v22 = 0;
    *v11 = sub_18F09427C();
    v11[1] = v15;
    v21 = 1;
    sub_18EF8558C(&unk_1ED5FE008);
    sub_18F09426C();
    (*(v14 + 8))(v7, v19);
    sub_18EF872D4();
    sub_18EF86A14(v11, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

uint64_t sub_18F0042AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F003CA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0042D4(uint64_t a1)
{
  v2 = sub_18F018648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F004310(uint64_t a1)
{
  v2 = sub_18F018648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F00437C@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v14 - v4);
  v6 = [v1 identifier];
  v7 = sub_18F093B8C();
  v9 = v8;

  v10 = [v1 value];
  if (v10)
  {
    v11 = v10;
    sub_18EFD7818(v5);
  }

  else
  {
    v12 = _s19BasicCodableWrapperOMa(0);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  }

  *a1 = v7;
  a1[1] = v9;
  _s14CodableWrapperVMa_28(0);
  return sub_18EF869B4();
}

id sub_18F00449C(void *a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_18F093B5C();
  _s14CodableWrapperVMa_28(0);
  v7 = sub_18EFA4790(sub_18EFC74F0);
  v8 = [v5 initWithIdentifier:v6 value:v7];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v8;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNProperty.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v3 = OUTLINED_FUNCTION_146();
  v4 = _s14CodableWrapperVMa_28(v3);
  v5 = OUTLINED_FUNCTION_95(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_141();
  sub_18F00437C(v2);
  OUTLINED_FUNCTION_109();
  sub_18EFDADC8();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_223();
  if (v1)
  {
    v6 = sub_18EFD2EC8();
    v7 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v6);
    OUTLINED_FUNCTION_43(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_49();
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_18F00488C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736564756C636E69 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F004954(char a1)
{
  if (a1)
  {
    return 0x736564756C636E69;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_18F00498C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8138, &qword_18F0A0FB8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018514();
  sub_18F0945BC();
  v15 = a2;
  v16 = a3 & 1;
  v17 = 0;
  type metadata accessor for LNBundleMetadataVersion(0);
  sub_18EF8558C(&unk_1EACB8140);
  sub_18F09436C();
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    sub_18EFA3C14(&unk_1EACB7770);
    sub_18F0943CC();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_18F004BA4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB80E8, &qword_18F0A0F90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018514();
  sub_18F09459C();
  type metadata accessor for LNBundleMetadataVersion(0);
  v9 = 0;
  sub_18EF8558C(&unk_1ED5FEA50);
  sub_18F09426C();
  v6 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
  v9 = 1;
  sub_18EFA3C14(&unk_1ED5FDD20);
  sub_18F0942CC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_18F004DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00488C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F004E24(uint64_t a1)
{
  v2 = sub_18F018514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F004E60(uint64_t a1)
{
  v2 = sub_18F018514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F004E9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18F004BA4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
  }

  return result;
}

id sub_18F004F00()
{
  v1 = [objc_opt_self() latestMetadataVersion];
  v2 = [v0 includes];
  sub_18F093DCC();

  return v1;
}

id sub_18F004F84(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a1 = [objc_opt_self() latestMetadataVersion];
  }

  objc_autoreleasePoolPop(MEMORY[0x193AD91F0](a1));
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_18F093DBC();

  v7 = [v5 initWithIncludes_];

  sub_18EF933AC(a4, &qword_1EACB72C8);
  return v7;
}

id LNPackageMetadata.init(metadataFileURL:bundleURL:)(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = sub_18F09324C();
  v5 = sub_18F0932BC();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v5) != 1)
  {
    v6 = sub_18F09324C();
    OUTLINED_FUNCTION_111();
    v7 = OUTLINED_FUNCTION_140();
    v8(v7);
  }

  v17[0] = 0;
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) _initWithMetadataFileURL_bundleURL_error_];

  v10 = v17[0];
  if (v9)
  {
    OUTLINED_FUNCTION_111();
    v12 = *(v11 + 8);
    v13 = v10;
    v12(a1, v5);
  }

  else
  {
    v14 = v17[0];
    sub_18F09318C();

    swift_willThrow();
    OUTLINED_FUNCTION_111();
    (*(v15 + 8))(a1, v5);
  }

  return v9;
}

void LNPackageMetadata.init(metadataFileURL:bundleURL:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v0;
  v33 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v7);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_162();
  sub_18F09316C();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7398, &qword_18F09BD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F09BCC0;
  v11 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v12 = v11;
  sub_18EFBC078(inited);
  OUTLINED_FUNCTION_336();
  sub_18F09322C();
  if (v1)
  {

LABEL_4:
    v19 = sub_18EFD2EC8();
    OUTLINED_FUNCTION_249(&type metadata for MetadataError, v19);
    *v20 = 0;
    v21 = 4;
    goto LABEL_5;
  }

  v13 = sub_18F09315C();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_266();
  v18 = v17(v16);
  if (v15)
  {
    goto LABEL_4;
  }

  if (v13 <= 5048575)
  {
    v25 = MEMORY[0x193AD91F0](v18);
    sub_18F0932CC();
    v26 = sub_18F09302C();
    OUTLINED_FUNCTION_277(v26);
    sub_18F09301C();
    sub_18F01398C();
    sub_18F09300C();

    v28 = OUTLINED_FUNCTION_197();
    sub_18EF9A4AC(v28, v29);
    objc_autoreleasePoolPop(v25);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_251();
    sub_18EF9FE2C();
    sub_18F004F84(v34, v35, v36, v2);
    v31 = OUTLINED_FUNCTION_284();
    sub_18EF933AC(v31, &qword_1EACB72C8);
    sub_18F0932BC();
    OUTLINED_FUNCTION_36();
    (*(v32 + 8))(v6);
    OUTLINED_FUNCTION_413(v3, ObjectType);
    goto LABEL_6;
  }

  v27 = sub_18EFD2EC8();
  OUTLINED_FUNCTION_249(&type metadata for MetadataError, v27);
  *v20 = v13;
  v21 = 2;
LABEL_5:
  *(v20 + 8) = v21;
  swift_willThrow();
  sub_18EF933AC(v33, &qword_1EACB72C8);
  sub_18F0932BC();
  OUTLINED_FUNCTION_36();
  (*(v22 + 8))(v6);
  swift_getObjectType();
  v23 = OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_413(v23, v24);
LABEL_6:
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

id static LNPackageMetadata.fromJSON(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v1);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24[-v3];
  v5 = OUTLINED_FUNCTION_137();
  v7 = sub_18EFDA054(v5, v6);
  v10 = v0;
  if (v0)
  {
    goto LABEL_2;
  }

  v15 = v9;
  if (!v9)
  {
    v22 = sub_18EFD2EC8();
    v10 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v22);
    OUTLINED_FUNCTION_38(v10, v23);
LABEL_2:
    v11 = sub_18EFD2EC8();
    v12 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v11);
    *v13 = v10;
    return OUTLINED_FUNCTION_278(v12, v13);
  }

  v16 = v7;
  v17 = v8;
  sub_18EF825F4(0, &qword_1ED5FE798, off_1E72B00C0);
  sub_18F0932BC();
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v24[8] = v17 & 1;
  return sub_18F004F84(v16, v17 & 1, v15, v4);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNPackageMetadata.asJson(prettyPrinted:)(Swift::Bool prettyPrinted)
{
  v3 = sub_18F09305C();
  v4 = OUTLINED_FUNCTION_95(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_220();
  v5 = sub_18F0930BC();
  OUTLINED_FUNCTION_277(v5);
  v6 = sub_18F0930AC();
  if (prettyPrinted)
  {
    sub_18F09304C();
    sub_18F09307C();
  }

  v7 = sub_18F004F00();
  sub_18EFD3198(v6, v7, v8 & 1, v9);
  OUTLINED_FUNCTION_48();

  if (v1)
  {
    v10 = sub_18EFD2EC8();
    v11 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v10);
    OUTLINED_FUNCTION_43(v11, v12);
  }

  v13 = OUTLINED_FUNCTION_49();
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_18F005998(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F005A68(char a1)
{
  if (a1)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_18F005A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F005998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F005AB8(uint64_t a1)
{
  v2 = sub_18F0139E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F005AF4(uint64_t a1)
{
  v2 = sub_18F0139E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNIntentCollectionSize.CodableWrapper.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7690, &qword_18F09BE90);
  OUTLINED_FUNCTION_7();
  v6 = v5;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_190(v3, v3[3]);
  sub_18F0139E0();
  OUTLINED_FUNCTION_219();
  sub_18F0945BC();
  OUTLINED_FUNCTION_159();
  sub_18F0943AC();
  if (!v0)
  {
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_159();
    sub_18F0943AC();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNIntentCollectionSize.CodableWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_180();
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76A0, &qword_18F09BE98);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_127();
  sub_18F0139E0();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v22)
  {
    OUTLINED_FUNCTION_392();
    v28 = sub_18F0942AC();
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_392();
    v29 = sub_18F0942AC();
    v30 = OUTLINED_FUNCTION_118();
    v31(v30);
    *v26 = v28;
    v26[1] = v29;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

void LNIntentCollectionSize.wrapper.getter(void *a1@<X8>)
{
  v3 = [v1 min];
  v4 = [v3 integerValue];

  v5 = [v1 max];
  v6 = [v5 integerValue];

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_18F005E64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657361726870 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18F005ED8()
{
  sub_18F09452C();
  MEMORY[0x193AD9050](0);
  return sub_18F09456C();
}

uint64_t sub_18F005F30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8130, &qword_18F0A0FB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0185F4();
  sub_18F0945BC();
  _s14CodableWrapperVMa_0(0);
  sub_18EF8558C(&unk_1EACB6A38);
  sub_18F0943CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18F0060A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8120, &qword_18F0A0FA8);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = _s14CodableWrapperVMa_26(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0185F4();
  sub_18F09459C();
  if (!v2)
  {
    v12 = v15;
    sub_18EF8558C(&unk_1ED5FF4F8);
    v13 = v17;
    sub_18F0942CC();
    (*(v16 + 8))(v8, v6);
    sub_18EF88240(v13, v11);
    sub_18EF88240(v11, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_18F00631C(uint64_t a1)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](0);
  return sub_18F09456C();
}

uint64_t sub_18F006360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F005E64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18F00638C(uint64_t a1)
{
  v2 = sub_18F0185F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F0063C8(uint64_t a1)
{
  v2 = sub_18F0185F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_18F006434(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v13 = a3;
  v14 = sub_18EFA8ED8(v11, 0x74726F6853707041, 0xEC00000073747563, v8, a3);
  v15 = [v12 initWithPhrase_];

  sub_18EF933AC(a2, &qword_1EACB72C8);
  sub_18EF86A6C();
  return v15;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAppShortcutNegativePhrase.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v4 = OUTLINED_FUNCTION_146();
  v5 = _s14CodableWrapperVMa_26(v4);
  v6 = OUTLINED_FUNCTION_95(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_141();
  v7 = [v1 phrase];
  sub_18EFD9154(v3);

  OUTLINED_FUNCTION_109();
  sub_18EFDADC8();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_221();
  if (v2)
  {
    v8 = sub_18EFD2EC8();
    v9 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v8);
    OUTLINED_FUNCTION_43(v9, v10);
  }

  v11 = OUTLINED_FUNCTION_49();
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_18F00691C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000018F0AE290 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465746365707865 && a2 == 0xE800000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6554657361726870 && a2 == 0xEE006574616C706DLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_18F09444C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_18F006AC8(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x657361726870;
      break;
    case 3:
      result = 0x6465746365707865;
      break;
    case 4:
      result = 0x6554657361726870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F006B68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8118, &qword_18F0A0FA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018568();
  sub_18F0945BC();
  v8[15] = 0;
  sub_18F0943AC();
  if (!v1)
  {
    v8[14] = 1;
    sub_18F09437C();
    v8[13] = 2;
    sub_18F09437C();
    v8[12] = 3;
    sub_18F09433C();
    v8[11] = 4;
    sub_18F09433C();
  }

  return (*(v4 + 8))(v6, v3);
}

void *sub_18F006D44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB80F8, &qword_18F0A0F98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018568();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    v9 = sub_18F0942AC();
    LOBYTE(v33[0]) = 1;
    v10 = sub_18F09427C();
    v12 = v11;
    v30 = v10;
    LOBYTE(v33[0]) = 2;
    v28 = sub_18F09427C();
    v31 = v13;
    v29 = a2;
    LOBYTE(v33[0]) = 3;
    v14 = sub_18F09423C();
    v16 = v15;
    v27 = v14;
    v34 = 4;
    v17 = sub_18F09423C();
    v18 = *(v6 + 8);
    v19 = v17;
    v26 = v20;
    v18(v8, v5);
    v21 = v30;
    __src[0] = v9;
    __src[1] = v30;
    v22 = v28;
    __src[2] = v12;
    __src[3] = v28;
    __src[4] = v31;
    __src[5] = v27;
    __src[6] = v16;
    __src[7] = v19;
    v23 = v26;
    __src[8] = v26;
    sub_18F0185BC(__src, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v33[0] = v9;
    v33[1] = v21;
    v33[2] = v12;
    v33[3] = v22;
    v33[4] = v31;
    v33[5] = v27;
    v33[6] = v16;
    v33[7] = v19;
    v33[8] = v23;
    sub_18F013A34(v33);
    return memcpy(v29, __src, 0x48uLL);
  }
}

uint64_t sub_18F0070AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00691C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0070D4(uint64_t a1)
{
  v2 = sub_18F018568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F007110(uint64_t a1)
{
  v2 = sub_18F018568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_18F00714C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_18F006D44(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

uint64_t sub_18F0071EC@<X0>(void *a1@<X8>)
{
  v3 = [v1 kind];
  v4 = [v1 parentIdentifier];
  v5 = sub_18F093B8C();
  v7 = v6;

  v8 = [v1 phrase];
  v9 = sub_18F093B8C();
  v11 = v10;

  v12 = sub_18F013BD0(v1, &selRef_expected);
  v14 = v13;
  result = sub_18F013BD0(v1, &selRef_phraseTemplate);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v12;
  a1[6] = v14;
  a1[7] = result;
  a1[8] = v16;
  return result;
}

id sub_18F0072D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_18F093B5C();
  v4 = sub_18F093B5C();
  if (a1[6])
  {

    v5 = sub_18F093B5C();
  }

  else
  {
    v5 = 0;
  }

  if (a1[8])
  {

    v6 = sub_18F093B5C();
    sub_18F013A34(a1);
  }

  else
  {
    sub_18F013A34(a1);
    v6 = 0;
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKind:v2 parentIdentifier:v3 phrase:v4 expected:v5 phraseTemplate:v6];

  return v7;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNExamplePhraseDescription.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18F0071EC(v9);
  v2 = OUTLINED_FUNCTION_399();
  sub_18EFDAAB0(v2);
  OUTLINED_FUNCTION_48();
  sub_18F013A34(v9);
  if (v1)
  {
    v3 = sub_18EFD2EC8();
    v4 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v3);
    OUTLINED_FUNCTION_43(v4, v5);
  }

  v6 = OUTLINED_FUNCTION_49();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

void static LNExamplePhraseDescription.fromJSON(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_226();
  sub_18F093BCC();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19();
  sub_18F093BBC();
  OUTLINED_FUNCTION_124();
  sub_18F093B9C();
  v4 = OUTLINED_FUNCTION_324();
  v5(v4);
  if (v2 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v6 = sub_18F09302C();
  OUTLINED_FUNCTION_277(v6);
  v7 = OUTLINED_FUNCTION_137();
  sub_18EF844C4(v7, v8);
  sub_18F09301C();
  sub_18F013A64();
  OUTLINED_FUNCTION_166();
  sub_18F09300C();
  if (v1)
  {

    v9 = OUTLINED_FUNCTION_137();
    sub_18EF9A498(v9, v10);
    v11 = OUTLINED_FUNCTION_137();
    sub_18EF9A498(v11, v12);
LABEL_6:
    v17 = sub_18EFD2EC8();
    v18 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v17);
    OUTLINED_FUNCTION_38(v18, v19);
    goto LABEL_7;
  }

  v13 = OUTLINED_FUNCTION_137();
  sub_18EF9A498(v13, v14);
  v15 = OUTLINED_FUNCTION_137();
  sub_18EF9A498(v15, v16);
  if (!v21)
  {
    goto LABEL_6;
  }

  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  sub_18EF825F4(0, &qword_1EACB6A58, off_1E72B0050);
  if (!sub_18F0072D4(&v25))
  {
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_417();
}

uint64_t sub_18F007638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000018F0AE210 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x800000018F0AE230 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18F00775C(char a1)
{
  if (!a1)
  {
    return 0x6574656D61726170;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000018;
}

uint64_t sub_18F0077CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F007638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0077F4(uint64_t a1)
{
  v2 = sub_18F013AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F007830(uint64_t a1)
{
  v2 = sub_18F013AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNAssistantSuggestionPhraseParameterMetadata.CodableWrapper.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_180();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76B8, &qword_18F09BEA8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_136(v25);
  v27 = sub_18F013AB8();
  OUTLINED_FUNCTION_214(&_s14CodableWrapperV10CodingKeysON_1, v28, v27);
  sub_18F09437C();
  if (!v23)
  {
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_159();
    sub_18F09434C();
  }

  v29 = OUTLINED_FUNCTION_257();
  v30(v29);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNAssistantSuggestionPhraseParameterMetadata.CodableWrapper.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76C8, &qword_18F09BEB0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_127();
  sub_18F013AB8();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_299();
    v6 = sub_18F09427C();
    v15 = v7;
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_299();
    v8 = sub_18F09423C();
    v10 = v9;
    v14 = v8;
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_299();
    v11 = sub_18F09424C();
    v12 = OUTLINED_FUNCTION_118();
    v13(v12);
    *v4 = v6;
    *(v4 + 8) = v15;
    *(v4 + 16) = v14;
    *(v4 + 24) = v10;
    *(v4 + 32) = v11;

    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

void LNAssistantSuggestionPhraseParameterMetadata.wrapper.getter(uint64_t a1@<X8>)
{
  v4 = [v1 parameterName];
  sub_18F093B8C();
  OUTLINED_FUNCTION_327();

  v5 = sub_18F013BD0(v1, &selRef_parameterValueToSet);
  v7 = v6;
  v8 = [v1 hasToBeOnScreenParameter];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = 2;
  }

  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v10;
}

id LNAssistantSuggestionPhraseParameterMetadata.init(from:)(uint64_t *a1)
{
  v1 = a1[3];
  v2 = *(a1 + 32);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v4 = sub_18F093B5C();
  if (v1)
  {

    OUTLINED_FUNCTION_279();
    v5 = sub_18F093B5C();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v5 = 0;
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithParameterName:v4 parameterValueToSet:v5 hasToBeOnScreenParameter:v3];

  return v6;
}

uint64_t LNAssistantSuggestionPhraseMetadata.CodableWrapper.init(actionIdentifier:templateKey:parametersMetadata:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_18F007D98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AE250 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574616C706D6574 && a2 == 0xEB0000000079654BLL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x800000018F0AE270 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18F007EB8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6574616C706D6574;
  }

  return 0xD000000000000012;
}

uint64_t sub_18F007F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F007D98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F007F54(uint64_t a1)
{
  v2 = sub_18F013C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F007F90(uint64_t a1)
{
  v2 = sub_18F013C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNAssistantSuggestionPhraseMetadata.CodableWrapper.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76D0, &qword_18F09BEB8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_190(v2, v2[3]);
  sub_18F013C28();
  OUTLINED_FUNCTION_219();
  sub_18F0945BC();
  OUTLINED_FUNCTION_367();
  sub_18F09437C();
  if (!v0)
  {
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_159();
    sub_18F09437C();
    OUTLINED_FUNCTION_338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76E0, &qword_18F09BEC0);
    sub_18F013C7C();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
  }

  v4 = OUTLINED_FUNCTION_257();
  v5(v4);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNAssistantSuggestionPhraseMetadata.CodableWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_180();
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76F8, &qword_18F09BEC8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_127();
  sub_18F013C28();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    OUTLINED_FUNCTION_392();
    v28 = sub_18F09427C();
    v35 = v29;
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_392();
    v33 = sub_18F09427C();
    v34 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76E0, &qword_18F09BEC0);
    OUTLINED_FUNCTION_338();
    sub_18F013D54();
    OUTLINED_FUNCTION_124();
    sub_18F0942CC();
    v31 = OUTLINED_FUNCTION_186();
    v32(v31);
    *v26 = v28;
    v26[1] = v35;
    v26[2] = v33;
    v26[3] = v34;
    v26[4] = v36;

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

id LNAssistantSuggestionPhraseMetadata.init(from:)(void *a1)
{
  v2 = a1[4];
  v3 = sub_18F093B5C();
  OUTLINED_FUNCTION_130();
  v4 = sub_18F093B5C();
  v5 = *(v2 + 16);
  if (v5)
  {
    v24 = v1;
    v25 = v3;
    v31 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
    v6 = (v2 + 64);
    do
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v10 = *(v6 - 2);
      v9 = *(v6 - 1);
      v11 = *v6;
      v6 += 40;
      v26 = v7;
      v27 = v8;
      v28 = v10;
      v29 = v9;
      LOBYTE(v30) = v11;

      LNAssistantSuggestionPhraseParameterMetadata.init(from:)(&v26);
      v12 = sub_18F0940FC();
      OUTLINED_FUNCTION_155(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25, v26, v27, v28, v29, v30, v31);
      sub_18F09413C();
      sub_18F09410C();
      --v5;
    }

    while (v5);

    v3 = v25;
  }

  else
  {
  }

  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
  OUTLINED_FUNCTION_142();
  v21 = sub_18F093DBC();

  v22 = [v20 initWithActionIdentifier:v3 templateKey:v4 parametersMetadata:v21];

  return v22;
}

void sub_18F008584(uint64_t *a1@<X8>)
{
  v3 = [v1 actionIdentifier];
  v4 = sub_18F093B8C();
  v6 = v5;

  v7 = [v1 templateKey];
  v8 = sub_18F093B8C();
  v10 = v9;

  v11 = [v1 parametersMetadata];
  sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
  v12 = sub_18F093DCC();

  v13 = sub_18EFA0A7C(v12);
  if (!v13)
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_15:
    *a1 = v4;
    a1[1] = v6;
    a1[2] = v8;
    a1[3] = v10;
    a1[4] = v16;
    return;
  }

  v14 = v13;
  v40 = MEMORY[0x1E69E7CC0];
  sub_18F00F6D0(0, v13 & ~(v13 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v32 = v10;
    v33 = v8;
    v34 = v6;
    v35 = v4;
    v15 = 0;
    v16 = v40;
    v36 = a1;
    v37 = v12 & 0xC000000000000001;
    v38 = v14;
    v39 = v12;
    do
    {
      if (v37)
      {
        v17 = MEMORY[0x193AD8BA0](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 parameterName];
      v20 = sub_18F093B8C();
      v22 = v21;

      v23 = sub_18F013BD0(v18, &selRef_parameterValueToSet);
      v25 = v24;
      v26 = [v18 hasToBeOnScreenParameter];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 BOOLValue];
      }

      else
      {

        v28 = 2;
      }

      v30 = *(v40 + 16);
      v29 = *(v40 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_18F00F6D0(v29 > 1, v30 + 1, 1);
      }

      ++v15;
      *(v40 + 16) = v30 + 1;
      v31 = v40 + 40 * v30;
      *(v31 + 32) = v20;
      *(v31 + 40) = v22;
      *(v31 + 48) = v23;
      *(v31 + 56) = v25;
      *(v31 + 64) = v28;
      v12 = v39;
    }

    while (v38 != v15);

    v4 = v35;
    a1 = v36;
    v8 = v33;
    v6 = v34;
    v10 = v32;
    goto LABEL_15;
  }

  __break(1u);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantSuggestionPhraseMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18F008584(v9);
  v2 = OUTLINED_FUNCTION_399();
  sub_18EFDAC3C(v2);
  OUTLINED_FUNCTION_48();
  sub_18F013E2C(v9);
  if (v1)
  {
    v3 = sub_18EFD2EC8();
    v4 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v3);
    OUTLINED_FUNCTION_43(v4, v5);
  }

  v6 = OUTLINED_FUNCTION_49();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

void static LNAssistantSuggestionPhraseMetadata.fromJSON(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_226();
  sub_18F093BCC();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19();
  sub_18F093BBC();
  OUTLINED_FUNCTION_124();
  sub_18F093B9C();
  v4 = OUTLINED_FUNCTION_324();
  v5(v4);
  if (v2 >> 60 != 15)
  {
    v6 = sub_18F09302C();
    OUTLINED_FUNCTION_277(v6);
    v7 = OUTLINED_FUNCTION_137();
    sub_18EF844C4(v7, v8);
    sub_18F09301C();
    sub_18F013E5C();
    OUTLINED_FUNCTION_166();
    sub_18F09300C();
    if (v1)
    {

      v9 = OUTLINED_FUNCTION_137();
      sub_18EF9A498(v9, v10);
      v11 = OUTLINED_FUNCTION_137();
      sub_18EF9A498(v11, v12);
    }

    else
    {

      v16 = OUTLINED_FUNCTION_137();
      sub_18EF9A498(v16, v17);
      v18 = OUTLINED_FUNCTION_137();
      sub_18EF9A498(v18, v19);
      if (v20[1])
      {
        sub_18EF825F4(0, &qword_1EACB7718, off_1E72AFF38);
        LNAssistantSuggestionPhraseMetadata.init(from:)(v20);
        goto LABEL_5;
      }
    }
  }

  v13 = sub_18EFD2EC8();
  v14 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v13);
  OUTLINED_FUNCTION_38(v14, v15);
LABEL_5:
  OUTLINED_FUNCTION_417();
}

uint64_t LNAssistantSuggestionPhrase.CodableWrapper.phraseMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

__n128 LNAssistantSuggestionPhrase.CodableWrapper.phraseMetadata.setter(__int128 *a1)
{
  v6 = *a1;
  v3 = *(a1 + 2);
  v4 = v1 + *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0) + 20);

  *v4 = v6;
  *(v4 + 16) = v3;
  result = *(a1 + 24);
  *(v4 + 24) = result;
  return result;
}

void (*LNAssistantSuggestionPhrase.CodableWrapper.phraseMetadata.modify(uint64_t a1))()
{
  v1 = OUTLINED_FUNCTION_204();
  type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(v1);
  return nullsub_1;
}

uint64_t sub_18F008B64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D657361726870 && a2 == 0xEE00617461646174)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F008C30(char a1)
{
  if (a1)
  {
    return 0x654D657361726870;
  }

  else
  {
    return 0x657361726870;
  }
}

uint64_t sub_18F008C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F008B64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F008CA0(uint64_t a1)
{
  v2 = sub_18F013ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F008CDC(uint64_t a1)
{
  v2 = sub_18F013ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LNAssistantSuggestionPhrase.CodableWrapper.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7728, &qword_18F09BED0);
  OUTLINED_FUNCTION_7();
  v4 = v3;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_80();
  v6 = sub_18F013ED0();
  OUTLINED_FUNCTION_214(&_s14CodableWrapperV10CodingKeysON, v7, v6);
  _s14CodableWrapperVMa_0(0);
  OUTLINED_FUNCTION_5();
  sub_18EF8558C(v8);
  OUTLINED_FUNCTION_336();
  sub_18F0943CC();
  if (!v0)
  {
    type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0);
    sub_18F013F24();
    OUTLINED_FUNCTION_404();

    OUTLINED_FUNCTION_336();
    sub_18F0943CC();
  }

  return (*(v4 + 8))(v1, v2);
}

void LNAssistantSuggestionPhrase.CodableWrapper.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v15 = v4;
  _s14CodableWrapperVMa_0(0);
  OUTLINED_FUNCTION_36();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  v16 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7740, &qword_18F09BED8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_164();
  v9 = type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0);
  OUTLINED_FUNCTION_36();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_190(v3, v3[3]);
  sub_18F013ED0();
  sub_18F09459C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v17) = 0;
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v11);
    sub_18F0942CC();
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v16, v1);
    sub_18F013E5C();
    sub_18F0942CC();
    v12 = OUTLINED_FUNCTION_265();
    v13(v12);
    v14 = v1 + *(v9 + 20);
    *v14 = v17;
    *(v14 + 16) = v18;
    *(v14 + 24) = v19;
    OUTLINED_FUNCTION_191();
    sub_18EF86A14(v1, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_18EF86A6C();
  }

  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

double LNAssistantSuggestionPhrase.wrapper.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 phrase];
  sub_18EFD9154(a1);

  v5 = [v2 phraseMetadata];
  sub_18F008584(&v10);

  v9 = v10;
  v6 = v11;
  v7 = a1 + *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0) + 20);
  *v7 = v9;
  *(v7 + 16) = v6;
  result = *&v12;
  *(v7 + 24) = v12;
  return result;
}

id LNAssistantSuggestionPhrase.init(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v3);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_55();
  v5 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  OUTLINED_FUNCTION_8();
  sub_18EF86A14(a1, v1);
  sub_18EF9FE2C();
  v7 = OUTLINED_FUNCTION_184();
  v9 = sub_18EF9CEB8(v7, v8, 0);
  sub_18EF825F4(0, &qword_1EACB7718, off_1E72AFF38);
  v10 = OUTLINED_FUNCTION_138();
  v11 = (a1 + *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(v10) + 20));
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[3];
  v15 = v11[4];
  v21[0] = *v11;
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = v15;

  v16 = LNAssistantSuggestionPhraseMetadata.init(from:)(v21);
  OUTLINED_FUNCTION_124();
  v19 = [v17 v18];

  OUTLINED_FUNCTION_60();
  sub_18EF86A6C();
  return v19;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantSuggestionPhrase.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v3 = OUTLINED_FUNCTION_146();
  v4 = type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(v3);
  v5 = OUTLINED_FUNCTION_95(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_141();
  LNAssistantSuggestionPhrase.wrapper.getter(v2);
  OUTLINED_FUNCTION_109();
  sub_18EFDADC8();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_60();
  sub_18EF86A6C();
  if (v1)
  {
    v6 = sub_18EFD2EC8();
    v7 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v6);
    OUTLINED_FUNCTION_43(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_49();
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.parentIdentifier.setter()
{
  OUTLINED_FUNCTION_337();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.parameter.setter()
{
  OUTLINED_FUNCTION_337();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.phrases.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.phrase.setter()
{
  OUTLINED_FUNCTION_337();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.expected.setter()
{
  OUTLINED_FUNCTION_337();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.phraseTemplate.setter()
{
  OUTLINED_FUNCTION_337();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void LNExamplePhraseDescriptions.Element.init(parentIdentifier:parameter:phrases:expected:)()
{
  OUTLINED_FUNCTION_260();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_227();
  v10 = v9;
  v12 = v11;
  if (*(v13 + 16))
  {
    v14 = *(v8 + 32);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  *v12 = v10;
  v12[1] = v2;
  v12[2] = v1;
  v12[3] = v0;
  v12[4] = v8;
  v12[5] = v14;
  v12[6] = v15;
  v12[7] = v6;
  v12[9] = 0;
  v12[10] = 0;
  v12[8] = v4;
  OUTLINED_FUNCTION_259();
}

uint64_t LNExamplePhraseDescriptions.Element.init(parentIdentifier:phrase:expected:phraseTemplate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  a9[2] = 0;
  a9[3] = 0;
  *a9 = result;
  a9[1] = a2;
  a9[4] = 0;
  a9[5] = a3;
  a9[6] = a4;
  a9[7] = a5;
  a9[8] = a6;
  a9[9] = a7;
  a9[10] = a8;
  return result;
}

uint64_t sub_18F009A78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AE290 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6465746365707865 && a2 == 0xE800000000000000;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6554657361726870 && a2 == 0xEE006574616C706DLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F09444C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18F009C74(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x73657361726870;
      break;
    case 3:
      result = 0x657361726870;
      break;
    case 4:
      result = 0x6465746365707865;
      break;
    case 5:
      result = 0x6554657361726870;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_18F009D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F009A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F009D68(uint64_t a1)
{
  v2 = sub_18F013F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F009DA4(uint64_t a1)
{
  v2 = sub_18F013F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNExamplePhraseDescriptions.Element.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_180();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7758, &qword_18F09BEE8);
  OUTLINED_FUNCTION_7();
  v29 = v28;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_136(v26);
  sub_18F013F78();
  OUTLINED_FUNCTION_219();
  sub_18F0945BC();
  sub_18F09437C();
  if (!v23)
  {
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
    OUTLINED_FUNCTION_338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    OUTLINED_FUNCTION_90(&unk_1EACB7770);
    OUTLINED_FUNCTION_159();
    sub_18F09436C();
    OUTLINED_FUNCTION_320();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNExamplePhraseDescriptions.Element.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_176();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7778, &qword_18F09BEF8);
  OUTLINED_FUNCTION_7();
  v30 = v29;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_190(v24, v24[3]);
  sub_18F013F78();
  sub_18F09459C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    OUTLINED_FUNCTION_131();
    v32 = sub_18F09427C();
    v54 = v33;
    LOBYTE(v56[0]) = 1;
    OUTLINED_FUNCTION_131();
    sub_18F09423C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    LOBYTE(v55[0]) = 2;
    OUTLINED_FUNCTION_86(&unk_1ED5FDD20);
    sub_18F09426C();
    v53 = v32;
    v34 = v56[0];
    OUTLINED_FUNCTION_131();
    sub_18F09423C();
    v36 = v35;
    v52 = v27;
    LOBYTE(v56[0]) = 4;
    OUTLINED_FUNCTION_131();
    v37 = sub_18F09423C();
    v39 = v38;
    OUTLINED_FUNCTION_365(v37);
    v40 = sub_18F09423C();
    v41 = v25;
    v43 = v42;
    (*(v30 + 8))(v41, v28);
    v55[0] = v53;
    OUTLINED_FUNCTION_372();
    v55[1] = v54;
    v55[2] = v44;
    OUTLINED_FUNCTION_116();
    v55[3] = v45;
    v55[4] = v34;
    OUTLINED_FUNCTION_326();
    v55[5] = v46;
    v55[6] = v36;
    OUTLINED_FUNCTION_319();
    v55[7] = v47;
    v55[8] = v39;
    v55[9] = v40;
    v55[10] = v43;
    memcpy(v52, v55, 0x58uLL);
    sub_18F013FCC(v55, v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v56[0] = v53;
    v56[1] = v54;
    OUTLINED_FUNCTION_116();
    v56[2] = v49;
    v56[3] = v48;
    OUTLINED_FUNCTION_326();
    v56[4] = v34;
    v56[5] = v50;
    OUTLINED_FUNCTION_319();
    v56[6] = v36;
    v56[7] = v51;
    v56[8] = v39;
    v56[9] = v40;
    v56[10] = v43;
    sub_18F014004(v56);
  }

  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

LinkMetadata::LNExamplePhraseDescriptions __swiftcall LNExamplePhraseDescriptions.init(actions:entities:queries:negative:)(Swift::OpaquePointer actions, Swift::OpaquePointer entities, Swift::OpaquePointer queries, Swift::OpaquePointer negative)
{
  v4->_rawValue = actions._rawValue;
  v4[1]._rawValue = entities._rawValue;
  v4[2]._rawValue = queries._rawValue;
  v4[3]._rawValue = negative._rawValue;
  result.negative = negative;
  result.queries = queries;
  result.entities = entities;
  result.actions = actions;
  return result;
}

uint64_t sub_18F00A404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656972657571 && a2 == 0xE700000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_18F09444C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18F00A55C(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x7365697469746E65;
      break;
    case 2:
      result = 0x73656972657571;
      break;
    case 3:
      result = 0x657669746167656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F00A5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00A404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00A60C(uint64_t a1)
{
  v2 = sub_18F014034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00A648(uint64_t a1)
{
  v2 = sub_18F014034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNExamplePhraseDescriptions.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7788, &unk_18F09BF00);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_136(v2);
  v7 = sub_18F014034();

  OUTLINED_FUNCTION_219();
  sub_18F0945BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7798, &unk_18F0AB930);
  sub_18F014088();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_159();
  sub_18F0943CC();

  if (!v7)
  {
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
    OUTLINED_FUNCTION_294();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
  }

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNExamplePhraseDescriptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB77B0, &qword_18F09BF10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_136(v12);
  sub_18F014034();
  sub_18F09459C();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7798, &unk_18F0AB930);
    sub_18F014160();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_294();
    OUTLINED_FUNCTION_71();
    v16 = OUTLINED_FUNCTION_150();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;
    v14[3] = a10;

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18F00AAC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AE930 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6554657361726870 && a2 == 0xEF736574616C706DLL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEF7365756C615672;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x566465696C706D69 && a2 == 0xED00007365756C61;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_18F09444C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_18F00AC88(char a1)
{
  result = 0x6554657361726870;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x566465696C706D69;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_18F00AD54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E18, &qword_18F0A7CF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DC74();
  sub_18F0945BC();
  LOBYTE(v11) = 0;
  sub_18F09437C();
  if (!v2)
  {
    v11 = v3[2];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F0943CC();
    v11 = v3[3];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB77C0, &qword_18F09BF18);
    sub_18F01E63C();
    sub_18F0943CC();
    v11 = v3[4];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8B78, &qword_18F0A7B90);
    sub_18F01E6C8();
    sub_18F09436C();
    v11 = v3[5];
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18F00AFE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8B70, &qword_18F0A7B88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DC74();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v23) = 0;
  v9 = sub_18F09427C();
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
  v22 = 1;
  sub_18EF883DC();
  sub_18F0942CC();
  v20 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB77C0, &qword_18F09BF18);
  v22 = 2;
  sub_18F01DCC8();
  sub_18F0942CC();
  v19 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8B78, &qword_18F0A7B90);
  v22 = 3;
  sub_18F01DD54();
  sub_18F09426C();
  v18 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
  v22 = 4;
  sub_18EF9CC4C();
  sub_18F09426C();
  (*(v6 + 8))(v8, v5);
  v11 = v23;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v14 = v20;
  v13 = v21;
  *a2 = v9;
  a2[1] = v13;
  v15 = v18;
  v16 = v19;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v15;
  a2[5] = v11;
  return result;
}

uint64_t sub_18F00B3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00AAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00B3D4(uint64_t a1)
{
  v2 = sub_18F01DC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00B410(uint64_t a1)
{
  v2 = sub_18F01DC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18F00B44C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18F00AFE0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void *sub_18F00B4CC(uint64_t a1)
{
  v2 = _s14CodableWrapperVMa_0(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v45 = a1;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v41 = v10;
  v42 = v6;
  if (v9)
  {
    while (1)
    {
      v13 = v11;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = *(v45 + 56);
      v16 = (*(v45 + 48) + 16 * v14);
      v17 = v16[1];
      v47 = *v16;
      v18 = *(v15 + 8 * v14);
      v19 = v18 >> 62 ? sub_18F0941BC() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v48 = v18;
      v46 = v9;
      if (v19)
      {
        v44 = v12;
        v49 = MEMORY[0x1E69E7CC0];

        sub_18F00F0B8();
        if (v19 < 0)
        {
          goto LABEL_36;
        }

        v43 = v17;
        v20 = 0;
        v21 = v49;
        v22 = v18 & 0xC000000000000001;
        do
        {
          if (v22)
          {
            v23 = MEMORY[0x193AD8BA0](v20, v18);
          }

          else
          {
            v23 = *(v18 + 8 * v20 + 32);
          }

          v24 = v23;
          sub_18EFD9154(v5);

          v49 = v21;
          v25 = v21[2];
          if (v25 >= v21[3] >> 1)
          {
            sub_18F00F0B8();
            v21 = v49;
          }

          ++v20;
          v21[2] = v25 + 1;
          sub_18EF88240(v5, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25);
          v18 = v48;
        }

        while (v19 != v20);
        v17 = v43;
        v12 = v44;
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      swift_isUniquelyReferenced_nonNull_native();
      v49 = v12;
      v26 = v17;
      v27 = sub_18EFAF54C();
      if (__OFADD__(v12[2], (v28 & 1) == 0))
      {
        break;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8660, &qword_18F0A12A0);
      if (sub_18F09417C())
      {
        v31 = sub_18EFAF54C();
        v33 = v46;
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_38;
        }

        v29 = v31;
      }

      else
      {
        v33 = v46;
      }

      v9 = (v33 - 1) & v33;
      v12 = v49;
      if (v30)
      {
        v34 = v49;
        *(v49[7] + 8 * v29) = v21;

        v12 = v34;
      }

      else
      {
        v49[(v29 >> 6) + 8] |= 1 << v29;
        v35 = (v12[6] + 16 * v29);
        *v35 = v47;
        v35[1] = v26;
        *(v12[7] + 8 * v29) = v21;

        v36 = v12[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_37;
        }

        v12[2] = v38;
      }

      v11 = v13;
      v10 = v41;
      v6 = v42;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v12;
      }

      v9 = *(v6 + 8 * v13);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

void *sub_18F00B8D4(uint64_t a1)
{
  v2 = _s19BasicCodableWrapperOMa(0);
  v44 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v42 - v8);
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v49 = a1;

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC8];
  v42 = v7;
  v43 = v2;
  v45 = v14;
  v46 = v9;
  while (v13)
  {
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(v49 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v49 + 56) + 8 * v19);

    v50 = v23;
    sub_18EFD7818(v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
    {
      sub_18EF933AC(v9, &unk_1EACB72F8);
      v24 = sub_18EFAF54C();
      if (v25)
      {
        v26 = v24;
        swift_isUniquelyReferenced_nonNull_native();
        v51 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8658, &qword_18F0A1298);
        v7 = v42;
        v2 = v43;
        sub_18F09417C();
        v16 = v51;

        sub_18EF88240(v16[7] + *(v44 + 72) * v26, v7);
        sub_18F09419C();

        v27 = 0;
      }

      else
      {

        v27 = 1;
      }

      v14 = v45;
      __swift_storeEnumTagSinglePayload(v7, v27, 1, v2);
      sub_18EF933AC(v7, &unk_1EACB72F8);
      v9 = v46;
    }

    else
    {
      sub_18EF88240(v9, v47);
      swift_isUniquelyReferenced_nonNull_native();
      v51 = v16;
      v28 = v21;
      v48 = v22;
      v29 = sub_18EFAF54C();
      if (__OFADD__(v16[2], (v30 & 1) == 0))
      {
        goto LABEL_25;
      }

      v31 = v29;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8658, &qword_18F0A1298);
      if (sub_18F09417C())
      {
        v33 = sub_18EFAF54C();
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_27;
        }

        v31 = v33;
      }

      v16 = v51;
      if (v32)
      {
        sub_18F019D78(v47, v51[7] + *(v44 + 72) * v31);
      }

      else
      {
        v51[(v31 >> 6) + 8] |= 1 << v31;
        v35 = (v16[6] + 16 * v31);
        v36 = v47;
        v37 = v48;
        *v35 = v28;
        v35[1] = v37;
        sub_18EF88240(v36, v16[7] + *(v44 + 72) * v31);

        v38 = v16[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_26;
        }

        v16[2] = v40;
      }

      v7 = v42;
      v2 = v43;
      v14 = v45;
      v9 = v46;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v16;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18F00BDA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  result = sub_18EF9D97C(sub_18EFA3E10, v10, *a1, _s14CodableWrapperVMa_0, a4, a5, a6, a7, v10[0], v10[1], a2, a3);
  *a8 = result;
  return result;
}

id static LNAssistantIntentMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_148();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v3);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_241();
  sub_18EFDA1DC(v5);
  v6 = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  if (!v15)
  {
    v12 = sub_18EFD2EC8();
    v6 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v12);
    OUTLINED_FUNCTION_38(v6, v13);
LABEL_2:
    v7 = sub_18EFD2EC8();
    v8 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v7);
    *v9 = v6;
    return OUTLINED_FUNCTION_278(v8, v9);
  }

  v18[0] = v14;
  v18[1] = v15;
  v19 = v16;
  v20 = v17;
  sub_18EF825F4(0, qword_1ED5FE4D8, off_1E72AFF20);
  OUTLINED_FUNCTION_289();
  sub_18EF9FE2C();
  v11 = v0;
  return sub_18EFEF7F4(v18, v2, v0);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantIntentMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18EFEE868(&v9);
  v2 = OUTLINED_FUNCTION_399();
  sub_18EFDAF20(v2);
  OUTLINED_FUNCTION_48();
  if (v1)
  {
    v23 = v9;
    sub_18F014238(&v23);
    v22 = v10;
    sub_18EF933AC(&v22, &unk_1EACB75C0);
    v21 = v11;
    sub_18EF933AC(&v21, &qword_1EACB77C0);
    v20 = v12;
    sub_18EF933AC(&v20, &unk_1EACB77C8);
    v19 = v13;
    sub_18EF933AC(&v19, &unk_1EACB77D0);
    v3 = sub_18EFD2EC8();
    v4 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v3);
    OUTLINED_FUNCTION_43(v4, v5);
  }

  else
  {
    v18 = v9;
    sub_18F014238(&v18);
    v17 = v10;
    sub_18EF933AC(&v17, &unk_1EACB75C0);
    v16 = v11;
    sub_18EF933AC(&v16, &qword_1EACB77C0);
    v15 = v12;
    sub_18EF933AC(&v15, &unk_1EACB77C8);
    v14 = v13;
    sub_18EF933AC(&v14, &unk_1EACB77D0);
  }

  v6 = OUTLINED_FUNCTION_49();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_18F00C0D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AE930 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657361726870 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F00C1A4(char a1)
{
  if (a1)
  {
    return 0x73657361726870;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_18F00C1E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E30, &qword_18F0A7D00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DE10();
  sub_18F0945BC();
  v13 = 0;
  sub_18F09437C();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F0943CC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_18F00C384(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8B88, &qword_18F0A7B98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DE10();
  sub_18F09459C();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_18F09427C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v9[15] = 1;
    sub_18EF883DC();
    sub_18F0942CC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_18F00C590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00C0D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00C5B8(uint64_t a1)
{
  v2 = sub_18F01DE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00C5F4(uint64_t a1)
{
  v2 = sub_18F01DE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id static LNAssistantIntentNegativePhrases.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_148();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v3);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_55();
  v5 = OUTLINED_FUNCTION_241();
  sub_18EFDA384(v5, v6);
  v9 = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  if (!v7)
  {
    v18 = sub_18EFD2EC8();
    v9 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v18);
    OUTLINED_FUNCTION_38(v9, v19);
LABEL_2:
    v10 = sub_18EFD2EC8();
    v11 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v10);
    *v12 = v9;
    return OUTLINED_FUNCTION_278(v11, v12);
  }

  v14 = v8;
  sub_18EF825F4(0, qword_1ED5FE438, off_1E72AFF28);
  OUTLINED_FUNCTION_289();
  sub_18EF9FE2C();
  v15 = v0;
  v16 = OUTLINED_FUNCTION_252();
  return sub_18EFEFBA4(v16, v17, v14, v2, v0);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantIntentNegativePhrases.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18EFEEBCC();
  sub_18EFDB0AC(v2, v3, v4, v5);
  OUTLINED_FUNCTION_48();

  if (v1)
  {
    v6 = sub_18EFD2EC8();
    v7 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v6);
    OUTLINED_FUNCTION_43(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_49();
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_18F00C850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766F637369447369 && a2 == 0xEE00656C62617265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61747369737361 && a2 == 0xED0000796C6E4F74)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F00C928(char a1)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](a1 & 1);
  return sub_18F09456C();
}

uint64_t sub_18F00C970(void *a1, unsigned int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7EA8, &qword_18F0A0DD8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9F694();
  sub_18F0945BC();
  v9[15] = 0;
  sub_18F09438C();
  if (!v2)
  {
    v9[14] = 1;
    sub_18F09438C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18F00CAD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AC5B0 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6554657361726870 && a2 == 0xEF736574616C706DLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18F00CBF4(unsigned __int8 a1)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](a1);
  return sub_18F09456C();
}

uint64_t sub_18F00CC3C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 1684957547;
  }

  return 0x6554657361726870;
}

uint64_t sub_18F00CC9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E38, &qword_18F0A7D08);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DE64();
  sub_18F0945BC();
  v19 = 0;
  sub_18F09437C();
  if (!v5)
  {
    v11 = v14;
    v18 = 1;
    sub_18F0943AC();
    v16 = v11;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F0943CC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_18F00CE64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8B98, &qword_18F0A7BA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DE64();
  sub_18F09459C();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_18F09427C();
    v9[30] = 1;
    sub_18F0942AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v9[29] = 2;
    sub_18EF883DC();
    sub_18F0942CC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_18F00D09C(uint64_t a1)
{
  v2 = *v1;
  sub_18F09452C();
  MEMORY[0x193AD9050](v2);
  return sub_18F09456C();
}

uint64_t sub_18F00D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00C850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00D108(uint64_t a1)
{
  v2 = sub_18EF9F694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00D144(uint64_t a1)
{
  v2 = sub_18EF9F694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F00D180(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_18F00C970(a1, v2 | *v1);
}

uint64_t sub_18F00D1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00CAD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00D1E0(uint64_t a1)
{
  v2 = sub_18F01DE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00D21C(uint64_t a1)
{
  v2 = sub_18F01DE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F00D258@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F00CE64(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void static LNAssistantAppEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_148();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v3);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_55();
  v5 = OUTLINED_FUNCTION_241();
  sub_18EFDA50C(v5, v6);
  v10 = v1;
  if (v1)
  {
    goto LABEL_5;
  }

  if (!v7 || (v11 = v8, v12 = v9, sub_18EF825F4(0, &unk_1ED5FE410, off_1E72AFF08), OUTLINED_FUNCTION_289(), sub_18EF9FE2C(), v13 = v0, v14 = OUTLINED_FUNCTION_252(), !sub_18EFEFE08(v14, v15, v11, v12, v2, v0)))
  {
    v16 = sub_18EFD2EC8();
    v10 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v16);
    OUTLINED_FUNCTION_38(v10, v17);
LABEL_5:
    v18 = sub_18EFD2EC8();
    v19 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v18);
    *v20 = v10;
    OUTLINED_FUNCTION_278(v19, v20);
  }

  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantAppEntityMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18EFEEE1C();
  sub_18EFDB23C(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_48();

  if (v1)
  {
    v7 = sub_18EFD2EC8();
    v8 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v7);
    OUTLINED_FUNCTION_43(v8, v9);
  }

  v10 = OUTLINED_FUNCTION_49();
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_18F00D47C()
{
  sub_18F09302C();
  swift_allocObject();
  sub_18F09301C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75A8, &qword_18F09BE28);
  sub_18EF98C44();
  sub_18F09300C();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_18F00D52C()
{
  sub_18F09302C();
  swift_allocObject();
  sub_18F09301C();
  sub_18F01398C();
  sub_18F09300C();

  if (!v0)
  {
    return v2;
  }

  return result;
}

__n128 sub_18F00D5D0@<Q0>(uint64_t a1@<X8>)
{
  sub_18F09302C();
  swift_allocObject();
  sub_18F09301C();
  sub_18EFC5418();
  sub_18F09300C();

  if (!v1)
  {
    result = v7;
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_18F00D694()
{
  sub_18F09302C();
  swift_allocObject();
  sub_18F09301C();
  sub_18EFC546C();
  sub_18F09300C();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_18F00D734()
{
  sub_18F09302C();
  swift_allocObject();
  sub_18F09301C();
  sub_18EFC54D0();
  sub_18F09300C();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_18F00D7D4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_344(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_18F012594(result, 1, sub_18F00EAD8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18F00D8B4()
{
  OUTLINED_FUNCTION_376();
  v4 = sub_18EFA0A7C(v3);
  v5 = sub_18EFA0A7C(*v0);
  v6 = __OFADD__(v5, v4);
  result = v5 + v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_18F01260C(result, 1);
  v8 = *v0;
  v9 = *v0 & 0xFFFFFFFFFFFFFF8;
  v1(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v0 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_18F00D964(uint64_t a1)
{
  result = OUTLINED_FUNCTION_344(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_18F012594(result, 1, sub_18F00ECBC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_18F0932BC();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_18F00DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_18F093B5C();

  v10 = sub_18F093B5C();

  if (a5)
  {
    type metadata accessor for LNPlatformName(0, v11, v12, v13);
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EF8558C(&qword_1ED5FFA38);
    v14 = sub_18F093A3C();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_18F093B5C();

  v16 = [v7 initWithIdentifier:v9 mangledTypeName:v10 availabilityAnnotations:v14 contentTypeIdentifier:v15];

  return v16;
}

id sub_18F00DBCC(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_18EF825F4(0, &unk_1ED5FCE08, off_1E72B0100);
  v9 = sub_18F093DBC();

  if (a5)
  {
    v10 = sub_18F093B5C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithTransient:a1 & 1 identifier:a2 properties:v9 managedAccountIdentifier:v10];

  return v11;
}

id sub_18F00DC9C(uint64_t a1, uint64_t a2)
{
  sub_18EF825F4(0, &qword_1ED5FE1A8, off_1E72AFFC8);
  v3 = sub_18F093DBC();

  v4 = sub_18F093DBC();

  v5 = [v2 initWithExportableTypes:v3 importableTypes:v4];

  return v5;
}

id sub_18F00DD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_18F093B5C();

  v7 = sub_18F0932BC();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v7) != 1)
  {
    v8 = sub_18F09324C();
    (*(*(v7 - 8) + 8))(a3, v7);
  }

  v9 = [v4 initWithName:v6 bundleURL:v8];

  return v9;
}

id sub_18F00DE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = sub_18F093B5C();

  v13 = sub_18F093B5C();

  if (!a7)
  {
    v14 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_18F093B5C();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_18F093B5C();

LABEL_6:
  v16 = [v9 initWithKind:a1 parentIdentifier:v12 phrase:v13 expected:v14 phraseTemplate:v15];

  return v16;
}

uint64_t sub_18F00DF50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F00DF78();
  *a1 = result;
  return result;
}

uint64_t sub_18F00DF80(uint64_t a1)
{
  v2 = sub_18F093B8C();
  MEMORY[0x193AD8810](v2);
  OUTLINED_FUNCTION_216();

  return v1;
}

uint64_t sub_18F00DFB4(uint64_t a1, uint64_t a2)
{
  sub_18F093B8C();
  sub_18F093C1C();
}

uint64_t sub_18F00E008()
{
  OUTLINED_FUNCTION_115();

  result = sub_18F093B6C();
  *v0 = 0;
  return result;
}

uint64_t sub_18F00E078(uint64_t a1)
{
  v2 = sub_18EF8558C(&qword_1ED5FFA38);
  v3 = sub_18EF8558C(&unk_1EACB8580);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E134(uint64_t a1)
{
  v2 = sub_18EF8558C(&unk_1ED5FD778);
  v3 = sub_18EF8558C(&unk_1EACB8110);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E1F0(uint64_t a1)
{
  v2 = sub_18EF8558C(&qword_1ED5FF088);
  v3 = sub_18EF8558C(&unk_1EACB8100);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E2AC(uint64_t a1)
{
  v2 = sub_18EF8558C(&qword_1ED5FFA10);
  v3 = sub_18EF8558C(&unk_1EACB83F0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E368(uint64_t a1)
{
  v2 = sub_18EF8558C(&qword_1ED5FE770);
  v3 = sub_18EF8558C(&unk_1EACB8588);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E424(uint64_t a1)
{
  v2 = sub_18EF8558C(&unk_1EACB8310);
  v3 = sub_18EF8558C(&unk_1EACB8318);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E4E0(uint64_t a1)
{
  v2 = sub_18EF8558C(&unk_1ED5FF0F8);
  v3 = sub_18EF8558C(&unk_1EACB8320);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_18F00E59C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_18F00EF94(v9, a2, &unk_1EACB8890, &unk_18F0A1450, _s19BasicCodableWrapperOMa);
  v11 = *(_s19BasicCodableWrapperOMa(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_18EFBB490(a4 + v12, v9, v10 + v12, _s19BasicCodableWrapperOMa);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F00E6C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8810, &qword_18F0A13E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F00E7C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8830, &qword_18F0A1400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F00E8D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8840, &qword_18F0A1410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_18F00E9D0()
{
  OUTLINED_FUNCTION_391();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_238();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  OUTLINED_FUNCTION_236();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8640, &qword_18F0A1280);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_315(v7);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v8 / 40);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 40 * v2 <= (v3 + 32))
    {
      v10 = OUTLINED_FUNCTION_263();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8648, &qword_18F0A1288);
    OUTLINED_FUNCTION_263();
    swift_arrayInitWithCopy();
  }
}

char *sub_18F00EAD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8638, &qword_18F0A1278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_18F00EBEC()
{
  OUTLINED_FUNCTION_391();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_238();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  OUTLINED_FUNCTION_236();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8610, &qword_18F0A1250);
    v7 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_315(v7);
    OUTLINED_FUNCTION_302(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = (v3 + 32);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_18F00ECBC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    a2 = v8 >> 1;
    if ((v8 >> 1) < v6)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 <= v6)
      {
        a2 = v6;
      }

      else
      {
        a2 = v9;
      }
    }
  }

  v10 = *(a4 + 16);
  sub_18F00EF94(v10, a2, &qword_1EACB85C8, &qword_18F0A1210, MEMORY[0x1E6968FB0]);
  OUTLINED_FUNCTION_295();
  sub_18F0932BC();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_149();
  if (v7)
  {
    sub_18EFBB490(a4 + v11, v10, v4 + v11, MEMORY[0x1E6968FB0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v4;
}

void sub_18F00EDD4()
{
  OUTLINED_FUNCTION_391();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_238();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  OUTLINED_FUNCTION_236();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
    v7 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_315(v7);
    OUTLINED_FUNCTION_302(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = (v3 + 32);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F00EEA4()
{
  OUTLINED_FUNCTION_391();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_238();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  OUTLINED_FUNCTION_236();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C0, &qword_18F0A1208);
    v7 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_315(v7);
    OUTLINED_FUNCTION_302(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 8 * v2 <= (v3 + 32))
    {
      v10 = OUTLINED_FUNCTION_263();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB85B0, &qword_18F0A1200);
    OUTLINED_FUNCTION_263();
    swift_arrayInitWithCopy();
  }
}

void *sub_18F00EF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = OUTLINED_FUNCTION_269(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = OUTLINED_FUNCTION_295();
  v11 = a5(v10);
  OUTLINED_FUNCTION_45(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (v13)
  {
    if ((result - v15) != 0x8000000000000000 || v13 != -1)
    {
      v16[2] = a1;
      v16[3] = 2 * ((result - v15) / v13);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_18F00F1A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18F00F7C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F1C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18F00F8C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F1E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18F00F9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F398(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18F00FBD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18F00F3B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18F00FCEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F6B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18F00FEEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F708(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18F0100E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F728(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18F010200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F7A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18F0102FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F7C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8708, &qword_18F0A1318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F00F8C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8700, &qword_18F0A1310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F00F9E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB86F8, &qword_18F0A1308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_18F00FAF8()
{
  OUTLINED_FUNCTION_300();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_238();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = *(v0 + 2);
  if (v7 <= v10)
  {
    v11 = *(v0 + 2);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = OUTLINED_FUNCTION_253(v2, v3, v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = OUTLINED_FUNCTION_355();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v10;
    *(v14 + 3) = 2 * ((v15 - 32) / 32);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[32 * v10] <= v16)
    {
      memmove(v16, v17, 32 * v10);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_124();
    swift_arrayInitWithCopy();
  }
}

char *sub_18F00FBD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8828, &qword_18F0A13F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18F00FCEC(void *result, uint64_t a2, uint64_t a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8858, &qword_18F0A1420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for LNSystemProtocolIdentifier(0, a2, a3, a4);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_18F00FE10()
{
  OUTLINED_FUNCTION_300();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_238();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = *(v0 + 2);
  if (v7 <= v10)
  {
    v11 = *(v0 + 2);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = OUTLINED_FUNCTION_253(v2, v3, v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = OUTLINED_FUNCTION_355();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v10;
    *(v14 + 3) = 2 * ((v15 - 32) / 8);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[8 * v10] <= v16)
    {
      memmove(v16, v17, 8 * v10);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_124();
    swift_arrayInitWithCopy();
  }
}

char *sub_18F00FEEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB86D0, &qword_18F0A12F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_18F010004()
{
  OUTLINED_FUNCTION_300();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_238();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = *(v0 + 16);
  if (v7 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = OUTLINED_FUNCTION_253(v2, v3, v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_315(v14);
    v11[2] = v10;
    v11[3] = 2 * (v15 / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = (v11 + 4);
  v17 = (v0 + 32);
  if (v1)
  {
    if (v11 != v0 || &v17[40 * v10] <= v16)
    {
      memmove(v16, v17, 40 * v10);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_18F0100E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8600, &qword_18F0A1240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[88 * v8] <= v12)
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F010200(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8608, &qword_18F0A1248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_18F0102FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85E8, &qword_18F0A1228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_18F010414(uint64_t a1)
{
  sub_18F09416C();
  v2 = sub_18F093A8C();

  return sub_18F0105B4(a1, v2);
}

unint64_t sub_18F010478(void *a1)
{
  sub_18F09452C();
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  sub_18F093C1C();
  MEMORY[0x193AD9070](v2);
  MEMORY[0x193AD9070](v3);
  MEMORY[0x193AD9070](v4);
  sub_18F093C1C();
  sub_18F09456C();
  v5 = OUTLINED_FUNCTION_271();

  return sub_18F010738(v5, v6);
}

unint64_t sub_18F010530()
{
  sub_18F0932BC();
  OUTLINED_FUNCTION_203();
  sub_18EF8558C(v0);
  sub_18F093A8C();
  v1 = OUTLINED_FUNCTION_142();

  return sub_18F010874(v1, v2);
}

unint64_t sub_18F0105B4(uint64_t a1, uint64_t a2)
{
  v12[1] = a1;
  v4 = sub_18F09416C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2;
  v14 = v2 + 64;
  v8 = ~(-1 << *(v2 + 32));
  for (i = a2 & v8; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    (*(v5 + 16))(v7, *(v13 + 48) + *(v5 + 72) * i, v4);
    v10 = sub_18F093AAC();
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_18F010738(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v22 = a1[3];
    v23 = a1[2];
    v6 = *a1;
    v5 = a1[1];
    v20 = a1[5];
    v21 = a1[4];
    v7 = a1[6];
    v8 = *(v2 + 48);
    do
    {
      v9 = (v8 + 56 * v4);
      v10 = v9[2];
      v11 = v9[3];
      v12 = v9[4];
      v13 = v9[5];
      v14 = v9[6];
      v15 = *v9 == v6 && v9[1] == v5;
      if (v15 || (sub_18F09444C() & 1) != 0)
      {
        v16 = v10 == v23 && v11 == v22;
        if (v16 && v12 == v21)
        {
          v18 = v13 == v20 && v14 == v7;
          if (v18 || (sub_18F09444C() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v24;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_18F010874(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_18F0932BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_18EF8558C(&unk_1ED5FD808);
    v9 = sub_18F093AAC();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

void *sub_18F010A30(uint64_t a1)
{
  v2 = _s14CodableWrapperVMa_32(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8718, &qword_18F0A1328);
  result = sub_18F0941CC();
  v5 = result;
  v6 = 0;
  v33 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v29 = result + 8;
  v30 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v33 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(v33 + 56) + 8 * v17);

      v22 = v21;
      v23 = v31;
      sub_18EFED20C(v31);

      v5 = v30;
      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v24 = (v5[6] + 16 * v17);
      *v24 = v19;
      v24[1] = v20;
      result = sub_18EF88240(v23, v5[7] + *(v32 + 72) * v17);
      v25 = v5[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v5[2] = v27;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F010C50(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v44 = a3;
  v7 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8720, &qword_18F0A1330);
  result = sub_18F0941CC();
  v10 = result;
  v11 = 0;
  v40 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v35 = a4 & 1;
  v36 = a2 & 1;
  v34 = result + 64;
  v37 = result;
  if ((v16 & v12) != 0)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v22 = v19 | (v11 << 6);
      v23 = (*(v40 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v40 + 56) + 8 * v22);
      v41 = v36;
      v42 = v44;
      v43 = v35;

      v27 = v26;
      v28 = v38;
      LNEntityMetadata.wrapper(encodingContext:)();

      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v10 = v37;
      v29 = (*(v37 + 48) + 16 * v22);
      *v29 = v24;
      v29[1] = v25;
      result = sub_18EF88240(v28, *(v10 + 56) + *(v39 + 72) * v22);
      v30 = *(v10 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v10 + 16) = v32;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {

        return v10;
      }

      v21 = *(v13 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F010EB4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v44 = a3;
  v7 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8730, &qword_18F0A1340);
  result = sub_18F0941CC();
  v10 = result;
  v11 = 0;
  v40 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v35 = a4 & 1;
  v36 = a2 & 1;
  v34 = result + 64;
  v37 = result;
  if ((v16 & v12) != 0)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v22 = v19 | (v11 << 6);
      v23 = (*(v40 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v40 + 56) + 8 * v22);
      v41 = v36;
      v42 = v44;
      v43 = v35;

      v27 = v26;
      v28 = v38;
      LNActionMetadata.wrapper(encodingContext:)();

      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v10 = v37;
      v29 = (*(v37 + 48) + 16 * v22);
      *v29 = v24;
      v29[1] = v25;
      result = sub_18EF88240(v28, *(v10 + 56) + *(v39 + 72) * v22);
      v30 = *(v10 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v10 + 16) = v32;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {

        return v10;
      }

      v21 = *(v13 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_18F011118(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8808, &qword_18F0A13D8);
  result = sub_18F0941CC();
  v7 = result;
  v8 = 0;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v22 = result + 8;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v8 << 6);
      v17 = *(*(a1 + 48) + 8 * v16);
      sub_18EFB6E2C(*(a1 + 56) + 32 * v16, v23);
      v18 = v17;
      sub_18EFF3640(v23, &v24);
      if (v4)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
      *(v22 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(v7[6] + 8 * v16) = v18;
      *(v7[7] + 8 * v16) = v24;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_17;
      }

      v7[2] = v21;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
LABEL_15:

    return v7;
  }

  else
  {
LABEL_5:
    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_15;
      }

      v15 = *(a1 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_18F0112DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_253(a1, a2, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_284();
  v8 = sub_18F0941CC();
  v9 = 0;
  v59 = a1;
  v10 = a1 + 64;
  OUTLINED_FUNCTION_65();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v57 = v16;
  v58 = v16 + 8;
  if ((v12 & v11) != 0)
  {
    do
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_8:
      v21 = v17 | (v9 << 6);
      v22 = *(*(v59 + 48) + 8 * v21);
      objc_opt_self();
      OUTLINED_FUNCTION_201();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        swift_unknownObjectRetain();
        v25 = v22;
        v26 = v22;
        v27 = [v24 persistState];
        OUTLINED_FUNCTION_105();
        LOBYTE(v24) = sub_18F034EE8();
        swift_unknownObjectRelease();
        v28 = v24 & v27 & 1;
        if (v24)
        {
          v29 = 0;
        }

        else
        {
          v29 = 8;
        }

        goto LABEL_22;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_201();
      if (swift_dynamicCastObjCClass())
      {
        OUTLINED_FUNCTION_98();
        swift_unknownObjectRetain_n();
        v26 = v22;
        v30 = v22;
        v31 = [v8 searchScopes];
        v28 = sub_18F093DCC();
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_105();
        LOBYTE(v31) = sub_18F034F08();
        swift_unknownObjectRelease();
        if ((v31 & 1) == 0)
        {
          goto LABEL_20;
        }

        v29 = 1;
      }

      else
      {
        objc_opt_self();
        OUTLINED_FUNCTION_201();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          OUTLINED_FUNCTION_201();
          if (swift_dynamicCastObjCClass())
          {
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRetain_n();
            v34 = v22;
            v26 = v22;
            v35 = [v8 entityIdentifier];
            sub_18F093B8C();

            v36 = [v8 entityProperty];
            sub_18F093B8C();

            swift_unknownObjectRelease_n();

LABEL_20:

LABEL_21:
            v28 = 0;
            v29 = 8;
            goto LABEL_22;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_201();
          if (swift_dynamicCastObjCClass())
          {
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRetain_n();
            v41 = v22;
            v42 = [v8 entityIdentifier];
            goto LABEL_31;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_201();
          if (swift_dynamicCastObjCClass())
          {
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRetain_n();
            v43 = v22;
            v42 = [v8 actionIdentifier];
            goto LABEL_31;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_201();
          if (swift_dynamicCastObjCClass())
          {
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRetain_n();
            v44 = v22;
            v42 = [v8 supportedContentTypes];
LABEL_31:
            v45 = v42;
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRelease_n();
          }

          else
          {
            objc_opt_self();
            OUTLINED_FUNCTION_201();
            v46 = swift_dynamicCastObjCClass();
            if (v46)
            {
              v47 = v46;
              v48 = v22;
              [v47 structuredDataRepresentations];
            }

            else
            {
              objc_opt_self();
              OUTLINED_FUNCTION_201();
              if (!swift_dynamicCastObjCClass())
              {
                goto LABEL_40;
              }

              v49 = v22;
            }
          }

          v26 = v22;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_98();
        swift_unknownObjectRetain_n();
        v26 = v22;
        v32 = v22;
        v33 = [v8 supportedCategories];
        v28 = sub_18F093DCC();
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_105();
        LOBYTE(v33) = sub_18F034F08();
        swift_unknownObjectRelease();
        if ((v33 & 1) == 0)
        {
          goto LABEL_20;
        }

        v29 = 2;
      }

LABEL_22:
      v8 = v57;
      *(v58 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(v57[6] + 8 * v21) = v26;
      v37 = v57[7] + 40 * v21;
      *v37 = v28;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = v29;
      v38 = v57[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_39;
      }

      v57[2] = v40;
    }

    while (v13);
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v15)
    {

      return v8;
    }

    ++v18;
    if (*(v10 + 8 * v9))
    {
      OUTLINED_FUNCTION_229();
      v13 = v20 & v19;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  OUTLINED_FUNCTION_401();
  OUTLINED_FUNCTION_248();
  result = OUTLINED_FUNCTION_409(v51, v52, v53, v54, v55, v56);
  __break(1u);
  return result;
}

uint64_t sub_18F01178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_284();
  v9 = sub_18F0941CC();
  v10 = 0;
  v67 = a1;
  v68 = v9;
  v11 = a1 + 64;
  OUTLINED_FUNCTION_65();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  if ((v13 & v12) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v14));
      v18 = (v14 - 1) & v14;
LABEL_8:
      v22 = v17 | (v10 << 6);
      v23 = *(*(v67 + 48) + 8 * v22);
      objc_opt_self();
      OUTLINED_FUNCTION_202();
      v24 = swift_dynamicCastObjCClass();
      v69 = v18;
      if (v24)
      {
        v6 = v24;
        v25 = v23;
        [v6 persistState];
        OUTLINED_FUNCTION_68();
        v26 = 0;
      }

      else
      {
        objc_opt_self();
        OUTLINED_FUNCTION_202();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = v27;
          OUTLINED_FUNCTION_185();
          swift_unknownObjectRetain_n();
          v29 = v23;
          v6 = [v28 searchScopes];
          sub_18F093DCC();
          OUTLINED_FUNCTION_185();
          swift_unknownObjectRelease_n();

          OUTLINED_FUNCTION_68();
          v26 = 1;
        }

        else
        {
          objc_opt_self();
          OUTLINED_FUNCTION_202();
          v30 = swift_dynamicCastObjCClass();
          if (v30)
          {
            v31 = v30;
            v26 = 2;
            OUTLINED_FUNCTION_185();
            swift_unknownObjectRetain_n();
            v32 = v23;
            v6 = [v31 supportedCategories];
            v7 = sub_18F093DCC();
            OUTLINED_FUNCTION_185();
            swift_unknownObjectRelease_n();

            OUTLINED_FUNCTION_68();
          }

          else
          {
            objc_opt_self();
            OUTLINED_FUNCTION_202();
            v33 = swift_dynamicCastObjCClass();
            if (v33)
            {
              v34 = v33;
              OUTLINED_FUNCTION_185();
              swift_unknownObjectRetain_n();
              v35 = v23;
              v36 = [v34 entityIdentifier];
              sub_18F093B8C();
              v23 = v37;

              v38 = [v34 entityProperty];
              v7 = sub_18F093B8C();
              v6 = v39;
              OUTLINED_FUNCTION_185();
              swift_unknownObjectRelease_n();

              v26 = 3;
            }

            else
            {
              objc_opt_self();
              OUTLINED_FUNCTION_202();
              v40 = swift_dynamicCastObjCClass();
              if (v40)
              {
                v41 = v40;
                OUTLINED_FUNCTION_185();
                swift_unknownObjectRetain_n();
                v42 = v23;
                v6 = [v41 entityIdentifier];
                sub_18F093B8C();
                v7 = v23;
                v23 = v43;
                OUTLINED_FUNCTION_185();
                swift_unknownObjectRelease_n();

                OUTLINED_FUNCTION_395();
                v26 = 4;
              }

              else
              {
                objc_opt_self();
                OUTLINED_FUNCTION_202();
                v44 = swift_dynamicCastObjCClass();
                if (v44)
                {
                  v45 = v44;
                  OUTLINED_FUNCTION_185();
                  swift_unknownObjectRetain_n();
                  v46 = v23;
                  v6 = [v45 actionIdentifier];
                  sub_18F093B8C();
                  v7 = v23;
                  v23 = v47;
                  OUTLINED_FUNCTION_185();
                  swift_unknownObjectRelease_n();

                  OUTLINED_FUNCTION_395();
                  v26 = 5;
                }

                else
                {
                  objc_opt_self();
                  OUTLINED_FUNCTION_202();
                  v48 = swift_dynamicCastObjCClass();
                  if (v48)
                  {
                    v49 = v48;
                    OUTLINED_FUNCTION_185();
                    swift_unknownObjectRetain_n();
                    v50 = v23;
                    v6 = [v49 supportedContentTypes];
                    sub_18F0939FC();
                    sub_18F093DCC();
                    OUTLINED_FUNCTION_185();
                    swift_unknownObjectRelease_n();

                    OUTLINED_FUNCTION_68();
                    v26 = 6;
                  }

                  else
                  {
                    objc_opt_self();
                    OUTLINED_FUNCTION_202();
                    v51 = swift_dynamicCastObjCClass();
                    if (v51)
                    {
                      v6 = v51;
                      v52 = v23;
                      [v6 structuredDataRepresentations];
                      OUTLINED_FUNCTION_68();
                      v26 = 7;
                    }

                    else
                    {
                      objc_opt_self();
                      OUTLINED_FUNCTION_202();
                      if (!swift_dynamicCastObjCClass())
                      {
                        goto LABEL_32;
                      }

                      v53 = v23;
                      OUTLINED_FUNCTION_68();
                      v26 = 8;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 = v68;
      OUTLINED_FUNCTION_297((v22 >> 3) & 0x1FFFFFFFFFFFFFF8);
      *(v68[6] + 8 * v22) = v54;
      v55 = v68[7] + 40 * v22;
      *v55 = v56;
      *(v55 + 8) = v23;
      *(v55 + 16) = v7;
      *(v55 + 24) = v6;
      *(v55 + 32) = v26;
      v57 = v68[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        break;
      }

      v68[2] = v59;
      v14 = v69;
      if (!v69)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        return v9;
      }

      ++v19;
      if (*(v11 + 8 * v10))
      {
        OUTLINED_FUNCTION_229();
        v18 = v21 & v20;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  OUTLINED_FUNCTION_401();
  OUTLINED_FUNCTION_248();
  result = OUTLINED_FUNCTION_409(v61, v62, v63, v64, v65, v66);
  __break(1u);
  return result;
}