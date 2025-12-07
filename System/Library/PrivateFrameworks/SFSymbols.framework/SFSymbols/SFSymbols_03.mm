unint64_t sub_22E479FC0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22E47A1E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22E47CE64();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22E47CFA4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22E47A1E0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22E47CE44();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_22E47A1E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22E47CE74();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2318E6DD0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t SymbolMetadata.privateScalar.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22E46CE0C(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
    v6 = 0;
  }

  else
  {
    v6 = *v4;
    v7 = *(v4 + 54);
    v13[6] = *(v4 + 50);
    v13[7] = v7;
    v8 = *(v4 + 62);
    v13[8] = *(v4 + 58);
    v13[9] = v8;
    v9 = *(v4 + 38);
    v13[2] = *(v4 + 34);
    v13[3] = v9;
    v10 = *(v4 + 46);
    v13[4] = *(v4 + 42);
    v13[5] = v10;
    v11 = *(v4 + 30);
    v13[0] = *(v4 + 26);
    v13[1] = v11;
    sub_22E467010(v13);
  }

  return v6 | ((EnumCaseMultiPayload == 1) << 32);
}

uint64_t SymbolMetadata.publicScalars.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v5 = *(v4 + 6);
    v6 = *(v4 + 216);
    v12[6] = *(v4 + 200);
    v12[7] = v6;
    v7 = *(v4 + 248);
    v12[8] = *(v4 + 232);
    v12[9] = v7;
    v8 = *(v4 + 152);
    v12[2] = *(v4 + 136);
    v12[3] = v8;
    v9 = *(v4 + 184);
    v12[4] = *(v4 + 168);
    v12[5] = v9;
    v10 = *(v4 + 120);
    v12[0] = *(v4 + 104);
    v12[1] = v10;
    sub_22E467010(v12);
  }

  return v5;
}

uint64_t SymbolMetadata.name.getter()
{
  v1 = type metadata accessor for CustomSymbol(0);
  MEMORY[0x28223BE20](v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v6, v3);
    v7 = *&v3[*(v1 + 20)];

    sub_22E46D074(v3, type metadata accessor for CustomSymbol);
  }

  else
  {
    v7 = *(v6 + 1);
    v8 = *(v6 + 216);
    v14[6] = *(v6 + 200);
    v14[7] = v8;
    v9 = *(v6 + 248);
    v14[8] = *(v6 + 232);
    v14[9] = v9;
    v10 = *(v6 + 152);
    v14[2] = *(v6 + 136);
    v14[3] = v10;
    v11 = *(v6 + 184);
    v14[4] = *(v6 + 168);
    v14[5] = v11;
    v12 = *(v6 + 120);
    v14[0] = *(v6 + 104);
    v14[1] = v12;
    sub_22E467010(v14);
  }

  return v7;
}

char *SymbolMetadata.aliases.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_22E46CE0C(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v6 = *v4;
    v7 = *(v4 + 1);
    v8 = *(v4 + 2);
    v9 = *(v4 + 56);
    v29 = *(v4 + 40);
    v30 = v9;
    v31 = *(v4 + 72);
    v32 = *(v4 + 88);
    v28 = *(v4 + 24);
    v10 = *(v4 + 216);
    v23 = *(v4 + 200);
    v24 = v10;
    v11 = *(v4 + 248);
    v25 = *(v4 + 232);
    v26 = v11;
    v12 = *(v4 + 152);
    v19 = *(v4 + 136);
    v20 = v12;
    v13 = *(v4 + 184);
    v21 = *(v4 + 168);
    v22 = v13;
    v14 = *(v4 + 120);
    *&v17[264] = *(v4 + 104);
    v18 = v14;
    v27[0] = v6;
    v27[1] = v7;
    v27[2] = v8;
    v39 = *(v4 + 200);
    v40 = *(v4 + 216);
    v41 = *(v4 + 232);
    v42 = *(v4 + 248);
    v35 = *(v4 + 136);
    v36 = *(v4 + 152);
    v37 = *(v4 + 168);
    v38 = *(v4 + 184);
    v33 = *(v4 + 104);
    v34 = *(v4 + 120);
    sub_22E46D734(v27, v17);
    v15 = sub_22E45BAF4(v7, v8);
    sub_22E46D7A4(v27);
    sub_22E46D7A4(v27);
    return v15;
  }
}

uint64_t SymbolMetadata.tags.getter()
{
  v1 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v20[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v3, type metadata accessor for SymbolMetadata.Backing);
  }

  else
  {
    v5 = *v3;
    v4 = *(v3 + 1);
    v6 = *(v3 + 2);
    v7 = *(v3 + 56);
    v22 = *(v3 + 40);
    v23 = v7;
    v8 = *(v3 + 88);
    v24 = *(v3 + 72);
    v25 = v8;
    v21 = *(v3 + 24);
    v9 = *(v3 + 120);
    v26 = *(v3 + 104);
    v27 = v9;
    v10 = *(v3 + 17);
    v11 = *(v3 + 11);
    v32 = *(v3 + 12);
    v31 = v11;
    v12 = *(v3 + 9);
    v30 = *(v3 + 10);
    v29 = v12;
    v36 = *(v3 + 32);
    v13 = *(v3 + 14);
    v35 = *(v3 + 15);
    v14 = *(v3 + 13);
    v34 = v13;
    v33 = v14;
    v20[0] = v5;
    v20[1] = v4;
    v20[2] = v6;
    v28 = v10;
    if (*(v10 + 16))
    {
      v15 = sub_22E450B0C(v4, v6);
      if (v16)
      {
        v17 = *(*(v10 + 56) + 8 * v15);

        sub_22E46D7A4(v20);
        return v17;
      }
    }

    sub_22E46D7A4(v20);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t SymbolMetadata.functions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v5 = *(v4 + 7);
    v6 = *(v4 + 216);
    v12[6] = *(v4 + 200);
    v12[7] = v6;
    v7 = *(v4 + 248);
    v12[8] = *(v4 + 232);
    v12[9] = v7;
    v8 = *(v4 + 152);
    v12[2] = *(v4 + 136);
    v12[3] = v8;
    v9 = *(v4 + 184);
    v12[4] = *(v4 + 168);
    v12[5] = v9;
    v10 = *(v4 + 120);
    v12[0] = *(v4 + 104);
    v12[1] = v10;
    sub_22E467010(v12);
  }

  return v5;
}

uint64_t SymbolMetadata.localeSuffix.getter()
{
  v1 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v3, type metadata accessor for SymbolMetadata.Backing);
    return 0;
  }

  else
  {
    v4 = *(v3 + 4);
    v5 = *(v3 + 216);
    v11[6] = *(v3 + 200);
    v11[7] = v5;
    v6 = *(v3 + 248);
    v11[8] = *(v3 + 232);
    v11[9] = v6;
    v7 = *(v3 + 152);
    v11[2] = *(v3 + 136);
    v11[3] = v7;
    v8 = *(v3 + 184);
    v11[4] = *(v3 + 168);
    v11[5] = v8;
    v9 = *(v3 + 120);
    v11[0] = *(v3 + 104);
    v11[1] = v9;
    sub_22E467010(v11);
  }

  return v4;
}

uint64_t SymbolMetadata.key.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CustomSymbol(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v9, v6);
    v10 = sub_22E47CD64();
    (*(*(v10 - 8) + 16))(a1, v6, v10);
    sub_22E46D074(v6, type metadata accessor for CustomSymbol);
  }

  else
  {
    v11 = *v9;
    v12 = *(v9 + 216);
    v18[6] = *(v9 + 200);
    v18[7] = v12;
    v13 = *(v9 + 248);
    v18[8] = *(v9 + 232);
    v18[9] = v13;
    v14 = *(v9 + 152);
    v18[2] = *(v9 + 136);
    v18[3] = v14;
    v15 = *(v9 + 184);
    v18[4] = *(v9 + 168);
    v18[5] = v15;
    v16 = *(v9 + 120);
    v18[0] = *(v9 + 104);
    v18[1] = v16;
    sub_22E467010(v18);

    *a1 = v11;
  }

  type metadata accessor for SymbolKey(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t SymbolMetadata.additionalCSVColumns.getter()
{
  v1 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v3, type metadata accessor for SymbolMetadata.Backing);
    return sub_22E4509F8(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = *(v3 + 12);
    v6 = *(v3 + 216);
    v11[6] = *(v3 + 200);
    v11[7] = v6;
    v7 = *(v3 + 248);
    v11[8] = *(v3 + 232);
    v11[9] = v7;
    v8 = *(v3 + 152);
    v11[2] = *(v3 + 136);
    v11[3] = v8;
    v9 = *(v3 + 184);
    v11[4] = *(v3 + 168);
    v11[5] = v9;
    v10 = *(v3 + 120);
    v11[0] = *(v3 + 104);
    v11[1] = v10;
    sub_22E467010(v11);

    return v5;
  }
}

uint64_t SymbolMetadata.useRestrictionsDescription.getter()
{
  v1 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v3, type metadata accessor for SymbolMetadata.Backing);
    return 0;
  }

  else
  {
    v4 = *(v3 + 9);
    v5 = *(v3 + 216);
    v11[6] = *(v3 + 200);
    v11[7] = v5;
    v6 = *(v3 + 248);
    v11[8] = *(v3 + 232);
    v11[9] = v6;
    v7 = *(v3 + 152);
    v11[2] = *(v3 + 136);
    v11[3] = v7;
    v8 = *(v3 + 184);
    v11[4] = *(v3 + 168);
    v11[5] = v8;
    v9 = *(v3 + 120);
    v11[0] = *(v3 + 104);
    v11[1] = v9;
    sub_22E467010(v11);
  }

  return v4;
}

uint64_t SymbolMetadata.useRestrictionsLocalizedDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v32 - v6;
  sub_22E46CE0C(v1, v32 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v7, type metadata accessor for SymbolMetadata.Backing);
  }

  else
  {
    v8 = *(v7 + 5);
    v48[4] = *(v7 + 4);
    v48[5] = v8;
    v49 = *(v7 + 12);
    v9 = *(v7 + 1);
    v48[0] = *v7;
    v48[1] = v9;
    v10 = *(v7 + 3);
    v48[2] = *(v7 + 2);
    v48[3] = v10;
    v11 = *(v7 + 120);
    v38 = *(v7 + 104);
    v39 = v11;
    v12 = *(v7 + 136);
    v13 = *(v7 + 152);
    v14 = *(v7 + 184);
    v42 = *(v7 + 168);
    v43 = v14;
    v40 = v12;
    v41 = v13;
    v15 = *(v7 + 200);
    v16 = *(v7 + 216);
    v17 = *(v7 + 248);
    v46 = *(v7 + 232);
    v47 = v17;
    v44 = v15;
    v45 = v16;
    v56 = *(v7 + 200);
    v57 = *(v7 + 216);
    v58 = *(v7 + 232);
    v59 = *(v7 + 248);
    v52 = *(v7 + 136);
    v53 = *(v7 + 152);
    v54 = *(v7 + 168);
    v55 = *(v7 + 184);
    v50 = *(v7 + 104);
    v51 = *(v7 + 120);
    sub_22E46CE0C(v1, v5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22E46D7A4(v48);
      sub_22E46D074(v5, type metadata accessor for SymbolMetadata.Backing);
    }

    else
    {
      v18 = *(v5 + 5);
      v34 = *(v5 + 4);
      v35 = v18;
      v36 = *(v5 + 12);
      v19 = *(v5 + 1);
      v33[0] = *v5;
      v33[1] = v19;
      v20 = *(v5 + 3);
      v33[2] = *(v5 + 2);
      v33[3] = v20;
      v21 = *(v5 + 120);
      v37[0] = *(v5 + 104);
      v37[1] = v21;
      v22 = *(v5 + 136);
      v23 = *(v5 + 152);
      v24 = *(v5 + 184);
      v37[4] = *(v5 + 168);
      v37[5] = v24;
      v37[2] = v22;
      v37[3] = v23;
      v25 = *(v5 + 200);
      v26 = *(v5 + 216);
      v27 = *(v5 + 248);
      v37[8] = *(v5 + 232);
      v37[9] = v27;
      v37[6] = v25;
      v37[7] = v26;
      sub_22E467010(v37);
      v29 = *(&v34 + 1);
      v28 = v35;

      sub_22E465940(v33);
      if (v28)
      {
        v32[6] = v44;
        v32[7] = v45;
        v32[8] = v46;
        v32[9] = v47;
        v32[2] = v40;
        v32[3] = v41;
        v32[4] = v42;
        v32[5] = v43;
        v32[0] = v38;
        v32[1] = v39;
        v30 = sub_22E470AC4(v29, v28);

        sub_22E46D7A4(v48);
        return v30;
      }

      sub_22E46D7A4(v48);
    }
  }

  return 0;
}

uint64_t SymbolMetadata.accessLevel.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22E46D074(v6, type metadata accessor for SymbolMetadata.Backing);
    v8 = 0;
  }

  else
  {
    v8 = v6[64];
    v9 = *(v6 + 216);
    v14[6] = *(v6 + 200);
    v14[7] = v9;
    v10 = *(v6 + 248);
    v14[8] = *(v6 + 232);
    v14[9] = v10;
    v11 = *(v6 + 152);
    v14[2] = *(v6 + 136);
    v14[3] = v11;
    v12 = *(v6 + 184);
    v14[4] = *(v6 + 168);
    v14[5] = v12;
    v13 = *(v6 + 120);
    v14[0] = *(v6 + 104);
    v14[1] = v13;
    sub_22E467010(v14);
  }

  *a1 = v8;
  return result;
}

uint64_t SymbolMetadata.mirrorForRTL.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
    return 0;
  }

  else
  {
    v5 = v4[24];
    v6 = *(v4 + 216);
    v12[6] = *(v4 + 200);
    v12[7] = v6;
    v7 = *(v4 + 248);
    v12[8] = *(v4 + 232);
    v12[9] = v7;
    v8 = *(v4 + 152);
    v12[2] = *(v4 + 136);
    v12[3] = v8;
    v9 = *(v4 + 184);
    v12[4] = *(v4 + 168);
    v12[5] = v9;
    v10 = *(v4 + 120);
    v12[0] = *(v4 + 104);
    v12[1] = v10;
    sub_22E467010(v12);
  }

  return v5;
}

uint64_t SymbolMetadata.glyphOrder.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22E46CE0C(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
    return 0;
  }

  else
  {
    v6 = *v4;
    v19 = *(v4 + 13);
    v20 = *(v4 + 17);
    v21 = *(v4 + 21);
    v7 = v4[25];
    v16 = *(v4 + 1);
    v17 = *(v4 + 5);
    v18 = *(v4 + 9);
    v8 = *(v4 + 54);
    v14[6] = *(v4 + 50);
    v14[7] = v8;
    v9 = *(v4 + 62);
    v14[8] = *(v4 + 58);
    v14[9] = v9;
    v10 = *(v4 + 38);
    v14[2] = *(v4 + 34);
    v14[3] = v10;
    v11 = *(v4 + 46);
    v14[4] = *(v4 + 42);
    v14[5] = v11;
    v12 = *(v4 + 30);
    v14[0] = *(v4 + 26);
    v14[1] = v12;
    v22 = v7;
    v15 = v6;
    v29 = *(v4 + 50);
    v30 = *(v4 + 54);
    v31 = *(v4 + 58);
    v32 = *(v4 + 62);
    v25 = *(v4 + 34);
    v26 = *(v4 + 38);
    v27 = *(v4 + 42);
    v28 = *(v4 + 46);
    v23 = *(v4 + 26);
    v24 = *(v4 + 30);
    v13 = sub_22E470488(v6);
    sub_22E46D7A4(&v15);
    return v13;
  }
}

uint64_t SymbolMetadata.availability(for:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  sub_22E46CE0C(v3, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22E46D074(v8, type metadata accessor for SymbolMetadata.Backing);
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v12 = *v8;
    v13 = *(v8 + 1);
    v14 = *(v8 + 2);
    v15 = *(v8 + 56);
    v35 = *(v8 + 40);
    v36 = v15;
    v37 = *(v8 + 72);
    v38 = *(v8 + 88);
    v34 = *(v8 + 24);
    v16 = *(v8 + 216);
    v29 = *(v8 + 200);
    v30 = v16;
    v17 = *(v8 + 248);
    v31 = *(v8 + 232);
    v32 = v17;
    v18 = *(v8 + 152);
    v25 = *(v8 + 136);
    v26 = v18;
    v19 = *(v8 + 184);
    v27 = *(v8 + 168);
    v28 = v19;
    v20 = *(v8 + 120);
    v23 = *(v8 + 104);
    v24 = v20;
    v33[0] = v12;
    v33[1] = v13;
    v33[2] = v14;
    v45 = *(v8 + 200);
    v46 = *(v8 + 216);
    v47 = *(v8 + 232);
    v48 = *(v8 + 248);
    v41 = *(v8 + 136);
    v42 = *(v8 + 152);
    v43 = *(v8 + 168);
    v44 = *(v8 + 184);
    v39 = *(v8 + 104);
    v40 = *(v8 + 120);
    v22[33] = v9;
    v22[34] = v10;
    sub_22E46D734(v33, v22);
    sub_22E471DCC(v13, v14, a2);
    sub_22E46D7A4(v33);
    return sub_22E46D7A4(v33);
  }

  return result;
}

uint64_t SymbolMetadata.defaultRenderingMode.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22E46D074(v6, type metadata accessor for SymbolMetadata.Backing);
    v8 = 4;
  }

  else
  {
    v9 = *(v6 + 3);
    v11[2] = *(v6 + 2);
    v11[3] = v9;
    v11[4] = *(v6 + 4);
    v12 = *(v6 + 10);
    v10 = *(v6 + 1);
    v11[0] = *v6;
    v11[1] = v10;
    v8 = v6[88];
    v24 = *(v6 + 248);
    v23 = *(v6 + 232);
    v22 = *(v6 + 216);
    v21 = *(v6 + 200);
    v20 = *(v6 + 184);
    v19 = *(v6 + 168);
    v18 = *(v6 + 152);
    v17 = *(v6 + 136);
    v15 = *(v6 + 104);
    v16 = *(v6 + 120);
    v13 = v8;
    *v14 = *(v6 + 89);
    *&v14[7] = *(v6 + 12);
    result = sub_22E46D7A4(v11);
  }

  *a1 = v8;
  return result;
}

__n128 SymbolMetadata.csvRow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v6, type metadata accessor for SymbolMetadata.Backing);
    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0;
  }

  else
  {
    v8 = *(v6 + 5);
    v25 = *(v6 + 4);
    v26 = v8;
    v27 = *(v6 + 12);
    v9 = *(v6 + 1);
    v21 = *v6;
    v22 = v9;
    v10 = *(v6 + 3);
    v23 = *(v6 + 2);
    v24 = v10;
    v11 = *(v6 + 120);
    v20[0] = *(v6 + 104);
    v20[1] = v11;
    v12 = *(v6 + 136);
    v13 = *(v6 + 152);
    v14 = *(v6 + 184);
    v20[4] = *(v6 + 168);
    v20[5] = v14;
    v20[2] = v12;
    v20[3] = v13;
    v15 = *(v6 + 200);
    v16 = *(v6 + 216);
    v17 = *(v6 + 248);
    v20[8] = *(v6 + 232);
    v20[9] = v17;
    v20[6] = v15;
    v20[7] = v16;
    sub_22E467010(v20);
    v18 = v26;
    *(a1 + 64) = v25;
    *(a1 + 80) = v18;
    *(a1 + 96) = v27;
    v19 = v22;
    *a1 = v21;
    *(a1 + 16) = v19;
    result = v24;
    *(a1 + 32) = v23;
    *(a1 + 48) = result;
  }

  return result;
}

Swift::String_optional __swiftcall SymbolMetadata.string(for:)(SFSymbols::SymbolProperty a1)
{
  v2 = v1;
  countAndFlagsBits = a1.rawValue._countAndFlagsBits;
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *countAndFlagsBits;
  v8 = countAndFlagsBits[1];
  sub_22E46CE0C(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v6, type metadata accessor for SymbolMetadata.Backing);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = *v6;
    v12 = *(v6 + 1);
    v13 = *(v6 + 2);
    v14 = *(v6 + 56);
    v39 = *(v6 + 40);
    v40 = v14;
    v41 = *(v6 + 72);
    v42 = *(v6 + 88);
    v38 = *(v6 + 24);
    v15 = *(v6 + 216);
    v33 = *(v6 + 200);
    v34 = v15;
    v16 = *(v6 + 248);
    v35 = *(v6 + 232);
    v36 = v16;
    v17 = *(v6 + 152);
    v29 = *(v6 + 136);
    v30 = v17;
    v18 = *(v6 + 184);
    v31 = *(v6 + 168);
    v32 = v18;
    v19 = *(v6 + 120);
    v27 = *(v6 + 104);
    v28 = v19;
    v37[0] = v11;
    v37[1] = v12;
    v37[2] = v13;
    v49 = *(v6 + 200);
    v50 = *(v6 + 216);
    v51 = *(v6 + 232);
    v52 = *(v6 + 248);
    v45 = *(v6 + 136);
    v46 = *(v6 + 152);
    v47 = *(v6 + 168);
    v48 = *(v6 + 184);
    v43 = *(v6 + 104);
    v44 = *(v6 + 120);
    v26[0] = v7;
    v26[1] = v8;
    sub_22E46D734(v37, &v25);
    v20 = sub_22E471EBC(v26, v12, v13);
    v22 = v21;
    sub_22E46D7A4(v37);
    sub_22E46D7A4(v37);
    v10 = v22;
    v9 = v20;
  }

  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_22E47C01C(uint64_t a1)
{
  result = type metadata accessor for SymbolMetadata.Backing(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22E47C088(uint64_t a1)
{
  sub_22E47C0FC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CustomSymbol(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22E47C0FC()
{
  if (!qword_27DA640E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA640E0);
    }
  }
}

uint64_t CustomSymbol.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22E47CD64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CustomSymbol.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomSymbol(0) + 20));

  return v1;
}

uint64_t type metadata accessor for CustomSymbol(uint64_t a1)
{
  result = qword_27DA64120;
  if (!qword_27DA64120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomSymbol.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CustomSymbol(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CustomSymbol.init(uuid:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22E47CD64();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CustomSymbol(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_22E47C390(uint64_t a1)
{
  result = sub_22E47CD64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double SymbolMetadataQuery.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 65792;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  return result;
}

Swift::Void __swiftcall SymbolMetadataQuery.limitResults(to:)(SFSymbols::SymbolCategory::Key to)
{
  v3 = *to.rawValue._countAndFlagsBits;
  v2 = *(to.rawValue._countAndFlagsBits + 8);

  *v1 = v3;
  v1[1] = v2;
}

uint64_t SymbolMetadataQuery.searchString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SymbolMetadataQuery.searchString.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SymbolMetadataQuery.addSymbolKeyFilter(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 40);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22E478EA4(0, v6[2] + 1, 1, v6);
    v6 = result;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_22E478EA4((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_22E47C938;
  v10[5] = v5;
  *(v2 + 40) = v6;
  return result;
}

uint64_t SymbolMetadataQuery.addSymbolMetadataFilter(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 48);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22E478EB8(0, v6[2] + 1, 1, v6);
    v6 = result;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_22E478EB8((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_22E47C838;
  v10[5] = v5;
  *(v2 + 48) = v6;
  return result;
}

char *SymbolMetadataQuery.addSearchTermFilter(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 56);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22E478FF8(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_22E478FF8((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[32 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  *(v13 + 6) = a3;
  *(v13 + 7) = a4;
  *(v4 + 56) = v9;
  return result;
}

uint64_t sub_22E47C838@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22E47C880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E47C8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SymbolFeature.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void static SymbolFeature.hierarchical.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "hierarchical");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_22E47C9F0()
{
  result = qword_27DA64118;
  if (!qword_27DA64118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64118);
  }

  return result;
}

uint64_t name_aliases.getter()
{
  if (qword_280AC2DF8 != -1)
  {
    swift_once();
  }
}