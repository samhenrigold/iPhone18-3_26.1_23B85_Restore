void *sub_2515F22D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2515F2340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2515F8380(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2515F244C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2515F8380(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2515F2564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25163516C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
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
}

uint64_t sub_2515F261C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25163516C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2515F26D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2516350BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25163522C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2515F27C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2516350BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25163522C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2515F28C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
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

void sub_2515F29B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_2515F2AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25163516C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2515F2B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25163516C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = a2 + 2;
  }

  return result;
}

uint64_t sub_2515F2C1C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2515F2CBC()
{
  sub_2516046C8(0);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  v2 = sub_25163525C();
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2515F2D9C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2515F2DDC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  sub_2516041EC();
  v4 = sub_25163551C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v6 | 7);
}

void *sub_2515F2FC4@<X0>(void *a3@<X8>)
{
  result = sub_2516356BC();
  *a3 = v5;
  a3[1] = v6;
  return result;
}

__n128 sub_2515F301C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2515F3028(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_251609618(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2515F30D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_251609618(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2515F318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2515F8380(0);
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

void sub_2515F3248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2515F8380(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2515F3300(uint64_t a1, uint64_t a2)
{
  v4 = sub_25163516C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2515F336C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25163516C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2515F33DC()
{
  sub_251611730(0, &qword_27F4471D8, MEMORY[0x277D85670]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2515F348C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for ClassificationFactorTimeline(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  sub_2515F8380(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v3 | v7 | v12;
  v15 = (((*(*(v10 - 8) + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v16 = sub_25163516C();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v8, v16);
  v17(v0 + v8 + *(v11 + 44), v16);

  v17(v0 + v13, v16);
  v17(v0 + v13 + *(v11 + 44), v16);

  return MEMORY[0x2821FE8E8](v0, v15 + 16, v14 | 7);
}

uint64_t sub_2515F370C(void *a1)
{
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  sub_25163558C();

  return swift_getWitnessTable();
}

uint64_t sub_2515F3828()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_25163522C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2515F3980()
{
  sub_25161F1F4(0, &qword_27F446E38, type metadata accessor for os_unfair_lock_s);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  sub_25161F1F4(0, &qword_27F447378, sub_25161F248);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2515F3A58()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2515F3A90()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2515F3ACC()
{
  v20 = *(v0 + 16);
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  sub_2515F8380(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(*(v5 - 8) + 64);
  v19 = (v9 + v7 + v8) & ~v7;
  v21 = sub_25163522C();
  v10 = *(v21 - 8);
  v11 = *(v10 + 80);
  v12 = (v19 + v9 + v11) & ~v11;
  v13 = v2 | v7 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v3, v20);
  v15 = v0 + v8;
  v16 = sub_25163516C();
  v17 = *(*(v16 - 8) + 8);
  v17(v15, v16);
  v17(v15 + *(v6 + 44), v16);
  v17(v0 + v19, v16);
  v17(v0 + v19 + *(v6 + 44), v16);
  (*(v10 + 8))(v0 + v12, v21);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v13 | 7);
}

uint64_t sub_2515F3D24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25163522C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2515F3E6C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2515F3F24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v22 = *(v2 + 80);
  v3 = *(v2 + 64);
  sub_2515F8380(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 80);
  v18 = (((v22 + 48) & ~v22) + v3 + v6) & ~v6;
  v7 = *(*(v4 - 8) + 64);
  v23 = sub_25163522C();
  v8 = *(v23 - 8);
  v9 = *(v8 + 80);
  v19 = (v18 + v7 + v9) & ~v9;
  v10 = *(v8 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v13 = (v19 + v10 + v12) & ~v12;
  v20 = *(v11 + 64);
  v14 = v22 | v6 | v9 | v12;

  (*(v2 + 8))(v0 + ((v22 + 48) & ~v22), v1);
  v15 = sub_25163516C();
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v18, v15);
  v16(v0 + v18 + *(v5 + 44), v15);
  (*(v8 + 8))(v0 + v19, v23);
  (*(v11 + 8))(v0 + v13, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v13 + v20, v14 | 7);
}

uint64_t sub_2515F41E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2515F4220()
{
  v18 = *(v0 + 16);
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v22 = (v2 + 48) & ~v2;
  v3 = *(v1 + 64);
  sub_2515F8380(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 80);
  v7 = (v22 + v3 + v6) & ~v6;
  v19 = v7;
  v21 = *(*(v4 - 8) + 64);
  v25 = sub_25163522C();
  v8 = *(v25 - 8);
  v9 = *(v8 + 80);
  v20 = (v7 + v21 + v9) & ~v9;
  v10 = *(v8 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v24 = v2 | v6 | v9 | v12;
  v13 = (v20 + v10 + v12) & ~v12;
  v14 = (*(v11 + 64) + v6 + v13) & ~v6;

  (*(v1 + 8))(v0 + v22, v18);
  v15 = sub_25163516C();
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v19, v15);
  v16(v0 + v19 + *(v5 + 44), v15);
  (*(v8 + 8))(v0 + v20, v25);
  (*(v11 + 8))(v0 + v13, AssociatedTypeWitness);
  v16(v0 + v14, v15);
  v16(v0 + v14 + *(v5 + 44), v15);

  return MEMORY[0x2821FE8E8](v0, ((v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v24 | 7);
}

uint64_t sub_2515F4544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84) == a2)
  {
    v4 = *(v3 + 48);

    return v4(a1);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_2516352AC();
    v9 = sub_25163563C();
    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 36), a2, v9);
  }
}

uint64_t sub_2515F46AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);
    v5 = *(a4 + 16);

    return v7(a1, a2, a2, v5);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_2516352AC();
    v11 = sub_25163563C();
    return (*(*(v11 - 8) + 56))(a1 + *(a4 + 36), a2, a2, v11);
  }
}

uint64_t sub_2515F4824(void *a1)
{
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  sub_25163558C();

  return swift_getWitnessTable();
}

uint64_t sub_2515F48AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  sub_2515F8380(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2515F4924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  sub_2515F8380(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2515F49A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2515F8380(0);
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v6;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for ClassificationAxis(0, *(a3 + 16), *(a3 + 24), v7);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 40));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2515F4AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2515F8380(0);
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v8;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    result = type metadata accessor for ClassificationAxis(0, *(a4 + 16), *(a4 + 24), v9);
    v15 = *(result - 8);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 36);
  }

  return v12(v13, a2, a2, v11);
}

uint64_t sub_2515F4BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25163516C();
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v6);
  }

  else
  {
    v11 = type metadata accessor for ClassificationAxis(0, *(a3 + 16), *(a3 + 24), v7);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2515F4CB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25163516C();
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v8);
  }

  else
  {
    v13 = type metadata accessor for ClassificationAxis(0, *(a4 + 16), *(a4 + 24), v9);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 36);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2515F4DB0(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for MapMeasurementEnumerator(255, v3);
  return swift_getWitnessTable();
}

uint64_t sub_2515F4DFC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2515F4E3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2515F4E84@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EmptyClassificationFactorTimelineProvider(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for EmptyClassificationFactorTimelineProvider(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2515F505C(uint64_t a1, int a2)
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

uint64_t sub_2515F507C(uint64_t result, int a2, int a3)
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

void sub_2515F50B8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2515F514C()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

uint64_t sub_2515F5194(uint64_t a1)
{
  v2 = *v1;
  sub_25163590C();
  MEMORY[0x25307C1E0](v2);
  return sub_25163594C();
}

uint64_t sub_2515F5220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ClassificationQualityGroup.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClassificationQualityGroup.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2515F5344@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2515F5350()
{
  sub_25163590C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_2515F53A4(uint64_t a1)
{
  sub_25163590C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_2515F549C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2516358DC();
  }
}

BOOL static ClassificationQualityGroup.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a1 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v2 == 1685024615 && v3 == 0xE400000000000000)
    {
      v9 = 0;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v5 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v4 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v4 == 1685024615 && v5 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 < v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 < v7;
}

unint64_t sub_2515F5660()
{
  result = qword_27F446B98;
  if (!qword_27F446B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446B98);
  }

  return result;
}

BOOL sub_2515F56B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a1 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v2 == 1685024615 && v3 == 0xE400000000000000)
    {
      v9 = 0;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v5 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v4 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v4 == 1685024615 && v5 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 < v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 < v7;
}

BOOL sub_2515F5814(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v4 == 1685024615 && v5 == 0xE400000000000000)
    {
      v9 = 0;
      if (v2 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v2 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v3 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v2 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v2 == 1685024615 && v3 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 >= v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 >= v7;
}

BOOL sub_2515F5974(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a1 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v2 == 1685024615 && v3 == 0xE400000000000000)
    {
      v9 = 0;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v5 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v4 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v4 == 1685024615 && v5 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 >= v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 >= v7;
}

BOOL sub_2515F5AD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v4 == 1685024615 && v5 == 0xE400000000000000)
    {
      v9 = 0;
      if (v2 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v2 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v3 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v2 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v2 == 1685024615 && v3 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 < v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 < v7;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2515F5C40(uint64_t a1, int a2)
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

uint64_t sub_2515F5C88(uint64_t result, int a2, int a3)
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

unint64_t sub_2515F5CD4()
{
  result = qword_27F446BA0;
  if (!qword_27F446BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446BA0);
  }

  return result;
}

uint64_t PregnancyTimeline.ChangeMoment.init(date:pregnancyStatus:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_25163516C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

BOOL static PregnancyTimeline.ChangeMoment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25163514C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t PregnancyTimeline.ChangeMoment.hash(into:)(uint64_t a1)
{
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  v2 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  return MEMORY[0x25307C1E0](*(v1 + *(v2 + 20)));
}

uint64_t PregnancyTimeline.ChangeMoment.hashValue.getter()
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  v1 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  MEMORY[0x25307C1E0](*(v0 + *(v1 + 20)));
  return sub_25163594C();
}

uint64_t sub_2515F5F58(uint64_t a1)
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  MEMORY[0x25307C1E0](*(v1 + *(a1 + 20)));
  return sub_25163594C();
}

uint64_t sub_2515F5FFC(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  return MEMORY[0x25307C1E0](*(v2 + *(a2 + 20)));
}

uint64_t sub_2515F6088(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  MEMORY[0x25307C1E0](*(v2 + *(a2 + 20)));
  return sub_25163594C();
}

void *PregnancyTimeline.changeMoments.getter()
{
  v1 = sub_25163516C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v73 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v85 = &v71 - v6;
  MEMORY[0x28223BE20](v5);
  v77 = &v71 - v7;
  v87 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  v90 = *(v87 - 8);
  v8 = MEMORY[0x28223BE20](v87);
  v71 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v71 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v84 = &v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v91 = &v71 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v76 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v79 = &v71 - v18;
  sub_2515F83E8(0);
  v83 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v82 = &v71 - v23;
  sub_2515F84A4(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F84C4(0);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PregnancyTimeline(0);
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  v72 = v0;
  sub_25163599C();
  (*(v26 + 16))(v32, v28, v25);
  v33 = *(v30 + 44);
  sub_2515F83A0(&qword_27F446BC8, sub_2515F84A4, MEMORY[0x277D84ED0]);
  sub_2516355AC();
  (*(v26 + 8))(v28, v25);
  v86 = v25;
  sub_2516355CC();
  v34 = *&v32[v33] == v92[0];
  v74 = v2;
  if (!v34)
  {
    v78 = 0;
    v88 = (v2 + 8);
    v44 = MEMORY[0x277D84F90];
    v89 = (v2 + 16);
    v80 = v33;
    v81 = v1;
    v45 = v87;
    while (1)
    {
      v46 = sub_2516355FC();
      v47 = v82;
      sub_2515F85B0(v48, v82, sub_2515F83E8);
      v46(v92, 0);
      sub_2516355DC();
      sub_2515F8618(v47, v22, sub_2515F83E8);
      v49 = v44[2];
      if (v49)
      {
        v50 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v51 = *(v90 + 72);
        v52 = v79;
        sub_2515F85B0(v44 + v50 + v51 * (v49 - 1), v79, type metadata accessor for PregnancyTimeline.ChangeMoment);
        if (*(v52 + *(v45 + 20)) == 2)
        {
          v53 = v77;
          sub_25163510C();
          if (sub_25163512C())
          {
            v54 = v76;
            (*v89)(v76, v53, v1);
            *(v54 + *(v45 + 20)) = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_2515F8B90(0, v44[2] + 1, 1, v44, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
            }

            v56 = v44[2];
            v55 = v44[3];
            if (v56 >= v55 >> 1)
            {
              v44 = sub_2515F8B90((v55 > 1), v56 + 1, 1, v44, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
            }

            (*v88)();
            sub_2515F8680(v79, type metadata accessor for PregnancyTimeline.ChangeMoment);
            v44[2] = v56 + 1;
            sub_2515F8618(v76, v44 + v50 + v56 * v51, type metadata accessor for PregnancyTimeline.ChangeMoment);
            goto LABEL_24;
          }

          (*v88)(v53, v1);
        }

        sub_2515F8680(v52, type metadata accessor for PregnancyTimeline.ChangeMoment);
      }

LABEL_24:
      v57 = *v89;
      v58 = v91;
      (*v89)(v91, v22, v1);
      *(v58 + *(v45 + 20)) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_2515F8B90(0, v44[2] + 1, 1, v44, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
      }

      v60 = v44[2];
      v59 = v44[3];
      if (v60 >= v59 >> 1)
      {
        v44 = sub_2515F8B90((v59 > 1), v60 + 1, 1, v44, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
      }

      v44[2] = v60 + 1;
      v61 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v62 = *(v90 + 72);
      sub_2515F8618(v91, v44 + v61 + v62 * v60, type metadata accessor for PregnancyTimeline.ChangeMoment);
      v63 = *(v83 + 36);
      v64 = v85;
      sub_2516350FC();
      v65 = sub_25163514C();
      v66 = v64;
      v1 = v81;
      (*v88)(v66, v81);
      if (v65)
      {
        sub_2515F8680(v22, sub_2515F83E8);
        v78 = 1;
        v45 = v87;
      }

      else
      {
        v67 = v84;
        v57(v84, &v22[v63], v1);
        v45 = v87;
        *(v67 + *(v87 + 20)) = 2;
        v69 = v44[2];
        v68 = v44[3];
        if (v69 >= v68 >> 1)
        {
          v44 = sub_2515F8B90((v68 > 1), v69 + 1, 1, v44, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
        }

        sub_2515F8680(v22, sub_2515F83E8);
        v44[2] = v69 + 1;
        sub_2515F8618(v84, v44 + v61 + v69 * v62, type metadata accessor for PregnancyTimeline.ChangeMoment);
      }

      sub_2516355CC();
      if (*&v32[v80] == v92[0])
      {
        goto LABEL_4;
      }
    }
  }

  v78 = 0;
  v44 = MEMORY[0x277D84F90];
LABEL_4:
  sub_2515F8680(v32, sub_2515F84C4);
  v35 = v44[2];
  if (v35)
  {
    v36 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v37 = *(v90 + 72);
    v38 = v75;
    sub_2515F85B0(v44 + v36 + v37 * (v35 - 1), v75, type metadata accessor for PregnancyTimeline.ChangeMoment);
    if ((v78 & 1) == 0)
    {
      v39 = v73;
      sub_25163510C();
      sub_2515F8380(0);
      sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (sub_25163530C())
      {
        v40 = v74;
        v41 = v71;
        (*(v74 + 16))(v71, v39, v1);
        *(v41 + *(v87 + 20)) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2515F8B90(0, v44[2] + 1, 1, v44, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
        }

        v43 = v44[2];
        v42 = v44[3];
        if (v43 >= v42 >> 1)
        {
          v44 = sub_2515F8B90((v42 > 1), v43 + 1, 1, v44, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
        }

        (*(v40 + 8))(v39, v1);
        sub_2515F8680(v38, type metadata accessor for PregnancyTimeline.ChangeMoment);
        v44[2] = v43 + 1;
        sub_2515F8618(v41, v44 + v36 + v43 * v37, type metadata accessor for PregnancyTimeline.ChangeMoment);
        return v44;
      }

      (*(v74 + 8))(v39, v1);
    }

    sub_2515F8680(v38, type metadata accessor for PregnancyTimeline.ChangeMoment);
  }

  return v44;
}

uint64_t PregnancyTimeline.init<A>(dateRange:pregnancyIntervals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2515F85B0(a1, a5, sub_2515F8380);
  sub_2515F83E8(0);
  sub_2515F74C0(sub_2515F6FB4, 0, a3, v9, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v10);
  type metadata accessor for PregnancyTimeline(0);
  sub_25163516C();
  sub_2515F86E0(0);
  sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  sub_2515F83A0(&qword_27F446BE0, sub_2515F86E0, MEMORY[0x277D83970]);
  sub_2516359AC();
  (*(*(a3 - 1) + 8))(a2, a3);
  return sub_2515F8680(a1, sub_2515F8380);
}

uint64_t sub_2515F6FB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_2515F8380(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F85B0(a1, v6, sub_2515F8380);
  return sub_2515F705C(v6, a2);
}

uint64_t sub_2515F705C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  sub_2515F8E44(0);
  v41 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - v6;
  v7 = sub_25163516C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  sub_2515F8380(0);
  v20 = *(v19 + 36);
  sub_2516350FC();
  v21 = a1;
  LOBYTE(a1) = sub_25163514C();
  v38 = v8[1];
  v39 = v8 + 1;
  v38(v18, v7);
  v22 = v8[2];
  if (a1)
  {
    v22(v18, v21, v7);
    v22(v16, v21 + v20, v7);
    sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v23 = sub_25163530C();
    sub_2515F8680(v21, sub_2515F8380);
    v13 = v18;
    if (v23)
    {
LABEL_5:
      v26 = v8[4];
      v27 = v40;
      v26(v40, v13, v7);
      v28 = v41;
      v26((v27 + *(v41 + 48)), v16, v7);
      v29 = v37;
      sub_2515F85B0(v27, v37, sub_2515F8E44);
      v30 = *(v28 + 48);
      v31 = v42;
      v26(v42, v29, v7);
      v32 = v38;
      v38((v29 + v30), v7);
      sub_2515F8618(v27, v29, sub_2515F8E44);
      v33 = *(v28 + 48);
      sub_2515F83E8(0);
      v26(&v31[*(v34 + 36)], (v29 + v33), v7);
      return v32(v29, v7);
    }

    __break(1u);
  }

  v22(v13, v21, v7);
  sub_2516350DC();
  v16 = v36;
  sub_2516350CC();
  sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v24 = sub_25163530C();
  result = sub_2515F8680(v21, sub_2515F8380);
  if (v24)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2515F74C0(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_25163563C();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_2516353CC();
  v63 = sub_25163572C();
  v58 = sub_25163573C();
  sub_25163570C();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_2516353BC();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25163565C();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_25163571C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_25163565C();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_25163571C();
      sub_25163565C();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_2515F7BB4(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  return sub_25163530C() & 1;
}

uint64_t static PregnancyTimeline.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25163516C();
  sub_2515F83A0(&qword_27F446BE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  sub_2515F8380(0);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for PregnancyTimeline(0) + 20);
  v6 = sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);

  return MEMORY[0x2821FE698](a1 + v5, a2 + v5, v4, v6);
}

uint64_t PregnancyTimeline.hash(into:)(uint64_t a1)
{
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  sub_2516352CC();
  type metadata accessor for PregnancyTimeline(0);
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  return sub_2516352CC();
}

uint64_t PregnancyTimeline.hashValue.getter()
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  sub_2516352CC();
  type metadata accessor for PregnancyTimeline(0);
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2515F7F5C()
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  sub_2516352CC();
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2515F8064(uint64_t a1)
{
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  sub_2516352CC();
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  return sub_2516352CC();
}

uint64_t sub_2515F8154(uint64_t a1)
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2515F8380(0);
  sub_2516352CC();
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2515F8258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25163516C();
  sub_2515F83A0(&qword_27F446BE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  sub_2515F8380(0);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  v8 = sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);

  return MEMORY[0x2821FE698](a1 + v7, a2 + v7, v6, v8);
}

uint64_t sub_2515F83A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2515F8408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25163516C();
    v7 = sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2515F84C4(uint64_t a1)
{
  if (!qword_27F446BC0)
  {
    sub_2515F84A4(255);
    sub_2515F83A0(&qword_27F446BC8, sub_2515F84A4, MEMORY[0x277D84ED0]);
    v1 = sub_25163574C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F446BC0);
    }
  }
}

uint64_t sub_2515F8578(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2515F85B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2515F8618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2515F8680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2515F8714()
{
  result = qword_27F446BF0;
  if (!qword_27F446BF0)
  {
    sub_2515F8408(255, &qword_27F446BD0, MEMORY[0x277D84ED8]);
    sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446BF0);
  }

  return result;
}

void sub_2515F8890(uint64_t a1)
{
  sub_2515F8380(319);
  if (v1 <= 0x3F)
  {
    sub_2515F8408(319, &qword_27F446BD0, MEMORY[0x277D84ED8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2515F8958(uint64_t a1)
{
  result = sub_25163516C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_2515F89CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2515F8D84(0, &qword_27F446C38, sub_2515F8DEC, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2515F8B90(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_2515F8D84(0, a5, a6, MEMORY[0x277D84560]);
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

void sub_2515F8D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2515F8DEC()
{
  if (!qword_27F446C40)
  {
    v0 = sub_25163560C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F446C40);
    }
  }
}

void sub_2515F8E44(uint64_t a1)
{
  if (!qword_27F446C50)
  {
    sub_25163516C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F446C50);
    }
  }
}

HealthDomains::DomainIdentifier_optional __swiftcall DomainRegistry.domainIdentifier(for:)(HealthDomains::MeasureIdentifier a1)
{
  v3 = v2;
  v4 = (*(v1 + 16))(a1.identifier._object);
  sub_2515F9034(sub_2515F900C, v4, v3);

  result.value.identifier._object = v6;
  result.value.identifier._countAndFlagsBits = v5;
  result.is_nil = v7;
  return result;
}

uint64_t sub_2515F8F54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = *a1;
  v8 = (*(a6 + 64))(v12, a5, a6);
  v12[0] = a3;
  v12[1] = a4;
  v11[2] = v12;
  v9 = sub_2515F92E4(sub_2515F9390, v11, v8);

  return v9 & 1;
}

uint64_t sub_2515F9034@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 40);
    while (1)
    {
      v8 = *v7;
      v10 = *(v7 - 1);
      v11 = v8;

      result = v6(&v10);
      if (v3)
      {
      }

      if (result)
      {
        break;
      }

      v7 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v9 = v11;
    *a3 = v10;
    a3[1] = v9;
  }

  else
  {
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t DomainRegistry.domain(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v7 = v12;
  DomainRegistry.domainIdentifier(for:)(*(&a2 - 1));
  v10[2] = a2;
  v10[3] = a3;
  v11 = v3;
  v8 = sub_2515F91CC(sub_2515F9168, v10, v12[2], v12[3]);

  return v8;
}

uint64_t sub_2515F9168@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  result = (*(v5 + 32))(v8, v4);
  *a2 = result;
  return result;
}

uint64_t sub_2515F91CC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v7[0] = a3;
  v7[1] = a4;

  a1(&v8, v7);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    return v8;
  }

  return result;
}

uint64_t sub_2515F92E4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_2515F9390(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2516358DC() & 1;
  }
}

uint64_t BirthdayTimeline.init(dateOfBirthComponents:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2515FA1AC(0, &qword_27F446C60, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2516350BC();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a3, a1, v9);
  v11 = sub_25163522C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a2, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  sub_2516350AC();
  (*(v10 + 8))(a1, v9);
  v13 = type metadata accessor for BirthdayTimeline(0);
  return (*(v12 + 32))(a3 + *(v13 + 20), a2, v11);
}

uint64_t type metadata accessor for BirthdayTimeline(uint64_t a1)
{
  result = qword_27F446C88;
  if (!qword_27F446C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BirthdayTimeline.birthdays(in:)(uint64_t a1)
{
  v89 = a1;
  sub_2515FA080(0);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515FA14C(0, v4);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2516351CC();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2516351EC();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_25163520C();
  v92 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2516351FC();
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25163519C();
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515FA1AC(0, &qword_27F446C78, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v61 - v17;
  sub_2515FA1AC(0, &qword_27F446C60, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v61 - v20;
  v22 = sub_2516350BC();
  v82 = *(v22 - 8);
  v83 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515FA1AC(0, &qword_27F446C80, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v25 - 8);
  v78 = &v61 - v26;
  v27 = sub_25163516C();
  v79 = *(v27 - 8);
  v80 = v27;
  MEMORY[0x28223BE20](v27);
  v67 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(type metadata accessor for BirthdayTimeline(0) + 20);
  v29 = sub_25163522C();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  v30 = sub_25163523C();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  sub_25163508C();
  sub_25163507C();
  LOBYTE(v60) = 1;
  v59 = 0;
  LOBYTE(v58) = 1;
  v57 = 0;
  sub_25163509C();
  v31 = *MEMORY[0x277CC9870];
  v32 = *(v13 + 104);
  v66 = v13 + 104;
  v65 = v32;
  v32(v15, v31, v90);
  v33 = v81;
  v34 = v84;
  v35 = v85;
  (*(v81 + 104))(v84, *MEMORY[0x277CC98F0], v85);
  v36 = v92;
  v37 = *(v92 + 104);
  v38 = v87;
  v63 = *MEMORY[0x277CC9900];
  v39 = v88;
  v64 = v92 + 104;
  v62 = v37;
  v37(v87);
  v72 = v1;
  v40 = v78;
  sub_25163521C();
  v41 = *(v36 + 8);
  v92 = v36 + 8;
  v68 = v41;
  v41(v38, v39);
  (*(v33 + 8))(v34, v35);
  v42 = *(v91 + 8);
  v91 += 8;
  v42(v15, v90);
  (*(v82 + 8))(v24, v83);
  v43 = v79;
  v44 = v80;
  if ((*(v79 + 48))(v40, 1) == 1)
  {
    sub_2515FA200(v40);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v46 = v43;
    v47 = v67;
    (*(v43 + 32))(v67, v40, v44);
    sub_2515FA278(0, &qword_280DD70C0, MEMORY[0x277D83638]);
    v48 = v69;
    sub_2516351BC();
    v49 = v90;
    v65(v15, *MEMORY[0x277CC9868], v90);
    v51 = v87;
    v50 = v88;
    v62(v87, v63, v88);
    v59 = MEMORY[0x277D84F90];
    v60 = MEMORY[0x277D84F90];
    v57 = MEMORY[0x277D84F90];
    v58 = MEMORY[0x277D84F90];
    v52 = v73;
    sub_2516351DC();
    v68(v51, v50);
    v42(v15, v49);
    (*(v70 + 8))(v48, v71);
    sub_2515FA278(0, &qword_27F446BB0, MEMORY[0x277D83D00]);
    v54 = v76;
    (*(*(v53 - 8) + 56))(v76, 1, 1, v53);
    sub_2516351AC();
    v55 = sub_2515FA2E4(v54);
    MEMORY[0x28223BE20](v55);
    v59 = v89;
    v56 = sub_2515FA410(sub_2515FA3F0, &v57);
    (*(v74 + 8))(v52, v75);
    (*(v46 + 8))(v47, v44);
    return v56;
  }
}

void sub_2515FA080(uint64_t a1)
{
  if (!qword_27F446C68)
  {
    sub_2515FA278(255, &qword_27F446BB0, MEMORY[0x277D83D00]);
    v1 = sub_25163563C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F446C68);
    }
  }
}

unint64_t sub_2515FA0F4()
{
  result = qword_280DD7318;
  if (!qword_280DD7318)
  {
    sub_25163516C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD7318);
  }

  return result;
}

void sub_2515FA14C(uint64_t a1, uint64_t a2)
{
  if (!qword_27F446C70)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F446C70);
    }
  }
}

void sub_2515FA1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25163563C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2515FA200(uint64_t a1)
{
  sub_2515FA1AC(0, &qword_27F446C80, MEMORY[0x277CC9578]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2515FA278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25163516C();
    v7 = sub_2515FA0F4();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2515FA2E4(uint64_t a1)
{
  sub_2515FA080(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2515FA340(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_2515FA0F4();
  if ((sub_2516352FC() & 1) == 0)
  {
    return 0;
  }

  sub_2515FA278(0, &qword_280DD70C0, MEMORY[0x277D83638]);
  return sub_25163530C() & 1;
}

uint64_t sub_2515FA410(uint64_t (*a1)(char *), uint64_t a2)
{
  v34 = a1;
  sub_2515FA1AC(0, &qword_27F446C80, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = v26 - v5;
  v6 = sub_25163516C();
  v28 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v33 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - v9;
  sub_2515FA958(0);
  v12 = v11;
  v26[0] = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515FA14C(0, v15);
  swift_getOpaqueTypeConformance2();
  sub_2516353BC();
  v16 = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v14;
  v36 = v12;
  v18 = v28;
  v32 = AssociatedConformanceWitness;
  sub_25163565C();
  v30 = *(v18 + 48);
  v31 = v18 + 48;
  if (v30(v16, 1, v6) == 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_3:
    (*(v26[0] + 8))(v35, v36);
    sub_2515FA200(v16);
  }

  else
  {
    v20 = *(v18 + 32);
    v27 = (v18 + 8);
    v19 = MEMORY[0x277D84F90];
    v26[1] = a2;
    v20(v10, v16, v6);
    while (1)
    {
      v21 = v34(v10);
      if (v2)
      {
        break;
      }

      if (v21)
      {
        v20(v33, v10, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2515FD56C(0, *(v19 + 16) + 1, 1);
          v19 = v37;
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2515FD56C((v23 > 1), v24 + 1, 1);
          v19 = v37;
        }

        *(v19 + 16) = v24 + 1;
        v20((v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24), v33, v6);
        v16 = v29;
      }

      else
      {
        (*v27)(v10, v6);
      }

      sub_25163565C();
      if (v30(v16, 1, v6) == 1)
      {
        goto LABEL_3;
      }

      v20(v10, v16, v6);
    }

    (*v27)(v10, v6);
    (*(v26[0] + 8))(v35, v36);
  }

  return v19;
}

id BirthdayTimeline.age(on:)()
{
  v0 = sub_25163506C();
  v1 = sub_25163511C();
  v2 = [v0 hk:v1 ageWithCurrentDate:?];

  return v2;
}

uint64_t sub_2515FA8D4(uint64_t a1)
{
  result = sub_2516350BC();
  if (v2 <= 0x3F)
  {
    result = sub_25163522C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2515FA958(uint64_t a1)
{
  if (!qword_27F446C98)
  {
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeMetadata2();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (!v2)
    {
      atomic_store(AssociatedTypeWitness, &qword_27F446C98);
    }
  }
}

uint64_t sub_2515FAA78@<X0>(uint64_t (*a1)(unint64_t)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    v10 = a3(0);
    v11 = *(v10 - 8);
    v12 = v11;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v11 + 72) * i;
    result = a1(v13);
    if (v5)
    {
      return result;
    }

    if (result)
    {
      sub_2516017F0(v13, a5, a4);
      return (*(v12 + 56))(a5, 0, 1, v10);
    }
  }

  v15 = a3(0);
  return (*(*(v15 - 8) + 56))(a5, 1, 1, v15);
}

uint64_t ClassificationFactorTimeline.ChangeMoment.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25163516C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClassificationFactorTimeline.ChangeMoment.date.setter(uint64_t a1)
{
  v3 = sub_25163516C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClassificationFactorTimeline.ChangeMoment.init(date:factors:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  v10 = sub_25163516C();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  result = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v12 = a3 + *(result + 20);
  *v12 = v5;
  *(v12 + 8) = v6;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = v9;
  return result;
}

BOOL static ClassificationFactorTimeline.ChangeMoment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_25163514C())
  {
    v4 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
    v5 = (a1 + *(v4 + 20));
    v6 = *(v5 + 8);
    v7 = *(v5 + 32);
    v17 = *v5;
    v18 = v6;
    v19 = *(v5 + 1);
    v20 = v7;
    v8 = (a2 + *(v4 + 20));
    v9 = *(v8 + 8);
    v10 = *(v8 + 32);
    v13 = *v8;
    v14 = v9;
    v15 = *(v8 + 1);
    v16 = v10;
    return _s13HealthDomains23ClassificationFactorSetV2eeoiySbAC_ACtFZ_0(&v17, &v13);
  }

  else
  {
    return 0;
  }
}

uint64_t ClassificationFactorTimeline.ChangeMoment.hash(into:)(uint64_t a1)
{
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  v2 = (v1 + *(type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0) + 20));
  v4 = v2[2];
  v3 = v2[3];
  v5 = *(v2 + 32);
  if (*(v2 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v6 = *v2;
    sub_25163592C();
    MEMORY[0x25307C1E0](v6);
  }

  MEMORY[0x25307C1E0](v4);
  MEMORY[0x25307C1E0](v3);
  return MEMORY[0x25307C1E0](v5);
}

uint64_t ClassificationFactorTimeline.ChangeMoment.hashValue.getter()
{
  sub_25163590C();
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  v1 = (v0 + *(type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0) + 20));
  v3 = v1[2];
  v2 = v1[3];
  v4 = *(v1 + 32);
  if (*(v1 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v5 = *v1;
    sub_25163592C();
    MEMORY[0x25307C1E0](v5);
  }

  MEMORY[0x25307C1E0](v3);
  MEMORY[0x25307C1E0](v2);
  MEMORY[0x25307C1E0](v4);
  return sub_25163594C();
}

uint64_t sub_2515FB0B8(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  v4 = (v2 + *(a2 + 20));
  v6 = v4[2];
  v5 = v4[3];
  v7 = *(v4 + 32);
  if (*(v4 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v8 = *v4;
    sub_25163592C();
    MEMORY[0x25307C1E0](v8);
  }

  MEMORY[0x25307C1E0](v6);
  MEMORY[0x25307C1E0](v5);
  return MEMORY[0x25307C1E0](v7);
}

uint64_t sub_2515FB19C(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  v4 = (v2 + *(a2 + 20));
  v6 = v4[2];
  v5 = v4[3];
  v7 = *(v4 + 32);
  if (*(v4 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v8 = *v4;
    sub_25163592C();
    MEMORY[0x25307C1E0](v8);
  }

  MEMORY[0x25307C1E0](v6);
  MEMORY[0x25307C1E0](v5);
  MEMORY[0x25307C1E0](v7);
  return sub_25163594C();
}

BOOL sub_2515FB2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_25163514C())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6 + 8);
    v8 = *(a1 + v6 + 32);
    v18 = *(a1 + v6);
    v19 = v7;
    v20 = *(a1 + v6 + 16);
    v21 = v8;
    v9 = (a2 + v6);
    v10 = *(v9 + 8);
    v11 = *(v9 + 32);
    v14 = *v9;
    v15 = v10;
    v16 = *(v9 + 1);
    v17 = v11;
    return _s13HealthDomains23ClassificationFactorSetV2eeoiySbAC_ACtFZ_0(&v18, &v14);
  }

  else
  {
    return 0;
  }
}

__n128 sub_2515FB390@<Q0>(uint64_t (*a1)(void)@<X0>, __n128 *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 20));
  v5 = v4->n128_u8[8];
  v6 = v4[2].n128_u8[0];
  a2->n128_u64[0] = v4->n128_u64[0];
  a2->n128_u8[8] = v5;
  result = v4[1];
  a2[1] = result;
  a2[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_2515FB400(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  result = a2(0);
  v9 = v2 + *(result + 20);
  *v9 = v3;
  *(v9 + 8) = v4;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  return result;
}

uint64_t ClassificationFactorTimeline.changeMoments.getter()
{
  type metadata accessor for ClassificationFactorTimeline(0);
}

uint64_t ClassificationFactorTimeline.changeMoments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClassificationFactorTimeline(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ClassificationFactorTimeline.init(dateRange:initialFactors:changeMoments:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = a2[2];
  v9 = a2[3];
  v10 = *(a2 + 32);
  sub_251601234(a1, a4);
  result = type metadata accessor for ClassificationFactorTimeline(0);
  v12 = a4 + *(result + 20);
  *v12 = v6;
  *(v12 + 8) = v7;
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t ClassificationFactorTimeline.init(dateRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251601094(a1, a2);
  sub_2516012D0(a1);
  result = type metadata accessor for ClassificationFactorTimeline(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(a2 + *(result + 24)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ClassificationFactorTimeline.factors(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251601648(0, &qword_27F446CA0, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClassificationFactorTimeline(0);
  v13 = *(v2 + *(v12 + 24));
  v22 = a1;
  sub_2515FAA78(sub_251601364, v13, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_251601780(v7, &qword_27F446CA0, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v15 = (v2 + *(v12 + 20));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 1);
    v19 = *(v15 + 32);
  }

  else
  {
    sub_2516013F4(v7, v11, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v20 = &v11[*(v8 + 20)];
    v16 = *v20;
    v17 = v20[8];
    v21 = *(v20 + 1);
    v19 = v20[32];
    result = sub_25160145C(v11, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v18 = v21;
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  return result;
}

uint64_t sub_2515FB8A8(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  return sub_25163530C() & 1;
}

uint64_t ClassificationFactorTimeline.hash(into:)(uint64_t a1)
{
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  sub_2516352CC();
  v3 = type metadata accessor for ClassificationFactorTimeline(0);
  v4 = (v1 + *(v3 + 20));
  v6 = v4[2];
  v5 = v4[3];
  v7 = *(v4 + 32);
  if (*(v4 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v8 = *v4;
    sub_25163592C();
    MEMORY[0x25307C1E0](v8);
  }

  MEMORY[0x25307C1E0](v6);
  MEMORY[0x25307C1E0](v5);
  MEMORY[0x25307C1E0](v7);
  v9 = *(v1 + *(v3 + 24));

  return sub_251600B9C(a1, v9);
}

uint64_t ClassificationFactorTimeline.hashValue.getter()
{
  sub_25163590C();
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  sub_2516352CC();
  v1 = type metadata accessor for ClassificationFactorTimeline(0);
  v2 = (v0 + *(v1 + 20));
  v4 = v2[2];
  v3 = v2[3];
  v5 = *(v2 + 32);
  if (*(v2 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v6 = *v2;
    sub_25163592C();
    MEMORY[0x25307C1E0](v6);
  }

  MEMORY[0x25307C1E0](v4);
  MEMORY[0x25307C1E0](v3);
  MEMORY[0x25307C1E0](v5);
  sub_251600B9C(v8, *(v0 + *(v1 + 24)));
  return sub_25163594C();
}

uint64_t sub_2515FBC3C(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  sub_2516352CC();
  v4 = (v2 + *(a2 + 20));
  v6 = v4[2];
  v5 = v4[3];
  v7 = *(v4 + 32);
  if (*(v4 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v8 = *v4;
    sub_25163592C();
    MEMORY[0x25307C1E0](v8);
  }

  MEMORY[0x25307C1E0](v6);
  MEMORY[0x25307C1E0](v5);
  MEMORY[0x25307C1E0](v7);
  sub_251600B9C(v10, *(v2 + *(a2 + 24)));
  return sub_25163594C();
}

uint64_t ClassificationFactorTimeline.init(dateRange:sex:birthdayTimeline:wheelchairUseTimeline:pregnancyTimeline:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v123 = a5;
  v111 = a2;
  v10 = sub_25163516C();
  v11 = *(v10 - 8);
  v126 = v10;
  v127 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v108 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = &v106 - v14;
  v15 = MEMORY[0x277D83D88];
  sub_251601648(0, &qword_27F446CA8, type metadata accessor for PregnancyTimeline.ChangeMoment, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = &v106 - v17;
  v118 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  v121 = *(v118 - 8);
  v18 = MEMORY[0x28223BE20](v118);
  v125 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v106 = &v106 - v20;
  sub_251601648(0, &qword_27F446CB0, type metadata accessor for WheelchairUseTimeline.ChangeMoment, v15);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v106 - v22;
  v113 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  v24 = *(v113 - 8);
  v25 = MEMORY[0x28223BE20](v113);
  v124 = (&v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v28 = &v106 - v27;
  sub_251601648(0, &qword_27F446CB8, type metadata accessor for BirthdayTimeline, v15);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v117 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v106 - v32;
  v122 = a3;
  sub_2516016AC(a3, &v106 - v32);
  v34 = type metadata accessor for BirthdayTimeline(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36;
  v115 = (v35 + 48);
  v38 = v36(v33, 1, v34);
  v120 = a4;
  v112 = a6;
  v109 = v38;
  v116 = v34;
  if (v38 == 1)
  {
    sub_251601780(v33, &qword_27F446CB8, type metadata accessor for BirthdayTimeline);
    v110 = 0;
  }

  else
  {
    v39 = sub_25163506C();
    v40 = sub_25163511C();
    v110 = [v39 hk:v40 ageWithCurrentDate:?];

    sub_25160145C(v33, type metadata accessor for BirthdayTimeline);
  }

  v41 = type metadata accessor for WheelchairUseTimeline(0);
  MEMORY[0x28223BE20](v41);
  *(&v106 - 2) = a1;
  v114 = v42;
  sub_2515FAA78(sub_251601740, v42, type metadata accessor for WheelchairUseTimeline.ChangeMoment, type metadata accessor for WheelchairUseTimeline.ChangeMoment, v23);
  v43 = v24;
  v44 = v113;
  if ((*(v24 + 48))(v23, 1, v113) == 1)
  {
    sub_251601780(v23, &qword_27F446CB0, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
    v113 = 0;
  }

  else
  {
    sub_2516013F4(v23, v28, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
    v113 = *&v28[*(v44 + 20)];
    sub_25160145C(v28, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
  }

  v45 = v121;
  v46 = v119;
  v47 = PregnancyTimeline.changeMoments.getter();
  MEMORY[0x28223BE20](v47);
  *(&v106 - 2) = a1;
  sub_2515FAA78(sub_251601760, v47, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment, v46);
  v115 = 0;

  v48 = v118;
  if ((*(v45 + 48))(v46, 1, v118) == 1)
  {
    sub_251601780(v46, &qword_27F446CA8, type metadata accessor for PregnancyTimeline.ChangeMoment);
    LODWORD(v118) = 0;
  }

  else
  {
    v49 = v106;
    sub_2516013F4(v46, v106, type metadata accessor for PregnancyTimeline.ChangeMoment);
    LODWORD(v118) = *(v49 + *(v48 + 20));
    sub_25160145C(v49, type metadata accessor for PregnancyTimeline.ChangeMoment);
  }

  v50 = v117;
  v51 = v116;
  sub_2516016AC(v122, v117);
  if (v37(v50, 1, v51) == 1)
  {
    sub_251601780(v50, &qword_27F446CB8, type metadata accessor for BirthdayTimeline);
    v52 = MEMORY[0x277D84F90];
  }

  else
  {
    v52 = BirthdayTimeline.birthdays(in:)(a1);
    sub_25160145C(v50, type metadata accessor for BirthdayTimeline);
  }

  v53 = v123;
  v54 = v114;
  v119 = a1;
  v128[9] = v52;
  v55 = *(v114 + 16);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v128[0] = MEMORY[0x277D84F90];
    sub_2515FD56C(0, v55, 0);
    v57 = v54 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v58 = *(v43 + 72);
    v59 = v128[0];
    v60 = (v127 + 16);
    v61 = v126;
    v62 = v107;
    do
    {
      v63 = v124;
      sub_2516017F0(v57, v124, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
      (*v60)(v62, v63, v61);
      sub_25160145C(v63, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
      v128[0] = v59;
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_2515FD56C((v64 > 1), v65 + 1, 1);
        v59 = v128[0];
      }

      *(v59 + 16) = v65 + 1;
      (*(v127 + 32))(v59 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v65, v62, v61);
      v57 += v58;
      --v55;
    }

    while (v55);
    v53 = v123;
    v56 = MEMORY[0x277D84F90];
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
  }

  v128[10] = v59;
  v66 = PregnancyTimeline.changeMoments.getter();
  v67 = v66[2];
  if (v67)
  {
    v128[0] = v56;
    sub_2515FD56C(0, v67, 0);
    v68 = *(v121 + 80);
    v124 = v66;
    v69 = v66 + ((v68 + 32) & ~v68);
    v70 = *(v121 + 72);
    v71 = v128[0];
    v72 = (v127 + 16);
    v73 = v126;
    v74 = v108;
    do
    {
      v75 = v125;
      sub_2516017F0(v69, v125, type metadata accessor for PregnancyTimeline.ChangeMoment);
      (*v72)(v74, v75, v73);
      sub_25160145C(v75, type metadata accessor for PregnancyTimeline.ChangeMoment);
      v128[0] = v71;
      v77 = v71[2];
      v76 = v71[3];
      if (v77 >= v76 >> 1)
      {
        sub_2515FD56C((v76 > 1), v77 + 1, 1);
        v71 = v128[0];
      }

      v71[2] = v77 + 1;
      (*(v127 + 32))(v71 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v77, v74, v73);
      v69 += v70;
      --v67;
    }

    while (v67);

    v53 = v123;
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v128[11] = v71;
  v78 = MEMORY[0x277D84F90];
  for (i = 4; i != 7; ++i)
  {
    v80 = v128[i + 5];
    v81 = *(v80 + 16);
    v82 = v78[2];
    v83 = v82 + v81;
    if (__OFADD__(v82, v81))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v83 <= v78[3] >> 1)
    {
      if (!*(v80 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v82 <= v83)
      {
        v85 = v82 + v81;
      }

      else
      {
        v85 = v82;
      }

      v78 = sub_2515F8AF4(isUniquelyReferenced_nonNull_native, v85, 1, v78);
      if (!*(v80 + 16))
      {
LABEL_28:

        if (v81)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((v78[3] >> 1) - v78[2] < v81)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v81)
    {
      v86 = v78[2];
      v87 = __OFADD__(v86, v81);
      v88 = v86 + v81;
      if (v87)
      {
        goto LABEL_52;
      }

      v78[2] = v88;
    }
  }

  sub_251601648(0, &qword_27F446CC0, MEMORY[0x277CC9578], MEMORY[0x277D83940]);
  swift_arrayDestroy();
  v89 = sub_251601858(v78);

  v90 = *(v89 + 16);
  if (v90)
  {
    v91 = sub_2515FD44C(*(v89 + 16), 0);
    v92 = sub_251600D98(v128, &v91[(*(v127 + 80) + 32) & ~*(v127 + 80)], v90, v89);
    v93 = v128[0];

    sub_2516019F4(v93);
    if (v92 == v90)
    {
      v53 = v123;
      goto LABEL_47;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_47:
  v128[0] = v91;
  v71 = v115;
  sub_2515FDE34(v128);
  v94 = v122;
  if (!v71)
  {
    v95 = v109 == 1;

    v97 = v128[0];
    MEMORY[0x28223BE20](v96);
    v98 = v111;
    *(&v106 - 4) = v111;
    *(&v106 - 3) = v94;
    v99 = v120;
    *(&v106 - 2) = v120;
    *(&v106 - 1) = v53;
    v100 = sub_2515FCBB0(sub_2516019FC, (&v106 - 6), v97);

    v101 = v112;
    sub_251601234(v119, v112);
    v102 = type metadata accessor for ClassificationFactorTimeline(0);
    v103 = v101 + *(v102 + 20);
    *v103 = v110;
    *(v103 + 8) = v95;
    v104 = v113;
    *(v103 + 16) = v98;
    *(v103 + 24) = v104;
    *(v103 + 32) = v118;
    *(v101 + *(v102 + 24)) = v100;
    sub_25160145C(v53, type metadata accessor for PregnancyTimeline);
    sub_25160145C(v99, type metadata accessor for WheelchairUseTimeline);
    return sub_251601780(v94, &qword_27F446CB8, type metadata accessor for BirthdayTimeline);
  }

LABEL_54:

  __break(1u);
  return result;
}

uint64_t sub_2515FCBB0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_2515FD5BC(0, v10, 0);
  v11 = v21;
  v12 = *(sub_25163516C() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_2515FD5BC((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_2516013F4(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2515FCDAC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a4;
  v56 = a5;
  v60 = a6;
  v9 = MEMORY[0x277D83D88];
  sub_251601648(0, &qword_27F446CA8, type metadata accessor for PregnancyTimeline.ChangeMoment, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v49 - v11;
  v12 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251601648(0, &qword_27F446CB0, type metadata accessor for WheelchairUseTimeline.ChangeMoment, v9);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v49 - v15;
  v50 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  v17 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v9;
  v21 = a1;
  sub_251601648(0, &qword_27F446CB8, type metadata accessor for BirthdayTimeline, v20);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v49 - v23;
  v25 = sub_25163516C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = *(v26 + 16);
  v54 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v29;
  v28();
  sub_2516016AC(a3, v24);
  v30 = type metadata accessor for BirthdayTimeline(0);
  v52 = (*(*(v30 - 8) + 48))(v24, 1, v30);
  if (v52 == 1)
  {
    sub_251601780(v24, &qword_27F446CB8, type metadata accessor for BirthdayTimeline);
    v51 = 0;
  }

  else
  {
    v31 = a2;
    v32 = sub_25163506C();
    v33 = sub_25163511C();
    v51 = [v32 hk:v33 ageWithCurrentDate:?];

    a2 = v31;
    v21 = a1;

    sub_25160145C(v24, type metadata accessor for BirthdayTimeline);
  }

  v34 = type metadata accessor for WheelchairUseTimeline(0);
  MEMORY[0x28223BE20](v34);
  *(&v49 - 2) = v21;
  sub_2515FAA78(sub_251601EC4, v35, type metadata accessor for WheelchairUseTimeline.ChangeMoment, type metadata accessor for WheelchairUseTimeline.ChangeMoment, v16);
  v36 = v50;
  v37 = (*(v17 + 48))(v16, 1, v50);
  v38 = v59;
  if (v37 == 1)
  {
    sub_251601780(v16, &qword_27F446CB0, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
    v39 = 0;
  }

  else
  {
    sub_2516013F4(v16, v19, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
    v39 = *&v19[*(v36 + 20)];
    sub_25160145C(v19, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
  }

  v40 = PregnancyTimeline.changeMoments.getter();
  MEMORY[0x28223BE20](v40);
  *(&v49 - 2) = a1;
  sub_2515FAA78(sub_251601EE0, v40, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment, v38);

  v41 = v58;
  if ((*(v57 + 48))(v38, 1, v58) == 1)
  {
    sub_251601780(v38, &qword_27F446CA8, type metadata accessor for PregnancyTimeline.ChangeMoment);
    v42 = 0;
  }

  else
  {
    v43 = v38;
    v44 = v49;
    sub_2516013F4(v43, v49, type metadata accessor for PregnancyTimeline.ChangeMoment);
    v42 = *(v44 + *(v41 + 20));
    sub_25160145C(v44, type metadata accessor for PregnancyTimeline.ChangeMoment);
  }

  v45 = v52 == 1;
  v46 = v60;
  (*(v26 + 32))(v60, v54, v55);
  result = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v48 = v46 + *(result + 20);
  *v48 = v51;
  *(v48 + 8) = v45;
  *(v48 + 16) = a2;
  *(v48 + 24) = v39;
  *(v48 + 32) = v42;
  return result;
}

void *sub_2515FD44C(uint64_t a1, uint64_t a2)
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

  sub_251601648(0, &qword_27F446C48, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
  v4 = *(sub_25163516C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2515FD56C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2515FD60C(a1, a2, a3, *v3, &qword_27F446C48, MEMORY[0x277CC9578], MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

void *sub_2515FD5BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2515FD60C(a1, a2, a3, *v3, &qword_27F446D18, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
  *v3 = result;
  return result;
}

void *sub_2515FD60C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_251601648(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t sub_2515FD800(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25163516C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v33 = a2;
  v11 = sub_2516352BC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_251601130(&qword_27F446BE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_25163532C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2515FFC10(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2515FDAE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v29[9] = a2;
  v29[10] = a3;
  v30 = a4;
  sub_25163590C();
  ClassificationChangeDescriptor.hash(into:)(v29);
  v9 = sub_25163594C();
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  v12 = v9 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_28:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29[0] = *v26;
    sub_251601D64(a2);
    sub_2515FFEB4(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v26 = v29[0];
    *a1 = a2;
    *(a1 + 8) = *&a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v28 = ~v11;
  while (1)
  {
    v13 = *(v8 + 48) + 24 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (*v13 > 1)
    {
      break;
    }

    if (!v14)
    {
      if (!a2)
      {
        goto LABEL_29;
      }

      sub_251601D64(a2);
      v17 = 0;
      goto LABEL_18;
    }

    if (v14 == 1)
    {
      if (a2 == 1)
      {
        goto LABEL_29;
      }

      sub_251601D64(a2);
      v17 = 1;
      goto LABEL_18;
    }

LABEL_12:
    v18 = *v13;
    if (a2 < 4)
    {
      sub_251601D64(a2);
      sub_251601D64(v14);
      v17 = v14;
      v10 = v8 + 56;
LABEL_18:
      sub_251601D74(v17);
      sub_251601D74(a2);
      goto LABEL_19;
    }

    sub_251601D84();
    sub_251601D64(a2);
    sub_251601D64(v18);
    sub_251601D64(a2);
    sub_251601D64(v18);
    v19 = sub_25163561C();
    sub_251601D74(v18);
    sub_251601D74(a2);
    sub_251601D74(a2);
    sub_251601D74(v18);
    v10 = v8 + 56;
    if (v19)
    {
      if (v16)
      {
        if (a4)
        {
          goto LABEL_27;
        }
      }

      else if ((a4 & 1) == 0 && v15 == *&a3)
      {
LABEL_27:
        v20 = a2;
        goto LABEL_30;
      }
    }

LABEL_19:
    v12 = (v12 + 1) & v28;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v14 != 2)
  {
    if (v14 == 3)
    {
      if (a2 == 3)
      {
        goto LABEL_29;
      }

      sub_251601D64(a2);
      v17 = 3;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a2 != 2)
  {
    sub_251601D64(a2);
    v17 = 2;
    goto LABEL_18;
  }

LABEL_29:
  sub_251601D74(*v13);
  v20 = v14;
LABEL_30:
  sub_251601D74(v20);
  v23 = *(v8 + 48) + 24 * v12;
  v24 = *v23;
  v25 = *(v23 + 8);
  *a1 = *v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = *(v23 + 16);
  sub_251601D64(v24);
  return 0;
}

uint64_t sub_2515FDE34(uint64_t *a1)
{
  v2 = *(sub_25163516C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25160103C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2515FDEDC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2515FDEDC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2516358AC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25163516C();
        v6 = sub_25163547C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25163516C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2515FE2CC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2515FE008(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2515FE008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25163516C();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v26 = sub_2516352EC();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2515FE2CC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_25163516C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_2515FF374(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_2515FECF4(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2515FF374(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_2515FF2E8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LODWORD(v133) = sub_2516352EC();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_2516352EC() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2515F89CC(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_2515F89CC((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_2515FECF4(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2515FF374(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_2515FF2E8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v109 = sub_2516352EC();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2515FECF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_25163516C();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          LOBYTE(v35) = sub_2516352EC();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        LOBYTE(v22) = sub_2516352EC();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_2515FF388(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_2515FF2E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2515FF374(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2515FF388(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_25163516C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2515FF46C(char *result, int64_t a2, char a3, char *a4)
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
    sub_251601648(0, &qword_27F446C38, sub_2515F8DEC, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2515FF594(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25163516C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_251601E2C(0, &qword_27F446D20, &qword_27F446BA8, MEMORY[0x277CC9588], MEMORY[0x277D84098]);
  result = sub_25163567C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_2516352BC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2515FF91C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_251601DD0(0);
  result = sub_25163567C();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_25163590C();
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v22 = 3;
          goto LABEL_26;
        }

        if (v19 == 3)
        {
          v22 = 4;
          goto LABEL_26;
        }
      }

      else
      {
        if (!v19)
        {
          v22 = 1;
          goto LABEL_26;
        }

        if (v19 == 1)
        {
          v22 = 2;
LABEL_26:
          MEMORY[0x25307C1E0](v22);
          goto LABEL_27;
        }
      }

      MEMORY[0x25307C1E0](0);
      sub_25163562C();
      if (v21)
      {
        sub_25163592C();
      }

      else
      {
        sub_25163592C();
        if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v30 = v20;
        }

        else
        {
          v30 = 0;
        }

        MEMORY[0x25307C200](v30);
      }

LABEL_27:
      result = sub_25163594C();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v32;
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2515FFC10(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25163516C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2515FF594(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2516001CC();
      goto LABEL_12;
    }

    sub_25160058C(v10 + 1);
  }

  v12 = *v3;
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v13 = sub_2516352BC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_251601130(&qword_27F446BE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_25163532C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2516358FC();
  __break(1u);
  return result;
}

void sub_2515FFEB4(void *result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = a3;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_2515FF91C(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_251600430();
        goto LABEL_34;
      }

      sub_2516008D4(v11 + 1);
    }

    v13 = *v5;
    v30 = result;
    v31 = a2;
    v32 = v8;
    sub_25163590C();
    ClassificationChangeDescriptor.hash(into:)(v29);
    v14 = sub_25163594C();
    v15 = v13 + 56;
    v28 = v13;
    v16 = -1 << *(v13 + 32);
    a4 = v14 & ~v16;
    if ((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v17 = ~v16;
      do
      {
        v18 = *(v28 + 48) + 24 * a4;
        v6 = *v18;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        if (*v18 > 1)
        {
          if (v6 == 2)
          {
            if (result == 2)
            {
              goto LABEL_37;
            }

            v6 = 2;
            goto LABEL_11;
          }

          if (v6 == 3)
          {
            if (result == 3)
            {
              goto LABEL_37;
            }

            v6 = 3;
            goto LABEL_11;
          }
        }

        else
        {
          if (!v6)
          {
            if (!result)
            {
              goto LABEL_37;
            }

            v6 = 0;
            goto LABEL_11;
          }

          if (v6 == 1)
          {
            if (result == 1)
            {
              goto LABEL_37;
            }

            v6 = 1;
            goto LABEL_11;
          }
        }

        if (result < 4)
        {
          sub_251601D64(*v18);
LABEL_11:
          sub_251601D64(result);
          sub_251601D74(v6);
          sub_251601D74(result);
          goto LABEL_12;
        }

        sub_251601D84();
        sub_251601D64(v6);
        sub_251601D64(result);
        sub_251601D64(v6);
        sub_251601D64(result);
        v21 = sub_25163561C();
        sub_251601D74(v6);
        sub_251601D74(result);
        sub_251601D74(result);
        sub_251601D74(v6);
        if (v21)
        {
          if (v20)
          {
            if (v8)
            {
              goto LABEL_38;
            }
          }

          else if ((v8 & 1) == 0 && v19 == *&a2)
          {
            goto LABEL_38;
          }
        }

LABEL_12:
        a4 = (a4 + 1) & v17;
      }

      while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_34:
  v22 = *v27;
  *(*v27 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = result;
  *(v23 + 8) = *&a2;
  *(v23 + 16) = v8;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_37:
    sub_251601D74(v6);
    sub_251601D74(v6);
LABEL_38:
    sub_2516358FC();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }
}

void *sub_2516001CC()
{
  v1 = v0;
  v2 = sub_25163516C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251601E2C(0, &qword_27F446D20, &qword_27F446BA8, MEMORY[0x277CC9588], MEMORY[0x277D84098]);
  v6 = *v0;
  v7 = sub_25163566C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_251600430()
{
  v1 = v0;
  sub_251601DD0(0);
  v2 = *v0;
  v3 = sub_25163566C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_251601D64(v19);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_25160058C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25163516C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_251601E2C(0, &qword_27F446D20, &qword_27F446BA8, MEMORY[0x277CC9588], MEMORY[0x277D84098]);
  v7 = sub_25163567C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_2516352BC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2516008D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_251601DD0(0);
  result = sub_25163567C();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_42:
    *v2 = v5;
    return result;
  }

  v32 = v3;
  v6 = 0;
  v7 = v3 + 56;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  while (v10)
  {
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    sub_25163590C();
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v22 = 3;
        goto LABEL_26;
      }

      if (v19 == 3)
      {
        v22 = 4;
        goto LABEL_26;
      }
    }

    else
    {
      if (!v19)
      {
        v22 = 1;
        goto LABEL_26;
      }

      if (v19 == 1)
      {
        v22 = 2;
LABEL_26:
        MEMORY[0x25307C1E0](v22);
        goto LABEL_27;
      }
    }

    MEMORY[0x25307C1E0](0);
    v23 = v19;
    sub_25163562C();
    if (v21)
    {
      sub_25163592C();
    }

    else
    {
      sub_25163592C();
      if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v31 = v20;
      }

      else
      {
        v31 = 0;
      }

      MEMORY[0x25307C200](v31);
    }

LABEL_27:
    result = sub_25163594C();
    v24 = -1 << *(v5 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v26);
        if (v30 != -1)
        {
          v13 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_44;
    }

    v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 24 * v13;
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = v21;
    ++*(v5 + 16);
    v3 = v32;
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_42;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_251600B9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x25307C1E0](v7);
  if (v7)
  {
    v9 = &v6[*(v3 + 20)];
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    v19 = v6;
    do
    {
      sub_2516017F0(v10, v6, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
      sub_25163516C();
      sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_2516352CC();
      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      v14 = v9[32];
      if (v9[8] == 1)
      {
        sub_25163592C();
      }

      else
      {
        v15 = v11;
        v16 = *v9;
        sub_25163592C();
        v17 = v16;
        v11 = v15;
        v6 = v19;
        MEMORY[0x25307C1E0](v17);
      }

      MEMORY[0x25307C1E0](v13);
      MEMORY[0x25307C1E0](v12);
      MEMORY[0x25307C1E0](v14);
      result = sub_25160145C(v6, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_251600D98(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_25163516C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_251601094(uint64_t a1, uint64_t a2)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251601130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251601178(uint64_t a1, uint64_t a2)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251601234(uint64_t a1, uint64_t a2)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516012D0(uint64_t a1)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251601364(uint64_t a1)
{
  sub_25163516C();
  sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  return sub_25163530C() & 1;
}

uint64_t sub_2516013F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25160145C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13HealthDomains28ClassificationFactorTimelineV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_251601130(&qword_27F446BE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ClassificationFactorTimeline(0);
  v5 = (a1 + *(v4 + 20));
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v19 = *v5;
  v20 = v6;
  v21 = *(v5 + 1);
  v22 = v7;
  v8 = (a2 + *(v4 + 20));
  v9 = *(v8 + 8);
  v10 = *(v8 + 32);
  v15 = *v8;
  v16 = v9;
  v17 = *(v8 + 1);
  v18 = v10;
  if (!_s13HealthDomains23ClassificationFactorSetV2eeoiySbAC_ACtFZ_0(&v19, &v15))
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_25161F5F8(v12, v13);
}

void sub_251601648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2516016AC(uint64_t a1, uint64_t a2)
{
  sub_251601648(0, &qword_27F446CB8, type metadata accessor for BirthdayTimeline, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251601780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251601648(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2516017F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251601858(uint64_t a1)
{
  v2 = sub_25163516C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  result = MEMORY[0x25307BE60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_2515FD800(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_251601AD8(uint64_t a1)
{
  sub_251601E2C(319, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  if (v1 <= 0x3F)
  {
    sub_251601648(319, &qword_27F446CE8, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251601BF4(uint64_t a1)
{
  result = sub_25163516C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_251601C68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_251601D10();
  result = MEMORY[0x25307BE60](v2, &type metadata for ClassificationChangeDescriptor, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_251601D64(v7);
      sub_2515FDAE0(&v9, v7, v6, v8);
      sub_251601D74(v9);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_251601D10()
{
  result = qword_27F446D00;
  if (!qword_27F446D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D00);
  }

  return result;
}

id sub_251601D64(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_251601D74(id a1)
{
  if (a1 >= 4)
  {
  }
}

unint64_t sub_251601D84()
{
  result = qword_27F446D08;
  if (!qword_27F446D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F446D08);
  }

  return result;
}

void sub_251601DD0(uint64_t a1)
{
  if (!qword_27F446D10)
  {
    sub_251601D10();
    v1 = sub_25163568C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F446D10);
    }
  }
}

void sub_251601E2C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v10 = sub_25163516C();
    v11 = sub_251601130(a3, MEMORY[0x277CC9578], a4);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t ClassificationLevelID.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClassificationLevelID.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25160203C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2516021C0();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_251602090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2516021C0();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_25160215C()
{
  result = qword_27F446D28;
  if (!qword_27F446D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D28);
  }

  return result;
}

unint64_t sub_2516021C0()
{
  result = qword_27F446D30;
  if (!qword_27F446D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D30);
  }

  return result;
}

uint64_t sub_251602244(uint64_t a1)
{
  v2 = sub_251602B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251602280(uint64_t a1)
{
  v2 = sub_251602B38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2516022BC()
{
  v1 = 6645601;
  v2 = 0x636E616E67657270;
  if (*v0 != 2)
  {
    v2 = 0x6168636C65656877;
  }

  if (*v0)
  {
    v1 = 7890291;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_251602340@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251603C04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251602374(uint64_t a1)
{
  v2 = sub_251602B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516023B0(uint64_t a1)
{
  v2 = sub_251602B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2516023EC(uint64_t a1)
{
  v2 = sub_251602A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251602428(uint64_t a1)
{
  v2 = sub_251602A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251602464(uint64_t a1)
{
  v2 = sub_251602AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516024A0(uint64_t a1)
{
  v2 = sub_251602AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2516024DC(uint64_t a1)
{
  v2 = sub_251602A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251602518(uint64_t a1)
{
  v2 = sub_251602A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClassificationFactor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_251603498(0, &qword_27F446D38, sub_251602A3C, &type metadata for ClassificationFactor.WheelchairUseCodingKeys, MEMORY[0x277D84538]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v23 - v5;
  sub_251603498(0, &qword_27F446D48, sub_251602A90, &type metadata for ClassificationFactor.PregnancyStatusCodingKeys, v3);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v29 = &v23 - v7;
  sub_251603498(0, &qword_27F446D58, sub_251602AE4, &type metadata for ClassificationFactor.SexCodingKeys, v3);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v26 = &v23 - v9;
  sub_251603498(0, &qword_27F446D68, sub_251602B38, &type metadata for ClassificationFactor.AgeCodingKeys, v3);
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  sub_251603498(0, &qword_27F446D78, sub_251602B8C, &type metadata for ClassificationFactor.CodingKeys, v3);
  v35 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v17 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251602B8C();
  sub_25163597C();
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v38 = 2;
      sub_251602A90();
      v19 = v29;
      v18 = v35;
      sub_25163582C();
      v21 = v30;
      v20 = v31;
    }

    else
    {
      v39 = 3;
      sub_251602A3C();
      v19 = v32;
      v18 = v35;
      sub_25163582C();
      v21 = v33;
      v20 = v34;
    }

    goto LABEL_8;
  }

  if (v17)
  {
    v37 = 1;
    sub_251602AE4();
    v19 = v26;
    v18 = v35;
    sub_25163582C();
    v21 = v27;
    v20 = v28;
LABEL_8:
    (*(v21 + 8))(v19, v20);
    return (*(v14 + 8))(v16, v18);
  }

  v36 = 0;
  sub_251602B38();
  v18 = v35;
  sub_25163582C();
  (*(v24 + 8))(v12, v25);
  return (*(v14 + 8))(v16, v18);
}

unint64_t sub_251602A3C()
{
  result = qword_27F446D40;
  if (!qword_27F446D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D40);
  }

  return result;
}

unint64_t sub_251602A90()
{
  result = qword_27F446D50;
  if (!qword_27F446D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D50);
  }

  return result;
}

unint64_t sub_251602AE4()
{
  result = qword_27F446D60;
  if (!qword_27F446D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D60);
  }

  return result;
}

unint64_t sub_251602B38()
{
  result = qword_27F446D70;
  if (!qword_27F446D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D70);
  }

  return result;
}

unint64_t sub_251602B8C()
{
  result = qword_27F446D80;
  if (!qword_27F446D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D80);
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

uint64_t ClassificationFactor.hashValue.getter()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

uint64_t ClassificationFactor.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v48 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_251603498(0, &qword_27F446D88, sub_251602A3C, &type metadata for ClassificationFactor.WheelchairUseCodingKeys, MEMORY[0x277D844C8]);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v37 - v5;
  sub_251603498(0, &qword_27F446D90, sub_251602A90, &type metadata for ClassificationFactor.PregnancyStatusCodingKeys, v3);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x28223BE20](v6);
  v50 = &v37 - v8;
  sub_251603498(0, &qword_27F446D98, sub_251602AE4, &type metadata for ClassificationFactor.SexCodingKeys, v3);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v37 - v10;
  sub_251603498(0, &qword_27F446DA0, sub_251602B38, &type metadata for ClassificationFactor.AgeCodingKeys, v3);
  v12 = v11;
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  sub_251603498(0, &qword_27F446DA8, sub_251602B8C, &type metadata for ClassificationFactor.CodingKeys, v3);
  v16 = v15;
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251602B8C();
  v19 = v52;
  sub_25163596C();
  if (v19)
  {
    goto LABEL_9;
  }

  v38 = v12;
  v39 = v18;
  v20 = v49;
  v21 = v50;
  v52 = a1;
  v22 = sub_25163580C();
  v23 = *(v22 + 16);
  if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 4) : (v25 = 1), v25))
  {
    v26 = sub_2516356FC();
    swift_allocError();
    v28 = v27;
    sub_25160354C(0);
    *v28 = &type metadata for ClassificationFactor;
    v29 = v39;
    sub_25163579C();
    sub_2516356DC();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v51 + 8))(v29, v16);
    swift_unknownObjectRelease();
    a1 = v52;
LABEL_9:
    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  if (*(v22 + 32) > 1u)
  {
    v49 = v22;
    v33 = v48;
    v34 = v51;
    if (v24 == 2)
    {
      v55 = 2;
      sub_251602A90();
      v35 = v39;
      sub_25163578C();
      (*(v44 + 8))(v21, v43);
    }

    else
    {
      v56 = 3;
      sub_251602A3C();
      v36 = v47;
      v35 = v39;
      sub_25163578C();
      (*(v45 + 8))(v36, v46);
    }

    (*(v34 + 8))(v35, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    if (*(v22 + 32))
    {
      v54 = 1;
      sub_251602AE4();
      v32 = v39;
      sub_25163578C();
      (*(v41 + 8))(v20, v42);
    }

    else
    {
      v53 = 0;
      sub_251602B38();
      v32 = v39;
      sub_25163578C();
      (*(v40 + 8))(v14, v38);
    }

    (*(v51 + 8))(v32, v16);
    swift_unknownObjectRelease();
    v33 = v48;
  }

  *v33 = v24;
  v30 = v52;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_251603378()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2516033AC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_2516033E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t _s13HealthDomains13ConstellationV4KindO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

uint64_t sub_251603454(uint64_t a1)
{
  v2 = *v1;
  sub_25163590C();
  MEMORY[0x25307C1E0](v2);
  return sub_25163594C();
}

void sub_251603498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
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

void sub_25160354C(uint64_t a1)
{
  if (!qword_27F446DB0)
  {
    sub_2516035BC();
    sub_2516356EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F446DB0);
    }
  }
}

unint64_t sub_2516035BC()
{
  result = qword_27F446DB8;
  if (!qword_27F446DB8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F446DB8);
  }

  return result;
}

unint64_t sub_25160360C()
{
  result = qword_27F446DC0;
  if (!qword_27F446DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DC0);
  }

  return result;
}

uint64_t sub_2516036AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25160373C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251603840()
{
  result = qword_27F446DC8;
  if (!qword_27F446DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DC8);
  }

  return result;
}

unint64_t sub_251603898()
{
  result = qword_27F446DD0;
  if (!qword_27F446DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DD0);
  }

  return result;
}

unint64_t sub_2516038F0()
{
  result = qword_27F446DD8;
  if (!qword_27F446DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DD8);
  }

  return result;
}

unint64_t sub_251603948()
{
  result = qword_27F446DE0;
  if (!qword_27F446DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DE0);
  }

  return result;
}

unint64_t sub_2516039A0()
{
  result = qword_27F446DE8;
  if (!qword_27F446DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DE8);
  }

  return result;
}

unint64_t sub_2516039F8()
{
  result = qword_27F446DF0;
  if (!qword_27F446DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DF0);
  }

  return result;
}

unint64_t sub_251603A50()
{
  result = qword_27F446DF8;
  if (!qword_27F446DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DF8);
  }

  return result;
}

unint64_t sub_251603AA8()
{
  result = qword_27F446E00;
  if (!qword_27F446E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E00);
  }

  return result;
}

unint64_t sub_251603B00()
{
  result = qword_27F446E08;
  if (!qword_27F446E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E08);
  }

  return result;
}

unint64_t sub_251603B58()
{
  result = qword_27F446E10;
  if (!qword_27F446E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E10);
  }

  return result;
}

unint64_t sub_251603BB0()
{
  result = qword_27F446E18;
  if (!qword_27F446E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E18);
  }

  return result;
}

uint64_t sub_251603C04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (v3 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E616E67657270 && a2 == 0xEF73757461745379 || (sub_2516358DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168636C65656877 && a2 == 0xED00006573557269)
  {

    return 3;
  }

  else
  {
    v6 = sub_2516358DC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t PregnancyStatus.hashValue.getter()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

unint64_t sub_251603E30()
{
  result = qword_27F446E20;
  if (!qword_27F446E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251604000(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  sub_2515F8380(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25160417C(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251601094(a1, v7);
  sub_251601094(v7, v10);
  sub_251604250(v7, sub_2515F8380);
  v11 = type metadata accessor for ClassificationFactorTimeline(0);
  v12 = &v10[*(v11 + 20)];
  *v12 = 0;
  v12[8] = 1;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v12[32] = 0;
  *&v10[*(v11 + 24)] = MEMORY[0x277D84F90];
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_251604250(v10, sub_25160417C);
}

void sub_25160417C(uint64_t a1)
{
  if (!qword_27F446E28)
  {
    type metadata accessor for ClassificationFactorTimeline(255);
    sub_2516041EC();
    v1 = sub_25163595C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F446E28);
    }
  }
}

unint64_t sub_2516041EC()
{
  result = qword_27F446E30;
  if (!qword_27F446E30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F446E30);
  }

  return result;
}

uint64_t sub_251604250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Classifier.classifications(over:calendar:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  swift_getAssociatedTypeWitness();
  v17 = sub_25163546C();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = sub_2516354CC();
  (*(*(v13 - 8) + 32))(v12 + 24, &v17, v13);
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = v12;
  v14[5] = a3;
  v14[6] = a4;
  v15 = *(a6 + 32);

  v15(a1, a2, 200, sub_251605B78, v14, a5, a6);
}

void sub_2516046C8(uint64_t a1)
{
  if (!qword_27F446E38)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_25163525C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F446E38);
    }
  }
}

uint64_t sub_251604720(void *a1, uint64_t a2, os_unfair_lock_s *a3, void (*a4)(uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v14 = a2 & 0x1FF;
  sub_251606050(a1, a2, BYTE1(a2) & 1);
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  swift_getTupleTypeMetadata2();
  sub_2516041EC();
  v9 = sub_25163595C();
  sub_25161FCE8(v9, &v12, &v15);
  v10 = v16;
  os_unfair_lock_lock(a3 + 4);
  sub_2516048CC(&a3[6], &v13);
  j__os_unfair_lock_unlock(a3 + 4);

  if (v10)
  {
    a4(v13, 0);
  }
}

uint64_t sub_2516048CC@<X0>(uint64_t *a1@<X0>, uint64_t *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_2516354CC();

  swift_getWitnessTable();
  sub_25163549C();
  *a5 = *a1;
}

uint64_t Classifier.classifications(over:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2516049B0, 0, 0);
}

uint64_t sub_2516049B0()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  swift_getAssociatedTypeWitness();
  v6 = sub_2516354CC();
  *v5 = v0;
  v5[1] = sub_251604AEC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x800000025163B790, sub_251605B94, v2, v6);
}

uint64_t sub_251604AEC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_251604C24;
  }

  else
  {

    v2 = sub_251604C08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251604C24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251604C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a2;
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v11 = sub_25163551C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  (*(v12 + 16))(v18 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  (*(v12 + 32))(v16 + v15, v14, v11);
  Classifier.classifications(over:calendar:completion:)(a3, a4, sub_251605F74, v16, a5, a6);
}

uint64_t sub_251604E40(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = a2 & 1;
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v5 = sub_25163551C();
  return sub_251615110(&v7, v5);
}

uint64_t Classifier.mostRecentClassification(calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_251604F00, 0, 0);
}

uint64_t sub_251604F00()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  swift_getAssociatedTypeWitness();
  v6 = sub_25163563C();
  *v5 = v0;
  v5[1] = sub_251605038;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x800000025163B7B0, sub_251605BAC, v3, v6);
}

uint64_t sub_251605038()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251605174, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_251605174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2516051D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v9 = sub_25163551C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v10 + 32))(v14 + v13, v12, v9);
  (*(a5 + 40))(a3, sub_251605DCC, v14, a4, a5);
}

uint64_t sub_251605390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v5 = sub_25163551C();
  return sub_251615110(a1, v5);
}

uint64_t Classifier.classificationAxisTimeline(over:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_251605440, 0, 0);
}

uint64_t sub_251605440()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ClassificationAxisTimeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  *v5 = v0;
  v5[1] = sub_25160563C;
  v10 = *(v0 + 16);

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000002ALL, 0x800000025163B7E0, sub_251605BB8, v2, v9);
}

uint64_t sub_25160563C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251604C24, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_251605778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[1] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  sub_2516041EC();
  v14 = sub_25163551C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v21 - v16;
  (*(v15 + 16))(v21 - v16, a1, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  (*(v15 + 32))(v19 + v18, v17, v14);
  (*(a6 + 48))(a3, a4, sub_251605C38, v19, a5, a6);
}

uint64_t sub_2516059F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  sub_2516041EC();
  v8 = sub_25163551C();
  return sub_251615110(a1, v8);
}

uint64_t sub_251605C38(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  sub_2516041EC();
  v8 = *(sub_25163551C() - 8);
  v9 = v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_2516059F8(a1, v9, v3, v4);
}

uint64_t sub_251605DCC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v5 = *(sub_25163551C() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_251605390(a1, v6, v3, v4);
}

uint64_t objectdestroy_14Tm(uint64_t (*a1)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a1(255, AssociatedTypeWitness);
  sub_2516041EC();
  v4 = sub_25163551C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  (*(v5 + 8))(v1 + v7, v4);

  return MEMORY[0x2821FE8E8](v1, v7 + v8, v6 | 7);
}

uint64_t sub_251605F74(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v7 = *(sub_25163551C() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_251604E40(a1, a2 & 1, v8, v5, v6);
}

id sub_251606050(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_25160605C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2516355BC();
  if (!v19)
  {
    return sub_25163546C();
  }

  v41 = v19;
  v45 = sub_25163572C();
  v32 = sub_25163573C();
  sub_25163570C();
  result = sub_2516355AC();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2516355FC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_25163571C();
      result = sub_2516355DC();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ContributingDatum.Value.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  return sub_25163562C();
}

uint64_t ContributingDatum.Value.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_25163590C();
  if (v1)
  {
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  sub_25163562C();
  return sub_25163594C();
}

uint64_t sub_251606574()
{
  v1 = *(v0 + 16);
  sub_25163590C();
  if (v1)
  {
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  sub_25163562C();
  return sub_25163594C();
}

uint64_t sub_2516065F8(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  return sub_25163562C();
}

uint64_t sub_251606668(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_25163590C();
  if (v2)
  {
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  sub_25163562C();
  return sub_25163594C();
}

uint64_t ContributingDatum.measureIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ContributingDatum.measureIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ContributingDatum.level.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ContributingDatum.level.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ContributingDatum.scaleLevelIDs.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ContributingDatum.dateRange.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ContributingDatum(0) + 32);

  return sub_251609670(a1, v3);
}

void ContributingDatum.value.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  if (v3 == 255)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  else
  {
    v4 = *(v1 + 72);
    v5 = *(v1 + 80);
    v6 = *(v1 + 56);
    v7 = *(v1 + 64);
    v8 = *(v1 + 48);
    v9[0] = *(v1 + 40);
    v9[1] = v8;
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v4;
    v9[5] = v5;
    v10 = v3 & 1;
    sub_2516096D4(v9[0], v8, v6, v7, v4, v5, v3 & 1);
    sub_251606948(v9, a1);
  }
}

void sub_251606948(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = objc_opt_self();
    v8 = sub_25163536C();
    v9 = objc_opt_self();
    v10 = [v9 unitFromString_];

    v11 = [v7 quantityWithUnit:v10 doubleValue:v4];
    v12 = sub_25163536C();
    v13 = [v9 unitFromString_];

    v14 = [v7 quantityWithUnit:v13 doubleValue:v6];
    sub_25160B328(a1);
  }

  else
  {
    v15 = objc_opt_self();
    v16 = sub_25163536C();
    v17 = [objc_opt_self() unitFromString_];

    v11 = [v15 quantityWithUnit:v17 doubleValue:v4];
    sub_25160B328(a1);

    v14 = 0;
  }

  *a2 = v11;
  *(a2 + 8) = v14;
  *(a2 + 16) = v5 & 1;
}

uint64_t ContributingDatum.init(measureIdentifier:level:scaleLevelIDs:value:dateRange:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v13 = *a4;
  v12 = *(a4 + 8);
  v14 = *(a4 + 16);
  v15 = type metadata accessor for ContributingDatum(0);
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  v16 = *(v15 + 32);
  sub_2515F8380(0);
  v41 = v16;
  (*(*(v17 - 8) + 56))(a6 + v16, 1, 1, v17);
  *a6 = v8;
  *(a6 + 8) = v9;

  *(a6 + 16) = v10;
  *(a6 + 24) = v11;
  v18 = 0;
  *(a6 + 32) = a3;
  if (v14 == 255)
  {
    v25 = 0;
    v27 = 0;
    v32 = 0;
    v34 = 0;
    v22 = 0;
    v19 = -1;
  }

  else if (v14)
  {
    v19 = 1;
    sub_251609714(v13, v12, 1);
    v20 = [v13 _unit];
    [v13 doubleValueForUnit_];
    v22 = v21;

    v23 = [v13 _unit];
    v24 = [v23 unitString];

    v25 = sub_25163537C();
    v27 = v26;

    v28 = [v12 _unit];
    [v12 doubleValueForUnit_];
    v18 = v29;

    v30 = [v12 _unit];
    v31 = [v30 unitString];

    v32 = sub_25163537C();
    v34 = v33;
    sub_251609750(v13, v12, v14);

    sub_251609750(v13, v12, v14);
  }

  else
  {
    sub_2516097C0(v13, v12, v14);
    sub_251609714(v13, v12, 0);
    v35 = [v13 _unit];
    [v13 doubleValueForUnit_];
    v22 = v36;

    v37 = [v13 _unit];
    v38 = [v37 unitString];

    v25 = sub_25163537C();
    v27 = v39;
    sub_251609750(v13, v12, v14);
    sub_251609750(v13, v12, v14);

    sub_251609750(v13, v12, v14);
    v32 = 0;
    v34 = 0;
    v19 = 0;
  }

  *(a6 + 40) = v22;
  *(a6 + 48) = v25;
  *(a6 + 56) = v27;
  *(a6 + 64) = v18;
  *(a6 + 72) = v32;
  *(a6 + 80) = v34;
  *(a6 + 88) = v19;

  return sub_251609670(a5, a6 + v41);
}

unint64_t sub_251606E4C()
{
  v1 = *v0;
  v2 = 0x6C6576656CLL;
  v3 = 0x76654C656C616373;
  v4 = 0x56656C6261646F63;
  if (v1 != 3)
  {
    v4 = 0x676E615265746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_251606F00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25160A84C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251606F34(uint64_t a1)
{
  v2 = sub_251609D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251606F70(uint64_t a1)
{
  v2 = sub_251609D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContributingDatum.encode(to:)(void *a1)
{
  v3 = v1;
  sub_25160B9EC(0, &qword_27F446E40, sub_251609D44, &type metadata for ContributingDatum.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251609D44();
  sub_25163597C();
  v10 = *(v3 + 8);
  *&v15[0] = *v3;
  *(&v15[0] + 1) = v10;
  v17 = 0;
  sub_251609D98();

  sub_25163588C();
  if (v2)
  {
  }

  else
  {

    v11 = *(v3 + 24);
    *&v15[0] = *(v3 + 16);
    *(&v15[0] + 1) = v11;
    v17 = 1;
    sub_251609DEC();

    sub_25163583C();

    *&v15[0] = *(v3 + 32);
    v17 = 2;
    sub_25160A3A4(0, &qword_280DD70B0, &type metadata for ClassificationLevelID, MEMORY[0x277D83940]);
    sub_25160A034(&qword_27F446E60, sub_251609DEC, MEMORY[0x277D83948]);
    sub_25163588C();
    v13 = *(v3 + 88);
    v14 = *(v3 + 56);
    v15[0] = *(v3 + 40);
    v15[1] = v14;
    v15[2] = *(v3 + 72);
    v16 = v13;
    v17 = 3;
    sub_251609E40();
    sub_25163583C();
    type metadata accessor for ContributingDatum(0);
    LOBYTE(v15[0]) = 4;
    sub_2515F8380(0);
    sub_251609E94(&qword_27F446E70, &qword_27F446E78, MEMORY[0x277CC9580], MEMORY[0x277D83640]);
    sub_25163583C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ContributingDatum.hash(into:)(uint64_t a1)
{
  sub_2515F8380(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251609618(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25163539C();
  if (*(v1 + 24))
  {
    sub_25163592C();

    sub_25163539C();
  }

  else
  {
    sub_25163592C();
  }

  v11 = *(v1 + 32);
  MEMORY[0x25307C1E0](*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 40;
    do
    {

      sub_25163539C();

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  v14 = *(v1 + 88);
  if (v14 == 255)
  {
    sub_25163592C();
  }

  else
  {
    v15 = *(v1 + 56);
    v18[0] = *(v1 + 40);
    v18[1] = v15;
    v18[2] = *(v1 + 72);
    v19 = v14 & 1;
    sub_25163592C();
    sub_2516086D0(a1);
  }

  v16 = type metadata accessor for ContributingDatum(0);
  sub_25160A118(v1 + *(v16 + 32), v10, sub_251609618);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_25163592C();
  }

  sub_251601234(v10, v7);
  sub_25163592C();
  sub_25163516C();
  sub_25160B2E0(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  sub_2516352CC();
  return sub_25160B280(v7, sub_2515F8380);
}

uint64_t ContributingDatum.hashValue.getter()
{
  sub_25163590C();
  ContributingDatum.hash(into:)(v1);
  return sub_25163594C();
}

uint64_t ContributingDatum.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_251609618(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25160B9EC(0, &qword_27F446E80, sub_251609D44, &type metadata for ContributingDatum.CodingKeys, MEMORY[0x277D844C8]);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v31 - v7;
  v9 = type metadata accessor for ContributingDatum(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v13 = *(v10 + 40);
  sub_2515F8380(0);
  v15 = *(*(v14 - 8) + 56);
  v37 = v13;
  v16 = v12;
  v15(&v12[v13], 1, 1, v14);
  v17 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_251609D44();
  v18 = v35;
  sub_25163596C();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);

    sub_251609F24(0, 0, 0, 0, 0, 0, 255);
    v29 = sub_251609618;
    v30 = &v12[v37];
  }

  else
  {
    v35 = v5;
    v45 = 0;
    sub_251609F8C();
    sub_2516357FC();
    v20 = v39;
    *v12 = v38;
    *(v12 + 1) = v20;
    v45 = 1;
    sub_251609FE0();
    sub_2516357AC();
    v21 = v38;
    v22 = v39;

    *(v16 + 16) = v21;
    *(v16 + 24) = v22;
    sub_25160A3A4(0, &qword_280DD70B0, &type metadata for ClassificationLevelID, MEMORY[0x277D83940]);
    v45 = 2;
    sub_25160A034(&qword_27F446E98, sub_251609FE0, MEMORY[0x277D83978]);
    sub_2516357FC();
    *(v16 + 32) = v38;
    v45 = 3;
    sub_25160A0C4();
    sub_2516357AC();
    v23 = v39;
    v24 = v40;
    v25 = v41;
    v27 = v42;
    v26 = v43;
    LOBYTE(v22) = v44;
    v31[2] = v39;
    v31[3] = v38;
    *(v16 + 40) = v38;
    *(v16 + 48) = v23;
    v31[1] = v24;
    *(v16 + 56) = v24;
    *(v16 + 64) = v25;
    v31[4] = v25;
    *(v16 + 72) = v27;
    *(v16 + 80) = v26;
    *(v16 + 88) = v22;
    LOBYTE(v38) = 4;
    sub_251609E94(&qword_27F446EA8, &qword_27F446EB0, MEMORY[0x277CC95A0], MEMORY[0x277D83668]);
    v28 = v35;
    sub_2516357AC();
    (*(v33 + 8))(v8, v34);
    sub_251609670(v28, v16 + v37);
    sub_25160A118(v16, v32, type metadata accessor for ContributingDatum);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v29 = type metadata accessor for ContributingDatum;
    v30 = v16;
  }

  return sub_25160B280(v30, v29);
}

uint64_t sub_251607C78()
{
  sub_25163590C();
  ContributingDatum.hash(into:)(v1);
  return sub_25163594C();
}

uint64_t sub_251607CBC(uint64_t a1)
{
  sub_25163590C();
  ContributingDatum.hash(into:)(v2);
  return sub_25163594C();
}

uint64_t ContributingDatum.init<A>(measureIdentifier:level:value:dateRange:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a4;
  sub_251609618(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v68 - v18;
  v20 = *a1;
  v73 = a1[1];
  v74 = v20;
  v21 = *(a3 + 8);
  v68 = *a3;
  v69 = v21;
  v70 = *(a3 + 16);
  sub_2516356BC();
  v71 = v85;
  v72 = v84;
  v22 = *(a6 + 56);
  v76 = a2;
  v23 = v15;
  v24 = v77;
  v22(a5, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v17 + 8))(v19, AssociatedTypeWitness);
  v83 = v26;
  v81 = a5;
  v82 = a6;
  KeyPath = swift_getKeyPath();
  v79 = a6;
  v80 = KeyPath;
  v28 = sub_2516354CC();
  WitnessTable = swift_getWitnessTable();
  v31 = sub_25160605C(sub_25160A180, v78, v28, &type metadata for ClassificationLevelID, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v30);
  v32 = v70;

  v75 = v23;
  sub_25160A118(v24, v23, sub_251609618);
  v33 = type metadata accessor for ContributingDatum(0);
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  v34 = *(v33 + 32);
  sub_2515F8380(0);
  (*(*(v35 - 8) + 56))(a7 + v34, 1, 1, v35);
  v36 = v73;
  *a7 = v74;
  *(a7 + 8) = v36;

  v37 = v71;
  *(a7 + 16) = v72;
  *(a7 + 24) = v37;
  v38 = 0;
  *(a7 + 32) = v31;
  if (v32 == 255)
  {
    v47 = 0;
    v49 = 0;
    v54 = 0;
    v56 = 0;
    v44 = 0;
    v59 = -1;
  }

  else if (v32)
  {
    v74 = v34;
    v39 = v68;
    v40 = v69;
    sub_251609714(v68, v69, 1);
    v41 = [v39 _unit];
    v42 = v32;
    [v39 doubleValueForUnit_];
    v44 = v43;

    v45 = [v39 _unit];
    v46 = [v45 unitString];

    v47 = sub_25163537C();
    v49 = v48;

    v50 = [v40 _unit];
    [v40 doubleValueForUnit_];
    v38 = v51;

    v52 = [v40 _unit];
    v53 = [v52 unitString];

    v54 = sub_25163537C();
    v56 = v55;

    v24 = v77;
    sub_251609750(v39, v40, v42);
    v57 = v39;
    v34 = v74;
    v58 = v40;
    v59 = 1;
    sub_251609750(v57, v58, v42);
  }

  else
  {
    v60 = v68;
    v61 = v69;
    sub_251609714(v68, v69, 0);
    v62 = [v60 _unit];
    [v60 doubleValueForUnit_];
    v44 = v63;

    v64 = [v60 _unit];
    v65 = [v64 unitString];

    v47 = sub_25163537C();
    v49 = v66;

    sub_251609750(v60, v61, v32);
    sub_251609750(v60, v61, v32);
    v54 = 0;
    v56 = 0;
    v59 = 0;
  }

  sub_25160B280(v24, sub_251609618);
  (*(*(a5 - 8) + 8))(v76, a5);
  *(a7 + 40) = v44;
  *(a7 + 48) = v47;
  *(a7 + 56) = v49;
  *(a7 + 64) = v38;
  *(a7 + 72) = v54;
  *(a7 + 80) = v56;
  *(a7 + 88) = v59;
  return sub_251609670(v75, a7 + v34);
}

uint64_t sub_2516082E8(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84538];
  sub_25160B9EC(0, &qword_27F446EE8, sub_25160AA18, &type metadata for ContributingDatum.CodableValue.BloodPressureCodingKeys, MEMORY[0x277D84538]);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = &v24 - v6;
  sub_25160B9EC(0, &qword_27F446EF8, sub_25160AA6C, &type metadata for ContributingDatum.CodableValue.QuantityCodingKeys, v4);
  v8 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  sub_25160B9EC(0, &qword_27F446F08, sub_25160AAC0, &type metadata for ContributingDatum.CodableValue.CodingKeys, v4);
  v12 = v11;
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160AAC0();
  sub_25163597C();
  v15 = *v2;
  v17 = v2[1];
  v16 = v2[2];
  if (v2[6])
  {
    v18 = v2[3];
    v19 = v2[4];
    v20 = v2[5];
    LOBYTE(v31) = 1;
    sub_25160AA18();
    sub_25163582C();
    v31 = v15;
    v32 = v17;
    v33 = v16;
    v34 = 0;
    sub_25160AB14();
    v21 = v27;
    v22 = v28;
    sub_25163588C();
    if (!v22)
    {
      v31 = v18;
      v32 = v19;
      v33 = v20;
      v34 = 1;
      sub_25163588C();
    }

    (*(v26 + 8))(v30, v21);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_25160AA6C();
    sub_25163582C();
    v31 = v15;
    v32 = v17;
    v33 = v16;
    sub_25160AB14();
    sub_25163588C();
    (*(v25 + 8))(v10, v8);
  }

  return (*(v29 + 8))(v14, v12);
}

uint64_t sub_2516086D0(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 48))
  {
    v3 = *(v1 + 24);
    MEMORY[0x25307C1E0](1);
    if (v2 == 0.0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = v2;
    }

    MEMORY[0x25307C200](*&v4);
    sub_25163539C();
    if (v3 == 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    MEMORY[0x25307C1E0](0);
    v5 = 0.0;
    if (v2 != 0.0)
    {
      v5 = v2;
    }
  }

  MEMORY[0x25307C200](*&v5);

  return sub_25163539C();
}

uint64_t sub_2516087B4()
{
  if (*v0)
  {
    return 0x696C6F7473616964;
  }

  else
  {
    return 0x63696C6F74737973;
  }
}

uint64_t sub_2516087F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63696C6F74737973 && a2 == 0xE800000000000000;
  if (v6 || (sub_2516358DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696C6F7473616964 && a2 == 0xE900000000000063)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2516358DC();

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

uint64_t sub_2516088D8(uint64_t a1)
{
  v2 = sub_25160AA18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251608914(uint64_t a1)
{
  v2 = sub_25160AA18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251608950()
{
  if (*v0)
  {
    return 0x657250646F6F6C62;
  }

  else
  {
    return 0x797469746E617571;
  }
}

uint64_t sub_251608998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
  if (v6 || (sub_2516358DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657250646F6F6C62 && a2 == 0xED00006572757373)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2516358DC();

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

uint64_t sub_251608A7C(uint64_t a1)
{
  v2 = sub_25160AAC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251608AB8(uint64_t a1)
{
  v2 = sub_25160AAC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251608AFC()
{
  sub_25163590C();
  MEMORY[0x25307C1E0](0);
  return sub_25163594C();
}

uint64_t sub_251608B40(uint64_t a1)
{
  sub_25163590C();
  MEMORY[0x25307C1E0](0);
  return sub_25163594C();
}

uint64_t sub_251608B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2516358DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251608C0C(uint64_t a1)
{
  v2 = sub_25160AA6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251608C48(uint64_t a1)
{
  v2 = sub_25160AA6C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_251608C84@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_25160AB68(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_251608D18()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  v7 = *(v0 + 48);
  sub_25163590C();
  sub_2516086D0(v3);
  return sub_25163594C();
}

uint64_t sub_251608DB8(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  v8 = *(v1 + 48);
  sub_25163590C();
  sub_2516086D0(v4);
  return sub_25163594C();
}

BOOL sub_251608E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_25160938C(v5, v7);
}

uint64_t sub_251608E6C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v12 = a3;
  sub_25160B9EC(0, &qword_27F446F98, sub_25160B7AC, &type metadata for CodableQuantity.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160B7AC();
  sub_25163597C();
  v14 = 0;
  sub_25163586C();
  if (!v4)
  {
    v13 = 1;
    sub_25163584C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_251609010()
{
  if (*v0)
  {
    return 0x6972745374696E75;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_25160904C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_2516358DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2516358DC();

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

uint64_t sub_25160912C(uint64_t a1)
{
  v2 = sub_25160B7AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251609168(uint64_t a1)
{
  v2 = sub_25160B7AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2516091A4@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_25160B800(a2);
  if (!v2)
  {
    *a1 = v6;
    a1[1] = result;
    a1[2] = v5;
  }

  return result;
}

uint64_t sub_2516091F4()
{
  v1 = *v0;
  sub_25163590C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x25307C200](*&v2);
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_25160926C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x25307C200](*&v2);

  return sub_25163539C();
}