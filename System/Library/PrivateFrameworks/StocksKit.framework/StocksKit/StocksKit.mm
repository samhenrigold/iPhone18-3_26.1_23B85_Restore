uint64_t sub_26BB22D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StockChart(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DataSource(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BB22E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for StockChart(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DataSource(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26BB22F5C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BB22F94(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26BB22FE4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_26BB2304C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BB230A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BB230E0()
{
  v1 = *(type metadata accessor for StockService.NetworkSession(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  sub_26BB28EE8(0);
  v6 = v5;
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {

    v7 = *(v6 + 48);
    v8 = sub_26BB7BE48();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 17, v2 | 7);
}

uint64_t sub_26BB23248()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BB23280()
{
  v1 = sub_26BB7BE48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64) + 55) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26BB23378()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26BB233B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26BB233F8()
{
  v1 = sub_26BB7BE48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_26BB234A0(uint64_t a1, uint64_t a2)
{
  sub_26BB28EE8(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BB2350C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_26BB28EE8(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_26BB23594(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_26BB235B4()
{
  v1 = sub_26BB7C5C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26BB2375C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DataSource(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BB23808(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DataSource(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB238AC@<X0>(uint64_t *a1@<X8>)
{
  result = ChartRange.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BB238FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
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
      sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26BB23A58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
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
      sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_26BB23BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7C3D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BB23C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7C3D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BB23CB0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DataSource(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BB23D5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DataSource(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB23E50(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[13];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_26BB7BE48();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[22];
    goto LABEL_11;
  }

  v15 = sub_26BB7BFC8();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[23];

  return v16(v17, a2, v15);
}

uint64_t sub_26BB23FF8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 120) = a2;
    return result;
  }

  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_26BB7BE48();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[22];
    goto LABEL_7;
  }

  v14 = sub_26BB7BFC8();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[23];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_26BB24194()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26BB24244()
{
  v1 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = sub_26BB7BE78();
  v3 = *(v25 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v22 = *(v7 + 64);
  v9 = v0 + ((v2 + 16) & ~v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26BB7C3D8();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
  }

  else
  {
    sub_26BB53CA4(0);
    v21 = v6;
    v12 = *(v11 + 48);
    v13 = sub_26BB7D178();
    v14 = *(v13 - 8);
    v20 = v12;
    v15 = v9 + v12;
    v6 = v21;
    if (!(*(v14 + 48))(v15, 1, v13))
    {
      (*(v14 + 8))(v9 + v20, v13);
    }
  }

  v16 = v2 | v4 | v8;
  v17 = (((v2 + 16) & ~v2) + v24 + v4) & ~v4;
  v18 = (v17 + v23 + v8) & ~v8;
  (*(v3 + 8))(v0 + v17, v25);
  (*(v7 + 8))(v0 + v18, v6);

  return MEMORY[0x2821FE8E8](v0, v18 + v22, v16 | 7);
}

uint64_t sub_26BB24528()
{
  v1 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = sub_26BB7BE78();
  v3 = *(v25 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  sub_26BB57304(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v22 = *(v7 + 64);
  v9 = v0 + ((v2 + 16) & ~v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26BB7C3D8();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
  }

  else
  {
    sub_26BB53CA4(0);
    v21 = v6;
    v12 = *(v11 + 48);
    v13 = sub_26BB7D178();
    v14 = *(v13 - 8);
    v20 = v12;
    v15 = v9 + v12;
    v6 = v21;
    if (!(*(v14 + 48))(v15, 1, v13))
    {
      (*(v14 + 8))(v9 + v20, v13);
    }
  }

  v16 = v2 | v4 | v8;
  v17 = (((v2 + 16) & ~v2) + v24 + v4) & ~v4;
  v18 = (v17 + v23 + v8) & ~v8;
  (*(v3 + 8))(v0 + v17, v25);
  (*(v7 + 8))(v0 + v18, v6);

  return MEMORY[0x2821FE8E8](v0, v18 + v22, v16 | 7);
}

void sub_26BB247FC()
{
  if (MEMORY[0x277D85020])
  {
    sub_26BB598B0(0, &qword_28043A328, sub_26BB5987C, MEMORY[0x277D85458]);
  }
}

uint64_t sub_26BB24868()
{
  v1 = *(type metadata accessor for CancellableStocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_26BB7CC78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v24 = *(v6 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = sub_26BB7BE78();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  if (EnumCaseMultiPayload != 1)
  {
    sub_26BB54250(0);
    v11 = v0 + v3 + *(v10 + 48);
    type metadata accessor for StocksKitServiceRequest(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_26BB7C3D8();
      (*(*(v12 - 8) + 8))(v11, v12);
    }

    else
    {
      sub_26BB53CA4(0);
      v23 = v4;
      v14 = *(v13 + 48);
      v15 = sub_26BB7D178();
      v16 = *(v15 - 8);
      v22 = v14;
      v17 = v11 + v14;
      v4 = v23;
      if (!(*(v16 + 48))(v17, 1, v15))
      {
        (*(v16 + 8))(v11 + v22, v15);
      }
    }
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v7 + 56) & ~v7;
  v20 = v0 + v18;

  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 8));

  (*(v6 + 8))(v0 + v19, v5);

  return MEMORY[0x2821FE8E8](v0, v19 + v24, v2 | v7 | 7);
}

uint64_t sub_26BB24B18()
{
  v1 = sub_26BB7CC78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v21 = *(v6 + 64);
  v22 = sub_26BB7BE78();
  v9 = *(v22 - 8);
  v10 = *(v9 + 80);
  v20 = *(v9 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = v0 + v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_26BB7C3D8();
    (*(*(v12 - 8) + 8))(v0 + v8, v12);
  }

  else
  {
    sub_26BB53CA4(0);
    v14 = *(v13 + 48);
    v15 = sub_26BB7D178();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v11 + v14, 1, v15))
    {
      (*(v16 + 8))(v11 + v14, v15);
    }
  }

  v17 = (v8 + v21 + v10) & ~v10;
  v18 = (v20 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v9 + 8))(v0 + v17, v22);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v18 + 8));

  return MEMORY[0x2821FE8E8](v0, v18 + 56, v3 | v7 | v10 | 7);
}

uint64_t sub_26BB24DD8()
{
  v1 = *(v0 + 16);
  v2 = sub_26BB7CC78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = v5 + *(v3 + 64);
  v9 = sub_26BB56CE8(v2, v7, v8);
  v10 = *(type metadata accessor for StocksKitServiceResult(0, v1, &type metadata for StocksKitServiceError, v9) - 8);
  v11 = *(v10 + 80);
  v12 = (v6 + v11) & ~v11;
  v13 = *(v10 + 64);
  (*(v3 + 8))(v0 + v5, v2);
  if (!swift_getEnumCaseMultiPayload())
  {
    (*(*(v1 - 8) + 8))(v0 + v12, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v13, v4 | v11 | 7);
}

uint64_t sub_26BB24F60()
{
  v1 = sub_26BB7CC78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 2, v3 | 7);
}

uint64_t sub_26BB24FEC()
{
  v1 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26BB7C3D8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    sub_26BB53CA4(0);
    v8 = *(v7 + 48);
    v9 = sub_26BB7D178();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26BB25180()
{
  sub_26BB3C9C8(v0[2], v0[3]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_26BB3C9C8(v0[6], v1);
  }

  v2 = v0[11];
  if (v2 >> 60 != 15)
  {
    sub_26BB3C9C8(v0[10], v2);
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_26BB251E8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_26BB25220(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7BF48();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BB2528C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7BF48();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BB2538C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[15];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[17] + 8);
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

  else
  {
    sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[18];
      goto LABEL_3;
    }

    sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[20];

    return v17(v18, a2, v16);
  }
}

void sub_26BB25560(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[15];
LABEL_3:
    v12 = *(v10 + 56);

    v12(a1 + v11, a2, a2, v9);
    return;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[17] + 8) = a2;
    return;
  }

  sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[18];
    goto LABEL_3;
  }

  sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = a1 + a4[20];

  v16(v17, a2, a2, v15);
}

uint64_t sub_26BB25728(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_26BB707D4(0);
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
      v13 = sub_26BB7BFC8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_26BB2584C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_26BB707D4(0);
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
      v13 = sub_26BB7BFC8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26BB25970(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26BB7BE48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BB25A1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26BB7BE48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB25ACC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DataSource(0);
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
      v13 = sub_26BB7BE48();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_26BB25BF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DataSource(0);
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
      v13 = sub_26BB7BE48();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26BB25D14(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DataSource(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BB25DC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DataSource(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB25E64(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DataSource(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BB25F10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DataSource(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB25FB4()
{
  sub_26BB7B768(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BB2603C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for StockChartResult(uint64_t a1)
{
  result = qword_280439D48;
  if (!qword_280439D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BB2623C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB262CC(uint64_t a1)
{
  result = type metadata accessor for StockChart(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DataSource(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BB26360(uint64_t a1, int a2)
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

uint64_t sub_26BB26380(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BB263C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BB263E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_26BB26428(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_26BB26474@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, &qword_28158BA88, MEMORY[0x277D696F0], 1);
  result = sub_26BB7C8C8();
  if (v6[3])
  {
    v4 = type metadata accessor for FeatureAvailability();
    swift_allocObject();
    v5 = sub_26BB71C44(v6);
    a2[3] = v4;
    result = sub_26BB289F0(&qword_280439E28, type metadata accessor for FeatureAvailability, &unk_26BB82134);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_26BB26558(uint64_t a1)
{
  v56 = sub_26BB7CFA8();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26BB7CF88();
  MEMORY[0x28223BE20](v3);
  v53 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BB7CCB8();
  MEMORY[0x28223BE20](v5 - 8);
  v51 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BB7C878();
  MEMORY[0x28223BE20](v7);
  sub_26BB282D8(a1, v59);
  v8 = swift_allocObject();
  sub_26BB22F94(v59, v8 + 16);
  v9 = MEMORY[0x277D84F90];
  *&v59[0] = MEMORY[0x277D84F90];
  sub_26BB289F0(&qword_28158C308, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  v10 = MEMORY[0x277D6CA70];
  sub_26BB28900(0, &qword_28158BBB0, MEMORY[0x277D6CA70]);
  sub_26BB28954(&qword_28158BBA8, &qword_28158BBB0, v10);
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9E0, &qword_28158BA88, MEMORY[0x277D696F0], 1);
  swift_allocObject();
  v57 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v59);
  v11 = swift_allocObject();
  sub_26BB22F94(v59, v11 + 16);
  *&v59[0] = v9;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9E8, &qword_28158BA90, MEMORY[0x277D696D0], 1);
  swift_allocObject();
  v54 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v59);
  v12 = swift_allocObject();
  sub_26BB22F94(v59, v12 + 16);
  *&v59[0] = v9;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158BA18, &unk_28158BAD0, MEMORY[0x277D69430], 1);
  swift_allocObject();
  v52 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v59);
  v13 = swift_allocObject();
  sub_26BB22F94(v59, v13 + 16);
  *&v59[0] = v9;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9F8, &qword_28158BAA0, MEMORY[0x277D69690], 1);
  swift_allocObject();
  v50 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v59);
  v14 = swift_allocObject();
  sub_26BB22F94(v59, v14 + 16);
  *&v59[0] = v9;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158BA28, &unk_28158BAE0, MEMORY[0x277D693B0], 1);
  swift_allocObject();
  v49 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v59);
  v15 = swift_allocObject();
  sub_26BB22F94(v59, v15 + 16);
  *&v59[0] = v9;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA08, &qword_28158BAC0, MEMORY[0x277D695E0], 1);
  swift_allocObject();
  v48 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v59);
  v16 = swift_allocObject();
  sub_26BB22F94(v59, v16 + 16);
  *&v59[0] = v9;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA38, &qword_28158BAF0, MEMORY[0x277D69398], 0);
  swift_allocObject();
  v47 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v59);
  v17 = swift_allocObject();
  sub_26BB22F94(v59, v17 + 16);
  *&v59[0] = v9;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9B8, &qword_28158B450, &protocol descriptor for StockServiceType, 1);
  swift_allocObject();
  v46 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v59);
  v18 = swift_allocObject();
  sub_26BB22F94(v59, v18 + 16);
  *&v59[0] = v9;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9C0, qword_28158B458, &protocol descriptor for BundleReaderType, 1);
  swift_allocObject();
  v45 = sub_26BB7C9F8();
  type metadata accessor for StockService(0);
  v19 = swift_allocObject();
  *(v19 + 5) = [objc_allocWithZone(sub_26BB7C9D8()) init];
  v20 = sub_26BB288B4();
  v43 = "com.apple.stocks.watchapp";
  v44 = v20;
  sub_26BB7CCA8();
  *&v59[0] = v9;
  v42[2] = sub_26BB289F0(&unk_28158BB70, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v21 = MEMORY[0x277D85230];
  sub_26BB28900(0, &unk_28158BB98, MEMORY[0x277D85230]);
  v42[1] = v22;
  v42[3] = sub_26BB28954(&qword_28158BB90, &unk_28158BB98, v21);
  sub_26BB7D028();
  v23 = *MEMORY[0x277D85260];
  v24 = *(v58 + 104);
  v58 += 104;
  v26 = v55;
  v25 = v56;
  v24(v55, v23, v56);
  *(v19 + 6) = sub_26BB7CFD8();
  v43 = ".stockskit.fetch";
  sub_26BB7CC98();
  *&v59[0] = MEMORY[0x277D84F90];
  sub_26BB7D028();
  v24(v26, v23, v25);
  *(v19 + 7) = sub_26BB7CFD8();
  *(v19 + 17) = 0;
  v27 = OBJC_IVAR____TtC9StocksKit12StockService____lazy_storage___networkProxy;
  v28 = sub_26BB7C888();
  (*(*(v28 - 8) + 56))(&v19[v27], 1, 1, v28);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v29 = sub_26BB7CB88();
  __swift_project_value_buffer(v29, qword_28158F140);
  v30 = sub_26BB7CB68();
  v31 = sub_26BB7CF78();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v59[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_26BB38238(0xD000000000000015, 0x800000026BB82E30, v59);
    _os_log_impl(&dword_26BB21000, v30, v31, "Creating stocks service with configuration: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x26D68EA90](v33, -1, -1);
    MEMORY[0x26D68EA90](v32, -1, -1);
  }

  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  v34 = v54;
  *(v19 + 8) = v57;
  *(v19 + 9) = v34;
  v36 = v49;
  v35 = v50;
  *(v19 + 10) = v52;
  *(v19 + 11) = v35;
  v38 = v47;
  v37 = v48;
  *(v19 + 12) = v36;
  *(v19 + 13) = v37;
  v39 = v45;
  v40 = v46;
  *(v19 + 14) = v38;
  *(v19 + 15) = v40;
  *(v19 + 16) = v39;
  return v19;
}

uint64_t sub_26BB2713C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, &qword_28158BA90, MEMORY[0x277D696D0], 1);
  sub_26BB7C3B8();
  sub_26BB7C8A8();

  if (v5)
  {
    return sub_26BB22F94(&v4, a2);
  }

  __break(1u);
  return result;
}

void *sub_26BB271F0@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, a2, a3, 1);
  result = sub_26BB7C8C8();
  if (v11)
  {
    return a4(v10, a5);
  }

  __break(1u);
  return result;
}

void *sub_26BB27294@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, &qword_28158BAF0, MEMORY[0x277D69398], 0);
  result = sub_26BB7C8C8();
  if (v4)
  {
    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BB27318(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockService(0);
  result = sub_26BB7C8B8();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BB2736C@<X0>(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = sub_26BB7CD48();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  sub_26BB2746C(0xD000000000000019, 0x800000026BB82DB0, v4, v6);

  sub_26BB7C818();
  sub_26BB7C7F8();
  sub_26BB7C7A8();
  v7 = sub_26BB7C808();

  *a1 = v7 & 1;
  return result;
}

uint64_t sub_26BB2746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_26BB7CDA8();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_26BB7CDA8();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_26BB7D378();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_26BB7CDA8();
      v7 = v9;
    }

    while (v9);
  }

  sub_26BB7CDA8();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_26BB275C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_26BB7C8A8();
  if (v15 == 2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15)
  {
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v5 = sub_26BB7CB88();
    __swift_project_value_buffer(v5, qword_28158F140);
    v6 = sub_26BB7CB68();
    v7 = sub_26BB7CF78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26BB21000, v6, v7, "Registering StocksKitService: XPC Service", v8, 2u);
      MEMORY[0x26D68EA90](v8, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = type metadata accessor for StocksKitServiceProxy();
    result = sub_26BB7C8B8();
    if (result)
    {
      v10 = &off_287C84E10;
LABEL_15:
      a2[3] = v9;
      a2[4] = v10;
      *a2 = result;
      return result;
    }

    goto LABEL_17;
  }

  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v11 = sub_26BB7CB88();
  __swift_project_value_buffer(v11, qword_28158F140);
  v12 = sub_26BB7CB68();
  v13 = sub_26BB7CF78();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26BB21000, v12, v13, "Registering StocksKitService: In-Process", v14, 2u);
    MEMORY[0x26D68EA90](v14, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for InProcessStockService();
  result = sub_26BB7C8B8();
  if (result)
  {
    v10 = &protocol witness table for InProcessStockService;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BB27844(uint64_t a1)
{
  v2 = sub_26BB7C878();
  MEMORY[0x28223BE20](v2);
  sub_26BB282D8(a1, v15);
  v3 = swift_allocObject();
  sub_26BB22F94(v15, v3 + 16);
  v4 = MEMORY[0x277D84F90];
  *&v15[0] = MEMORY[0x277D84F90];
  sub_26BB289F0(&qword_28158C308, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  v5 = MEMORY[0x277D6CA70];
  sub_26BB28900(0, &qword_28158BBB0, MEMORY[0x277D6CA70]);
  sub_26BB28954(&qword_28158BBA8, &qword_28158BBB0, v5);
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9E0, &qword_28158BA88, MEMORY[0x277D696F0], 1);
  swift_allocObject();
  v6 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v15);
  v7 = swift_allocObject();
  sub_26BB22F94(v15, v7 + 16);
  *&v15[0] = v4;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9D0, &unk_28158BA78, MEMORY[0x277D69770], 1);
  swift_allocObject();
  v8 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v15);
  v9 = swift_allocObject();
  sub_26BB22F94(v15, v9 + 16);
  *&v15[0] = v4;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA10, &qword_28158BAC8, MEMORY[0x277D69500], 1);
  swift_allocObject();
  v10 = sub_26BB7C9F8();
  type metadata accessor for InProcessStockService();
  v11 = swift_allocObject();
  sub_26BB2845C(0);
  swift_allocObject();
  v12 = sub_26BB7CAF8();
  sub_26BB285E4(0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  v11[2] = v6;
  v11[3] = v8;
  v11[4] = v10;
  v11[5] = v13;
  return v11;
}

uint64_t sub_26BB27BC8()
{
  type metadata accessor for StocksKitServiceProxy();

  return swift_allocObject();
}

uint64_t sub_26BB27BFC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for IdentificationService();
  v3 = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  result = sub_26BB289F0(&qword_280439E20, type metadata accessor for IdentificationService, &unk_26BB81140);
  a1[4] = result;
  *a1 = v3;
  return result;
}

id sub_26BB27C84()
{
  v0 = objc_allocWithZone(type metadata accessor for NoopAppActivityMonitor());

  return [v0 init];
}

uint64_t sub_26BB27D0C()
{
  v0 = sub_26BB7CA18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7C918();
  sub_26BB287D8(0, &qword_28158BAB8, MEMORY[0x277D69608], 1);
  sub_26BB7C988();

  v4 = *MEMORY[0x277D6CF10];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_26BB7C858();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_26BB7C918();
  type metadata accessor for StockService(0);
  sub_26BB7C978();

  sub_26BB7C918();
  sub_26BB7C978();

  v5(v3, v4, v0);
  sub_26BB7C858();

  v6(v3, v0);
  sub_26BB7C918();
  sub_26BB7C988();

  sub_26BB7C918();
  sub_26BB287D8(0, &qword_28158B450, &protocol descriptor for StockServiceType, 1);
  sub_26BB7C988();

  v5(v3, v4, v0);
  sub_26BB7C858();

  v6(v3, v0);
  sub_26BB7C918();
  type metadata accessor for InProcessStockService();
  sub_26BB7C978();

  sub_26BB7C918();
  type metadata accessor for StocksKitServiceProxy();
  sub_26BB7C978();

  v5(v3, v4, v0);
  sub_26BB7C858();

  v6(v3, v0);
  sub_26BB7C918();
  sub_26BB287D8(0, &qword_28158BA98, MEMORY[0x277D696B0], 1);
  sub_26BB7C988();

  v5(v3, v4, v0);
  sub_26BB7C858();

  v6(v3, v0);
  sub_26BB7C918();
  sub_26BB28274();
  sub_26BB7C978();

  sub_26BB7C918();
  sub_26BB287D8(0, qword_28158B458, &protocol descriptor for BundleReaderType, 1);
  sub_26BB7C988();
}

unint64_t sub_26BB28274()
{
  result = qword_28158B240;
  if (!qword_28158B240)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28158B240);
  }

  return result;
}

uint64_t sub_26BB282D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26BB2837C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_26BB287D8(255, a3, a4, a5 & 1);
    v6 = sub_26BB7CA08();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_26BB2845C(uint64_t a1)
{
  if (!qword_28158B9A0)
  {
    sub_26BB284C8();
    sub_26BB28518();
    v1 = sub_26BB7CB08();
    if (!v2)
    {
      atomic_store(v1, &qword_28158B9A0);
    }
  }
}

void sub_26BB284C8()
{
  if (!qword_28158B5C8)
  {
    v0 = sub_26BB7CFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B5C8);
    }
  }
}

unint64_t sub_26BB28518()
{
  result = qword_28158B5C0;
  if (!qword_28158B5C0)
  {
    sub_26BB284C8();
    sub_26BB28590(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B5C0);
  }

  return result;
}

unint64_t sub_26BB28590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B5D8[0];
  if (!qword_28158B5D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28158B5D8);
  }

  return result;
}

void sub_26BB285E4(uint64_t a1)
{
  if (!qword_28158B230)
  {
    sub_26BB2845C(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_26BB7D0F8();
    if (!v2)
    {
      atomic_store(v1, &qword_28158B230);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26BB287D8(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26BB288B4()
{
  result = qword_28158BB68;
  if (!qword_28158BB68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28158BB68);
  }

  return result;
}

void sub_26BB28900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BB7CE38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BB28954(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_26BB28900(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_26BB289F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_26BB28A40()
{
  if (qword_28158B8B8 != -1)
  {
    swift_once();
  }

  sub_26BB3CB34(v1);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  type metadata accessor for StockService(0);
  result = sub_26BB7C898();
  if (result)
  {
    off_28158B718 = result;
    return __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static StockService.shared.getter()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }
}

unint64_t StockService.Configuration.description.getter()
{
  v1 = 0xD000000000000015;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
    sub_26BB7D098();
    MEMORY[0x26D68DCA0](0xD000000000000019, 0x800000026BB82E50);
    MEMORY[0x26D68DCA0](v3, v2);
    MEMORY[0x26D68DCA0](46, 0xE100000000000000);
    sub_26BB7CF08();
    return 0;
  }

  return v1;
}

unint64_t StockService.NetworkSession.description.getter()
{
  v1 = v0;
  v2 = 0xD00000000000001ALL;
  v3 = sub_26BB7BE48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3B49C(v1, v9, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8(0);
  v11 = v10;
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
  {
    v12 = *v9;
    v13 = *(v9 + 1);
    (*(v4 + 32))(v6, &v9[*(v11 + 48)], v3);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_26BB7D098();
    MEMORY[0x26D68DCA0](0xD00000000000001BLL, 0x800000026BB82EA0);
    MEMORY[0x26D68DCA0](v12, v13);

    MEMORY[0x26D68DCA0](46, 0xE100000000000000);
    sub_26BB7CF08();
    MEMORY[0x26D68DCA0](46, 0xE100000000000000);
    v14 = sub_26BB7BE28();
    MEMORY[0x26D68DCA0](v14);

    v2 = v16[0];
    (*(v4 + 8))(v6, v3);
  }

  return v2;
}

void sub_26BB28EE8(uint64_t a1)
{
  if (!qword_28158B278)
  {
    sub_26BB7BE48();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28158B278);
    }
  }
}

unint64_t StockService.CachePolicy.description.getter()
{
  v1 = sub_26BB7BFA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BB7D4C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BB7D4A8();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26BB7D538();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26BB7D548();
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v22 = *v0;
  v21 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    v39 = &v33 - v17;
    v40 = v19;
    v36 = v20;
    v41 = v18;
    v42 = v22;
    v43 = v21;
    sub_26BB7D098();

    v49 = 0xD000000000000011;
    v50 = 0x800000026BB82F00;
    sub_26BB390BC(0, &qword_280439E30, MEMORY[0x277CC9FC8], MEMORY[0x277D84560]);
    sub_26BB7D508();
    v35 = v9;
    v38 = v1;
    v34 = v5;
    v37 = v2;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26BB7DFD0;
    sub_26BB7D4D8();
    sub_26BB7D4E8();
    sub_26BB7D4F8();
    sub_26BB38A34(v26);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26BB7D528();
    sub_26BB7D498();
    sub_26BB7D4B8();
    v27 = v36;
    sub_26BB7BD78();

    (*(v6 + 8))(v8, v34);
    (*(v46 + 8))(v11, v35);
    (*(v44 + 8))(v14, v45);
    sub_26BB7BE98();
    v25 = v39;
    v24 = v27;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    v39 = &v33 - v17;
    v40 = v19;
    v36 = v20;
    v41 = v18;
    v42 = v22;
    v43 = v21;
    sub_26BB7D098();

    v49 = 0xD000000000000012;
    v50 = 0x800000026BB82EE0;
    sub_26BB390BC(0, &qword_280439E30, MEMORY[0x277CC9FC8], MEMORY[0x277D84560]);
    sub_26BB7D508();
    v37 = v2;
    v38 = v1;
    v34 = v5;
    v35 = v9;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26BB7DFD0;
    sub_26BB7D4D8();
    sub_26BB7D4E8();
    sub_26BB7D4F8();
    sub_26BB38A34(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26BB7D528();
    sub_26BB7D498();
    sub_26BB7D4B8();
    v24 = v36;
    sub_26BB7BD78();

    (*(v6 + 8))(v8, v34);
    (*(v46 + 8))(v11, v35);
    (*(v44 + 8))(v14, v45);
    sub_26BB7BE98();
    v25 = v39;
LABEL_5:
    sub_26BB7D518();
    (*(v37 + 8))(v4, v38);
    v28 = *(v40 + 8);
    v29 = v24;
    v30 = v41;
    v28(v29, v41);
    sub_26BB3BE9C(&qword_280439E38, MEMORY[0x277CC9FF0], MEMORY[0x277CC9FE8]);
    sub_26BB7D568();
    v28(v25, v30);
    MEMORY[0x26D68DCA0](v47, v48);

    MEMORY[0x26D68DCA0](41, 0xE100000000000000);
    return v49;
  }

  if (v22 > 1)
  {
    if (v22 ^ 2 | v21)
    {
      v32 = 0x726566657270;
    }

    else
    {
      v32 = 0x65726F6E6769;
    }

    return v32 & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
  }

  else if (v22 | v21)
  {
    return 0x6E4F646568636163;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_26BB297D0@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, double *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v7 = *v3;
    v6 = *(v3 + 8);
    if (!*(v3 + 16))
    {
      *a3 = sub_26BB7D578();
      v5 = MEMORY[0x277D6CA40];
      goto LABEL_8;
    }

    if (*(v3 + 16) == 1)
    {
      *a3 = sub_26BB7D578();
    }

    else
    {
      if (v7 > 1)
      {
        if (v7 ^ 2 | v6)
        {
          v15 = a1;
          v11 = sub_26BB7C868();
          v10 = *(*(v11 - 8) + 104);
          if (v15 == 4)
          {
            v16 = MEMORY[0x277D6CA38];
          }

          else
          {
            v16 = MEMORY[0x277D6CA28];
          }

          v13 = *v16;
          v12 = a3;
          goto LABEL_9;
        }

        goto LABEL_2;
      }

      if (v7 | v6)
      {
        v5 = MEMORY[0x277D6CA30];
        goto LABEL_8;
      }

      if (a1 >= 3u)
      {
        if (a1 == 3)
        {
          v5 = MEMORY[0x277D6CA28];
        }

        else
        {
          v5 = MEMORY[0x277D6CA38];
        }

        goto LABEL_8;
      }

      *a3 = 60.0;
    }

    v5 = MEMORY[0x277D6CA48];
    goto LABEL_8;
  }

LABEL_2:
  v5 = MEMORY[0x277D6CA20];
LABEL_8:
  v8 = *v5;
  v9 = sub_26BB7C868();
  v10 = *(*(v9 - 8) + 104);
  v11 = v9;
  v12 = a3;
  v13 = v8;
LABEL_9:

  return v10(v12, v13, v11);
}

uint64_t sub_26BB29964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38E9C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB299A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38E9C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB299F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38E48(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB29A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38E48(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB29A68()
{
  v1 = *v0;
  sub_26BB7D418();
  MEMORY[0x26D68E330](v1);
  return sub_26BB7D458();
}

uint64_t sub_26BB29AB0(uint64_t a1)
{
  v2 = *v1;
  sub_26BB7D418();
  MEMORY[0x26D68E330](v2);
  return sub_26BB7D458();
}

uint64_t sub_26BB29AF4()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x614365726F6E6769;
  v4 = 0x6143726566657270;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E4F646568636163;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26BB29BD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB394BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB29C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38F44(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB29C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38F44(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB29C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38EF0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB29CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38EF0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB29CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38DF4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB29D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38DF4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB29D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38DA0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB29DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38DA0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB29DE4()
{
  sub_26BB7D418();
  MEMORY[0x26D68E330](0);
  return sub_26BB7D458();
}

uint64_t sub_26BB29E28(uint64_t a1)
{
  sub_26BB7D418();
  MEMORY[0x26D68E330](0);
  return sub_26BB7D458();
}

uint64_t sub_26BB29E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB29EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38D4C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB29F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB38D4C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t StockService.CachePolicy.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_26BB38F98(0, &qword_28158B118, sub_26BB38D4C, &type metadata for StockService.CachePolicy.PreferCacheMaxAgeCodingKeys, MEMORY[0x277D84538]);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v43 - v5;
  sub_26BB38F98(0, &qword_28158B120, sub_26BB38DA0, &type metadata for StockService.CachePolicy.PreferCacheCodingKeys, v3);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v43 - v7;
  sub_26BB38F98(0, &qword_28158B128, sub_26BB38DF4, &type metadata for StockService.CachePolicy.IgnoreCacheCodingKeys, v3);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v9;
  sub_26BB38F98(0, &qword_28158B0F8, sub_26BB38E48, &type metadata for StockService.CachePolicy.CachedOnlyMaxAgeCodingKeys, v3);
  v56 = v10;
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v43 - v11;
  sub_26BB38F98(0, &qword_28158B100, sub_26BB38E9C, &type metadata for StockService.CachePolicy.CachedOnlyCodingKeys, v3);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v43 - v13;
  sub_26BB38F98(0, &qword_28158B108, sub_26BB38EF0, &type metadata for StockService.CachePolicy.DefaultCodingKeys, v3);
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  sub_26BB38F98(0, &qword_28158B110, sub_26BB38F44, &type metadata for StockService.CachePolicy.CodingKeys, v3);
  v18 = *(v17 - 8);
  v60 = v17;
  v61 = v18;
  MEMORY[0x28223BE20](v17);
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = *(v1 + 16);
  v22 = a1[3];
  v23 = a1;
  v25 = &v43 - v24;
  v26 = __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_26BB38F44(v26, v27, v28);
  v29 = sub_26BB7D488();
  if (!v21)
  {
    v35 = v54;
    LOBYTE(v62) = 2;
    sub_26BB38E48(v29, v30, v31);
    v36 = v55;
    v33 = v60;
    sub_26BB7D2B8();
    v62 = v19;
    v63 = v20;
    v37 = v56;
    sub_26BB7D328();
    (*(v35 + 8))(v36, v37);
    return (*(v61 + 8))(v25, v33);
  }

  if (v21 == 1)
  {
    LOBYTE(v62) = 5;
    sub_26BB38D4C(v29, v30, v31);
    v32 = v57;
    v33 = v60;
    sub_26BB7D2B8();
    v62 = v19;
    v63 = v20;
    v34 = v59;
    sub_26BB7D328();
    (*(v58 + 8))(v32, v34);
    return (*(v61 + 8))(v25, v33);
  }

  if (v19 > 1)
  {
    if (v19 ^ 2 | v20)
    {
      LOBYTE(v62) = 4;
      sub_26BB38DA0(v29, v30, v31);
      v40 = v51;
      v39 = v60;
      sub_26BB7D2B8();
      v42 = v52;
      v41 = v53;
    }

    else
    {
      LOBYTE(v62) = 3;
      sub_26BB38DF4(v29, v30, v31);
      v40 = v48;
      v39 = v60;
      sub_26BB7D2B8();
      v42 = v49;
      v41 = v50;
    }

    goto LABEL_13;
  }

  if (v19 | v20)
  {
    LOBYTE(v62) = 1;
    sub_26BB38E9C(v29, v30, v31);
    v40 = v45;
    v39 = v60;
    sub_26BB7D2B8();
    v42 = v46;
    v41 = v47;
LABEL_13:
    (*(v42 + 8))(v40, v41);
    return (*(v61 + 8))(v25, v39);
  }

  LOBYTE(v62) = 0;
  sub_26BB38EF0(v29, v30, v31);
  v39 = v60;
  sub_26BB7D2B8();
  (*(v43 + 8))(v16, v44);
  return (*(v61 + 8))(v25, v39);
}

uint64_t StockService.CachePolicy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_26BB38F98(0, &qword_28158B198, sub_26BB38D4C, &type metadata for StockService.CachePolicy.PreferCacheMaxAgeCodingKeys, MEMORY[0x277D844C8]);
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  MEMORY[0x28223BE20](v4);
  v69 = &v52 - v6;
  sub_26BB38F98(0, &qword_28158B1A0, sub_26BB38DA0, &type metadata for StockService.CachePolicy.PreferCacheCodingKeys, v3);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v52 - v8;
  sub_26BB38F98(0, &qword_28158B1A8, sub_26BB38DF4, &type metadata for StockService.CachePolicy.IgnoreCacheCodingKeys, v3);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v52 - v10;
  sub_26BB38F98(0, &qword_28158B178, sub_26BB38E48, &type metadata for StockService.CachePolicy.CachedOnlyMaxAgeCodingKeys, v3);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v52 - v12;
  sub_26BB38F98(0, &qword_28158B180, sub_26BB38E9C, &type metadata for StockService.CachePolicy.CachedOnlyCodingKeys, v3);
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x28223BE20](v13);
  v67 = &v52 - v14;
  sub_26BB38F98(0, &qword_28158B188, sub_26BB38EF0, &type metadata for StockService.CachePolicy.DefaultCodingKeys, v3);
  v16 = v15;
  v54 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  sub_26BB38F98(0, &qword_28158B190, sub_26BB38F44, &type metadata for StockService.CachePolicy.CodingKeys, v3);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  v24 = a1;
  v25 = a1[3];
  v73 = v24;
  v26 = __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_26BB38F44(v26, v27, v28);
  v29 = v71;
  sub_26BB7D478();
  if (!v29)
  {
    v53 = v16;
    v31 = v67;
    v30 = v68;
    v71 = v21;
    v33 = v69;
    v32 = v70;
    v34 = sub_26BB7D298();
    if (*(v34 + 16) != 1 || (v37 = *(v34 + 32), v37 == 6))
    {
      v42 = sub_26BB7D0E8();
      swift_allocError();
      v43 = v23;
      v44 = v20;
      v46 = v45;
      sub_26BB39000(0);
      *v46 = &type metadata for StockService.CachePolicy;
      sub_26BB7D218();
      sub_26BB7D0C8();
      (*(*(v42 - 8) + 104))(v46, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v71 + 8))(v43, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v34 + 32) > 2u)
      {
        if (v37 == 3)
        {
          LOBYTE(v72) = 3;
          sub_26BB38DF4(v34, v35, v36);
          sub_26BB7D208();
          (*(v57 + 8))(v30, v58);
          (*(v71 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v40 = xmmword_26BB7DFF0;
          v41 = 2;
        }

        else
        {
          v68 = v34;
          if (v37 == 4)
          {
            LOBYTE(v72) = 4;
            sub_26BB38DA0(v34, v35, v36);
            v48 = v66;
            sub_26BB7D208();
            (*(v61 + 8))(v48, v62);
            (*(v71 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v40 = xmmword_26BB7DFE0;
            v41 = 2;
          }

          else
          {
            LOBYTE(v72) = 5;
            sub_26BB38D4C(v34, v35, v36);
            sub_26BB7D208();
            v51 = v63;
            sub_26BB7D288();
            (*(v64 + 8))(v33, v51);
            (*(v71 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v40 = v72;
            v41 = 1;
          }
        }
      }

      else if (*(v34 + 32))
      {
        if (v37 == 1)
        {
          LOBYTE(v72) = 1;
          sub_26BB38E9C(v34, v35, v36);
          v38 = v31;
          sub_26BB7D208();
          v39 = v71;
          (*(v55 + 8))(v38, v56);
          (*(v39 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v40 = xmmword_26BB7E000;
          v41 = 2;
        }

        else
        {
          LOBYTE(v72) = 2;
          sub_26BB38E48(v34, v35, v36);
          v49 = v65;
          sub_26BB7D208();
          v50 = v60;
          sub_26BB7D288();
          (*(v59 + 8))(v49, v50);
          (*(v71 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v41 = 0;
          v40 = v72;
        }
      }

      else
      {
        LOBYTE(v72) = 0;
        sub_26BB38EF0(v34, v35, v36);
        sub_26BB7D208();
        (*(v54 + 8))(v18, v53);
        (*(v71 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v40 = 0uLL;
        v41 = 2;
      }

      *v32 = v40;
      *(v32 + 16) = v41;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v73);
}

uint64_t sub_26BB2B154()
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

id sub_26BB2B1CC()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    v4 = sub_26BB7CD38();
    [v3 setName_];

    [v3 setMaxConcurrentOperationCount_];
    v5 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t StockService.__allocating_init(configuration:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  StockService.init(configuration:)(a1);
  return v2;
}

void *StockService.init(configuration:)(uint64_t *a1)
{
  v2 = v1;
  v48 = sub_26BB7C878();
  MEMORY[0x28223BE20](v48);
  v49 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_26BB7CFA8();
  v5 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v44 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BB7CF88();
  MEMORY[0x28223BE20](v7);
  v8 = sub_26BB7CCB8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = *a1;
  v45 = a1[1];
  v46 = a1[2];
  v47 = v9;
  v1[5] = [objc_allocWithZone(sub_26BB7C9D8()) init];
  v42[1] = sub_26BB3B454(0, &qword_28158BB68, 0x277D85C78);
  v43 = "com.apple.stocks.watchapp";
  sub_26BB7CCA8();
  v52[0] = MEMORY[0x277D84F90];
  v42[4] = sub_26BB3BE9C(&unk_28158BB70, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v10 = MEMORY[0x277D85230];
  sub_26BB390BC(0, &unk_28158BB98, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  v42[3] = v11;
  sub_26BB3BB84(&qword_28158BB90, &unk_28158BB98, v10);
  sub_26BB7D028();
  v12 = *MEMORY[0x277D85260];
  v13 = v5 + 104;
  v14 = *(v5 + 104);
  v42[2] = v13;
  v15 = v44;
  v14(v44, v12, v50);
  v1[6] = sub_26BB7CFD8();
  v43 = ".stockskit.fetch";
  sub_26BB7CC98();
  v52[0] = MEMORY[0x277D84F90];
  sub_26BB7D028();
  v14(v15, v12, v50);
  v1[7] = sub_26BB7CFD8();
  v1[17] = 0;
  v16 = OBJC_IVAR____TtC9StocksKit12StockService____lazy_storage___networkProxy;
  v17 = sub_26BB7C888();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v18 = sub_26BB7CB88();
  __swift_project_value_buffer(v18, qword_28158F140);
  v19 = v45;

  v20 = sub_26BB7CB68();
  v21 = sub_26BB7CF78();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v51[0] = v23;
    *v22 = 136315138;
    v25 = v46;
    v24 = v47;
    v52[0] = v47;
    v52[1] = v19;
    v52[2] = v46;
    v26 = StockService.Configuration.description.getter();
    v28 = sub_26BB38238(v26, v27, v51);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_26BB21000, v20, v21, "Creating stocks service with configuration: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x26D68EA90](v23, -1, -1);
    MEMORY[0x26D68EA90](v22, -1, -1);
  }

  else
  {

    v25 = v46;
    v24 = v47;
  }

  v1[2] = v24;
  v1[3] = v19;
  v1[4] = v25;
  if (qword_28158B8B8 != -1)
  {
    swift_once();
  }

  sub_26BB3CB34(v52);
  sub_26BB282D8(v52, v51);
  v29 = swift_allocObject();
  sub_26BB22F94(v51, v29 + 16);
  v30 = MEMORY[0x277D84F90];
  *&v51[0] = MEMORY[0x277D84F90];
  sub_26BB3BE9C(&qword_28158C308, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  v31 = MEMORY[0x277D6CA70];
  sub_26BB390BC(0, &qword_28158BBB0, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_26BB3BB84(&qword_28158BBA8, &qword_28158BBB0, v31);
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9E0, &qword_28158BA88, MEMORY[0x277D696F0], 1);
  swift_allocObject();
  v2[8] = sub_26BB7C9F8();
  sub_26BB282D8(v52, v51);
  v32 = swift_allocObject();
  sub_26BB22F94(v51, v32 + 16);
  *&v51[0] = v30;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9E8, &qword_28158BA90, MEMORY[0x277D696D0], 1);
  swift_allocObject();
  v2[9] = sub_26BB7C9F8();
  sub_26BB282D8(v52, v51);
  v33 = swift_allocObject();
  sub_26BB22F94(v51, v33 + 16);
  *&v51[0] = v30;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158BA18, &unk_28158BAD0, MEMORY[0x277D69430], 1);
  swift_allocObject();
  v2[10] = sub_26BB7C9F8();
  sub_26BB282D8(v52, v51);
  v34 = swift_allocObject();
  sub_26BB22F94(v51, v34 + 16);
  *&v51[0] = v30;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9F8, &qword_28158BAA0, MEMORY[0x277D69690], 1);
  swift_allocObject();
  v2[11] = sub_26BB7C9F8();
  sub_26BB282D8(v52, v51);
  v35 = swift_allocObject();
  sub_26BB22F94(v51, v35 + 16);
  *&v51[0] = v30;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158BA28, &unk_28158BAE0, MEMORY[0x277D693B0], 1);
  swift_allocObject();
  v2[12] = sub_26BB7C9F8();
  sub_26BB282D8(v52, v51);
  v36 = swift_allocObject();
  sub_26BB22F94(v51, v36 + 16);
  *&v51[0] = v30;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA08, &qword_28158BAC0, MEMORY[0x277D695E0], 1);
  swift_allocObject();
  v2[13] = sub_26BB7C9F8();
  sub_26BB282D8(v52, v51);
  v37 = swift_allocObject();
  sub_26BB22F94(v51, v37 + 16);
  *&v51[0] = v30;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA38, &qword_28158BAF0, MEMORY[0x277D69398], 0);
  swift_allocObject();
  v2[14] = sub_26BB7C9F8();
  sub_26BB282D8(v52, v51);
  v38 = swift_allocObject();
  sub_26BB22F94(v51, v38 + 16);
  *&v51[0] = v30;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9B8, &qword_28158B450, &protocol descriptor for StockServiceType, 1);
  swift_allocObject();
  v2[15] = sub_26BB7C9F8();
  sub_26BB282D8(v52, v51);
  v39 = swift_allocObject();
  sub_26BB22F94(v51, v39 + 16);
  *&v51[0] = v30;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9C0, qword_28158B458, &protocol descriptor for BundleReaderType, 1);
  swift_allocObject();
  v40 = sub_26BB7C9F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  v2[16] = v40;
  return v2;
}

void *sub_26BB2BF1C@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, a2, a3, 1);
  result = sub_26BB7C8C8();
  if (v11)
  {
    return a4(v10, a5);
  }

  __break(1u);
  return result;
}

uint64_t StockService.fetch(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BB2BFE4, 0, 0);
}

uint64_t sub_26BB2BFE4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = 0x4000000000000000;
  *(v1 + 24) = vextq_s8(v2, v2, 8uLL);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_26BB2C0D0;
  v4 = *(v0 + 16);

  return MEMORY[0x2821D1B50](v4, "StockService.fetchLogo", 22, 2, &unk_26BB7E060, v1, &type metadata for DataSource.DownloadedLogo);
}

uint64_t sub_26BB2C0D0()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB2C20C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BB2C20C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StockService.fetch(_:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v4[5] = *a3;
  return MEMORY[0x2822009F8](sub_26BB2C29C, 0, 0);
}

uint64_t sub_26BB2C29C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_26BB2C388;
  v5 = *(v0 + 16);

  return MEMORY[0x2821D1B50](v5, "StockService.fetchLogo", 22, 2, &unk_26BB7E070, v2, &type metadata for DataSource.DownloadedLogo);
}

uint64_t sub_26BB2C388()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB2C4C4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BB2C4C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB2C528(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 272) = a2;
  *(v4 + 280) = a3;
  *(v4 + 264) = a4;
  *(v4 + 256) = a1;
  return MEMORY[0x2822009F8](sub_26BB2C550, 0, 0);
}

uint64_t sub_26BB2C550()
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v1 = sub_26BB7CB88();
  v0[36] = __swift_project_value_buffer(v1, qword_28158F140);
  sub_26BB2CB40();
  sub_26BB2CB40();
  v2 = sub_26BB7CB68();
  v3 = sub_26BB7CF78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[33];
    v5 = swift_slowAlloc();
    *v5 = 68157952;
    *(v5 + 4) = 1;
    *(v5 + 8) = 2048;
    *(v5 + 10) = v4;
    _os_log_impl(&dword_26BB21000, v2, v3, "Fetch logo started. scale: %.*f", v5, 0x12u);
    MEMORY[0x26D68EA90](v5, -1, -1);
  }

  v6 = v0[33];

  sub_26BB7C9E8();
  v7 = v0[29];
  v8 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 26, v7);
  v0[31] = v6;
  v12 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  v0[37] = v9;
  *v9 = v0;
  v9[1] = sub_26BB2C790;
  v10 = v0[35];

  return v12(v0 + 2, v10, v0 + 31, v7, v8);
}

uint64_t sub_26BB2C790()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_26BB2C9B4;
  }

  else
  {
    v2 = sub_26BB2C8A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BB2C8A4()
{
  v1 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v1;
  v2 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v2;
  v3 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v3;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
  v4 = sub_26BB7CB68();
  v5 = sub_26BB7CF78();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26BB21000, v4, v5, "Fetch logo succeeded", v6, 2u);
    MEMORY[0x26D68EA90](v6, -1, -1);
  }

  v7 = *(v0 + 256);

  v8 = *(v0 + 128);
  *v7 = *(v0 + 112);
  v7[1] = v8;
  v9 = *(v0 + 144);
  v10 = *(v0 + 160);
  v11 = *(v0 + 192);
  v7[4] = *(v0 + 176);
  v7[5] = v11;
  v7[2] = v9;
  v7[3] = v10;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26BB2C9B4()
{
  v1 = v0[38];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 26);
  v2 = v1;
  v3 = sub_26BB7CB68();
  v4 = sub_26BB7CF78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_26BB21000, v3, v4, "Fetch logo failed: %{public}@", v6, 0xCu);
    sub_26BB3B504(v7, sub_26BB3B3EC);
    MEMORY[0x26D68EA90](v7, -1, -1);
    MEMORY[0x26D68EA90](v6, -1, -1);
  }

  v10 = v0[38];

  sub_26BB3B148(v11, v12, v13);
  swift_allocError();
  *v14 = v10;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  swift_willThrow();
  v15 = v0[1];

  return v15();
}

uint64_t StockService.searchStocks(for:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v27 = a1;
  v28 = a3;
  v5 = sub_26BB7BE78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7BE68();
  v9 = sub_26BB7BE58();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v12 = sub_26BB7CB88();
  __swift_project_value_buffer(v12, qword_28158F140);

  v13 = sub_26BB7CB68();
  v14 = sub_26BB7CF78();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_26BB38238(v9, v11, &v29);
    *(v15 + 12) = 2080;
    v17 = v27;
    *(v15 + 14) = sub_26BB38238(v27, a2, &v29);
    _os_log_impl(&dword_26BB21000, v13, v14, "Stocks search started for requestID: %s, query: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v16, -1, -1);
    MEMORY[0x26D68EA90](v15, -1, -1);
  }

  else
  {

    v17 = v27;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v11;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = v11;
  v19[4] = v17;
  v19[5] = a2;
  sub_26BB390BC(0, &qword_280439E50, MEMORY[0x277D69810], MEMORY[0x277D83940]);

  sub_26BB7CA58();

  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v11;
  type metadata accessor for StockSearchResult(0);

  sub_26BB7CA58();

  v21 = swift_allocObject();
  v22 = v28;
  v23 = v26;
  *(v21 + 16) = v28;
  *(v21 + 24) = v23;

  sub_26BB7CA68();

  v24 = swift_allocObject();
  v24[2] = v9;
  v24[3] = v11;
  v24[4] = v22;
  v24[5] = v23;

  sub_26BB7CA78();
}

uint64_t sub_26BB2D024(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v9 = sub_26BB7CB88();
  __swift_project_value_buffer(v9, qword_28158F140);

  v10 = sub_26BB7CB68();
  v11 = sub_26BB7CF78();

  if (os_log_type_enabled(v10, v11))
  {
    v16[6] = a5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_26BB38238(a3, a4, v16);
    _os_log_impl(&dword_26BB21000, v10, v11, "Firing stock search for requestID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D68EA90](v13, -1, -1);
    MEMORY[0x26D68EA90](v12, -1, -1);
  }

  sub_26BB7C9E8();
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v14 = sub_26BB7C2E8();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v14;
}

uint64_t sub_26BB2D1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_26BB7C788();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_26BB7C758();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_26BB7C378();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB2D34C, 0, 0);
}

uint64_t sub_26BB2D34C()
{
  v85 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v1 = sub_26BB7CB88();
  __swift_project_value_buffer(v1, qword_28158F140);

  v2 = sub_26BB7CB68();
  v3 = sub_26BB7CF78();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v83 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_26BB38238(v7, v6, &v83);
    *(v8 + 12) = 2080;
    v10 = MEMORY[0x26D68DD10](v5, v4);
    v12 = sub_26BB38238(v10, v11, &v83);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_26BB21000, v2, v3, "Stock search success for requestID: %s, result: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v9, -1, -1);
    MEMORY[0x26D68EA90](v8, -1, -1);
  }

  v13 = v0;
  v14 = v0[10];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = v13[16];
    v70 = v13;
    v18 = v13[13];
    v81 = MEMORY[0x277D84F90];
    sub_26BB63D74(0, v15, 0);
    v19 = v81;
    v20 = *(v17 + 16);
    v17 += 16;
    v21 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v68 = *(v17 + 56);
    v69 = v20;
    v67 = (v18 + 88);
    v66 = *MEMORY[0x277D69898];
    v64 = *MEMORY[0x277D698A0];
    v63 = *MEMORY[0x277D69870];
    v62 = *MEMORY[0x277D69888];
    v61 = *MEMORY[0x277D69878];
    v60 = *MEMORY[0x277D69890];
    v59 = *MEMORY[0x277D69880];
    v57 = (v18 + 8);
    v65 = (v17 - 8);
    v58 = *MEMORY[0x277D69868];
    while (1)
    {
      v79 = v15;
      v80 = v19;
      v22 = v70[17];
      v23 = v70[18];
      v25 = v70[14];
      v24 = v70[15];
      v26 = v70[12];
      v78 = v21;
      v69(v23);
      (v69)(v22, v23, v24);
      v27 = sub_26BB7C728();
      v29 = v28;
      v77 = sub_26BB7C708();
      v76 = v30;
      v31 = sub_26BB7C738();
      v33 = v32;
      sub_26BB7C718();
      v34 = (*v67)(v25, v26);
      if (v34 != v66)
      {
        if (v34 == v64)
        {
          v35 = 1;
LABEL_23:
          v75 = v35;
          goto LABEL_24;
        }

        if (v34 == v63)
        {
          v35 = 2;
          goto LABEL_23;
        }

        if (v34 == v62)
        {
          v35 = 3;
          goto LABEL_23;
        }

        if (v34 == v61)
        {
          v35 = 4;
          goto LABEL_23;
        }

        if (v34 == v60)
        {
          v35 = 5;
          goto LABEL_23;
        }

        if (v34 == v59)
        {
          v35 = 6;
          goto LABEL_23;
        }

        if (v34 == v58)
        {
          v35 = 7;
          goto LABEL_23;
        }

        (*v57)(v70[14], v70[12]);
      }

      v75 = 0;
LABEL_24:
      v36 = v70[17];
      v37 = v70[18];
      v38 = v70[15];
      v74 = sub_26BB7C748();
      v40 = v39;
      v41 = sub_26BB7C6F8();
      v72 = v42;
      v73 = v41;
      v83 = v31;
      v84 = v33;

      MEMORY[0x26D68DCA0](58, 0xE100000000000000);
      MEMORY[0x26D68DCA0](v27, v29);
      v71 = v31;
      v43 = v29;
      v44 = v27;
      v46 = v83;
      v45 = v84;
      v47 = *v65;
      (*v65)(v36, v38);
      v47(v37, v38);
      *v82 = v83;
      *&v82[3] = *(&v83 + 3);
      v19 = v80;
      v49 = *(v80 + 16);
      v48 = *(v80 + 24);

      if (v49 >= v48 >> 1)
      {
        sub_26BB63D74((v48 > 1), v49 + 1, 1);
        v19 = v80;
      }

      *(v19 + 16) = v49 + 1;
      v50 = v19 + 120 * v49;
      *(v50 + 32) = v46;
      *(v50 + 40) = v45;
      *(v50 + 48) = v44;
      *(v50 + 56) = v43;
      *(v50 + 64) = v77;
      *(v50 + 72) = v76;
      *(v50 + 80) = v71;
      *(v50 + 88) = v33;
      *(v50 + 96) = v75;
      *(v50 + 97) = *v82;
      *(v50 + 100) = *&v82[3];
      *(v50 + 104) = v74;
      *(v50 + 112) = v40;
      *(v50 + 120) = v74;
      *(v50 + 128) = v40;
      *(v50 + 136) = v73;
      *(v50 + 144) = v72;
      v21 = v78 + v68;
      v15 = v79 - 1;
      if (v79 == 1)
      {
        v16 = v19;
        v51 = v70;
        goto LABEL_30;
      }
    }
  }

  v51 = v13;
LABEL_30:
  v52 = v51[19];
  v53 = v51[7];
  sub_26BB7C9E8();
  __swift_project_boxed_opaque_existential_1(v51 + 2, v51[5]);
  sub_26BB7C498();
  v54 = type metadata accessor for StockSearchResult(0);
  sub_26BB3EBA4(v52, (v53 + *(v54 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v51 + 2);
  *v53 = v16;

  v55 = v51[1];

  return v55();
}

uint64_t StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v66 = *v5;
  v9 = type metadata accessor for StockService.NetworkSession(0);
  v59 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v60 = v11;
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = sub_26BB7BE78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v65 = a2[1];
  v64 = *(a2 + 16);
  sub_26BB7BE68();
  v19 = sub_26BB7BE58();
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v22 = sub_26BB7CB88();
  __swift_project_value_buffer(v22, qword_28158F140);
  sub_26BB3B49C(a3, v13, type metadata accessor for StockService.NetworkSession);

  v23 = sub_26BB7CB68();
  v24 = sub_26BB7CF78();

  v25 = os_log_type_enabled(v23, v24);
  v58 = v18;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v57 = a3;
    v27 = v26;
    v28 = swift_slowAlloc();
    v70 = v28;
    *v27 = 136315906;
    *(v27 + 4) = sub_26BB38238(v19, v21, &v70);
    *(v27 + 12) = 2080;
    v29 = MEMORY[0x26D68DD10](a1, MEMORY[0x277D837D0]);
    v31 = sub_26BB38238(v29, v30, &v70);
    v56 = v19;
    v32 = v31;

    *(v27 + 14) = v32;
    *(v27 + 22) = 2080;
    v67 = v18;
    v68 = v65;
    v69 = v64;
    v33 = StockService.CachePolicy.description.getter();
    v35 = sub_26BB38238(v33, v34, &v70);

    *(v27 + 24) = v35;
    *(v27 + 32) = 2080;
    v36 = StockService.NetworkSession.description.getter();
    v38 = v37;
    sub_26BB3B504(v13, type metadata accessor for StockService.NetworkSession);
    v39 = sub_26BB38238(v36, v38, &v70);
    v19 = v56;

    *(v27 + 34) = v39;
    _os_log_impl(&dword_26BB21000, v23, v24, "Stock metadata fetch started for requestID: %s, symbols: %s, cachePolicy: %s, networkSession: %s", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v28, -1, -1);
    v40 = v27;
    a3 = v57;
    MEMORY[0x26D68EA90](v40, -1, -1);
  }

  else
  {

    sub_26BB3B504(v13, type metadata accessor for StockService.NetworkSession);
  }

  v57 = sub_26BB396D0(v41);

  v42 = swift_allocObject();
  *(v42 + 16) = v19;
  *(v42 + 24) = v21;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v43 = v61;
  sub_26BB3B49C(a3, v61, type metadata accessor for StockService.NetworkSession);
  v44 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v45 = (v60 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v19;
  *(v46 + 24) = v21;
  sub_26BB3B268(v43, v46 + v44, type metadata accessor for StockService.NetworkSession);
  v47 = v58;
  *(v46 + v45) = v57;
  v48 = v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
  v49 = v65;
  *v48 = v47;
  *(v48 + 8) = v49;
  *(v48 + 16) = v64;
  sub_26BB3B88C(0, &qword_280439E58, MEMORY[0x277D69810], MEMORY[0x277D834F8]);

  sub_26BB7CA58();

  v50 = swift_allocObject();
  *(v50 + 16) = v19;
  *(v50 + 24) = v21;
  type metadata accessor for StockResult(0);

  sub_26BB7CA58();

  v51 = swift_allocObject();
  v52 = v62;
  v53 = v63;
  *(v51 + 16) = v62;
  *(v51 + 24) = v53;

  sub_26BB7CA68();

  v54 = swift_allocObject();
  v54[2] = v19;
  v54[3] = v21;
  v54[4] = v52;
  v54[5] = v53;

  sub_26BB7CA78();
}

uint64_t sub_26BB2E068(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v7 = sub_26BB7CB88();
  __swift_project_value_buffer(v7, qword_28158F140);

  v8 = sub_26BB7CB68();
  v9 = sub_26BB7CF78();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_26BB38238(a2, a3, v16);
    _os_log_impl(&dword_26BB21000, v8, v9, a4, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D68EA90](v11, -1, -1);
    MEMORY[0x26D68EA90](v10, -1, -1);
  }

  sub_26BB7C9E8();
  v12 = v17;
  v13 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v14 = sub_26BB4A684(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v14;
}

void *sub_26BB2E20C(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v77 = a8;
  v86 = a7;
  v90 = a6;
  v13 = sub_26BB7BE48();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v87 = &v71[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v78 = &v71[-v16];
  v17 = sub_26BB7C908();
  v84 = *(v17 - 8);
  v85 = v17;
  MEMORY[0x28223BE20](v17);
  v81 = &v71[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_26BB7C868();
  v82 = *(v19 - 8);
  v83 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v76 = &v71[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v23 = &v71[-v22];
  v24 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v71[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = sub_26BB7C888();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v96 = &v71[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v28 = sub_26BB7CB88();
  __swift_project_value_buffer(v28, qword_28158F140);

  v29 = sub_26BB7CB68();
  v30 = sub_26BB7CF78();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v75 = a5;
    v74 = a2;
    v33 = v23;
    v34 = v32;
    v93[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_26BB38238(a3, a4, v93);
    _os_log_impl(&dword_26BB21000, v29, v30, "Firing stock metadata fetch for requestID: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    v35 = v34;
    v23 = v33;
    a5 = v75;
    MEMORY[0x26D68EA90](v35, -1, -1);
    MEMORY[0x26D68EA90](v31, -1, -1);
  }

  v36 = a9;
  sub_26BB2EC48(a5, v96);
  sub_26BB3B49C(a5, v26, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8(0);
  v38 = v37;
  if ((*(*(v37 - 8) + 48))(v26, 1, v37) != 1)
  {

    (*(v88 + 32))(v87, &v26[*(v38 + 48)], v89);
    sub_26BB7C9E8();
    v47 = v94;
    v48 = v95;
    v73 = __swift_project_boxed_opaque_existential_1(v93, v94);
    v49 = v90[2];
    v50 = MEMORY[0x277D84F90];
    v75 = v47;
    v74 = v48;
    if (v49)
    {
      v72 = a9;
      v51 = sub_26BB381B0(v49, 0);
      v52 = sub_26BB388DC(v91, v51 + 4, v49, v90);
      v53 = v91[0];

      result = sub_26BB3B7C4(v53);
      if (v52 != v49)
      {
        goto LABEL_22;
      }

      v90 = v51;
      v36 = v72;
      v50 = MEMORY[0x277D84F90];
    }

    else
    {
      v90 = MEMORY[0x277D84F90];
    }

    v91[0] = v86;
    v91[1] = v77;
    LOBYTE(v92) = v36;
    v54 = v78;
    sub_26BB7BE38();
    v55 = v87;
    v56 = sub_26BB7BDF8();
    v57 = v89;
    v88 = *(v88 + 8);
    (v88)(v54, v89);
    v58 = v76;
    sub_26BB297D0(3u, v56 & 1, v76);
    v91[0] = v50;
    sub_26BB3BE9C(&qword_280439EF0, MEMORY[0x277D6CB48], MEMORY[0x277D6CB50]);
    v59 = MEMORY[0x277D6CB48];
    sub_26BB390BC(0, &qword_280439EF8, MEMORY[0x277D6CB48], MEMORY[0x277D83940]);
    sub_26BB3BB84(&qword_280439F00, &qword_280439EF8, v59);
    v60 = v81;
    v61 = v85;
    sub_26BB7D028();
    v62 = v96;
    v63 = sub_26BB7C488();

    (*(v84 + 8))(v60, v61);
    (*(v82 + 8))(v58, v83);
    (v88)(v55, v57);
    (*(v79 + 8))(v62, v80);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    return v63;
  }

  sub_26BB7C9E8();
  v87 = v95;
  v75 = v94;
  v76 = __swift_project_boxed_opaque_existential_1(v93, v94);
  v39 = v90[2];
  v40 = MEMORY[0x277D84F90];
  if (!v39)
  {
    v45 = a9;
    if (a9)
    {
LABEL_9:
      if (v45 == 1)
      {
        *v23 = sub_26BB7D578();
        v46 = MEMORY[0x277D6CA48];
      }

      else
      {
        v46 = qword_279D1C840[v86];
      }

      goto LABEL_19;
    }

LABEL_15:
    *v23 = sub_26BB7D578();
    v46 = MEMORY[0x277D6CA40];
LABEL_19:
    v64 = v82;
    v65 = v83;
    (*(v82 + 104))(v23, *v46, v83);
    v91[0] = v40;
    sub_26BB3BE9C(&qword_280439EF0, MEMORY[0x277D6CB48], MEMORY[0x277D6CB50]);
    v66 = MEMORY[0x277D6CB48];
    sub_26BB390BC(0, &qword_280439EF8, MEMORY[0x277D6CB48], MEMORY[0x277D83940]);
    sub_26BB3BB84(&qword_280439F00, &qword_280439EF8, v66);
    v67 = v81;
    v68 = v85;
    sub_26BB7D028();
    v69 = v78;
    sub_26BB7BE38();
    v70 = v96;
    v63 = sub_26BB7C488();

    (*(v88 + 8))(v69, v89);
    (*(v84 + 8))(v67, v68);
    (*(v64 + 8))(v23, v65);
    (*(v79 + 8))(v70, v80);
    goto LABEL_20;
  }

  v41 = sub_26BB381B0(v90[2], 0);
  v42 = sub_26BB388DC(v91, v41 + 4, v39, v90);
  v43 = v91[0];

  result = sub_26BB3B7C4(v43);
  if (v42 == v39)
  {
    v40 = MEMORY[0x277D84F90];
    v45 = a9;
    if (a9)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_26BB2EC48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3B49C(a1, v7, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8(0);
  v9 = v8;
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v10 = *MEMORY[0x277D6CAB8];
    v11 = sub_26BB7C888();
    return (*(*(v11 - 8) + 104))(a2, v10, v11);
  }

  else
  {
    v13 = *(v9 + 48);
    v14 = *&v7[*(v9 + 64)];
    v15 = objc_opt_self();
    v16 = sub_26BB7CD38();

    v17 = [v15 backgroundSessionConfigurationWithIdentifier_];

    [v17 setTimeoutIntervalForResource_];
    v18 = *(v2 + 40);
    v19 = v17;
    v20 = sub_26BB2B1CC();
    v21 = [objc_opt_self() sessionWithConfiguration:v19 delegate:v18 delegateQueue:v20];

    v27[4] = sub_26BB3B454(0, &qword_28158B248, 0x277CCAD30);
    v27[5] = MEMORY[0x277D6D018];
    v27[1] = v21;
    sub_26BB7C9B8();
    swift_allocObject();
    v22 = v21;
    v23 = sub_26BB7C9A8();

    *a2 = v23;
    v24 = *MEMORY[0x277D6CAB0];
    v25 = sub_26BB7C888();
    (*(*(v25 - 8) + 104))(a2, v24, v25);
    v26 = sub_26BB7BE48();
    return (*(*(v26 - 8) + 8))(&v7[v13], v26);
  }
}

uint64_t sub_26BB2EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_26BB7C788();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_26BB7C758();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_26BB7C378();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB2F098, 0, 0);
}

uint64_t sub_26BB2F098()
{
  v96 = v0;
  v1 = v0;
  if (qword_28158C2F8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v2 = sub_26BB7CB88();
  __swift_project_value_buffer(v2, qword_28158F140);

  v3 = sub_26BB7CB68();
  v4 = sub_26BB7CF78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[9];
    v6 = v1[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v94 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BB38238(v6, v5, &v94);
    *(v7 + 12) = 2080;
    v9 = sub_26BB7CCC8();
    v11 = sub_26BB38238(v9, v10, &v94);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BB21000, v3, v4, "Stock metadata fetch success for requestID: %s, result: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v8, -1, -1);
    MEMORY[0x26D68EA90](v7, -1, -1);
  }

  v12 = v1[16];
  v13 = v1[13];
  v14 = v1[10];
  sub_26BB3BB24();
  v15 = sub_26BB7D1B8();
  v16 = 0;
  v17 = *(v14 + 64);
  v70 = v14 + 64;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v69 = (v18 + 63) >> 6;
  v77 = v14;
  v76 = (v13 + 88);
  v75 = *MEMORY[0x277D69898];
  v71 = *MEMORY[0x277D698A0];
  v67 = *MEMORY[0x277D69888];
  v68 = *MEMORY[0x277D69870];
  v65 = *MEMORY[0x277D69890];
  v66 = *MEMORY[0x277D69878];
  v64 = *MEMORY[0x277D69880];
  v62 = (v13 + 8);
  v78 = v12;
  v79 = v15;
  v73 = v15 + 64;
  v74 = (v12 + 8);
  v63 = *MEMORY[0x277D69868];
  v72 = v1;
  if ((v19 & v17) != 0)
  {
    do
    {
      v21 = __clz(__rbit64(v20));
      v22 = (v20 - 1) & v20;
LABEL_13:
      v25 = v21 | (v16 << 6);
      v27 = v1[17];
      v26 = v1[18];
      v29 = v1[14];
      v28 = v1[15];
      v86 = v1[12];
      v30 = (*(v77 + 48) + 16 * v25);
      v31 = v30[1];
      v90 = *v30;
      v92 = v25;
      v32 = *(v78 + 16);
      v32(v26, *(v77 + 56) + *(v78 + 72) * v25, v28);
      v32(v27, v26, v28);
      v91 = v31;

      v33 = sub_26BB7C728();
      v35 = v34;
      v36 = sub_26BB7C708();
      v38 = v37;
      v39 = sub_26BB7C738();
      v88 = v40;
      sub_26BB7C718();
      v41 = (*v76)(v29, v86);
      v80 = v22;
      v89 = v38;
      if (v41 == v75)
      {
        goto LABEL_14;
      }

      if (v41 == v71)
      {
        v42 = 1;
      }

      else if (v41 == v68)
      {
        v42 = 2;
      }

      else if (v41 == v67)
      {
        v42 = 3;
      }

      else if (v41 == v66)
      {
        v42 = 4;
      }

      else if (v41 == v65)
      {
        v42 = 5;
      }

      else if (v41 == v64)
      {
        v42 = 6;
      }

      else
      {
        if (v41 != v63)
        {
          (*v62)(v1[14], v1[12]);
LABEL_14:
          v87 = 0;
          goto LABEL_30;
        }

        v42 = 7;
      }

      v87 = v42;
LABEL_30:
      v43 = v1[17];
      v82 = v1[18];
      v1 = v1[15];
      v85 = sub_26BB7C748();
      v45 = v44;
      v46 = sub_26BB7C6F8();
      v83 = v47;
      v84 = v46;
      v94 = v39;
      v95 = v88;

      MEMORY[0x26D68DCA0](58, 0xE100000000000000);
      MEMORY[0x26D68DCA0](v33, v35);
      v81 = v35;
      v48 = v94;
      v49 = v95;
      v50 = *v74;
      (*v74)(v43, v1);
      LODWORD(v93) = v94;
      *(&v93 + 3) = *(&v94 + 3);

      v50(v82, v1);
      *(v73 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
      v15 = v79;
      v51 = (v79[6] + 16 * v92);
      *v51 = v90;
      v51[1] = v91;
      v52 = v79[7] + 120 * v92;
      *v52 = v48;
      *(v52 + 8) = v49;
      *(v52 + 16) = v33;
      *(v52 + 24) = v81;
      *(v52 + 32) = v36;
      *(v52 + 40) = v89;
      *(v52 + 48) = v39;
      *(v52 + 56) = v88;
      *(v52 + 64) = v87;
      *(v52 + 65) = v93;
      *(v52 + 68) = *(&v93 + 3);
      *(v52 + 72) = v85;
      *(v52 + 80) = v45;
      *(v52 + 88) = v85;
      *(v52 + 96) = v45;
      *(v52 + 104) = v84;
      *(v52 + 112) = v83;
      v53 = v79[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v79[2] = v55;
      v1 = v72;
      v20 = v80;
    }

    while (v80);
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v16 >= v69)
    {
      break;
    }

    v24 = *(v70 + 8 * v16);
    ++v23;
    if (v24)
    {
      v21 = __clz(__rbit64(v24));
      v22 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  v56 = v1[19];
  v57 = v1[7];
  v58 = v15;
  sub_26BB7C9E8();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_26BB7C498();
  v59 = type metadata accessor for StockResult(0);
  sub_26BB3EBA4(v56, (v57 + *(v59 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  *v57 = v58;

  v60 = v1[1];

  return v60();
}

uint64_t sub_26BB2F7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7CC88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BB7CCB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v12 = sub_26BB7CEA8();
    MEMORY[0x28223BE20](v12);
    *(&v18 - 2) = a1;
    *(&v18 - 1) = a2;
    return sub_26BB37E58(sub_26BB3B920, (&v18 - 4), "StocksKit/StockService.swift", 28, 2u, 1030);
  }

  else
  {
    sub_26BB3B454(0, &qword_28158BB68, 0x277D85C78);
    v19 = v8;
    v18 = sub_26BB7CFB8();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    aBlock[4] = sub_26BB3B900;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BB3805C;
    aBlock[3] = &block_descriptor;
    v15 = _Block_copy(aBlock);

    sub_26BB7CC98();
    v20 = MEMORY[0x277D84F90];
    sub_26BB3BE9C(&qword_28158B990, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v16 = MEMORY[0x277D85198];
    sub_26BB390BC(0, &qword_28158B270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_26BB3BB84(&qword_28158B268, &qword_28158B270, v16);
    sub_26BB7D028();
    v17 = v18;
    MEMORY[0x26D68DEA0](0, v11, v7, v15);
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v19);
  }
}

uint64_t StockService.fetchQuotes(for:cachePolicy:networkSession:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v66 = *v5;
  v9 = type metadata accessor for StockService.NetworkSession(0);
  v59 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v60 = v11;
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = sub_26BB7BE78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v65 = a2[1];
  v64 = *(a2 + 16);
  sub_26BB7BE68();
  v19 = sub_26BB7BE58();
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v22 = sub_26BB7CB88();
  __swift_project_value_buffer(v22, qword_28158F140);
  sub_26BB3B49C(a3, v13, type metadata accessor for StockService.NetworkSession);

  v23 = sub_26BB7CB68();
  v24 = sub_26BB7CF78();

  v25 = os_log_type_enabled(v23, v24);
  v58 = v18;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v57 = a3;
    v27 = v26;
    v28 = swift_slowAlloc();
    v70 = v28;
    *v27 = 136315906;
    *(v27 + 4) = sub_26BB38238(v19, v21, &v70);
    *(v27 + 12) = 2080;
    v29 = MEMORY[0x26D68DD10](a1, MEMORY[0x277D837D0]);
    v31 = sub_26BB38238(v29, v30, &v70);
    v56 = v19;
    v32 = v31;

    *(v27 + 14) = v32;
    *(v27 + 22) = 2080;
    v67 = v18;
    v68 = v65;
    v69 = v64;
    v33 = StockService.CachePolicy.description.getter();
    v35 = sub_26BB38238(v33, v34, &v70);

    *(v27 + 24) = v35;
    *(v27 + 32) = 2080;
    v36 = StockService.NetworkSession.description.getter();
    v38 = v37;
    sub_26BB3B504(v13, type metadata accessor for StockService.NetworkSession);
    v39 = sub_26BB38238(v36, v38, &v70);
    v19 = v56;

    *(v27 + 34) = v39;
    _os_log_impl(&dword_26BB21000, v23, v24, "Quote fetch started for requestID: %s, symbols: %s, cachePolicy: %s, networkSession: %s", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v28, -1, -1);
    v40 = v27;
    a3 = v57;
    MEMORY[0x26D68EA90](v40, -1, -1);
  }

  else
  {

    sub_26BB3B504(v13, type metadata accessor for StockService.NetworkSession);
  }

  v57 = sub_26BB396D0(v41);

  v42 = swift_allocObject();
  *(v42 + 16) = v19;
  *(v42 + 24) = v21;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v43 = v61;
  sub_26BB3B49C(a3, v61, type metadata accessor for StockService.NetworkSession);
  v44 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v45 = (v60 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v19;
  *(v46 + 24) = v21;
  sub_26BB3B268(v43, v46 + v44, type metadata accessor for StockService.NetworkSession);
  v47 = v58;
  *(v46 + v45) = v57;
  v48 = v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
  v49 = v65;
  *v48 = v47;
  *(v48 + 8) = v49;
  *(v48 + 16) = v64;
  sub_26BB3B88C(0, &qword_280439E60, MEMORY[0x277D697F8], MEMORY[0x277D834F8]);

  sub_26BB7CA58();

  v50 = swift_allocObject();
  *(v50 + 16) = v19;
  *(v50 + 24) = v21;
  type metadata accessor for QuoteResult(0);

  sub_26BB7CA58();

  v51 = swift_allocObject();
  v52 = v62;
  v53 = v63;
  *(v51 + 16) = v62;
  *(v51 + 24) = v53;

  sub_26BB7CA68();

  v54 = swift_allocObject();
  v54[2] = v19;
  v54[3] = v21;
  v54[4] = v52;
  v54[5] = v53;

  sub_26BB7CA78();
}

void *sub_26BB30248(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v77 = a5;
  *&v71 = a7;
  *(&v71 + 1) = a8;
  v70 = a3;
  v78 = a2;
  v84 = sub_26BB7BE48();
  v11 = *(v84 - 8);
  v12 = MEMORY[0x28223BE20](v84);
  v79 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v67 - v14;
  v15 = sub_26BB7C868();
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v69 = (&v67 - v19);
  v20 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26BB7C888();
  v73 = *(v23 - 8);
  v74 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = (&v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v26 = sub_26BB7CB88();
  __swift_project_value_buffer(v26, qword_28158F140);

  v27 = sub_26BB7CB68();
  v28 = sub_26BB7CF78();

  v29 = os_log_type_enabled(v27, v28);
  v68 = v18;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v67 = a6;
    v31 = v30;
    v32 = v11;
    v33 = swift_slowAlloc();
    v81[0] = v33;
    *v31 = 136315138;
    *(v31 + 4) = sub_26BB38238(v70, a4, v81);
    _os_log_impl(&dword_26BB21000, v27, v28, "Firing quote fetch for requestID: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v34 = v33;
    v11 = v32;
    MEMORY[0x26D68EA90](v34, -1, -1);
    a6 = v67;
    MEMORY[0x26D68EA90](v31, -1, -1);
  }

  v35 = a9;
  v36 = v77;
  sub_26BB2EC48(v77, v25);
  sub_26BB3B49C(v36, v22, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8(0);
  v38 = v37;
  if ((*(*(v37 - 8) + 48))(v22, 1, v37) != 1)
  {

    (*(v11 + 32))(v79, &v22[*(v38 + 48)], v84);
    sub_26BB7C9E8();
    v69 = v83;
    v70 = v82;
    v77 = __swift_project_boxed_opaque_existential_1(v81, v82);
    v46 = a6[2];
    if (v46)
    {
      v78 = v25;
      v67 = sub_26BB381B0(v46, 0);
      v47 = sub_26BB388DC(&v80, v67 + 4, v46, a6);
      v48 = v80;

      result = sub_26BB3B7C4(v48);
      if (v47 != v46)
      {
        goto LABEL_45;
      }

      v25 = v78;
      v35 = a9;
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
    }

    v52 = v72;
    sub_26BB7BE38();
    v53 = sub_26BB7BDF8();
    v54 = *(v11 + 8);
    (v54)(v52, v84);
    v78 = v54;
    if (v53)
    {
      v55 = MEMORY[0x277D6CA20];
LABEL_19:
      v56 = v68;
LABEL_29:
      v61 = v75;
      v60 = v76;
      (*(v75 + 104))(v56, *v55, v76);
      v62 = v79;
      v63 = sub_26BB7C2D8();

      (*(v61 + 8))(v56, v60);
      (v78)(v62, v84);
      (*(v73 + 8))(v25, v74);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      return v63;
    }

    if (!v35)
    {
      v59 = sub_26BB7D578();
      v56 = v68;
      *v68 = v59;
      v55 = MEMORY[0x277D6CA40];
      goto LABEL_29;
    }

    if (v35 == 1)
    {
      v57 = sub_26BB7D578();
      v56 = v68;
      *v68 = v57;
    }

    else
    {
      if (v71 > 1)
      {
        v55 = MEMORY[0x277D6CA20];
        if (v71 ^ 2 | *(&v71 + 1))
        {
          v55 = MEMORY[0x277D6CA28];
        }

        goto LABEL_19;
      }

      if (v71 != 0)
      {
        v55 = MEMORY[0x277D6CA30];
        goto LABEL_19;
      }

      v56 = v68;
      *v68 = 60.0;
    }

    v55 = MEMORY[0x277D6CA48];
    goto LABEL_29;
  }

  sub_26BB7C9E8();
  v39 = v82;
  v79 = v83;
  v40 = __swift_project_boxed_opaque_existential_1(v81, v82);
  v41 = a6[2];
  if (!v41)
  {
    goto LABEL_12;
  }

  v68 = v40;
  v70 = v39;
  LODWORD(v77) = a9;
  v78 = v25;
  v42 = sub_26BB381B0(v41, 0);
  v43 = sub_26BB388DC(&v80, v42 + 4, v41, a6);
  v44 = v80;

  result = sub_26BB3B7C4(v44);
  if (v43 == v41)
  {
    v25 = v78;
    v35 = v77;
LABEL_12:
    if (!v35)
    {
      v58 = sub_26BB7D578();
      v50 = v69;
      *v69 = v58;
      v51 = MEMORY[0x277D6CA40];
      goto LABEL_38;
    }

    if (v35 == 1)
    {
      v49 = sub_26BB7D578();
      v50 = v69;
      *v69 = v49;
LABEL_15:
      v51 = MEMORY[0x277D6CA48];
LABEL_38:
      v65 = v75;
      v64 = v76;
      (*(v75 + 104))(v50, *v51, v76);
      v66 = v72;
      sub_26BB7BE38();
      v63 = sub_26BB7C2D8();

      (*(v11 + 8))(v66, v84);
      (*(v65 + 8))(v50, v64);
      (*(v73 + 8))(v25, v74);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      return v63;
    }

    if (v71 > 1)
    {
      v51 = MEMORY[0x277D6CA20];
      if (v71 ^ 2 | *(&v71 + 1))
      {
        v51 = MEMORY[0x277D6CA28];
      }
    }

    else
    {
      if (v71 == 0)
      {
        v50 = v69;
        *v69 = 60.0;
        goto LABEL_15;
      }

      v51 = MEMORY[0x277D6CA30];
    }

    v50 = v69;
    goto LABEL_38;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_26BB30B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *(type metadata accessor for Quote(0) - 8);
  v5[13] = swift_task_alloc();
  v6 = sub_26BB7C6E8();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_26BB7C378();
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB30CAC, 0, 0);
}

uint64_t sub_26BB30CAC()
{
  v47 = v0;
  if (qword_28158C2F8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v1 = sub_26BB7CB88();
    __swift_project_value_buffer(v1, qword_28158F140);

    v2 = sub_26BB7CB68();
    v3 = sub_26BB7CF78();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 72);
      v5 = *(v0 + 64);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v46 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_26BB38238(v5, v4, &v46);
      *(v6 + 12) = 2080;
      v8 = sub_26BB7CCC8();
      v10 = sub_26BB38238(v8, v9, &v46);

      *(v6 + 14) = v10;
      _os_log_impl(&dword_26BB21000, v2, v3, "Quote fetch success for requestID: %s, result: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v7, -1, -1);
      MEMORY[0x26D68EA90](v6, -1, -1);
    }

    v11 = *(v0 + 120);
    v40 = *(v0 + 96);
    v42 = v0;
    v0 = *(v0 + 80);
    sub_26BB3B88C(0, &qword_280439ED8, type metadata accessor for Quote, MEMORY[0x277D84460]);
    v12 = sub_26BB7D1B8();
    v13 = v12;
    v14 = 0;
    v37 = v0 + 64;
    v15 = 1 << *(v0 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v0 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = v0;
    v41 = v12;
    v38 = v12 + 64;
    if (!v17)
    {
      break;
    }

    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v43 = (v17 - 1) & v17;
LABEL_13:
      v0 = v19 | (v14 << 6);
      v23 = v42[16];
      v22 = v42[17];
      v24 = v42[14];
      v44 = v42[13];
      v25 = (*(v39 + 48) + 16 * v0);
      v26 = v25[1];
      v45 = *v25;
      v27 = *(v11 + 16);
      v27(v22, *(v39 + 56) + *(v11 + 72) * v0, v24);
      v27(v23, v22, v24);

      sub_26BB45130(v23, v44);
      (*(v11 + 8))(v22, v24);
      *(v38 + ((v0 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v0;
      v13 = v41;
      v28 = (v41[6] + 16 * v0);
      *v28 = v45;
      v28[1] = v26;
      sub_26BB3B268(v44, v41[7] + *(v40 + 72) * v0, type metadata accessor for Quote);
      v29 = v41[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v41[2] = v31;
      v17 = v43;
      if (!v43)
      {
        goto LABEL_8;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_8:
  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v18)
    {
      break;
    }

    v21 = *(v37 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v43 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  v32 = v42[18];
  v33 = v42[7];
  sub_26BB7C9E8();
  __swift_project_boxed_opaque_existential_1(v42 + 2, v42[5]);
  sub_26BB7C498();
  v34 = type metadata accessor for QuoteResult(0);
  sub_26BB3EBA4(v32, (v33 + *(v34 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v42 + 2);
  *v33 = v13;

  v35 = v42[1];

  return v35();
}

uint64_t StockService.fetchQuoteDetails(for:cachePolicy:networkSession:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v66 = *v5;
  v9 = type metadata accessor for StockService.NetworkSession(0);
  v59 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v60 = v11;
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = sub_26BB7BE78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v65 = a2[1];
  v64 = *(a2 + 16);
  sub_26BB7BE68();
  v19 = sub_26BB7BE58();
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v22 = sub_26BB7CB88();
  __swift_project_value_buffer(v22, qword_28158F140);
  sub_26BB3B49C(a3, v13, type metadata accessor for StockService.NetworkSession);

  v23 = sub_26BB7CB68();
  v24 = sub_26BB7CF78();

  v25 = os_log_type_enabled(v23, v24);
  v58 = v18;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v57 = a3;
    v27 = v26;
    v28 = swift_slowAlloc();
    v70 = v28;
    *v27 = 136315906;
    *(v27 + 4) = sub_26BB38238(v19, v21, &v70);
    *(v27 + 12) = 2080;
    v29 = MEMORY[0x26D68DD10](a1, MEMORY[0x277D837D0]);
    v31 = sub_26BB38238(v29, v30, &v70);
    v56 = v19;
    v32 = v31;

    *(v27 + 14) = v32;
    *(v27 + 22) = 2080;
    v67 = v18;
    v68 = v65;
    v69 = v64;
    v33 = StockService.CachePolicy.description.getter();
    v35 = sub_26BB38238(v33, v34, &v70);

    *(v27 + 24) = v35;
    *(v27 + 32) = 2080;
    v36 = StockService.NetworkSession.description.getter();
    v38 = v37;
    sub_26BB3B504(v13, type metadata accessor for StockService.NetworkSession);
    v39 = sub_26BB38238(v36, v38, &v70);
    v19 = v56;

    *(v27 + 34) = v39;
    _os_log_impl(&dword_26BB21000, v23, v24, "Quote detail fetch started for requestID: %s, symbols: %s, cachePolicy: %s, networkSession: %s", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v28, -1, -1);
    v40 = v27;
    a3 = v57;
    MEMORY[0x26D68EA90](v40, -1, -1);
  }

  else
  {

    sub_26BB3B504(v13, type metadata accessor for StockService.NetworkSession);
  }

  v57 = sub_26BB396D0(v41);

  v42 = swift_allocObject();
  *(v42 + 16) = v19;
  *(v42 + 24) = v21;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v43 = v61;
  sub_26BB3B49C(a3, v61, type metadata accessor for StockService.NetworkSession);
  v44 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v45 = (v60 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v19;
  *(v46 + 24) = v21;
  sub_26BB3B268(v43, v46 + v44, type metadata accessor for StockService.NetworkSession);
  v47 = v58;
  *(v46 + v45) = v57;
  v48 = v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
  v49 = v65;
  *v48 = v47;
  *(v48 + 8) = v49;
  *(v48 + 16) = v64;
  sub_26BB3B88C(0, &qword_280439E68, MEMORY[0x277D69178], MEMORY[0x277D834F8]);

  sub_26BB7CA58();

  v50 = swift_allocObject();
  *(v50 + 16) = v19;
  *(v50 + 24) = v21;
  type metadata accessor for QuoteDetailResult(0);

  sub_26BB7CA58();

  v51 = swift_allocObject();
  v52 = v62;
  v53 = v63;
  *(v51 + 16) = v62;
  *(v51 + 24) = v53;

  sub_26BB7CA68();

  v54 = swift_allocObject();
  v54[2] = v19;
  v54[3] = v21;
  v54[4] = v52;
  v54[5] = v53;

  sub_26BB7CA78();
}

void *sub_26BB318C4(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v77 = a5;
  *&v71 = a7;
  *(&v71 + 1) = a8;
  v70 = a3;
  v78 = a2;
  v84 = sub_26BB7BE48();
  v11 = *(v84 - 8);
  v12 = MEMORY[0x28223BE20](v84);
  v79 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v67 - v14;
  v15 = sub_26BB7C868();
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v69 = (&v67 - v19);
  v20 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26BB7C888();
  v73 = *(v23 - 8);
  v74 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = (&v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v26 = sub_26BB7CB88();
  __swift_project_value_buffer(v26, qword_28158F140);

  v27 = sub_26BB7CB68();
  v28 = sub_26BB7CF78();

  v29 = os_log_type_enabled(v27, v28);
  v68 = v18;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v67 = a6;
    v31 = v30;
    v32 = v11;
    v33 = swift_slowAlloc();
    v81[0] = v33;
    *v31 = 136315138;
    *(v31 + 4) = sub_26BB38238(v70, a4, v81);
    _os_log_impl(&dword_26BB21000, v27, v28, "Firing quote detail fetch for requestID: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v34 = v33;
    v11 = v32;
    MEMORY[0x26D68EA90](v34, -1, -1);
    a6 = v67;
    MEMORY[0x26D68EA90](v31, -1, -1);
  }

  v35 = a9;
  v36 = v77;
  sub_26BB2EC48(v77, v25);
  sub_26BB3B49C(v36, v22, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8(0);
  v38 = v37;
  if ((*(*(v37 - 8) + 48))(v22, 1, v37) != 1)
  {

    (*(v11 + 32))(v79, &v22[*(v38 + 48)], v84);
    sub_26BB7C9E8();
    v69 = v83;
    v70 = v82;
    v77 = __swift_project_boxed_opaque_existential_1(v81, v82);
    v46 = a6[2];
    if (v46)
    {
      v78 = v25;
      v67 = sub_26BB381B0(v46, 0);
      v47 = sub_26BB388DC(&v80, v67 + 4, v46, a6);
      v48 = v80;

      result = sub_26BB3B7C4(v48);
      if (v47 != v46)
      {
        goto LABEL_45;
      }

      v25 = v78;
      v35 = a9;
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
    }

    v52 = v72;
    sub_26BB7BE38();
    v53 = sub_26BB7BDF8();
    v54 = *(v11 + 8);
    (v54)(v52, v84);
    v78 = v54;
    if (v53)
    {
      v55 = MEMORY[0x277D6CA20];
LABEL_19:
      v56 = v68;
LABEL_29:
      v61 = v75;
      v60 = v76;
      (*(v75 + 104))(v56, *v55, v76);
      v62 = v79;
      v63 = sub_26BB7C388();

      (*(v61 + 8))(v56, v60);
      (v78)(v62, v84);
      (*(v73 + 8))(v25, v74);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      return v63;
    }

    if (!v35)
    {
      v59 = sub_26BB7D578();
      v56 = v68;
      *v68 = v59;
      v55 = MEMORY[0x277D6CA40];
      goto LABEL_29;
    }

    if (v35 == 1)
    {
      v57 = sub_26BB7D578();
      v56 = v68;
      *v68 = v57;
    }

    else
    {
      if (v71 > 1)
      {
        v55 = MEMORY[0x277D6CA20];
        if (v71 ^ 2 | *(&v71 + 1))
        {
          v55 = MEMORY[0x277D6CA28];
        }

        goto LABEL_19;
      }

      if (v71 != 0)
      {
        v55 = MEMORY[0x277D6CA30];
        goto LABEL_19;
      }

      v56 = v68;
      *v68 = 60.0;
    }

    v55 = MEMORY[0x277D6CA48];
    goto LABEL_29;
  }

  sub_26BB7C9E8();
  v39 = v82;
  v79 = v83;
  v40 = __swift_project_boxed_opaque_existential_1(v81, v82);
  v41 = a6[2];
  if (!v41)
  {
    goto LABEL_12;
  }

  v68 = v40;
  v70 = v39;
  LODWORD(v77) = a9;
  v78 = v25;
  v42 = sub_26BB381B0(v41, 0);
  v43 = sub_26BB388DC(&v80, v42 + 4, v41, a6);
  v44 = v80;

  result = sub_26BB3B7C4(v44);
  if (v43 == v41)
  {
    v25 = v78;
    v35 = v77;
LABEL_12:
    if (!v35)
    {
      v58 = sub_26BB7D578();
      v50 = v69;
      *v69 = v58;
      v51 = MEMORY[0x277D6CA40];
      goto LABEL_38;
    }

    if (v35 == 1)
    {
      v49 = sub_26BB7D578();
      v50 = v69;
      *v69 = v49;
LABEL_15:
      v51 = MEMORY[0x277D6CA48];
LABEL_38:
      v65 = v75;
      v64 = v76;
      (*(v75 + 104))(v50, *v51, v76);
      v66 = v72;
      sub_26BB7BE38();
      v63 = sub_26BB7C388();

      (*(v11 + 8))(v66, v84);
      (*(v65 + 8))(v50, v64);
      (*(v73 + 8))(v25, v74);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      return v63;
    }

    if (v71 > 1)
    {
      v51 = MEMORY[0x277D6CA20];
      if (v71 ^ 2 | *(&v71 + 1))
      {
        v51 = MEMORY[0x277D6CA28];
      }
    }

    else
    {
      if (v71 == 0)
      {
        v50 = v69;
        *v69 = 60.0;
        goto LABEL_15;
      }

      v51 = MEMORY[0x277D6CA30];
    }

    v50 = v69;
    goto LABEL_38;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_26BB321D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  sub_26BB390BC(0, a5, a6, MEMORY[0x277D6CF30]);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a2;

  return sub_26BB7CA48();
}

uint64_t sub_26BB32290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *(type metadata accessor for QuoteDetail(0) - 8);
  v5[13] = swift_task_alloc();
  v6 = sub_26BB7C208();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_26BB7C378();
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB323E8, 0, 0);
}

uint64_t sub_26BB323E8()
{
  v47 = v0;
  if (qword_28158C2F8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v1 = sub_26BB7CB88();
    __swift_project_value_buffer(v1, qword_28158F140);

    v2 = sub_26BB7CB68();
    v3 = sub_26BB7CF78();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 72);
      v5 = *(v0 + 64);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v46 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_26BB38238(v5, v4, &v46);
      *(v6 + 12) = 2080;
      v8 = sub_26BB7CCC8();
      v10 = sub_26BB38238(v8, v9, &v46);

      *(v6 + 14) = v10;
      _os_log_impl(&dword_26BB21000, v2, v3, "Quote detail fetch success for requestID: %s, result: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v7, -1, -1);
      MEMORY[0x26D68EA90](v6, -1, -1);
    }

    v11 = *(v0 + 120);
    v40 = *(v0 + 96);
    v42 = v0;
    v0 = *(v0 + 80);
    sub_26BB3B88C(0, &qword_280439EC0, type metadata accessor for QuoteDetail, MEMORY[0x277D84460]);
    v12 = sub_26BB7D1B8();
    v13 = v12;
    v14 = 0;
    v37 = v0 + 64;
    v15 = 1 << *(v0 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v0 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = v0;
    v41 = v12;
    v38 = v12 + 64;
    if (!v17)
    {
      break;
    }

    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v43 = (v17 - 1) & v17;
LABEL_13:
      v0 = v19 | (v14 << 6);
      v23 = v42[16];
      v22 = v42[17];
      v24 = v42[14];
      v44 = v42[13];
      v25 = (*(v39 + 48) + 16 * v0);
      v26 = v25[1];
      v45 = *v25;
      v27 = *(v11 + 16);
      v27(v22, *(v39 + 56) + *(v11 + 72) * v0, v24);
      v27(v23, v22, v24);

      sub_26BB69E34(v23, v44);
      (*(v11 + 8))(v22, v24);
      *(v38 + ((v0 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v0;
      v13 = v41;
      v28 = (v41[6] + 16 * v0);
      *v28 = v45;
      v28[1] = v26;
      sub_26BB3B268(v44, v41[7] + *(v40 + 72) * v0, type metadata accessor for QuoteDetail);
      v29 = v41[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v41[2] = v31;
      v17 = v43;
      if (!v43)
      {
        goto LABEL_8;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_8:
  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v18)
    {
      break;
    }

    v21 = *(v37 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v43 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  v32 = v42[18];
  v33 = v42[7];
  sub_26BB7C9E8();
  __swift_project_boxed_opaque_existential_1(v42 + 2, v42[5]);
  sub_26BB7C498();
  v34 = type metadata accessor for QuoteDetailResult(0);
  sub_26BB3EBA4(v32, (v33 + *(v34 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v42 + 2);
  *v33 = v13;

  v35 = v42[1];

  return v35();
}

uint64_t sub_26BB328F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a6;
  v38 = a4;
  v32 = a8;
  v33 = a9;
  v15 = sub_26BB7BE48();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[1];
  v35 = *a2;
  v36 = v19;
  v37 = *(a2 + 16);
  v20 = *(v9 + 24);
  if (v20)
  {
    v32 = *(v9 + 16);
    (*(v16 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v15);
    v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = a7;
    v23 = swift_allocObject();
    *(v23 + 16) = v32;
    *(v23 + 24) = v20;
    (*(v16 + 32))(v23 + v21, v18, v15);
    *(v23 + v22) = a1;
    v24 = v23 + v31;
    v25 = v36;
    *v24 = v35;
    *(v24 + 8) = v25;
    *(v24 + 16) = v37;
    v26 = (v23 + ((v22 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v26 = v38;
    v26[1] = a5;

    sub_26BB2F7AC(v33, v23);
  }

  else
  {
    v28 = swift_allocObject();
    v30 = v35;
    v29 = v36;
    *(v28 + 16) = a1;
    *(v28 + 24) = v30;
    *(v28 + 32) = v29;
    *(v28 + 40) = v37;
    *(v28 + 48) = v38;
    *(v28 + 56) = a5;

    sub_26BB2F7AC(v33, v28);
  }
}

uint64_t sub_26BB32B54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void *, char *, uint64_t, uint64_t))
{
  v14 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v20[0] = a2;
  v20[1] = a3;
  v21 = a4;
  sub_26BB28EE8(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  a7(a1, v20, v16, a5, a6);
  return sub_26BB3B504(v16, type metadata accessor for StockService.NetworkSession);
}

uint64_t sub_26BB32CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, void *, char *, uint64_t, uint64_t))
{
  v26 = a7;
  v27 = a4;
  v28 = a10;
  v29 = a8;
  v15 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB28EE8(0);
  v19 = v18;
  v20 = *(v18 + 48);
  v21 = *(v18 + 64);
  *v17 = a1;
  *(v17 + 1) = a2;
  v22 = sub_26BB7BE48();
  (*(*(v22 - 8) + 16))(&v17[v20], a3, v22);
  *&v17[v21] = 0x40AC200000000000;
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  v23 = qword_28158B710;

  if (v23 != -1)
  {
    swift_once();
  }

  v30[0] = a5;
  v30[1] = a6;
  v31 = v26;
  v28(v27, v30, v17, v29, a9);
  return sub_26BB3B504(v17, type metadata accessor for StockService.NetworkSession);
}

uint64_t StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v83 = a6;
  v84 = a7;
  v89 = a1;
  v82 = *v8;
  v13 = type metadata accessor for StockService.NetworkSession(0);
  v78 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v81 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - v16;
  v18 = sub_26BB7BE78();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a3;
  v23 = *a4;
  v87 = a4[1];
  v88 = v23;
  LODWORD(v20) = *(a4 + 16);
  v85 = v22;
  v86 = v20;
  sub_26BB7BE68();
  v90 = sub_26BB7BE58();
  v25 = v24;
  (*(v19 + 8))(v21, v18);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v26 = sub_26BB7CB88();
  __swift_project_value_buffer(v26, qword_28158F140);
  sub_26BB3B49C(a5, v17, type metadata accessor for StockService.NetworkSession);

  v27 = sub_26BB7CB68();
  v28 = sub_26BB7CF78();

  v29 = os_log_type_enabled(v27, v28);
  v80 = a2;
  if (v29)
  {
    LODWORD(v77) = v28;
    v76 = a5;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v94 = v31;
    *v30 = 136316162;
    *(v30 + 4) = sub_26BB38238(v90, v25, &v94);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_26BB38238(v89, a2, &v94);
    *(v30 + 22) = 2080;
    if (v85 <= 4)
    {
      v42 = 0xE600000000000000;
      v43 = 0x796144656E6FLL;
      v44 = 0xE800000000000000;
      v45 = 0x68746E6F4D656E6FLL;
      v46 = 0xEB00000000736874;
      v47 = 0x6E6F4D6565726874;
      if (v85 != 3)
      {
        v47 = 0x68746E6F4D786973;
        v46 = 0xE900000000000073;
      }

      if (v85 != 2)
      {
        v45 = v47;
        v44 = v46;
      }

      if (v85)
      {
        v43 = 0x6B656557656E6FLL;
        v42 = 0xE700000000000000;
      }

      if (v85 <= 1)
      {
        v40 = v43;
      }

      else
      {
        v40 = v45;
      }

      if (v85 <= 1)
      {
        v41 = v42;
      }

      else
      {
        v41 = v44;
      }
    }

    else
    {
      v32 = 0x7261655965766966;
      v33 = 0xE900000000000073;
      v34 = 0xE800000000000000;
      v35 = 0x73726165596E6574;
      if (v85 != 9)
      {
        v35 = 7105633;
        v34 = 0xE300000000000000;
      }

      if (v85 != 8)
      {
        v32 = v35;
        v33 = v34;
      }

      v36 = 0xEA00000000006574;
      v37 = 0x61446F5472616579;
      v38 = 0xE700000000000000;
      v39 = 0x72616559656E6FLL;
      if (v85 != 6)
      {
        v39 = 0x73726165596F7774;
        v38 = 0xE800000000000000;
      }

      if (v85 != 5)
      {
        v37 = v39;
        v36 = v38;
      }

      if (v85 <= 7)
      {
        v40 = v37;
      }

      else
      {
        v40 = v32;
      }

      if (v85 <= 7)
      {
        v41 = v36;
      }

      else
      {
        v41 = v33;
      }
    }

    v48 = sub_26BB38238(v40, v41, &v94);

    *(v30 + 24) = v48;
    *(v30 + 32) = 2080;
    v91 = v88;
    v92 = v87;
    v93 = v86;
    v49 = StockService.CachePolicy.description.getter();
    v51 = sub_26BB38238(v49, v50, &v94);

    *(v30 + 34) = v51;
    *(v30 + 42) = 2080;
    v52 = StockService.NetworkSession.description.getter();
    v54 = v53;
    sub_26BB3B504(v17, type metadata accessor for StockService.NetworkSession);
    v55 = sub_26BB38238(v52, v54, &v94);

    *(v30 + 44) = v55;
    _os_log_impl(&dword_26BB21000, v27, v77, "Chart fetch started for requestID: %s, symbol: %s, range: %s, cachePolicy: %s, networkSession: %s", v30, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v31, -1, -1);
    MEMORY[0x26D68EA90](v30, -1, -1);

    a5 = v76;
  }

  else
  {

    sub_26BB3B504(v17, type metadata accessor for StockService.NetworkSession);
  }

  v77 = v8[6];
  v56 = swift_allocObject();
  v57 = v90;
  *(v56 + 16) = v90;
  *(v56 + 24) = v25;
  v58 = v57;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v59 = v81;
  sub_26BB3B49C(a5, v81, type metadata accessor for StockService.NetworkSession);
  v60 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v61 = (v60 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v60 + v79 + 31) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v58;
  *(v63 + 24) = v25;
  sub_26BB3B268(v59, v63 + v60, type metadata accessor for StockService.NetworkSession);
  v64 = v63 + v61;
  v65 = v89;
  v66 = v80;
  *v64 = v89;
  *(v64 + 8) = v66;
  *(v64 + 16) = v85;
  v67 = v63 + v62;
  v68 = v87;
  *v67 = v88;
  *(v67 + 8) = v68;
  *(v67 + 16) = v86;
  sub_26BB7C5C8();

  sub_26BB7CA58();

  v69 = swift_allocObject();
  v70 = v90;
  v69[2] = v90;
  v69[3] = v25;
  v69[4] = v65;
  v69[5] = v66;
  type metadata accessor for StockChartResult(0);

  sub_26BB7CA58();

  v71 = swift_allocObject();
  v73 = v83;
  v72 = v84;
  *(v71 + 16) = v83;
  *(v71 + 24) = v72;

  sub_26BB7CA68();

  v74 = swift_allocObject();
  v74[2] = v70;
  v74[3] = v25;
  v74[4] = v73;
  v74[5] = v72;

  sub_26BB7CA78();
}

uint64_t sub_26BB336E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, char a10)
{
  v81 = a6;
  v72 = a5;
  v73 = a8;
  v82 = a7;
  v68 = a3;
  v87 = sub_26BB7BE48();
  v85 = *(v87 - 8);
  v11 = MEMORY[0x28223BE20](v87);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - v13;
  v15 = sub_26BB7C868();
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v70 = (&v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v69 = (&v65 - v18);
  v19 = sub_26BB7C018();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v75 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = &v65 - v23;
  v24 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_26BB7C888();
  v78 = *(v27 - 8);
  v79 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = (&v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v71 = a9;
  v30 = sub_26BB7CB88();
  __swift_project_value_buffer(v30, qword_28158F140);

  v31 = sub_26BB7CB68();
  v32 = sub_26BB7CF78();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v67 = v14;
    v66 = v29;
    v34 = v19;
    v35 = v33;
    v36 = v20;
    v37 = swift_slowAlloc();
    v86[0] = v37;
    *v35 = 136315138;
    *(v35 + 4) = sub_26BB38238(v68, a4, v86);
    _os_log_impl(&dword_26BB21000, v31, v32, "Firing chart fetch for requestID: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v38 = v37;
    v20 = v36;
    MEMORY[0x26D68EA90](v38, -1, -1);
    v39 = v35;
    v19 = v34;
    v29 = v66;
    v14 = v67;
    MEMORY[0x26D68EA90](v39, -1, -1);
  }

  v40 = v72;
  sub_26BB2EC48(v72, v29);
  sub_26BB3B49C(v40, v26, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8(0);
  v42 = v41;
  v43 = (*(*(v41 - 8) + 48))(v26, 1, v41);
  v80 = v20;
  v77 = v19;
  if (v43 != 1)
  {
    v44 = v29;

    v48 = v85;
    v49 = v87;
    v85[4](v76, &v26[*(v42 + 48)], v87);
    sub_26BB7C9E8();
    v74 = v86[1];
    (*(v20 + 104))(v75, **(&unk_279D1C860 + v73), v19);
    sub_26BB7BE38();
    v50 = sub_26BB7BDF8();
    v51 = v48[1];
    (v51)(v14, v49);
    v85 = v51;
    if (v50)
    {
      v52 = MEMORY[0x277D6CA20];
      v53 = v70;
    }

    else if (a10)
    {
      v53 = v70;
      if (a10 == 1)
      {
        *v53 = sub_26BB7D578();
      }

      else
      {
        if (v71 > 1)
        {
          v52 = MEMORY[0x277D6CA20];
          if (v71 ^ 2 | *(&v71 + 1))
          {
            v52 = MEMORY[0x277D6CA28];
          }

          goto LABEL_33;
        }

        if (v71 != 0)
        {
          v52 = MEMORY[0x277D6CA30];
          goto LABEL_33;
        }

        *v70 = 60.0;
      }

      v52 = MEMORY[0x277D6CA48];
    }

    else
    {
      v55 = sub_26BB7D578();
      v53 = v70;
      *v70 = v55;
      v52 = MEMORY[0x277D6CA40];
    }

LABEL_33:
    v61 = v83;
    v60 = v84;
    (*(v83 + 104))(v53, *v52, v84);
    swift_getObjectType();
    v62 = v75;
    v63 = v76;
    v59 = sub_26BB7C278();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v53, v60);
    (*(v80 + 8))(v62, v77);
    (v85)(v63, v87);
    goto LABEL_34;
  }

  sub_26BB7C9E8();
  (*(v20 + 104))(v74, **(&unk_279D1C860 + v73), v19);
  if (a10)
  {
    if (a10 == 1)
    {
      v44 = v29;
      v45 = sub_26BB7D578();
      v46 = v69;
      *v69 = v45;
    }

    else
    {
      if (v71 > 1)
      {
        v44 = v29;
        v47 = MEMORY[0x277D6CA20];
        if (v71 ^ 2 | *(&v71 + 1))
        {
          v47 = MEMORY[0x277D6CA28];
        }

        v46 = v69;
        goto LABEL_28;
      }

      v46 = v69;
      v44 = v29;
      if (v71 != 0)
      {
        v47 = MEMORY[0x277D6CA30];
        goto LABEL_28;
      }

      *v69 = 60.0;
    }

    v47 = MEMORY[0x277D6CA48];
  }

  else
  {
    v44 = v29;
    v54 = sub_26BB7D578();
    v46 = v69;
    *v69 = v54;
    v47 = MEMORY[0x277D6CA40];
  }

LABEL_28:
  v57 = v83;
  v56 = v84;
  (*(v83 + 104))(v46, *v47, v84);
  swift_getObjectType();
  sub_26BB7BE38();
  v58 = v74;
  v59 = sub_26BB7C278();
  swift_unknownObjectRelease();
  (v85[1])(v14, v87);
  (*(v57 + 8))(v46, v56);
  (*(v80 + 8))(v58, v77);
LABEL_34:
  (*(v78 + 8))(v44, v79);
  return v59;
}

uint64_t sub_26BB33FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a2;
  v23 = a5;
  v21 = a3;
  v9 = sub_26BB7C5C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB390BC(0, &qword_280439EA8, type metadata accessor for StockChartResult, MEMORY[0x277D6CF30]);
  v20 = v13;
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v14, v12, v9);
  v17 = (v16 + v15);
  v18 = v22;
  *v17 = v23;
  v17[1] = a6;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;

  return sub_26BB7CA48();
}

uint64_t sub_26BB34184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  sub_26BB7C378();
  v7[14] = swift_task_alloc();
  v8 = sub_26BB7C5C8();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB34288, 0, 0);
}

uint64_t sub_26BB34288()
{
  v34 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[10];
  v5 = sub_26BB7CB88();
  __swift_project_value_buffer(v5, qword_28158F140);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = sub_26BB7CB68();
  v8 = sub_26BB7CF78();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  if (v9)
  {
    v14 = v0[8];
    v13 = v0[9];
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v15 = 136315394;
    *(v15 + 4) = sub_26BB38238(v14, v13, &v33);
    *(v15 + 12) = 2080;
    v16 = sub_26BB7C5A8();
    v17 = sub_26BB7C598();
    v18 = MEMORY[0x26D68DD10](v16, v17);
    v31 = v8;
    v19 = v6;
    v21 = v20;

    (*(v11 + 8))(v10, v12);
    v22 = sub_26BB38238(v18, v21, &v33);
    v6 = v19;

    *(v15 + 14) = v22;
    _os_log_impl(&dword_26BB21000, v7, v31, "Chart fetch success for requestID: %s, result: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v32, -1, -1);
    MEMORY[0x26D68EA90](v15, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[12];
  v26 = v0[11];
  v27 = v0[7];
  v6(v23, v0[10], v0[15]);

  sub_26BB6E79C(v26, v25, v23, v27);
  sub_26BB7C9E8();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_26BB7C498();
  v28 = type metadata accessor for StockChartResult(0);
  sub_26BB3EBA4(v24, (v27 + *(v28 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v29 = v0[1];

  return v29();
}

uint64_t sub_26BB345AC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  sub_26BB3BBE8(0, a5, a6);
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  sub_26BB3B49C(a1, v16 - v13, a7);
  swift_storeEnumTagMultiPayload();
  a3(v14);
  return sub_26BB3B564(v14, a5, a6);
}

uint64_t sub_26BB34698(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t), const char *a8)
{
  v34 = a8;
  v35 = a5;
  v8 = a7;
  v33 = a2;
  sub_26BB3BBE8(0, a6, a7);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v16 = sub_26BB7CB88();
  __swift_project_value_buffer(v16, qword_28158F140);

  v17 = a1;
  v18 = sub_26BB7CB68();
  v19 = sub_26BB7CF68();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32 = v8;
    v23 = v22;
    v36 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_26BB38238(v33, a3, &v36);
    *(v21 + 12) = 2080;
    swift_getErrorValue();
    v24 = sub_26BB7D3C8();
    v26 = sub_26BB38238(v24, v25, &v36);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_26BB21000, v18, v19, v34, v21, 0x16u);
    swift_arrayDestroy();
    v27 = v23;
    v8 = v32;
    MEMORY[0x26D68EA90](v27, -1, -1);
    v28 = v21;
    a4 = v31;
    MEMORY[0x26D68EA90](v28, -1, -1);
  }

  *v15 = a1;
  *(v15 + 1) = 0;
  v15[16] = 1;
  swift_storeEnumTagMultiPayload();
  v29 = a1;
  a4(v15);
  return sub_26BB3B564(v15, a6, v8);
}

uint64_t StockService.fetchStockChart(for:range:cachePolicy:earliestBeginDate:completion:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a6;
  v13 = sub_26BB7BE48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v32 = *a3;
  v16 = a4[1];
  v33 = *a4;
  v34 = v16;
  v17 = *(a4 + 16);
  v18 = *(v7 + 24);
  if (v18)
  {
    v31 = a7;
    v29 = *(v7 + 16);
    (*(v14 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v30 = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = v29;
    *(v20 + 24) = v18;
    (*(v14 + 32))(v20 + v19, &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v21 = v20 + ((v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v21 = v35;
    *(v21 + 8) = a2;
    *(v21 + 16) = v32;
    v22 = v20 + ((v19 + v15 + 31) & 0xFFFFFFFFFFFFFFF8);
    v23 = v34;
    *v22 = v33;
    *(v22 + 8) = v23;
    *(v22 + 16) = v30;
    v24 = (v20 + ((v19 + v15 + 55) & 0xFFFFFFFFFFFFFFF8));
    v25 = v31;
    *v24 = v36;
    v24[1] = v25;

    sub_26BB2F7AC(sub_26BB3A09C, v20);
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v35;
    *(v27 + 24) = a2;
    *(v27 + 32) = v32;
    v28 = v34;
    *(v27 + 40) = v33;
    *(v27 + 48) = v28;
    *(v27 + 56) = v17;
    *(v27 + 64) = v36;
    *(v27 + 72) = a7;

    sub_26BB2F7AC(sub_26BB3A15C, v27);
  }
}

uint64_t sub_26BB34B9C(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v24 = a3;
  v22[0] = a4;
  v22[1] = a5;
  v23 = a6;
  sub_26BB28EE8(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(a1, a2, &v24, v22, v18, a7, a8);
  return sub_26BB3B504(v18, type metadata accessor for StockService.NetworkSession);
}

uint64_t sub_26BB34D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v29 = a4;
  v30 = a5;
  v28 = a11;
  v26 = a8;
  v27 = a10;
  v16 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB28EE8(0);
  v20 = v19;
  v21 = *(v19 + 48);
  v22 = *(v19 + 64);
  *v18 = a1;
  *(v18 + 1) = a2;
  v23 = sub_26BB7BE48();
  (*(*(v23 - 8) + 16))(&v18[v21], a3, v23);
  *&v18[v22] = 0x40AC200000000000;
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v24 = qword_28158B710;

  if (v24 != -1)
  {
    swift_once();
  }

  v33 = a6;
  v31[0] = a7;
  v31[1] = v26;
  v32 = a9;
  StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(v29, v30, &v33, v31, v18, v27, v28);
  return sub_26BB3B504(v18, type metadata accessor for StockService.NetworkSession);
}

uint64_t StockService.fetchCurrencyConversions(cachePolicy:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v8 = sub_26BB7D178();
  *(v6 + 48) = v8;
  *(v6 + 56) = *(v8 - 8);
  *(v6 + 64) = swift_task_alloc();
  sub_26BB390BC(0, &qword_28158BB50, MEMORY[0x277D858F8], MEMORY[0x277D83D88]);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = *a2;
  *(v6 + 121) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_26BB35008, 0, 0);
}

uint64_t sub_26BB35008()
{
  if (*(v0 + 120))
  {
    v1 = 1;
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    sub_26BB7D158();
    sub_26BB7D168();
    (*(v5 + 8))(v3, v4);
    v2 = 0;
    v1 = *(v0 + 120);
  }

  v6 = *(v0 + 121);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v12 = *(v0 + 24);
  (*(*(v0 + 56) + 56))(v9, v2, 1, *(v0 + 48));
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *(v13 + 16) = v9;
  *(v13 + 24) = v8;
  *(v13 + 32) = v7;
  *(v13 + 40) = v6;
  *(v13 + 48) = v12;
  *(v13 + 56) = v11;
  *(v13 + 64) = v1 & 1;
  *(v13 + 72) = v10;
  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  v15 = type metadata accessor for CurrencyConversionsResult(0);
  *v14 = v0;
  v14[1] = sub_26BB351AC;
  v16 = *(v0 + 16);

  return MEMORY[0x2821D1B50](v16, "StockService.fetchCurrencyConversions", 37, 2, &unk_26BB7E088, v13, v15);
}

uint64_t sub_26BB351AC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26BB3BF3C;
  }

  else
  {

    v2 = sub_26BB3BF1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BB352C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v13;
  *(v8 + 74) = a8;
  *(v8 + 120) = a4;
  *(v8 + 128) = a6;
  *(v8 + 73) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = sub_26BB7C968();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v10 = sub_26BB7D188();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB35418, 0, 0);
}

uint64_t sub_26BB35418()
{
  v1 = *(v0 + 74);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 73);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  sub_26BB7D3B8();
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v3;
  *(v9 + 56) = v1 & 1;
  *(v9 + 64) = v2;
  *(v9 + 72) = v8;
  v10 = swift_task_alloc();
  *(v0 + 224) = v10;
  v11 = type metadata accessor for CurrencyConversionsResult(0);
  v12 = sub_26BB3BE9C(&qword_28158B200, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  *v10 = v0;
  v10[1] = sub_26BB3557C;
  v13 = *(v0 + 208);
  v14 = *(v0 + 192);
  v15 = *(v0 + 96);
  v16 = *(v0 + 104);

  return MEMORY[0x2821D1D98](v15, v16, v13, &unk_26BB7E9E0, v9, v14, v11, v12);
}

uint64_t sub_26BB3557C()
{
  v2 = *v1;
  v3 = *v1;
  v2[29] = v0;

  (*(v2[25] + 8))(v2[26], v2[24]);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB35760, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_26BB35760()
{
  v64 = v0;
  v1 = *(v0 + 232);
  *(v0 + 80) = v1;
  v2 = v1;
  sub_26BB287D8(0, &qword_28158BB40, MEMORY[0x277D84948], 1);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 232);
  if (v3)
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);

    (*(v6 + 32))(v5, v7, v8);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = sub_26BB7CB88();
    __swift_project_value_buffer(v13, qword_28158F140);
    (*(v11 + 16))(v10, v9, v12);
    v14 = sub_26BB7CB68();
    v15 = sub_26BB7CF68();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 176);
    v18 = *(v0 + 152);
    v19 = *(v0 + 160);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63 = v61;
      *v20 = 136315138;
      v59 = sub_26BB7C958();
      v60 = v15;
      v22 = v21;
      v23 = *(v19 + 8);
      v23(v17, v18);
      v24 = sub_26BB38238(v59, v22, &v63);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_26BB21000, v14, v60, "Currencies fetch timed out before it could complete: %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x26D68EA90](v61, -1, -1);
      MEMORY[0x26D68EA90](v20, -1, -1);
    }

    else
    {

      v23 = *(v19 + 8);
      v25 = (v23)(v17, v18);
    }

    v28 = *(v0 + 184);
    v29 = *(v0 + 152);
    sub_26BB3B148(v25, v26, v27);
    v4 = swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 2;
    swift_willThrow();
    v23(v28, v29);
  }

  *(v0 + 88) = v4;
  v31 = v4;
  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  v33 = *(v0 + 56);
  v32 = *(v0 + 64);
  v34 = *(v0 + 72);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v35 = sub_26BB7CB88();
  __swift_project_value_buffer(v35, qword_28158F140);
  sub_26BB3B21C(v33, v32, v34);
  v36 = sub_26BB7CB68();
  v37 = sub_26BB7CF78();
  sub_26BB3B23C(v33, v32, v34);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v62 = v33;
    v39 = v32;
    v40 = v34;
    v41 = swift_slowAlloc();
    *v38 = 138543362;
    sub_26BB3B148(v41, v42, v43);
    swift_allocError();
    *v44 = v62;
    *(v44 + 8) = v39;
    *(v44 + 16) = v40;
    sub_26BB3B21C(v62, v39, v40);
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v45;
    *v41 = v45;
    _os_log_impl(&dword_26BB21000, v36, v37, "Currencies fetch failed with error: %{public}@", v38, 0xCu);
    sub_26BB3B504(v41, sub_26BB3B3EC);
    v46 = v41;
    v34 = v40;
    v32 = v39;
    v33 = v62;
    MEMORY[0x26D68EA90](v46, -1, -1);
    MEMORY[0x26D68EA90](v38, -1, -1);
  }

  v47 = *(v0 + 73);

  if (v47 >= 2 && !(*(v0 + 112) ^ 2 | *(v0 + 120)))
  {
    sub_26BB3B148(v48, v49, v50);
    swift_allocError();
    *v51 = v33;
    *(v51 + 8) = v32;
    *(v51 + 16) = v34;
    swift_willThrow();
LABEL_19:

    v58 = *(v0 + 8);
    goto LABEL_20;
  }

  v52 = (v0 + 16);
  v53 = sub_26BB7CB68();
  v54 = sub_26BB7CF78();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_26BB21000, v53, v54, "Returning bundled static data.", v55, 2u);
    MEMORY[0x26D68EA90](v55, -1, -1);
  }

  v56 = *(v0 + 96);

  sub_26BB7C9E8();
  __swift_project_boxed_opaque_existential_1(v52, *(v0 + 40));
  sub_26BB3C590(v56);
  sub_26BB3B23C(v33, v32, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);

  v58 = *(v0 + 8);
LABEL_20:

  return v58();
}

uint64_t sub_26BB35EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 128) = a8;
  *(v8 + 136) = v12;
  *(v8 + 74) = a7;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 73) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = sub_26BB7CE88();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = type metadata accessor for CurrencyConversionsResult(0);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB35FE4, 0, 0);
}

uint64_t sub_26BB35FE4()
{
  v29 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v1 = sub_26BB7CB88();
  *(v0 + 208) = __swift_project_value_buffer(v1, qword_28158F140);
  v2 = sub_26BB7CB68();
  v3 = sub_26BB7CF78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 74);
    v5 = *(v0 + 73);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    v27[1] = v7;
    *v8 = 136315394;
    v27[2] = v6;
    v28 = v5;
    v10 = StockService.CachePolicy.description.getter();
    v12 = sub_26BB38238(v10, v11, v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (v4)
    {
      v13 = 0xE400000000000000;
      v14 = 1701736302;
    }

    else
    {
      v14 = sub_26BB7D558();
      v13 = v15;
    }

    v16 = sub_26BB38238(v14, v13, v27);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_26BB21000, v2, v3, "Currencies fetch started, cachePolicy: %s, timeout: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v9, -1, -1);
    MEMORY[0x26D68EA90](v8, -1, -1);
  }

  v17 = *(v0 + 73);
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);
  sub_26BB7C9E8();
  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
  *(v0 + 56) = v19;
  *(v0 + 64) = v18;
  *(v0 + 72) = v17;
  v26 = (*(v21 + 16) + **(v21 + 16));
  v22 = swift_task_alloc();
  *(v0 + 216) = v22;
  *v22 = v0;
  v22[1] = sub_26BB362D0;
  v23 = *(v0 + 136);
  v24 = *(v0 + 88);

  return v26(v24, v0 + 56, v23, v20, v21);
}

uint64_t sub_26BB362D0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_26BB366E8;
  }

  else
  {
    v2 = sub_26BB363E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BB363E4()
{
  v26 = v0;
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[11];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_26BB3B49C(v4, v1, type metadata accessor for CurrencyConversionsResult);
  sub_26BB3B49C(v4, v2, type metadata accessor for CurrencyConversionsResult);
  sub_26BB3B49C(v4, v3, type metadata accessor for CurrencyConversionsResult);
  v5 = sub_26BB7CB68();
  v6 = sub_26BB7CF78();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];
  if (v7)
  {
    v11 = v0[22];
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 134349570;
    v13 = *(*v9 + 16);
    sub_26BB3B504(v9, type metadata accessor for CurrencyConversionsResult);
    *(v12 + 4) = v13;
    *(v12 + 12) = 2082;
    v14 = (v8 + *(v11 + 20));
    v15 = *v14;
    v16 = v14[1];

    sub_26BB3B504(v8, type metadata accessor for CurrencyConversionsResult);
    v17 = sub_26BB38238(v15, v16, &v25);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    sub_26BB7BE48();
    sub_26BB3BE9C(&qword_28158C320, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v18 = sub_26BB7D348();
    v20 = v19;
    sub_26BB3B504(v10, type metadata accessor for CurrencyConversionsResult);
    v21 = sub_26BB38238(v18, v20, &v25);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_26BB21000, v5, v6, "Currencies fetch succeeded, conversions: %{public}ld, source: %{public}s, createdAt: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v24, -1, -1);
    MEMORY[0x26D68EA90](v12, -1, -1);
  }

  else
  {
    sub_26BB3B504(v0[25], type metadata accessor for CurrencyConversionsResult);

    sub_26BB3B504(v10, type metadata accessor for CurrencyConversionsResult);
    sub_26BB3B504(v8, type metadata accessor for CurrencyConversionsResult);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_26BB366E8()
{
  v1 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 80) = v1;
  v2 = v1;
  sub_26BB287D8(0, &qword_28158BB40, MEMORY[0x277D84948], 1);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 224);
  if (v3)
  {
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);

    (*(v8 + 32))(v5, v6, v7);
    v9 = sub_26BB7CB68();
    v10 = sub_26BB7CF68();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26BB21000, v9, v10, "Currencies fetch for was cancelled before it could complete.", v11, 2u);
      MEMORY[0x26D68EA90](v11, -1, -1);
    }

    v12 = *(v0 + 168);
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);

    sub_26BB3BE9C(&qword_280439E98, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    (*(v14 + 16))(v15, v12, v13);
    swift_willThrow();
    (*(v14 + 8))(v12, v13);
  }

  else
  {

    v16 = v4;
    v17 = sub_26BB7CB68();
    v18 = sub_26BB7CF68();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 224);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = v19;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26BB21000, v17, v18, "Currencies fetch failed, error: %{public}@", v20, 0xCu);
      sub_26BB3B504(v21, sub_26BB3B3EC);
      MEMORY[0x26D68EA90](v21, -1, -1);
      MEMORY[0x26D68EA90](v20, -1, -1);
    }

    v24 = *(v0 + 224);

    sub_26BB3B148(v25, v26, v27);
    swift_allocError();
    *v28 = v24;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t StockService.fetchCurrencyConversions(cachePolicy:timeout:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v7 = sub_26BB7D178();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  sub_26BB390BC(0, &qword_28158BB50, MEMORY[0x277D858F8], MEMORY[0x277D83D88]);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = *a2;
  *(v5 + 120) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_26BB36B74, 0, 0);
}

uint64_t sub_26BB36B74()
{
  v15 = *(v0 + 120);
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  if (sub_26BB7D588())
  {
    v9 = 0x158E460913D00000;
    v7 = 1;
  }

  sub_26BB7D158();
  sub_26BB7D168();
  (*(v6 + 8))(v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  *(v10 + 32) = v1;
  *(v10 + 40) = v15;
  *(v10 + 48) = v9;
  *(v10 + 56) = v7;
  *(v10 + 64) = 0;
  *(v10 + 72) = v8;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = type metadata accessor for CurrencyConversionsResult(0);
  *v11 = v0;
  v11[1] = sub_26BB36D30;
  v13 = *(v0 + 16);

  return MEMORY[0x2821D1B50](v13, "StockService.fetchCurrencyConversions", 37, 2, &unk_26BB7E098, v10, v12);
}

uint64_t sub_26BB36D30()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26BB36EE0;
  }

  else
  {

    v2 = sub_26BB36E4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BB36E4C()
{
  sub_26BB3A268(*(v0 + 72), &qword_28158BB50, MEMORY[0x277D858F8]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB36EE0()
{
  v1 = *(v0 + 72);

  sub_26BB3A268(v1, &qword_28158BB50, MEMORY[0x277D858F8]);

  v2 = *(v0 + 8);

  return v2();
}

id *StockService.deinit()
{

  sub_26BB3A268(v0 + OBJC_IVAR____TtC9StocksKit12StockService____lazy_storage___networkProxy, &qword_28158BA58, MEMORY[0x277D6CAC8]);
  return v0;
}

uint64_t StockService.__deallocating_deinit()
{
  StockService.deinit();

  return swift_deallocClassInstance();
}

uint64_t StockService.observeFetchSessionDidFinish(keepAliveObject:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  swift_unknownObjectRetain();

  sub_26BB2F7AC(sub_26BB3A2D8, v6);
}

uint64_t sub_26BB37118(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_26BB7C9C8();
}

uint64_t sub_26BB37208()
{
  v0 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_26BB7C888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  sub_26BB28EE8(0);
  v8 = v7;
  v9 = *(v7 + 64);
  *v2 = 0xD000000000000024;
  v2[1] = 0x800000026BB83160;
  sub_26BB7BE38();
  *(v2 + v9) = 0x40AC200000000000;
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  sub_26BB2EC48(v2, v6);
  sub_26BB3B504(v2, type metadata accessor for StockService.NetworkSession);
  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall StockService.reestablishBackgroundSession(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v3 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_26BB7C888();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BB28EE8(0);
  v11 = v10;
  v12 = *(v10 + 64);
  *v5 = countAndFlagsBits;
  v5[1] = object;

  sub_26BB7BE38();
  *(v5 + v12) = 0x40AC200000000000;
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  sub_26BB2EC48(v5, v9);
  sub_26BB3B504(v5, type metadata accessor for StockService.NetworkSession);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_26BB375A4()
{
  v0 = [objc_opt_self() defaultsForCurrentCountry];
  v1 = [v0 defaultSymbols];

  v2 = sub_26BB7CDF8();
  return v2;
}

uint64_t StockService.fetchDefaultWatchlist(cachePolicy:networkSession:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = [objc_opt_self() defaultsForCurrentCountry];
  v11 = [v10 defaultSymbols];

  v12 = sub_26BB7CDF8();
  v15[0] = v7;
  v15[1] = v8;
  v16 = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(v12, v15, a2, sub_26BB3A2E4, v13);
}

uint64_t StockService.fetchDefaultWatchlist(cachePolicy:earliestBeginDate:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20 = *v4;
  v7 = sub_26BB7BE48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  (*(v8 + 16))(v10, a2, v7);
  v13 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  *(v15 + 32) = a1;
  (*(v8 + 32))(v15 + v13, v10, v7);
  v16 = (v15 + v14);
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;

  sub_26BB2F7AC(sub_26BB3A300, v15);
}

uint64_t sub_26BB378F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v41 = a3;
  v42 = a1;
  v43 = a2;
  v8 = sub_26BB7BE48();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v10 = off_28158B718;
  v11 = objc_opt_self();
  v12 = [v11 defaultsForCurrentCountry];
  v13 = [v12 defaultSymbols];

  v14 = sub_26BB7CDF8();
  v15 = [v11 defaultsForCurrentCountry];
  v16 = [v15 defaultSymbols];

  v17 = sub_26BB7CDF8();
  v44 = v14;
  sub_26BB387E8(v17);
  v18 = v44;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v20 = v10[3];
  if (v20)
  {
    v36[0] = v10[2];
    v21 = v38;
    v22 = v39;
    v23 = *(v39 + 16);
    v24 = v37;
    v38 = v18;
    v25 = v40;
    v23(v37, v21, v40);
    v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36[1] = a6;
    v28 = swift_allocObject();
    *(v28 + 16) = v36[0];
    *(v28 + 24) = v20;
    (*(v22 + 32))(v28 + v26, v24, v25);
    *(v28 + v27) = v38;
    v29 = v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = v43;
    *v29 = v42;
    *(v29 + 8) = v30;
    *(v29 + 16) = v41;
    v31 = (v28 + ((v27 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_26BB3BF40;
    v31[1] = v19;

    sub_26BB2F7AC(sub_26BB3BF14, v28);
  }

  else
  {
    v33 = swift_allocObject();
    v35 = v42;
    v34 = v43;
    *(v33 + 16) = v18;
    *(v33 + 24) = v35;
    *(v33 + 32) = v34;
    *(v33 + 40) = v41;
    *(v33 + 48) = sub_26BB3BF40;
    *(v33 + 56) = v19;

    sub_26BB2F7AC(sub_26BB3BF18, v33);
  }
}

void sub_26BB37C90(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = type metadata accessor for StockResult(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BB3BBE8(0, &qword_280439E88, type metadata accessor for StockResult);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_26BB3B19C(a1, &v13 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = v9[16];
    v14 = v10;
    v15 = v11;
    LOBYTE(v16) = v12;
    HIBYTE(v16) = 1;
    sub_26BB3B21C(v10, v11, v12);
    a2(&v14);
    sub_26BB3B23C(v10, v11, v12);
    sub_26BB3B25C(v14, v15, v16, SHIBYTE(v16));
  }

  else
  {
    sub_26BB3B268(v9, v6, type metadata accessor for StockResult);
    v14 = *v6;
    v15 = 0;
    v16 = 0;

    a2(&v14);
    sub_26BB3B25C(v14, v15, v16, SHIBYTE(v16));
    sub_26BB3B504(v6, type metadata accessor for StockResult);
  }
}

uint64_t sub_26BB37E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_26BB7CE98();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_26BB3B948();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_26BB7D098();
    MEMORY[0x26D68DCA0](0xD00000000000003FLL, 0x800000026BB831C0);
    v12 = sub_26BB7D5F8();
    MEMORY[0x26D68DCA0](v12);

    MEMORY[0x26D68DCA0](46, 0xE100000000000000);
    result = sub_26BB7D198();
    __break(1u);
  }

  return result;
}

uint64_t sub_26BB37FE0(uint64_t a1, uint64_t a2)
{
  sub_26BB7CEA8();
  v5[2] = a1;
  v5[3] = a2;
  return sub_26BB37E58(sub_26BB3BEE4, v5, "StocksKit/StockService.swift", 28, 2u, 1033);
}

uint64_t sub_26BB3805C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_26BB380A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_26BB3BDBC(0, &qword_280439E90, MEMORY[0x277D837D0]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26BB381B0(uint64_t a1, uint64_t a2)
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

  sub_26BB3BDBC(0, &qword_280439E90, MEMORY[0x277D837D0]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_26BB38238(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BB38304(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26BB3BD60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26BB38304(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26BB38410(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26BB7D108();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26BB38410(uint64_t a1, unint64_t a2)
{
  v3 = sub_26BB3845C(a1, a2);
  sub_26BB3858C(&unk_287C82E20);
  return v3;
}

void *sub_26BB3845C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26BB38678(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26BB7D108();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26BB7CDB8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26BB38678(v10, 0);
        result = sub_26BB7D088();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26BB3858C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26BB386F0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BB38678(uint64_t a1, uint64_t a2)
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

  sub_26BB3BDBC(0, &qword_28158BB48, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26BB386F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_26BB3BDBC(0, &qword_28158BB48, MEMORY[0x277D84B78]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_26BB387E8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26BB380A0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BB388DC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26BB38A34(uint64_t a1)
{
  v2 = sub_26BB7D508();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_26BB3BE08(0);
    v9 = sub_26BB7D068();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_26BB3BE9C(&qword_280439F20, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD0]);
      v15 = sub_26BB7CCE8();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v17 * v13, v2);
          sub_26BB3BE9C(&qword_280439F28, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD8]);
          v23 = sub_26BB7CD28();
          v24 = *v14;
          (*v14)(v6, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_26BB38D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD88;
  if (!qword_28158BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD88);
  }

  return result;
}

unint64_t sub_26BB38DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BDA0;
  if (!qword_28158BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BDA0);
  }

  return result;
}

unint64_t sub_26BB38DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BDB8;
  if (!qword_28158BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BDB8);
  }

  return result;
}

unint64_t sub_26BB38E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD28;
  if (!qword_28158BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD28);
  }

  return result;
}

unint64_t sub_26BB38E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD40;
  if (!qword_28158BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD40);
  }

  return result;
}

unint64_t sub_26BB38EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD58;
  if (!qword_28158BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD58);
  }

  return result;
}

unint64_t sub_26BB38F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD70;
  if (!qword_28158BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD70);
  }

  return result;
}

void sub_26BB38F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_26BB39000(uint64_t a1)
{
  if (!qword_280439E40)
  {
    sub_26BB39070();
    sub_26BB7D0D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280439E40);
    }
  }
}

unint64_t sub_26BB39070()
{
  result = qword_280439E48;
  if (!qword_280439E48)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_280439E48);
  }

  return result;
}

void sub_26BB390BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BB392E0(uint64_t a1)
{
  v4 = v1[2];
  v6 = *(v1 + 3);
  v5 = *(v1 + 4);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26BB3BF24;

  return sub_26BB2C528(a1, v6, v5, v4);
}

uint64_t sub_26BB394BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4F646568636163 && a2 == 0xEA0000000000796CLL || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB830F0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614365726F6E6769 && a2 == 0xEB00000000656863 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6143726566657270 && a2 == 0xEB00000000656863 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB83110 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26BB396D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D68DE20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26BB643C8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(type metadata accessor for StockService.NetworkSession(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  sub_26BB28EE8(0);
  v6 = v5;
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {

    v7 = *(v6 + 48);
    v8 = sub_26BB7BE48();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17, v2 | 7);
}

uint64_t sub_26BB39A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, unint64_t, void, void, void, char))
{
  v7 = *(type metadata accessor for StockService.NetworkSession(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v10 + 16);
  return a3(a1, a2, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v10 + 8), v12);
}

uint64_t sub_26BB39C38(void (*a1)(uint64_t, void *, char *, uint64_t, uint64_t))
{
  v3 = *(sub_26BB7BE48() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_26BB32CB0(*(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t sub_26BB39EC4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for StockService.NetworkSession(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  return sub_26BB336E8(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t objectdestroy_36Tm(void (*a1)(void))
{

  a1(*(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_26BB3A09C()
{
  v1 = *(sub_26BB7BE48() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_26BB34D04(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_26BB3A174(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26BB3BF24;

  return sub_26BB352C8(a1, v4, v5, v6, v10, v7, v8, v9);
}

uint64_t sub_26BB3A268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB390BC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26BB3A300()
{
  v1 = *(sub_26BB7BE48() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + 32);

  return sub_26BB378F0(v3, v4, v8, v0 + v2, v6, v7);
}

uint64_t sub_26BB3A3CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BB3A404(uint64_t a1)
{
  sub_26BB390BC(319, &qword_28158BA58, MEMORY[0x277D6CAC8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BB3A544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BB3A594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26BB3A5EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26BB3A608(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BB3A664(uint64_t a1)
{
  sub_26BB28EE8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BB3A6D0(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_9StocksKit12StockServiceC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_26BB3A714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BB3A75C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTagSinglePayload for StockService.CachePolicy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StockService.CachePolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BundleJSONDecoderError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BundleJSONDecoderError(_WORD *result, int a2, int a3)
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

unint64_t sub_26BB3AA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439E70;
  if (!qword_280439E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439E70);
  }

  return result;
}

unint64_t sub_26BB3AA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439E78;
  if (!qword_280439E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439E78);
  }

  return result;
}

unint64_t sub_26BB3AAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439E80;
  if (!qword_280439E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439E80);
  }

  return result;
}

unint64_t sub_26BB3AB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD60;
  if (!qword_28158BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD60);
  }

  return result;
}

unint64_t sub_26BB3ABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD68;
  if (!qword_28158BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD68);
  }

  return result;
}

unint64_t sub_26BB3ABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD48;
  if (!qword_28158BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD48);
  }

  return result;
}

unint64_t sub_26BB3AC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD50;
  if (!qword_28158BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD50);
  }

  return result;
}

unint64_t sub_26BB3ACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD30;
  if (!qword_28158BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD30);
  }

  return result;
}

unint64_t sub_26BB3AD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD38;
  if (!qword_28158BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD38);
  }

  return result;
}

unint64_t sub_26BB3AD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD18;
  if (!qword_28158BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD18);
  }

  return result;
}

unint64_t sub_26BB3ADB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD20;
  if (!qword_28158BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD20);
  }

  return result;
}

unint64_t sub_26BB3AE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BDA8;
  if (!qword_28158BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BDA8);
  }

  return result;
}

unint64_t sub_26BB3AE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BDB0;
  if (!qword_28158BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BDB0);
  }

  return result;
}

unint64_t sub_26BB3AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD90;
  if (!qword_28158BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD90);
  }

  return result;
}

unint64_t sub_26BB3AF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD98;
  if (!qword_28158BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD98);
  }

  return result;
}

unint64_t sub_26BB3AF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD78;
  if (!qword_28158BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD78);
  }

  return result;
}

unint64_t sub_26BB3AFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD80;
  if (!qword_28158BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD80);
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{
  v1 = sub_26BB7BE48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_66Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_26BB3B148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B720;
  if (!qword_28158B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B720);
  }

  return result;
}

uint64_t sub_26BB3B19C(uint64_t a1, uint64_t a2)
{
  sub_26BB3BBE8(0, &qword_280439E88, type metadata accessor for StockResult);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_26BB3B21C(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

void sub_26BB3B23C(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void sub_26BB3B25C(void *a1, id a2, char a3, char a4)
{
  if (a4)
  {
    sub_26BB3B23C(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_26BB3B268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB3B2FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26BB3BF24;

  return sub_26BB35EB4(a1, v4, v5, v10, v6, v7, v8, v9);
}

void sub_26BB3B3EC(uint64_t a1)
{
  if (!qword_28158BB58)
  {
    sub_26BB3B454(255, &qword_28158BB60, 0x277D82BB8);
    v1 = sub_26BB7CFE8();
    if (!v2)
    {
      atomic_store(v1, &qword_28158BB58);
    }
  }
}

uint64_t sub_26BB3B454(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26BB3B49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB3B504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BB3B564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB3BBE8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26BB3B5C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26BB7C5C8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_26BB3BF24;

  return sub_26BB34184(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_26BB3B704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26BB3BF24;

  return sub_26BB32290(a1, v4, v5, v7, v6);
}

uint64_t sub_26BB3B7CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26BB3BF24;

  return sub_26BB30B54(a1, v4, v5, v7, v6);
}

void sub_26BB3B88C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BB3B970(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26BB3BA30;

  return sub_26BB2EF3C(a1, v4, v5, v7, v6);
}

uint64_t sub_26BB3BA30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_26BB3BB24()
{
  if (!qword_280439EE8)
  {
    v0 = sub_26BB7D1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_280439EE8);
    }
  }
}

uint64_t sub_26BB3BB84(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_26BB390BC(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26BB3BBE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v4 = a3(255);
    sub_26BB3B148(v4, v5, v6);
    v7 = sub_26BB7D468();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t objectdestroy_210Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BB3BCA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26BB3BF24;

  return sub_26BB2D1F0(a1, v4, v5, v7, v6);
}

uint64_t sub_26BB3BD60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26BB3BDBC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26BB7D358();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26BB3BE08(uint64_t a1)
{
  if (!qword_280439F18)
  {
    sub_26BB7D508();
    sub_26BB3BE9C(&qword_280439F20, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD0]);
    v1 = sub_26BB7D078();
    if (!v2)
    {
      atomic_store(v1, &qword_280439F18);
    }
  }
}

uint64_t sub_26BB3BE9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t QuoteResult.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for QuoteResult(0) + 20);

  return sub_26BB3BFE0(v3, a1);
}

uint64_t type metadata accessor for QuoteResult(uint64_t a1)
{
  result = qword_280439F30;
  if (!qword_280439F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BB3BFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26BB3C06C(uint64_t a1)
{
  sub_26BB3C0F0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DataSource(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BB3C0F0(uint64_t a1)
{
  if (!qword_280439F40)
  {
    type metadata accessor for Quote(255);
    v1 = sub_26BB7CCD8();
    if (!v2)
    {
      atomic_store(v1, &qword_280439F40);
    }
  }
}

StocksKit::ChartRange_optional __swiftcall ChartRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BB7D1F8();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BB3C1CC()
{
  v1 = *v0;
  sub_26BB7D418();
  sub_26BB683E0(v3, v1);
  return sub_26BB7D458();
}

uint64_t sub_26BB3C21C(uint64_t a1)
{
  v2 = *v1;
  sub_26BB7D418();
  sub_26BB683E0(v4, v2);
  return sub_26BB7D458();
}

uint64_t sub_26BB3C270()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x796144656E6FLL;
    v8 = 0x68746E6F4D656E6FLL;
    v9 = 0x6E6F4D6565726874;
    if (v1 != 3)
    {
      v9 = 0x68746E6F4D786973;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6B656557656E6FLL;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x7261655965766966;
    v3 = 0x73726165596E6574;
    if (v1 != 9)
    {
      v3 = 7105633;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x61446F5472616579;
    v5 = 0x72616559656E6FLL;
    if (v1 != 6)
    {
      v5 = 0x73726165596F7774;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_26BB3C3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439F48;
  if (!qword_280439F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartRange(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}