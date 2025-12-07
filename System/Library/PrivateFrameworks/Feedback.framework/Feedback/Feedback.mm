BOOL sub_1B8B2450C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1B8B2453C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B8B24568@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1B8B24658@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B8B24668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A00, &qword_1B8C27170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B246F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B8B34C70(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B8B24730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C25128();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8B247D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B8B24830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8C241C8();
  *a1 = result;
  return result;
}

id sub_1B8B24884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AgreementConsentView(0) + 24) + 8);
  *a2 = v3;

  return v3;
}

uint64_t sub_1B8B248DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB0, &unk_1B8C2A1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB8, qword_1B8C27AC0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B8B24A04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB0, &unk_1B8C2A1B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB8, qword_1B8C27AC0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B24B9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B24BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E70, &qword_1B8C27C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B24C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E70, &qword_1B8C27C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B24D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for BatchInteraction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B24E00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for BatchInteraction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B24EA0()
{
  v1 = (type metadata accessor for SkipButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_1B8B3B060(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v5 = v0 + v3 + v1[8];
  v6 = sub_1B8C23568();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for BatchInteraction(0);

  v8 = v5 + *(v7 + 28);
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  if (EnumCaseMultiPayload != 1)
  {
    if (v12)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v12)
  {
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:

          break;
        case 4:
          v16 = sub_1B8C23328();
          (*(*(v16 - 8) + 8))(v8, v16);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v14 < 2)
    {
    }

    else if (v14 == 2)
    {
    }
  }

  v8 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v11(v8, 1, v10))
  {
LABEL_6:
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          break;
        case 4:
          v15 = sub_1B8C23328();
          (*(*(v15 - 8) + 8))(v8, v15);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v13 < 2)
    {
    }

    else if (v13 == 2)
    {
    }
  }

LABEL_26:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B25228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatchInteraction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B8B25340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BatchInteraction(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B25454()
{
  v1 = type metadata accessor for Previewer(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 8) + 64);
  v4 = sub_1B8C23568();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = type metadata accessor for BatchInteraction(0);

  v6 = v0 + v3 + *(v5 + 28);
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  if (EnumCaseMultiPayload != 1)
  {
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v10)
  {
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          break;
        case 4:
          v17 = sub_1B8C23328();
          (*(*(v17 - 8) + 8))(v6, v17);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v12 < 2)
    {
    }

    else if (v12 == 2)
    {
    }
  }

  v6 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v9(v6, 1, v8))
  {
LABEL_6:
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          break;
        case 4:
          v13 = sub_1B8C23328();
          (*(*(v13 - 8) + 8))(v6, v13);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v11 < 2)
    {
    }

    else if (v11 == 2)
    {
    }
  }

LABEL_26:
  v14 = v0 + v3 + *(v1 + 20);
  if (v9(v14, 1, v8))
  {
    goto LABEL_39;
  }

  v15 = swift_getEnumCaseMultiPayload();
  if (v15 <= 2)
  {
    if (v15 >= 2)
    {
      if (v15 == 2)
      {
      }

      goto LABEL_39;
    }

LABEL_37:

    goto LABEL_39;
  }

  switch(v15)
  {
    case 3:

      goto LABEL_37;
    case 4:
      v16 = sub_1B8C23328();
      (*(*(v16 - 8) + 8))(v14, v16);
      break;
    case 5:
      sub_1B8B3B06C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72));
      break;
  }

LABEL_39:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v19, v2 | 7);
}

uint64_t sub_1B8B258C4()
{
  v1 = type metadata accessor for Previewer(0);
  v21 = *(*(v1 - 8) + 80);
  v19 = *(*(v1 - 8) + 64);
  v2 = sub_1B8C23328();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v22 = *(v3 + 64);
  v20 = (v21 + 16) & ~v21;
  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 8))(v0 + v20, v5);
  v6 = type metadata accessor for BatchInteraction(0);

  v7 = v0 + v20 + *(v6 + 28);
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v7, 1, v9);
  if (EnumCaseMultiPayload != 1)
  {
    v12 = v2;
    if (v11)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  v12 = v2;
  if (!v11)
  {
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:

          break;
        case 4:
          (*(v3 + 8))(v7, v2);
          break;
        case 5:
          sub_1B8B3B06C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72));
          break;
      }
    }

    else if (v14 < 2)
    {
    }

    else if (v14 == 2)
    {
    }
  }

  v7 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v10(v7, 1, v9))
  {
LABEL_6:
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          break;
        case 4:
          (*(v3 + 8))(v7, v12);
          break;
        case 5:
          sub_1B8B3B06C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72));
          break;
      }
    }

    else if (v13 < 2)
    {
    }

    else if (v13 == 2)
    {
    }
  }

LABEL_26:
  v15 = v0 + v20 + *(v1 + 20);
  if (v10(v15, 1, v9))
  {
    goto LABEL_39;
  }

  v16 = swift_getEnumCaseMultiPayload();
  if (v16 <= 2)
  {
    if (v16 >= 2)
    {
      if (v16 == 2)
      {
      }

      goto LABEL_39;
    }

LABEL_37:

    goto LABEL_39;
  }

  switch(v16)
  {
    case 3:

      goto LABEL_37;
    case 4:
      (*(v3 + 8))(v15, v12);
      break;
    case 5:
      sub_1B8B3B06C(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 72));
      break;
  }

LABEL_39:
  v17 = (v20 + v19 + v4) & ~v4;

  (*(v3 + 8))(v0 + v17, v12);

  return MEMORY[0x1EEE6BDD0](v0, v17 + v22, v21 | v4 | 7);
}

uint64_t sub_1B8B25DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C23568();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for BatchInteraction.ContentPolarity(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B8B25EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8C23568();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for BatchInteraction.ContentPolarity(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1B8B26070(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B8B41824(v1);
}

uint64_t sub_1B8B260A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatchInteraction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B8B26164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BatchInteraction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8B26228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for PrebuiltPreviewController(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v24 = *(v5 + 80);
  v22 = *(v5 + 64);
  v26 = sub_1B8C23E98();
  v6 = *(v26 - 8);
  v7 = *(v6 + 80);
  v25 = *(v6 + 64);
  v23 = (v24 + 32) & ~v24;
  v8 = sub_1B8C23568();
  (*(*(v8 - 8) + 8))(v4 + v23, v8);
  v9 = type metadata accessor for BatchInteraction(0);

  v10 = v4 + v23 + *(v9 + 28);
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  if (EnumCaseMultiPayload != 1)
  {
    if (v14)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v14)
  {
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 2)
    {
      switch(v16)
      {
        case 3:

          break;
        case 4:
          v20 = sub_1B8C23328();
          (*(*(v20 - 8) + 8))(v10, v20);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v16 < 2)
    {
    }

    else if (v16 == 2)
    {
    }
  }

  v10 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v13(v10, 1, v12))
  {
LABEL_6:
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:

          break;
        case 4:
          v17 = sub_1B8C23328();
          (*(*(v17 - 8) + 8))(v10, v17);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v15 < 2)
    {
    }

    else if (v15 == 2)
    {
    }
  }

LABEL_26:
  v18 = v24 | v7;
  v19 = (v23 + v22 + v7) & ~v7;

  (*(v6 + 8))(v4 + v19, v26);

  return MEMORY[0x1EEE6BDD0](v4, v19 + v25, v18 | 7);
}

uint64_t sub_1B8B26670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23328();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B266DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23328();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B2674C(void *a1)
{
  sub_1B8C245A8();
  sub_1B8C245A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8C24E18();
  type metadata accessor for FullScreenPreviewController.Content(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6370, &qword_1B8C28C10);
  swift_getWitnessTable();
  sub_1B8B4D128(&qword_1EBAA6378, type metadata accessor for FullScreenPreviewController.Content, &unk_1B8C295E0);
  sub_1B8B4BDFC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  swift_getOpaqueTypeConformance2();
  sub_1B8B4BEB4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B8C23F48();
  return swift_getWitnessTable();
}

uint64_t sub_1B8B269CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B26A14()
{
  v1 = *(type metadata accessor for FullPreviewAttributedText(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1B8C23328();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B26B70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B26C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6500, &unk_1B8C31BC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B26CD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6500, &unk_1B8C31BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B26DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C23568();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B8B26EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B8C23568();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B8B27058()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B270D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6768, &qword_1B8C29760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B27140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6768, &qword_1B8C29760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B271B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B8C237B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B8B2725C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B8C237B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B27300()
{
  v1 = (type metadata accessor for ImageWithPreview(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1B8C237B8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B27448()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B27480()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B274BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatchInteraction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B8B2757C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BatchInteraction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1B8B2763C()
{
  v1 = type metadata accessor for ActionButton(0);
  v2 = *(*(v1 - 8) + 80);
  v17 = *(*(v1 - 8) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3 + *(v1 + 20);
  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for BatchInteraction(0);

  v7 = v4 + *(v6 + 28);
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v7, 1, v9);
  if (EnumCaseMultiPayload != 1)
  {
    if (v11)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v11)
  {
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          break;
        case 4:
          v15 = sub_1B8C23328();
          (*(*(v15 - 8) + 8))(v7, v15);
          break;
        case 5:
          sub_1B8B3B06C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72));
          break;
      }
    }

    else if (v13 < 2)
    {
    }

    else if (v13 == 2)
    {
    }
  }

  v7 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v10(v7, 1, v9))
  {
LABEL_6:
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          break;
        case 4:
          v14 = sub_1B8C23328();
          (*(*(v14 - 8) + 8))(v7, v14);
          break;
        case 5:
          sub_1B8B3B06C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72));
          break;
      }
    }

    else if (v12 < 2)
    {
    }

    else if (v12 == 2)
    {
    }
  }

LABEL_26:

  sub_1B8B3B060(*(v0 + v3 + *(v1 + 28)), *(v0 + v3 + *(v1 + 28) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v17, v2 | 7);
}

uint64_t sub_1B8B27A04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B27A44()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B8B27BF4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1B8CC8ED0]();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B27C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BA8, &qword_1B8C2A1A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB0, &unk_1B8C2A1B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B8B27D74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BA8, &qword_1B8C2A1A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB0, &unk_1B8C2A1B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B27E98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B30, &qword_1B8C29F08);
  sub_1B8C23D38();
  sub_1B8B6FC10();
  sub_1B8B70B14(&qword_1EBAA6BA0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B28034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatchInteraction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B8B280F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BatchInteraction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

double sub_1B8B281C4@<D0>(double *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B8B7485C(a2, a3, a4);
  sub_1B8C242B8();
  result = v6;
  *a1 = v6;
  return result;
}

uint64_t sub_1B8B28270@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B8C24258();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B8B28380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B283EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B28464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F28, &qword_1B8C2AA68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B284EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B28554(void *a1)
{
  sub_1B8C24DE8();
  sub_1B8C23FF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A38, &qword_1B8C29DE8);
  sub_1B8C23FF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F98, qword_1B8C29DF0);
  sub_1B8C23FF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA61A8, &unk_1B8C2CE50);
  sub_1B8C23FF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7070, &qword_1B8C2CD30);
  sub_1B8C23FF8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8, MEMORY[0x1E6980468]);
  swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0, MEMORY[0x1E6980490]);
  swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA7098, &qword_1EBAA7070, &qword_1B8C2CD30, MEMORY[0x1E697EC18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B8B288A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1B8B28984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B8B28A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C24278();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B28AE4()
{
  v1 = type metadata accessor for DebugSheet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8) + 32);
    v8 = sub_1B8C24058();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B28C7C()
{
  v1 = type metadata accessor for DebugSheet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8) + 32);
    v8 = sub_1B8C24058();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B28DD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7110, &qword_1B8C2B038);
  v3 = sub_1B8B82A2C();
  sub_1B8B82AE4(v3, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B28E70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B28F2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B28FE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2902C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B29064()
{
  sub_1B8B8514C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B290BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_1B8B29114()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 121, 7);
}

uint64_t sub_1B8B29178()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B8B291DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7310, &qword_1B8C2B990);
  sub_1B8B8AFF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B29244()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2928C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B8B29344()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2937C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B293B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B8B293EC()
{
  MEMORY[0x1B8CCB1A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B29424()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2945C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B294D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B29590(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B29644()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B29680()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B296C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2976C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23568();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B297D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23568();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B2988C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7658, &qword_1B8C2C1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B298FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7658, &qword_1B8C2C1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B299F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C236E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B8B29B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B8C236E8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B29C2C()
{
  v1 = type metadata accessor for FBKInlineViewButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1B8C236E8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0) + 32);
  v9 = sub_1B8C23738();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  if (*(v0 + v3 + v1[6]))
  {
  }

  v10 = v5 + v1[8];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B29DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8C24238();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B8B29E74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA76B0, &qword_1B8C2C278);
  sub_1B8C24308();
  sub_1B8B9C344();
  sub_1B8B9C4E0(&qword_1EBAA76F8, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  return swift_getOpaqueTypeConformance2();
}

double sub_1B8B29F84(__int128 *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  sub_1B8B50FF8(v5, &v4);
  return StateController.state.setter(a1);
}

uint64_t sub_1B8B29FE4()
{

  if (*(v0 + 32) >= 4uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1B8B2A03C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2A07C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A0BC()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2A10C()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B8B2A164()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A1AC()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2A1FC()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2A24C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A294()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2A2DC()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2A330()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A378()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A3BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B8B2A464()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2A548()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2A5AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7858, &qword_1B8C2CC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B2A61C()
{
  v1 = (type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1B8C23528();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[9];
  v8 = sub_1B8C23328();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[11];
  v10 = sub_1B8C23568();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2A7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78E8, &qword_1B8C2CCF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B2A82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B2A898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B2A918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C241E8();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B2AA50()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2AA88()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2AAD0()
{
  v1 = sub_1B8C23498();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

id sub_1B8B2ABC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B8B2AC2C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B8B2ACE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B8B2AD40(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B8B2ADA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B8B2AE24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2AE64()
{
  MEMORY[0x1B8CCB1A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2AE9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2AEE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2AF3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2AFE8()
{
  MEMORY[0x1B8CCB1A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2B024()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2B064()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2B0A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2B0D8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B8B2B12C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2B180()
{
  v1 = type metadata accessor for AgreementConsentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B8C23E78();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1B8C23FE8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  if (*(v5 + v1[8]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B8B2B358()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2B398()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2B3E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2B420()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B8B2B470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C68, &qword_1B8C2D578);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2B510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C23568();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B8B2B638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8C23568();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8B2B764()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2B7A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23498();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B2B80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23498();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B2B978()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2B9D4()
{
  v1 = (type metadata accessor for BatchInteraction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[9];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  if (EnumCaseMultiPayload != 1)
  {
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v10)
  {
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          break;
        case 4:
          v14 = sub_1B8C23328();
          (*(*(v14 - 8) + 8))(v6, v14);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v12 < 2)
    {
    }

    else if (v12 == 2)
    {
    }
  }

  v6 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v9(v6, 1, v8))
  {
LABEL_6:
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          break;
        case 4:
          v13 = sub_1B8C23328();
          (*(*(v13 - 8) + 8))(v6, v13);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v11 < 2)
    {
    }

    else if (v11 == 2)
    {
    }
  }

LABEL_26:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2BD30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1B8B2BD90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B8B2BDFC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBAA7DC0;
  return result;
}

uint64_t sub_1B8B2BE48(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBAA7DC0 = v1;
  return result;
}

uint64_t sub_1B8B2BEC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2BEF8(uint64_t *a1)
{
  type metadata accessor for FBKEvaluationViewModifier(255);
  sub_1B8C23FF8();
  sub_1B8BD0B88(&qword_1EDC85630, type metadata accessor for FBKEvaluationViewModifier, &unk_1B8C2E058);
  return swift_getWitnessTable();
}

uint64_t sub_1B8B2BF94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E20, &qword_1B8C2E028);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2C050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E20, &qword_1B8C2E028);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2C104()
{
  v1 = (type metadata accessor for FBKEvaluationViewModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1B8C24648();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1B8B2C28C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B8BE72B4(v1);
}

uint64_t sub_1B8B2C2CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E30, &qword_1B8C2E0A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E38, &qword_1B8C2E0B0);
  sub_1B8BD0AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E40, &qword_1B8C2E0B8);
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E48, &qword_1B8C2E0C0);
  sub_1B8BD0B18(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B2C414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1B8B2C474@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B8B2C4E0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B8C237B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B8B2C58C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B8C237B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2C630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ListPreviewer.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B8B2C6FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ListPreviewer.Content(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B8B2C7B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7EF0, &qword_1B8C2E558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B2C824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ListPreviewer.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B8B2C8E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ListPreviewer.Content(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8B2C9D4()
{
  v1 = *(type metadata accessor for ListSection(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(type metadata accessor for ListPreviewer.Content(0) + 20);
  v6 = sub_1B8C237B8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2CAF4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8070, &qword_1B8C2E730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1B8B2CBB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8070, &qword_1B8C2E730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2CC64()
{
  v1 = *(type metadata accessor for TextRow.Row(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2CD4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8070, &qword_1B8C2E730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2CE08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8070, &qword_1B8C2E730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2CEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C23568();
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

uint64_t sub_1B8B2CF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8C23568();
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

uint64_t sub_1B8B2D08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WebView.HTMLContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B8B2D158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WebView.HTMLContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B8B2D210(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1B8C23528();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1B8C23328();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1B8C23568();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1B8B2D37C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1B8C23528();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1B8C23328();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1B8C23568();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B8B2D4E8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1B8C23528();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1B8C23568();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_1B8C23328();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1B8B2D654(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1B8C23528();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1B8C23568();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_1B8C23328();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B8B2D7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2D884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2D938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for SheetContainer(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);

  v9 = v4 + v7 + v5[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8) + 32);
    v12 = sub_1B8C24058();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

uint64_t sub_1B8B2DA8C(uint64_t *a1)
{
  sub_1B8C23F68();
  sub_1B8C23FF8();
  swift_getWitnessTable();
  sub_1B8C24E18();
  sub_1B8C23D48();
  sub_1B8C245A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8C24E18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83A8, &qword_1B8C2EE48);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50, MEMORY[0x1E697BEF0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B8B34CA8(OpaqueTypeConformance2, v2, v3);
  swift_getOpaqueTypeMetadata2();
  sub_1B8C245A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1B8C24018();
  return swift_getWitnessTable();
}

uint64_t sub_1B8B2DD70()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2DE3C()
{
  v1 = sub_1B8C23568();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B8B2DF20()
{
  MEMORY[0x1B8CCB1A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B8B2DF98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B8BE74E4(v1);
}

uint64_t sub_1B8B2E020()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B8C23738();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + v4 + 1) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B8B2E174()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2E238()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B8C23738();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1B8B2E394()
{
  v1 = sub_1B8C23738();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B8B2E470()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2E574()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2E5B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B8B2E60C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_1B8B2E6A0(id *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1B8BF9E28(*a1, v2);
  sub_1B8BE91F8(v1, v2);
}

uint64_t sub_1B8B2E738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C236E8();
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

uint64_t sub_1B8B2E7F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8C236E8();
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

uint64_t sub_1B8B2E914()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2E95C()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B8B2EA38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2EAF8()
{
  sub_1B8B30A54(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2EB44()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  sub_1B8B30A54(*(v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2EC14()
{
  sub_1B8B30A54(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2EC5C()
{
  v1 = sub_1B8C23568();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B8B30A54(*(v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1B8B2ED54()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B8C23738();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + v4 + 1) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  sub_1B8B30A54(*(v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B8B2EEB4()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2EEFC()
{

  if (*(v0 + 24))
  {
  }

  sub_1B8B30A54(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1B8B2EFAC()
{
  v1 = *(type metadata accessor for AnalyticsEvent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() - 1 <= 1)
  {
    v5 = sub_1B8C237B8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2F0B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2F170(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2F220()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B8B2F260(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1B8C09614(*a1, v2, v3);
  sub_1B8C07AE8(v1, v2, v3);
}

double sub_1B8B2F2B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1B8C07D98(v1, v2);
}

uint64_t sub_1B8B2F2F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C68, &qword_1B8C2D578);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2F388()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2F3D8()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B8B2F454@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B8B2F4DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B8B2F534(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void *sub_1B8B2F6D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1B8B2F6F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

id sub_1B8B2F7D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B8B2F86C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_1B8B2F888(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B8B2F938@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B8B2F994(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1B8B2FA20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment;
  result = swift_beginAccess();
  v5 = *(v3 + 2);
  *a2 = *v3;
  *(a2 + 2) = v5;
  return result;
}

uint64_t sub_1B8B2FA7C(__int16 *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 2) = v3;
  return result;
}

uint64_t sub_1B8B2FB6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2FC28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2FCDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2FD30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CE8, &qword_1B8C318B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B2FDA0()
{
  v1 = (type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = sub_1B8C23528();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[11];
  v8 = sub_1B8C23568();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[12];
  v10 = sub_1B8C23328();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2FF40()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2FFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B8B3006C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B8B30124(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B8B301E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B30294()
{
  v1 = (type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8) + 32);
    v8 = sub_1B8C24058();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B303E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6500, &unk_1B8C31BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1B8B30504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6500, &unk_1B8C31BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B30660()
{
  v1 = type metadata accessor for CatchUpMailMessagePreviewer(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D58, &qword_1B8C31BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B8C23D78();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(v1 + 20);

  v8 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v9 = v8[8];
  v10 = sub_1B8C23528();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = v8[9];
  v12 = sub_1B8C23568();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);
  v13 = v8[10];
  v14 = sub_1B8C23328();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);
  if (*(v5 + *(v1 + 24)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B30884()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8E80, &qword_1B8C31C60);
  sub_1B8C1F8F0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B308E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B309EC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1B8B30A44(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B8B30A60@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;

  v24 = sub_1B8C24D08();
  v6 = sub_1B8C24C68();
  v7 = sub_1B8C248C8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1B8C24908();
  sub_1B8B3433C(v5, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = swift_getKeyPath();
  v10 = sub_1B8C24478();
  v25[0] = 0;
  sub_1B8B30D6C(&v38);
  v31 = *&v39[48];
  v32 = *&v39[64];
  v33 = *&v39[80];
  v27 = v38;
  v28 = *v39;
  v29 = *&v39[16];
  v30 = *&v39[32];
  v34[0] = v38;
  v34[1] = *v39;
  v34[2] = *&v39[16];
  v34[3] = *&v39[32];
  v34[4] = *&v39[48];
  v34[5] = *&v39[64];
  v35 = *&v39[80];
  sub_1B8B34450(&v27, &v36, &qword_1EBAA5CD8, &qword_1B8C27900);
  sub_1B8B3433C(v34, &qword_1EBAA5CD8, &qword_1B8C27900);
  *(&v26[3] + 7) = v30;
  *(&v26[4] + 7) = v31;
  *(&v26[5] + 7) = v32;
  *(&v26[6] + 7) = v33;
  *(v26 + 7) = v27;
  *(&v26[1] + 7) = v28;
  *(&v26[2] + 7) = v29;
  v11 = v25[0];
  *&v36 = v10;
  *(&v36 + 1) = 0x4010000000000000;
  LOBYTE(v37[0]) = v25[0];
  *(&v37[2] + 1) = v26[2];
  v13 = v26[1];
  v12 = v26[2];
  *(&v37[1] + 1) = v26[1];
  v14 = v26[0];
  *(v37 + 1) = v26[0];
  v37[6] = *(&v26[5] + 15);
  *(&v37[5] + 1) = v26[5];
  v16 = v26[4];
  v15 = v26[5];
  *(&v37[4] + 1) = v26[4];
  v17 = v26[3];
  *(&v37[3] + 1) = v26[3];
  v18 = v37[2];
  *(a2 + 64) = v37[1];
  *(a2 + 80) = v18;
  v19 = v37[0];
  *(a2 + 32) = v36;
  *(a2 + 48) = v19;
  v20 = v37[6];
  *(a2 + 128) = v37[5];
  *(a2 + 144) = v20;
  v21 = v37[4];
  *(a2 + 96) = v37[3];
  *(a2 + 112) = v21;
  *&v39[33] = v12;
  *&v39[17] = v13;
  *a2 = v24;
  *(a2 + 8) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = v8;
  *&v38 = v10;
  *(&v38 + 1) = 0x4010000000000000;
  v39[0] = v11;
  *&v39[1] = v14;
  *&v39[96] = *(&v26[5] + 15);
  *&v39[81] = v15;
  *&v39[65] = v16;
  *&v39[49] = v17;

  sub_1B8B34450(&v36, v25, &qword_1EBAA5CE0, &qword_1B8C27908);
  sub_1B8B3433C(&v38, &qword_1EBAA5CE0, &qword_1B8C27908);
}

uint64_t sub_1B8B30D6C@<X0>(uint64_t a2@<X8>)
{
  v24 = sub_1B8C242E8();
  sub_1B8B34CA8(v24, v3, v4);

  v5 = sub_1B8C249E8();
  v7 = v6;
  v9 = v8;
  v10 = sub_1B8C249A8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1B8B34060(v5, v7, v9 & 1);

  sub_1B8B34694(v10, v12, v14 & 1);

  sub_1B8B34060(v10, v12, v14 & 1);

  v17 = sub_1B8C249E8();
  v19 = v18;
  v21 = v20 & 1;
  *a2 = v24;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14 & 1;
  *(a2 + 48) = v16;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  *(a2 + 88) = v20 & 1;
  *(a2 + 96) = v22;
  sub_1B8B34694(v10, v12, v14 & 1);

  sub_1B8B34694(v17, v19, v21);

  sub_1B8B34060(v17, v19, v21);

  sub_1B8B34060(v10, v12, v14 & 1);
}

double sub_1B8B30F34@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v25 = *v1;
  v26 = v3;
  v27 = v1[2];
  v4 = sub_1B8C242D8();
  v24 = 0;
  sub_1B8B30A60(&v13);
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v28 = v13;
  v29 = v14;
  v38[6] = v19;
  v38[7] = v20;
  v38[8] = v21;
  v38[9] = v22;
  v38[2] = v15;
  v38[3] = v16;
  v38[4] = v17;
  v38[5] = v18;
  v38[0] = v13;
  v38[1] = v14;
  sub_1B8B34450(&v28, &v12, &qword_1EBAA5CC8, &qword_1B8C278C0);
  sub_1B8B3433C(v38, &qword_1EBAA5CC8, &qword_1B8C278C0);
  *&v23[55] = v31;
  *&v23[39] = v30;
  *&v23[103] = v34;
  *&v23[119] = v35;
  *&v23[135] = v36;
  *&v23[151] = v37;
  *&v23[71] = v32;
  *&v23[87] = v33;
  *&v23[7] = v28;
  *&v23[23] = v29;
  v5 = *&v23[96];
  *(a1 + 129) = *&v23[112];
  v6 = *&v23[144];
  *(a1 + 145) = *&v23[128];
  *(a1 + 161) = v6;
  v7 = *&v23[32];
  *(a1 + 65) = *&v23[48];
  v8 = *&v23[80];
  *(a1 + 81) = *&v23[64];
  *(a1 + 97) = v8;
  *(a1 + 113) = v5;
  result = *v23;
  v10 = *&v23[16];
  *(a1 + 17) = *v23;
  *(a1 + 33) = v10;
  v11 = v24;
  *a1 = v4;
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = v11;
  *(a1 + 176) = *&v23[159];
  *(a1 + 49) = v7;
  return result;
}

uint64_t sub_1B8B310C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B8C245F8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B8C245E8();
}

__n128 sub_1B8B3110C@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W3>, uint64_t a4@<X8>, uint64_t a5@<X2>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A00, &qword_1B8C27170);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21[-v12];
  *v13 = sub_1B8C24468();
  *(v13 + 1) = 0x4040000000000000;
  v13[16] = 0;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A08, &qword_1B8C27178) + 44);
  LOBYTE(v22) = a2 & 1;
  v21[8] = a3 & 1;
  sub_1B8B312AC(a1, a2 & 1, a5, a3 & 1, &v13[v14]);
  v15 = sub_1B8C24808();
  v16 = &v13[*(v11 + 44)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  sub_1B8C24F48();
  sub_1B8C24088();
  sub_1B8B24668(v13, a4);
  v17 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A10, &qword_1B8C27180) + 36);
  v18 = v27;
  *(v17 + 64) = v26;
  *(v17 + 80) = v18;
  *(v17 + 96) = v28;
  v19 = v23;
  *v17 = v22;
  *(v17 + 16) = v19;
  result = v25;
  *(v17 + 32) = v24;
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_1B8B312AC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v52 = a4;
  v51 = a3;
  v50 = a2;
  v49 = a1;
  v60 = a5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A18, &qword_1B8C27188);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v49 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A20, &qword_1B8C27190);
  v56 = *(v58 - 8);
  v6 = MEMORY[0x1EEE9AC00](v58);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A28, &qword_1B8C27198);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v49 - v13;
  sub_1B8C243A8();
  v14 = sub_1B8C249C8();
  v16 = v15;
  v18 = v17;
  sub_1B8C24878();
  v19 = sub_1B8C249B8();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1B8B34060(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v71 = v19;
  v72 = v21;
  v23 &= 1u;
  v73 = v23;
  v74 = v25;
  v75 = KeyPath;
  v76 = 1;
  sub_1B8C248D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A30, &unk_1B8C271D0);
  sub_1B8B341FC();
  v27 = v61;
  sub_1B8C24A48();
  sub_1B8B34060(v19, v21, v23);

  LOBYTE(v19) = sub_1B8C247F8();
  sub_1B8C23D18();
  v28 = v27 + *(v10 + 44);
  *v28 = v19;
  *(v28 + 8) = v29;
  *(v28 + 16) = v30;
  *(v28 + 24) = v31;
  *(v28 + 32) = v32;
  *(v28 + 40) = 0;
  v33 = v49;
  v67 = v49;
  LOBYTE(v10) = v50 & 1;
  v68 = v50 & 1;
  v34 = v51;
  v69 = v51;
  LOBYTE(v25) = v52 & 1;
  v70 = v52 & 1;
  sub_1B8C247E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A50, &qword_1B8C271E0);
  sub_1B8B34CFC(&qword_1EBAA5A58, &qword_1EBAA5A50, &qword_1B8C271E0, MEMORY[0x1E6981870]);
  v35 = v53;
  sub_1B8C23D58();
  v63 = v33;
  v64 = v10;
  v65 = v34;
  v66 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A60, &qword_1B8C271E8);
  sub_1B8B34CFC(&qword_1EBAA5A68, &qword_1EBAA5A18, &qword_1B8C27188, MEMORY[0x1E697BE60]);
  sub_1B8B34CFC(&qword_1EBAA5A70, &qword_1EBAA5A60, &qword_1B8C271E8, MEMORY[0x1E697C5E0]);
  v36 = v62;
  v37 = v57;
  sub_1B8C24C28();
  (*(v59 + 8))(v35, v37);
  v38 = v54;
  sub_1B8B34450(v27, v54, &qword_1EBAA5A28, &qword_1B8C27198);
  v39 = v56;
  v40 = *(v56 + 16);
  v41 = v55;
  v42 = v36;
  v43 = v58;
  v40(v55, v42, v58);
  v44 = v60;
  *v60 = 0x4040000000000000;
  *(v44 + 8) = 0;
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A78, &qword_1B8C271F0);
  sub_1B8B34450(v38, &v45[*(v46 + 48)], &qword_1EBAA5A28, &qword_1B8C27198);
  v40(&v45[*(v46 + 64)], v41, v43);
  v47 = *(v39 + 8);
  v47(v62, v43);
  sub_1B8B3433C(v61, &qword_1EBAA5A28, &qword_1B8C27198);
  v47(v41, v43);
  return sub_1B8B3433C(v38, &qword_1EBAA5A28, &qword_1B8C27198);
}

double sub_1B8B31900@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_1B8C24478();
  v27 = 0;
  LOBYTE(v38[0]) = a2 & 1;
  LOBYTE(v28) = a3 & 1;
  sub_1B8B31AB4(a1, a2 & 1, &v16);
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v28 = v16;
  v29 = v17;
  v38[6] = v22;
  v38[7] = v23;
  v38[8] = v24;
  v38[2] = v18;
  v38[3] = v19;
  v38[4] = v20;
  v38[5] = v21;
  v37 = v25;
  v39 = v25;
  v38[0] = v16;
  v38[1] = v17;
  sub_1B8B34450(&v28, &v15, &qword_1EBAA5AD8, &qword_1B8C272D0);
  sub_1B8B3433C(v38, &qword_1EBAA5AD8, &qword_1B8C272D0);
  *&v26[55] = v31;
  *&v26[39] = v30;
  *&v26[103] = v34;
  *&v26[119] = v35;
  *&v26[135] = v36;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[7] = v28;
  *&v26[23] = v29;
  v9 = *&v26[112];
  *(a4 + 113) = *&v26[96];
  *(a4 + 129) = v9;
  *(a4 + 145) = *&v26[128];
  v10 = *&v26[48];
  *(a4 + 49) = *&v26[32];
  *(a4 + 65) = v10;
  v11 = *&v26[80];
  *(a4 + 81) = *&v26[64];
  *(a4 + 97) = v11;
  result = *v26;
  v13 = *&v26[16];
  *(a4 + 17) = *v26;
  v26[151] = v37;
  v14 = v27;
  *a4 = v8;
  *(a4 + 8) = 0x4038000000000000;
  *(a4 + 16) = v14;
  *(a4 + 161) = *&v26[144];
  *(a4 + 33) = v13;
  return result;
}

double sub_1B8B31AB4@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B8C242A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v38[0] = a1;
  }

  else
  {

    sub_1B8C25488();
    v10 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v38[0];
  }

  swift_getKeyPath();
  *&v28 = a1;
  sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  v11 = *(a1 + 18);

  if (v11)
  {

    *&v22 = 0x552073626D756854;
    *(&v22 + 1) = 0xE900000000000070;
    *&v23[0] = 0xD000000000000027;
    *(&v23[0] + 1) = 0x80000001B8C320A0;
    *&v23[1] = 0xD000000000000019;
    *(&v23[1] + 1) = 0x80000001B8C320D0;
    strcpy(&v23[2], "Thumbs Down");
    HIDWORD(v23[2]) = -352321536;
    *&v23[3] = 0xD00000000000002BLL;
    *(&v23[3] + 1) = 0x80000001B8C320F0;
    *&v23[4] = 0xD00000000000001BLL;
    *(&v23[4] + 1) = 0x80000001B8C32120;
    *&v24 = 0x696F50206E726145;
    *(&v24 + 1) = 0xEB0000000073746ELL;
    *&v25 = 0xD00000000000002ALL;
    *(&v25 + 1) = 0x80000001B8C32140;
    *&v26 = 0xD000000000000012;
    *(&v26 + 1) = 0x80000001B8C32170;
    sub_1B8B34680(&v22);
  }

  else
  {
    v12 = sub_1B8C24468();
    LOBYTE(v28) = 1;
    sub_1B8B31F64(v19);
    v18[3] = *(v20 + 9);
    *(&v18[2] + 7) = v20[0];
    *(&v18[1] + 7) = v19[1];
    *(v18 + 7) = v19[0];
    v22 = v12;
    LOBYTE(v23[0]) = v28;
    *(&v23[3] + 1) = v18[3];
    *(&v23[2] + 1) = v18[2];
    *(&v23[1] + 1) = v18[1];
    *(v23 + 1) = v18[0];
    sub_1B8B3468C(&v22);
  }

  v20[8] = v24;
  v20[9] = v25;
  v20[10] = v26;
  v21 = v27;
  v20[4] = v23[1];
  v20[5] = v23[2];
  v20[6] = v23[3];
  v20[7] = v23[4];
  v20[2] = v22;
  v20[3] = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AE0, &qword_1B8C272D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AE8, &qword_1B8C272E0);
  sub_1B8B34CFC(&qword_1EBAA5AF0, &qword_1EBAA5AE0, &qword_1B8C272D8, MEMORY[0x1E6981870]);
  sub_1B8B34CFC(&qword_1EBAA5AF8, &qword_1EBAA5AE8, &qword_1B8C272E0, MEMORY[0x1E6981F48]);
  sub_1B8C24598();
  v13 = v35;
  *(a3 + 96) = v34;
  *(a3 + 112) = v13;
  *(a3 + 128) = v36;
  *(a3 + 144) = v37;
  v14 = v31;
  *(a3 + 32) = v30;
  *(a3 + 48) = v14;
  v15 = v33;
  *(a3 + 64) = v32;
  *(a3 + 80) = v15;
  result = *&v28;
  v17 = v29;
  *a3 = v28;
  *(a3 + 16) = v17;
  return result;
}

uint64_t sub_1B8B31F64@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  v2 = sub_1B8C249C8();
  v4 = v3;
  v6 = v5;
  sub_1B8C24918();
  v7 = sub_1B8C249B8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1B8B34060(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_1B8B34694(v7, v9, v11 & 1);

  sub_1B8B34060(v7, v9, v11 & 1);
}

uint64_t sub_1B8B320CC@<X0>(char *a1@<X0>, int a2@<W1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v66 = a3;
  v60 = a5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A80, &qword_1B8C271F8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v54 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A88, &qword_1B8C27200);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A90, &qword_1B8C27208);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v54 - v11;
  v12 = sub_1B8C245F8();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A98, &qword_1B8C27210);
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v54 - v15;
  v16 = sub_1B8C242A8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AA0, &qword_1B8C27218);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v54 - v24;

  v69 = a1;
  v65 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v26 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    a1 = v70;
  }

  swift_getKeyPath();
  v70 = a1;
  sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  v27 = a1[18];

  if (v27)
  {
    (*(v10 + 56))(v23, 1, 1, v9);
    v28 = sub_1B8B34CFC(&qword_1EBAA5AB0, &qword_1EBAA5A98, &qword_1B8C27210, MEMORY[0x1E697BEF0]);
    v70 = v68;
    v71 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v23, v9, OpaqueTypeConformance2);
    sub_1B8B3433C(v23, &qword_1EBAA5AA0, &qword_1B8C27218);
  }

  else
  {
    if (qword_1EBAA5890 != -1)
    {
      swift_once();
    }

    v30 = v62;
    v31 = __swift_project_value_buffer(v62, qword_1EBAA5898);
    v32 = (*(v61 + 16))(v14, v31, v30);
    MEMORY[0x1EEE9AC00](v32);
    *(&v54 - 4) = v69;
    *(&v54 - 24) = v65 & 1;
    *(&v54 - 2) = v66;
    *(&v54 - 8) = v67 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AB8, &qword_1B8C27248);
    sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248, MEMORY[0x1E697D680]);
    v33 = v63;
    sub_1B8C23DC8();
    v34 = sub_1B8B34CFC(&qword_1EBAA5AB0, &qword_1EBAA5A98, &qword_1B8C27210, MEMORY[0x1E697BEF0]);
    v35 = v54;
    v36 = v68;
    MEMORY[0x1B8CC92F0](v33, v68, v34);
    (*(v10 + 16))(v23, v35, v9);
    (*(v10 + 56))(v23, 0, 1, v9);
    v70 = v36;
    v71 = v34;
    v37 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v23, v9, v37);
    sub_1B8B3433C(v23, &qword_1EBAA5AA0, &qword_1B8C27218);
    (*(v10 + 8))(v35, v9);
    (*(v64 + 8))(v33, v36);
  }

  sub_1B8C245E8();
  v38 = v55;
  sub_1B8C23DC8();
  if (qword_1EBAA58B0 != -1)
  {
    swift_once();
  }

  v39 = v62;
  v40 = __swift_project_value_buffer(v62, qword_1EBAA58B8);
  v41 = (*(v61 + 16))(v14, v40, v39);
  MEMORY[0x1EEE9AC00](v41);
  *(&v54 - 4) = v69;
  *(&v54 - 24) = v65 & 1;
  *(&v54 - 2) = v66;
  *(&v54 - 8) = v67 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AB8, &qword_1B8C27248);
  sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248, MEMORY[0x1E697D680]);
  v42 = v63;
  sub_1B8C23DC8();
  v43 = *(v59 + 48);
  v44 = *(v59 + 64);
  v45 = v25;
  v46 = v57;
  sub_1B8B34450(v25, v57, &qword_1EBAA5AA0, &qword_1B8C27218);
  v47 = v56;
  v48 = v46 + v43;
  v49 = v58;
  (*(v56 + 16))(v48, v38, v58);
  v50 = v64;
  v51 = v46 + v44;
  v52 = v68;
  (*(v64 + 16))(v51, v42, v68);
  sub_1B8C244A8();
  (*(v50 + 8))(v42, v52);
  (*(v47 + 8))(v38, v49);
  return sub_1B8B3433C(v45, &qword_1EBAA5AA0, &qword_1B8C27218);
}

void sub_1B8B32AA8(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v32 = a4;
  v7 = sub_1B8C23E78();
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_1B8C242A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v16 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    a1 = v35;
  }

  v17 = *(a1 + 16);
  v34 = v7;
  if (v17 == 1)
  {
    *(a1 + 16) = 1;
    sub_1B8B7EBA8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v31 - 2) = a1;
    *(&v31 - 8) = 1;
    v35 = a1;
    sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
    sub_1B8C23578();
  }

  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 bundleIdentifier];

  if (v20)
  {
    v21 = sub_1B8C25128();
    v23 = v22;

    if (v21 == 0xD00000000000001ALL && 0x80000001B8C32080 == v23)
    {

LABEL_11:
      v25 = [objc_opt_self() sharedApplication];
      [v25 suspend];

      return;
    }

    v24 = sub_1B8C25A08();

    if (v24)
    {
      goto LABEL_11;
    }
  }

  if ((v32 & 1) == 0)
  {
    sub_1B8C25488();
    v26 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    a3 = v35;
  }

  swift_getKeyPath();
  v35 = a3;
  sub_1B8B342F4(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v27 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  sub_1B8B34450(a3 + v27, v11, &qword_1EBAA5AC8, &qword_1B8C27250);
  v29 = v33;
  v28 = v34;
  if ((*(v33 + 48))(v11, 1, v34))
  {

    sub_1B8B3433C(v11, &qword_1EBAA5AC8, &qword_1B8C27250);
  }

  else
  {
    v30 = v31;
    (*(v29 + 16))(v31, v11, v28);
    sub_1B8B3433C(v11, &qword_1EBAA5AC8, &qword_1B8C27250);
    sub_1B8C23E68();

    (*(v29 + 8))(v30, v28);
  }
}

uint64_t sub_1B8B33098(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1B8C243A8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2 & 1;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4 & 1;

  return MEMORY[0x1EEDDC860](v12, v14, v16 & 1, v18, a8, v19);
}

uint64_t sub_1B8B3317C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_1B8C242A8();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v12 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v22 + 8))(v10, v8);
    v11 = v23;
  }

  swift_getKeyPath();
  v23 = v11;
  sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  v13 = *(v11 + 18);

  if (v13)
  {

    v15 = a1;
    if ((a2 & 1) == 0)
    {
      sub_1B8C25488();
      v16 = sub_1B8C247B8();
      sub_1B8C23C08();

      sub_1B8C24298();
      swift_getAtKeyPath();

      (*(v22 + 8))(v10, v8);
      v15 = v23;
    }

    if (*(v15 + 17))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v21 - 2) = v15;
      *(&v21 - 8) = 0;
      v23 = v15;
      sub_1B8C23578();
    }

    else
    {
      *(v15 + 17) = 0;
    }

    if ((a2 & 1) == 0)
    {
      sub_1B8C25488();
      v19 = sub_1B8C247B8();
      sub_1B8C23C08();

      sub_1B8C24298();
      swift_getAtKeyPath();

      (*(v22 + 8))(v10, v8);
      a1 = v23;
    }

    if (*(a1 + 16))
    {
      v20 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v20);
      *(&v21 - 2) = a1;
      *(&v21 - 8) = 0;
      v23 = a1;
      sub_1B8C23578();
    }

    else
    {
      *(a1 + 16) = 0;
      sub_1B8B7EBA8();
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    *(&v21 - 4) = a1;
    *(&v21 - 24) = a2 & 1;
    *(&v21 - 2) = a3;
    *(&v21 - 8) = a4 & 1;
    sub_1B8C24F58();
    sub_1B8C23F08();
  }
}

uint64_t sub_1B8B33654(uint64_t a1, char a2)
{
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v8 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v12;
  }

  if (*(a1 + 18) == 1)
  {
    *(a1 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = a1;
    *(&v11 - 8) = 1;
    v12 = a1;
    sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B338AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B342F4(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  return sub_1B8B34450(v3 + v4, a2, &qword_1EBAA5AC8, &qword_1B8C27250);
}

uint64_t sub_1B8B33984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B8B34450(a1, &v6 - v3, &qword_1EBAA5AC8, &qword_1B8C27250);
  return sub_1B8B4F4B0(v4);
}

uint64_t sub_1B8B33A30@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1B8C24DA8();
  v2 = *MEMORY[0x1E697C8C0];
  v3 = sub_1B8C24658();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B8B33AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 != 4)
  {
    MEMORY[0x1B8CC9530](a5, a2, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA59C8, &unk_1B8C2A290);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA59D0, &qword_1B8C26FB0);
  sub_1B8C24038();
  sub_1B8B34CFC(&qword_1EBAA59D8, &qword_1EBAA59D0, &qword_1B8C26FB0, MEMORY[0x1E697D680]);
  sub_1B8B342F4(&qword_1EBAA59E0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B8B33CCC(OpaqueTypeConformance2, v7, v8);
  return sub_1B8C24A88();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B8B33CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA59E8;
  if (!qword_1EBAA59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA59E8);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B8B33D5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8B33DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8B33E20(uint64_t a1, id *a2)
{
  result = sub_1B8C25108();
  *a2 = 0;
  return result;
}

uint64_t sub_1B8B33E98(uint64_t a1, id *a2)
{
  v3 = sub_1B8C25118();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B8B33F18@<X0>(uint64_t *a2@<X8>)
{
  sub_1B8C25128();
  v3 = sub_1B8C250F8();

  *a2 = v3;
  return result;
}

uint64_t sub_1B8B33F5C()
{
  v0 = sub_1B8C25128();
  v1 = MEMORY[0x1B8CC9F20](v0);

  return v1;
}

uint64_t sub_1B8B33F98(uint64_t a1)
{
  sub_1B8C25128();
  sub_1B8C251B8();
}

uint64_t sub_1B8B33FEC(uint64_t a1)
{
  sub_1B8C25128();
  sub_1B8C25AB8();
  sub_1B8C251B8();
  v1 = sub_1B8C25AF8();

  return v1;
}

uint64_t sub_1B8B34060(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1B8B34070(void *a1, uint64_t *a2)
{
  v2 = sub_1B8C25128();
  v4 = v3;
  if (v2 == sub_1B8C25128() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B8C25A08();
  }

  return v7 & 1;
}

uint64_t sub_1B8B340F8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B8C250F8();

  *a2 = v3;
  return result;
}

uint64_t sub_1B8B34140(uint64_t a1)
{
  v2 = sub_1B8B342F4(&qword_1EBAA5CB8, type metadata accessor for Key, &unk_1B8C27878);
  v3 = sub_1B8B342F4(&qword_1EBAA5CC0, type metadata accessor for Key, &unk_1B8C277CC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1B8B341FC()
{
  result = qword_1EBAA5A38;
  if (!qword_1EBAA5A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5A30, &unk_1B8C271D0);
    sub_1B8B34CFC(&qword_1EBAA5A40, &qword_1EBAA5A48, &qword_1B8C27B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5A38);
  }

  return result;
}

uint64_t sub_1B8B342F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B3433C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B8B34450(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
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

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1B8B34694(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1B8B346F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B8B34754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8B3479C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8B347F8()
{
  result = qword_1EBAA5C40;
  if (!qword_1EBAA5C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5A10, &qword_1B8C27180);
    sub_1B8B34884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5C40);
  }

  return result;
}

unint64_t sub_1B8B34884()
{
  result = qword_1EBAA5C48;
  if (!qword_1EBAA5C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5A00, &qword_1B8C27170);
    sub_1B8B34CFC(&qword_1EBAA5C50, &qword_1EBAA5C58, qword_1B8C273B8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5C48);
  }

  return result;
}

uint64_t sub_1B8B34C70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1B8B34CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA5CE8;
  if (!qword_1EBAA5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5CE8);
  }

  return result;
}

uint64_t sub_1B8B34CFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AgreementConsentView.ConsentResult.hashValue.getter()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B34E5C()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B34EA4(uint64_t a1)
{
  v2 = *v1;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v2);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B34EE8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1B8B34450(v2, &v14 - v9, &qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1B8C23E78();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1B8C25488();
    v13 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1B8B350E8@<X0>(void *a1@<X8>)
{
  v3 = sub_1B8C242A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AgreementConsentView(0);
  sub_1B8B34450(v1 + *(v10 + 20), v9, &qword_1EBAA5D78, &qword_1B8C27998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1B8C23FE8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1B8C25488();
    v13 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id AgreementConsentView.pendingConsent.getter()
{
  v1 = *(v0 + *(type metadata accessor for AgreementConsentView(0) + 24) + 8);

  return v1;
}

uint64_t type metadata accessor for AgreementConsentView(uint64_t a1)
{
  result = qword_1EBAA5DC0;
  if (!qword_1EBAA5DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B35374(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for AgreementConsentView(0) + 24) + 8);

  objc_storeStrong(v3, v2);
}

void AgreementConsentView.pendingConsent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AgreementConsentView(0) + 24);

  *(v3 + 8) = a1;
}

uint64_t AgreementConsentView.$pendingConsent.getter()
{
  v1 = (v0 + *(type metadata accessor for AgreementConsentView(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1B8B354E4();
  v5 = sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4, MEMORY[0x1E699C678]);

  return MEMORY[0x1EEDDECD0](v2, v3, v4, v5);
}

unint64_t sub_1B8B354E4()
{
  result = qword_1EBAA5D60;
  if (!qword_1EBAA5D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA5D60);
  }

  return result;
}

uint64_t sub_1B8B35530@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AgreementConsentView(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B385DC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B8B247D4(v4, v5);
}

uint64_t sub_1B8B355C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B385B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for AgreementConsentView(0) + 32));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3, v4);
  result = sub_1B8B30A44(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AgreementConsentView.completion.getter()
{
  v1 = (v0 + *(type metadata accessor for AgreementConsentView(0) + 32));
  v2 = *v1;
  sub_1B8B247D4(*v1, v1[1]);
  return v2;
}

uint64_t AgreementConsentView.completion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AgreementConsentView(0) + 32));
  result = sub_1B8B30A44(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AgreementConsentView.init(consent:completion:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for AgreementConsentView(0);
  v8 = v7[5];
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
  swift_storeEnumTagMultiPayload();
  v9 = a4 + v7[7];
  sub_1B8C24D58();
  *v9 = v14;
  *(v9 + 1) = v15;
  v10 = (a4 + v7[8]);
  v11 = (a4 + v7[6]);
  sub_1B8B354E4();
  sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4, MEMORY[0x1E699C678]);
  result = sub_1B8C23F88();
  *v11 = result;
  v11[1] = v13;
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t AgreementConsentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D80, &qword_1B8C279A0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D88, &qword_1B8C279A8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  *v7 = sub_1B8C24468();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D90, &qword_1B8C279B0);
  sub_1B8B35B68(v2, &v7[*(v11 + 44)]);
  KeyPath = swift_getKeyPath();
  v13 = &v7[*(v5 + 44)];
  *v13 = KeyPath;
  v13[8] = 1;
  LOBYTE(v5) = sub_1B8C24818();
  v14 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v5)
  {
    v14 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1B8B3883C(v7, v10, &qword_1EBAA5D80, &qword_1B8C279A0);
  v23 = &v10[*(v8 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D98, &qword_1B8C279E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  v25 = sub_1B8C24838();
  *(inited + 32) = v25;
  v26 = sub_1B8C24858();
  *(inited + 33) = v26;
  v27 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v25)
  {
    v27 = sub_1B8C24848();
  }

  sub_1B8C24848();
  if (sub_1B8C24848() != v26)
  {
    v27 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1B8B3883C(v10, a1, &qword_1EBAA5D88, &qword_1B8C279A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DA0, &qword_1B8C279F0);
  v37 = a1 + *(result + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

void sub_1B8B35B68(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v147 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E50, &qword_1B8C27C48);
  v3 = MEMORY[0x1EEE9AC00](v146);
  v148 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v154 = &v116 - v5;
  v140 = sub_1B8C246F8();
  v138 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v136 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for AgreementConsentView(0);
  v126 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v127 = v7;
  v151 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E58, &qword_1B8C27C50);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v116 - v8;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E60, &qword_1B8C27C58);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v116 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E68, &qword_1B8C27C60);
  MEMORY[0x1EEE9AC00](v132);
  v141 = &v116 - v10;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E70, &qword_1B8C27C68);
  v11 = MEMORY[0x1EEE9AC00](v139);
  v145 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v137 = &v116 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v152 = &v116 - v15;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E78, &qword_1B8C27C70);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v121 = &v116 - v16;
  v120 = sub_1B8C23498();
  v119 = *(v120 - 8);
  v17 = MEMORY[0x1EEE9AC00](v120);
  v118 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v116 = &v116 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v116 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E80, &qword_1B8C27C78);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v144 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v157 = &v116 - v25;
  v123 = sub_1B8C245C8();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E88, &qword_1B8C27C80);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v116 - v30;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E90, &qword_1B8C27C88);
  v142 = *(v143 - 8);
  v32 = MEMORY[0x1EEE9AC00](v143);
  v150 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v156 = &v116 - v34;
  v35 = sub_1B8C23FE8();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8B350E8(v38);
  v39 = sub_1B8C23FD8();
  v40 = (*(v36 + 8))(v38, v35);
  v41 = 0;
  v42 = 0;
  if ((v39 & 1) == 0)
  {
    v43 = *&a1[*(v155 + 24) + 8];
    sub_1B8B354E4();
    sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4, MEMORY[0x1E699C678]);
    v44 = v43;
    v41 = sub_1B8C23F88();
    v42 = v45;
    v40 = v45;
  }

  v128 = v41;
  v149 = v42;
  MEMORY[0x1EEE9AC00](v40);
  v153 = a1;
  *(&v116 - 2) = a1;
  sub_1B8C247E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E98, &qword_1B8C27C90);
  sub_1B8B34CFC(&qword_1EBAA5EA0, &qword_1EBAA5E98, &qword_1B8C27C90, MEMORY[0x1E6981F48]);
  sub_1B8C23D58();
  sub_1B8C245B8();
  v46 = sub_1B8C247E8();
  sub_1B8C247D8();
  sub_1B8C247D8();
  if (sub_1B8C247D8() != v46)
  {
    sub_1B8C247D8();
  }

  sub_1B8B34CFC(&qword_1EBAA5EA8, &qword_1EBAA5E88, &qword_1B8C27C80, MEMORY[0x1E697BE60]);
  sub_1B8C24B78();
  (*(v122 + 8))(v27, v123);
  (*(v29 + 8))(v31, v28);
  v47 = v153;
  v48 = [*&v153[*(v155 + 24) + 8] learnMoreURL];
  if (v48)
  {
    v49 = v116;
    v50 = v48;
    sub_1B8C23448();

    v51 = v119;
    v52 = v117;
    v53 = v120;
    (*(v119 + 32))(v117, v49, v120);
    sub_1B8C243A8();
    (*(v51 + 16))(v118, v52, v53);
    v54 = v121;
    sub_1B8C24958();
    (*(v51 + 8))(v52, v53);
    v55 = v124;
    v56 = v157;
    v57 = v125;
    (*(v124 + 32))(v157, v54, v125);
    v58 = 0;
  }

  else
  {
    v58 = 1;
    v56 = v157;
    v57 = v125;
    v55 = v124;
  }

  (*(v55 + 56))(v56, v58, 1, v57);
  v59 = v151;
  sub_1B8B3860C(v47, v151);
  v60 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v127 += v60;
  v61 = swift_allocObject();
  v62 = sub_1B8B38670(v59, v61 + v60);
  MEMORY[0x1EEE9AC00](v62);
  *(&v116 - 2) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EB0, &qword_1B8C27C98);
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5EB8, &qword_1B8C27CA0);
  v64 = sub_1B8B386E4(&qword_1EBAA5EC0, &qword_1EBAA5EB8, &qword_1B8C27CA0, sub_1B8B38768);
  v161 = v63;
  v162 = v64;
  swift_getOpaqueTypeConformance2();
  v65 = v129;
  sub_1B8C24DB8();
  v66 = v136;
  sub_1B8C246E8();
  sub_1B8B34CFC(&qword_1EBAA5ED0, &qword_1EBAA5E58, &qword_1B8C27C50, MEMORY[0x1E697D680]);
  sub_1B8B387EC(&qword_1EBAA5ED8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v67 = v133;
  v68 = v131;
  v69 = v140;
  sub_1B8C24A68();
  (*(v138 + 8))(v66, v69);
  (*(v130 + 8))(v65, v68);
  LOBYTE(v68) = sub_1B8C24828();
  v70 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v68)
  {
    v70 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v141;
  (*(v134 + 32))(v141, v67, v135);
  v80 = &v79[*(v132 + 36)];
  *v80 = v70;
  *(v80 + 1) = v72;
  *(v80 + 2) = v74;
  *(v80 + 3) = v76;
  *(v80 + 4) = v78;
  v80[40] = 0;
  v81 = v153;
  v82 = &v153[*(v155 + 28)];
  v84 = *(v82 + 1);
  LOBYTE(v161) = *v82;
  v83 = v161;
  v162 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D68();
  v85 = v160;
  KeyPath = swift_getKeyPath();
  v87 = swift_allocObject();
  *(v87 + 16) = v85;
  v88 = v79;
  v89 = v137;
  sub_1B8B3883C(v88, v137, &qword_1EBAA5E68, &qword_1B8C27C60);
  v90 = (v89 + *(v139 + 36));
  *v90 = KeyPath;
  v90[1] = sub_1B8B38834;
  v90[2] = v87;
  v91 = v152;
  sub_1B8B3883C(v89, v152, &qword_1EBAA5E70, &qword_1B8C27C68);
  v92 = v151;
  sub_1B8B3860C(v81, v151);
  v93 = swift_allocObject();
  v94 = sub_1B8B38670(v92, v93 + v60);
  MEMORY[0x1EEE9AC00](v94);
  *(&v116 - 2) = v81;
  v95 = v154;
  sub_1B8C24DB8();
  LOBYTE(v161) = v83;
  v162 = v84;
  sub_1B8C24D68();
  LOBYTE(v92) = v160;
  v96 = swift_getKeyPath();
  v97 = swift_allocObject();
  *(v97 + 16) = v92;
  v98 = &v95[*(v146 + 36)];
  v99 = v95;
  *v98 = v96;
  v98[1] = sub_1B8B38AE0;
  v98[2] = v97;
  sub_1B8C24F48();
  sub_1B8C23E38();
  v155 = v161;
  v153 = v163;
  v151 = v165;
  v146 = v166;
  LOBYTE(v160) = 1;
  v159 = v162;
  v158 = v164;
  v100 = v142;
  v101 = *(v142 + 16);
  v102 = v150;
  v103 = v143;
  v101(v150, v156, v143);
  v104 = v144;
  sub_1B8B34450(v157, v144, &qword_1EBAA5E80, &qword_1B8C27C78);
  v105 = v145;
  sub_1B8B24BF0(v91, v145);
  v106 = v148;
  sub_1B8B34450(v99, v148, &qword_1EBAA5E50, &qword_1B8C27C48);
  LODWORD(v139) = v160;
  LODWORD(v140) = v159;
  LODWORD(v141) = v158;
  v107 = v147;
  v108 = v149;
  *v147 = v128;
  v107[1] = v108;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE8, &qword_1B8C27CE0);
  v101(v107 + v109[12], v102, v103);
  v110 = v107 + v109[16];
  *v110 = 0;
  v110[8] = 1;
  sub_1B8B34450(v104, v107 + v109[20], &qword_1EBAA5E80, &qword_1B8C27C78);
  v111 = v107 + v109[24];
  *v111 = 0x402E000000000000;
  v111[8] = 0;
  sub_1B8B24BF0(v105, v107 + v109[28]);
  sub_1B8B34450(v106, v107 + v109[32], &qword_1EBAA5E50, &qword_1B8C27C48);
  v112 = v107 + v109[36];
  *v112 = 0;
  v112[8] = v139;
  v113 = v154;
  *(v112 + 2) = v155;
  v112[24] = v140;
  *(v112 + 4) = v153;
  v112[40] = v141;
  v114 = v146;
  *(v112 + 6) = v151;
  *(v112 + 7) = v114;
  sub_1B8B3433C(v113, &qword_1EBAA5E50, &qword_1B8C27C48);
  sub_1B8B24C60(v152);
  sub_1B8B3433C(v157, &qword_1EBAA5E80, &qword_1B8C27C78);
  v115 = *(v100 + 8);
  v115(v156, v103);
  sub_1B8B3433C(v106, &qword_1EBAA5E50, &qword_1B8C27C48);
  sub_1B8B24C60(v105);
  sub_1B8B3433C(v104, &qword_1EBAA5E80, &qword_1B8C27C78);
  v115(v150, v103);
}

void sub_1B8B36EF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C23FE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8B350E8(v7);
  v8 = sub_1B8C23FD8();
  (*(v5 + 8))(v7, v4);
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    v11 = *(a1 + *(type metadata accessor for AgreementConsentView(0) + 24) + 8);
    sub_1B8B354E4();
    sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4, MEMORY[0x1E699C678]);
    v12 = v11;
    v9 = sub_1B8C23F88();
    v10 = v13;
    v14 = v13;
  }

  v43 = v9;
  v15 = [*(a1 + *(type metadata accessor for AgreementConsentView(0) + 24) + 8) bodyText];
  sub_1B8C25128();

  sub_1B8C243A8();
  v16 = sub_1B8C249C8();
  v41 = v17;
  v42 = v18;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D98, &qword_1B8C279E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  v22 = sub_1B8C24838();
  *(inited + 32) = v22;
  v23 = sub_1B8C24858();
  *(inited + 33) = v23;
  v24 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v22)
  {
    v24 = sub_1B8C24848();
  }

  sub_1B8C24848();
  v25 = v10;
  if (sub_1B8C24848() != v23)
  {
    v24 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v20 & 1;
  v67 = v20 & 1;
  v64 = 0;
  v35 = v41;
  *&v45 = v16;
  *(&v45 + 1) = v41;
  LOBYTE(v46) = v20 & 1;
  *(&v46 + 1) = *v66;
  DWORD1(v46) = *&v66[3];
  v36 = v16;
  v37 = v42;
  *(&v46 + 1) = v42;
  LOBYTE(v47) = v24;
  DWORD1(v47) = *&v65[3];
  *(&v47 + 1) = *v65;
  *(&v47 + 1) = v26;
  *&v48[0] = v28;
  *(&v48[0] + 1) = v30;
  *&v48[1] = v32;
  BYTE8(v48[1]) = 0;
  *(v52 + 9) = *(v48 + 9);
  v52[0] = v48[0];
  v50 = v46;
  v51 = v47;
  v49 = v45;
  v38 = v25;
  sub_1B8B34450(&v45, v53, &qword_1EBAA5E40, &qword_1B8C27C38);

  v44 = 0;
  *a2 = v43;
  *(a2 + 8) = v25;
  v39 = v52[0];
  *(a2 + 48) = v51;
  *(a2 + 64) = v39;
  *(a2 + 73) = *(v52 + 9);
  v40 = v50;
  *(a2 + 16) = v49;
  *(a2 + 32) = v40;
  *(a2 + 96) = 0x4034000000000000;
  *(a2 + 104) = 0;
  v53[0] = v36;
  v53[1] = v35;
  v54 = v34;
  *&v55[3] = *&v66[3];
  *v55 = *v66;
  v56 = v37;
  v57 = v24;
  *&v58[3] = *&v65[3];
  *v58 = *v65;
  v59 = v27;
  v60 = v29;
  v61 = v31;
  v62 = v33;
  v63 = 0;
  sub_1B8B3433C(v53, &qword_1EBAA5E40, &qword_1B8C27C38);
}

uint64_t sub_1B8B372E8(uint64_t a1)
{
  v1 = [*(a1 + *(type metadata accessor for AgreementConsentView(0) + 24) + 8) agreeButtonText];
  v2 = sub_1B8C25128();
  v4 = v3;

  *&v44[0] = v2;
  *(&v44[0] + 1) = v4;
  sub_1B8B34CA8(v5, v6, v7);
  v8 = sub_1B8C249E8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D98, &qword_1B8C279E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  v16 = sub_1B8C24838();
  *(inited + 32) = v16;
  v17 = sub_1B8C24858();
  *(inited + 33) = v17;
  v18 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v16)
  {
    v18 = sub_1B8C24848();
  }

  sub_1B8C24848();
  if (sub_1B8C24848() != v17)
  {
    v18 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v12 & 1;
  v47 = v12 & 1;
  v46 = 0;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1B8C27920;
  v29 = sub_1B8C24818();
  *(v28 + 32) = v29;
  v30 = sub_1B8C24828();
  *(v28 + 33) = v30;
  v31 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v29)
  {
    v31 = sub_1B8C24848();
  }

  sub_1B8C24848();
  if (sub_1B8C24848() != v30)
  {
    v31 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v48 = 0;
  *&v37 = v8;
  *(&v37 + 1) = v10;
  LOBYTE(v38) = v27;
  *(&v38 + 1) = v14;
  LOBYTE(v39) = v18;
  *(&v39 + 1) = v20;
  *&v40 = v22;
  *(&v40 + 1) = v24;
  *&v41 = v26;
  BYTE8(v41) = 0;
  LOBYTE(v42) = v31;
  *(&v42 + 1) = v32;
  *v43 = v33;
  *&v43[8] = v34;
  *&v43[16] = v35;
  v43[24] = 0;
  sub_1B8C248F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EB8, &qword_1B8C27CA0);
  sub_1B8B386E4(&qword_1EBAA5EC0, &qword_1EBAA5EB8, &qword_1B8C27CA0, sub_1B8B38768);
  sub_1B8C24A48();
  v44[4] = v41;
  v44[5] = v42;
  v45[0] = *v43;
  *(v45 + 9) = *&v43[9];
  v44[0] = v37;
  v44[1] = v38;
  v44[2] = v39;
  v44[3] = v40;
  return sub_1B8B3433C(v44, &qword_1EBAA5EB8, &qword_1B8C27CA0);
}

uint64_t sub_1B8B375EC(uint64_t a1, char a2)
{
  v4 = sub_1B8C23E78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AgreementConsentView(0);
  v9 = (a1 + *(v8 + 28));
  v10 = *v9;
  v11 = *(v9 + 1);
  v15[0] = v10;
  v16 = v11;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D78();
  v12 = *(a1 + *(v8 + 32));
  if (v12)
  {
    v15[0] = a2;
    v12(v15);
  }

  sub_1B8B34EE8(v7);
  sub_1B8C23E68();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B8B37748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for AgreementConsentView(0) + 24) + 8) declineButtonText];
  sub_1B8C25128();

  sub_1B8B34CA8(v4, v5, v6);
  v7 = sub_1B8C249E8();
  v9 = v8;
  v11 = v10;
  sub_1B8C248F8();
  v12 = sub_1B8C24978();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1B8B34060(v7, v9, v11 & 1);

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  return result;
}

uint64_t sub_1B8B37858@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E28, &qword_1B8C27BC0);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v49 - v10);
  v12 = [a1 symbolImageName];
  sub_1B8C25128();

  v13 = sub_1B8C24D08();
  v14 = sub_1B8C248C8();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = sub_1B8C24908();
  sub_1B8B3433C(v5, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = swift_getKeyPath();
  v17 = sub_1B8C24C68();
  v18 = (v11 + *(v7 + 44));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E30, &qword_1B8C27BF8) + 28);
  sub_1B8C24488();
  v20 = sub_1B8C24498();
  (*(*(v20 - 8) + 56))(v18 + v19, 0, 1, v20);
  *v18 = swift_getKeyPath();
  *v11 = v13;
  v11[1] = KeyPath;
  v11[2] = v15;
  v11[3] = v17;
  v21 = [a1 title];
  v22 = sub_1B8C25128();
  v24 = v23;

  v56 = v22;
  v57 = v24;
  sub_1B8B34CA8(v25, v26, v27);
  v28 = sub_1B8C249E8();
  v30 = v29;
  LOBYTE(v24) = v31;
  sub_1B8C248B8();
  v32 = sub_1B8C249B8();
  v34 = v33;
  LOBYTE(v18) = v35;

  sub_1B8B34060(v28, v30, v24 & 1);

  sub_1B8C248D8();
  v36 = sub_1B8C24978();
  v38 = v37;
  LOBYTE(v24) = v39;
  v41 = v40;
  sub_1B8B34060(v32, v34, v18 & 1);

  LOBYTE(v28) = sub_1B8C24808();
  LOBYTE(v56) = v24 & 1;
  LOBYTE(v53) = 1;
  v42 = v50;
  sub_1B8B34450(v11, v50, &qword_1EBAA5E28, &qword_1B8C27BC0);
  v43 = v42;
  v44 = v49;
  sub_1B8B34450(v43, v49, &qword_1EBAA5E28, &qword_1B8C27BC0);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E38, &qword_1B8C27C30) + 48));
  *&v53 = v36;
  *(&v53 + 1) = v38;
  LOBYTE(v54) = v24 & 1;
  *(&v54 + 1) = *v52;
  DWORD1(v54) = *&v52[3];
  *(&v54 + 1) = v41;
  v55[0] = v28;
  *&v55[1] = *v51;
  *&v55[4] = *&v51[3];
  memset(&v55[8], 0, 32);
  v55[40] = 1;
  v46 = v54;
  *v45 = v53;
  v45[1] = v46;
  v47 = *&v55[16];
  v45[2] = *v55;
  v45[3] = v47;
  *(v45 + 57) = *&v55[25];
  sub_1B8B34450(&v53, &v56, &qword_1EBAA5E40, &qword_1B8C27C38);
  sub_1B8B3433C(v11, &qword_1EBAA5E28, &qword_1B8C27BC0);
  v56 = v36;
  v57 = v38;
  v58 = v24 & 1;
  *v59 = *v52;
  *&v59[3] = *&v52[3];
  v60 = v41;
  v61 = v28;
  *v62 = *v51;
  *&v62[3] = *&v51[3];
  v63 = 0u;
  v64 = 0u;
  v65 = 1;
  sub_1B8B3433C(&v56, &qword_1EBAA5E40, &qword_1B8C27C38);
  return sub_1B8B3433C(v50, &qword_1EBAA5E28, &qword_1B8C27BC0);
}

uint64_t sub_1B8B37D84(uint64_t a1)
{
  v2 = sub_1B8C23FE8();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1B8C24128();
}

uint64_t sub_1B8B37E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8C241C8();
  *a1 = result;
  return result;
}

unint64_t sub_1B8B37EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA5DA8;
  if (!qword_1EBAA5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5DA8);
  }

  return result;
}

void sub_1B8B37F3C(uint64_t a1)
{
  sub_1B8B38040(319, &qword_1EBAA5DD0, MEMORY[0x1E697BF90]);
  if (v1 <= 0x3F)
  {
    sub_1B8B38040(319, &qword_1EBAA5DD8, MEMORY[0x1E697E730]);
    if (v2 <= 0x3F)
    {
      sub_1B8B38094(319);
      if (v3 <= 0x3F)
      {
        sub_1B8B38128();
        if (v4 <= 0x3F)
        {
          sub_1B8B38178(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B8B38040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C23D98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B8B38094(uint64_t a1)
{
  if (!qword_1EBAA5DE0)
  {
    sub_1B8B354E4();
    sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4, MEMORY[0x1E699C678]);
    v1 = sub_1B8C23FA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA5DE0);
    }
  }
}

void sub_1B8B38128()
{
  if (!qword_1EBAA5DE8)
  {
    v0 = sub_1B8C24D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA5DE8);
    }
  }
}

void sub_1B8B38178(uint64_t a1)
{
  if (!qword_1EBAA5DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5DF8, &qword_1B8C31BF0);
    v1 = sub_1B8C25608();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA5DF0);
    }
  }
}

uint64_t getEnumTagSinglePayload for AgreementConsentView.ConsentResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AgreementConsentView.ConsentResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8B3836C()
{
  result = qword_1EBAA5E10;
  if (!qword_1EBAA5E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5D80, &qword_1B8C279A0);
    sub_1B8B34CFC(&qword_1EBAA5E18, &qword_1EBAA5E20, &qword_1B8C27B18, MEMORY[0x1E6981870]);
    sub_1B8B34CFC(&qword_1EBAA5A40, &qword_1EBAA5A48, &qword_1B8C27B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5E10);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B8B3845C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8B384A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8B3850C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E48, &qword_1B8C27C40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8B34450(a1, &v5 - v3, &qword_1EBAA5E48, &qword_1B8C27C40);
  return sub_1B8C241B8();
}

uint64_t sub_1B8B3860C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgreementConsentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B38670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgreementConsentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B386E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8B38768()
{
  result = qword_1EBAA5EC8;
  if (!qword_1EBAA5EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5E40, &qword_1B8C27C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5EC8);
  }

  return result;
}

uint64_t sub_1B8B387EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B3883C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_35Tm()
{
  v1 = type metadata accessor for AgreementConsentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B8C23E78();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1B8C23FE8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  if (*(v5 + v1[8]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void *sub_1B8B38B10@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = sub_1B8C23348();
  v6 = v5;

  sub_1B8C257E8();
  MEMORY[0x1B8CC9EB0](0xD000000000000030, 0x80000001B8C32710);
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 0xE400000000000000;
      v10 = 1684099177;
    }

    else
    {
      v9 = 0xE600000000000000;
      v10 = 0x656369766564;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v10 = 0x656E6F685069;
  }

  MEMORY[0x1B8CC9EB0](v10, v9);

  MEMORY[0x1B8CC9EB0](0xD00000000000002BLL, 0x80000001B8C32750);
  v11 = [v2 mainBundle];
  v12 = sub_1B8C23348();
  v14 = v13;

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8C23C38();
  __swift_project_value_buffer(v15, qword_1EBAB3A30);
  v16 = sub_1B8C23C18();
  v17 = sub_1B8C25498();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B8B22000, v16, v17, "Hiding Load More Button", v18, 2u);
    MEMORY[0x1B8CCB0E0](v18, -1, -1);
  }

  type metadata accessor for DonationController(0);
  sub_1B8B38E60();
  v19 = sub_1B8C23DA8();
  v21 = v20;
  result = sub_1B8C24D58();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0xD000000000000011;
  *(a1 + 48) = 0x80000001B8C327D0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = v19;
  *(a1 + 88) = v21 & 1;
  return result;
}

unint64_t sub_1B8B38E60()
{
  result = qword_1EBAA5F00;
  if (!qword_1EBAA5F00)
  {
    type metadata accessor for DonationController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F00);
  }

  return result;
}

unint64_t sub_1B8B38EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA5F08;
  if (!qword_1EBAA5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F08);
  }

  return result;
}

uint64_t ScoreIndicator.init(controller:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_1B8C27D60;
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t ScoreIndicator.init(size:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_1B8C27D60;
  type metadata accessor for ScoreController(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B3A480(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  *(v4 + 24) = *(v5 + 24);
  *a1 = v4;
  *(a1 + 8) = a2;
  return result;
}

uint64_t ScoreIndicator.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_1B8C27D60;
  type metadata accessor for ScoreController(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B3A480(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  *(v2 + 24) = *(v3 + 24);
  *a1 = v2;
  *(a1 + 8) = 0x4050000000000000;
  return result;
}

uint64_t ScoreIndicator.init(controller:size:muteColors:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 24) = xmmword_1B8C27D60;
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

void sub_1B8B391A0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1B8B3A480(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  v2 = floor(sqrt(*(v1 + 24) * 0.5));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v2 > 0)
  {
    sub_1B8C259E8();
  }
}

uint64_t ScoreIndicator.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_1B8C24398();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v19 = sub_1B8C246B8();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F18, &qword_1B8C27DB8);
  v7 = *(v6 - 8);
  v20 = v6;
  v21 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = *(v1 + 16);
  v24[0] = *v1;
  v24[1] = v10;
  v25 = *(v1 + 32);
  v11 = sub_1B8C24F48();
  v13 = v12;
  sub_1B8B39680(v24, v28);
  memcpy(v26, v28, 0x171uLL);
  memcpy(v27, v28, 0x171uLL);
  sub_1B8B34450(v26, v23, &qword_1EBAA5F20, &qword_1B8C27DC0);
  sub_1B8B3433C(v27, &qword_1EBAA5F20, &qword_1B8C27DC0);
  memcpy(&v23[2], v26, 0x171uLL);
  v23[0] = v11;
  v23[1] = v13;
  v23[49] = 0;
  *&v23[50] = *(v24 + 1) * 0.1;
  sub_1B8C246A8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F28, &qword_1B8C27DC8);
  v15 = sub_1B8B3A200();
  sub_1B8C24B68();
  (*(v3 + 8))(v5, v19);
  memcpy(v28, v23, 0x198uLL);
  sub_1B8B3433C(v28, &qword_1EBAA5F28, &qword_1B8C27DC8);
  sub_1B8C24388();
  sub_1B8C24378();
  sub_1B8B391A0();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v23[0] = v14;
  v23[1] = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v20;
  sub_1B8C24B28();

  return (*(v21 + 8))(v9, v16);
}

void *sub_1B8B39680@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v61 - v5;
  v7 = *a1;
  swift_getKeyPath();
  *&v120[0] = v7;
  sub_1B8B3A480(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  if (*(v7 + 17) == 1)
  {
    v8 = sub_1B8C24D08();
    sub_1B8C24C68();
    v9 = sub_1B8C24CD8();

    v95[0] = v8;
    v95[1] = 0;
    LOWORD(v95[2]) = 1;
    v95[3] = v9;
    sub_1B8B3A610(v95);
    memcpy(v63, v95, 0x171uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F70, &qword_1B8C27EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F78, &qword_1B8C27ED0);
    sub_1B8B3A4D4();
    sub_1B8B34CFC(&qword_1EBAA5FA0, &qword_1EBAA5F78, &qword_1B8C27ED0, MEMORY[0x1E6981F48]);
    sub_1B8C24598();
  }

  else
  {
    v61 = v6;
    v62 = a2;
    sub_1B8C24F78();
    v11 = v10;
    v13 = v12;
    sub_1B8C24C68();
    v14 = a1[3];
    v15 = a1[4] * 0.0174532925;
    v16 = sub_1B8C24CD8();

    sub_1B8C23DB8();
    v17 = sub_1B8C24F48();
    v19 = v18;
    sub_1B8C24F48();
    sub_1B8C23E38();
    *&v108 = 0;
    *(&v108 + 1) = v14;
    *&v109 = v15;
    *(&v109 + 1) = v11;
    *&v110[0] = v13;
    *(v110 + 8) = v117;
    *(&v110[1] + 8) = v118;
    *(&v110[2] + 1) = v119;
    *&v111 = v16;
    WORD4(v111) = 256;
    *&v112 = v17;
    *(&v112 + 1) = v19;
    v116 = 0x3FD0000000000000;
    sub_1B8B51580();
    v21 = fmin(v20, 1.0);
    if (v20 > 0.025)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0.025;
    }

    sub_1B8C24F78();
    v24 = v23;
    v26 = v25;
    sub_1B8C24C68();
    v27 = sub_1B8C24CD8();

    sub_1B8C23DB8();
    v28 = sub_1B8C24F48();
    v30 = v29;
    sub_1B8C24F48();
    sub_1B8C23E38();
    *&v96 = 0;
    *(&v96 + 1) = v14 * v22;
    *&v97 = v15;
    *(&v97 + 1) = v24;
    *&v98[0] = v26;
    *(v98 + 8) = v105;
    *(&v98[1] + 8) = v106;
    *(&v98[2] + 1) = v107;
    *&v99 = v27;
    WORD4(v99) = 256;
    *&v100 = v28;
    *(&v100 + 1) = v30;
    v104 = 0x3FF0000000000000;
    v31 = *(a1 + 1);
    v120[0] = *a1;
    v120[1] = v31;
    *&v120[2] = a1[4];
    sub_1B8B391A0();
    v95[0] = v32;
    v95[1] = v33;
    sub_1B8B34CA8(v32, v33, v34);
    v35 = sub_1B8C249E8();
    v37 = v36;
    LOBYTE(v30) = v38;
    sub_1B8C248D8();
    v39 = sub_1B8C24978();
    v41 = v40;
    v43 = v42;
    sub_1B8B34060(v35, v37, v30 & 1);

    sub_1B8C24C68();
    v44 = sub_1B8C24CD8();

    *&v120[0] = v44;
    v45 = sub_1B8C24998();
    v47 = v46;
    v49 = v48;
    sub_1B8B34060(v39, v41, v43 & 1);

    v50 = *MEMORY[0x1E6980E08];
    v51 = sub_1B8C248C8();
    v52 = *(v51 - 8);
    v53 = v61;
    (*(v52 + 104))(v61, v50, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    sub_1B8C24908();
    sub_1B8B3433C(v53, &qword_1EBAA5CD0, &qword_1B8C278C8);
    v54 = sub_1B8C249B8();
    v56 = v55;
    LOBYTE(v51) = v57;
    v59 = v58;

    sub_1B8B34060(v45, v47, v49 & 1);

    v84 = v114;
    v85 = v115;
    v80 = v110[2];
    v81 = v111;
    v82 = v112;
    v83 = v113;
    v76 = v108;
    v77 = v109;
    v78 = v110[0];
    v79 = v110[1];
    v73 = v102;
    v74 = v103;
    v69 = v98[2];
    v70 = v99;
    v71 = v100;
    v72 = v101;
    v65 = v96;
    v66 = v97;
    v67 = v98[0];
    v68 = v98[1];
    v87[8] = v114;
    v87[9] = v115;
    v87[4] = v110[2];
    v87[5] = v111;
    v87[7] = v113;
    v87[6] = v112;
    v87[0] = v108;
    v87[1] = v109;
    v87[3] = v110[1];
    v87[2] = v110[0];
    v64[8] = v114;
    v64[9] = v115;
    v64[4] = v110[2];
    v64[5] = v111;
    v64[6] = v112;
    v64[7] = v113;
    v64[0] = v108;
    v64[1] = v109;
    v64[2] = v110[0];
    v64[3] = v110[1];
    v89[8] = v102;
    v89[9] = v103;
    v89[4] = v98[2];
    v89[5] = v99;
    v89[7] = v101;
    v89[6] = v100;
    v89[0] = v96;
    v89[1] = v97;
    v89[3] = v98[1];
    v89[2] = v98[0];
    *(&v64[18] + 8) = v102;
    *(&v64[19] + 8) = v103;
    *(&v64[16] + 8) = v100;
    *(&v64[17] + 8) = v101;
    *(&v64[13] + 8) = v98[1];
    *(&v64[14] + 8) = v98[2];
    *(&v64[15] + 8) = v99;
    *(&v64[10] + 8) = v96;
    *(&v64[11] + 8) = v97;
    v86 = v116;
    v75 = v104;
    v88 = v116;
    v90 = v104;
    *&v64[10] = v116;
    *(&v64[20] + 1) = v104;
    *(&v64[12] + 8) = v98[0];
    LOBYTE(v45) = v51 & 1;
    v63[376] = v51 & 1;
    sub_1B8B34450(&v108, v120, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B34450(&v96, v120, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B34694(v54, v56, v51 & 1);

    sub_1B8B34450(v87, v120, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B34450(v89, v120, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B34694(v54, v56, v51 & 1);

    sub_1B8B34060(v54, v56, v51 & 1);

    v91[8] = v73;
    v91[9] = v74;
    v92 = v75;
    v91[4] = v69;
    v91[5] = v70;
    v91[7] = v72;
    v91[6] = v71;
    v91[0] = v65;
    v91[1] = v66;
    v91[3] = v68;
    v91[2] = v67;
    sub_1B8B3433C(v91, &qword_1EBAA5F68, &qword_1B8C27EC0);
    v93[8] = v84;
    v93[9] = v85;
    v94 = v86;
    v93[4] = v80;
    v93[5] = v81;
    v93[7] = v83;
    v93[6] = v82;
    v93[0] = v76;
    v93[1] = v77;
    v93[3] = v79;
    v93[2] = v78;
    sub_1B8B3433C(v93, &qword_1EBAA5F68, &qword_1B8C27EC0);
    memcpy(v95, v64, 0x150uLL);
    v95[42] = v54;
    v95[43] = v56;
    LOBYTE(v95[44]) = v51 & 1;
    v95[45] = v59;
    sub_1B8B3A4C8(v95);
    memcpy(v120, v95, 0x171uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F70, &qword_1B8C27EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F78, &qword_1B8C27ED0);
    sub_1B8B3A4D4();
    sub_1B8B34CFC(&qword_1EBAA5FA0, &qword_1EBAA5F78, &qword_1B8C27ED0, MEMORY[0x1E6981F48]);
    a2 = v62;
    sub_1B8C24598();
    sub_1B8B34060(v54, v56, v45);

    sub_1B8B3433C(&v96, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B3433C(&v108, &qword_1EBAA5F68, &qword_1B8C27EC0);
    memcpy(v120, v63, 0x171uLL);
  }

  return memcpy(a2, v120, 0x171uLL);
}

void sub_1B8B3A130(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B3A480(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  *a2 = *(v3 + 24);
}

unint64_t sub_1B8B3A200()
{
  result = qword_1EBAA5F30;
  if (!qword_1EBAA5F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F28, &qword_1B8C27DC8);
    sub_1B8B34CFC(&qword_1EBAA5F38, &qword_1EBAA5F40, &qword_1B8C27DD0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F30);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B8B3A2E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B8B3A330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8B3A388()
{
  result = qword_1EBAA5F48;
  if (!qword_1EBAA5F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F50, &qword_1B8C27E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F28, &qword_1B8C27DC8);
    sub_1B8B3A200();
    swift_getOpaqueTypeConformance2();
    sub_1B8B3A480(&qword_1EBAA5F58, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F48);
  }

  return result;
}

uint64_t sub_1B8B3A480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8B3A4D4()
{
  result = qword_1EBAA5F80;
  if (!qword_1EBAA5F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F70, &qword_1B8C27EC8);
    sub_1B8B3A58C();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F80);
  }

  return result;
}

unint64_t sub_1B8B3A58C()
{
  result = qword_1EBAA5F88;
  if (!qword_1EBAA5F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F90, &unk_1B8C27ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F88);
  }

  return result;
}

uint64_t type metadata accessor for SkipButton(uint64_t a1)
{
  result = qword_1EBAA5FA8;
  if (!qword_1EBAA5FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B3A68C(uint64_t a1)
{
  sub_1B8B3A760(319, &qword_1EBAA5FB8, type metadata accessor for BatchController);
  if (v1 <= 0x3F)
  {
    sub_1B8B3A760(319, &qword_1EBAA5FC0, type metadata accessor for FBKEvaluationController);
    if (v2 <= 0x3F)
    {
      type metadata accessor for BatchInteraction(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B3A760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C23D98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B8B3A7D0()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1B8C25488();
    v7 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

id sub_1B8B3A910()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {

    return v5;
  }

  else
  {
    v9[0] = *(v0 + 16);

    sub_1B8C25488();
    v7 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();
    v8 = sub_1B8B3B060(v9[0], 0);
    (*(v2 + 8))(v4, v1, v8);
    return v9[1];
  }
}

uint64_t sub_1B8B3AA7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1B8C24038();
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SkipButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FC8, &qword_1B8C27F48);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD0, &qword_1B8C27F50);
  v12 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v14 = &v25 - v13;
  sub_1B8B3AFFC(v2, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1B8B3B1DC(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_1B8C24DB8();
  v17 = sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v29 = v17;
  v19 = sub_1B8C23E48();
  v20 = &v11[*(v9 + 36)];
  *v20 = KeyPath;
  v20[1] = v19;
  sub_1B8C24028();
  v21 = sub_1B8B3B2A0();
  v22 = sub_1B8B3B534(&qword_1EBAA59E0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  sub_1B8C24A68();
  (*(v27 + 8))(v5, v3);
  sub_1B8B3B384(v11);
  sub_1B8C243A8();
  v29 = v9;
  v30 = v3;
  v31 = v21;
  v32 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_1B8C24B28();

  return (*(v12 + 8))(v14, v23);
}

void sub_1B8B3AE7C(uint64_t a1)
{
  sub_1B8B3A7D0();
  v2 = *(type metadata accessor for SkipButton(0) + 24);
  v3 = sub_1B8B3A910();
  sub_1B8B4D64C(2u, a1 + v2, v3);
}

uint64_t sub_1B8B3AEF8@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  v2 = sub_1B8C249C8();
  v4 = v3;
  v6 = v5;
  sub_1B8C24C68();
  v7 = sub_1B8C24998();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1B8B34060(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1B8B3AFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SkipButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1B8B3B060(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

void *sub_1B8B3B06C(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  if (a10 == 2)
  {
    v16 = a8;

    return sub_1B8B3B1B4(a6, a7, v16);
  }

  else
  {
    if (a10 == 1)
    {

      sub_1B8B3B174(a3, a4, a5);
    }

    else if (a10)
    {
      return result;
    }
  }
}

void *sub_1B8B3B174(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B8B3B1B4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B8B3B1CC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B8B3B1CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B8B3B1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SkipButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B8B3B240()
{
  v1 = *(type metadata accessor for SkipButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1B8B3AE7C(v2);
}

unint64_t sub_1B8B3B2A0()
{
  result = qword_1EBAA5FE0;
  if (!qword_1EBAA5FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5FC8, &qword_1B8C27F48);
    sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248, MEMORY[0x1E697D680]);
    sub_1B8B34CFC(&qword_1EBAA5FE8, &qword_1EBAA5FF0, &qword_1B8C27F88, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5FE0);
  }

  return result;
}

uint64_t sub_1B8B3B384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FC8, &qword_1B8C27F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B3B3EC()
{
  result = qword_1EBAA5FF8;
  if (!qword_1EBAA5FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6000, &unk_1B8C27F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5FC8, &qword_1B8C27F48);
    sub_1B8C24038();
    sub_1B8B3B2A0();
    sub_1B8B3B534(&qword_1EBAA59E0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1B8B3B534(&qword_1EBAA5F58, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5FF8);
  }

  return result;
}

uint64_t sub_1B8B3B534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for Previewer(uint64_t a1)
{
  result = qword_1EBAA6010;
  if (!qword_1EBAA6010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B3B5F0(uint64_t a1)
{
  type metadata accessor for BatchInteraction(319);
  if (v1 <= 0x3F)
  {
    sub_1B8B3B6F4(319, &qword_1EBAA6020, type metadata accessor for BatchInteraction.ContentPreview, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B8B3B6F4(319, &qword_1EBAA6028, type metadata accessor for FullScreenPreviewController, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B3B6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B8B3B774@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C24D18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1B8C24CF8();
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v8 = sub_1B8C24D28();

  (*(v4 + 8))(v6, v3);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA61A0, &qword_1B8C28168) + 36));
  v10 = *(sub_1B8C24078() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1B8C24418();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #16.0 }

  *v9 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA61A8, &unk_1B8C2CE50);
  *&v9[*(result + 36)] = 256;
  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1B8B3B93C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Previewer(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = type metadata accessor for BatchInteraction(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B3F4F0(v2, v10, type metadata accessor for BatchInteraction);
  v11 = *(v2 + *(v5 + 32));
  v12 = (v2 + *(v5 + 36));
  v14 = *v12;
  v13 = v12[1];
  v25 = v14;
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
  sub_1B8C24D88();
  v15 = v23;
  v22 = v24;
  sub_1B8B3F4F0(v2, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Previewer);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_1B8B3E91C(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1B8B3F4F0(v10, a1, type metadata accessor for BatchInteraction);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6038, &qword_1B8C28008);
  v19 = a1 + v18[12];
  *v19 = v15;
  *(v19 + 8) = v22;
  *(a1 + v18[9]) = v11;
  result = sub_1B8B3F624(v10, type metadata accessor for BatchInteraction);
  *(a1 + v18[11]) = MEMORY[0x1E69E7CC0];
  v21 = (a1 + v18[10]);
  *v21 = sub_1B8B3E980;
  v21[1] = v17;
  return result;
}

uint64_t sub_1B8B3BB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1B8C242D8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6040, &qword_1B8C28010);
  return sub_1B8B3BBD8(a1, a2 + *(v4 + 44));
}

uint64_t sub_1B8B3BBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6048, &qword_1B8C28018);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  *v9 = sub_1B8C24478();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6050, &qword_1B8C28020);
  sub_1B8B3BD30(a1, &v9[*(v10 + 44)]);
  sub_1B8B34450(v9, v7, &qword_1EBAA6048, &qword_1B8C28018);
  sub_1B8B34450(v7, a2, &qword_1EBAA6048, &qword_1B8C28018);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6058, &qword_1B8C28028) + 48);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_1B8B3433C(v9, &qword_1EBAA6048, &qword_1B8C28018);
  return sub_1B8B3433C(v7, &qword_1EBAA6048, &qword_1B8C28018);
}

uint64_t sub_1B8B3BD30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v255 = a2;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6060, &qword_1B8C28030);
  v205 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v204 = v203 - v3;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6068, &qword_1B8C28038);
  v206 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v207 = v203 - v4;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6070, &qword_1B8C28040);
  MEMORY[0x1EEE9AC00](v215);
  v217 = v203 - v5;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6078, &qword_1B8C28048);
  MEMORY[0x1EEE9AC00](v208);
  v209 = (v203 - v6);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6080, &qword_1B8C28050);
  MEMORY[0x1EEE9AC00](v216);
  v210 = v203 - v7;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6088, &qword_1B8C28058);
  MEMORY[0x1EEE9AC00](v237);
  v219 = v203 - v8;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6090, &qword_1B8C28060);
  MEMORY[0x1EEE9AC00](v252);
  v253 = v203 - v9;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6098, &qword_1B8C28068);
  MEMORY[0x1EEE9AC00](v234);
  v235 = (v203 - v10);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60A0, &qword_1B8C28070);
  MEMORY[0x1EEE9AC00](v251);
  v236 = v203 - v11;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60A8, &qword_1B8C28078);
  MEMORY[0x1EEE9AC00](v254);
  v13 = v203 - v12;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60B0, &qword_1B8C28080);
  MEMORY[0x1EEE9AC00](v233);
  v214 = (v203 - v14);
  v229 = type metadata accessor for WebView(0);
  MEMORY[0x1EEE9AC00](v229);
  v213 = (v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60B8, &qword_1B8C28088);
  MEMORY[0x1EEE9AC00](v226);
  v228 = v203 - v16;
  *&v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60C0, &qword_1B8C28090);
  MEMORY[0x1EEE9AC00](v248);
  v230 = v203 - v17;
  v18 = sub_1B8C23328();
  v241 = *(v18 - 8);
  v242 = v18;
  v19 = *(v241 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v222 = v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v240 = v203 - v21;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60C8, &qword_1B8C28098);
  v232 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v231 = v203 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60D0, &qword_1B8C280A0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v203 - v24;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60D8, &qword_1B8C280A8);
  MEMORY[0x1EEE9AC00](v244);
  v246 = v203 - v26;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60E0, &qword_1B8C280B0);
  MEMORY[0x1EEE9AC00](v223);
  v224 = v203 - v27;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60E8, &qword_1B8C280B8);
  MEMORY[0x1EEE9AC00](v245);
  v227 = v203 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60F0, &qword_1B8C280C0);
  MEMORY[0x1EEE9AC00](v29);
  *&v249 = v203 - v30;
  v31 = type metadata accessor for Previewer(0);
  v238 = *(v31 - 8);
  v32 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v239 = v203 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60F8, &qword_1B8C280C8);
  v212 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v221 = v203 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = v203 - v35;
  v37 = *(v31 + 20);
  v250 = a1;
  sub_1B8B3E9F0(a1 + v37, v36);
  v38 = type metadata accessor for BatchInteraction.ContentPreview(0);
  if ((*(*(v38 - 8) + 48))(v36, 1, v38) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1B8B3EA60();
    sub_1B8C24598();
    v39 = &qword_1EBAA60A8;
    v40 = &qword_1B8C28078;
    sub_1B8B34450(v13, v25, &qword_1EBAA60A8, &qword_1B8C28078);
    swift_storeEnumTagMultiPayload();
    sub_1B8B3EF04();
    sub_1B8B3F1FC();
    sub_1B8C24598();
    v41 = v13;
LABEL_3:
    v42 = v39;
    v43 = v40;
    return sub_1B8B3433C(v41, v42, v43);
  }

  v203[0] = v13;
  v203[1] = v23;
  v220 = v29;
  v243 = v25;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v55 = v243;
    if (EnumCaseMultiPayload == 3)
    {
      v112 = *v36;
      v111 = *(v36 + 1);
      v113 = *(v36 + 2);
      v114 = sub_1B8C24478();
      v115 = v214;
      *v214 = v114;
      *(v115 + 8) = 0;
      *(v115 + 16) = 1;
      v116 = v115 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6188, &qword_1B8C280D8) + 44);
      sub_1B8B3E034(v111, v113, v250, v112, v116);

      sub_1B8B34450(v115, v235, &qword_1EBAA60B0, &qword_1B8C28080);
      swift_storeEnumTagMultiPayload();
      sub_1B8B34CFC(&qword_1EBAA6108, &qword_1EBAA60B0, &qword_1B8C28080, MEMORY[0x1E6981870]);
      sub_1B8B3EB18();
      v117 = v236;
      sub_1B8C24598();
      sub_1B8B34450(v117, v253, &qword_1EBAA60A0, &qword_1B8C28070);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EA60();
      v118 = v203[0];
      sub_1B8C24598();
      sub_1B8B3433C(v117, &qword_1EBAA60A0, &qword_1B8C28070);
      sub_1B8B34450(v118, v55, &qword_1EBAA60A8, &qword_1B8C28078);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EF04();
      sub_1B8B3F1FC();
      sub_1B8C24598();

      sub_1B8B3433C(v118, &qword_1EBAA60A8, &qword_1B8C28078);
      v41 = v115;
      v42 = &qword_1EBAA60B0;
      v43 = &qword_1B8C28080;
      return sub_1B8B3433C(v41, v42, v43);
    }

    if (EnumCaseMultiPayload != 4)
    {
      *&v269[9] = *(v36 + 57);
      v133 = *(v36 + 1);
      v266 = *v36;
      v267 = v133;
      v134 = *(v36 + 3);
      v268 = *(v36 + 2);
      *v269 = v134;
      v135 = v266;
      if (v269[24])
      {
        *&v256[25] = *(v36 + 25);
        *&v256[41] = *(v36 + 41);
        if (v269[24] == 1)
        {
          *&v256[56] = *(v36 + 56);
          *&v256[9] = *(v36 + 9);
          *v256 = v266;
          v256[8] = BYTE8(v266);
          v136 = (v250 + *(v31 + 28));
          v138 = *v136;
          v137 = v136[1];
          v261 = v138;
          v262 = v137;
          v139 = *v36;
          v140 = *(v36 + 1);
          *(v265 + 9) = *(v36 + 57);
          v141 = *(v36 + 3);
          v264 = *(v36 + 2);
          v265[0] = v141;
          *v263 = v139;
          *&v263[16] = v140;
          sub_1B8B3F38C(v263, &v257);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
          sub_1B8C24D68();
          v142 = type metadata accessor for FullScreenPreviewController(0);
          v145 = sub_1B8B3EE5C(v142, v143, v144);
          v146 = sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
          v147 = v207;
          v148 = v142;
          v250 = v142;
          sub_1B8C24A78();

          v259[1] = *&v256[48];
          v260 = *&v256[64];
          v258 = *&v256[16];
          v259[0] = *&v256[32];
          v257 = *v256;
          sub_1B8B3F3E8(&v257);
          v149 = v206;
          v150 = v147;
          v151 = v211;
          (*(v206 + 16))(v209, v150, v211);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6128, &qword_1B8C280D0);
          sub_1B8B3ED28();
          *v256 = &type metadata for ImagePlaygroundPreviewController;
          *&v256[8] = v148;
          *&v256[16] = v145;
          *&v256[24] = v146;
          swift_getOpaqueTypeConformance2();
          v152 = v210;
          sub_1B8C24598();
          sub_1B8B34450(v152, v217, &qword_1EBAA6080, &qword_1B8C28050);
          swift_storeEnumTagMultiPayload();
          v153 = sub_1B8B3EC20();
          v156 = sub_1B8B3EEB0(v153, v154, v155);
          *v256 = &type metadata for GenmojiPreviewController;
          *&v256[8] = v250;
          *&v256[16] = v156;
          *&v256[24] = v146;
          swift_getOpaqueTypeConformance2();
          v157 = v219;
          sub_1B8C24598();
          sub_1B8B3433C(v152, &qword_1EBAA6080, &qword_1B8C28050);
          (*(v149 + 8))(v207, v151);
        }

        else
        {
          *&v256[9] = *(v36 + 9);
          *v256 = v266;
          v256[8] = BYTE8(v266);
          v164 = (v250 + *(v31 + 28));
          v166 = *v164;
          v165 = v164[1];
          v261 = v166;
          v262 = v165;
          v167 = *v36;
          v168 = *(v36 + 1);
          *(v265 + 9) = *(v36 + 57);
          v169 = *(v36 + 3);
          v264 = *(v36 + 2);
          v265[0] = v169;
          *v263 = v167;
          *&v263[16] = v168;
          sub_1B8B3F288(v263, &v257);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
          sub_1B8C24D68();
          v170 = type metadata accessor for FullScreenPreviewController(0);
          v173 = sub_1B8B3EEB0(v170, v171, v172);
          v174 = sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
          v175 = v204;
          sub_1B8C24A78();

          v257 = *v256;
          v258 = *&v256[16];
          v259[0] = *&v256[32];
          *(v259 + 9) = *&v256[41];
          sub_1B8B3F2E4(&v257);
          v176 = v205;
          v177 = v218;
          (*(v205 + 16))(v217, v175, v218);
          swift_storeEnumTagMultiPayload();
          sub_1B8B3EC20();
          *v256 = &type metadata for GenmojiPreviewController;
          *&v256[8] = v170;
          *&v256[16] = v173;
          *&v256[24] = v174;
          swift_getOpaqueTypeConformance2();
          v157 = v219;
          sub_1B8C24598();
          (*(v176 + 8))(v175, v177);
        }
      }

      else
      {
        v158 = (v250 + *(v31 + 28));
        v160 = *v158;
        v159 = v158[1];
        *&v257 = v160;
        *(&v257 + 1) = v159;
        if (BYTE8(v266))
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
          v161 = sub_1B8C24D88();
          *&v257 = v135;
          *(&v257 + 1) = *v263;
          v258 = *&v263[8];
          LOBYTE(v259[0]) = 1;
        }

        else
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
          v161 = sub_1B8C24D88();
          *&v257 = v135;
          *(&v257 + 1) = *v263;
          v258 = *&v263[8];
          LOBYTE(v259[0]) = 0;
        }

        v178 = sub_1B8B3EDB4(v161, v162, v163);
        sub_1B8B3EE08(v178, v179, v180);
        sub_1B8C24598();
        v182 = v264;
        v248 = *&v263[16];
        v181 = *&v263[16];
        v249 = *v263;
        v183 = v209;
        *v209 = *v263;
        v183[1] = v181;
        *(v183 + 32) = v182;
        swift_storeEnumTagMultiPayload();
        v186 = v249;
        v185 = v186 >> 64;
        v184 = v186;
        v250 = v249;
        *&v249 = *(&v249 + 1);
        v187 = v248;
        sub_1B8B3F43C(v250, *(&v249 + 1), v248, *(&v248 + 1));
        sub_1B8B3F43C(v184, v185, v187, *(&v187 + 1));
        *&v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6128, &qword_1B8C280D0);
        sub_1B8B3ED28();
        v188 = type metadata accessor for FullScreenPreviewController(255);
        v191 = sub_1B8B3EE5C(v188, v189, v190);
        v192 = sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
        *v263 = &type metadata for ImagePlaygroundPreviewController;
        *&v263[8] = v188;
        *&v263[16] = v191;
        *&v263[24] = v192;
        swift_getOpaqueTypeConformance2();
        v193 = v210;
        sub_1B8C24598();
        sub_1B8B34450(v193, v217, &qword_1EBAA6080, &qword_1B8C28050);
        swift_storeEnumTagMultiPayload();
        v194 = sub_1B8B3EC20();
        v197 = sub_1B8B3EEB0(v194, v195, v196);
        *v263 = &type metadata for GenmojiPreviewController;
        *&v263[8] = v188;
        *&v263[16] = v197;
        *&v263[24] = v192;
        swift_getOpaqueTypeConformance2();
        v157 = v219;
        sub_1B8C24598();
        v198 = v250;
        v199 = v249;
        sub_1B8B3F498(v250, v249, v187, *(&v187 + 1));
        sub_1B8B3F498(v198, v199, v187, *(&v187 + 1));
        sub_1B8B3433C(v193, &qword_1EBAA6080, &qword_1B8C28050);
      }

      v39 = &qword_1EBAA6088;
      v40 = &qword_1B8C28058;
      sub_1B8B34450(v157, v235, &qword_1EBAA6088, &qword_1B8C28058);
      swift_storeEnumTagMultiPayload();
      sub_1B8B34CFC(&qword_1EBAA6108, &qword_1EBAA60B0, &qword_1B8C28080, MEMORY[0x1E6981870]);
      sub_1B8B3EB18();
      v200 = v236;
      sub_1B8C24598();
      sub_1B8B34450(v200, v253, &qword_1EBAA60A0, &qword_1B8C28070);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EA60();
      v201 = v157;
      v202 = v203[0];
      sub_1B8C24598();
      sub_1B8B3433C(v200, &qword_1EBAA60A0, &qword_1B8C28070);
      sub_1B8B34450(v202, v243, &qword_1EBAA60A8, &qword_1B8C28078);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EF04();
      sub_1B8B3F1FC();
      sub_1B8C24598();
      sub_1B8B3F338(&v266);
      sub_1B8B3433C(v202, &qword_1EBAA60A8, &qword_1B8C28078);
      v41 = v201;
      goto LABEL_3;
    }

    v57 = v240;
    v56 = v241;
    v58 = *(v241 + 32);
    v251 = v241 + 32;
    v252 = v58;
    v59 = v242;
    v58(v240, v36, v242);
    v235 = *(v56 + 16);
    v235(v222, v57, v59);
    v60 = sub_1B8C249D8();
    v62 = v61;
    LOBYTE(v57) = v63;
    v233 = v64;
    sub_1B8C248A8();
    v65 = sub_1B8C249B8();
    v236 = v65;
    v237 = v66;
    v253 = v67;
    LODWORD(v234) = v68;
    v69 = v66;

    sub_1B8B34060(v60, v62, v57 & 1);

    *&v266 = v65;
    *(&v266 + 1) = v253;
    LOBYTE(v62) = v234 & 1;
    LOBYTE(v267) = v234 & 1;
    *(&v267 + 1) = v69;
    v70 = v239;
    sub_1B8B3F4F0(v250, v239, type metadata accessor for Previewer);
    v71 = v222;
    v72 = v242;
    v235(v222, v240, v242);
    v73 = (*(v238 + 80) + 16) & ~*(v238 + 80);
    v74 = (v32 + *(v241 + 80) + v73) & ~*(v241 + 80);
    v75 = swift_allocObject();
    sub_1B8B3E91C(v70, v75 + v73);
    v252(v75 + v74, v71, v72);
    v76 = MEMORY[0x1E6981148];
    v77 = MEMORY[0x1E6981138];
    v78 = v231;
    sub_1B8C24AA8();

    sub_1B8B34060(v236, v253, v62);

    v79 = v232;
    v80 = v247;
    (*(v232 + 16))(v228, v78, v247);
    swift_storeEnumTagMultiPayload();
    *&v266 = v76;
    *(&v266 + 1) = v77;
    swift_getOpaqueTypeConformance2();
    sub_1B8B3F1B4(&qword_1EBAA6178, type metadata accessor for WebView, &unk_1B8C2EA38);
    v81 = v230;
    sub_1B8C24598();
    sub_1B8B34450(v81, v246, &qword_1EBAA60C0, &qword_1B8C28090);
    swift_storeEnumTagMultiPayload();
    sub_1B8B3EF90();
    sub_1B8B3F0C8();
    v82 = v249;
    sub_1B8C24598();
    sub_1B8B3433C(v81, &qword_1EBAA60C0, &qword_1B8C28090);
    sub_1B8B34450(v82, v243, &qword_1EBAA60F0, &qword_1B8C280C0);
    swift_storeEnumTagMultiPayload();
    sub_1B8B3EF04();
    sub_1B8B3F1FC();
    sub_1B8C24598();
    sub_1B8B3433C(v82, &qword_1EBAA60F0, &qword_1B8C280C0);
    (*(v79 + 8))(v78, v80);
    return (*(v241 + 8))(v240, v242);
  }

  else
  {
    v48 = v243;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v49 = *(v36 + 1);
        v50 = v213;
        *v213 = *v36;
        *(v50 + 8) = v49;
        type metadata accessor for WebView.HTMLContent(0);
        swift_storeEnumTagMultiPayload();
        v52 = v228;
        v51 = v229;
        *(v50 + *(v229 + 20)) = 0;
        *(v50 + *(v51 + 24)) = 0;
        sub_1B8B3F4F0(v50, v52, type metadata accessor for WebView);
        swift_storeEnumTagMultiPayload();
        *&v266 = MEMORY[0x1E6981148];
        *(&v266 + 1) = MEMORY[0x1E6981138];
        swift_getOpaqueTypeConformance2();
        sub_1B8B3F1B4(&qword_1EBAA6178, type metadata accessor for WebView, &unk_1B8C2EA38);
        v53 = v230;
        sub_1B8C24598();
        sub_1B8B34450(v53, v246, &qword_1EBAA60C0, &qword_1B8C28090);
        swift_storeEnumTagMultiPayload();
        sub_1B8B3EF90();
        sub_1B8B3F0C8();
        v54 = v249;
        sub_1B8C24598();
        sub_1B8B3433C(v53, &qword_1EBAA60C0, &qword_1B8C28090);
        sub_1B8B34450(v54, v48, &qword_1EBAA60F0, &qword_1B8C280C0);
        swift_storeEnumTagMultiPayload();
        sub_1B8B3EF04();
        sub_1B8B3F1FC();
        sub_1B8C24598();
        sub_1B8B3433C(v54, &qword_1EBAA60F0, &qword_1B8C280C0);
        return sub_1B8B3F624(v50, type metadata accessor for WebView);
      }

      else
      {
        *&v266 = *v36;
        v119 = v266;
        v120 = v239;
        sub_1B8B3F4F0(v250, v239, type metadata accessor for Previewer);
        v121 = (*(v238 + 80) + 16) & ~*(v238 + 80);
        v122 = swift_allocObject();
        v123 = sub_1B8B3E91C(v120, v122 + v121);
        *(v122 + ((v32 + v121 + 7) & 0xFFFFFFFFFFFFFFF8)) = v119;
        v126 = sub_1B8B3F074(v123, v124, v125);
        v127 = v119;
        v253 = v127;
        v128 = v221;
        sub_1B8C24AA8();

        v129 = v212;
        v130 = v225;
        (*(v212 + 16))(v224, v128, v225);
        swift_storeEnumTagMultiPayload();
        *&v266 = &type metadata for DataImage;
        *(&v266 + 1) = v126;
        swift_getOpaqueTypeConformance2();
        *&v266 = MEMORY[0x1E6981148];
        *(&v266 + 1) = MEMORY[0x1E6981138];
        swift_getOpaqueTypeConformance2();
        v131 = v227;
        sub_1B8C24598();
        sub_1B8B34450(v131, v246, &qword_1EBAA60E8, &qword_1B8C280B8);
        swift_storeEnumTagMultiPayload();
        sub_1B8B3EF90();
        sub_1B8B3F0C8();
        v132 = v249;
        sub_1B8C24598();
        sub_1B8B3433C(v131, &qword_1EBAA60E8, &qword_1B8C280B8);
        sub_1B8B34450(v132, v48, &qword_1EBAA60F0, &qword_1B8C280C0);
        swift_storeEnumTagMultiPayload();
        sub_1B8B3EF04();
        sub_1B8B3F1FC();
        sub_1B8C24598();

        sub_1B8B3433C(v132, &qword_1EBAA60F0, &qword_1B8C280C0);
        return (*(v129 + 8))(v221, v130);
      }
    }

    else
    {
      v83 = *v36;
      v252 = *(v36 + 1);
      v253 = v83;
      *&v266 = v83;
      *(&v266 + 1) = v252;
      sub_1B8B34CA8(EnumCaseMultiPayload, v46, v47);

      v84 = sub_1B8C249E8();
      v86 = v85;
      v88 = v87;
      sub_1B8C248A8();
      v89 = sub_1B8C249B8();
      v251 = v89;
      v91 = v90;
      v242 = v90;
      LODWORD(v241) = v92;
      v94 = v93;

      sub_1B8B34060(v84, v86, v88 & 1);

      *&v266 = v89;
      *(&v266 + 1) = v91;
      LOBYTE(v86) = v241 & 1;
      LOBYTE(v267) = v241 & 1;
      *(&v267 + 1) = v94;
      v95 = v239;
      sub_1B8B3F4F0(v250, v239, type metadata accessor for Previewer);
      v96 = (*(v238 + 80) + 16) & ~*(v238 + 80);
      v97 = swift_allocObject();
      sub_1B8B3E91C(v95, v97 + v96);
      v98 = (v97 + ((v32 + v96 + 7) & 0xFFFFFFFFFFFFFFF8));
      v99 = v252;
      *v98 = v253;
      v98[1] = v99;
      v100 = MEMORY[0x1E6981148];
      v101 = MEMORY[0x1E6981138];
      v102 = v231;
      sub_1B8C24AA8();

      sub_1B8B34060(v251, v242, v86);

      v103 = v232;
      v104 = v247;
      (*(v232 + 16))(v224, v102, v247);
      v105 = swift_storeEnumTagMultiPayload();
      v108 = sub_1B8B3F074(v105, v106, v107);
      *&v266 = &type metadata for DataImage;
      *(&v266 + 1) = v108;
      swift_getOpaqueTypeConformance2();
      *&v266 = v100;
      *(&v266 + 1) = v101;
      swift_getOpaqueTypeConformance2();
      v109 = v227;
      sub_1B8C24598();
      sub_1B8B34450(v109, v246, &qword_1EBAA60E8, &qword_1B8C280B8);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EF90();
      sub_1B8B3F0C8();
      v110 = v249;
      sub_1B8C24598();
      sub_1B8B3433C(v109, &qword_1EBAA60E8, &qword_1B8C280B8);
      sub_1B8B34450(v110, v243, &qword_1EBAA60F0, &qword_1B8C280C0);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EF04();
      sub_1B8B3F1FC();
      sub_1B8C24598();
      sub_1B8B3433C(v110, &qword_1EBAA60F0, &qword_1B8C280C0);
      return (*(v103 + 8))(v102, v104);
    }
  }
}

uint64_t sub_1B8B3DE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C237B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for Previewer(0) + 28));
  v13 = *v11;
  v12 = v11[1];
  v16[2] = v13;
  v16[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
  sub_1B8C24D68();
  v14 = sub_1B8C23328();
  (*(*(v14 - 8) + 16))(v10, a2, v14);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BatchInteraction(0);
  sub_1B8C237C8();
  sub_1B8B5FE50(v10, v7);

  (*(v5 + 8))(v7, v4);
  return sub_1B8B3F624(v10, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8B3E034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v64 = a1;
  v65 = a3;
  v73 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60F8, &qword_1B8C280C8);
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v70 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v59 - v10;
  v11 = type metadata accessor for Previewer(0);
  v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60C8, &qword_1B8C28098);
  v76 = *(v69 - 8);
  v13 = MEMORY[0x1EEE9AC00](v69);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v74 = &v59 - v16;
  v77 = a1;
  v78 = a2;
  v62 = a2;
  sub_1B8B34CA8(v15, v17, v18);

  v19 = sub_1B8C249E8();
  v21 = v20;
  v23 = v22;
  sub_1B8C248A8();
  v24 = sub_1B8C249B8();
  v60 = v24;
  v26 = v25;
  v59 = v25;
  v28 = v27;
  v30 = v29;
  v61 = v29;

  sub_1B8B34060(v19, v21, v23 & 1);

  v77 = v24;
  v78 = v26;
  v79 = v28 & 1;
  v80 = v30;
  v31 = v65;
  v32 = v63;
  sub_1B8B3F4F0(v65, v63, type metadata accessor for Previewer);
  v33 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v34 = (v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_1B8B3E91C(v32, v35 + v33);
  v36 = (v35 + v34);
  v37 = v62;
  *v36 = v64;
  v36[1] = v37;

  v38 = v74;
  sub_1B8C24AA8();

  sub_1B8B34060(v60, v59, v28 & 1);

  v39 = v68;
  v77 = v68;
  sub_1B8B3F4F0(v31, v32, type metadata accessor for Previewer);
  v40 = swift_allocObject();
  v41 = sub_1B8B3E91C(v32, v40 + v33);
  *(v40 + v34) = v39;
  sub_1B8B3F074(v41, v42, v43);
  v44 = v39;
  v45 = v75;
  sub_1B8C24AA8();

  v46 = *(v76 + 16);
  v47 = v67;
  v48 = v69;
  v46(v67, v38, v69);
  v49 = v70;
  v50 = v71;
  v51 = *(v71 + 16);
  v52 = v45;
  v53 = v72;
  v51(v70, v52, v72);
  v54 = v73;
  v46(v73, v47, v48);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6190, &qword_1B8C280E0);
  v51((v54 + *(v55 + 48)), v49, v53);
  v56 = *(v50 + 8);
  v56(v75, v53);
  v57 = *(v76 + 8);
  v57(v74, v48);
  v56(v49, v53);
  return (v57)(v47, v48);
}

uint64_t sub_1B8B3E580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C237B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (a1 + *(type metadata accessor for Previewer(0) + 28));
  v15 = *v13;
  v14 = v13[1];
  v17[2] = v15;
  v17[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
  sub_1B8C24D68();
  *v12 = a2;
  v12[1] = a3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BatchInteraction(0);

  sub_1B8C237C8();
  sub_1B8B5FE50(v12, v9);

  (*(v7 + 8))(v9, v6);
  return sub_1B8B3F624(v12, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8B3E750(uint64_t a1, void *a2)
{
  v4 = sub_1B8C237B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (a1 + *(type metadata accessor for Previewer(0) + 28));
  v13 = *v11;
  v12 = v11[1];
  v16[2] = v13;
  v16[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
  sub_1B8C24D68();
  *v10 = a2;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BatchInteraction(0);
  v14 = a2;
  sub_1B8C237C8();
  sub_1B8B5FE50(v10, v7);

  (*(v5 + 8))(v7, v4);
  return sub_1B8B3F624(v10, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8B3E91C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Previewer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B3E980@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Previewer(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B8B3BB80(v4, a1);
}

uint64_t sub_1B8B3E9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8B3EA60()
{
  result = qword_1EBAA6100;
  if (!qword_1EBAA6100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60A0, &qword_1B8C28070);
    sub_1B8B34CFC(&qword_1EBAA6108, &qword_1EBAA60B0, &qword_1B8C28080, MEMORY[0x1E6981870]);
    sub_1B8B3EB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6100);
  }

  return result;
}

unint64_t sub_1B8B3EB18()
{
  result = qword_1EBAA6110;
  if (!qword_1EBAA6110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6088, &qword_1B8C28058);
    sub_1B8B3EC20();
    v3 = type metadata accessor for FullScreenPreviewController(255);
    sub_1B8B3EEB0(v3, v1, v2);
    sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6110);
  }

  return result;
}

unint64_t sub_1B8B3EC20()
{
  result = qword_1EBAA6118;
  if (!qword_1EBAA6118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6080, &qword_1B8C28050);
    sub_1B8B3ED28();
    v3 = type metadata accessor for FullScreenPreviewController(255);
    sub_1B8B3EE5C(v3, v1, v2);
    sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6118);
  }

  return result;
}

unint64_t sub_1B8B3ED28()
{
  result = qword_1EBAA6120;
  if (!qword_1EBAA6120)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6128, &qword_1B8C280D0);
    v6 = sub_1B8B3EDB4(v1, v2, v3);
    sub_1B8B3EE08(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6120);
  }

  return result;
}

unint64_t sub_1B8B3EDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6130;
  if (!qword_1EBAA6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6130);
  }

  return result;
}

unint64_t sub_1B8B3EE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6138;
  if (!qword_1EBAA6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6138);
  }

  return result;
}

unint64_t sub_1B8B3EE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6140;
  if (!qword_1EBAA6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6140);
  }

  return result;
}

unint64_t sub_1B8B3EEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6150;
  if (!qword_1EBAA6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6150);
  }

  return result;
}

unint64_t sub_1B8B3EF04()
{
  result = qword_1EBAA6158;
  if (!qword_1EBAA6158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60F0, &qword_1B8C280C0);
    sub_1B8B3EF90();
    sub_1B8B3F0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6158);
  }

  return result;
}

unint64_t sub_1B8B3EF90()
{
  result = qword_1EBAA6160;
  if (!qword_1EBAA6160)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60E8, &qword_1B8C280B8);
    sub_1B8B3F074(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6160);
  }

  return result;
}

unint64_t sub_1B8B3F074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6168;
  if (!qword_1EBAA6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6168);
  }

  return result;
}

unint64_t sub_1B8B3F0C8()
{
  result = qword_1EBAA6170;
  if (!qword_1EBAA6170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60C0, &qword_1B8C28090);
    swift_getOpaqueTypeConformance2();
    sub_1B8B3F1B4(&qword_1EBAA6178, type metadata accessor for WebView, &unk_1B8C2EA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6170);
  }

  return result;
}

uint64_t sub_1B8B3F1B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8B3F1FC()
{
  result = qword_1EBAA6180;
  if (!qword_1EBAA6180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60A8, &qword_1B8C28078);
    sub_1B8B3EA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6180);
  }

  return result;
}

uint64_t sub_1B8B3F43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

double sub_1B8B3F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return result;
}

uint64_t sub_1B8B3F4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B3F558()
{
  v1 = *(type metadata accessor for Previewer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1B8C23328() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1B8B3DE38(v0 + v2, v5);
}

uint64_t sub_1B8B3F624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for Previewer(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 8) + 64);
  v4 = sub_1B8C23568();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = type metadata accessor for BatchInteraction(0);

  v6 = v0 + v3 + *(v5 + 28);
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  if (EnumCaseMultiPayload != 1)
  {
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v10)
  {
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          break;
        case 4:
          v17 = sub_1B8C23328();
          (*(*(v17 - 8) + 8))(v6, v17);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v12 < 2)
    {
    }

    else if (v12 == 2)
    {
    }
  }

  v6 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v9(v6, 1, v8))
  {
LABEL_6:
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          break;
        case 4:
          v13 = sub_1B8C23328();
          (*(*(v13 - 8) + 8))(v6, v13);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v11 < 2)
    {
    }

    else if (v11 == 2)
    {
    }
  }

LABEL_26:
  v14 = v0 + v3 + *(v1 + 20);
  if (v9(v14, 1, v8))
  {
    goto LABEL_39;
  }

  v15 = swift_getEnumCaseMultiPayload();
  if (v15 <= 2)
  {
    if (v15 >= 2)
    {
      if (v15 == 2)
      {
      }

      goto LABEL_39;
    }

LABEL_37:

    goto LABEL_39;
  }

  switch(v15)
  {
    case 3:

      goto LABEL_37;
    case 4:
      v16 = sub_1B8C23328();
      (*(*(v16 - 8) + 8))(v14, v16);
      break;
    case 5:
      sub_1B8B3B06C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72));
      break;
  }

LABEL_39:

  return MEMORY[0x1EEE6BDD0](v0, ((v19 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1B8B3FB10()
{
  v1 = *(type metadata accessor for Previewer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B8B3E580(v0 + v2, *v3, v3[1]);
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for Previewer(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(*(v1 - 8) + 64);
  v4 = sub_1B8C23568();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = type metadata accessor for BatchInteraction(0);

  v6 = v0 + v3 + *(v5 + 28);
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  if (EnumCaseMultiPayload != 1)
  {
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v10)
  {
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          break;
        case 4:
          v18 = sub_1B8C23328();
          (*(*(v18 - 8) + 8))(v6, v18);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v12 < 2)
    {
    }

    else if (v12 == 2)
    {
    }
  }

  v6 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v9(v6, 1, v8))
  {
LABEL_6:
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          break;
        case 4:
          v13 = sub_1B8C23328();
          (*(*(v13 - 8) + 8))(v6, v13);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v11 < 2)
    {
    }

    else if (v11 == 2)
    {
    }
  }

LABEL_26:
  v14 = v0 + v3 + *(v1 + 20);
  if (v9(v14, 1, v8))
  {
    goto LABEL_39;
  }

  v15 = swift_getEnumCaseMultiPayload();
  if (v15 <= 2)
  {
    if (v15 >= 2)
    {
      if (v15 == 2)
      {
      }

      goto LABEL_39;
    }

LABEL_37:

    goto LABEL_39;
  }

  switch(v15)
  {
    case 3:

      goto LABEL_37;
    case 4:
      v16 = sub_1B8C23328();
      (*(*(v16 - 8) + 8))(v14, v16);
      break;
    case 5:
      sub_1B8B3B06C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72));
      break;
  }

LABEL_39:
  v17 = (v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v17 + 8, v2 | 7);
}

uint64_t sub_1B8B4001C()
{
  v1 = *(type metadata accessor for Previewer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1B8B3E750(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1B8B400C8()
{
  result = qword_1EBAA61B0;
  if (!qword_1EBAA61B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA61A0, &qword_1B8C28168);
    sub_1B8B3A58C();
    sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA61B0);
  }

  return result;
}

BOOL sub_1B8B40188(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B8B44E48(v7, v9);
}

uint64_t sub_1B8B401E4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 160) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v4 = sub_1B8C237E8();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = type metadata accessor for BatchInteraction.ContentPreview(0);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1B8C23938();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6280, &unk_1B8C285B0);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8B4039C, 0, 0);
}

uint64_t sub_1B8B4039C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  sub_1B8B41108(*(v0 + 160), v2);
  sub_1B8B34450(v2, v1, &qword_1EBAA6280, &unk_1B8C285B0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 48);
    sub_1B8B3433C(*(v0 + 144), &qword_1EBAA6280, &unk_1B8C285B0);
    type metadata accessor for BatchInteraction.ContentPreview.Err(0);
    sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err, &unk_1B8C28618);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v7 = v5;
LABEL_3:
    sub_1B8B3433C(v7, &qword_1EBAA6280, &unk_1B8C285B0);
    goto LABEL_14;
  }

  v8 = *(v0 + 136);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  (*(v10 + 32))(v8, *(v0 + 144), v11);
  v12 = *(v10 + 16);
  v12(v9, v8, v11);
  v13 = (*(v10 + 88))(v9, v11);
  if (v13 == *MEMORY[0x1E699C5D0])
  {
    v14 = *(v0 + 152);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 112);
    v18 = *(v0 + 120);
    v19 = *(v0 + 40);

    (*(v18 + 8))(v15, v17);
    sub_1B8B3433C(v14, &qword_1EBAA6280, &unk_1B8C285B0);
    (*(v18 + 96))(v16, v17);
    v20 = v16[1];
    *v19 = *v16;
    v19[1] = v20;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    goto LABEL_14;
  }

  if (v13 == *MEMORY[0x1E699C5F0])
  {
    v21 = *(v0 + 128);
    (*(*(v0 + 120) + 96))(v21, *(v0 + 112));
    v22 = *v21;
    v23 = v21[1];
    v24 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v25 = sub_1B8C234A8();
    v26 = [v24 initWithData_];

    v27 = *(v0 + 152);
    v28 = *(v0 + 136);
    v30 = *(v0 + 112);
    v29 = *(v0 + 120);
    if (!v26)
    {
      v71 = *(v0 + 48);
      type metadata accessor for BatchInteraction.ContentPreview.Err(0);
      sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err, &unk_1B8C28618);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1B8B4645C(v22, v23);

      (*(v29 + 8))(v28, v30);
      v7 = v27;
      goto LABEL_3;
    }

    v31 = *(v0 + 104);
    v32 = *(v0 + 48);
    v122 = *(v0 + 40);
    sub_1B8B4645C(v22, v23);

    (*(v29 + 8))(v28, v30);
    sub_1B8B3433C(v27, &qword_1EBAA6280, &unk_1B8C285B0);
    *v31 = v26;
    swift_storeEnumTagMultiPayload();
    v33 = v31;
    v34 = v122;
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x1E699C608])
  {
    v35 = *(v0 + 128);
    (*(*(v0 + 120) + 96))(v35, *(v0 + 112));
    v36 = *v35;
    v37 = v35[1];
    v39 = v35[2];
    v38 = v35[3];
    v40 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v41 = sub_1B8C234A8();
    v42 = [v40 initWithData_];

    v43 = *(v0 + 152);
    v44 = *(v0 + 136);
    v45 = *(v0 + 120);
    v123 = *(v0 + 112);
    if (!v42)
    {
      v79 = *(v0 + 48);

      type metadata accessor for BatchInteraction.ContentPreview.Err(0);
      sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err, &unk_1B8C28618);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1B8B4645C(v36, v37);

      (*(v45 + 8))(v44, v123);
      v7 = v43;
      goto LABEL_3;
    }

    v116 = v39;
    v46 = *(v0 + 96);
    v47 = *(v0 + 152);
    v48 = *(v0 + 48);
    v119 = *(v0 + 40);
    sub_1B8B4645C(v36, v37);

    (*(v45 + 8))(v44, v123);
    sub_1B8B3433C(v47, &qword_1EBAA6280, &unk_1B8C285B0);
    *v46 = v42;
    v46[1] = v116;
    v46[2] = v38;
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    v34 = v119;
LABEL_13:
    sub_1B8B46248(v33, v34);
    goto LABEL_14;
  }

  if (v13 == *MEMORY[0x1E699C588])
  {
    v51 = *(v0 + 128);
    v53 = *(v0 + 72);
    v52 = *(v0 + 80);
    v54 = *(v0 + 56);
    v55 = *(v0 + 64);
    (*(*(v0 + 120) + 96))(v51, *(v0 + 112));
    (*(v55 + 32))(v52, v51, v54);
    v56 = *(v55 + 16);
    v56(v53, v52, v54);
    v57 = (*(v55 + 88))(v53, v54);
    if (v57 == *MEMORY[0x1E699C3B8])
    {
      v58 = *(v0 + 152);
      v124 = *(v0 + 136);
      v59 = *(v0 + 112);
      v60 = *(v0 + 120);
      v61 = *(v0 + 72);
      v62 = *(v0 + 80);
      v63 = *(v0 + 56);
      v64 = *(v0 + 64);
      v65 = *(v0 + 48);
      (*(v64 + 96))(v61, v63);
      if (*v61)
      {
        v66 = 1702195828;
      }

      else
      {
        v66 = 0x65736C6166;
      }

      if (*v61)
      {
        v67 = 0xE400000000000000;
      }

      else
      {
        v67 = 0xE500000000000000;
      }

      MEMORY[0x1B8CC9EB0](v66, v67);

      v68 = 0;
      v69 = 0xE000000000000000;
      (*(v64 + 8))(v62, v63);
      v70 = v58;
      (*(v60 + 8))(v124, v59);
      goto LABEL_36;
    }

    if (v57 == *MEMORY[0x1E699C3D8])
    {
      v80 = *(v0 + 152);
      v125 = *(v0 + 136);
      v82 = *(v0 + 112);
      v81 = *(v0 + 120);
      v83 = *(v0 + 72);
      v84 = *(v0 + 80);
      v85 = *(v0 + 56);
      v86 = *(v0 + 64);
      v87 = *(v0 + 48);
      (*(v86 + 96))(v83, v85);
      *(v0 + 32) = *v83;
      v68 = sub_1B8C259E8();
      v69 = v88;
LABEL_32:

      v70 = v80;
      (*(v86 + 8))(v84, v85);
      (*(v81 + 8))(v125, v82);
LABEL_36:
      sub_1B8B3433C(v70, &qword_1EBAA6280, &unk_1B8C285B0);
      v98 = *(v0 + 40);
      *v98 = v68;
      v98[1] = v69;
      goto LABEL_6;
    }

    if (v57 == *MEMORY[0x1E699C3C8])
    {
      v70 = *(v0 + 152);
      v91 = *(v0 + 136);
      v93 = *(v0 + 112);
      v92 = *(v0 + 120);
      v94 = *(v0 + 80);
      v95 = *(v0 + 56);
      v96 = *(v0 + 64);
      v97 = *(v0 + 48);
      (*(v96 + 96))(*(v0 + 72), v95);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      sub_1B8C253B8();

      v68 = *(v0 + 16);
      v69 = *(v0 + 24);
      (*(v96 + 8))(v94, v95);
      (*(v92 + 8))(v91, v93);
      goto LABEL_36;
    }

    if (v57 == *MEMORY[0x1E699C3D0])
    {
      v80 = *(v0 + 152);
      v125 = *(v0 + 136);
      v82 = *(v0 + 112);
      v81 = *(v0 + 120);
      v99 = *(v0 + 72);
      v84 = *(v0 + 80);
      v85 = *(v0 + 56);
      v86 = *(v0 + 64);
      v87 = *(v0 + 48);
      (*(v86 + 96))(v99, v85);
      v68 = *v99;
      v69 = v99[1];
      goto LABEL_32;
    }

    if (v57 == *MEMORY[0x1E699C3C0])
    {
      v100 = *(v0 + 152);
      v101 = *(v0 + 120);
      v120 = *(v0 + 112);
      v127 = *(v0 + 136);
      v102 = *(v0 + 72);
      v103 = *(v0 + 80);
      v105 = *(v0 + 56);
      v104 = *(v0 + 64);
      v106 = *(v0 + 48);
      (*(v104 + 96))(v102, v105);
      v68 = MEMORY[0x1B8CC9FA0](*v102, v105);
      v69 = v107;

      (*(v104 + 8))(v103, v105);
      (*(v101 + 8))(v127, v120);
      v70 = v100;
      goto LABEL_36;
    }

    v109 = *(v0 + 64);
    v108 = *(v0 + 72);
    v110 = (*(v0 + 120) + 8);
    v121 = *(v0 + 112);
    v128 = *(v0 + 152);
    v111 = *(v0 + 80);
    v112 = *(v0 + 56);
    v117 = *(v0 + 48);
    v118 = *(v0 + 136);
    if (v57 == *MEMORY[0x1E699C3B0])
    {
      (*(v109 + 96))(v108, v112);
      v68 = sub_1B8C250A8();
      v69 = v113;

      (*(v109 + 8))(v111, v112);
      (*v110)(v118, v121);
      v70 = v128;
      goto LABEL_36;
    }

    type metadata accessor for BatchInteraction.ContentPreview.Err(0);
    sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err, &unk_1B8C28618);
    swift_allocError();
    v56(v114, v111, v112);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v115 = *(v109 + 8);
    v115(v111, v112);
    (*v110)(v118, v121);
    sub_1B8B3433C(v128, &qword_1EBAA6280, &unk_1B8C285B0);
    v115(v108, v112);
  }

  else
  {
    v72 = *(v0 + 152);
    v73 = *(v0 + 128);
    v74 = *(v0 + 136);
    v75 = *(v0 + 112);
    v76 = *(v0 + 120);
    if (v13 == *MEMORY[0x1E699C5C0])
    {
      v77 = *(v0 + 40);

      (*(v76 + 8))(v74, v75);
      sub_1B8B3433C(v72, &qword_1EBAA6280, &unk_1B8C285B0);
      (*(v76 + 96))(v73, v75);
      v78 = v73[1];
      *v77 = *v73;
      v77[1] = v78;
      goto LABEL_6;
    }

    v126 = *(v0 + 48);
    type metadata accessor for BatchInteraction.ContentPreview.Err(0);
    sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err, &unk_1B8C28618);
    swift_allocError();
    v12(v89, v74, v75);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v90 = *(v76 + 8);
    v90(v74, v75);
    sub_1B8B3433C(v72, &qword_1EBAA6280, &unk_1B8C285B0);
    v90(v73, v75);
  }

LABEL_14:

  v49 = *(v0 + 8);

  return v49();
}