BOOL sub_251A6E150(void *a1, uint64_t *a2)
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

void *sub_251A6E1DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_251A6E208@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_251A6E300@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_251A6E310@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_251A80824(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_251A6E354@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251C70F14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_251A6E3CC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A6E478(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A6E520()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A6E55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A6E620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A6E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A6E798(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A6E844(uint64_t a1, uint64_t a2, int *a3)
{
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_251C703B4();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v14 = v13;
  v15 = *(*(v13 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_251A6E9E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[7];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_251A6EB88(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A6EC34(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A6ECD8(uint64_t a1, uint64_t a2, int *a3)
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

  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_251A6EEA4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A6F070(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A6F11C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A6F320()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_251A6F370()
{
  v1 = sub_251C701E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_251A6F4C0()
{
  v1 = (type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_251C70014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;
  v12 = sub_251C70074();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);

  v13 = v1[9];
  v14 = sub_251C6FE64();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  __swift_destroy_boxed_opaque_existential_1((v11 + v1[10]));
  v15 = v1[12];
  v16 = *(v6 + 8);
  v16(v11 + v15, v5);
  v16(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_251A6F6B0()
{
  v1 = (type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_251C70074();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[9];
  v7 = sub_251C6FE64();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[10]));
  v8 = v1[12];
  v9 = sub_251C70014();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A6F830()
{
  v1 = (type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_251C70074();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[9];
  v7 = sub_251C6FE64();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[10]));
  v8 = v1[12];
  v9 = sub_251C70014();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A6F9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C70074();
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

uint64_t sub_251A6FA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C70074();
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

uint64_t sub_251A6FB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PBDateRange(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_251A6FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_251A6FC28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_251C6FE64();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_251C70014();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_251A6FD9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_251C70074();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_251C6FE64();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_251C70014();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A6FF18(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A6FFC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A70068()
{
  v1 = (type metadata accessor for ClinicalSharingSampleQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_251C6FAE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A70164()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7019C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A701D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70210()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A702AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_251A70368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_251A70420(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PBReference(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A704CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PBReference(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A705B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_251A70660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_251A70704(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 56);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A70858(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 56);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A709B0()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A70A74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A70AB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A70B00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70B38()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A70B90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70BCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70C08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A70C40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70C78()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A70CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A70D64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A70E08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WebRequestResponseError.ErrorType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A70EB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WebRequestResponseError.ErrorType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A70F80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_251C70014();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_251C70074();
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_251A710F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_251C70014();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_251C70074();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_251A7126C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A712A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A712E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A71320()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_251A71380()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A713B8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_251A71414()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_251A71464()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A714AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A714E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A71560()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A71598()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_251A715F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A71638()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A71670()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_251A716C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A716F8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A71730()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_251A83028(v0[7], v0[8]);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_251A71778()
{
  v1 = (type metadata accessor for PBDeleteBlobs(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_251C703B4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A71864()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7189C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A718D4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A71918(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_251AF2314(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_251A719F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_251AF2314(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_251A71ACC()
{
  v1 = (type metadata accessor for ClinicalSharingMedicalRecordsQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_251C6FAE4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_251A71C10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A71C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A71D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A71DCC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251A71E14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_251A71E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251A71F28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A71FF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A72034()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7206C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A720A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A720DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7211C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A72154()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A72194()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_251A721EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A72224()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_251A72274()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A722AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A722E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_251A83028(v0[7], v0[8]);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_251A7232C()
{
  v1 = (type metadata accessor for PBBlobs(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_251C703B4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A72428(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_251A724D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7257C()
{
  v1 = (type metadata accessor for ClinicalSharingSleepStatisticsQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_251C6FAE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A72688(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_251C6FC94();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_251C701E4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = type metadata accessor for PBSleepSeries.Value(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[13]];

  return v15(v16, a2, v14);
}

char *sub_251A727F4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_251C6FC94();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_251C701E4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = type metadata accessor for PBSleepSeries.Value(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_251A72964()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A729BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A72A08()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A72A40()
{
  v1 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v11 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v5 = v1[5];
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);

  v9 = v1[9];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v8(v4 + v1[10], v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v11, v2 | 7);
}

uint64_t sub_251A72BCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C70014();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B18E10(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A72D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C70014();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B18E10(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A72E74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A72EB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_251A72F60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_251A73004(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A730B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A73158()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A73190()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A731C8()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A73254()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_251A732CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A73390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C70014();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A73450()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A73488()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251A734D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A73510()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A73548()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A735D4()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_251A73650()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A73688()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A736CC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A73738(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A737E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A73888()
{
  v1 = sub_251C70014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_251C6FC94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_251A73A04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A73A44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FE64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A73AF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FE64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A73F80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A73FB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A74000()
{
  MEMORY[0x25308E370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A74038()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A74078()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A740BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C70014();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A74168(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C70014();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A74244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_251A742FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
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

uint64_t sub_251A743CC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A74478(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A74520()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7455C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A74594()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A74630(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_251A746DC(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A747C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_251A7486C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_251A74A20(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A74B74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

unint64_t sub_251A74D70@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_251A74D88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_251A75010(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[7]];

  return v16(v17, a2, v15);
}

char *sub_251A751DC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[7]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A753A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A75454(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A75558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
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
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A756AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A75800(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A75954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 52);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A75AA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A75BFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A75D90(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A75EE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 52);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7607C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A76248(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_251A76414(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A765E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
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

uint64_t sub_251A7668C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
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

uint64_t sub_251A76730(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 60);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A76884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 60);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A769D8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A76B2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A76C88(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 56);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A76DDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 56);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A76F30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A77084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A771D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v12 = &a1[*(a3 + 44)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_251A77284(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = &v5[*(a4 + 44)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7732C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
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
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A773D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A77484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_251C703B4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_251A774FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_251C703B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_251A77578(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A77624(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A776C8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v12 = &a1[*(a3 + 52)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_251A77774(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = &v5[*(a4 + 52)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A77850(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A77A44(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A77B98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A77CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
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
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A77D98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A77E3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A77EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A77F8C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A780E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A78234(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A782E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A78384(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A784D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 48);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7863C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 48);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_251A78760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_251C703B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 44);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 48);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_251A78890(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A789E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A78B38(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_251A78D04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A78ED8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A7902C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A79180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
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
    v10 = a1 + *(a3 + 80);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7922C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 80);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A792D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7937C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7956C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A795A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_251A7960C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7965C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7969C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A796D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A79784(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A79828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
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
      sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A7997C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
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
      sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A79AD0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PBReference(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PBTypedData(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_251A79BF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PBReference(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PBTypedData(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_251A79D18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A79D54(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A79E00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A79EF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A79F30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A79F68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A79FB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A79FF8()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7A048()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251A7A0A0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251A7A0F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7A130()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7A168()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7A1B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C70014();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A7A304(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C70014();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7A458(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_251A7A4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_251A7A548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PBTypedData(0);
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

uint64_t sub_251A7A604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PBTypedData(0);
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

uint64_t sub_251A7A6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A7A780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A7A840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A7A904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A7A9C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7AA00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7AA3C()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A7AB00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7AB40()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7AB80()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251A7ABDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251A7AC2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251A7ACA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_251A7AD60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_251A7AE18(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[16];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_251BE161C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[17];
    goto LABEL_9;
  }

  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[18];

  return v16(v17, a2, v15);
}

uint64_t sub_251A7AFE4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[16];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_251BE161C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[17];
    goto LABEL_7;
  }

  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[18];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A7B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
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

uint64_t sub_251A7B25C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
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

uint64_t sub_251A7B338(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7B3E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
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

uint64_t sub_251A7B4C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_251C703B4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_251A7B61C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_251C703B4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_251A7B7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_251C703B4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_251A7B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_251C703B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_251A7B8A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7B8E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C70014();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7B994(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C70014();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7BA58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7BAEC()
{
  v1 = (type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_251C6FAE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A7BBF4()
{
  v1 = (type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_251A7BD40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7BD7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7BDBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7BDF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7BE2C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7C270()
{

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_251A7C2B8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7C300()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7C344(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_251C6FAE4();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_251C701E4();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_251A7C4B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_251C70074();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_251C6FAE4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_251C701E4();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A7C648()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7C698()
{
  sub_251C1F190(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v2);

  if (*(v0 + v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v6 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 72, v4 | 7);
}

uint64_t sub_251A7C7D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7C80C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7C84C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C70014();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251C291E4(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A7C9A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C70014();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251C291E4(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7CAF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7CB2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7CB6C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7CBB4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7CBF8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_251A7CC50()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_251A7CD5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7CD9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7CDF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7CE28()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A7CEEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7CF2C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7CF6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7CFB0()
{
  v1 = sub_251C70014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_251A7D04C()
{
  v1 = sub_251C70014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_251A7D124()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7D15C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7D19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A7D2FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7D458()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7D498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
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

uint64_t sub_251A7D554(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
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

uint64_t sub_251A7D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_251AF3A84(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_251A7D734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    sub_251AF3A84(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_251A7D85C()
{
  sub_251C4D444(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  sub_251A83028(*(v0 + 16), *(v0 + 24));
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_251A7D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C70014();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7D9CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C70014();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7DACC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7DB0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7DB48()
{
  v1 = (type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_251C70074();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[9];
  v8 = sub_251C6FE64();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v5 + v1[10]));
  v9 = v1[12];
  v10 = sub_251C70014();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_251A7DCE0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7DD28()
{
  v1 = (type metadata accessor for ClinicalSharingSyncTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v14 = *(*v1 + 64);

  v4 = v1[8];
  v5 = sub_251C70014();
  (*(*(v5 - 8) + 8))(v0 + v3 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[9]));
  v6 = v1[10];
  v7 = sub_251C70074();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v0 + v3 + v1[13];

  __swift_destroy_boxed_opaque_existential_1((v8 + 48));
  v9 = v0 + v3 + v1[14];
  v10 = sub_251C6FE64();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v11(v9 + *(v12 + 20), v10);

  if (*(v0 + v3 + v1[17]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v14 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_251A7DF98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7DFD0()
{
  v1 = type metadata accessor for ClinicalSharingSyncTask(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v15 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 24);
  v6 = sub_251C70014();
  (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4 + v2[9]));
  v7 = v2[10];
  v8 = sub_251C70074();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);

  v9 = v0 + v4 + v2[13];

  __swift_destroy_boxed_opaque_existential_1((v9 + 48));
  v10 = v0 + v4 + v2[14];
  v11 = sub_251C6FE64();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  v13 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v12(v10 + *(v13 + 20), v11);

  if (*(v0 + v4 + v2[17]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((((((v15 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_251A7E254()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E28C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7E2C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E300()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E338()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A7E3C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_251A7E46C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7E52C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E564()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A7E5EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7E628()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_251A7E6C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7E6FC()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_251A7E7C0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7E808()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E840()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7E8D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for PBTimeSeries.Value.OneOf_AdditionalData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251A7E910(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PBNodeType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_251A7E960(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251A7E97C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_251A7EA10@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_251A7EA4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251A7EB2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251A7EB4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_251A7EBF0()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

uint64_t sub_251A7EC38(uint64_t a1)
{
  v2 = *v1;
  sub_251C71AA4();
  MEMORY[0x25308D860](v2);
  return sub_251C71AD4();
}

uint64_t sub_251A7EC7C()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

uint64_t sub_251A7ECB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v6 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_251A7EDB0(uint64_t a1)
{
  v2 = sub_251A80A40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251A7EDEC(uint64_t a1)
{
  v2 = sub_251A80A40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251A7EE28@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_251A7FC44(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_251A7EE58()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

uint64_t sub_251A7EECC(uint64_t a1)
{
  v2 = *v1;
  sub_251C71AA4();
  MEMORY[0x25308D860](v2);
  return sub_251C71AD4();
}

uint64_t sub_251A7EF18(uint64_t a1, id *a2)
{
  result = sub_251C70EF4();
  *a2 = 0;
  return result;
}

uint64_t sub_251A7EF90(uint64_t a1, id *a2)
{
  v3 = sub_251C70F04();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_251A7F010@<X0>(uint64_t *a2@<X8>)
{
  sub_251C70F14();
  v3 = sub_251C70EE4();

  *a2 = v3;
  return result;
}

uint64_t sub_251A7F054(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C18, type metadata accessor for HKError, &unk_251C73C74);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_251A7F0C0(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C18, type metadata accessor for HKError, &unk_251C73C74);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_251A7F12C(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError, &unk_251C74118);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_251A7F1A8(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError, &unk_251C74118);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_251A7F214(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError, &unk_251C74118);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_251A7F280(void *a1, uint64_t a2)
{
  v4 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError, &unk_251C74118);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_251A7F334(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError, &unk_251C74118);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_251A7F3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

uint64_t sub_251A7F4A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251A7F7B8(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C78, type metadata accessor for HKClinicalGatewayFeatureName, &unk_251C737BC);
  v3 = sub_251A7F4A0(&qword_27F478C80, type metadata accessor for HKClinicalGatewayFeatureName, &unk_251C7375C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_251A7F874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError, &unk_251C74118);

  return sub_251C6FD24();
}

uint64_t sub_251A7F8F8(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C58, type metadata accessor for FileProtectionType, &unk_251C73EA0);
  v3 = sub_251A7F4A0(&qword_27F478C60, type metadata accessor for FileProtectionType, &unk_251C73E40);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_251A7F9B4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_251C70EE4();

  *a2 = v3;
  return result;
}

uint64_t sub_251A7F9FC(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C68, type metadata accessor for FileAttributeKey, &unk_251C740D4);
  v3 = sub_251A7F4A0(&qword_27F478C70, type metadata accessor for FileAttributeKey, &unk_251C73D2C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_251A7FAB8()
{
  v0 = sub_251C70F14();
  v1 = MEMORY[0x25308CE20](v0);

  return v1;
}

uint64_t sub_251A7FAF4(uint64_t a1)
{
  sub_251C70F14();
  sub_251C70FB4();
}

uint64_t sub_251A7FB48(uint64_t a1)
{
  sub_251C70F14();
  sub_251C71AA4();
  sub_251C70FB4();
  v1 = sub_251C71AD4();

  return v1;
}

uint64_t sub_251A7FBBC(void *a1, uint64_t *a2)
{
  v2 = sub_251C70F14();
  v4 = v3;
  if (v2 == sub_251C70F14() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_251C719D4();
  }

  return v7 & 1;
}

uint64_t sub_251A7FC44(void *a1)
{
  sub_251A809E4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251A80A40();
  sub_251C71B04();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_251C718B4();
    v11 = 1;
    sub_251C71874();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_251A7FEF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251A7FF18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_251A80740()
{
  result = qword_27F478C40;
  if (!qword_27F478C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478C40);
  }

  return result;
}

uint64_t sub_251A80824(uint64_t a1)
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

void sub_251A808AC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_251A8094C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_251A80994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_251A809E4(uint64_t a1)
{
  if (!qword_27F478CB8)
  {
    sub_251A80A40();
    v1 = sub_251C718E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F478CB8);
    }
  }
}

unint64_t sub_251A80A40()
{
  result = qword_27F478CC0;
  if (!qword_27F478CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478CC0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t getEnumTagSinglePayload for ClinicalSharingFHIRAttachment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClinicalSharingFHIRAttachment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_251A80C94()
{
  result = qword_27F478CC8;
  if (!qword_27F478CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478CC8);
  }

  return result;
}

unint64_t sub_251A80CEC()
{
  result = qword_27F478CD0;
  if (!qword_27F478CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478CD0);
  }

  return result;
}

unint64_t sub_251A80D44()
{
  result = qword_27F478CD8;
  if (!qword_27F478CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478CD8);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery(uint64_t a1)
{
  result = qword_27F478D40;
  if (!qword_27F478D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251A80E90(uint64_t a1)
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_251C6FAE4();
    if (v3 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_27F478D50, 0x277CCD8D8);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251A80F3C()
{
  v1 = type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery(0);
  v2 = v1 - 8;
  v46 = *(v1 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v44 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A82308(0, &qword_27F478D58, type metadata accessor for PBTypedData);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  MEMORY[0x28223BE20](v4);
  v47 = v40 - v6;
  sub_251A822E8(0);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  MEMORY[0x28223BE20](v7);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C70014();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + *(v2 + 32));
  v15 = objc_opt_self();
  v16 = v0;
  sub_251C6FAB4();
  v17 = sub_251C6FF94();
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_251C6FA84();
  v19 = sub_251C6FF94();
  v18(v13, v10);
  v20 = [v15 predicateForSamplesWithStartDate:v17 endDate:v19 options:0];

  v21 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v14 predicate:v20];
  v22 = sub_251BFC460();
  v24 = v23;
  v42 = v16;
  sub_251A823B4(*v16 + 16, v54);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_251A82418();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C74560;
  *(v25 + 32) = v21;
  v26 = off_2863FD750;
  v43 = v21;
  v27 = v26(v25, v22, v24, MEMORY[0x277D84F90], 0);
  v40[1] = v27;

  v53 = v27;
  v41 = type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery;
  v28 = v16;
  v29 = v44;
  sub_251A82718(v28, v44, type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery);
  v30 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v31 = swift_allocObject();
  sub_251A82780(v29, v31 + v30, type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_251A8246C;
  *(v32 + 24) = v31;
  sub_251A82164(0);
  type metadata accessor for PBTypedData(0);
  sub_251A8265C(&qword_27F478D78, sub_251A82164, MEMORY[0x277CBCD90]);
  v33 = v47;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_251A82718(v42, v29, v41);
  v34 = swift_allocObject();
  sub_251A82780(v29, v34 + v30, type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v36 = v48;
  v35 = v49;
  sub_251C70774();

  (*(v50 + 8))(v33, v35);
  sub_251A8265C(&qword_27F478D88, sub_251A822E8, MEMORY[0x277CBCB10]);
  v37 = v51;
  v38 = sub_251C70A94();

  (*(v52 + 8))(v36, v37);
  return v38;
}

uint64_t sub_251A81570@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251A826A4(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBCategorySeries(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  if (a1 >> 62)
  {
    v55 = a1;
    v39 = v16;
    v40 = sub_251C717F4();
    v16 = v39;
    a1 = v55;
    if (v40)
    {
LABEL_3:
      v53 = v16;
      v54 = v7;
      v55 = a2;
      v19 = sub_251B14FF0(a1);
      if (v19)
      {
        v20 = v19;
        MEMORY[0x28223BE20](v19);
        v46 = v2;
        sub_251C5608C(sub_251A826F8, (&v47 - 4), v20);
        v22 = v21;

        *v18 = 0;
        *(v18 + 1) = 0xE000000000000000;
        sub_251C703A4();
        v23 = *(v9 + 56);
        v23(&v18[*(v14 + 28)], 1, 1, v8);
        v49 = v23;
        *(v18 + 2) = v22;
        *v13 = 0;
        v13[8] = 1;
        v24 = *(v11 + 20);
        v25 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        v26 = *(v25 - 8);
        v51 = *(v26 + 56);
        v52 = v26 + 56;
        v51(&v13[v24], 1, 1, v25);
        sub_251C703A4();
        v27 = v8;
        v48 = v8;
        v28 = *(v11 + 28);
        v23(&v13[v28], 1, 1, v27);
        v29 = *(type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery(0) + 20);
        v30 = sub_251C6FAE4();
        v31 = *(v30 - 8);
        v50 = v11;
        v32 = v31;
        v33 = v2 + v29;
        v34 = v54;
        (*(v31 + 16))(v54, v33, v30);
        (*(v32 + 56))(v34, 0, 1, v30);
        v35 = v56;
        sub_251BFC464();
        sub_251A82844(v34, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251A82844(&v13[v28], qword_2813E6EE8, type metadata accessor for PBDateRange);
        sub_251A82780(v35, &v13[v28], type metadata accessor for PBDateRange);
        v49(&v13[v28], 0, 1, v48);
        *v13 = 125;
        v13[8] = 1;
        v36 = v53;
        sub_251A82718(v18, v53, type metadata accessor for PBCategorySeries);
        sub_251A82844(&v13[v24], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
        sub_251A82780(v36, &v13[v24], type metadata accessor for PBCategorySeries);
        swift_storeEnumTagMultiPayload();
        v51(&v13[v24], 0, 1, v25);
        v37 = v55;
        sub_251A82780(v13, v55, type metadata accessor for PBTypedData);
        (*(v57 + 56))(v37, 0, 1, v50);
        return sub_251A827E8(v18);
      }

      else
      {
        v58 = 0;
        v59 = 0xE000000000000000;
        sub_251C716A4();

        v58 = 0xD000000000000023;
        v59 = 0x8000000251C89D50;
        v42 = [*(v2 + *(type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery(0) + 24)) description];
        v43 = sub_251C70F14();
        v45 = v44;

        MEMORY[0x25308CDA0](v43, v45);

        result = sub_251C717E4();
        __break(1u);
      }

      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v41 = *(v57 + 56);

  return v41(a2, 1, 1, v11);
}

void sub_251A81C28(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v51 = MEMORY[0x277CC9578];
  sub_251A826A4(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v42 - v9;
  v11 = type metadata accessor for PBDateRange(0);
  v48 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0xE000000000000000;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0xE000000000000000;
  v15 = type metadata accessor for PBCategorySeries.Event(0);
  v16 = a3 + *(v15 + 28);
  v17 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v44 = v17;
  v45 = v16;
  v42[1] = v18 + 56;
  v43 = v19;
  (v19)(v16, 1, 1);
  sub_251C703A4();
  v20 = *(v15 + 36);
  v21 = *(v12 + 56);
  v47 = v12 + 56;
  v49 = v21;
  v21(a3 + v20, 1, 1, v11);
  v22 = [v14 startDate];
  sub_251C6FFE4();

  v23 = sub_251C70014();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 0, 1, v23);
  v25 = [v14 endDate];
  sub_251C6FFE4();

  v24(v8, 0, 1, v23);
  v26 = v50;
  sub_251C15BE4();
  v27 = v51;
  sub_251A82844(v8, &qword_2813E7500, v51);
  sub_251A82844(v10, &qword_2813E7500, v27);
  sub_251A82844(a3 + v20, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251A82780(v26, a3 + v20, type metadata accessor for PBDateRange);
  v49(a3 + v20, 0, 1, v48);
  v28 = [v14 quantity];
  v29 = [objc_opt_self() percentUnit];
  [v28 doubleValueForUnit_];
  v31 = v30;

  v32 = v31 * 100.0;
  if (COERCE__INT64(fabs(v31 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v32 <= -2147483650.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v32 >= 2147483650.0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  *a3 = v32;
  v33 = [v14 quantity];
  v34 = v46;
  v35 = sub_251C71504();
  if (v34)
  {
  }

  else
  {
    if (v35 == 1)
    {
      v39 = 1;
      v40 = 0xE200000000000000;
      v41 = 27503;
      v37 = v44;
      v36 = v45;
      v38 = v43;
    }

    else
    {
      v37 = v44;
      v36 = v45;
      v38 = v43;
      if (v35 == 3)
      {
        v39 = 3;
        v40 = 0xE700000000000000;
        v41 = 0x776F4C79726576;
      }

      else if (v35 == 2)
      {
        v39 = 2;
        v40 = 0xE300000000000000;
        v41 = 7827308;
      }

      else
      {
        v39 = 0;
        v40 = 0xE600000000000000;
        v41 = 0x746553746F6ELL;
      }
    }

    *(a3 + 8) = v41;
    *(a3 + 16) = v40;
    sub_251A82844(v36, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    *v36 = v39;
    *(v36 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v38(v36, 0, 1, v37);
  }
}

void sub_251A82164(uint64_t a1)
{
  if (!qword_27F478D60)
  {
    sub_251A821D4(255);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F478D60);
    }
  }
}

void sub_251A821D4(uint64_t a1)
{
  if (!qword_27F478D68)
  {
    sub_251A8223C(255, &qword_27F478D70, 0x277CCD8A8);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F478D68);
    }
  }
}

uint64_t sub_251A8223C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_251A82284()
{
  result = qword_2813E1C30;
  if (!qword_2813E1C30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813E1C30);
  }

  return result;
}

void sub_251A82308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251A82164(255);
    a3(255);
    sub_251A8265C(&qword_27F478D78, sub_251A82164, MEMORY[0x277CBCD90]);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251A823B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251A82418()
{
  if (!qword_27F47BD20)
  {
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47BD20);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_251C6FAE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A8265C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251A826A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251A82718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251A82780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251A827E8(uint64_t a1)
{
  v2 = type metadata accessor for PBCategorySeries(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251A82844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251A826A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_251A828A0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 interactions];
  sub_251A82AA4();
  v6 = sub_251C71154();

  if (v6 >> 62)
  {
LABEL_20:
    v7 = sub_251C717F4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25308D460](v8, v6);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            return v21;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v8 + 32);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_16;
          }
        }

        v21 = v9;
        v11 = a1;
        v12 = a2;
        v13 = [v9 name];
        v14 = sub_251C70F14();
        v16 = v15;

        a2 = v12;
        if (v14 == v11 && v16 == v12)
        {
          goto LABEL_17;
        }

        a1 = v11;
        v18 = sub_251C719D4();

        if (v18)
        {
          goto LABEL_18;
        }

        ++v8;
      }

      while (v10 != v7);
    }
  }

  sub_251A82AF0();
  swift_allocError();
  *v20 = a1;
  *(v20 + 8) = a2;
  *(v20 + 16) = 3;
  swift_willThrow();
}

unint64_t sub_251A82AA4()
{
  result = qword_27F478D98;
  if (!qword_27F478D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F478D98);
  }

  return result;
}

unint64_t sub_251A82AF0()
{
  result = qword_27F478DA0;
  if (!qword_27F478DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478DA0);
  }

  return result;
}

uint64_t sub_251A82B44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = xmmword_251C745D0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0xE000000000000000;
  type metadata accessor for PBRevocationAuthorization(0);
  sub_251C703A4();
  sub_251C6FBB4();
  swift_allocObject();
  v16 = 0x2000000000;
  v17 = sub_251C6FB84() | 0x4000000000000000;
  v10 = sub_251A82C9C(&v16, 0x20uLL);
  if (v10)
  {
    v11 = v10;

    sub_251A82FD4();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    sub_251A83028(v16, v17);
    return sub_251A8307C(a5);
  }

  else
  {
    v14 = v16;
    v15 = v17;
    result = sub_251A83028(*a5, *(a5 + 8));
    *a5 = v14;
    *(a5 + 8) = v15;
    *(a5 + 48) = a3;
    *(a5 + 56) = a4;
    *(a5 + 16) = 1;
    *(a5 + 24) = 1;
    *(a5 + 32) = a1;
    *(a5 + 40) = a2 & 1;
  }

  return result;
}

uint64_t sub_251A82C9C(uint64_t *a1, size_t count)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_251A83028(v6, v5);
      *&bytes = v6;
      WORD4(bytes) = v5;
      BYTE10(bytes) = BYTE2(v5);
      BYTE11(bytes) = BYTE3(v5);
      BYTE12(bytes) = BYTE4(v5);
      BYTE13(bytes) = BYTE5(v5);
      BYTE14(bytes) = BYTE6(v5);
      result = SecRandomCopyBytes(*MEMORY[0x277CDC540], count, &bytes);
      v9 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_251A83028(v6, v5);
    *a1 = xmmword_251C745D0;
    sub_251A83028(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (sub_251C6FB74() && __OFSUB__(v6, sub_251C6FBA4()))
      {
LABEL_19:
        __break(1u);
      }

      sub_251C6FBB4();
      swift_allocObject();
      v13 = sub_251C6FB54();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_251A830D8(v6, v6 >> 32, v11, count);

      *a1 = v6;
      a1[1] = v11 | 0x4000000000000000;
      if (!v2)
      {
        return v14;
      }

      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v7 == 2)
  {

    sub_251A83028(v6, v5);
    *&bytes = v6;
    *(&bytes + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_251C745D0;
    sub_251A83028(0, 0xC000000000000000);
    sub_251C6FE74();
    v10 = *(&bytes + 1);
    result = sub_251A830D8(*(bytes + 16), *(bytes + 24), *(&bytes + 1), count);
    *a1 = bytes;
    a1[1] = v10 | 0x8000000000000000;
  }

  else
  {
    *(&bytes + 7) = 0;
    *&bytes = 0;
    return SecRandomCopyBytes(*MEMORY[0x277CDC540], count, &bytes);
  }

  return result;
}

unint64_t sub_251A82FD4()
{
  result = qword_27F478DA8;
  if (!qword_27F478DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478DA8);
  }

  return result;
}

uint64_t sub_251A83028(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_251A8307C(uint64_t a1)
{
  v2 = type metadata accessor for PBRevocationAuthorization(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251A830D8(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  result = sub_251C6FB74();
  if (result)
  {
    v8 = result;
    result = sub_251C6FBA4();
    v9 = a1 - result;
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_251C6FB94();
      return SecRandomCopyBytes(*MEMORY[0x277CDC540], a4, (v8 + v9));
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_251A8316C()
{
  v1 = [v0 sampleType];
  v2 = [v1 code];

  if (v2 != 147 && v2 != 140)
  {
    return;
  }

  v3 = [v0 metadata];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = sub_251C70E54();

  v6 = sub_251C70F14();
  if (!*(v5 + 16))
  {

    goto LABEL_12;
  }

  v8 = sub_251AC8C58(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_12:

    return;
  }

  sub_251A83384(*(v5 + 56) + 32 * v8, v16);

  sub_251A833E0();
  if (swift_dynamicCast())
  {
    v11 = [objc_opt_self() _countPerMinuteUnit];
    [v15 doubleValueForUnit_];
    v13 = v12;
    v14 = v12;

    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        v16[0] = v13;
        sub_251C719A4();

        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t sub_251A83384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_251A833E0()
{
  result = qword_27F478DB0;
  if (!qword_27F478DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F478DB0);
  }

  return result;
}

id sub_251A8345C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultDaemonXPCService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251A835F8(uint64_t a1, char a2)
{
  *(v3 + 240) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  *(v3 + 152) = type metadata accessor for WebRequestResponseError(0);
  *(v3 + 160) = swift_task_alloc();
  v4 = sub_251C6FE64();
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = type metadata accessor for IssuerDirectoryWebRequest(0);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251A83734, 0, 0);
}

void sub_251A83734()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 144);
  sub_251C37288(*(v0 + 240) & 1, v2);
  sub_251A83F04(v2, v1);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  *(v0 + 104) = v3;
  *(v0 + 112) = &off_2863F5F98;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  sub_251A85630(v1, boxed_opaque_existential_1);
  v8 = *(v5 + 8) + **(v5 + 8);
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_251A838D4;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_251A838D4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_251A83DFC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 80));
    v3 = sub_251A839F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251A839F0()
{
  v32 = v0;
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v2 = v0[26];
    v3 = v0[27];
    v4 = sub_251C70764();
    __swift_project_value_buffer(v4, qword_2813E8130);
    sub_251A85630(v3, v2);
    v5 = sub_251C70744();
    v6 = sub_251C713D4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[26];
    if (v7)
    {
      v10 = v0[22];
      v9 = v0[23];
      v11 = v0[21];
      v12 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v12 = 136315394;
      v0[15] = &type metadata for IssuerDirectoryWebRequestHandler;
      sub_251A85834();
      v13 = sub_251C70F74();
      v15 = sub_251B10780(v13, v14, v31);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      sub_251C6FD94();
      sub_251A8587C(&qword_27F478E68, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v16 = sub_251C719A4();
      v18 = v17;
      (*(v10 + 8))(v9, v11);
      sub_251A856F8(v8);
      v19 = sub_251B10780(v16, v18, v31);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_251A6C000, v5, v6, "%s: No response data received from URL %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v30, -1, -1);
      MEMORY[0x25308E2B0](v12, -1, -1);
    }

    else
    {

      sub_251A856F8(v8);
    }

    v25 = v0[27];
    sub_251A8578C();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    sub_251A857E0((v0 + 2));
    v24 = v25;
    goto LABEL_10;
  }

  v20 = v0[7];
  v21 = v0[29];
  sub_251C6F9F4();
  swift_allocObject();
  sub_251A858C4(v20, v1);
  sub_251C6F9E4();
  sub_251A859D4();
  sub_251C6F9D4();
  v22 = v21;
  v23 = v0[27];
  if (v22)
  {

    sub_251A8596C(v20, v1);
    sub_251A857E0((v0 + 2));
    v24 = v23;
LABEL_10:
    sub_251A856F8(v24);

    v27 = v0[1];
    goto LABEL_11;
  }

  v29 = v0[17];

  sub_251A8596C(v20, v1);
  sub_251A857E0((v0 + 2));
  sub_251A856F8(v23);
  *v29 = v0[16];

  v27 = v0[1];
LABEL_11:

  return v27();
}

uint64_t sub_251A83DFC()
{
  v1 = v0[27];
  v2 = v0[20];
  sub_251A8587C(&qword_27F478E50, type metadata accessor for WebRequestResponseError, &protocol conformance descriptor for WebRequestResponseError);
  swift_allocError();
  sub_251A85694(v2, v3);
  sub_251A856F8(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  v4 = v0[1];

  return v4();
}

uint64_t sub_251A83F04@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  *a2 = 2;
  *(a2 + 1) = 0;
  v4 = type metadata accessor for IssuerDirectoryWebRequest(0);
  *&a2[v4[7]] = xmmword_251C74660;
  v5 = v4[6];
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&a2[v5], a1, v6);
  sub_251C716A4();

  v8 = 0xE700000000000000;
  v9 = *a2;
  v10 = 0x5443454E4E4F43;
  v11 = 0xE300000000000000;
  v12 = 5526864;
  if (v9 != 6)
  {
    v12 = 0x4543415254;
    v11 = 0xE500000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x534E4F4954504FLL;
  if (v9 != 4)
  {
    v14 = 1414745936;
    v13 = 0xE400000000000000;
  }

  if (*a2 <= 5u)
  {
    v12 = v14;
    v11 = v13;
  }

  v15 = 0xE300000000000000;
  v16 = 5522759;
  if (v9 != 2)
  {
    v16 = 1145128264;
    v15 = 0xE400000000000000;
  }

  if (*a2)
  {
    v10 = 0x4554454C4544;
    v8 = 0xE600000000000000;
  }

  if (*a2 > 1u)
  {
    v10 = v16;
    v8 = v15;
  }

  if (*a2 <= 3u)
  {
    v17 = v10;
  }

  else
  {
    v17 = v12;
  }

  if (*a2 <= 3u)
  {
    v18 = v8;
  }

  else
  {
    v18 = v11;
  }

  MEMORY[0x25308CDA0](v17, v18);

  MEMORY[0x25308CDA0](32, 0xE100000000000000);
  v19 = sub_251C6FDA4();
  MEMORY[0x25308CDA0](v19);

  result = (*(v7 + 8))(a1, v6);
  v21 = &a2[v4[8]];
  *v21 = 0xD00000000000001ALL;
  *(v21 + 1) = 0x8000000251C89E50;
  return result;
}

uint64_t sub_251A8413C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = type metadata accessor for WebRequestResponseError(0);
  v3[22] = swift_task_alloc();
  v4 = sub_251C6FE64();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for IssuerDirectoryWebRequest(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251A84278, 0, 0);
}

void sub_251A84278()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[24];
  v7 = v0[19];
  v6 = v0[20];
  v8 = type metadata accessor for CatalogEntry(0);
  (*(v5 + 16))(v2, v7 + *(v8 + 24), v4);
  sub_251A83F04(v2, v1);
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v0[13] = v3;
  v0[14] = &off_2863F5F98;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 10);
  sub_251A85630(v1, boxed_opaque_existential_1);
  v12 = *(v9 + 8) + **(v9 + 8);
  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_251A84434;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_251A84434()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_251A8495C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 80));
    v3 = sub_251A84550;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251A84550()
{
  v33 = v0;
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v2 = v0[28];
    v3 = v0[29];
    v4 = sub_251C70764();
    __swift_project_value_buffer(v4, qword_2813E8130);
    sub_251A85630(v3, v2);
    v5 = sub_251C70744();
    v6 = sub_251C713D4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[28];
    if (v7)
    {
      v10 = v0[24];
      v9 = v0[25];
      v11 = v0[23];
      v12 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v12 = 136315394;
      v0[17] = &type metadata for IssuerDirectoryWebRequestHandler;
      sub_251A85834();
      v13 = sub_251C70F74();
      v15 = sub_251B10780(v13, v14, v32);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      sub_251C6FD94();
      sub_251A8587C(&qword_27F478E68, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v16 = sub_251C719A4();
      v18 = v17;
      (*(v10 + 8))(v9, v11);
      sub_251A856F8(v8);
      v19 = sub_251B10780(v16, v18, v32);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_251A6C000, v5, v6, "%s: No response data received from URL %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v31, -1, -1);
      MEMORY[0x25308E2B0](v12, -1, -1);
    }

    else
    {

      sub_251A856F8(v8);
    }

    v25 = v0[29];
    sub_251A8578C();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    sub_251A857E0((v0 + 2));
    v24 = v25;
    goto LABEL_10;
  }

  v20 = v0[7];
  v21 = v0[31];
  sub_251C6F9F4();
  swift_allocObject();
  sub_251A858C4(v20, v1);
  sub_251C6F9E4();
  sub_251A85918();
  sub_251C6F9D4();
  v22 = v21;
  v23 = v0[29];
  if (v22)
  {

    sub_251A8596C(v20, v1);
    sub_251A857E0((v0 + 2));
    v24 = v23;
LABEL_10:
    sub_251A856F8(v24);

    v27 = v0[1];
    goto LABEL_11;
  }

  v29 = v0[18];

  sub_251A8596C(v20, v1);
  sub_251A857E0((v0 + 2));
  sub_251A856F8(v23);
  v30 = v0[16];
  *v29 = v0[15];
  v29[1] = v30;

  v27 = v0[1];
LABEL_11:

  return v27();
}

uint64_t sub_251A8495C()
{
  v1 = v0[29];
  v2 = v0[22];
  sub_251A8587C(&qword_27F478E50, type metadata accessor for WebRequestResponseError, &protocol conformance descriptor for WebRequestResponseError);
  swift_allocError();
  sub_251A85694(v2, v3);
  sub_251A856F8(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  v4 = v0[1];

  return v4();
}

uint64_t sub_251A84A64(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_251C6F9B4();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for WebRequestResponseError(0);
  v3[25] = swift_task_alloc();
  v5 = sub_251C6FE64();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for IssuerDirectoryWebRequest(0);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251A84BFC, 0, 0);
}

void sub_251A84BFC()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[26];
  v5 = v0[27];
  v7 = v0[19];
  v6 = v0[20];
  v8 = type metadata accessor for CatalogEntry(0);
  (*(v5 + 16))(v2, v7 + *(v8 + 24), v4);
  sub_251A83F04(v2, v1);
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v0[13] = v3;
  v0[14] = &off_2863F5F98;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 10);
  sub_251A85630(v1, boxed_opaque_existential_1);
  v12 = *(v9 + 8) + **(v9 + 8);
  v11 = swift_task_alloc();
  v0[33] = v11;
  *v11 = v0;
  v11[1] = sub_251A84DB8;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_251A84DB8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_251A85330;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 80));
    v3 = sub_251A84ED4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251A84ED4()
{
  v36 = v0;
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v2 = v0[31];
    v3 = v0[32];
    v4 = sub_251C70764();
    __swift_project_value_buffer(v4, qword_2813E8130);
    sub_251A85630(v3, v2);
    v5 = sub_251C70744();
    v6 = sub_251C713D4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[31];
    if (v7)
    {
      v10 = v0[27];
      v9 = v0[28];
      v11 = v0[26];
      v12 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v12 = 136315394;
      v0[17] = &type metadata for IssuerDirectoryWebRequestHandler;
      sub_251A85834();
      v13 = sub_251C70F74();
      v15 = sub_251B10780(v13, v14, v35);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      sub_251C6FD94();
      sub_251A8587C(&qword_27F478E68, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v16 = sub_251C719A4();
      v18 = v17;
      (*(v10 + 8))(v9, v11);
      sub_251A856F8(v8);
      v19 = sub_251B10780(v16, v18, v35);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_251A6C000, v5, v6, "%s: No response data received from URL %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v34, -1, -1);
      MEMORY[0x25308E2B0](v12, -1, -1);
    }

    else
    {

      sub_251A856F8(v8);
    }

    v28 = v0[32];
    sub_251A8578C();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    sub_251A857E0((v0 + 2));
    v27 = v28;
    goto LABEL_10;
  }

  v20 = v0[7];
  v21 = v0[34];
  v23 = v0[22];
  v22 = v0[23];
  v24 = v0[21];
  sub_251C6F9F4();
  swift_allocObject();
  sub_251A858C4(v20, v1);
  sub_251C6F9E4();
  (*(v23 + 104))(v22, *MEMORY[0x277CC86D0], v24);
  sub_251C6F9C4();
  sub_251A85980();
  sub_251C6F9D4();
  v25 = v21;
  v26 = v0[32];
  if (v25)
  {

    sub_251A8596C(v20, v1);
    sub_251A857E0((v0 + 2));
    v27 = v26;
LABEL_10:
    sub_251A856F8(v27);

    v30 = v0[1];
    goto LABEL_11;
  }

  v32 = v0[18];

  sub_251A8596C(v20, v1);
  sub_251A857E0((v0 + 2));
  sub_251A856F8(v26);
  v33 = v0[16];
  *v32 = v0[15];
  v32[1] = v33;

  v30 = v0[1];
LABEL_11:

  return v30();
}

uint64_t sub_251A85330()
{
  v1 = v0[32];
  v2 = v0[25];
  sub_251A8587C(&qword_27F478E50, type metadata accessor for WebRequestResponseError, &protocol conformance descriptor for WebRequestResponseError);
  swift_allocError();
  sub_251A85694(v2, v3);
  sub_251A856F8(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  v4 = v0[1];

  return v4();
}

uint64_t sub_251A8544C(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_251A85498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_251C6FE64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251A8550C(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *v2;
  sub_251A85E50(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_251A85548(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t type metadata accessor for IssuerDirectoryWebRequest(uint64_t a1)
{
  result = qword_27F478E88;
  if (!qword_27F478E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

uint64_t sub_251A85630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssuerDirectoryWebRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251A85694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebRequestResponseError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251A856F8(uint64_t a1)
{
  v2 = type metadata accessor for IssuerDirectoryWebRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
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

unint64_t sub_251A8578C()
{
  result = qword_27F478E58;
  if (!qword_27F478E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E58);
  }

  return result;
}

unint64_t sub_251A85834()
{
  result = qword_27F478E60;
  if (!qword_27F478E60)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F478E60);
  }

  return result;
}

uint64_t sub_251A8587C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251A858C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_251A85918()
{
  result = qword_27F478E70;
  if (!qword_27F478E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E70);
  }

  return result;
}

uint64_t sub_251A8596C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251A83028(result, a2);
  }

  return result;
}

unint64_t sub_251A85980()
{
  result = qword_27F478E78;
  if (!qword_27F478E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E78);
  }

  return result;
}

unint64_t sub_251A859D4()
{
  result = qword_27F478E80;
  if (!qword_27F478E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IssuerDirectoryWebRequestHandlerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IssuerDirectoryWebRequestHandlerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_251A85BA0(uint64_t a1)
{
  sub_251A85C78(319);
  if (v1 <= 0x3F)
  {
    sub_251C6FE64();
    if (v2 <= 0x3F)
    {
      sub_251A85CF4(319, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251A85C78(uint64_t a1)
{
  if (!qword_27F478E98)
  {
    sub_251A85CF4(255, &qword_27F478EA0, &type metadata for HTTPHeader, MEMORY[0x277D83940]);
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F478E98);
    }
  }
}

void sub_251A85CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251A85D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251A85DA0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_251A85DFC()
{
  result = qword_27F478EA8;
  if (!qword_27F478EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478EA8);
  }

  return result;
}

uint64_t sub_251A85E50(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251A858C4(result, a2);
  }

  return result;
}

uint64_t sub_251A85EAC(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251A85F5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251A85FF4(uint64_t a1)
{
  sub_251A85F5C(319, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251A85F5C(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251A86150(uint64_t a1)
{
  result = type metadata accessor for PBTimeSeries(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PBCategorySeries(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PBWorkout(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PBCharacteristics(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for PBAllClinicalRecords(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for PBECGs(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for PBCycleTracking(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for PBECGMeasurement(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for PBActivitySummarySeries(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for PBPatientMeta(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for PBSleepSummary(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for PBSleepSeries(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for PBHistogramSeries(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for PBMedicationTrackings(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for PBMedicationTrackingDoseEvents(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for PBMedicationTrackingSchedules(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for PBActiveMedications(319);
                                  if (v18 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_251A86338(uint64_t a1)
{
  sub_251A85F5C(319, &qword_27F478ED0, type metadata accessor for PBReference, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251A86440(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251A8648C(uint64_t a1)
{
  sub_251A85F5C(319, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251A85F5C(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251A865B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBECGMeta(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_251A6F070);
}

uint64_t sub_251A86608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PBECGMeta(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_251A6F11C);
}

uint64_t sub_251A86678(uint64_t a1)
{
  result = type metadata accessor for PBECGMeta(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_251A86720(uint64_t a1, uint64_t a2)
{
  sub_251A9FE94(0, &qword_27F479118, type metadata accessor for PBReference.OneOf_Metadata);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_251AA005C(a1, &v10 - v6, type metadata accessor for PBReference.OneOf_Metadata);
  sub_251AA005C(a2, &v7[v8], type metadata accessor for PBReference.OneOf_Metadata);
  LOBYTE(a2) = sub_251B8DAA4(v7, &v7[v8]);
  sub_251A9D3AC(&v7[v8], type metadata accessor for PBECGMeta);
  sub_251A9D3AC(v7, type metadata accessor for PBECGMeta);
  return a2 & 1;
}

uint64_t sub_251A86844(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_251C704D4();
    }
  }

  return result;
}

uint64_t sub_251A868B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_251C70624();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for PBRawData(0);
  return sub_251C70394();
}

uint64_t sub_251A869D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A932D4(&qword_27F478F80, type metadata accessor for PBRawData, &unk_251C74D9C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251A86A78(uint64_t a1)
{
  v2 = sub_251A932D4(&qword_27F478F68, type metadata accessor for PBRawData, &unk_251C74DD4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251A86AE4(uint64_t a1, uint64_t a2)
{
  sub_251A932D4(&qword_27F478F68, type metadata accessor for PBRawData, &unk_251C74DD4);

  return sub_251C705C4();
}

uint64_t sub_251A86B60(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_251A9D1F0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  sub_251C703B4();
  sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251A86C0C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B08);
  __swift_project_value_buffer(v0, qword_27F4A1B08);
  sub_251A85F5C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_251C747E0;
  v5 = v44 + v4;
  v6 = v44 + v4 + *(v2 + 56);
  *(v44 + v4) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v44 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "date_range";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v44 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "time_series";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v44 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "category_series";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v44 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "workout";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v44 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "characteristics";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v44 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "record";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  v21 = (v44 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 13;
  *v22 = "ecgs";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v9();
  v23 = v44 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 14;
  *v23 = "cycleTracking";
  *(v23 + 8) = 13;
  *(v23 + 16) = 2;
  v9();
  v24 = (v44 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 15;
  *v25 = "ecg";
  *(v25 + 1) = 3;
  v25[16] = 2;
  v9();
  v26 = (v44 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 16;
  *v27 = "activitySummaries";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v9();
  v28 = (v44 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 17;
  *v29 = "patient_meta";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v9();
  v30 = (v44 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 18;
  *v31 = "sleep_summary";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v9();
  v32 = (v44 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 19;
  *v33 = "sleep_series";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v9();
  v34 = (v44 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 20;
  *v35 = "histogram_series";
  *(v35 + 1) = 16;
  v35[16] = 2;
  v9();
  v36 = (v44 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 21;
  *v37 = "medication_trackings";
  *(v37 + 1) = 20;
  v37[16] = 2;
  v9();
  v38 = v44 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 22;
  *v38 = "medication_tracking_dose_events";
  *(v38 + 8) = 31;
  *(v38 + 16) = 2;
  v9();
  v39 = (v44 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 23;
  *v40 = "medication_tracking_schedules";
  *(v40 + 1) = 29;
  v40[16] = 2;
  v9();
  v41 = (v44 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 24;
  *v42 = "active_medications";
  *(v42 + 1) = 18;
  v42[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251A87218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_251A9D358();
          sub_251C70494();
          break;
        case 2:
          sub_251A874D0(a1, v5, a2, a3);
          break;
        case 3:
          sub_251A87584(v5, a1, a2, a3);
          break;
        case 4:
          sub_251A87BD0(v5, a1, a2, a3);
          break;
        case 5:
          sub_251A8822C(v5, a1, a2, a3);
          break;
        case 6:
          sub_251A88888(v5, a1, a2, a3);
          break;
        case 7:
          sub_251A88EE4(v5, a1, a2, a3);
          break;
        case 13:
          sub_251A89540(v5, a1, a2, a3);
          break;
        case 14:
          sub_251A89B9C(v5, a1, a2, a3);
          break;
        case 15:
          sub_251A8A1F8(v5, a1, a2, a3);
          break;
        case 16:
          sub_251A8A854(v5, a1, a2, a3);
          break;
        case 17:
          sub_251A8AEB0(v5, a1, a2, a3);
          break;
        case 18:
          sub_251A8B50C(v5, a1, a2, a3);
          break;
        case 19:
          sub_251A8BB68(v5, a1, a2, a3);
          break;
        case 20:
          sub_251A8C1C4(v5, a1, a2, a3);
          break;
        case 21:
          sub_251A8C820(v5, a1, a2, a3);
          break;
        case 22:
          sub_251A8CE7C(v5, a1, a2, a3);
          break;
        case 23:
          sub_251A8D4D8(v5, a1, a2, a3);
          break;
        case 24:
          sub_251A8DB34(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251A874D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBTypedData(0);
  type metadata accessor for PBDateRange(0);
  sub_251A932D4(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  return sub_251C70564();
}

uint64_t sub_251A87584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBTimeSeries(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479040, type metadata accessor for PBTimeSeries, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v41 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v26 = v4;
  v27 = v25;
  v25(&v36 - v23, 1, 1, v26);
  v36 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v36, v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v37 = v14;
  v38 = (*(v14 + 48))(v12, 1, v13);
  if (v38 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
LABEL_5:
    v28 = v44;
    goto LABEL_6;
  }

  sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
    goto LABEL_5;
  }

  sub_251A9FFEC(v24, &qword_27F479040, type metadata accessor for PBTimeSeries);
  v32 = v39;
  sub_251A9D40C(v17, v39, type metadata accessor for PBTimeSeries);
  sub_251A9D40C(v32, v24, type metadata accessor for PBTimeSeries);
  v28 = v44;
  v27(v24, 0, 1, v44);
LABEL_6:
  v29 = v42;
  sub_251A932D4(&qword_27F478FB0, type metadata accessor for PBTimeSeries, &unk_251C82F2C);
  v30 = v43;
  sub_251C70564();
  if (v30)
  {
    return sub_251A9FFEC(v24, &qword_27F479040, type metadata accessor for PBTimeSeries);
  }

  sub_251A9FF6C(v24, v29, &qword_27F479040, type metadata accessor for PBTimeSeries);
  if ((*(v41 + 48))(v29, 1, v28) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479040, type metadata accessor for PBTimeSeries);
    return sub_251A9FFEC(v29, &qword_27F479040, type metadata accessor for PBTimeSeries);
  }

  else
  {
    v33 = v40;
    sub_251A9D40C(v29, v40, type metadata accessor for PBTimeSeries);
    if (v38 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479040, type metadata accessor for PBTimeSeries);
    v34 = v48;
    v35 = v36;
    sub_251A9FFEC(v48 + v36, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBTimeSeries);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v34 + v35, 0, 1, v13);
  }
}