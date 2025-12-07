unint64_t sub_1AAEA19E8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0894();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = v25;
  v11 = *v6;
  v12 = *v8;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v11;
  v13[5] = v12;
  sub_1AAEAF2F4(0);
  v14 = swift_allocObject();
  sub_1AACFEB3C(v24);
  v15 = v24[5];
  *(v14 + 104) = v24[4];
  *(v14 + 120) = v15;
  v16 = v24[7];
  *(v14 + 136) = v24[6];
  *(v14 + 152) = v16;
  v17 = v24[1];
  *(v14 + 40) = v24[0];
  *(v14 + 56) = v17;
  v18 = v24[3];
  *(v14 + 72) = v24[2];
  *(v14 + 88) = v18;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  v19 = sub_1AACBD668(v10);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AAEB08EC;
  *(v20 + 24) = v13;
  v21 = *(v19 + 168);
  v22 = *(v19 + 176);
  *(v19 + 168) = sub_1AACD8838;
  *(v19 + 176) = v20;

  sub_1AACB4A98(v21, v22);

  return v19;
}

unint64_t sub_1AAEA1C44(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0814();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF3FC(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB086C;
  *(v15 + 24) = v12;
  v16 = *(v14 + 136);
  v17 = *(v14 + 144);
  *(v14 + 136) = sub_1AACD8838;
  *(v14 + 144) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA1E88(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AAEB0704(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AAEB0798(0);
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB0780;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  v14 = *(v11 + 56);
  *(v11 + 48) = sub_1AACD8838;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

unint64_t sub_1AAEA200C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1EB426930, MEMORY[0x1E697DB90], MEMORY[0x1E69E6720]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9BB0(0, &qword_1EB426938, MEMORY[0x1E697DB90], type metadata accessor for Signal);
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB06B0;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  v14 = *(v11 + 56);
  *(v11 + 48) = sub_1AACD8800;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

unint64_t sub_1AAEA21D8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AAEB0550(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AAEB05E4(0);
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB05CC;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  v14 = *(v11 + 56);
  *(v11 + 48) = sub_1AACD8838;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

unint64_t sub_1AAEA235C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AAEB0460(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9348(0);
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB04DC;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  v14 = *(v11 + 56);
  *(v11 + 48) = sub_1AACD8838;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

unint64_t sub_1AAEA24E0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AAEB0340(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACF3140(0);
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB03BC;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  v14 = *(v11 + 56);
  *(v11 + 48) = sub_1AACD8838;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

unint64_t sub_1AAEA2664(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF504(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0D00;
  *(v15 + 24) = v12;
  v16 = *(v14 + 144);
  v17 = *(v14 + 152);
  *(v14 + 144) = sub_1AACD8838;
  *(v14 + 152) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA28D0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEB0D48(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0D24;
  *(v15 + 24) = v12;
  v16 = *(v14 + 144);
  v17 = *(v14 + 152);
  *(v14 + 144) = sub_1AACD8838;
  *(v14 + 152) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA2B3C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9AEF98, MEMORY[0x1E697E0B8], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF480(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0DCC;
  *(v15 + 24) = v12;
  v16 = *(v14 + 136);
  v17 = *(v14 + 144);
  *(v14 + 136) = sub_1AACD8800;
  *(v14 + 144) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA2DA4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF480(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0DF4;
  *(v15 + 24) = v12;
  v16 = *(v14 + 136);
  v17 = *(v14 + 144);
  *(v14 + 136) = sub_1AACD8838;
  *(v14 + 144) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA2FE0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1EB426988, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF1EC(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 168) = 0u;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0E1C;
  *(v15 + 24) = v12;
  v16 = *(v14 + 168);
  v17 = *(v14 + 176);
  *(v14 + 168) = sub_1AACD8838;
  *(v14 + 176) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA3250(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1EB426940, MEMORY[0x1E697DD48], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = v25;
  v11 = *v6;
  v12 = *v8;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v11;
  v13[5] = v12;
  sub_1AAEAF378(0);
  v14 = swift_allocObject();
  sub_1AACFEB3C(v24);
  v15 = v24[5];
  *(v14 + 104) = v24[4];
  *(v14 + 120) = v15;
  v16 = v24[7];
  *(v14 + 136) = v24[6];
  *(v14 + 152) = v16;
  v17 = v24[1];
  *(v14 + 40) = v24[0];
  *(v14 + 56) = v17;
  v18 = v24[3];
  *(v14 + 72) = v24[2];
  *(v14 + 88) = v18;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  v19 = sub_1AACBD668(v10);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AAEB0F50;
  *(v20 + 24) = v13;
  v21 = *(v19 + 168);
  v22 = *(v19 + 176);
  *(v19 + 168) = sub_1AACD8800;
  *(v19 + 176) = v20;

  sub_1AACB4A98(v21, v22);

  return v19;
}

unint64_t sub_1AAEA34D0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0994();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF504(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB1048;
  *(v15 + 24) = v12;
  v16 = *(v14 + 144);
  v17 = *(v14 + 152);
  *(v14 + 144) = sub_1AACD8838;
  *(v14 + 152) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA3718(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0914();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF1EC(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 168) = 0u;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0FF4;
  *(v15 + 24) = v12;
  v16 = *(v14 + 168);
  v17 = *(v14 + 176);
  *(v14 + 168) = sub_1AACD8838;
  *(v14 + 176) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA3964(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0894();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = v25;
  v11 = *v6;
  v12 = *v8;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v11;
  v13[5] = v12;
  sub_1AAEAF378(0);
  v14 = swift_allocObject();
  sub_1AACFEB3C(v24);
  v15 = v24[5];
  *(v14 + 104) = v24[4];
  *(v14 + 120) = v15;
  v16 = v24[7];
  *(v14 + 136) = v24[6];
  *(v14 + 152) = v16;
  v17 = v24[1];
  *(v14 + 40) = v24[0];
  *(v14 + 56) = v17;
  v18 = v24[3];
  *(v14 + 72) = v24[2];
  *(v14 + 88) = v18;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  v19 = sub_1AACBD668(v10);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AAEB0FCC;
  *(v20 + 24) = v13;
  v21 = *(v19 + 168);
  v22 = *(v19 + 176);
  *(v19 + 168) = sub_1AACD8838;
  *(v19 + 176) = v20;

  sub_1AACB4A98(v21, v22);

  return v19;
}

unint64_t sub_1AAEA3BC0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0814();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF480(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0F74;
  *(v15 + 24) = v12;
  v16 = *(v14 + 136);
  v17 = *(v14 + 144);
  *(v14 + 136) = sub_1AACD8838;
  *(v14 + 144) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA3E04(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AAEB0E40(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AAEB0ED4(0);
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB0EBC;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  v14 = *(v11 + 56);
  *(v11 + 48) = sub_1AACD8838;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

unint64_t sub_1AAEA3F88(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AACC9348(0);
  v13 = swift_allocObject();
  v13[6] = 0;
  v13[7] = 0;
  v13[5] = 0;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0A00;
  *(v15 + 24) = v12;
  v16 = *(v14 + 48);
  v17 = *(v14 + 56);
  *(v14 + 48) = sub_1AACD8838;
  *(v14 + 56) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA41AC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB11A0(0, &qword_1EB4269A0, &qword_1EB426330, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AAEB0B08(0);
  v16 = swift_allocObject();
  v16[6] = 0;
  v16[7] = 0;
  v16[5] = 0;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB1270;
  *(v18 + 24) = v15;
  v19 = *(v17 + 48);
  v20 = *(v17 + 56);
  *(v17 + 48) = sub_1AACD8838;
  *(v17 + 56) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA4478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACC9BB0(0, &qword_1ED9B0DE0, MEMORY[0x1E69E7DE0], type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAEAFE88;
  *(v8 + 24) = v5;
  v9 = *(v7 + 56);
  v10 = *(v7 + 64);
  *(v7 + 56) = sub_1AACD8838;
  *(v7 + 64) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

unint64_t sub_1AAEA457C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v28 = MEMORY[0x1E69E7CC0];
  v5 = *a1;

  MEMORY[0x1AC598430](v6);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for SgMeasurements(0);
  v7 = a1[1];

  MEMORY[0x1AC598430](v8);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAD45E1C(0, &qword_1ED9B2768, MEMORY[0x1E6981170]);
  v9 = a1[2];

  MEMORY[0x1AC598430](v10);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v11 = a1[3];

  MEMORY[0x1AC598430](v12);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
  v13 = a1[4];

  MEMORY[0x1AC598430](v14);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v15 = *v5;
  v16 = *v7;
  v17 = *v9;
  v18 = *v11;
  v19 = *v13;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v15;
  v20[5] = v16;
  v20[6] = v17;
  v20[7] = v18;
  v20[8] = v19;
  sub_1AACC9BB0(0, &qword_1EB4268E0, &type metadata for ResolvedLayout, type metadata accessor for Signal);
  v21 = swift_allocObject();
  *(v21 + 40) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0x1FFFFFFFELL;
  *(v21 + 96) = 0u;
  *(v21 + 112) = 0u;
  *(v21 + 128) = 0u;
  *(v21 + 144) = 0;
  *(v21 + 152) = 0;
  *(v21 + 160) = 0;

  v22 = sub_1AACBD668(v28);

  v23 = swift_allocObject();
  *(v23 + 16) = sub_1AAEAFED8;
  *(v23 + 24) = v20;
  v24 = *(v22 + 152);
  v25 = *(v22 + 160);
  *(v22 + 152) = sub_1AACD8800;
  *(v22 + 160) = v23;

  sub_1AACB4A98(v24, v25);

  return v22;
}

unint64_t sub_1AAEA49A0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AACC9BB0(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 1;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEAFDF4;
  *(v15 + 24) = v12;
  v16 = *(v14 + 80);
  v17 = *(v14 + 88);
  *(v14 + 80) = sub_1AACD8838;
  *(v14 + 88) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA4BCC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v16 = swift_allocObject();
  v16[6] = 0;
  v16[7] = 0;
  v16[5] = 0xF000000000000007;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEAFCF0;
  *(v18 + 24) = v15;
  v19 = *(v17 + 48);
  v20 = *(v17 + 56);
  *(v17 + 48) = sub_1AACD8838;
  *(v17 + 56) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA4E74(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9C1C(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8DF14();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACF5D54(0, &qword_1EB426880, sub_1AAEAF740, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB152C;
  *(v18 + 24) = v15;
  v19 = *(v17 + 56);
  v20 = *(v17 + 64);
  *(v17 + 56) = sub_1AACD8838;
  *(v17 + 64) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA5164(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9C1C(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8DF14();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACF5D54(0, &qword_1EB426898, sub_1AAEAF5EC, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEAF8A0;
  *(v18 + 24) = v15;
  v19 = *(v17 + 56);
  v20 = *(v17 + 64);
  *(v17 + 56) = sub_1AACD8800;
  *(v17 + 64) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA5454(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9C1C(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8DF14();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACF5D54(0, &qword_1EB426890, sub_1AAEAF694, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB152C;
  *(v18 + 24) = v15;
  v19 = *(v17 + 56);
  v20 = *(v17 + 64);
  *(v17 + 56) = sub_1AACD8838;
  *(v17 + 64) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA5744(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9C1C(0, qword_1ED9B40B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8DF14();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACF5D54(0, &qword_1EB426880, sub_1AAEAF740, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB1530;
  *(v18 + 24) = v15;
  v19 = *(v17 + 56);
  v20 = *(v17 + 64);
  *(v17 + 56) = sub_1AACD8838;
  *(v17 + 64) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA5A34(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9C1C(0, qword_1ED9B40B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8DF14();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACF5D54(0, &qword_1EB426898, sub_1AAEAF5EC, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEAF964;
  *(v18 + 24) = v15;
  v19 = *(v17 + 56);
  v20 = *(v17 + 64);
  *(v17 + 56) = sub_1AACD8838;
  *(v17 + 64) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA5D24(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v28 = MEMORY[0x1E69E7CC0];
  sub_1AACF5D54(0, &qword_1EB426AF0, sub_1AAEAF5EC, MEMORY[0x1E69E6720]);
  v4 = *a1;

  MEMORY[0x1AC598430](v5);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACF5D54(0, &qword_1EB426868, sub_1AAEAF694, MEMORY[0x1E69E6720]);
  v6 = a1[1];

  MEMORY[0x1AC598430](v7);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[2];

  MEMORY[0x1AC598430](v9);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[3];

  MEMORY[0x1AC598430](v11);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACF5D54(0, &unk_1EB426AA0, sub_1AAEAF740, MEMORY[0x1E69E6720]);
  v12 = a1[4];

  MEMORY[0x1AC598430](v13);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v4;
  v15 = *v6;
  v16 = *v8;
  v17 = *v10;
  v18 = *v12;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v14;
  v19[5] = v15;
  v19[6] = v16;
  v19[7] = v17;
  v19[8] = v18;
  sub_1AACC9BB0(0, &qword_1ED9B31E0, &type metadata for ChartInternalOverlayListenerModifier, type metadata accessor for Signal);
  v20 = swift_allocObject();
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0u;
  *(v20 + 128) = 0u;
  *(v20 + 144) = 0u;
  *(v20 + 160) = 0u;
  *(v20 + 176) = 0u;
  *(v20 + 192) = 0u;
  *(v20 + 208) = 0u;
  *(v20 + 224) = 0u;
  *(v20 + 240) = 0u;
  *(v20 + 256) = 0u;
  *(v20 + 272) = 0u;
  *(v20 + 288) = 0u;
  *(v20 + 304) = 0u;
  *(v20 + 320) = 0u;
  *(v20 + 336) = 0u;
  *(v20 + 352) = 0u;
  *(v20 + 368) = 0u;
  *(v20 + 384) = 0u;
  *(v20 + 400) = 0u;
  *(v20 + 416) = 0u;
  *(v20 + 432) = 0u;
  *(v20 + 448) = 0u;
  *(v20 + 464) = 0;
  *(v20 + 472) = 1;
  *(v20 + 480) = 0u;
  *(v20 + 496) = 0u;
  *(v20 + 512) = 0u;
  *(v20 + 528) = 0u;
  *(v20 + 544) = 0u;
  *(v20 + 560) = 0;

  v21 = sub_1AACBD668(v28);

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1AAEAF868;
  *(v22 + 24) = v19;
  v23 = *(v21 + 552);
  v24 = *(v21 + 560);
  *(v21 + 552) = sub_1AACD8838;
  *(v21 + 560) = v22;

  sub_1AACB4A98(v23, v24);

  return v21;
}

unint64_t sub_1AAEA61B8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CGSize(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9BB0(0, &qword_1ED9B0DE0, MEMORY[0x1E69E7DE0], type metadata accessor for Signal);
  v10 = swift_allocObject();
  *(v10 + 40) = 0;
  *(v10 + 48) = 1;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEAF5BC;
  *(v12 + 24) = v9;
  v13 = *(v11 + 56);
  v14 = *(v11 + 64);
  *(v11 + 56) = sub_1AACD8800;
  *(v11 + 64) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

unint64_t sub_1AAEA6368(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9C1C(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &qword_1ED9B0DD0, &type metadata for DomainOverride, type metadata accessor for Signal);
  v16 = swift_allocObject();
  v16[6] = 0;
  v16[7] = 0;
  v16[5] = 1;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEAF588;
  *(v18 + 24) = v15;
  v19 = *(v17 + 48);
  v20 = *(v17 + 56);
  *(v17 + 48) = sub_1AACD8800;
  *(v17 + 56) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA663C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CAA4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CBA4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &unk_1ED9B3210, &type metadata for AnyFormatStyle, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0;
  *(v16 + 80) = -1;
  *(v16 + 88) = 0;
  *(v16 + 96) = 0;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB0CD0;
  *(v18 + 24) = v15;
  v19 = *(v17 + 88);
  v20 = *(v17 + 96);
  *(v17 + 88) = sub_1AACD8838;
  *(v17 + 96) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA6928(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9BB0(0, &qword_1ED9B1740, &type metadata for AnyPrimitivePlottableArray, type metadata accessor for Signal);
  v10 = swift_allocObject();
  *(v10 + 40) = 0;
  *(v10 + 48) = -1;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB0BD8;
  *(v12 + 24) = v9;
  v13 = *(v11 + 56);
  v14 = *(v11 + 64);
  *(v11 + 56) = sub_1AACD8838;
  *(v11 + 64) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

unint64_t sub_1AAEA6AFC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v34 = MEMORY[0x1E69E7CC0];
  type metadata accessor for AxisMarkRenderContext();
  v4 = *a1;

  MEMORY[0x1AC598430](v5);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9C1C(0, qword_1ED9B40B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  v6 = a1[1];

  MEMORY[0x1AC598430](v7);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[2];

  MEMORY[0x1AC598430](v9);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v33 = a1[3];

  MEMORY[0x1AC598430](v10);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACE49D8(0);
  v11 = a1[4];

  MEMORY[0x1AC598430](v12);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9AEB58, MEMORY[0x1E69E6158], type metadata accessor for MarksDescriptor);
  v13 = a1[5];

  MEMORY[0x1AC598430](v14);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
  v15 = a1[6];

  MEMORY[0x1AC598430](v16);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v17 = *v4;
  v18 = *v6;
  v19 = *v8;
  v20 = *v33;
  v21 = *v11;
  v22 = *v13;
  v23 = *v15;
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v17;
  v24[5] = v18;
  v24[6] = v19;
  v24[7] = v20;
  v24[8] = v21;
  v24[9] = v22;
  v24[10] = v23;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v25 = swift_allocObject();
  v25[6] = 0;
  v25[7] = 0;
  v25[5] = 0xF000000000000007;

  v26 = sub_1AACBD668(v34);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_1AAEB0C28;
  *(v27 + 24) = v24;
  v28 = *(v26 + 48);
  v29 = *(v26 + 56);
  *(v26 + 48) = sub_1AACD8838;
  *(v26 + 56) = v27;

  sub_1AACB4A98(v28, v29);

  return v26;
}

unint64_t sub_1AAEA7054(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AAF8CAA4();
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CBA4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &unk_1ED9B3210, &type metadata for AnyFormatStyle, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0;
  *(v16 + 80) = -1;
  *(v16 + 88) = 0;
  *(v16 + 96) = 0;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB0CA0;
  *(v18 + 24) = v15;
  v19 = *(v17 + 88);
  v20 = *(v17 + 96);
  *(v17 + 88) = sub_1AACD8838;
  *(v17 + 96) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA7340(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AAD6CA50(0);
  v19 = swift_allocObject();
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0u;
  *(v19 + 104) = 0u;
  *(v19 + 120) = 0;

  v20 = sub_1AACBD668(v25);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AAEB0C68;
  *(v21 + 24) = v18;
  v22 = *(v20 + 112);
  v23 = *(v20 + 120);
  *(v20 + 112) = sub_1AACD8800;
  *(v20 + 120) = v21;

  sub_1AACB4A98(v22, v23);

  return v20;
}

unint64_t sub_1AAEA7678(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for AxisMarkLayoutContext();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &qword_1ED9B1760, &type metadata for AxisLayoutInformation, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB0C84;
  *(v18 + 24) = v15;
  v19 = *(v17 + 96);
  v20 = *(v17 + 104);
  *(v17 + 96) = sub_1AACD8838;
  *(v17 + 104) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA7958(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  type metadata accessor for AxisMarkValues.Storage(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9348(0);
  v16 = swift_allocObject();
  v16[6] = 0;
  v16[7] = 0;
  v16[5] = 0;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB009C;
  *(v18 + 24) = v15;
  v19 = *(v17 + 48);
  v20 = *(v17 + 56);
  *(v17 + 48) = sub_1AACD8838;
  *(v17 + 56) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AAEA7C30(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  type metadata accessor for AxisMarkValues.Storage(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEB0B08(0);
  v13 = swift_allocObject();
  v13[6] = 0;
  v13[7] = 0;
  v13[5] = 0;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB10BC;
  *(v15 + 24) = v12;
  v16 = *(v14 + 48);
  v17 = *(v14 + 56);
  *(v14 + 48) = sub_1AACD8838;
  *(v14 + 56) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

unint64_t sub_1AAEA7E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACC9BB0(0, &qword_1ED9B0DC0, MEMORY[0x1E69E6370], type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AACFDB20;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  *(v7 + 48) = sub_1AACD8838;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

unint64_t sub_1AAEA7F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACF3140(0);
  v6 = swift_allocObject();
  v6[6] = 0;
  v6[7] = 0;
  v6[5] = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAEB12DC;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  *(v7 + 48) = sub_1AACD8838;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

unint64_t sub_1AAEA8034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AAEB05E4(0);
  v6 = swift_allocObject();
  v6[6] = 0;
  v6[7] = 0;
  v6[5] = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAEB1538;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  *(v7 + 48) = sub_1AACD8838;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

unint64_t sub_1AAEA810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACC9BB0(0, &qword_1EB426938, MEMORY[0x1E697DB90], type metadata accessor for Signal);
  v6 = swift_allocObject();
  v6[6] = 0;
  v6[7] = 0;
  v6[5] = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAEB12E0;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  *(v7 + 48) = sub_1AACD8838;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

unint64_t sub_1AAEA8208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AAEB0ED4(0);
  v6 = swift_allocObject();
  v6[6] = 0;
  v6[7] = 0;
  v6[5] = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAEB1538;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  *(v7 + 48) = sub_1AACD8838;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

unint64_t sub_1AAEA82E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AAEB0798(0);
  v6 = swift_allocObject();
  v6[6] = 0;
  v6[7] = 0;
  v6[5] = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAEB1538;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  *(v7 + 48) = sub_1AACD8838;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

uint64_t sub_1AAEA83B8@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AAF68E44(**a1, *a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AAEA83EC@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  sub_1AACD57C4(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1AAF8CA64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  sub_1AACEC8E4(0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = **a1;
  v24 = (*(a2 + 48) >> 61) & 3;
  if (v24)
  {
    if (v24 == 1)
    {
      v39 = a1[1];
      v40 = v20;
      v25 = *(v23 + 16);
      if (!v25)
      {
        v26 = a1[2];
        result = sub_1AADE88B8(MEMORY[0x1E69E7CC0]);
        if (v28)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        sub_1AAF8C844();
        sub_1AAF8C844();
        sub_1AAEB02DC(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        if (sub_1AAF8F584())
        {
          v38 = v26;
          v29 = *(v13 + 32);
          v29(v11, v18, v12);
          v29(&v11[*(v6 + 48)], v15, v12);
          sub_1AACDAFB0(v11, v8, sub_1AACD57C4);
          v30 = *(v6 + 48);
          v29(v22, v8, v12);
          v31 = *(v13 + 8);
          v31(&v8[v30], v12);
          sub_1AADE9BF4(v11, v8);
          v29(&v22[*(v40 + 36)], &v8[*(v6 + 48)], v12);
          v31(v8, v12);
          sub_1AAF0B620(v22, v39, v38, v41);
          return sub_1AACD8D78(v22, sub_1AACEC8E4);
        }

        __break(1u);
      }

      v42 = MEMORY[0x1E69E7CC0];
      sub_1AACEF664(0, v25, 0);
      __break(1u);
LABEL_19:
      v42 = MEMORY[0x1E69E7CC0];
      result = sub_1AACEF664(0, v32, 0);
      __break(1u);
      goto LABEL_20;
    }

    if (qword_1ED9B0278 != -1)
    {
      swift_once();
    }

    v36 = v41;

    return sub_1AACE0A98(&unk_1ED9C33B8, v36);
  }

  else
  {
    v32 = *(v23 + 16);
    if (v32)
    {
      goto LABEL_19;
    }

    result = sub_1AACEC978(MEMORY[0x1E69E7CC0]);
    if (v34)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v35 = v41;

    return sub_1AAF0B254(v35, *&result, v33);
  }
}

void sub_1AAEA8854(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AACD57C4(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = sub_1AAF8CA64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  sub_1AACEC8E4(0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = **a1;
  v24 = (*(a2 + 48) >> 61) & 3;
  if (v24)
  {
    if (v24 == 1)
    {
      v40 = a1[1];
      v41 = v7;
      v42 = a3;
      v43 = v20;
      v39 = a1[2];
      v25 = sub_1AAF87F6C(v23);
      sub_1AADE88B8(v25);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        sub_1AAF8C844();
        sub_1AAF8C844();
        sub_1AAEB02DC(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        if (sub_1AAF8F584())
        {
          v28 = *(v13 + 32);
          v28(v11, v18, v12);
          v29 = v41;
          v28(&v11[*(v41 + 48)], v15, v12);
          v30 = v44;
          sub_1AACDAFB0(v11, v44, sub_1AACD57C4);
          v31 = *(v29 + 48);
          v28(v22, v30, v12);
          v32 = *(v13 + 8);
          v32(v30 + v31, v12);
          sub_1AADE9BF4(v11, v30);
          v28(&v22[*(v43 + 36)], (v30 + *(v29 + 48)), v12);
          v32(v30, v12);
          sub_1AAF0B620(v22, v40, v39, v42);
          sub_1AACD8D78(v22, sub_1AACEC8E4);
          return;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_17;
    }

    if (qword_1ED9B0278 != -1)
    {
      swift_once();
    }

    sub_1AACE0A98(&unk_1ED9C33B8, a3);
  }

  else
  {
    v33 = sub_1AAF87F6C(**a1);
    v34 = sub_1AACEC978(v33);
    v36 = v35;
    v38 = v37;

    if (v38)
    {
LABEL_17:
      __break(1u);
      return;
    }

    sub_1AAF0B254(a3, *&v34, v36);
  }
}

double sub_1AAEA8CB0@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  result = **a1;
  *a2 = result;
  return result;
}

double sub_1AAEA8CD0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 8);
  *a2 = result;
  return result;
}

void sub_1AAEA8CE0(unint64_t **a1@<X0>, uint64_t a2@<X2>, double (*a3)(_OWORD *)@<X3>, uint64_t *a4@<X8>, uint64_t a5@<X1>)
{
  v6 = **a1;
  v7 = *a1[1];
  v8 = a1[2];
  v9 = *(v8 + 5);
  v54 = *(v8 + 4);
  v55 = v9;
  v56 = v8[12];
  v10 = *(v8 + 1);
  v50 = *v8;
  v51 = v10;
  v11 = *(v8 + 3);
  v52 = *(v8 + 2);
  v53 = v11;
  v12 = *a5;
  v13 = *(a5 + 8);
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AAF6A544(v6, a2, a3, 0, &v49, v7);
  v14 = 0;
  v15 = *(v49 + 2);
  v16 = (v49 + 32);
  v17 = (v49 + 32);
  v18 = 0.0;
  do
  {
    if (v15 == v14)
    {
      v21 = 0.0;
      goto LABEL_14;
    }

    ++v14;
    v19 = *v17;
    v17 += 2;
    v20 = v19;
  }

  while (v19 <= 1.77635684e-15);
  v21 = (*(v17 - 1) + v7 * (v20 + -1.0)) / v20;
LABEL_5:
  v22 = &v49[16 * v14 + 32];
  while (v15 != v14)
  {
    if (v14 >= v15)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    v23 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_49;
    }

    v24 = *v22;
    v22 += 2;
    v25 = v24;
    ++v14;
    if (v24 > 1.77635684e-15)
    {
      v26 = (*(v22 - 1) + v7 * (v25 + -1.0)) / v25;
      if (v21 < v26)
      {
        v21 = v26;
      }

      v14 = v23;
      goto LABEL_5;
    }
  }

LABEL_14:
  v27 = 0;
  if (v21 > 0.0)
  {
    v18 = v21;
  }

  if (v7 >= v18)
  {
    v28 = v18;
  }

  else
  {
    v28 = v7;
  }

  v29 = 0.0;
  do
  {
    if (v15 == v27)
    {
      v32 = 0.0;
      goto LABEL_32;
    }

    ++v27;
    v30 = *v16;
    v16 += 2;
    v31 = v30;
  }

  while (v30 >= 1.0);
  v32 = ((v28 - v7) * v31 - *(v16 - 1)) / (1.0 - v31);
LABEL_23:
  v33 = &v49[16 * v27 + 32];
  while (v15 != v27)
  {
    if (v27 >= v15)
    {
      goto LABEL_50;
    }

    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_51;
    }

    v35 = *v33;
    v33 += 2;
    v36 = v35;
    ++v27;
    if (v35 < 1.0)
    {
      v37 = ((v28 - v7) * v36 - *(v33 - 1)) / (1.0 - v36);
      if (v32 < v37)
      {
        v32 = v37;
      }

      v27 = v34;
      goto LABEL_23;
    }
  }

LABEL_32:
  if (v32 > 0.0)
  {
    v29 = v32;
  }

  if (v7 - v28 >= v29)
  {
    v38 = v29;
  }

  else
  {
    v38 = v7 - v28;
  }

  if (v54 == 255 || (v54 & 1) != 0 || !*(*(&v53 + 1) + 16))
  {
    v40 = 0;
    v39 = 1;
  }

  else
  {
    v39 = 0;
    v40 = *(*(&v53 + 1) + 32);
  }

  v41 = v53;
  v42 = sub_1AACE1D40();
  v44 = v43;

  v46 = sub_1AAF6903C(v45, v40, v39, v42, v44 & 1, v12, v13, v38, v28);
  if (v46)
  {
    v47 = v46;
    v48 = sub_1AAD79E08(v46, v41);

    swift_bridgeObjectRelease_n();
    if ((v48 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v47 = 0;
LABEL_47:
  *a4 = v47;
}

uint64_t sub_1AAEA9030@<X0>(unint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AAF10E58(**a1, *a1[1], *a1[2], *a1[3]);
  *a2 = result;
  return result;
}

void sub_1AAEA9084(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = **(a1 + 16);
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = *(v5 + 16);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = MEMORY[0x1E69E7CC0];

        sub_1AACEA258(v8, v4, v7, a3);
        return;
      }

      v11 = **(a1 + 16);
      sub_1AACEA040(0, v6, 0);
      if (!*(v11 + 16))
      {
LABEL_19:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_18:
      sub_1AACEF664(0, v9, 0);
      __break(1u);
      goto LABEL_19;
    }

    if (qword_1ED9B0278 != -1)
    {
      v12 = a3;
      swift_once();
      a3 = v12;
    }

    sub_1AACE0A98(&unk_1ED9C33B8, a3);
  }

  else
  {
    v9 = *(v5 + 16);
    if (v9)
    {
      goto LABEL_18;
    }

    v10 = MEMORY[0x1E69E7CC0];

    sub_1AAF0D208(v10, v4, a3);
  }
}

uint64_t sub_1AAEA91D8(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a2;
  v5 = a1[1];
  v6 = **a1;
  v7 = *(v5 + 5);
  v53 = *(v5 + 4);
  v54 = v7;
  v55 = v5[12];
  v8 = *(v5 + 1);
  v51[0] = *v5;
  v51[1] = v8;
  v9 = *(v5 + 3);
  v51[2] = *(v5 + 2);
  v52 = v9;
  v10 = a1[2];
  v11 = a1[3];
  v13 = *v10;
  v12 = v10[1];
  v14 = *v11;
  v15 = v11[1];
  v16 = a1[5];
  v17 = *a1[4];
  v47 = a1[6];
  if (*(v17 + 16) && (v18 = sub_1AACE1760(*(v16 + 57)), (v19 & 1) != 0))
  {
    v20 = (*(v17 + 56) + 56 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v25 = v20[3];
    v24 = v20[4];
    v27 = v20[5];
    v26 = v20[6];
  }

  else
  {
    v24 = sub_1AAD1704C(MEMORY[0x1E69E7CC0]);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
    v26 = 0;
  }

  swift_beginAccess();
  *(v6 + 184) = v21;
  *(v6 + 192) = v22;
  *(v6 + 200) = v23;
  *(v6 + 208) = v25;
  *(v6 + 216) = v24;
  *(v6 + 224) = v27;
  *(v6 + 232) = v26;

  *(v6 + 240) = 0;
  *(v6 + 248) = v13;
  *(v6 + 256) = 0;
  *(v6 + 264) = v12;
  *(v6 + 272) = 0;
  *(v6 + 280) = v14;
  *(v6 + 288) = 0;
  *(v6 + 296) = v15;
  v28 = *(v16 + 8);
  if (v28 <= 0.0)
  {
    v28 = 2.0;
  }

  *(v6 + 304) = v28;
  v29 = 0.0;
  v30 = 0.0;
  if (v53 != 255 && (v53 & 1) == 0 && *(*(&v52 + 1) + 16))
  {
    v30 = *(*(&v52 + 1) + 32);
  }

  v31 = COERCE_DOUBLE(sub_1AACE1D40());
  if (v32)
  {
    v31 = 0.0;
  }

  if (*(v6 + 64) > 1u)
  {
    if (*(v6 + 64) == 2)
    {
      v14 = 0.0;
      v29 = v30;
      v33 = 0.0;
    }

    else
    {
      v29 = v30;
      v33 = v14;
    }

    v34 = v31;
  }

  else
  {
    v14 = v30;
    v33 = v31;
    v34 = 0.0;
    if (*(v6 + 64))
    {
      v14 = v30;
      v29 = *&v15;
      v33 = v31;
      v34 = *&v15;
    }
  }

  *(v6 + 312) = v14;
  *(v6 + 320) = v29;
  *(v6 + 328) = v33;
  *(v6 + 336) = v34;
  if (v30 >= v31)
  {
    v35 = -1.0;
  }

  else
  {
    v35 = 1.0;
  }

  *(v6 + 344) = v35;
  v36 = *(v52 + 16);
  if (v36)
  {
    v37 = v52 + 32 + 16 * v36;
    if ((*(v37 - 16) != *(v52 + 32) || *(v37 - 8) != *(v52 + 40)) && (sub_1AAF904F4() & 1) != 0 && v4 != 2)
    {
      *(v6 + 344) = -v35;
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
  v38 = *v16;
  v39 = *(*v16 + 16);
  v40 = *(v39 + 32);

  v41 = sub_1AACE0D48(a3, a4, v40);
  v42 = *(v39 + 32);
  *(v39 + 32) = v41;
  v43 = *(v38 + 24);
  *(v38 + 24) = v41;
  sub_1AAEA94C0(v16, v6, v4, v51, &v50, v47);
  v45 = v44;
  *(v38 + 24) = v43;

  *(v39 + 32) = v42;

  return v45;
}

void sub_1AAEA94C0(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char **a5, uint64_t a6)
{
  v45 = a1[1];
  v42 = *(v45 + 16);
  if (v42)
  {
    v8 = 0;
    v9 = (v45 + 56);
    v41 = a3;
    while (1)
    {
      v19 = *(v45 + 16);
      if (v8 >= v19)
      {
        break;
      }

      if (v41 != 2)
      {
        goto LABEL_26;
      }

      v21 = *(v9 - 3);
      v20 = *(v9 - 2);
      v46 = v8 + 1;
      v22 = *(a2 + 144);
      v23 = *(a2 + 152);
      v24 = *(a2 + 160);
      *(a2 + 144) = v21;
      *(a2 + 152) = v20;
      *(a2 + 160) = 2;
      *(a2 + 168) = v8;
      *(a2 + 176) = v19;
      swift_bridgeObjectRetain_n();
      sub_1AACCAE10(v21, v20, 2);
      sub_1AACCA714(v22, v23, v24);
      sub_1AACCA728(v21, v20, 2);
      *&v50[0] = v21;
      *(&v50[0] + 1) = v20;
      v25 = *a4;
      (*a4)(&v47, v50);
      v10 = *&v47;
      if (*(a2 + 136) == 2)
      {
        v26 = *(a4 + 16);
        if (*(a4 + 24))
        {
          v26 = 0.0;
        }

        v12 = *&v47 + v26;
        v27 = v46;
      }

      else
      {
        v27 = v46;
        v12 = *&v47;
        if (v46 < *(v45 + 16))
        {
          v28 = *v9;
          *&v50[0] = *(v9 - 1);
          *(&v50[0] + 1) = v28;

          v25(&v47, v50);

          v12 = *&v47;
        }
      }

      if (*(a2 + 64) > 1u)
      {
        if (*(a2 + 64) == 2)
        {
          v29 = *(a2 + 272);
        }

        else
        {
          v29 = *(a2 + 280);
        }

        v11 = v29;
      }

      else
      {
        v29 = v10;
        if (*(a2 + 64))
        {
          v10 = *(a2 + 296);
        }

        else
        {
          v10 = *(a2 + 288);
        }

        v11 = v12;
        v12 = v10;
      }

      *(a2 + 352) = v29;
      *(a2 + 360) = v10;
      *(a2 + 368) = v11;
      *(a2 + 376) = v12;
      v13 = *a1;
      v14 = *(*a1 + 16);
      v15 = *(v14 + 32);

      v16 = sub_1AADD19CC(v21, v20, v15);
      v17 = *(v14 + 32);
      *(v14 + 32) = v16;
      v18 = *(v13 + 24);
      *(v13 + 24) = v16;
      sub_1AACE0FAC(a2, a1, a5);
      *(v13 + 24) = v18;

      *(v14 + 32) = v17;

      v9 += 2;
      v8 = v27;
      if (v42 == v27)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    if (!v41)
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    sub_1AACDAF30(a6, &v47, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
    if (*(&v48 + 1))
    {
      v50[0] = v47;
      v50[1] = v48;
      v51 = v49;
      v30 = swift_allocObject();
      v31 = *(*a1 + 24);
      v32 = *a5;
      sub_1AACBB198(v50, (v30 + 4));
      v30[2] = v31;
      v30[3] = v32;
      v30[9] = 0;
    }

    else
    {
      sub_1AACDD030(&v47, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
      v33 = type metadata accessor for SgGroup(0);
      swift_allocBox();
      v35 = v34;
      v36 = *(*a1 + 24);
      v37 = *a5;
      v38 = v33[6];
      v39 = type metadata accessor for SgClipRect(0);
      (*(*(v39 - 8) + 56))(&v35[v38], 1, 1, v39);
      *v35 = v36;
      *(v35 + 1) = v37;
      *&v35[v33[7]] = 0x3FF0000000000000;
      *&v35[v33[8]] = 0;
      *&v35[v33[9]] = MEMORY[0x1E69E7CC0];
      v35[v33[10]] = 0;
    }
  }
}

void sub_1AAEA9874(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v53 = a1[1];
  v10 = **a1;
  v11 = *a1[2];
  v12 = *(a2 + 16);
  v13 = *(v12 + 32);

  v14 = sub_1AACE0D48(a3, a4, v13);
  v47 = *(v12 + 32);
  v48 = v12;
  *(v12 + 32) = v14;
  v46 = *(v9 + 24);
  *(v9 + 24) = v14;
  v54 = v10;
  v52 = *(v10 + 16);
  if (v52)
  {
    v15 = 0;
    v16 = (v10 + 40);
    v51 = a5;
    while (1)
    {
      v20 = *(v54 + 16);
      if (v15 >= v20)
      {
        break;
      }

      if (v51 != 2)
      {
        goto LABEL_19;
      }

      v21 = *(v16 - 1);
      v22 = *v16;
      v57 = v16;
      v58 = v15;
      v23 = *(v11 + 144);
      v24 = *(v11 + 152);
      v25 = *(v11 + 160);
      *(v11 + 144) = v21;
      *(v11 + 152) = v22;
      *(v11 + 160) = 2;
      *(v11 + 168) = v15;
      *(v11 + 176) = v20;
      swift_bridgeObjectRetain_n();
      sub_1AACCAE10(v21, v22, 2);
      sub_1AACCA714(v23, v24, v25);
      sub_1AACCA728(v21, v22, 2);
      v26 = *(v9 + 16);
      v27 = *(v26 + 32);
      *&v64 = v21;
      *(&v64 + 1) = v22;

      sub_1AAF90024();
      *&v69 = v27;
      swift_beginAccess();
      v28 = *(v26 + 16);
      if (*(v28 + 16) && (v29 = sub_1AACCAE28(&v69), (v30 & 1) != 0))
      {
        v31 = *(*(v28 + 56) + 8 * v29);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        sub_1AAF8F6C4();
        MEMORY[0x1AC5992F0](v27);
        v76 = v66;
        v77 = v67;
        v78 = v68;
        v74 = v64;
        v75 = v65;
        v32 = sub_1AAF906E4();
        v31 = sub_1AACCB060(v32);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v26 + 16);
        *(v26 + 16) = 0x8000000000000000;
        sub_1AACCB154(v31, &v69, isUniquelyReferenced_nonNull_native);
        *(v26 + 16) = v63;
      }

      swift_endAccess();
      sub_1AACCAFF0(&v69);
      v34 = *(v26 + 32);
      *(v26 + 32) = v31;
      v35 = v9;
      v36 = *(v9 + 24);
      v37 = v35;
      *(v35 + 24) = v31;
      *(v11 + 128) = v31;
      v38 = *(v11 + 160);
      if (*(v11 + 160) == 0xFF)
      {
        goto LABEL_21;
      }

      v39 = *(v11 + 144);
      v40 = *(v11 + 152);
      v41 = *(v11 + 168);
      v55 = *(v11 + 176);
      sub_1AACB4B38(v53, &v64);
      v56 = v34;
      if (BYTE8(v66))
      {
        if (BYTE8(v66) == 1)
        {
          v50 = v64;
          v59[0] = v39;
          v59[1] = v40;
          v60 = v38;
          v61 = v41;
          v62 = v55;
          sub_1AACCAE10(v39, v40, v38);
          v50(&v69, v59);
        }

        else
        {
          sub_1AADD7908(0);
          memset(v72, 0, sizeof(v72));
          v73 = 0;
          *(&v70 + 1) = v42;
          v71 = sub_1AADD79FC();
          v43 = swift_allocObject();
          *&v69 = v43;
          sub_1AACCAE10(v39, v40, v38);
          sub_1AADCF710(v72, (v43 + 16));
        }

        sub_1AACCA714(v39, v40, v38);
      }

      else
      {
        v69 = v64;
        v70 = v65;
        v71 = v66;
      }

      v17 = *(&v70 + 1);
      v18 = v71;
      v19 = sub_1AACBB42C(&v69, *(&v70 + 1));

      sub_1AACCA740(v19, v11, v17, v18);

      sub_1AACE1B40(&v69);
      *(v37 + 24) = v36;
      v9 = v37;

      *(v26 + 32) = v56;
      v15 = v58 + 1;

      v16 = v57 + 2;
      if (v52 == v58 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    if (v51)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_17:
    *(v9 + 24) = v46;
    *(v48 + 32) = v47;

    swift_beginAccess();
    v44 = *(v11 + 208);
    v45 = *(v11 + 216);
    *a6 = *(v11 + 184);
    *(a6 + 8) = *(v11 + 192);
    *(a6 + 24) = v44;
    *(a6 + 32) = v45;
    *(a6 + 40) = *(v11 + 224);
  }
}

void sub_1AAEA9D3C(uint64_t a1, __int16 a2)
{
  if (HIBYTE(a2))
  {
    if (HIBYTE(a2) == 1)
    {
      sub_1AACF57BC(a1, MEMORY[0x1E69E6370]);
    }

    else
    {
      v2 = a2;
      v4 = sub_1AACC4358(a1, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      v5 = &v4;
      v3 = swift_allocObject();
      *(v3 + 16) = v2 & 1;
      sub_1AAEA0A20(&v5, sub_1AAEB1288, v3);
    }
  }

  else
  {
  }
}

void sub_1AAEA9DFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AACC4358(a1, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
    }

    else
    {

      v6 = sub_1AACC9544(a1, sub_1AAEB0340);
      v7 = &v6;
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      sub_1AAEA24E0(&v7, sub_1AAEB0324, v5);
    }
  }

  else
  {
  }
}

void sub_1AAEA9ED8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AACC4358(a1, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    }

    else
    {

      v6 = sub_1AACC9544(a1, sub_1AAEB0460);
      v7 = &v6;
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      sub_1AAEA235C(&v7, sub_1AAEB1508, v5);
    }
  }

  else
  {
  }
}

void sub_1AAEA9FB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AACC4358(a1, &qword_1ED9AEF98, MEMORY[0x1E697E0B8], MEMORY[0x1E69E62F8]);
    }

    else
    {

      v6 = sub_1AACC9544(a1, sub_1AAEB0550);
      v7 = &v6;
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      sub_1AAEA21D8(&v7, sub_1AAEB1508, v5);
    }
  }

  else
  {
  }
}

void sub_1AAEAA090(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AACF57BC(a1, MEMORY[0x1E697DB90]);
    }

    else
    {

      v5 = sub_1AACC4358(a1, &qword_1EB426930, MEMORY[0x1E697DB90], MEMORY[0x1E69E6720]);
      v6 = &v5;
      sub_1AAEA200C(&v6, sub_1AAEB0688, a2);
    }
  }

  else
  {
  }
}

void sub_1AAEAA148(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AACC4358(a1, &qword_1EB426940, MEMORY[0x1E697DD48], MEMORY[0x1E69E62F8]);
    }

    else
    {

      v6 = sub_1AACC9544(a1, sub_1AAEB0704);
      v7 = &v6;
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      sub_1AAEA1E88(&v7, sub_1AAEB1508, v5);
    }
  }

  else
  {
  }
}

void sub_1AAEAA224(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AACC4358(a1, &qword_1EB426988, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E62F8]);
    }

    else
    {

      v6 = sub_1AACC9544(a1, sub_1AAEB0E40);
      v7 = &v6;
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      sub_1AAEA3E04(&v7, sub_1AAEB1508, v5);
    }
  }

  else
  {
  }
}

unint64_t sub_1AAEAA300(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = 0;
  v3[7] = 0;
  v3[5] = 2;
  v6 = sub_1AACBD668(a1);

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9 = *(v6 + 48);
  v8 = *(v6 + 56);
  *(v6 + 48) = sub_1AAEB0A98;
  *(v6 + 56) = v7;
  sub_1AACB4A98(v9, v8);

  return v6;
}

unint64_t sub_1AAEAA3A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 256;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  v6 = sub_1AACBD668(a1);

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9 = *(v6 + 64);
  v8 = *(v6 + 72);
  *(v6 + 64) = sub_1AAEAFECC;
  *(v6 + 72) = v7;
  sub_1AACB4A98(v9, v8);

  return v6;
}

uint64_t sub_1AAEAA454(uint64_t *a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4)
{
  a2(&v10);
  v6 = v10;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v7 = *(a4 + 40);
  sub_1AAE28C94(v6);
  sub_1AAEB0AA4(v7);

  if (v7 == 2)
  {
    sub_1AAE28C84(v6);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (v6 == 1)
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }

LABEL_13:
    sub_1AAEB0AB4(v7);
    goto LABEL_14;
  }

  if (v7 == 1)
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
LABEL_7:

    goto LABEL_14;
  }

  v9 = sub_1AAD79E08(v6, v7);
  sub_1AAEB0AB4(v7);

  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  result = 1;
LABEL_15:
  *a1 = v6;
  return result;
}

uint64_t sub_1AAEAA560(uint64_t a1, void (*a2)(void *__return_ptr), uint64_t a3, uint64_t a4)
{
  a2(v13);
  v6 = v13[0];
  v7 = v13[1];
  v8 = v14;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v9 = *(a4 + 56);
  v10 = *(a4 + 57);

  if (v10)
  {
    v11 = 0;
  }

  else if ((v8 | v9))
  {
    v11 = v8 & v9;
  }

  else
  {
    v11 = sub_1AAF8F0F4();
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  result = v11 & 1;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1AAEAA630(uint64_t *a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a2(&v12);
  v8 = v12;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v9 = *(a4 + 40);

  if (v9)
  {

    v10 = a5(v8, v9);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v10 = 0;
  }

  *a1 = v8;
  return v10 & 1;
}

uint64_t sub_1AAEAA708(uint64_t *a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a2(&v12);
  v8 = v12;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v9 = *(a4 + 40);

  if (v9)
  {
    v10 = a5(v8, v9);
  }

  else
  {

    v10 = 0;
  }

  *a1 = v8;
  return v10 & 1;
}

uint64_t sub_1AAEAA7D0(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E69E63B0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  sub_1AAEB11A0(0, &qword_1ED9B0C78, &qword_1ED9B0C80, &qword_1ED9B2A30, v4);
  sub_1AACC9BB0(0, &qword_1ED9B10D8, &type metadata for DomainOverride, MEMORY[0x1E69E6720]);

  sub_1AACD889C(&v13);

  v14[0] = &v13;

  sub_1AACD889C(&v12);

  v14[1] = &v12;

  sub_1AACD889C(&v11);

  v14[2] = &v11;

  sub_1AACD889C(v10);

  v14[3] = v10;

  sub_1AACD889C(&v9);

  v14[4] = &v9;
  (a1)(&v15, v14);
  v5 = v10[0];
  v6 = v10[1];
  v7 = v9;

  sub_1AACB4A98(v5, v6);
  sub_1AAE28C84(v7);
  return v15;
}

uint64_t sub_1AAEAA994(void (*a1)(uint64_t *__return_ptr, char **, __n128), uint64_t a2, uint64_t a3)
{
  sub_1AACC9BB0(0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);

  sub_1AACD889C(&v5);

  v6 = &v5;
  (a1)(&v7, &v6);
  return v7;
}

double sub_1AAEAAA30(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(void))
{
  sub_1AACC9BB0(0, a5, a6, MEMORY[0x1E69E62F8]);
  a7(0);

  sub_1AACD889C(&v11);

  v12[0] = &v11;

  sub_1AACD889C(v10);

  v12[1] = v10;
  (a1)(v12);

  return result;
}

uint64_t sub_1AAEAAB20(void (*a1)(uint64_t *__return_ptr, uint64_t **), uint64_t a2, uint64_t a3)
{
  sub_1AACC9BB0(0, &qword_1EB426930, MEMORY[0x1E697DB90], MEMORY[0x1E69E6720]);

  sub_1AACD889C(&v5);

  v6 = &v5;
  a1(&v7, &v6);

  return v7;
}

double sub_1AAEAABC4(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);

  sub_1AACD889C(&v7);

  v8[0] = &v7;

  sub_1AACD889C(&v6);

  v8[1] = &v6;
  (a1)(v8);

  return result;
}

double sub_1AAEAACA0(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  sub_1AACC9BB0(0, a5, a6, MEMORY[0x1E69E62F8]);
  sub_1AAEB0994();

  sub_1AACD889C(&v9);

  v10[0] = &v9;

  sub_1AACD889C(v8);

  v10[1] = v8;
  (a1)(v10);

  return result;
}

double sub_1AAEAAD7C(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  sub_1AACC9BB0(0, a5, a6, MEMORY[0x1E69E62F8]);
  sub_1AAEB0814();

  sub_1AACD889C(&v9);

  v10[0] = &v9;

  sub_1AACD889C(v8);

  v10[1] = v8;
  (a1)(v10);

  return result;
}

uint64_t sub_1AAEAAE58(void (*a1)(uint64_t *__return_ptr, uint64_t **), uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);

  sub_1AACD889C(&v6);

  v7 = &v6;
  a1(&v8, &v7);

  return v8;
}

double sub_1AAEAAEDC(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  sub_1AACC9BB0(0, a5, a6, MEMORY[0x1E69E62F8]);

  sub_1AACD889C(&v9);

  v10[0] = &v9;

  sub_1AACD889C(&v8);

  v10[1] = &v8;
  (a1)(v10);

  return result;
}

double sub_1AAEAAFB0(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  v7 = MEMORY[0x1E69E62F8];
  sub_1AACC9BB0(0, a5, a6, MEMORY[0x1E69E62F8]);
  sub_1AACC9BB0(0, &qword_1ED9AEF98, MEMORY[0x1E697E0B8], v7);

  sub_1AACD889C(&v10);

  v11[0] = &v10;

  sub_1AACD889C(&v9);

  v11[1] = &v9;
  (a1)(v11);

  return result;
}

uint64_t sub_1AAEAB0A4(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);

  sub_1AACD889C(&v7);

  v8[0] = &v7;

  sub_1AACD889C(&v6);

  v8[1] = &v6;
  (a1)(&v9, v8);

  return v9;
}

uint64_t sub_1AAEAB180(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1E69E6158];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AAEB11A0(0, &qword_1EB4269A0, &qword_1EB426330, &qword_1ED9B0C88, v6);

  sub_1AACD889C(&v12);

  v13[0] = &v12;

  sub_1AACD889C(&v11);

  v13[1] = &v11;

  sub_1AACD889C(v10);

  v13[2] = v10;
  (a1)(&v14, v13);
  v7 = v10[0];
  v8 = v10[1];

  sub_1AACB4A98(v7, v8);
  return v14;
}

uint64_t sub_1AAEAB2BC(void (*a1)(void *, __n128), uint64_t a2, uint64_t *a3)
{
  type metadata accessor for SgMeasurements(0);
  sub_1AAD45E1C(0, &qword_1ED9B2768, MEMORY[0x1E6981170]);
  sub_1AACC9BB0(0, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);

  sub_1AACD889C(v5);

  v10[0] = v5;

  sub_1AACD889C(&v6);

  v10[1] = &v6;

  sub_1AACD889C(v7);

  v10[2] = v7;

  sub_1AACD889C(&v8);

  v10[3] = &v8;

  sub_1AACD889C(v9);

  v10[4] = v9;
  (a1)(v10);
  return sub_1AACD8D78(v5, sub_1AAEAFF10);
}

double sub_1AAEAB444(void (*a1)(double *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1AACD889C(v6);

  v9[0] = v6;

  sub_1AACD889C(v7);

  v9[1] = v7;
  (a1)(&v10, v9);
  v11[6] = v7[4];
  v12[0] = v8[0];
  *(v12 + 9) = *(v8 + 9);
  v11[2] = v7[0];
  v11[3] = v7[1];
  v11[4] = v7[2];
  v11[5] = v7[3];
  v11[0] = v6[0];
  v11[1] = v6[1];
  sub_1AACD8D78(v11, sub_1AAEAFE28);
  return v10;
}

uint64_t sub_1AAEAB530(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CGSize(0);

  sub_1AACD889C(v7);

  v10[0] = v7;

  sub_1AACD889C(v8);

  v10[1] = v8;

  sub_1AACD889C(&v9);

  v10[2] = &v9;
  (a1)(&v11, v10);
  v12[6] = v8[4];
  v12[7] = v8[5];
  v12[8] = v8[6];
  v12[9] = v9;
  v12[2] = v8[0];
  v12[3] = v8[1];
  v12[4] = v8[2];
  v12[5] = v8[3];
  v12[0] = v7[0];
  v12[1] = v7[1];
  sub_1AACD8D78(v12, sub_1AAEAFD08);
  return v11;
}

double sub_1AAEAB64C(void (*a1)(void *, __n128), uint64_t a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1AACF5D54(0, &qword_1EB426AF0, sub_1AAEAF5EC, MEMORY[0x1E69E6720]);
  sub_1AACF5D54(0, &qword_1EB426868, sub_1AAEAF694, v4);
  sub_1AACF5D54(0, &unk_1EB426AA0, sub_1AAEAF740, v4);

  sub_1AACD889C(v18);

  v19[0] = v18;

  sub_1AACD889C(v17);

  v19[1] = v17;

  sub_1AACD889C(v16);

  v19[2] = v16;

  sub_1AACD889C(v15);

  v19[3] = v15;

  sub_1AACD889C(v14);

  v19[4] = v14;
  (a1)(v19);
  v5 = v17[0];
  v6 = v17[1];
  v7 = v16[0];
  v8 = v16[1];
  v9 = v15[0];
  v10 = v15[1];
  v11 = v14[0];
  v12 = v14[1];
  sub_1AACB4A98(v18[0], v18[1]);
  sub_1AACB4A98(v5, v6);
  sub_1AACB4A98(v7, v8);
  sub_1AACB4A98(v9, v10);
  return sub_1AACB4A98(v11, v12);
}

uint64_t sub_1AAEAB840(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v17 = a1;
  sub_1AAEAF8BC(0, a6, a7, a8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-1] - v13;
  sub_1AACC9C1C(0, a7, a8, MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  type metadata accessor for CGSize(0);
  sub_1AAF8DF14();

  sub_1AACD889C(v14);

  v18[0] = v14;

  sub_1AACD889C((v14 + 104));

  v18[1] = v14 + 104;
  v15 = &v14[*(v12 + 72)];

  sub_1AACD889C(v15);

  v18[2] = v15;
  (v17)(&v19, v18);
  sub_1AACE1350(v14, a6, a7, a8, sub_1AAEAF8BC);
  return v19;
}

uint64_t sub_1AAEAB9DC(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AACCA000(0, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
  v7 = MEMORY[0x1E69E5E28];
  sub_1AACFE434(0, &qword_1ED9B2AA8, MEMORY[0x1E69E5E28]);
  sub_1AACF92C8(0, &qword_1ED9B2AC8, v7);

  sub_1AACD889C(&v12);

  v13[0] = &v12;

  sub_1AACD889C(&v11);

  v13[1] = &v11;

  sub_1AACD889C(&v10);

  v13[2] = &v10;

  sub_1AACD889C(&v9);

  v13[3] = &v9;
  (a1)(&v14, v13);

  return v14;
}

uint64_t sub_1AAEABB58(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AACF92C8(0, &qword_1ED9B2AC8, MEMORY[0x1E69E5E28]);

  sub_1AACD889C(&v7);

  v8[0] = &v7;

  sub_1AACD889C(&v6);

  v8[1] = &v6;
  (a1)(&v9, v8);

  return v9;
}

uint64_t sub_1AAEABC2C(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AACC9C1C(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);

  sub_1AACD889C(&v11);

  v15[0] = &v11;

  sub_1AACD889C(&v12);

  v15[1] = &v12;

  sub_1AACD889C(v13);

  v15[2] = v13;
  (a1)(&v16, v15);
  v6 = v13[4];
  v7 = v13[5];
  v8 = v13[7];
  v9 = v14;

  sub_1AACB4A98(v6, v7);

  sub_1AAE0C928(v8, v9);
  return v16;
}

double sub_1AAEABD70(void (*a1)(double *__return_ptr, _BYTE **, __n128), uint64_t a2, uint64_t a3)
{
  type metadata accessor for CGSize(0);

  sub_1AACD889C(v5);

  v6 = v5;
  (a1)(&v7, &v6);
  return v7;
}

uint64_t sub_1AAEABDE8(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v18[1] = a2;
  v19 = a1;
  sub_1AAEB0240(0, a6, a7, a8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  sub_1AACC9BB0(0, a7, a8, MEMORY[0x1E69E62F8]);
  sub_1AAF8CAA4();
  sub_1AAF8CBA4();

  sub_1AACD889C(v14);

  v20[0] = v14;
  v15 = &v14[*(v12 + 56)];

  sub_1AACD889C(v15);

  v20[1] = v15;
  v16 = &v14[*(v12 + 72)];

  sub_1AACD889C(v16);

  v20[2] = v16;
  v19(v20);
  return sub_1AACE1350(v14, a6, a7, a8, sub_1AAEB0240);
}

uint64_t sub_1AAEABF78(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AAEB110C(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AxisMarkValues.Storage(0);
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);

  sub_1AACD889C(v8);

  v12[0] = v8;
  v9 = &v8[*(v6 + 56)];

  sub_1AACD889C(v9);

  v12[1] = v9;
  (a1)(&v13, v12);
  sub_1AACD8D78(v8, sub_1AAEB110C);
  return v13;
}

uint64_t sub_1AAEAC0B0(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAEB00B4(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AxisMarkValues.Storage(0);
  v10 = MEMORY[0x1E69E63B0];
  sub_1AACC9BB0(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  sub_1AACC9BB0(0, &qword_1ED9B2A30, v10, MEMORY[0x1E69E62F8]);

  sub_1AACD889C(v9);

  v14[0] = v9;
  v11 = &v9[*(v7 + 56)];

  sub_1AACD889C(v11);

  v14[1] = v11;
  v12 = &v9[*(v7 + 72)];

  sub_1AACD889C(v12);

  v14[2] = v12;
  (a1)(&v15, v14);
  sub_1AACD8D78(v9, sub_1AAEB00B4);
  return v15;
}

uint64_t sub_1AAEAC248(void (*a1)(uint64_t *__return_ptr, uint64_t **), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1AACC9BB0(0, a4, a5, MEMORY[0x1E69E62F8]);

  sub_1AACD889C(&v7);

  v8 = &v7;
  a1(&v9, &v8);

  return v9;
}

unint64_t sub_1AAEAC2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AAF9DE80;
  *(v6 + 32) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B3200, sub_1AACC9DEC, type metadata accessor for Signal);
  v8 = swift_allocObject();
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = -2;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  v9 = sub_1AACBD668(v6);

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AACDB01C;
  *(v10 + 24) = v7;
  v11 = *(v9 + 144);
  v12 = *(v9 + 152);
  *(v9 + 144) = sub_1AACD8800;
  *(v9 + 152) = v10;

  sub_1AACB4A98(v11, v12);

  return v9;
}

unint64_t sub_1AAEAC468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AAF9DE80;
  *(v6 + 32) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B31F8, sub_1AACC9D70, type metadata accessor for Signal);
  v8 = swift_allocObject();
  sub_1AACF6D8C(v18);
  v9 = v18[4];
  *(v8 + 120) = v18[5];
  v10 = v18[7];
  *(v8 + 136) = v18[6];
  *(v8 + 152) = v10;
  v11 = v18[0];
  *(v8 + 56) = v18[1];
  v12 = v18[3];
  *(v8 + 72) = v18[2];
  *(v8 + 88) = v12;
  *(v8 + 104) = v9;
  *(v8 + 168) = v19;
  *(v8 + 40) = v11;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  v13 = sub_1AACBD668(v6);

  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AACDB01C;
  *(v14 + 24) = v7;
  v15 = *(v13 + 176);
  v16 = *(v13 + 184);
  *(v13 + 176) = sub_1AACD8800;
  *(v13 + 184) = v14;

  sub_1AACB4A98(v15, v16);

  return v13;
}

unint64_t sub_1AAEAC61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AAF9DE80;
  *(v6 + 32) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B31F0, sub_1AACC9CF4, type metadata accessor for Signal);
  v8 = swift_allocObject();
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = -2;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  v9 = sub_1AACBD668(v6);

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AAEB1540;
  *(v10 + 24) = v7;
  v11 = *(v9 + 176);
  v12 = *(v9 + 184);
  *(v9 + 176) = sub_1AACD8838;
  *(v9 + 184) = v10;

  sub_1AACB4A98(v11, v12);

  return v9;
}

uint64_t sub_1AAEAC7A4(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t))
{
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v15 = a4;
    a4(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v16 = a1;
      v8 = 0;
      v7 = v17;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1AC598D40](v8, a3);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v13 = a4;
            v14 = sub_1AAF8FFB4();
            a4 = v13;
            v6 = v14;
            goto LABEL_3;
          }

          if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v9 = *(a3 + 8 * v8 + 32);
        }

        sub_1AACD8DD8();
        swift_beginAccess();
        v10 = *(v9 + 40);
        if (!v10)
        {
          goto LABEL_21;
        }

        v17 = v7;
        a1 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (a1 >= v11 >> 1)
        {
          v15(v11 > 1, a1 + 1, 1);
          v7 = v17;
        }

        ++v8;
        *(v7 + 16) = a1 + 1;
        *(v7 + 8 * a1 + 32) = v10;
        if (v6 == v8)
        {
          a1 = v16;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_21:
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
LABEL_16:
    (a1)(&v17, v7);

    return v17;
  }

  return result;
}

uint64_t sub_1AAEAC9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AACD8DD8();
  swift_beginAccess();
  result = sub_1AACDAF30(a1 + 40, &v6, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
  if (*(&v7 + 1))
  {
    v5 = v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 32) = v8;
  }

  else
  {
    sub_1AACDD030(&v6, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

void sub_1AAEACA90(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_1AADAA0A4(v9);
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1AAEACFCC((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AAD68568(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_1AAD68568((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1AAEACFCC((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AADAA0A4(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        sub_1AADAA018(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_1AAEACFCC(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

void *sub_1AAEAD1B8(uint64_t a1)
{
  sub_1AACFE434(0, &qword_1ED9B2928, MEMORY[0x1E69E6EC8]);
  v2 = sub_1AAF90384();
  v3 = v2;
  v4 = 0;
  v5 = *(a1 + 64);
  v40 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v44 = v2 + 64;
  v10 = MEMORY[0x1E69E7CC0];
  v42 = v2;
  v43 = a1;
  v41 = v9;
  if ((v7 & v5) != 0)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v14 = v11 | (v4 << 6);
      v15 = *(a1 + 56);
      v16 = *(*(a1 + 48) + v14);
      v17 = *(v15 + 8 * v14);
      if (v17 >> 62)
      {
        v31 = *(v15 + 8 * v14);
        v32 = v8;
        v33 = v11 | (v4 << 6);
        v34 = *(*(a1 + 48) + v14);
        v35 = sub_1AAF8FFB4();
        v16 = v34;
        v14 = v33;
        v8 = v32;
        v18 = v35;
        v17 = v31;
        if (v18)
        {
LABEL_12:
          v46 = v16;
          v47 = v14;
          v48 = v8;
          v19 = v17;

          sub_1AAD411C8(0, v18 & ~(v18 >> 63), 0);
          if (v18 < 0)
          {
            goto LABEL_34;
          }

          v45 = v4;
          v20 = 0;
          v21 = v10;
          v22 = v19;
          v49 = v19 & 0xFFFFFFFFFFFFFF8;
          v50 = v19 & 0xC000000000000001;
          v23 = v19;
          do
          {
            if (v50)
            {
              v24 = MEMORY[0x1AC598D40](v20, v22);
            }

            else
            {
              if ((v20 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              if (v20 >= *(v49 + 16))
              {
                goto LABEL_32;
              }

              v24 = *(v22 + 8 * v20 + 32);
            }

            v25 = v18;

            sub_1AACD8DD8();
            swift_beginAccess();
            v26 = *(v24 + 48);
            if (v26 == 255)
            {
              goto LABEL_35;
            }

            v27 = *(v24 + 40);

            v29 = *(v21 + 16);
            v28 = *(v21 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_1AAD411C8((v28 > 1), v29 + 1, 1);
            }

            ++v20;
            *(v21 + 16) = v29 + 1;
            v30 = v21 + 16 * v29;
            *(v30 + 32) = v27;
            *(v30 + 40) = v26;
            v18 = v25;
            v22 = v23;
          }

          while (v25 != v20);

          v3 = v42;
          a1 = v43;
          v4 = v45;
          v9 = v41;
          v10 = MEMORY[0x1E69E7CC0];
          v14 = v47;
          v8 = v48;
          v16 = v46;
          goto LABEL_26;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_12;
        }
      }

      v21 = v10;
LABEL_26:
      *(v44 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v3[6] + v14) = v16;
      *(v3[7] + 8 * v14) = v21;
      v36 = v3[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_33;
      }

      v3[2] = v38;
    }

    while (v8);
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return v3;
    }

    v13 = *(v40 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t (*sub_1AAEAD53C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC598D40](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1AAEB1524;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1AAEAD5BC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC598D40](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1AAEAD63C;
  }

  __break(1u);
  return result;
}

double sub_1AAEAD644@<D0>(uint64_t **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = **a1;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *a2;
  }

  *a3 = v5;

  return result;
}

double sub_1AAEAD69C@<D0>(uint64_t **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = **a1;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *a2;
  }

  *a3 = v5;

  return result;
}

uint64_t sub_1AAEAD72C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  sub_1AAEAFA7C();
  sub_1AACFDD38();
  KeyPath = swift_getKeyPath();

  sub_1AAEAFAD0(a1, KeyPath);
  v7 = v6;

  *a3 = v7;
  return result;
}

uint64_t sub_1AAEAD7E8@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AAEA001C(**a1);
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1AAEAD844@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AAEA00F0(**a1);
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

double sub_1AAEAD878(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void sub_1AAEAD888(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v5 = *(a1 + 152);
  v118 = *(a1 + 160);
  v116 = *(a1 + 168);
  v177 = *(a1 + 80);
  v6 = *(a1 + 64);
  v175 = *(a1 + 48);
  v176 = v6;
  v7 = *(a1 + 32);
  v173 = *(a1 + 16);
  v174 = v7;
  v172 = *a1;
  v8 = *(a1 + 88);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v117 = v5;
  v126 = v8;
  v127 = v9;
  if (!v9)
  {
    v24 = v2;
    goto LABEL_11;
  }

  *&v178[0] = MEMORY[0x1E69E7CC0];
  sub_1AAF901E4();
  v11 = (v175 >> 61) & 3;
  v12 = v9 - 1;
  v13 = (v8 + 72);
  if ((*v13 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEA05B8;
  *(v15 + 24) = 0;
  sub_1AACF5D54(0, &qword_1EB4268F0, type metadata accessor for AxisMarkValues.Storage, type metadata accessor for Signal);
  v16 = swift_allocObject();
  v17 = *(*v16 + 256);
  v18 = type metadata accessor for AxisMarkValues.Storage(0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  v19 = (v16 + *(*v16 + 264));
  *v19 = 0;
  v19[1] = 0;
  v14 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AACDED14;
  *(v20 + 24) = v15;
  v21 = (v14 + *(*v14 + 264));
  v22 = *v21;
  v23 = v21[1];
  *v21 = sub_1AACD8838;
  v21[1] = v20;

  sub_1AACB4A98(v22, v23);

  while (1)
  {
    if (v11 != 2)
    {
      if (!v11)
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_90;
    }

    v154[0] = v14;
    v145[0] = a2;
    v161 = v154;
    v162 = v145;

    sub_1AAEA7C30(&v161, sub_1AAEB1F24, 0);

    sub_1AAF901B4();
    sub_1AAF901F4();
    sub_1AAF90204();
    sub_1AAF901C4();
    if (!v12)
    {
      break;
    }

    --v12;
    v13 += 80;
    if (*v13)
    {
      goto LABEL_6;
    }

LABEL_5:
    v14 = sub_1AACC9544(*(v13 - 1), type metadata accessor for AxisMarkValues.Storage);
  }

  v10 = *&v178[0];
  v24 = v107;
  v5 = v117;
LABEL_11:
  LODWORD(v25) = *(v4 + 106);
  if (v10 >> 62)
  {
    goto LABEL_83;
  }

  swift_bridgeObjectRetain_n();
  sub_1AAF90504();
  type metadata accessor for AnySignal();
  v26 = v10;
  while (2)
  {
    v27 = swift_allocObject();
    v27[2] = sub_1AAEAD7C0;
    v27[3] = 0;
    v27[4] = v10;
    sub_1AAEB0B08(0);
    swift_allocObject();
    v28 = sub_1AACF5068(v26, sub_1AAEB0AC4, v27, &unk_1F1FDE6B0, sub_1AAEB1084, sub_1AACB8784);
    v178[1] = v174;
    v178[2] = v175;
    v178[0] = v173;
    if ((BYTE7(v175) & 0x40) == 0)
    {
LABEL_90:
      __break(1u);
      return;
    }

    v29 = v28;
    v30 = *(v4 + 128);

    sub_1AACF5118(v178, &v161);
    v110 = v30;
    v31 = sub_1AAEB7D18(&v172, v25, a2, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = *(v24 + 56);
    sub_1AACF2A28(v31, v25, isUniquelyReferenced_nonNull_native);

    v33 = v161;
    *(v24 + 56) = v161;
    if (v33[2] && (sub_1AACB6398(v25), (v34 & 1) != 0) && (sub_1AAEAF504(0), (v111 = swift_dynamicCastClass()) != 0))
    {
    }

    else
    {
      v111 = 0;
    }

    sub_1AAEB0024(v178);
    v170 = a2;
    v169 = v5;
    v171[0] = &v170;
    v171[1] = &v169;
    v168 = v118;
    v171[2] = &v168;
    v35 = swift_allocObject();
    v36 = v175;
    *(v35 + 48) = v174;
    *(v35 + 64) = v36;
    *(v35 + 80) = v176;
    *(v35 + 96) = v177;
    v37 = v173;
    *(v35 + 16) = v172;
    *(v35 + 32) = v37;
    swift_retain_n();
    swift_retain_n();

    sub_1AACC74AC(&v172, &v161);
    v38 = sub_1AAEA663C(v171, sub_1AAEB0B84, v35);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v161 = *(v24 + 48);
    sub_1AACF2D68(v38, v25, v39);
    *(v24 + 48) = v161;
    if (!v127)
    {

      goto LABEL_81;
    }

    if (!v111)
    {

      goto LABEL_81;
    }

    v122 = *(v4 + 184);
    v114 = *(v4 + 120);
    v109 = *(v4 + 136);
    v160 = MEMORY[0x1E69E7CC0];
    v159 = MEMORY[0x1E69E7CC0];
    v113 = v10 & 0xC000000000000001;
    if ((v10 & 0xC000000000000001) == 0 && v127 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_86:
      type metadata accessor for AnySignal();

      v88 = sub_1AAF902D4();

      goto LABEL_66;
    }

    v106 = v29;
    v123 = v25;
    v108 = v10 + 32;

    v40 = 0;
    v112 = v127 - 1;
    v41 = v126 + 13;
    v126 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v42 = *(v41 - 9);
      v43 = *(v41 - 64);
      v44 = *(v41 - 7);
      v45 = *(v41 - 48);
      v46 = *(v41 - 3);
      v47 = *(v41 - 16);
      v121 = *(v41 - 1);
      v119 = v41;
      v120 = *v41;
      v128 = v40;
      if (v113)
      {
        v48 = MEMORY[0x1AC598D40]();
      }

      else
      {
        v48 = *(v108 + 8 * v40);
      }

      v157 = v117;
      v156 = v118;
      v158[0] = &v157;
      v158[1] = &v156;
      v155 = v48;
      v158[2] = &v155;
      v49 = swift_allocObject();
      *(v49 + 16) = 2;

      v50 = sub_1AAEA7054(v158, sub_1AAEB0B8C, v49);
      if (v43)
      {
        v25 = 0;
        v51 = v123;
        if ((v45 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_34:
        v52 = 0;
        if (v47)
        {
          goto LABEL_35;
        }

LABEL_30:

        v53 = sub_1AACF57BC(v46, &type metadata for AxisMarksContentStorage);

        v124 = v50;
        if (v25)
        {
          goto LABEL_31;
        }

LABEL_36:
        v56 = swift_allocObject();
        *(v56 + 16) = v128;
        *(v56 + 24) = v51;
        *(v56 + 25) = 2;

        v54 = sub_1AACFB1D4(&v161, sub_1AAEB1500, v56);
        if (!v52)
        {
          goto LABEL_37;
        }

LABEL_32:
        swift_retain_n();
        v55 = v52;
      }

      else
      {

        v25 = sub_1AACF57BC(v42, &type metadata for AxisMarkPreset.Storage);

        v51 = v123;
        if (v45)
        {
          goto LABEL_34;
        }

LABEL_29:

        v52 = sub_1AACF57BC(v44, &type metadata for AxisMarkPosition.Storage);

        if ((v47 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_35:
        v53 = 0;
        v124 = v50;
        if (!v25)
        {
          goto LABEL_36;
        }

LABEL_31:

        v54 = v25;
        if (v52)
        {
          goto LABEL_32;
        }

LABEL_37:
        v57 = swift_allocObject();
        *(v57 + 16) = v128;
        *(v57 + 24) = v51;
        *(v57 + 25) = 2;
        swift_retain_n();
        v55 = sub_1AACF34B0(&v161, sub_1AAEB1504, v57);
      }

      if (v53)
      {

        v58 = v53;
      }

      else
      {
        v59 = swift_allocObject();
        *(v59 + 16) = sub_1AAEB27C0;
        *(v59 + 24) = 0;
        sub_1AACC9BB0(0, &qword_1EB4268F8, &type metadata for AxisMarksContentStorage, type metadata accessor for Signal);
        v60 = swift_allocObject();
        *(v60 + 40) = 0u;
        *(v60 + 56) = 0u;
        *(v60 + 72) = 0;
        *(v60 + 80) = -1;
        *(v60 + 88) = 0;
        *(v60 + 96) = 0;

        v58 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
        v61 = swift_allocObject();
        *(v61 + 16) = sub_1AACDED14;
        *(v61 + 24) = v59;
        v62 = *(v58 + 88);
        v63 = *(v58 + 96);
        *(v58 + 88) = sub_1AACD8838;
        *(v58 + 96) = v61;

        sub_1AACB4A98(v62, v63);
      }

      v153 = v54;
      v152 = v55;
      v154[0] = &v153;
      v154[1] = &v152;
      v150 = v124;
      v151 = v122;
      v154[2] = &v151;
      v154[3] = &v150;
      v64 = swift_allocObject();
      *(v64 + 16) = v114;
      *(v64 + 24) = 2;

      v65 = sub_1AACF35B8(v154, sub_1AAEB14F8, v64);
      v147 = v58;
      v148 = v48;
      v149[0] = &v148;
      v149[1] = &v147;
      v146 = v65;
      v149[2] = &v146;
      v66 = swift_allocObject();
      *(v66 + 16) = v114;
      *(v66 + 24) = v128;
      *(v66 + 32) = v123;
      *(v66 + 33) = 2;

      sub_1AAEA7678(v149, sub_1AAEB0B94, v66);
      v143 = v55;
      v144 = v54;
      v145[0] = &v144;
      v145[1] = &v143;
      v141 = v122;
      v142 = v124;
      v145[2] = &v142;
      v145[3] = &v141;
      v67 = swift_allocObject();
      *(v67 + 16) = v114;
      *(v67 + 24) = 2;

      v10 = sub_1AACF3C00(v145, sub_1AAEB14FC, v67);

      v138 = v58;
      v139 = v48;
      v140[0] = &v139;
      v140[1] = &v138;
      v136 = v116;
      v137 = v55;
      v140[2] = &v137;
      v140[3] = &v136;

      v68 = sub_1AAEA7340(v140, sub_1AACE0F14, v114);

      MEMORY[0x1AC598430](v69);
      if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AAF8F874();
      }

      sub_1AAF8F8C4();
      v115 = v159;

      v70 = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_1AAD692E8(0, v126[2] + 1, 1, v126);
      }

      v72 = v70[2];
      v71 = v70[3];
      v126 = v70;
      if (v72 >= v71 >> 1)
      {
        v126 = sub_1AAD692E8((v71 > 1), v72 + 1, 1, v70);
      }

      v126[2] = v72 + 1;
      v73 = &v126[4 * v72];
      v73[4] = v10;
      v73[5] = v121;
      *(v73 + 48) = v120;
      v73[7] = v68;
      if (v112 != v128)
      {
        v41 = v119 + 80;
        v40 = v128 + 1;
        continue;
      }

      break;
    }

    if (v115 >> 62)
    {
      type metadata accessor for AnySignal();

      v74 = sub_1AAF902D4();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1AAF90504();
      type metadata accessor for AnySignal();
      v74 = v115;
    }

    LODWORD(v29) = v123;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1AAD139CC;
    *(v4 + 24) = 0;
    *(v4 + 32) = v115;
    sub_1AACF5D54(0, &qword_1ED9B1738, sub_1AACE49D8, type metadata accessor for Signal);
    v75 = swift_allocObject();
    v75[6] = 0;
    v75[7] = 0;
    v75[5] = 0;
    a2 = sub_1AACBD668(v74);

    v76 = swift_allocObject();
    *(v76 + 16) = sub_1AAEB153C;
    *(v76 + 24) = v4;
    v77 = a2[6];
    v78 = a2[7];
    a2[6] = sub_1AACD8838;
    a2[7] = v76;

    sub_1AACB4A98(v77, v78);
    v127 = a2;

    v79 = v126;
    v125 = v126[2];
    if (v125)
    {
      v5 = 0;
      v24 = (v126 + 7);
      while (v5 < v79[2])
      {
        v25 = *(v24 - 24);
        v80 = *v24;
        if (*(v24 - 8))
        {

          v81 = 0;
          v82 = sub_1AAD1CD04;
          v83 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v84 = *(v24 - 16);

          v81 = sub_1AACF57BC(v84, &type metadata for AxisCompositingLayer);
          sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_1AAF9DE80;
          *(v83 + 32) = v81;
          v82 = sub_1AAEB1534;
        }

        sub_1AACF43A8(0);
        swift_allocObject();

        v85 = sub_1AACF42F4(v83, v82, v81);
        v134 = v111;
        v135 = v25;
        v161 = &v135;
        v162 = &v134;
        v4 = v109;
        v132 = v109;
        v133 = v110;
        v163 = &v133;
        v164 = &v132;
        a2 = v127;
        v130 = v80;
        v131 = v127;
        v165 = &v131;
        v166 = &v130;
        v129 = v85;
        v167 = &v129;
        v86 = swift_allocObject();
        *(v86 + 16) = 2;
        *(v86 + 24) = v5;
        *(v86 + 32) = v123;

        v10 = sub_1AAEA6AFC(&v161, sub_1AAEB0BA4, v86);

        MEMORY[0x1AC598430](v87);
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        ++v5;
        sub_1AAF8F8C4();

        v24 += 32;
        v79 = v126;
        if (v125 == v5)
        {
          v24 = v160;
          LODWORD(v29) = v123;
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_83:
      type metadata accessor for AnySignal();
      swift_bridgeObjectRetain_n();
      v26 = sub_1AAF902D4();

      continue;
    }

    break;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_64:

  if (v24 >> 62)
  {
    goto LABEL_86;
  }

  sub_1AAF90504();
  type metadata accessor for AnySignal();
  v88 = v24;
LABEL_66:
  v89 = swift_allocObject();
  v89[2] = sub_1AAD1D374;
  v89[3] = 0;
  v89[4] = v24;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v90 = swift_allocObject();
  v90[6] = 0;
  v90[7] = 0;
  v90[5] = 0xF000000000000007;
  v91 = sub_1AACBD668(v88);

  v92 = swift_allocObject();
  *(v92 + 16) = sub_1AAD144DC;
  *(v92 + 24) = v89;
  v93 = *(v91 + 48);
  v94 = *(v91 + 56);
  *(v91 + 48) = sub_1AACD8838;
  *(v91 + 56) = v92;

  sub_1AACB4A98(v93, v94);

  v135 = v127;
  v161 = &v135;

  sub_1AACFB538(&v161, sub_1AAD149AC, 0);
  v133 = v127;
  v134 = &v133;
  sub_1AACFB538(&v134, sub_1AAD14AE8, 0);

  v131 = v106;
  v132 = &v131;

  v95 = sub_1AAEA6928(&v132, sub_1AAEAD7E8, 0);
  v96 = *v107;
  if (*(*v107 + 16) && (v97 = sub_1AACB6398(v29), (v98 & 1) != 0))
  {
    v99 = *(*(v96 + 56) + 8 * v97);
  }

  else
  {
    v99 = MEMORY[0x1E69E7CC0];
  }

  sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF9DE80;
  *(inited + 32) = v95;
  v130 = v99;

  sub_1AACF4B5C(inited);
  v101 = v130;
  v102 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v107;
  sub_1AACFB710(v101, v29, v102);
  *v107 = v130;

  MEMORY[0x1AC598430](v103);
  if (*((v107[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();

  MEMORY[0x1AC598430](v104);
  if (*((v107[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();

  if (v29)
  {
    MEMORY[0x1AC598430](v105);
    if (*((v107[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AAF8F874();
    }
  }

  else
  {
    MEMORY[0x1AC598430](v105);
    if (*((v107[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AAF8F874();
    }
  }

  sub_1AAF8F8C4();

LABEL_81:
}

double sub_1AAEAEF98(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void *sub_1AAEAEFD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEAD1B8(*(v1 + 16));
  *a1 = result;
  return result;
}

double sub_1AAEAF010(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2)
  {
  }

  return result;
}

double sub_1AAEAF02C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

void sub_1AAEAF0B4(uint64_t a1@<X8>)
{

  sub_1AAE9F898(a1);
}

void sub_1AAEAF0F0(uint64_t a1@<X8>)
{

  sub_1AAE9FB40(a1);
}

void sub_1AAEAF12C(uint64_t a1@<X8>)
{

  sub_1AAE9FE1C(a1);
}

void sub_1AAEAF168(uint64_t a1)
{
  if (!qword_1EB426830)
  {
    sub_1AACC9C1C(255, &qword_1EB4259C8, MEMORY[0x1E69E63B0], &type metadata for AnyChartSymbolShape, type metadata accessor for ConcreteScale);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB426830);
    }
  }
}

void sub_1AAEAF1EC(uint64_t a1)
{
  if (!qword_1EB426838)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4080, MEMORY[0x1E69E6158], &type metadata for AnyChartSymbolShape, type metadata accessor for ConcreteScale);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB426838);
    }
  }
}

void sub_1AAEAF270(uint64_t a1)
{
  if (!qword_1EB426840)
  {
    sub_1AACC9C1C(255, &qword_1EB4259C8, MEMORY[0x1E69E63B0], &type metadata for AnyChartSymbolShape, type metadata accessor for ConcreteScale);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB426840);
    }
  }
}

void sub_1AAEAF2F4(uint64_t a1)
{
  if (!qword_1EB426848)
  {
    sub_1AACC9C1C(255, &qword_1EB426850, MEMORY[0x1E69E63B0], MEMORY[0x1E697DD48], type metadata accessor for ConcreteScale);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB426848);
    }
  }
}

void sub_1AAEAF378(uint64_t a1)
{
  if (!qword_1EB426858)
  {
    sub_1AACC9C1C(255, &qword_1ED9B40A8, MEMORY[0x1E69E6158], MEMORY[0x1E697DD48], type metadata accessor for ConcreteScale);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB426858);
    }
  }
}

void sub_1AAEAF3FC(uint64_t a1)
{
  if (!qword_1ED9AF668)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4060, MEMORY[0x1E69E63B0], MEMORY[0x1E697E0B8], type metadata accessor for ConcreteScale);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9AF668);
    }
  }
}

void sub_1AAEAF480(uint64_t a1)
{
  if (!qword_1ED9AF670)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4098, MEMORY[0x1E69E6158], MEMORY[0x1E697E0B8], type metadata accessor for ConcreteScale);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9AF670);
    }
  }
}

void sub_1AAEAF504(uint64_t a1)
{
  if (!qword_1ED9AF680[0])
  {
    sub_1AACC9C1C(255, qword_1ED9B40B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1ED9AF680);
    }
  }
}

uint64_t sub_1AAEAF588@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEABC2C(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  *a1 = result;
  return result;
}

unint64_t sub_1AAEAF5EC()
{
  result = qword_1EB426860;
  if (!qword_1EB426860)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1AACC9BB0(255, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable, MEMORY[0x1E69E6720]);
    sub_1AACC9BB0(255, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], v1);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB426860);
  }

  return result;
}

unint64_t sub_1AAEAF694()
{
  result = qword_1EB426AE0;
  if (!qword_1EB426AE0)
  {
    sub_1AAEB0198(255, &qword_1EB426870, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable);
    sub_1AACC9BB0(255, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_1EB426AE0);
  }

  return result;
}

unint64_t sub_1AAEAF740()
{
  result = qword_1EB426878;
  if (!qword_1EB426878)
  {
    sub_1AAEAF7DC(255);
    sub_1AACF5D54(255, &unk_1EB426AC0, type metadata accessor for CGPoint, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB426878);
  }

  return result;
}

void sub_1AAEAF7DC(uint64_t a1)
{
  if (!qword_1EB426AB0)
  {
    sub_1AACC9BB0(255, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB426AB0);
    }
  }
}

double sub_1AAEAF868()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v4;
  v7 = v3;
  return sub_1AAEAB64C(v1, v2, v6);
}

void sub_1AAEAF8BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACC9C1C(255, a3, a4, MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
    type metadata accessor for CGSize(255);
    sub_1AAF8DF14();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_1AAEAF980@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1AAEAB840(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), a1, a2, a3);
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t sub_1AAEAF9C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEAB9DC(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  *a1 = result;
  return result;
}

unint64_t sub_1AAEAFA7C()
{
  result = qword_1ED9B5118[0];
  if (!qword_1ED9B5118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B5118);
  }

  return result;
}

void sub_1AAEAFAD0(uint64_t a1, uint64_t a2)
{
  sub_1AACF92C8(0, &qword_1ED9B2970, MEMORY[0x1E69E6EC8]);
  v3 = sub_1AAF90384();
  v4 = v3;
  v5 = 0;
  v23 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v13 = v3 + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v5 << 6);
      v18 = *(*(v23 + 48) + v17);

      swift_getAtKeyPath();

      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(v4[6] + v17) = v18;
      v19 = (v4[7] + 48 * v17);
      *(v19 + 25) = *&v25[9];
      *v19 = v24;
      v19[1] = *v25;
      v20 = v4[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v4[2] = v22;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return;
      }

      v16 = *(v7 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1AAEAFC74(uint64_t a1)
{
  if (!qword_1EB4268B0)
  {
    sub_1AACC9BB0(255, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
    v1 = sub_1AAF8F914();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4268B0);
    }
  }
}

void sub_1AAEAFD08(uint64_t a1)
{
  if (!qword_1EB4268C0)
  {
    type metadata accessor for CGSize(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB4268C0);
    }
  }
}

void sub_1AAEAFD78(uint64_t a1)
{
  if (!qword_1EB4268C8)
  {
    sub_1AACC9BB0(255, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
    v1 = sub_1AAF8F914();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4268C8);
    }
  }
}

void sub_1AAEAFDF4(uint64_t a1@<X8>)
{
  *a1 = sub_1AAEAB444(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

void sub_1AAEAFE28()
{
  if (!qword_1EB4268D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB4268D8);
    }
  }
}

double sub_1AAEAFE88@<D0>(double *a1@<X8>)
{
  (*(v1 + 16))(&v4, v5);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1AAEAFED8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v4;
  v7 = v3;
  return sub_1AAEAB2BC(v1, v2, v6);
}

void sub_1AAEAFF10(uint64_t a1)
{
  if (!qword_1EB4268E8)
  {
    type metadata accessor for SgMeasurements(255);
    sub_1AAD45E1C(255, &qword_1ED9B2768, MEMORY[0x1E6981170]);
    sub_1AACC9BB0(255, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB4268E8);
    }
  }
}

uint64_t sub_1AAEAFFE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEAC7A4(*(v1 + 16), *(v1 + 24), *(v1 + 32), sub_1AAD4124C);
  *a1 = result;
  return result;
}

void sub_1AAEB00B4(uint64_t a1)
{
  if (!qword_1ED9B0268)
  {
    type metadata accessor for AxisMarkValues.Storage(255);
    v1 = MEMORY[0x1E69E63B0];
    sub_1AACC9BB0(255, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1AACC9BB0(255, &qword_1ED9B2A30, v1, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED9B0268);
    }
  }
}

void sub_1AAEB0198(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACC9BB0(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AAEB0240(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACC9BB0(255, a3, a4, MEMORY[0x1E69E62F8]);
    sub_1AAF8CAA4();
    sub_1AAF8CBA4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_1AAEB02DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AAEB0340(uint64_t a1)
{
  if (!qword_1EB426900)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB426900);
    }
  }
}

void sub_1AAEB03E0(uint64_t a1)
{
  if (!qword_1EB426908)
  {
    sub_1AACC9C1C(255, &qword_1EB426910, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63B0], type metadata accessor for ConcreteScale);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB426908);
    }
  }
}

void sub_1AAEB0460(uint64_t a1)
{
  if (!qword_1EB426918)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB426918);
    }
  }
}

uint64_t sub_1AAEB04F4@<X0>(void (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AAEAAE58(*(v2 + 16), *(v2 + 24), *(v2 + 32), a1);
  *a2 = result;
  return result;
}

void sub_1AAEB0550(uint64_t a1)
{
  if (!qword_1EB426920)
  {
    sub_1AACC9BB0(255, &qword_1ED9AEF98, MEMORY[0x1E697E0B8], MEMORY[0x1E69E62F8]);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB426920);
    }
  }
}

void sub_1AAEB05E4(uint64_t a1)
{
  if (!qword_1EB426928)
  {
    sub_1AACC9BB0(255, &qword_1ED9AEF98, MEMORY[0x1E697E0B8], MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB426928);
    }
  }
}

uint64_t sub_1AAEB06B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEAAB20(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

void sub_1AAEB0704(uint64_t a1)
{
  if (!qword_1EB426948)
  {
    sub_1AACC9BB0(255, &qword_1EB426940, MEMORY[0x1E697DD48], MEMORY[0x1E69E62F8]);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB426948);
    }
  }
}

void sub_1AAEB0798(uint64_t a1)
{
  if (!qword_1EB426950)
  {
    sub_1AACC9BB0(255, &qword_1EB426940, MEMORY[0x1E697DD48], MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB426950);
    }
  }
}

unint64_t sub_1AAEB0814()
{
  result = qword_1EB426958;
  if (!qword_1EB426958)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB426958);
  }

  return result;
}

unint64_t sub_1AAEB0894()
{
  result = qword_1EB426960;
  if (!qword_1EB426960)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB426960);
  }

  return result;
}

unint64_t sub_1AAEB0914()
{
  result = qword_1EB426968;
  if (!qword_1EB426968)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB426968);
  }

  return result;
}

unint64_t sub_1AAEB0994()
{
  result = qword_1EB426970;
  if (!qword_1EB426970)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB426970);
  }

  return result;
}

uint64_t sub_1AAEB0A50@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 64);
  v6 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v8[1] = v6;
  v9 = v5;
  result = sub_1AAEAA7D0(v3, v4, v8);
  *a1 = result;
  return result;
}

double sub_1AAEB0AA4(uint64_t a1)
{
  if (a1 != 2)
  {
    return sub_1AAE28C94(a1);
  }

  return result;
}

double sub_1AAEB0AB4(uint64_t a1)
{
  if (a1 != 2)
  {
    return sub_1AAE28C84(a1);
  }

  return result;
}

uint64_t sub_1AAEB0AC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEAC7A4(*(v1 + 16), *(v1 + 24), *(v1 + 32), sub_1AAD41208);
  *a1 = result;
  return result;
}

void sub_1AAEB0B08(uint64_t a1)
{
  if (!qword_1ED9AF660)
  {
    sub_1AACC9BB0(255, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9AF660);
    }
  }
}

uint64_t sub_1AAEB0BA4@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AAEA91D8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t sub_1AAEB0BEC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AAEAC248(*(v3 + 16), *(v3 + 24), *(v3 + 32), a1, a2);
  *a3 = result;
  *(a3 + 8) = v6;
  return result;
}

void sub_1AAEB0D48(uint64_t a1)
{
  if (!qword_1EB426978)
  {
    sub_1AACC9C1C(255, &qword_1EB426980, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], type metadata accessor for ConcreteScale);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB426978);
    }
  }
}

void sub_1AAEB0E40(uint64_t a1)
{
  if (!qword_1EB426990)
  {
    sub_1AACC9BB0(255, &qword_1EB426988, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E62F8]);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB426990);
    }
  }
}

void sub_1AAEB0ED4(uint64_t a1)
{
  if (!qword_1EB426998)
  {
    sub_1AACC9BB0(255, &qword_1EB426988, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB426998);
    }
  }
}

uint64_t sub_1AAEB10D4@<X0>(uint64_t (*a1)(void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4], v2[5]);
  *a2 = result;
  return result;
}

void sub_1AAEB110C(uint64_t a1)
{
  if (!qword_1ED9AEC00)
  {
    type metadata accessor for AxisMarkValues.Storage(255);
    sub_1AACC9BB0(255, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AEC00);
    }
  }
}

void sub_1AAEB11A0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AAEB11FC(255, a3, a4, a5);
    v6 = sub_1AAF8FE74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAEB11FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    sub_1AACC9BB0(255, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

char **sub_1AAEB1288@<X0>(char **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (**result != 2)
  {
    v3 = **result;
  }

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1AAEB12A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AAEAA994(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *a1 = result & 1;
  return result;
}

void *sub_1AAEB12E0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4, v5);
  *a1 = v4;
  return result;
}

uint64_t sub_1AAEB1324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1AAEB136C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_1AAEB13D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1AAEB141C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 10;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AAEB146C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = -a2 << 10;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1AAEB1544(long double a1, long double a2)
{
  if (a2 > 0.0)
  {
    v4 = 1.0;
    if (a1 > 0.0)
    {
      v4 = floor(log10(a1));
    }

    v5 = ceil(log10(a2));
    v6 = MEMORY[0x1E69E7CC0];
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      sub_1AAEB16D8(v4, v5, 1.0);
      v6 = v7;
    }

    if (a1 < 0.0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >= 0.0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v8 = 1.0;
  if (a2 < 0.0)
  {
    v8 = floor(log10(-a2));
  }

  v9 = ceil(log10(-a1));
  v10 = MEMORY[0x1E69E7CC0];
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_1AAEB18D4(v8, v9, 1.0);
    v10 = sub_1AAEC5500(v11);
  }

LABEL_15:
  v12 = MEMORY[0x1E69E7CC0];
  if (*(v6 + 16) && *(v10 + 2))
  {
    v12 = &unk_1F1FCEDD8;
  }

  sub_1AADC8AB4(v12);
  sub_1AADC8AB4(v6);

  return v10;
}

void sub_1AAEB16D8(double a1, double a2, double a3)
{
  v6 = sub_1AAEB2830(a1, a2, a3);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1AACEF664(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  v7 = 0;
  v8 = 0;
  if (!v6)
  {
    v16 = a1;
    goto LABEL_16;
  }

  v9 = a1;
  do
  {
    v10 = v9 <= a2;
    if (a3 > 0.0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      if (v7 & 1 | (v9 != a2))
      {
        goto LABEL_28;
      }

      v7 = 1;
      v11 = v9;
    }

    else
    {
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_29;
      }

      v11 = a1 + v8 * a3;
    }

    v14 = *(v23 + 16);
    v13 = *(v23 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1AACEF664((v13 > 1), v14 + 1, 1);
    }

    v15 = __exp10(v9);
    *(v23 + 16) = v14 + 1;
    *(v23 + 8 * v14 + 32) = v15;
    v16 = v11;
    v9 = v11;
    --v6;
  }

  while (v6);
  while (1)
  {
LABEL_16:
    v17 = v16 <= a2;
    if (a3 > 0.0)
    {
      v17 = v16 >= a2;
    }

    if (!v17)
    {
      break;
    }

    if ((v16 != a2) | v7 & 1)
    {
      return;
    }

    v7 = 1;
    v18 = v16;
LABEL_23:
    v20 = *(v23 + 16);
    v19 = *(v23 + 24);
    if (v20 >= v19 >> 1)
    {
      v22 = v16;
      sub_1AACEF664((v19 > 1), v20 + 1, 1);
      v16 = v22;
    }

    v21 = __exp10(v16);
    *(v23 + 16) = v20 + 1;
    *(v23 + 8 * v20 + 32) = v21;
    v16 = v18;
  }

  v12 = __OFADD__(v8++, 1);
  if (!v12)
  {
    v18 = a1 + v8 * a3;
    goto LABEL_23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1AAEB18D4(double a1, double a2, double a3)
{
  v6 = sub_1AAEB2830(a1, a2, a3);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1AACEF664(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  v7 = 0;
  v8 = 0;
  if (!v6)
  {
    v16 = a1;
    goto LABEL_16;
  }

  v9 = a1;
  do
  {
    v10 = v9 <= a2;
    if (a3 > 0.0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      if (v7 & 1 | (v9 != a2))
      {
        goto LABEL_28;
      }

      v7 = 1;
      v11 = v9;
    }

    else
    {
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_29;
      }

      v11 = a1 + v8 * a3;
    }

    v14 = *(v23 + 16);
    v13 = *(v23 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1AACEF664((v13 > 1), v14 + 1, 1);
    }

    v15 = __exp10(v9);
    *(v23 + 16) = v14 + 1;
    *(v23 + 8 * v14 + 32) = -v15;
    v16 = v11;
    v9 = v11;
    --v6;
  }

  while (v6);
  while (1)
  {
LABEL_16:
    v17 = v16 <= a2;
    if (a3 > 0.0)
    {
      v17 = v16 >= a2;
    }

    if (!v17)
    {
      break;
    }

    if ((v16 != a2) | v7 & 1)
    {
      return;
    }

    v7 = 1;
    v18 = v16;
LABEL_23:
    v20 = *(v23 + 16);
    v19 = *(v23 + 24);
    if (v20 >= v19 >> 1)
    {
      v22 = v16;
      sub_1AACEF664((v19 > 1), v20 + 1, 1);
      v16 = v22;
    }

    v21 = __exp10(v16);
    *(v23 + 16) = v20 + 1;
    *(v23 + 8 * v20 + 32) = -v21;
    v16 = v18;
  }

  v12 = __OFADD__(v8++, 1);
  if (!v12)
  {
    v18 = a1 + v8 * a3;
    goto LABEL_23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1AAEB1AD8(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v15 = a1[1];
  v17 = *a1[2];
  v18 = a4 == 1 || a4 == 2 && a3 == 2;
  v19 = *v15;
  v20 = *(v15 + 8);
  sub_1AAEB2A3C(v16, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v32 = *v14;
      v33 = COERCE_DOUBLE(sub_1AACEC978(v17));
      if (v35)
      {
        v37 = 1.0;
      }

      else
      {
        v37 = v34;
      }

      if (v35)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = v33;
      }

      v36.n128_u64[0] = v32;
      sub_1AAEC512C(v61, v36, v38, v37);
      sub_1AAEC4CDC();
      v31 = sub_1AAEC4FD4(v39, a2 & 1, v38, v37);

      if (v18)
      {
        v40 = *(v31 + 16);
        if (v40)
        {
          v41 = (v31 + 32);
          v42 = MEMORY[0x1E69E7CC0];
          do
          {
            v45 = *v41;
            if (*v41 > 0.0)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v60 = v42;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1AACEF664(0, *(v42 + 16) + 1, 1);
                v42 = v60;
              }

              v44 = *(v42 + 16);
              v43 = *(v42 + 24);
              if (v44 >= v43 >> 1)
              {
                sub_1AACEF664((v43 > 1), v44 + 1, 1);
                v42 = v60;
              }

              *(v42 + 16) = v44 + 1;
              *(v42 + 8 * v44 + 32) = v45;
            }

            ++v41;
            --v40;
          }

          while (v40);
        }

        else
        {
          v42 = MEMORY[0x1E69E7CC0];
        }

        sub_1AAEB2AA0(v61, sub_1AAD172C4);

        v31 = v42;
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    v31 = *v14;
    if (!*(v14 + 8))
    {
      goto LABEL_59;
    }

    sub_1AADD90F0();
LABEL_40:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_59;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1AACAF0D8(0);
    v48 = *(v47 + 64);
    sub_1AADD90F0();
    sub_1AAEB2AA0(v14 + v48, sub_1AACF2330);
    v49 = sub_1AAF8CB94();
    (*(*(v49 - 8) + 8))(v14, v49);
    goto LABEL_40;
  }

  if (*(v14 + 8))
  {
    v22 = 4;
  }

  else
  {
    v22 = *v14;
  }

  if (v22 <= 0)
  {
    goto LABEL_40;
  }

  v23 = v14[2];
  v24 = *(v14 + 24);
  v25 = COERCE_DOUBLE(sub_1AACEC978(v17));
  if (v27)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v26;
  }

  if (v27)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v25;
  }

  if (v18)
  {
    v30 = sub_1AAEB1544(v29, v28);
    v31 = sub_1AAEC4FD4(v30, a2 & 1, v29, v28);

LABEL_59:
    *a6 = v31;
    return;
  }

  if (v19 <= 0.0)
  {
    v50 = 1;
  }

  else
  {
    v50 = v20;
  }

  v51 = v28;
  if ((v50 & 1) != 0 || (v51 = v19 + v29, v29 <= v19 + v29))
  {
    v52 = 0.0;
    if (a5)
    {
      v52 = 1.0;
    }

    if (v24)
    {
      v53 = v52;
    }

    else
    {
      v53 = v23;
    }

    v54 = type metadata accessor for AxisMarkValues.Storage(0);
    v55 = *(v16 + *(v54 + 20));
    if (v55 == 2)
    {
      LOBYTE(v55) = a2;
    }

    v56 = *(v16 + *(v54 + 24));
    if (v56 == 2)
    {
      LOBYTE(v56) = a2;
    }

    v57.n128_f64[0] = sub_1AADEAF9C(v22, v55 & 1, v56 & 1, v29, v51, v53);
    sub_1AAEC512C(v61, v57, v29, v28);
    sub_1AAEC4CDC();
    v31 = sub_1AAEC4FD4(v58, a2 & 1, v29, v28);

LABEL_56:
    sub_1AAEB2AA0(v61, sub_1AAD172C4);
    goto LABEL_59;
  }

  __break(1u);
}

void sub_1AAEB1F24(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *a1[1];
  sub_1AAEB2A3C(v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v8 = *v6;
      if (v6[8] >= 2u)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_1AADD90F0();
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1AACAF0D8(0);
    sub_1AAEB2AA0(&v6[*(v10 + 64)], sub_1AACF2330);
    v11 = sub_1AAF8CB94();
    (*(*(v11 - 8) + 8))(v6, v11);
    goto LABEL_8;
  }

LABEL_9:
  *a2 = v8;
}

void sub_1AAEB2080(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a2;
  v8 = **a1;
  v9 = *(*a1 + 8);
  v11 = *(*a1 + 16);
  v10 = *(*a1 + 24);
  v54 = **(a1 + 8);
  v55 = a3;
  v12 = *(a1 + 16);
  v13 = **(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(v14 + 8);
  v56 = *v14;
  v16 = *(v14 + 16);
  v17 = *a4;
  v18 = v12[3];
  v19 = v12[4];
  v20 = sub_1AACBB42C(v12, v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v21);
  if (qword_1EB422BA8 != -1)
  {
    swift_once();
  }

  v25 = qword_1EB4320A0;
  v26 = qword_1EB422BB8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_1EB4320B0;

  sub_1AACDF494(v23, v25, v27, v18, v19, v60);
  if (v17 == 9)
  {
    LOBYTE(v17) = v57;
    if (v57 != 1)
    {
      if (v57)
      {
        __break(1u);
        return;
      }

      if (v11 != 0.0 && v10 <= 0.0)
      {
        LOBYTE(v17) = 1;
      }

      else
      {
        LOBYTE(v17) = 2;
      }
    }
  }

  v52 = v60[1];
  v53 = v60[0];
  v51 = v61;
  if (v16)
  {
    if (v17 > 8u)
    {
      goto LABEL_33;
    }

    if (((1 << v17) & 0x1E0) != 0)
    {
      goto LABEL_24;
    }

    if (((1 << v17) & 6) != 0)
    {
      if (v57 == 1 && (v9 > 0.0 || v8 == 0.0))
      {
        v29 = sub_1AAF8F144();
      }

      else
      {
        v29 = sub_1AAF8F134();
      }

      goto LABEL_25;
    }

    if (((1 << v17) & 0x18) != 0)
    {
LABEL_24:
      v29 = sub_1AAF8F124();
    }

    else
    {
LABEL_33:
      v29 = sub_1AAF8F104();
    }

LABEL_25:
    v56 = v29;
    v50 = v30;
    goto LABEL_26;
  }

  v50 = v15;
LABEL_26:
  v31 = v17 - 3;
  v32 = *(a5 + 16);
  v33 = *(v32 + 32);

  v34 = v55;
  v35 = v57;
  v36 = sub_1AACE0D48(v55, v57, v33);
  v37 = *(v32 + 32);
  *(v32 + 32) = v36;
  v38 = *(a5 + 24);
  *(a5 + 24) = v36;
  v39 = sub_1AAF8DFB4();
  v59 = v40 & 1;
  v58 = v41 & 1;
  v43 = sub_1AACDFA18(v60, v36, v39, v40 & 1, v42, v41 & 1);
  v45 = v44;
  *(a5 + 24) = v38;
  *(v32 + 32) = v37;

  *a6 = v17;
  if (v31 >= 2)
  {
    v46 = v45;
  }

  else
  {
    v46 = v43;
  }

  if (v31 >= 2)
  {
    v47 = v43;
  }

  else
  {
    v47 = v45;
  }

  v48 = v50;
  *(a6 + 8) = v56;
  *(a6 + 16) = v48;
  *(a6 + 24) = v13;
  v49 = v52;
  *(a6 + 32) = v53;
  *(a6 + 48) = v49;
  *(a6 + 64) = v51;
  *(a6 + 72) = v31 < 2;
  *(a6 + 80) = v47;
  *(a6 + 88) = v46;
  *(a6 + 96) = v34;
  *(a6 + 104) = v35;
}

void sub_1AAEB240C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  v39 = *(*a1 + 24);
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  v13 = *(v3 + 48);
  v14 = *(v3 + 56);
  v15 = *(v3 + 64);
  v43 = *(v3 + 72);
  v41 = *(v3 + 88);
  v42 = *(v3 + 80);
  v16 = *(v3 + 96);
  v17 = *(v3 + 104);
  v18 = *(a1 + 16);
  v20 = *v18;
  v19 = v18[1];
  v21.n128_f64[0] = sub_1AAE12380(v8, v9, *v3);
  v24 = v23;
  v26 = v25;
  if (((1 << v7) & 0x1E1) != 0)
  {
    v27 = v20 * v21.n128_f64[0];
LABEL_9:
    v30 = v19 * v22;
    goto LABEL_10;
  }

  if (((1 << v7) & 6) == 0)
  {
    v27 = (v5 + v4 + v20) * v21.n128_f64[0] - v4;
    goto LABEL_9;
  }

  v28 = v20 * v21.n128_f64[0];
  v29 = (v5 + v4 + v20) * v21.n128_f64[0] - v4;
  if (v17 == 1)
  {
    v27 = v29;
  }

  else
  {
    v27 = v28;
  }

  v30 = (v39 + v6 + v19) * v22 - v6;
LABEL_10:
  v21.n128_u64[0] = v10;
  sub_1AAE1264C(v8, v9, v7, v21);
  v32 = v31;
  v34 = v33;
  v35 = *(*(a2 + 16) + 32);

  v36 = sub_1AACE0D48(v16, v17, v35);
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v27 + v32;
  *(v37 + 32) = v30 + v34;
  *(v37 + 40) = v24;
  *(v37 + 48) = v26;
  *(v37 + 56) = v11;
  *(v37 + 64) = v12;
  *(v37 + 72) = v13;
  *(v37 + 80) = v14;
  *(v37 + 88) = v15;
  *(v37 + 96) = v43;
  *(v37 + 104) = v42;
  *(v37 + 112) = v41;
  *(v37 + 120) = 2;
  *(v37 + 128) = 0u;
  *(v37 + 144) = 0u;
  *(v37 + 160) = 0u;
  *(v37 + 176) = 6;
  v38 = v37 | 0xA000000000000000;
  *(v37 + 184) = 0;
  sub_1AAEB2948(v11, v12, v13, v14, v15);

  *a3 = v38;
}

double **sub_1AAEB2628@<X0>(double **result@<X0>, double *a2@<X8>)
{
  v2 = result[1];
  v4 = **result;
  v3 = (*result)[1];
  v6 = (*result)[2];
  v5 = (*result)[3];
  v7 = *v2;
  v8 = v2[3];
  v10 = v2[10];
  v9 = v2[11];
  if (v7 <= 3)
  {
    if (*v2 > 1u)
    {
      if (v7 == 2)
      {
        v5 = v5 + v8 + v9;
      }

      else
      {
        v4 = v4 + v8 + v10;
      }
    }

    else if (*v2)
    {
      v6 = v6 + v8 + v9;
    }
  }

  else
  {
    if (*v2 <= 5u)
    {
      if (v7 == 4)
      {
        v3 = v3 + v8 + v10;
        goto LABEL_28;
      }

      v13 = v8 + v10;
      if (v4 <= v13)
      {
        v4 = v13;
      }
    }

    else
    {
      v11 = v8 + v10;
      if (v7 != 6)
      {
        if (v7 == 7)
        {
          if (v4 <= v11)
          {
            v4 = v11;
          }
        }

        else if (v3 <= v11)
        {
          v3 = v11;
        }

        v12 = v8 + v9;
        if (v5 <= v12)
        {
          v5 = v12;
        }

        goto LABEL_28;
      }

      if (v3 <= v11)
      {
        v3 = v11;
      }
    }

    v14 = v8 + v9;
    if (v6 <= v14)
    {
      v6 = v14;
    }
  }

LABEL_28:
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
  a2[3] = v5;
  return result;
}

uint64_t sub_1AAEB2704()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  MEMORY[0x1AC5992C0](v2);
  return sub_1AAF906F4();
}

uint64_t sub_1AAEB2764(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v2);
  MEMORY[0x1AC5992C0](v3);
  return sub_1AAF906F4();
}

uint64_t sub_1AAEB27C0@<X0>(uint64_t a1@<X8>)
{
  sub_1AADD7908(0);
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = sub_1AADD79FC();
  v3 = swift_allocObject();
  *a1 = v3;
  result = sub_1AADCF710(v5, (v3 + 16));
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1AAEB2830(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AAEB28A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AACD8DD8();
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 40);
    *(a2 + 16) = 0;
  }

  return result;
}

double sub_1AAEB2948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
  }

  else
  {
    sub_1AACD7304(a1, a2, a3 & 1);
  }

  return result;
}

void sub_1AAEB29A4(uint64_t a1)
{
  if (!qword_1EB4269A8)
  {
    sub_1AACC14E4(255, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB4269A8);
    }
  }
}

uint64_t sub_1AAEB2A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEB2AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAEB2B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1AAEB2B64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AAEB2B90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AAEB2BE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(result + 48) = 2 * -a2;
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAEB2C5C()
{
  result = qword_1ED9B1D48;
  if (!qword_1ED9B1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1D48);
  }

  return result;
}

void sub_1AAEB2CB0(char **a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v6 = *(a2 + 72);

  v44 = v6;
  v45 = sub_1AAD81218(v7);

  v43 = a1;
  v8 = *a1;
  v9 = *(*a1 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (v11 >= *(v8 + 2))
      {
        __break(1u);
        goto LABEL_31;
      }

      v12 = a4;
      v13 = v8;
      v14 = &v8[v10];
      v15 = *&v8[v10 + 32];

      v16 = sub_1AAD81218(v15);
      v17 = sub_1AAEF26E4(v16, v45);

      if (v17)
      {
        break;
      }

      ++v11;
      v10 += 16;
      a4 = v12;
      v8 = v13;
      if (v9 == v11)
      {
        goto LABEL_6;
      }
    }

    if (v11 >= *(v13 + 2))
    {
      __break(1u);
      return;
    }

    v35 = *(*(v14 + 5) + 16);
    if (!v35)
    {
      return;
    }

    v8 = v13;
    v36 = 0;
    v37 = 32;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AADB8248(v8);
      }

      if (v11 >= *(v8 + 2))
      {
        break;
      }

      v38 = *&v8[v10 + 40];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v10 + 40] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1AADB8234(v38);
        *&v8[v10 + 40] = v38;
      }

      if (v36 >= *(v38 + 2))
      {
        goto LABEL_32;
      }

      ++v36;
      a3(&v38[v37]);
      v37 += 152;
      if (v35 == v36)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_6:

  v11 = v44;
  v18 = *(v44 + 16);
  if (v18)
  {
    v57 = MEMORY[0x1E69E7CC0];

    sub_1AAD41564(0, v18, 0);
    v10 = v57;
    sub_1AADA6144();
    v19 = (v44 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 1;
      *&v47 = v20;
      *(&v47 + 1) = v21;
      swift_bridgeObjectRetain_n();
      *&v48 = sub_1AAF8EA64();
      *(&v48 + 1) = v22;
      LOBYTE(v49) = v23 & 1;
      *(&v49 + 1) = v24;
      a3(&v47);

      v57 = v10;
      v26 = *(v10 + 16);
      v25 = *(v10 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1AAD41564((v25 > 1), v26 + 1, 1);
        v10 = v57;
      }

      *(v10 + 16) = v26 + 1;
      v27 = v10 + 152 * v26;
      v28 = v48;
      *(v27 + 32) = v47;
      *(v27 + 48) = v28;
      v29 = v49;
      v30 = v50;
      v31 = v52;
      *(v27 + 96) = v51;
      *(v27 + 112) = v31;
      *(v27 + 64) = v29;
      *(v27 + 80) = v30;
      v32 = v53;
      v33 = v54;
      v34 = v55;
      *(v27 + 176) = v56;
      *(v27 + 144) = v33;
      *(v27 + 160) = v34;
      *(v27 + 128) = v32;
      v19 += 2;
      --v18;
    }

    while (v18);
    v11 = v44;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_33:
    v8 = sub_1AAD6A75C(0, *(v8 + 2) + 1, 1, v8);
  }

  v41 = *(v8 + 2);
  v40 = *(v8 + 3);
  if (v41 >= v40 >> 1)
  {
    v8 = sub_1AAD6A75C((v40 > 1), v41 + 1, 1, v8);
  }

  *(v8 + 2) = v41 + 1;
  v42 = &v8[16 * v41];
  *(v42 + 4) = v11;
  *(v42 + 5) = v10;
LABEL_28:
  *v43 = v8;
}

uint64_t sub_1AAEB3048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1AAEB36F8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1AACE0A98(a2, &v25);
  if (v28 - 1 >= 2)
  {
    if (v28)
    {
      v29 = v12;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AADABA9C(v22);
      sub_1AAF8F344();
      result = (*(v9 + 8))(v11, v8);
      v15 = *(&v23[0] + 1);
      v14 = *&v23[0];
    }

    else
    {
      v23[0] = v25;
      v23[1] = v26;
      v16 = v27;
      v24 = v27;
      v29 = v12;
      v17 = *(&v26 + 1);
      v18 = sub_1AACBB42C(v23, *(&v26 + 1));
      v19 = MEMORY[0x1E69E63B0];
      sub_1AAF7743C(v18, &v29, MEMORY[0x1E69E63B0], v17, v16);
      v14 = v20;
      v15 = v21;
      result = sub_1AAEB3754(v23, &qword_1ED9B2790, v19, type metadata accessor for AnyFormatStyle.Wrapper, sub_1AAEB43F4);
    }
  }

  else
  {
    result = sub_1AAD57C94(&v25);
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  *a3 = v14;
  a3[1] = v15;
  return result;
}

void *sub_1AAEB3290@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *(**a3)(uint64_t *__return_ptr, double *, __n128)@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  sub_1AAF8FA24();
  MEMORY[0x1AC5982F0](0x536C6F626D797324, 0xEB00000000657A69);
  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  sub_1AADA6144();

  v10 = sub_1AAF8EA64();
  v12 = v11;
  v14 = v13;
  v23[0] = a1;
  v23[1] = a2;

  v15 = sub_1AAF8EA64();
  v17 = v16;
  LOBYTE(a1) = v18;
  v20 = v19;
  sub_1AAD04750(v10, v12, v14 & 1);

  *(a4 + 16) = v15;
  *(a4 + 24) = v17;
  *(a4 + 32) = a1 & 1;
  *(a4 + 40) = v20;
  v22 = a5;
  result = (*a3)(v23, &v22);
  *(a4 + 136) = v23[0];
  *(a4 + 144) = 0;
  return result;
}

void sub_1AAEB3404(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t, uint64_t, double))
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v58 = MEMORY[0x1E69E7CC0];
  sub_1AAD41564(0, v7, 0);
  v8 = v58;
  v45 = v6;
  v46 = v5;
  v43 = a2;
  v44 = v7;
  v42 = a1;
  if (v7)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 40);
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      v11 = *v9;
      v12 = *(v10 - 1);
      v13 = *v10;

      a3(&v48, v12, v13, v11);

      v58 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AAD41564((v14 > 1), v15 + 1, 1);
        v8 = v58;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 152 * v15;
      v17 = v49;
      *(v16 + 32) = v48;
      *(v16 + 48) = v17;
      v18 = v50;
      v19 = v51;
      v20 = v53;
      *(v16 + 96) = v52;
      *(v16 + 112) = v20;
      *(v16 + 64) = v18;
      *(v16 + 80) = v19;
      v21 = v54;
      v22 = v55;
      v23 = v56;
      *(v16 + 176) = v57;
      *(v16 + 144) = v22;
      *(v16 + 160) = v23;
      --v6;
      *(v16 + 128) = v21;
      --v5;
      v10 += 2;
      ++v9;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v25 = v45;
    v24 = v46;
    if (v46 <= v45)
    {
      return;
    }

    v26 = v44;
    v27 = (v43 + 16 * v44 + 40);
    while (v26 < v24)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_24;
      }

      if (v25 != v26)
      {
        if (v26 >= v25)
        {
          goto LABEL_25;
        }

        v29 = *(v42 + 32 + 8 * v26);
        v30 = *(v27 - 1);
        v31 = *v27;

        a3(&v48, v30, v31, v29);

        v58 = v8;
        v33 = *(v8 + 16);
        v32 = *(v8 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1AAD41564((v32 > 1), v33 + 1, 1);
          v8 = v58;
        }

        ++v26;
        v27 += 2;
        *(v8 + 16) = v33 + 1;
        v34 = v8 + 152 * v33;
        v35 = v49;
        *(v34 + 32) = v48;
        *(v34 + 48) = v35;
        v36 = v50;
        v37 = v51;
        v38 = v53;
        *(v34 + 96) = v52;
        *(v34 + 112) = v38;
        *(v34 + 64) = v36;
        *(v34 + 80) = v37;
        v39 = v54;
        v40 = v55;
        v41 = v56;
        *(v34 + 176) = v57;
        *(v34 + 144) = v40;
        *(v34 + 160) = v41;
        *(v34 + 128) = v39;
        v25 = v45;
        v24 = v46;
        if (v28 != v46)
        {
          continue;
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

double sub_1AAEB36D4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1AAEB36EC(result, a2 & 1);
  }

  return v2;
}

double sub_1AAEB36EC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

void sub_1AAEB36F8(uint64_t a1)
{
  if (!qword_1ED9B4468)
  {
    sub_1AAD46810();
    v1 = sub_1AAF8C7C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B4468);
    }
  }
}

uint64_t sub_1AAEB3754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AAEB37B4(char **a1, uint64_t a2, void (**a3)(uint64_t *__return_ptr, uint64_t *))
{
  v5 = *(a2 + 40);
  swift_bridgeObjectRetain_n();
  v6 = sub_1AAD81218(v5);
  v45 = v5;

  v44 = a1;
  v7 = *a1;
  v8 = *(v7 + 2);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (v10 >= *(v7 + 2))
      {
        __break(1u);
        goto LABEL_30;
      }

      v3 = v7;
      v11 = &v7[v9];
      v12 = *&v7[v9 + 32];

      v13 = sub_1AAD81218(v12);
      v14 = sub_1AAEF26E4(v13, v6);

      if (v14)
      {
        break;
      }

      ++v10;
      v9 += 16;
      v7 = v3;
      if (v8 == v10)
      {
        goto LABEL_6;
      }
    }

    if (v10 >= *(v3 + 2))
    {
      __break(1u);
      return;
    }

    v34 = *(*(v11 + 5) + 16);
    if (!v34)
    {
      return;
    }

    v7 = v3;
    v35 = 0;
    v36 = 0;
    v37 = *a3;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AADB8248(v7);
      }

      if (v10 >= *(v7 + 2))
      {
        break;
      }

      v3 = v7;
      v38 = &v7[v9];
      v7 = *&v7[v9 + 40];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v38 + 5) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_1AADB8234(v7);
        *(v38 + 5) = v7;
      }

      if (v36 >= *(v7 + 2))
      {
        goto LABEL_31;
      }

      ++v36;
      v40 = &v7[v35];
      v41 = *(v40 + 5);
      v52 = *(v40 + 4);
      v53 = v41;
      v37(&v54, &v52);
      v42 = v54;

      *(v40 + 10) = v42;
      v35 += 152;
      v7 = v3;
      if (v34 == v36)
      {
        goto LABEL_16;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_6:

  v15 = *(v45 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v43 = v7;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1AAD41564(0, v15, 0);
    v3 = v54;
    v46 = *a3;
    sub_1AADA6144();
    v16 = (v45 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v50 = 1;
      v52 = v17;
      v53 = v18;
      swift_bridgeObjectRetain_n();
      v19 = sub_1AAF8EA64();
      v21 = v20;
      v48 = v22;
      v51 = v23 & 1;
      v52 = v17;
      v53 = v18;
      v46(&v49, &v52);

      v24 = v49;
      v54 = v3;
      v26 = *(v3 + 2);
      v25 = *(v3 + 3);
      v27 = v3;
      if (v26 >= v25 >> 1)
      {
        sub_1AAD41564((v25 > 1), v26 + 1, 1);
        v27 = v54;
      }

      *(v27 + 2) = v26 + 1;
      v28 = &v27[152 * v26];
      *(v28 + 4) = v17;
      *(v28 + 5) = v18;
      *(v28 + 6) = v19;
      *(v28 + 7) = v21;
      v28[64] = v51;
      v29 = v52;
      *(v28 + 17) = *(&v52 + 3);
      *(v28 + 65) = v29;
      *(v28 + 9) = v48;
      *(v28 + 10) = v24;
      *(v28 + 88) = 0u;
      *(v28 + 104) = 0u;
      *(v28 + 120) = 0u;
      *(v28 + 136) = 0u;
      *(v28 + 152) = 0u;
      *(v28 + 21) = 0;
      v28[176] = v50;
      v16 += 2;
      --v15;
      v3 = v27;
    }

    while (v15);
    v7 = v43;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_32:
    v7 = sub_1AAD6A75C(0, *(v7 + 2) + 1, 1, v7);
  }

  v31 = *(v7 + 2);
  v30 = *(v7 + 3);
  v32 = v7;
  if (v31 >= v30 >> 1)
  {
    v32 = sub_1AAD6A75C((v30 > 1), v31 + 1, 1, v7);
  }

  *(v32 + 2) = v31 + 1;
  v7 = v32;
  v33 = &v32[16 * v31];
  *(v33 + 4) = v45;
  *(v33 + 5) = v3;
LABEL_16:
  *v44 = v7;
}

void sub_1AAEB3B80(char **a1, uint64_t a2, void (**a3)(__int128 *__return_ptr, uint64_t *))
{
  v5 = *(a2 + 72);
  swift_bridgeObjectRetain_n();
  v6 = sub_1AAD81218(v5);
  v46 = v5;

  v45 = a1;
  v7 = *a1;
  v8 = *(v7 + 2);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (v10 >= *(v7 + 2))
      {
        __break(1u);
        goto LABEL_29;
      }

      v3 = v7;
      v11 = &v7[v9];
      v12 = *&v7[v9 + 32];

      v13 = sub_1AAD81218(v12);
      v14 = sub_1AAEF26E4(v13, v6);

      if (v14)
      {
        break;
      }

      ++v10;
      v9 += 16;
      v7 = v3;
      if (v8 == v10)
      {
        goto LABEL_6;
      }
    }

    if (v10 >= *(v3 + 2))
    {
      __break(1u);
      return;
    }

    v35 = *(*(v11 + 5) + 16);
    if (!v35)
    {
      return;
    }

    v7 = v3;
    v36 = 0;
    v37 = 0;
    v38 = *a3;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AADB8248(v7);
      }

      if (v10 >= *(v7 + 2))
      {
        break;
      }

      v3 = v7;
      v39 = &v7[v9];
      v7 = *&v7[v9 + 40];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + 5) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_1AADB8234(v7);
        *(v39 + 5) = v7;
      }

      if (v37 >= *(v7 + 2))
      {
        goto LABEL_30;
      }

      ++v37;
      v41 = &v7[v36];
      v42 = *(v41 + 5);
      v56 = *(v41 + 4);
      v57 = v42;
      v38(&v58, &v56);
      v50 = v59;
      v53 = v58;
      v43 = v60;

      *(v41 + 8) = v53;
      *(v41 + 9) = v50;
      v36 += 152;
      *(v41 + 20) = v43;
      v7 = v3;
      if (v35 == v37)
      {
        goto LABEL_15;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_6:

  v15 = *(v46 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1AAD41564(0, v15, 0);
    v3 = v55;
    v47 = *a3;
    sub_1AADA6144();
    v16 = (v46 + 40);
    do
    {
      v18 = *v16;
      *&v58 = *(v16 - 1);
      v17 = v58;
      *(&v58 + 1) = v18;
      swift_bridgeObjectRetain_n();
      v19 = sub_1AAF8EA64();
      v48 = v20;
      v49 = v19;
      v52 = v21;
      v54 = v22 & 1;
      v56 = v17;
      v57 = v18;
      v47(&v58, &v56);

      v23 = v58;
      v24 = v59;
      v25 = v60;
      v27 = *(v3 + 2);
      v26 = *(v3 + 3);
      v28 = v3;
      if (v27 >= v26 >> 1)
      {
        v44 = v58;
        sub_1AAD41564((v26 > 1), v27 + 1, 1);
        v23 = v44;
        v28 = v3;
      }

      *(v28 + 2) = v27 + 1;
      v29 = &v28[152 * v27];
      *(v29 + 4) = v17;
      *(v29 + 5) = v18;
      *(v29 + 6) = v49;
      *(v29 + 7) = v48;
      v29[64] = v54;
      v30 = v58;
      *(v29 + 17) = *(&v58 + 3);
      *(v29 + 65) = v30;
      *(v29 + 9) = v52;
      *(v29 + 5) = 0u;
      *(v29 + 6) = 0u;
      *(v29 + 7) = 0u;
      *(v29 + 8) = v23;
      *(v29 + 9) = v24;
      *(v29 + 20) = v25;
      *(v29 + 21) = 0;
      v29[176] = 1;
      v16 += 2;
      --v15;
      v3 = v28;
    }

    while (v15);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    v7 = sub_1AAD6A75C(0, *(v7 + 2) + 1, 1, v7);
  }

  v32 = *(v7 + 2);
  v31 = *(v7 + 3);
  v33 = v7;
  if (v32 >= v31 >> 1)
  {
    v33 = sub_1AAD6A75C((v31 > 1), v32 + 1, 1, v7);
  }

  *(v33 + 2) = v32 + 1;
  v7 = v33;
  v34 = &v33[16 * v32];
  *(v34 + 4) = v46;
  *(v34 + 5) = v3;
LABEL_15:
  *v45 = v7;
}

void sub_1AAEB3F64(char **a1, uint64_t a2, void (**a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = *(a2 + 48);
  swift_bridgeObjectRetain_n();
  v5 = sub_1AAD81218(v4);
  v43 = v4;

  v42 = a1;
  v6 = *a1;
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (v9 >= *(v6 + 2))
      {
        __break(1u);
        goto LABEL_30;
      }

      v10 = v6;
      v11 = &v6[v8];
      v12 = *&v6[v8 + 32];

      v13 = sub_1AAD81218(v12);
      v14 = sub_1AAEF26E4(v13, v5);

      if (v14)
      {
        break;
      }

      ++v9;
      v8 += 16;
      v6 = v10;
      if (v7 == v9)
      {
        goto LABEL_6;
      }
    }

    if (v9 >= *(v10 + 2))
    {
      __break(1u);
      return;
    }

    v32 = *(*(v11 + 5) + 16);
    if (!v32)
    {
      return;
    }

    v6 = v10;
    v33 = 0;
    v34 = 0;
    v35 = *a3;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1AADB8248(v6);
      }

      if (v9 >= *(v6 + 2))
      {
        break;
      }

      v36 = v6;
      v37 = &v6[v8];
      v6 = *&v6[v8 + 40];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 5) = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1AADB8234(v6);
        *(v37 + 5) = v6;
      }

      if (v34 >= *(v6 + 2))
      {
        goto LABEL_31;
      }

      ++v34;
      v39 = &v6[v33];
      v40 = *(v39 + 5);
      v50 = *(v39 + 4);
      v51 = v40;
      v35(&v52, &v50);
      *(v39 + 21) = v52;
      v39[176] = 0;
      v33 += 152;
      v6 = v36;
      if (v32 == v34)
      {
        goto LABEL_16;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_6:

  v15 = *(v43 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v41 = v6;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1AAD41564(0, v15, 0);
    v8 = v52;
    v44 = *a3;
    sub_1AADA6144();
    v16 = (v43 + 40);
    do
    {
      v18 = *v16;
      v50 = *(v16 - 1);
      v17 = v50;
      v51 = v18;
      swift_bridgeObjectRetain_n();
      v45 = sub_1AAF8EA64();
      v47 = v19;
      v21 = v20;
      v49 = v22 & 1;
      v50 = v17;
      v51 = v18;
      v44(&v48, &v50);

      v23 = v48;
      LOBYTE(v48) = 0;
      v52 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1AAD41564((v24 > 1), v25 + 1, 1);
        v8 = v52;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 152 * v25;
      *(v26 + 32) = v17;
      *(v26 + 40) = v18;
      *(v26 + 48) = v45;
      *(v26 + 56) = v21;
      *(v26 + 64) = v49;
      v27 = v50;
      *(v26 + 68) = *(&v50 + 3);
      *(v26 + 65) = v27;
      *(v26 + 72) = v47;
      *(v26 + 80) = 0u;
      *(v26 + 96) = 0u;
      *(v26 + 112) = 0u;
      *(v26 + 128) = 0u;
      *(v26 + 144) = 0u;
      *(v26 + 160) = 0;
      *(v26 + 168) = v23;
      *(v26 + 176) = v48;
      v16 += 2;
      --v15;
    }

    while (v15);
    v6 = v41;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_32:
    v6 = sub_1AAD6A75C(0, *(v6 + 2) + 1, 1, v6);
  }

  v29 = *(v6 + 2);
  v28 = *(v6 + 3);
  v30 = v6;
  if (v29 >= v28 >> 1)
  {
    v30 = sub_1AAD6A75C((v28 > 1), v29 + 1, 1, v6);
  }

  *(v30 + 2) = v29 + 1;
  v6 = v30;
  v31 = &v30[16 * v29];
  *(v31 + 4) = v43;
  *(v31 + 5) = v8;
LABEL_16:
  *v42 = v6;
}

uint64_t sub_1AAEB4318(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  (*v3)(v7, v6);
  return sub_1AAEB436C(v7, (a1 + 7));
}

uint64_t sub_1AAEB436C(uint64_t a1, uint64_t a2)
{
  sub_1AAEB43F4(0, &qword_1ED9AE4C0, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AAEB43F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AAEB4444(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = **a1;
  v5 = **(a1 + 8);
  v6 = *(a1 + 24);
  v7 = **(a1 + 16);
  v8 = *v6;
  v9 = v6[1];
  if (*v6)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = sub_1AAEB878C;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = **(a1 + 32);
  if (v12 >= 2)
  {
    sub_1AACBD93C(v8, v9);
    sub_1AAE28C94(v12);
    sub_1AACB4A98(v11, v10);
  }

  else
  {
    sub_1AACBD93C(v8, v9);

    if (v5)
    {
      sub_1AADC8AB4(&unk_1F1FCF1B0);
    }

    v13 = sub_1AACEC978(v4);
    if (v15)
    {
      v12 = &unk_1F1FCF1D8;
    }

    else
    {
      v16 = v13;
      v17 = v14;
      sub_1AACDE090(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      v12[1] = xmmword_1AAF9E2B0;
      *(v12 + 4) = v16;
      *(v12 + 5) = v17;
    }

    if (v8)
    {

      v18 = v11(v12);
      sub_1AACB4A98(v11, v10);
      v19 = sub_1AACEC978(v18);
      if (v21)
      {
        v22 = &unk_1F1FCF208;
      }

      else
      {
        v23 = v19;
        v24 = v20;
        sub_1AACDE090(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
        v22 = swift_allocObject();
        v22[1] = xmmword_1AAF9E2B0;
        *(v22 + 4) = v23;
        *(v22 + 5) = v24;
      }

      sub_1AACB4A98(v11, v10);

      v12 = v22;
    }

    if (v7)
    {
      v12 = sub_1AAEC5500(v12);
    }
  }

  *a2 = v12;
}

void sub_1AAEB46A4(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = **a1;
  v4 = *a1[1];
  v5 = a1[2];
  v6 = *v5;
  if (!*v5)
  {

    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = v5[1];
  v11 = **a1;

  v6(&v10, &v11);
  v11 = MEMORY[0x1E69E7CD0];
  sub_1AAEB8968(v10);
  v3 = v8;

  sub_1AACB4A98(v6, v7);

  if (v4)
  {
LABEL_3:
    sub_1AAEC55B8(v3);
    v3 = v9;
  }

LABEL_4:
  *a2 = v3;
}

uint64_t sub_1AAEB4784@<X0>(void *a1@<X0>, uint64_t a2@<X1>, long double a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a5;
  LODWORD(a5) = a4;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_7;
    }

    sub_1AAF42808(a1, v9, a3);
    a5 = *(a2 + 16);
    if (a5)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  sub_1AAF429CC(a1, v9, a3);
  a5 = *(a2 + 16);
  if (a5)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_7:
  if (a5 == 2)
  {
    v7 = *&a3 == 2;
    if (*&a3 < 2uLL)
    {
      a1 = sub_1AACDE39C(a1, v9);
      a5 = *(a2 + 16);
      if (a5)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    if (!v7)
    {
      goto LABEL_16;
    }

    sub_1AAF425F4(a1, v9);
    a5 = *(a2 + 16);
    if (a5)
    {
LABEL_14:
      sub_1AAEF30EC(v9, v6, *(a2 + 32), *(a2 + 32 + 8 * a5 - 8));

      sub_1AACB4A98(*&v9[2], *&v9[3]);
      v10 = v9[4];
      return sub_1AACDE82C(&v10);
    }

    __break(1u);
  }

LABEL_16:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEB48B0(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void (*a5)(uint64_t *, uint64_t))
{
  switch(a4)
  {
    case 0:
      sub_1AAF429CC(a1, &v8, *&a3);
      goto LABEL_10;
    case 1:
      sub_1AAF42808(a1, &v8, *&a3);
LABEL_10:
      a5(&v8, a2);

      sub_1AACB4A98(v9, v10);
      v12 = v11;
      return sub_1AACDE82C(&v12);
    case 2:
      if (a3 < 2)
      {
        sub_1AACDE39C(a1, &v8);
        goto LABEL_10;
      }

      if (a3 == 2)
      {
        sub_1AAF425F4(a1, &v8);
        goto LABEL_10;
      }

      break;
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}