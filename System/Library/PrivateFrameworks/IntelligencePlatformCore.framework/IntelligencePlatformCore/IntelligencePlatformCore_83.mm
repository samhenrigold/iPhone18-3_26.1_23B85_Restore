void sub_1C4BC5664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v33[0] = v24;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0C46E0, &qword_1C4F5B508);
  sub_1C43FCDF8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v33 - v31;
  sub_1C4409678(v26, v26[3]);
  sub_1C4BC5DE4();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v23)
  {
    v33[1] = v33[0];
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443CFE8(&qword_1EDDFA578, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  (*(v29 + 8))(v32, v27);
  sub_1C43FBC80();
}

uint64_t sub_1C4BC5810(void *a1)
{
  sub_1C456902C(&qword_1EC0C46D8, &unk_1C4F5B4F8);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4BC5DE4();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443CFE8(&qword_1EDDFEA58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C4BC5A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BC556C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BC5A48(uint64_t a1)
{
  v2 = sub_1C4BC5DE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BC5A84(uint64_t a1)
{
  v2 = sub_1C4BC5DE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BC5AC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4BC5810(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C4BC5D10(uint64_t a1)
{
  result = sub_1C4EFBE38();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4BC5D8C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4BC5DE4()
{
  result = qword_1EDDF45B0[0];
  if (!qword_1EDDF45B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF45B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewDatabaseArtifact.DatabaseIndex.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BC5F18()
{
  result = qword_1EC0C46E8;
  if (!qword_1EC0C46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C46E8);
  }

  return result;
}

unint64_t sub_1C4BC5F70()
{
  result = qword_1EDDFB100;
  if (!qword_1EDDFB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB100);
  }

  return result;
}

unint64_t sub_1C4BC5FC8()
{
  result = qword_1EDDF45A8;
  if (!qword_1EDDF45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF45A8);
  }

  return result;
}

uint64_t sub_1C4BC60B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1C441A6BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  memcpy(v8, v9, v10);
  return sub_1C4CFDC10();
}

uint64_t sub_1C4BC60E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1C441A6BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  memcpy(v8, v9, v10);
  return sub_1C49476D0();
}

uint64_t sub_1C4BC61FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1C441A6BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  memcpy(v8, v9, v10);
  return sub_1C4CFDC84();
}

uint64_t sub_1C4BC6230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1C441A6BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  memcpy(v8, v9, v10);
  return sub_1C4947978();
}

uint64_t sub_1C4BC62DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v12, "DELETE FROM ");
  HIBYTE(v12[6]) = 0;
  v12[7] = -5120;
  v10 = (*(a3 + 8))(a2, a3, v7);
  MEMORY[0x1C6940010](v10);

  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C4BC6478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    sub_1C4BC76D8();
    v12 = sub_1C4EFBE98();
    v27 = 0;

    v24 = *(a2 + 16);
    if (v24)
    {
      v13 = 0;
      v23 = a2 + 32;
      v21 = v12;
      v22 = v6;
      do
      {
        v14 = *(v23 + 8 * v13);
        v15 = *(v14 + 16);
        if (v15)
        {
          v26 = v13;
          v30 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v15, 0);
          v16 = v30;
          v25 = v14;
          v17 = v14 + 32;
          do
          {
            sub_1C442E860(v17, v28);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v30 = v16;
            v19 = *(v16 + 16);
            v18 = *(v16 + 24);
            if (v19 >= v18 >> 1)
            {
              sub_1C459D088((v18 > 1), v19 + 1, 1);
              v16 = v30;
            }

            *(v16 + 16) = v19 + 1;
            sub_1C44482AC(&v29, (v16 + 32 * v19 + 32));
            v17 += 40;
            --v15;
          }

          while (v15);

          v6 = v22;
          v13 = v26;
        }

        sub_1C4EFB788();
        v20 = v27;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v6, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v27 = v20;
        if (v20)
        {
          break;
        }

        ++v13;
      }

      while (v13 != v24);
    }
  }

  return result;
}

uint64_t sub_1C4BC679C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    sub_1C4BC77A4();
    v12 = sub_1C4EFBE98();
    v27 = 0;

    v24 = *(a2 + 16);
    if (v24)
    {
      v13 = 0;
      v23 = a2 + 32;
      v21 = v12;
      v22 = v6;
      do
      {
        v14 = *(v23 + 8 * v13);
        v15 = *(v14 + 16);
        if (v15)
        {
          v26 = v13;
          v30 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v15, 0);
          v16 = v30;
          v25 = v14;
          v17 = v14 + 32;
          do
          {
            sub_1C442E860(v17, v28);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v30 = v16;
            v19 = *(v16 + 16);
            v18 = *(v16 + 24);
            if (v19 >= v18 >> 1)
            {
              sub_1C459D088((v18 > 1), v19 + 1, 1);
              v16 = v30;
            }

            *(v16 + 16) = v19 + 1;
            sub_1C44482AC(&v29, (v16 + 32 * v19 + 32));
            v17 += 40;
            --v15;
          }

          while (v15);

          v6 = v22;
          v13 = v26;
        }

        sub_1C4EFB788();
        v20 = v27;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v6, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v27 = v20;
        if (v20)
        {
          break;
        }

        ++v13;
      }

      while (v13 != v24);
    }
  }

  return result;
}

uint64_t sub_1C4BC6AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v12 + 8))(v14, v11);
  if (!v6)
  {
    v27 = v10;
    sub_1C4BC7868();
    v16 = sub_1C4EFBE98();
    v32 = 0;

    v29 = *(a2 + 16);
    if (v29)
    {
      v17 = 0;
      v28 = a2 + 32;
      v18 = v27;
      v26 = v16;
      do
      {
        v19 = *(v28 + 8 * v17);
        v20 = *(v19 + 16);
        if (v20)
        {
          v31 = v17;
          v35 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v20, 0);
          v21 = v35;
          v30 = v19;
          v22 = v19 + 32;
          do
          {
            sub_1C442E860(v22, v33);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v35 = v21;
            v24 = *(v21 + 16);
            v23 = *(v21 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_1C459D088((v23 > 1), v24 + 1, 1);
              v21 = v35;
            }

            *(v21 + 16) = v24 + 1;
            sub_1C44482AC(&v34, (v21 + 32 * v24 + 32));
            v22 += 40;
            --v20;
          }

          while (v20);

          v18 = v27;
          v17 = v31;
        }

        sub_1C4EFB788();
        v25 = v32;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v18, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v32 = v25;
        if (v25)
        {
          break;
        }

        ++v17;
      }

      while (v17 != v29);
    }
  }

  return result;
}

uint64_t sub_1C4BC6DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    sub_1C4BC7950();
    v12 = sub_1C4EFBE98();
    v27 = 0;

    v24 = *(a2 + 16);
    if (v24)
    {
      v13 = 0;
      v23 = a2 + 32;
      v21 = v12;
      v22 = v6;
      do
      {
        v14 = *(v23 + 8 * v13);
        v15 = *(v14 + 16);
        if (v15)
        {
          v26 = v13;
          v30 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v15, 0);
          v16 = v30;
          v25 = v14;
          v17 = v14 + 32;
          do
          {
            sub_1C442E860(v17, v28);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v30 = v16;
            v19 = *(v16 + 16);
            v18 = *(v16 + 24);
            if (v19 >= v18 >> 1)
            {
              sub_1C459D088((v18 > 1), v19 + 1, 1);
              v16 = v30;
            }

            *(v16 + 16) = v19 + 1;
            sub_1C44482AC(&v29, (v16 + 32 * v19 + 32));
            v17 += 40;
            --v15;
          }

          while (v15);

          v6 = v22;
          v13 = v26;
        }

        sub_1C4EFB788();
        v20 = v27;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v6, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v27 = v20;
        if (v20)
        {
          break;
        }

        ++v13;
      }

      while (v13 != v24);
    }
  }

  return result;
}

uint64_t sub_1C4BC711C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    sub_1C4BC7A14();
    v12 = sub_1C4EFBE98();
    v27 = 0;

    v24 = *(a2 + 16);
    if (v24)
    {
      v13 = 0;
      v23 = a2 + 32;
      v21 = v12;
      v22 = v6;
      do
      {
        v14 = *(v23 + 8 * v13);
        v15 = *(v14 + 16);
        if (v15)
        {
          v26 = v13;
          v30 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v15, 0);
          v16 = v30;
          v25 = v14;
          v17 = v14 + 32;
          do
          {
            sub_1C442E860(v17, v28);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v30 = v16;
            v19 = *(v16 + 16);
            v18 = *(v16 + 24);
            if (v19 >= v18 >> 1)
            {
              sub_1C459D088((v18 > 1), v19 + 1, 1);
              v16 = v30;
            }

            *(v16 + 16) = v19 + 1;
            sub_1C44482AC(&v29, (v16 + 32 * v19 + 32));
            v17 += 40;
            --v15;
          }

          while (v15);

          v6 = v22;
          v13 = v26;
        }

        sub_1C4EFB788();
        v20 = v27;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v6, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v27 = v20;
        if (v20)
        {
          break;
        }

        ++v13;
      }

      while (v13 != v24);
    }
  }

  return result;
}

uint64_t sub_1C4BC7458()
{
  memcpy(__dst, v0, sizeof(__dst));

  v1 = sub_1C440CABC();
  sub_1C446C37C(v1, v2);
}

uint64_t sub_1C4BC74D0()
{
  memcpy(__dst, v0, sizeof(__dst));

  v1 = sub_1C440CABC();
  sub_1C446C37C(v1, v2);
}

uint64_t sub_1C4BC7560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v8[2] = v9;
  v8[3] = a1;

  sub_1C446C37C(a6, v8);
}

uint64_t sub_1C4BC75B8()
{

  v0 = sub_1C440CABC();
  sub_1C446C37C(v0, v1);
}

uint64_t sub_1C4BC7614()
{

  v0 = sub_1C440CABC();
  sub_1C446C37C(v0, v1);
}

uint64_t sub_1C4BC767C()
{

  v0 = sub_1C440CABC();
  sub_1C446C37C(v0, v1);
}

void sub_1C4BC76D8()
{
  sub_1C43FEAC8();
  sub_1C4413284();

  sub_1C441A6CC();
  MEMORY[0x1C6940010](v0[1], v0[2]);
  sub_1C4420544();
  if (*(v0[3] + 16))
  {
    sub_1C440B4DC();
    sub_1C442D570();
    do
    {
      sub_1C4401088();
      if (v2)
      {
        sub_1C44038F0(v1 > 1);
      }

      sub_1C4407DC8();
    }

    while (!v3);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v4 = sub_1C443D694();
  sub_1C4412714(v4);
  sub_1C440FD44();
  sub_1C440E890();

  sub_1C441794C();
  sub_1C441E1E0();
}

void sub_1C4BC77A4()
{
  sub_1C43FEAC8();
  sub_1C4413284();

  sub_1C441A6CC();
  sub_1C43FC9E4();
  sub_1C4420544();
  if (*(*(v0 + 24) + 16))
  {
    sub_1C440B4DC();
    sub_1C442D570();
    do
    {
      sub_1C4401088();
      if (v2)
      {
        sub_1C44038F0(v1 > 1);
      }

      sub_1C4407DC8();
    }

    while (!v3);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v4 = sub_1C443D694();
  sub_1C4412714(v4);
  sub_1C440FD44();
  sub_1C440E890();

  sub_1C441794C();
  sub_1C441E1E0();
}

void sub_1C4BC7868()
{
  sub_1C43FEAC8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1C4F02248();

  sub_1C441A6CC();
  MEMORY[0x1C6940010](v5, v3);
  sub_1C4420544();
  if (*(v1 + 16))
  {
    sub_1C440B4DC();
    sub_1C442D570();
    do
    {
      sub_1C4401088();
      if (v7)
      {
        sub_1C44038F0(v6 > 1);
      }

      sub_1C4407DC8();
    }

    while (!v8);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v9 = sub_1C443D694();
  sub_1C4412714(v9);
  sub_1C440FD44();
  sub_1C440E890();

  sub_1C441794C();
  sub_1C441E1E0();
}

void sub_1C4BC7950()
{
  sub_1C43FEAC8();
  sub_1C4413284();

  sub_1C441A6CC();
  sub_1C43FC9E4();
  sub_1C4420544();
  if (*(*(v0 + 32) + 16))
  {
    sub_1C440B4DC();
    sub_1C442D570();
    do
    {
      sub_1C4401088();
      if (v2)
      {
        sub_1C44038F0(v1 > 1);
      }

      sub_1C4407DC8();
    }

    while (!v3);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v4 = sub_1C443D694();
  sub_1C4412714(v4);
  sub_1C440FD44();
  sub_1C440E890();

  sub_1C441794C();
  sub_1C441E1E0();
}

void sub_1C4BC7A14()
{
  sub_1C43FEAC8();
  sub_1C4413284();

  sub_1C441A6CC();
  sub_1C43FC9E4();
  sub_1C4420544();
  if (*(*(v0 + 40) + 16))
  {
    sub_1C440B4DC();
    sub_1C442D570();
    do
    {
      sub_1C4401088();
      if (v2)
      {
        sub_1C44038F0(v1 > 1);
      }

      sub_1C4407DC8();
    }

    while (!v3);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v4 = sub_1C443D694();
  sub_1C4412714(v4);
  sub_1C440FD44();
  sub_1C440E890();

  sub_1C441794C();
  sub_1C441E1E0();
}

uint64_t sub_1C4BC7B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      _s35AddressContactResolverViewGeneratorCMa();
      a4 = swift_allocObject();

      sub_1C4BC7D54(v9, __dst);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4BC7CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BC7B50(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

void *sub_1C4BC7D54(uint64_t a1, const void *a2)
{
  v2[2] = a1;
  memcpy(v2 + 3, a2, 0x48uLL);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v4 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F17D00;

  sub_1C46A9810(a2, v7);
  sub_1C4EFEBF8();
  sub_1C4EFE4C8();
  sub_1C4EFE748();
  sub_1C4EFE5A8();
  sub_1C4EFE4B8();
  sub_1C4EFEDE8();
  sub_1C4EFEA58();
  sub_1C4EFE8D8();
  sub_1C4EFEA78();
  sub_1C4EFE378();
  sub_1C4EFECD8();
  sub_1C4EFE688();
  sub_1C4AF99F4(a2);

  v2[12] = v5;
  return v2;
}

uint64_t sub_1C4BC7ED8(uint64_t a1)
{
  v3 = sub_1C4EF9488();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  v7 = objc_autoreleasePoolPush();
  sub_1C4BC8020(a1, v1, &v11);
  objc_autoreleasePoolPop(v7);
  v10[0] = v11;
  v10[1] = v12;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9448();
  sub_1C4415EA8();
  v8 = sub_1C4F01FF8();
  (*(v4 + 8))(v6, v3);
  swift_bridgeObjectRelease_n();
  return v8;
}

uint64_t sub_1C4BC8020(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v185 = a3;
  v199 = a2;
  v191 = sub_1C4EF9488();
  v189 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v190 = v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFEEF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v182 = v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v180 = v178 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v181 = v178 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v179 = v178 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v178[1] = v178 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v186 = v178 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v178[0] = v178 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v188 = v178 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v183 = v178 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v187 = v178 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v193 = v178 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v184 = v178 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v192 = v178 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v178 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v178 - v36;
  v204 = type metadata accessor for GraphTriple(0);
  v196 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v200 = v178 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v194 = v178 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v206 = v178 - v42;
  v43 = 0;
  v195 = a1;
  v197 = *(a1 + 16);
  v212 = (v6 + 16);
  v203 = (v6 + 8);
  v198 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v44 = v43;
LABEL_3:
    if (v44 == v197)
    {
      break;
    }

    v45 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v46 = *(v196 + 72);
    v205 = v44 + 1;
    v201 = v46;
    v202 = v45;
    v47 = v206;
    sub_1C4709E74(v195 + v45 + v46 * v44, v206);
    v48 = *(v199 + 96);
    (*v212)(v37, &v47[*(v204 + 28)], v5);
    v49 = 0;
    v50 = *(v48 + 16);
    do
    {
      if (v50 == v49)
      {
        (*v203)(v37, v5);
        sub_1C4709ED8(v206);
        v44 = v205;
        goto LABEL_3;
      }

      v51 = v49 + 1;
      sub_1C4BCAC9C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
      v52 = sub_1C4F010B8();
      v49 = v51;
    }

    while ((v52 & 1) == 0);
    (*v203)(v37, v5);
    sub_1C45B1EE4(v206, v194);
    v53 = v198;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v209 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C459D7C8();
      v53 = v209;
    }

    v55 = *(v53 + 16);
    if (v55 >= *(v53 + 24) >> 1)
    {
      sub_1C459D7C8();
      v53 = v209;
    }

    *(v53 + 16) = v55 + 1;
    v198 = v53;
    sub_1C45B1EE4(v194, v53 + v202 + v55 * v201);
    v43 = v205;
  }

  sub_1C4BCAC9C(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
  v205 = sub_1C4F00F28();
  v56 = *(v198 + 16);
  if (v56)
  {
    v57 = 0;
    v58 = *(v199 + 96);
    v201 = v198 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
    v197 = *(v196 + 72);
    ++v189;
    v194 = v56;
    do
    {
      v59 = v200;
      v206 = v57 + 1;
      sub_1C4709E74(v201 + v197 * v57, v200);
      v60 = *v212;
      v202 = *(v204 + 28);
      v60(v34, (v59 + v202), v5);
      v61 = 0;
      v62 = *(v58 + 16);
      while (v62 != v61)
      {
        v63 = v61 + 1;
        sub_1C4BCAC9C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
        v64 = sub_1C4F010B8();
        v61 = v63;
        if (v64)
        {
          (*v203)(v34, v5);
          v65 = v200;
          v66 = (v200 + *(v204 + 32));
          v67 = v66[1];
          v209 = *v66;
          v210 = v67;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v68 = v190;
          sub_1C4EF9448();
          sub_1C4415EA8();
          v69 = sub_1C4F01FF8();
          v195 = v70;
          v196 = v69;
          (*v189)(v68, v191);
          v56 = v194;

          v71 = v205;
          swift_isUniquelyReferenced_nonNull_native();
          v209 = v71;
          sub_1C46612A8();
          sub_1C4709ED8(v65);
          v205 = v209;
          goto LABEL_21;
        }
      }

      (*v203)(v34, v5);
      sub_1C4709ED8(v200);
LABEL_21:
      v57 = v206;
    }

    while (v206 != v56);
  }

  v72 = *(v199 + 96);
  v73 = *(v72 + 16);
  v74 = v203;
  v75 = v188;
  v76 = v192;
  if (v73)
  {
    v77 = v72 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v78 = *(v6 + 72);
    v206 = *(v6 + 16);
    v201 = MEMORY[0x1E69E7CC0];
    v202 = MEMORY[0x1E69E7CC0];
    v79 = v205;
    v204 = v78;
    while (1)
    {
      (v206)(v76, v77, v5);
      if (*(v79 + 16))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C457AB64();
        v81 = v80;

        if (v81)
        {
          break;
        }
      }

      (*v74)(v76, v5);
LABEL_46:
      v77 += v78;
      if (!--v73)
      {
        goto LABEL_64;
      }
    }

    v205 = v79;
    sub_1C4EFECD8();
    sub_1C4BCAC9C(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v209 == v207 && v210 == v208)
    {
      v83 = 1;
    }

    else
    {
      v83 = sub_1C4F02938();
    }

    v84 = *v74;
    (*v74)(v193, v5);

    v78 = v204;
    if ((v83 & 1) == 0)
    {
      v85 = v187;
      sub_1C4EFE688();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v209 == v207 && v210 == v208)
      {
        v97 = v85;
        v74 = v203;
        v84(v97, v5);
      }

      else
      {
        v87 = sub_1C4F02938();
        v88 = v85;
        v74 = v203;
        v84(v88, v5);

        if ((v87 & 1) == 0)
        {
          v89 = v183;
          sub_1C4EFEBF8();
          sub_1C4BCAC9C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
          v90 = sub_1C4F010B8();
          v84(v89, v5);
          if ((v90 & 1) == 0)
          {
            v91 = v205;
            if (*(v205 + 16) && (sub_1C457AB64(), (v93 & 1) != 0))
            {
              v94 = (*(v91 + 56) + 16 * v92);
              v96 = *v94;
              v95 = v94[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              v96 = 0;
              v95 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C443D664();
              v201 = v113;
            }

            v99 = *(v201 + 16);
            if (v99 >= *(v201 + 24) >> 1)
            {
              sub_1C443D664();
              v201 = v114;
            }

            v100 = v201;
            *(v201 + 16) = v99 + 1;
            v101 = v100 + 16 * v99;
            *(v101 + 32) = v96;
            *(v101 + 40) = v95;
          }

          v102 = v205;
          if (*(v205 + 16) && (sub_1C457AB64(), (v104 & 1) != 0))
          {
            v105 = (*(v102 + 56) + 16 * v103);
            v106 = v105[1];
            v200 = *v105;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            v200 = 0;
            v106 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C443D664();
            v202 = v111;
          }

          v107 = *(v202 + 16);
          v108 = v84;
          if (v107 >= *(v202 + 24) >> 1)
          {
            sub_1C443D664();
            v202 = v112;
          }

          v76 = v192;
          v74 = v203;
          v108(v192, v5);
          v109 = v202;
          *(v202 + 16) = v107 + 1;
          v110 = v109 + 16 * v107;
          *(v110 + 32) = v200;
          *(v110 + 40) = v106;
          v78 = v204;
          v79 = v205;
          goto LABEL_45;
        }
      }
    }

    v98 = v192;
    v84(v192, v5);
    v76 = v98;
    v79 = v205;
LABEL_45:
    v75 = v188;
    goto LABEL_46;
  }

  v201 = MEMORY[0x1E69E7CC0];
  v202 = MEMORY[0x1E69E7CC0];
  v79 = v205;
LABEL_64:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v115 = v184;
  sub_1C4EFECD8();
  if (!*(v79 + 16))
  {

    v118 = *v74;
    v118(v115, v5);
LABEL_79:
    v119 = v186;
    goto LABEL_80;
  }

  sub_1C457AB64();
  v117 = v116;

  v118 = *v74;
  v118(v115, v5);
  v119 = v186;
  if ((v117 & 1) == 0)
  {
    goto LABEL_80;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFE688();
  if (*(v79 + 16))
  {
    sub_1C457AB64();
    v121 = v120;

    v118(v75, v5);
    if (v121)
    {
      v122 = v178[0];
      sub_1C4EFE688();
      v123 = v79;
      v124 = sub_1C465C38C(v122, v79);
      v126 = v125;
      v118(v122, v5);
      if (v126)
      {
        v127 = v124;
      }

      else
      {
        v127 = 0;
      }

      if (!v126)
      {
        v126 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C443D664();
        v201 = v176;
      }

      v128 = *(v201 + 16);
      if (v128 >= *(v201 + 24) >> 1)
      {
        sub_1C443D664();
        v201 = v177;
      }

      v129 = v201;
      *(v201 + 16) = v128 + 1;
      v130 = v129 + 16 * v128;
      *(v130 + 32) = v127;
      *(v130 + 40) = v126;
      v131 = &v209;
LABEL_92:
      v142 = *(v131 - 32);
      sub_1C4EFE688();
      v143 = sub_1C465C38C(v142, v123);
      v145 = v144;
      v118(v142, v5);
      goto LABEL_104;
    }

    goto LABEL_79;
  }

  v118(v75, v5);
LABEL_80:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFE688();
  if (*(v79 + 16))
  {
    sub_1C457AB64();
    v133 = v132;

    v118(v119, v5);
    if (v133)
    {
      v134 = v179;
      sub_1C4EFE688();
      v123 = v79;
      v135 = sub_1C465C38C(v134, v79);
      v137 = v136;
      v118(v134, v5);
      if (v137)
      {
        v138 = v135;
      }

      else
      {
        v138 = 0;
      }

      if (!v137)
      {
        v137 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C443D664();
        v201 = v174;
      }

      v139 = *(v201 + 16);
      if (v139 >= *(v201 + 24) >> 1)
      {
        sub_1C443D664();
        v201 = v175;
      }

      v140 = v201;
      *(v201 + 16) = v139 + 1;
      v141 = v140 + 16 * v139;
      *(v141 + 32) = v138;
      *(v141 + 40) = v137;
      v131 = &v211;
      goto LABEL_92;
    }
  }

  else
  {

    v118(v119, v5);
  }

  v146 = v181;
  sub_1C4EFECD8();
  v147 = v79;
  v148 = sub_1C465C38C(v146, v79);
  v150 = v149;
  v118(v146, v5);
  if (v150)
  {
    v151 = v148;
  }

  else
  {
    v151 = 0;
  }

  if (!v150)
  {
    v150 = 0xE000000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C443D664();
    v201 = v172;
  }

  v152 = *(v201 + 16);
  if (v152 >= *(v201 + 24) >> 1)
  {
    sub_1C443D664();
    v201 = v173;
  }

  v153 = v201;
  *(v201 + 16) = v152 + 1;
  v154 = v153 + 16 * v152;
  *(v154 + 32) = v151;
  *(v154 + 40) = v150;
  v155 = v182;
  sub_1C4EFECD8();
  v143 = sub_1C465C38C(v155, v147);
  v145 = v156;
  v118(v155, v5);
LABEL_104:
  if (v145)
  {
    v157 = v143;
  }

  else
  {
    v157 = 0;
  }

  if (!v145)
  {
    v145 = 0xE000000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C443D664();
    v202 = v170;
  }

  v158 = *(v202 + 16);
  if (v158 >= *(v202 + 24) >> 1)
  {
    sub_1C443D664();
    v202 = v171;
  }

  v159 = v202;
  *(v202 + 16) = v158 + 1;
  v160 = v159 + 16 * v158;
  *(v160 + 32) = v157;
  *(v160 + 40) = v145;
  v209 = v159;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v161 = sub_1C4F01048();
  v163 = v162;

  v209 = v201;
  v164 = sub_1C4F01048();
  v166 = v165;

  v167 = HIBYTE(v166) & 0xF;
  if ((v166 & 0x2000000000000000) == 0)
  {
    v167 = v164 & 0xFFFFFFFFFFFFLL;
  }

  v168 = v185;
  if (!v167)
  {
    *v185 = v161;
    v168[1] = v163;
  }

  *v168 = v164;
  v168[1] = v166;
}

uint64_t sub_1C4BC92C4()
{
  v1[16] = v0;
  v2 = sub_1C4EFF0C8();
  v1[17] = v2;
  sub_1C43FCF7C(v2);
  v1[18] = v3;
  v1[19] = sub_1C43FBE7C();
  sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v1[20] = sub_1C43FBE7C();
  v4 = sub_1C4EFDE88();
  v1[21] = v4;
  sub_1C43FCF7C(v4);
  v1[22] = v5;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_1C4EFDE68();
  v1[28] = sub_1C43FBE7C();
  v6 = sub_1C4EFDE98();
  v1[29] = v6;
  sub_1C43FCF7C(v6);
  v1[30] = v7;
  v1[31] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C4BC9498, 0, 0);
}

uint64_t sub_1C4BC9498()
{
  v108 = v0[31];
  v96 = v0[30];
  v112 = v0[29];
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v102 = v0[24];
  v4 = v0[22];
  v104 = v0[23];
  v95 = v4;
  v5 = v0[21];
  v106 = v0[20];
  v93 = v0[18];
  v0[13] = MEMORY[0x1E69E7CC0];
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v6 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v6);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFEAC8();
  sub_1C4D504A4();
  v7 = *(v4 + 104);
  v92 = v7;
  v8 = v2;
  sub_1C4411254();
  v7();
  sub_1C4411254();
  v7();
  sub_1C4411254();
  v7();
  sub_1C4411254();
  v7();
  sub_1C4411254();
  v7();
  sub_1C4EFDE58();

  v9 = *(v95 + 8);
  v9(v104, v5);
  v9(v102, v5);
  v9(v3, v5);
  v9(v1, v5);
  v9(v8, v5);
  sub_1C4EFDEA8();
  v91 = sub_1C4EFD678();
  sub_1C440BAA8(v106, 1, 1, v91);
  v10 = swift_task_alloc();
  *(v10 + 16) = v0 + 13;
  sub_1C48687D0(v108, v106, sub_1C4BCAA90, v10);

  sub_1C4423A0C(v106, &unk_1EC0C07E0, &unk_1C4F168F0);
  v90 = *(v96 + 8);
  v90(v108, v112);
  v103 = v0;
  v0[14] = MEMORY[0x1E69E7CD0];
  v87 = v0 + 15;
  v88 = v0 + 11;
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFEAC8();
  sub_1C4D504A4();
  sub_1C4409200();
  (v7)(v11, v12, v13);
  sub_1C4409200();
  (v7)(v14, v15, v16);
  sub_1C4409200();
  (v7)(v17, v18, v19);
  sub_1C4409200();
  (v7)(v20, v21, v22);
  sub_1C4409200();
  (v7)(v23, v24, v25);
  sub_1C4EFDE58();

  v9(v104, v5);
  v9(v102, v5);
  v9(v3, v5);
  v9(v1, v5);
  v89 = v9;
  v9(v8, v5);
  sub_1C4EFDEA8();
  sub_1C440BAA8(v106, 1, 1, v91);
  v26 = swift_task_alloc();
  *(v26 + 16) = v0 + 13;
  *(v26 + 24) = v0 + 14;
  sub_1C48687D0(v108, v106, sub_1C4BCAA98, v26);

  sub_1C4423A0C(v106, &unk_1EC0C07E0, &unk_1C4F168F0);
  v90(v108, v112);
  v27 = v0[14];
  v28 = v27 + 56;
  v29 = -1;
  v30 = -1 << *(v27 + 32);
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  v31 = v29 & *(v0[14] + 56);
  v32 = (63 - v30) >> 6;
  v94 = v27;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v85 = v32;
  v86 = v28;
  while (v31)
  {
LABEL_9:
    v99 = v103[31];
    v101 = v103[29];
    v105 = v103[27];
    v107 = v103[26];
    v109 = v103[25];
    v110 = v103[24];
    v97 = v103[23];
    v37 = v103[21];
    v98 = v103[20];
    v113 = v103[19];
    v38 = v103[17];
    v100 = v103[16];
    v39 = *(v93 + 16);
    v39(v113, *(v94 + 48) + *(v93 + 72) * (__clz(__rbit64(v31)) | (v34 << 6)), v38);
    v103[15] = MEMORY[0x1E69E7CC0];
    v103[11] = 0;
    v103[12] = 0xE000000000000000;
    sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
    v40 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1C4F0D130;
    v39(v41 + v40, v113, v38);
    sub_1C45972E0();
    sub_1C440D9C8();
    (v92)(v42, v43, v44);
    sub_1C440D9C8();
    (v92)(v45, v46, v47);
    sub_1C440D9C8();
    (v92)(v48, v49, v50);
    sub_1C440D9C8();
    (v92)(v51, v52, v53);
    sub_1C440D9C8();
    (v92)(v54, v55, v56);
    sub_1C4EFDE58();

    v89(v97, v37);
    v89(v110, v37);
    v89(v109, v37);
    v89(v107, v37);
    v89(v105, v37);
    sub_1C4EFDEA8();
    sub_1C440BAA8(v98, 1, 1, v91);
    v57 = swift_task_alloc();
    v57[2] = v100;
    v57[3] = v87;
    v57[4] = v88;
    sub_1C48687D0(v99, v98, sub_1C4BCAAA0, v57);

    sub_1C4423A0C(v98, &unk_1EC0C07E0, &unk_1C4F168F0);
    v90(v99, v101);
    v58 = sub_1C4BC7ED8(v103[15]);
    v60 = v59;
    v61 = sub_1C4EFF068();
    v63 = v62;
    v64 = v103[12];
    v111 = v103[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v65 = v60;
    v66 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458BC50();
      v35 = v69;
    }

    v67 = v35[2];
    if (v67 >= v35[3] >> 1)
    {
      sub_1C458BC50();
      v35 = v70;
    }

    v31 &= v31 - 1;
    (*(v93 + 8))(v103[19], v103[17]);
    v35[2] = v67 + 1;
    v68 = &v35[6 * v67];
    v68[4] = v66;
    v68[5] = v65;
    v68[6] = v61;
    v68[7] = v63;
    v68[8] = v111;
    v68[9] = v64;

    v32 = v85;
    v28 = v86;
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      return result;
    }

    if (v36 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v36);
    ++v34;
    if (v31)
    {
      v34 = v36;
      goto LABEL_9;
    }
  }

  v71 = v35[2];
  if (v71)
  {
    v114 = MEMORY[0x1E69E7CC0];
    sub_1C459DB58(0, v71, 0);
    v72 = v35 + 9;
    do
    {
      v74 = *(v72 - 5);
      v73 = *(v72 - 4);
      v75 = *(v72 - 3);
      v76 = *(v72 - 2);
      v77 = *(v72 - 1);
      v78 = *v72;
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1C4F0C890;
      v80 = MEMORY[0x1E69E6158];
      *(v79 + 56) = MEMORY[0x1E69E6158];
      v81 = MEMORY[0x1E69A0138];
      *(v79 + 64) = MEMORY[0x1E69A0138];
      *(v79 + 72) = v75;
      *(v79 + 32) = v74;
      *(v79 + 40) = v73;
      *(v79 + 96) = v80;
      *(v79 + 104) = v81;
      *(v79 + 80) = v76;
      *(v79 + 136) = v80;
      *(v79 + 144) = v81;
      *(v79 + 112) = v77;
      *(v79 + 120) = v78;
      v82 = *(v114 + 16);
      v83 = *(v114 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v82 >= v83 >> 1)
      {
        sub_1C459DB58(v83 > 1, v82 + 1, 1);
      }

      v72 += 6;
      *(v114 + 16) = v82 + 1;
      *(v114 + 8 * v82 + 32) = v79;
      --v71;
    }

    while (v71);
  }

  memcpy(v103 + 2, (v103[16] + 24), 0x48uLL);
  sub_1C4BC7458();

  v84 = v103[1];

  return v84();
}

uint64_t sub_1C4BCA070(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GraphTriple(0);
  v9 = *(v8 + 28);
  sub_1C4EFE5E8();
  LOBYTE(v9) = sub_1C44DBB50(a1 + v9, v7);
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v10 = (a1 + *(v8 + 32));
    v11 = *v10 == 0x656D6F483C21245FLL && v10[1] == 0xEC0000005F24213ELL;
    if (v11 || (sub_1C4F02938() & 1) != 0)
    {
      v12 = sub_1C4EFF848();
      v14 = v13;
      sub_1C4588BAC();
      v15 = *(*a2 + 16);
      sub_1C45897E8();
      v16 = *a2;
      *(v16 + 16) = v15 + 1;
      v17 = v16 + 16 * v15;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }
  }

  return 1;
}

uint64_t sub_1C4BCA1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v37 = sub_1C4EFF0C8();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v32 - v8;
  v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = sub_1C4EFEEF8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for GraphTriple(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = sub_1C4EFF848();
  v44 = v20;
  v38 = &v43;
  v21 = sub_1C44CE068();

  if (v21)
  {
    v22 = *(v19 + 28);
    sub_1C4EFE418();
    LOBYTE(v22) = sub_1C44DBB50(a1 + v22, v18);
    (*(v16 + 8))(v18, v15);
    if (v22)
    {
      v23 = (a1 + *(v19 + 32));
      v24 = *v23;
      v25 = v23[1];
      v43 = *v23;
      v44 = v25;
      v41 = 25709;
      v42 = 0xE200000000000000;
      sub_1C4415EA8();
      if (sub_1C4F02048())
      {
        v43 = v24;
        v44 = v25;
        v41 = 3826797;
        v42 = 0xE300000000000000;
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_1C4F02008();
        sub_1C4EFF0D8();
        sub_1C457E858(v14, v11);
        v26 = v37;
        if (sub_1C44157D4(v11, 1, v37) == 1)
        {
          sub_1C4423A0C(v14, &unk_1EC0BA0E0, &qword_1C4F105A0);
        }

        else
        {
          v27 = v35;
          v28 = v32;
          (*(v35 + 32))(v32, v11, v26);
          (*(v27 + 16))(v34, v28, v26);
          v29 = v33;
          sub_1C44D56D0();
          v30 = *(v27 + 8);
          v30(v29, v26);
          v30(v28, v26);
          v11 = v14;
        }

        sub_1C4423A0C(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }
    }
  }

  return 1;
}

uint64_t sub_1C4BCA628(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_1C4EFEEF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 + 96);
  v13 = type metadata accessor for GraphTriple(0);
  v21 = a1 + v13[7];
  if (sub_1C479B398(sub_1C4BCAB28, v20, v12))
  {
    sub_1C4588D78();
    v14 = *(*a3 + 16);
    sub_1C4589968();
    v15 = *a3;
    *(*a3 + 16) = v14 + 1;
    sub_1C4709E74(a1, v15 + ((*(*(v13 - 1) + 80) + 32) & ~*(*(v13 - 1) + 80)) + *(*(v13 - 1) + 72) * v14);
  }

  else
  {
    v16 = v13[5];
    sub_1C4EFECB8();
    LOBYTE(v16) = sub_1C44DBB50(a1 + v16, v11);
    (*(v9 + 8))(v11, v8);
    if (v16)
    {
      v17 = (a1 + v13[8]);
      v18 = v17[1];
      *a4 = *v17;
      a4[1] = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return 1;
}

uint64_t sub_1C4BCA80C()
{

  return v0;
}

uint64_t sub_1C4BCA888()
{
  sub_1C4BCA80C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BCA940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1C4BCAC9C(a4, a5, a6);
  return sub_1C4F010B8() & 1;
}

uint64_t sub_1C4BCA9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

uint64_t sub_1C4BCAC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_1C4BC7B28(a1, v5, a3);
}

uint64_t sub_1C4BCAC9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C4BCAD28(uint64_t a1)
{
  v2 = sub_1C4EFF0C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventTriple(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v34 - v8;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  v47 = MEMORY[0x1E69E7CC8];
  v44 = *(a1 + 16);
  v42 = (v3 + 16);
  v37 = v3 + 32;
  v38 = v3;
  v36 = (v3 + 8);
  v35 = xmmword_1C4F0D130;
  v39 = v2;
  v40 = a1;
  while (1)
  {
    if (v44 == v9)
    {

      return v10;
    }

    if (v9 >= *(a1 + 16))
    {
      break;
    }

    v11 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v12 = *(v43 + 72);
    v13 = v45;
    sub_1C4BCDCA0(a1 + v11 + v12 * v9, v45);
    (*v42)(v46, v13, v2);
    sub_1C44E3664();
    v16 = v15;
    v17 = v10[2];
    v18 = (v14 & 1) == 0;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v10[3] < v17 + v18)
    {
      sub_1C467A2D4();
      v10 = v47;
      sub_1C44E3664();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

      v16 = v20;
    }

    if (v19)
    {
      (*v36)(v46, v2);
      v22 = v10[7];
      sub_1C44721E4(v45, v41, type metadata accessor for EventTriple);
      v23 = *(v22 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v16) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458BAC8(0, *(v23 + 16) + 1, 1, v23);
        v23 = v31;
        *(v22 + 8 * v16) = v31;
      }

      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C458BAC8(v25 > 1, v26 + 1, 1, v23);
        v23 = v32;
        *(v22 + 8 * v16) = v32;
      }

      v2 = v39;
      *(v23 + 16) = v26 + 1;
      sub_1C44721E4(v41, v23 + v11 + v26 * v12, type metadata accessor for EventTriple);
      a1 = v40;
    }

    else
    {
      sub_1C456902C(&qword_1EC0B8F20, &unk_1C4F3E590);
      v27 = swift_allocObject();
      *(v27 + 16) = v35;
      sub_1C44721E4(v45, v27 + v11, type metadata accessor for EventTriple);
      v10[(v16 >> 6) + 8] |= 1 << v16;
      (*(v38 + 32))(v10[6] + *(v38 + 72) * v16, v46, v2);
      *(v10[7] + 8 * v16) = v27;
      v28 = v10[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v10[2] = v30;
    }

    ++v9;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4BCB148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBC74();
  v30 = v6;
  sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE95C();
  sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v31[3] = sub_1C440A198();
  v31[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v31);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v32[3] = sub_1C4EFB298();
  v32[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v32);
  v11 = sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4400184();
  sub_1C4401CBC(v12, &qword_1EC0BB250, &unk_1C4F1E7D0, v13);
  sub_1C4420570();
  v16 = sub_1C4BCDDF0(v14, v15, MEMORY[0x1E69A9800]);
  sub_1C440920C(v16);
  sub_1C440962C(v31);
  sub_1C44354CC();
  (*(v8 + 8))(v3, v11);
  sub_1C440962C(v32);
  sub_1C441E75C();
  v17 = sub_1C44061E4();
  result = v18(v17);
  if (!v3)
  {
    sub_1C4BC77A4();
    sub_1C4EFBE98();

    v29 = *(a2 + 16);
    if (v29)
    {
      v20 = 0;
      v28 = a2 + 32;
      v21 = v30;
      do
      {
        if (*(*(v28 + 8 * v20) + 16))
        {
          v32[6] = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C441BD6C();
          sub_1C4405404();
          do
          {
            sub_1C442E860(v20, v32);
            v22 = sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            sub_1C43FC9FC(v22);
            sub_1C441CE9C();
            if (v24)
            {
              v26 = sub_1C43FCFE8(v23);
              sub_1C459D088(v26, v21, 1);
            }

            sub_1C4440034();
          }

          while (!v25);

          v21 = v30;
        }

        sub_1C4EFB788();
        sub_1C4EFC0A8();
        sub_1C4420C3C(v21, &unk_1EC0C06C0, &unk_1C4F10DB0);
        ++v20;
      }

      while (v20 != v29);
    }
  }

  return result;
}

uint64_t sub_1C4BCB52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBC74();
  v30 = v6;
  sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE95C();
  sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v31[3] = sub_1C440A198();
  v31[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v31);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v32[3] = sub_1C4EFB298();
  v32[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v32);
  v11 = sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4400184();
  sub_1C4401CBC(v12, &qword_1EC0BB250, &unk_1C4F1E7D0, v13);
  sub_1C4420570();
  v16 = sub_1C4BCDDF0(v14, v15, MEMORY[0x1E69A9800]);
  sub_1C440920C(v16);
  sub_1C440962C(v31);
  sub_1C44354CC();
  (*(v8 + 8))(v3, v11);
  sub_1C440962C(v32);
  sub_1C441E75C();
  v17 = sub_1C44061E4();
  result = v18(v17);
  if (!v3)
  {
    sub_1C4BC76D8();
    sub_1C4EFBE98();

    v29 = *(a2 + 16);
    if (v29)
    {
      v20 = 0;
      v28 = a2 + 32;
      v21 = v30;
      do
      {
        if (*(*(v28 + 8 * v20) + 16))
        {
          v32[6] = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C441BD6C();
          sub_1C4405404();
          do
          {
            sub_1C442E860(v20, v32);
            v22 = sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            sub_1C43FC9FC(v22);
            sub_1C441CE9C();
            if (v24)
            {
              v26 = sub_1C43FCFE8(v23);
              sub_1C459D088(v26, v21, 1);
            }

            sub_1C4440034();
          }

          while (!v25);

          v21 = v30;
        }

        sub_1C4EFB788();
        sub_1C4EFC0A8();
        sub_1C4420C3C(v21, &unk_1EC0C06C0, &unk_1C4F10DB0);
        ++v20;
      }

      while (v20 != v29);
    }
  }

  return result;
}

uint64_t sub_1C4BCB910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  sub_1C4C81AA0(a1, a2, a3);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      _s31AppleMusicEventMapViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x80uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = 0x80000001C4FB83A0;
      *(v11 + 48) = v13;
      *(v11 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4BCBA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BCB910(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4BCBB10()
{

  sub_1C446C37C(sub_1C4BCDE38, v0);
}

void sub_1C4BCBB70(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 3, sizeof(__dst));
  sub_1C4D03CE4();
  if (!v2)
  {
    v4 = a2[13];
    if (v4)
    {
      v5 = a2[12];
      _s23UpdatedObjectDiffWriterCMa();
      v7 = swift_allocObject();
      sub_1C4BC3C1C(v5, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4BCBC9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v231 = a4;
  v230 = a3;
  v229 = a2;
  v268 = a1;
  v220[4] = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  sub_1C43FCE30(v8);
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  sub_1C43FCE30(v12);
  v223 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v227 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  sub_1C43FCE30(v15);
  v237 = sub_1C4EFF4A8();
  sub_1C43FCDF8();
  v226 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  sub_1C43FCE30(v19);
  v20 = sub_1C456902C(&qword_1EC0C46F0, &qword_1C4F5B7C0);
  sub_1C43FBD18(v20);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  sub_1C43FCE30(v22);
  v247 = sub_1C456902C(&qword_1EC0C46F8, &qword_1C4F5B7C8);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  sub_1C43FCE30(v25);
  v26 = sub_1C456902C(&qword_1EC0C4700, &qword_1C4F5B7D0);
  v27 = sub_1C43FBD18(v26);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  sub_1C43FCE30(v29);
  v251 = sub_1C456902C(&qword_1EC0C4708, &unk_1C4F5B7D8);
  sub_1C43FCDF8();
  v228 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  sub_1C43FCE30(v32);
  v33 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v33);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FE95C();
  v35 = type metadata accessor for Source(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v274 = v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = (v220 - v39);
  v234 = sub_1C456902C(&qword_1EC0C4710, &qword_1C4F5B7E8);
  sub_1C43FCDF8();
  v233 = v41;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  sub_1C43FCE30(v44);
  v258 = type metadata accessor for EventTriple(0);
  sub_1C43FCDF8();
  v257 = v45;
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  v269 = v48;
  v49 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD2D8();
  sub_1C43FCE30(v53);
  *&v266 = sub_1C456902C(&qword_1EC0C4718, &unk_1C4F5B7F0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBC74();
  v265 = v55;
  v56 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v57 = sub_1C43FBD18(v56);
  MEMORY[0x1EEE9AC00](v57);
  v59 = v220 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  isa = v220 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v64 = (v220 - v63);
  v273 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FD230();
  v272 = v67;
  v68 = 0;
  v267 = *(v268 + 16);
  *&v262 = v69 + 16;
  v245 = (v51 + 32);
  v253 = (v51 + 8);
  v70 = v64;
  v259 = (v69 + 8);
  v263 = v69;
  v238 = (v69 + 32);
  v240 = MEMORY[0x1E69E7CC0];
  v256 = v64;
  v254 = v59;
  v264 = v35;
  v244 = v40;
  while (v267 != v68)
  {
    v261 = (*(v263 + 80) + 32) & ~*(v263 + 80);
    v71 = *(v263 + 72);
    v271 = v68;
    v260 = v71;
    (*(v263 + 16))(v272, v268 + v261 + v71 * v68, v273);
    v72 = v70;
    sub_1C4EFF038();
    v73 = isa;
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C440BAA8(v73, 0, 1, v49);
    v74 = v265;
    v70 = *(v266 + 48);
    sub_1C4460108(v72, v265, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C4460108(v73, v74 + v70, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C440175C(v74, 1, v49);
    if (v85)
    {
      sub_1C440109C();
      sub_1C4420C3C(v75, v76, v77);
      sub_1C440109C();
      sub_1C4420C3C(v78, v79, v80);
      sub_1C440175C(v74 + v70, 1, v49);
      v70 = v72;
      if (!v85)
      {
        goto LABEL_11;
      }

      sub_1C440109C();
      sub_1C4420C3C(v81, v82, v83);
      goto LABEL_14;
    }

    v84 = v254;
    sub_1C4460108(v74, v254, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C440175C(v74 + v70, 1, v49);
    if (v85)
    {
      sub_1C440109C();
      sub_1C4420C3C(v86, v87, v88);
      sub_1C442C004();
      sub_1C440109C();
      sub_1C4420C3C(v89, v90, v91);
      (*v253)(v84, v49);
LABEL_11:
      sub_1C4420C3C(v74, &qword_1EC0C4718, &unk_1C4F5B7F0);
      goto LABEL_13;
    }

    v92 = v74 + v70;
    v70 = v49;
    v93 = v246;
    (*v245)(v246, v92, v70);
    sub_1C4BCDDF0(&qword_1EDDFCCD8, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92E0]);
    LODWORD(v252) = sub_1C4F010B8();
    v94 = *v253;
    v95 = v93;
    v49 = v70;
    (*v253)(v95, v70);
    sub_1C440109C();
    sub_1C4420C3C(v96, v97, v98);
    sub_1C442C004();
    sub_1C440109C();
    sub_1C4420C3C(v99, v100, v101);
    v94(v84, v70);
    v40 = v244;
    sub_1C440109C();
    sub_1C4420C3C(v102, v103, v104);
    if (v252)
    {
LABEL_14:
      v252 = *v238;
      v252(v239, v272, v273);
      v105 = v240;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v105;
      *&v275 = v105;
      v35 = v264;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C441EFE4();
        sub_1C459D178();
        sub_1C442C004();
        v107 = v275;
      }

      v108 = v271;
      v110 = *(v107 + 16);
      v109 = *(v107 + 24);
      v111 = v110 + 1;
      if (v110 >= v109 >> 1)
      {
        sub_1C43FCFE8(v109);
        v70 = &v275;
        sub_1C459D178();
        sub_1C442C004();
        v107 = v275;
      }

      *(v107 + 16) = v111;
      v240 = v107;
      v112 = v107 + v261 + v110 * v260;
      v113 = v108 + 1;
      v252(v112, v239, v273);
      v68 = v113;
    }

    else
    {
LABEL_13:
      (*v259)(v272, v273);
      v68 = v271 + 1;
      v35 = v264;
    }
  }

  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFEBB8();
  sub_1C4EFECF8();
  v115 = sub_1C486F58C(v240, v114, 0.0);

  v117 = 0;
  v267 = *(v115 + 16);
  v265 = MEMORY[0x1E69E7CC0];
  *&v266 = v115;
LABEL_20:
  while (v117 != v267)
  {
    if (v117 >= *(v115 + 16))
    {
LABEL_98:
      __break(1u);
      return result;
    }

    v118 = (LOBYTE(v257[10].isa) + 32) & ~LOBYTE(v257[10].isa);
    isa = v257[9].isa;
    v271 = v118;
    v119 = v269;
    sub_1C4BCDCA0(v115 + v118 + isa * v117, v269);
    v120 = *(v119 + *(v258 + 9));
    if (qword_1EDDFD268 != -1)
    {
      swift_once();
    }

    v272 = (v117 + 1);
    v121 = sub_1C442B738(v35, &qword_1EDDFD270);
    v122 = 1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (qword_1EDDFA6A8 != -1)
          {
            swift_once();
          }

          if (qword_1EDE2DCF0 < v122)
          {
            result = sub_1C447EC3C(v269, type metadata accessor for EventTriple);
            v115 = v266;
            v117 = v272;
            goto LABEL_20;
          }

          sub_1C449E530(v122, v4);
          sub_1C440175C(v4, 1, v35);
          if (!v85)
          {
            break;
          }

          result = sub_1C4420C3C(v4, &unk_1EC0C0760, &qword_1C4F170D0);
          v123 = __OFADD__(v122++, 1);
          if (v123)
          {
            goto LABEL_96;
          }
        }

        sub_1C4432C00();
        result = sub_1C44721E4(v4, v274, v124);
        v125 = v122 - 1;
        if (__OFSUB__(v122, 1))
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v123 = __OFADD__(v122++, 1);
        if (v123)
        {
          goto LABEL_97;
        }

        v126 = v125 > 0x40;
        if (v125 >= 0x40)
        {
          v127 = 0;
        }

        else
        {
          v127 = 1 << v125;
        }

        if (v126)
        {
          v127 = 0;
        }

        if ((v127 & v120) >= 1)
        {
          break;
        }

        sub_1C442D588();
        sub_1C447EC3C(v274, v132);
      }

      sub_1C4432C00();
      sub_1C44721E4(v274, v40, v128);
      if (*v40 == *v121 && v40[1] == v121[1])
      {
        break;
      }

      v130 = sub_1C4F02938();
      sub_1C442D588();
      sub_1C447EC3C(v40, v131);
      if (v130)
      {
        goto LABEL_50;
      }
    }

    sub_1C442D588();
    sub_1C447EC3C(v40, v133);
LABEL_50:
    sub_1C4413958();
    sub_1C44721E4(v269, v255, v134);
    v135 = v265;
    v136 = swift_isUniquelyReferenced_nonNull_native();
    *&v275 = v135;
    if ((v136 & 1) == 0)
    {
      sub_1C441EFE4();
      sub_1C459DA20();
      v135 = v275;
    }

    v115 = v266;
    v138 = v135[2];
    v137 = v135[3];
    if (v138 >= v137 >> 1)
    {
      sub_1C43FCFE8(v137);
      sub_1C459DA20();
      v135 = v275;
    }

    v135[2] = (v138 + 1);
    v265 = v135;
    sub_1C4413958();
    result = sub_1C44721E4(v255, v139, v140);
    v117 = v272;
  }

  v141 = v235;
  *&v275 = sub_1C4BCAD28(v265);
  sub_1C456902C(&qword_1EC0C4720, &unk_1C4F5DF50);
  sub_1C4BCDD04(&qword_1EC0C4728, MEMORY[0x1E69A9E00]);
  v142 = sub_1C4EFF8B8();

  v278 = MEMORY[0x1E69E7CC0];
  *&v275 = v142;
  v143 = sub_1C456902C(&qword_1EC0C4730, &qword_1C4F5E5D0);
  v144 = sub_1C4401CBC(&qword_1EDDEFF78, &qword_1EC0C4730, &qword_1C4F5E5D0, MEMORY[0x1E69A99D8]);
  v145 = sub_1C4BCDDF0(&qword_1EC0C4738, MEMORY[0x1E69A9910], MEMORY[0x1E69A9908]);
  v146 = sub_1C4BCDD04(&qword_1EDDDBD90, MEMORY[0x1E69A9E08]);
  v147 = v236;
  v148 = v237;
  sub_1C440109C();
  sub_1C4EFFDC8();
  if (v141)
  {

    return sub_1C43FBC98();
  }

  v272 = 0;
  v274 = v142;
  (*(v233 + 16))(v225, v147, v234);
  *&v275 = v143;
  *(&v275 + 1) = v148;
  *&v276 = v144;
  *(&v276 + 1) = v145;
  v264 = v145;
  v277 = v146;
  swift_getOpaqueTypeConformance2();
  sub_1C4F01478();
  swift_getAssociatedConformanceWitness();
  isa = v226 + 32;
  v263 = v227 + 32;
  v265 = (v227 + 8);
  v271 = (v226 + 8);
  v267 = (v226 + 16);
  v269 = MEMORY[0x1E69E7CC0];
  *&v149 = 136315138;
  v266 = v149;
  v262 = xmmword_1C4F0C890;
  v150 = v243;
  v151 = v249;
  while (2)
  {
    sub_1C4F01FA8();
    sub_1C44CDA30(v150, v151, &qword_1EC0C4700, &qword_1C4F5B7D0);
    v152 = sub_1C456902C(&qword_1EC0C4740, &qword_1C4F5B810);
    v153 = sub_1C442FFA8();
    sub_1C440175C(v153, v154, v152);
    if (!v85)
    {
      v155 = v151 + *(v152 + 48);
      v156 = v248;
      sub_1C44CDA30(v155, v248, &qword_1EC0C46F0, &qword_1C4F5B7C0);
      v157 = v247;
      sub_1C440175C(v156, 1, v247);
      if (v85)
      {
        sub_1C4420C3C(v156, &qword_1EC0C46F0, &qword_1C4F5B7C0);
LABEL_64:
        v151 = v249;
        v161 = sub_1C456902C(&qword_1EC0C4748, &qword_1C4F5B818);
        (*(*(v161 - 8) + 8))(v151, v161);
        continue;
      }

      v158 = v242;
      sub_1C44CDA30(v156, v242, &qword_1EC0C46F8, &qword_1C4F5B7C8);
      v159 = v241;
      sub_1C4460108(v158, v241, &qword_1EC0C46F8, &qword_1C4F5B7C8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1C4420C3C(v158, &qword_1EC0C46F8, &qword_1C4F5B7C8);
        sub_1C4420C3C(v159, &qword_1EC0C46F8, &qword_1C4F5B7C8);
        v150 = v243;
        goto LABEL_64;
      }

      (*isa)(v232, v159, v237);
      sub_1C440D9D4();
      sub_1C4EFF498();
      v162 = sub_1C4EFFC68();
      v163 = sub_1C442FFA8();
      sub_1C440175C(v163, v164, v162);
      if (v85)
      {
        sub_1C4420C3C(v157, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v167 = v222;
        sub_1C440BAA8(v222, 1, 1, v223);
        v150 = v243;
      }

      else
      {
        sub_1C440D9D4();
        sub_1C4EFFC58();
        v165 = *(v162 - 8);
        v166 = *(v165 + 8);
        v167 = v157;
        v261 = v162;
        v260 = v166;
        v259 = (v165 + 8);
        v166(v157, v162);
        v168 = sub_1C442FFA8();
        v169 = v223;
        sub_1C440175C(v168, v170, v223);
        v150 = v243;
        if (!v171)
        {
          v188 = v169;
          v189 = v221;
          (*v263)(v221, v167, v188);
          sub_1C4EF9AD8();
          v191 = v190;
          sub_1C440D9D4();
          sub_1C4EFF498();
          v192 = sub_1C442FFA8();
          sub_1C440175C(v192, v193, v261);
          if (v194)
          {
            v195 = v189;
            v196 = &qword_1EC0C0CC8;
            v197 = &unk_1C4F405F0;
          }

          else
          {
            sub_1C440D9D4();
            sub_1C4EFFC48();
            v198 = v189;
            v260(v189, v261);
            v199 = sub_1C442FFA8();
            v200 = v223;
            sub_1C440175C(v199, v201, v223);
            if (!v202)
            {
              sub_1C4EF9AD8();
              v204 = v203;
              (*v265)(v198, v200);
              LODWORD(v261) = 0;
              goto LABEL_83;
            }

            v195 = v198;
            v196 = &unk_1EC0B84E0;
            v197 = qword_1C4F0D2D0;
          }

          sub_1C4420C3C(v195, v196, v197);
          LODWORD(v261) = 1;
          v204 = 0;
LABEL_83:
          sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
          v205 = swift_allocObject();
          *(v205 + 16) = v262;
          *(v205 + 56) = v273;
          sub_1C4420570();
          *(v205 + 64) = sub_1C4BCDDF0(&qword_1EDDFA1C8, v206, MEMORY[0x1E69A9808]);
          sub_1C4422F90((v205 + 32));
          sub_1C4EFD5A8();
          v207 = MEMORY[0x1E69E63B0];
          *(v205 + 96) = MEMORY[0x1E69E63B0];
          v208 = MEMORY[0x1E69A0168];
          *(v205 + 104) = MEMORY[0x1E69A0168];
          *(v205 + 72) = v191;
          if (v261)
          {
            v209 = sub_1C4EFB258();
            v275 = 0u;
            v276 = 0u;
            v277 = 0;
            *(v205 + 136) = v209;
            *(v205 + 144) = MEMORY[0x1E699FE38];
            sub_1C4422F90((v205 + 112));
            sub_1C4EFB228();
            if (*(&v276 + 1))
            {
              sub_1C4420C3C(&v275, &qword_1EC0B9038, &unk_1C4F231C0);
            }
          }

          else
          {
            *(&v276 + 1) = v207;
            v277 = v208;
            *&v275 = v204;
            sub_1C443FA18(&v275, v205 + 112);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458B824();
            v269 = v215;
          }

          v211 = *(v269 + 16);
          v210 = *(v269 + 24);
          v261 = v211 + 1;
          if (v211 >= v210 >> 1)
          {
            sub_1C43FCFE8(v210);
            sub_1C458B824();
            v269 = v216;
          }

          (*v265)(v221, v223);
          (*v271)(v232, v237);
          sub_1C44254E0();
          v212 = v269;
          *(v269 + 16) = v261;
          *(v212 + 8 * v211 + 32) = v205;
          v278 = v212;
LABEL_92:
          sub_1C456902C(&qword_1EC0C4748, &qword_1C4F5B818);
          sub_1C43FBCE0();
          v151 = v249;
          (*(v213 + 8))(v249, v214);
          continue;
        }
      }

      sub_1C4420C3C(v167, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v172 = v224;
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v173 = sub_1C4F00978();
      sub_1C442B738(v173, qword_1EDE2DF70);
      v174 = v172;
      v175 = v237;
      (*v267)(v174, v232, v237);
      v176 = sub_1C4F00968();
      LODWORD(v260) = sub_1C4F01CD8();
      if (os_log_type_enabled(v176, v260))
      {
        v261 = swift_slowAlloc();
        v258 = swift_slowAlloc();
        *&v275 = v258;
        *v261 = v266;
        sub_1C440D9D4();
        v257 = v176;
        v177 = v224;
        sub_1C4EFF498();
        v256 = sub_1C4F01198();
        v179 = v178;
        v259 = *v271;
        v259(v177, v237);
        v180 = sub_1C441D828(v256, v179, &v275);

        v181 = v261;
        *(v261 + 4) = v180;
        v182 = v257;
        _os_log_impl(&dword_1C43F8000, v257, v260, "Apple Music map warning: event no start date %s", v181, 0xCu);
        v183 = v258;
        sub_1C440962C(v258);
        MEMORY[0x1C6942830](v183, -1, -1);
        MEMORY[0x1C6942830](v261, -1, -1);

        v184 = sub_1C44047A8();
        (v259)(v184);
      }

      else
      {

        v185 = v175;
        v186 = *v271;
        (*v271)(v224, v185);
        v187 = sub_1C44047A8();
        v186(v187);
      }

      sub_1C44254E0();
      goto LABEL_92;
    }

    break;
  }

  (*(v228 + 8))(v250, v251);
  v217 = (*(v233 + 8))(v236, v234);
  MEMORY[0x1EEE9AC00](v217);
  v220[-6] = v218;
  v220[-5] = &v278;
  v219 = v229;
  v220[-4] = v268;
  v220[-3] = v219;
  v220[-2] = v230;
  LOBYTE(v220[-1]) = v231 & 1;

  sub_1C49A56B8();

  return sub_1C43FBC98();
}

void sub_1C4BCD780(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(char *, unint64_t, uint64_t)@<X5>, int a7@<W6>, void *a8@<X8>)
{
  LODWORD(v53) = a7;
  v55 = a6;
  v54 = a5;
  v52 = a8;
  v13 = sub_1C4EFF0C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a2 + 3, sizeof(__dst));
  v17 = *a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BCB52C(a1, v17, a4);

  if (!v8)
  {
    v50 = a4;
    v57 = v16;
    v18 = a2[13];
    if (v18)
    {
      v49 = v14;
      v56 = v13;
      v20 = a2[17];
      v19 = a2[18];
      v22 = a2[15];
      v21 = a2[16];
      v23 = a2[14];
      v24 = a2[12];
      v58[5] = v24;
      v58[6] = v18;
      v58[7] = v23;
      v58[8] = v22;
      v58[9] = v21;
      v58[10] = v20;
      v58[11] = v19;
      _s23UpdatedObjectDiffWriterCMa();
      v51 = swift_allocObject();
      sub_1C4BC3C1C(v24, v18);

      sub_1C4B8B458();
      v26 = v50;
      v27 = *(v50 + 16);
      if (v27)
      {
        v51 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        v48 = v25;

        sub_1C44CD9C0(0, v27, 0);
        v28 = v60;
        v29 = v49 + 16;
        v55 = *(v49 + 16);
        v30 = v26 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v54 = *(v49 + 72);
        v53 = (v49 + 8);
        v31 = v57;
        do
        {
          v32 = v56;
          v33 = v29;
          v55(v31, v30, v56);
          v34 = sub_1C4EFF048();
          v31 = v57;
          v35 = v34;
          v37 = v36;
          (*v53)(v57, v32);
          v60 = v28;
          v39 = *(v28 + 16);
          v38 = *(v28 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1C44CD9C0(v38 > 1, v39 + 1, 1);
            v31 = v57;
            v28 = v60;
          }

          *(v28 + 16) = v39 + 1;
          v40 = v28 + 16 * v39;
          *(v40 + 32) = v35;
          *(v40 + 40) = v37;
          v30 += v54;
          --v27;
          v29 = v33;
        }

        while (v27);
        v42 = v52;
        v43 = v51;
      }

      else
      {

        v43 = 0;
        v28 = MEMORY[0x1E69E7CC0];
        v42 = v52;
      }

      v58[3] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v58[4] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6328]);
      v58[0] = v28;
      sub_1C4B8C0BC();

      if (v43)
      {

        sub_1C440962C(v58);
      }

      else
      {
        sub_1C440962C(v58);

        sub_1C4B8BB5C();
        v45 = v44;
        v47 = v46;

        *v42 = v45;
        v42[1] = v47;
        *(v42 + 16) = 0;
      }
    }

    else
    {
      v41 = v52;
      *v52 = 0;
      v41[1] = 0;
      *(v41 + 16) = 1;
    }
  }
}

uint64_t sub_1C4BCDC08()
{

  memcpy(v2, (v0 + 24), sizeof(v2));
  sub_1C4BCDE54(v2);
  return v0;
}

uint64_t sub_1C4BCDC48()
{
  sub_1C4BCDC08();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BCDCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTriple(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BCDD04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C4720, &unk_1C4F5DF50);
    sub_1C4400184();
    sub_1C4401CBC(v4, v5, v6, v7);
    sub_1C4BCDDF0(&qword_1EDDFE2F0, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4BCDDF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_1C4BCDEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v9 = v7;
  v17 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v20;
  *(v9 + 40) = *(a1 + 24);
  v21 = OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_config;
  sub_1C443BFA0(a2, v9 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_config, _s10ViewConfigVMa);
  sub_1C443BFA0(a4, v19, type metadata accessor for Configuration);
  type metadata accessor for BehaviorHistoryUtility(0);
  swift_allocObject();
  v22 = sub_1C4623CF4(v19, a5);
  if (v8)
  {
    sub_1C4407DFC();
    sub_1C4454378(a2, _s10ViewConfigVMa);

    sub_1C4454378(v9 + v21, _s10ViewConfigVMa);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v22;
    sub_1C4407DFC();
    sub_1C4407DE4();
    sub_1C4454378(a2, v24);
    *(v9 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_behaviorHistoryUtility) = v23;
    v25 = v9 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_sequenceGenerator;
    *v25 = a3;
    *(v25 + 8) = a6;
    *(v25 + 16) = a7;
  }

  return v9;
}

void sub_1C4BCE0F4()
{
  v2 = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v4 = (v3 + 16);
  v5 = objc_autoreleasePoolPush();
  sub_1C4BCE418(v2, v3, 86400.0);
  isUniquelyReferenced_nonNull_native = v5;
  if (!v1)
  {
    objc_autoreleasePoolPop(v5);
    swift_beginAccess();
    v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4BCFB28(v7, sub_1C49802A8, sub_1C4CD706C);
    sub_1C4BCFDFC();
    *v4 = v26;

    v23 = sub_1C45FB538();
    v24 = v8;
    v25 = v9;
    v27 = v10;
    v11 = *v4;
    v12 = sub_1C4428DA0(*v4);
    isUniquelyReferenced_nonNull_native = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v12 == v13)
      {

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C47D32C8();

        sub_1C45942C8(v23);

        return;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1C6940F90](v13, v11);
        v15 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_1C4BCE940(v13, v15, v23, v24, v25, v27);
      v17 = v16;

      v18 = *(v17 + 16);
      v19 = v14[2];
      if (__OFADD__(v19, v18))
      {
        goto LABEL_23;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v19 + v18 > v14[3] >> 1)
      {
        sub_1C458B504();
        v14 = isUniquelyReferenced_nonNull_native;
      }

      if (*(v17 + 16))
      {
        if ((v14[3] >> 1) - v14[2] < v18)
        {
          goto LABEL_25;
        }

        sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
        swift_arrayInitWithCopy();

        if (v18)
        {
          v20 = v14[2];
          v21 = __OFADD__(v20, v18);
          v22 = v20 + v18;
          if (v21)
          {
            goto LABEL_26;
          }

          v14[2] = v22;
        }
      }

      else
      {

        if (v18)
        {
          goto LABEL_24;
        }
      }

      ++v13;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  objc_autoreleasePoolPop(isUniquelyReferenced_nonNull_native);
  __break(1u);
}

void sub_1C4BCE418(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &aBlock - v13;
  sub_1C4EF9CC8();
  sub_1C4EF9BE8();
  (*(v6 + 8))(v8, v5);
  sub_1C440BAA8(v14, 0, 1, v5);
  sub_1C4EF9CC8();
  sub_1C440BAA8(v11, 0, 1, v5);
  v15 = sub_1C4EFDA68();
  v16 = sub_1C4622C30(v14, v11, 0, v15);

  sub_1C44686E4(v11);
  sub_1C44686E4(v14);
  v17 = sub_1C4633650(v16, *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_sequenceGenerator), *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_sequenceGenerator + 8), *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_sequenceGenerator + 16));
  v25 = sub_1C4BCFF98;
  v26 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C44405F8;
  v24 = &unk_1F4401558;
  v18 = _Block_copy(&aBlock);

  v25 = sub_1C463086C;
  v26 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C45DFE08;
  v24 = &unk_1F4401580;
  v19 = _Block_copy(&aBlock);

  v20 = [v17 sinkWithCompletion:v18 receiveInput:v19];
  _Block_release(v19);
  _Block_release(v18);
}

void sub_1C4BCE744(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DF70);

    v6 = v4;
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_1C441D828(*(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_config), *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_config + 8), &v14);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v10 = sub_1C4F02A38();
      v12 = sub_1C441D828(v10, v11, &v14);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "SignalView %s: writing feature returned error: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4BCE940(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v134 = a5;
  v135 = a4;
  v145 = sub_1C4EFDAB8();
  v10 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v144 = &v120 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v120 - v15;
  v141 = sub_1C4EF9CD8();
  v16 = *(v141 - 1);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157[0] = a1;
  v139 = sub_1C4F02858();
  v127 = v18;
  v19 = *(a2 + 16);
  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v133 = a6;
    *&v149 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v22 = (v19 + 32);
    v124 = *MEMORY[0x1E69A9420];
    v122 = v10;
    v123 = (v10 + 104);
    v137 = a3;
    v138 = (v16 + 16);
    do
    {
      v24 = *v22++;
      v23 = v24;
      if (v24)
      {
        if (a3)
        {
          v143 = v22;
          v25 = v133;
          v26 = *(v23 + 16);
          v27 = *(v23 + 32);
          *&v156[9] = *(v23 + 41);
          v155 = v26;
          *v156 = v27;
          v28 = *(v23 + 16);
          v29 = *(v23 + 24);
          v30 = *(v23 + 40);
          v136 = *(v23 + 32);
          v31 = *(v23 + 48);
          v32 = *(v23 + 56);
          v33 = v26;
          v34 = v27;
          v35 = (v27 >> 8) | (BYTE3(v27) << 16);
          v36 = BYTE4(v27);
          switch(v156[24])
          {
            case 0:
              v128 = v28;
              v129 = v32;
              v131 = v30;
              v132 = v31;

              v37 = v137;
              sub_1C49A26FC(v137);
              v38 = sub_1C4F01108();
              v39 = [v37 payloadForString_];

              if (v39)
              {
                v40 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v41 = v136;
                a3 = v137;
                v42 = v131;
                goto LABEL_16;
              }

              v41 = 0;
              v42 = 0;
              v45 = 0;
              v46 = 0;
              v57 = 0x657463616465723CLL;
              v40 = 0xEA00000000003E64;
              goto LABEL_44;
            case 1:
              v130 = v29;
              v131 = v30;
              v128 = v28;
              v129 = v32;
              v132 = v31;
              v120 = *&v156[5];
              v121 = v156[7];
              v47 = *&v156[8];

              sub_1C49A26FC(v137);
              v125 = v47;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v48 = sub_1C4F01108();
              v49 = [v137 payloadForString_];

              if (v49)
              {
                v50 = v130;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v42 = v131;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

                v40 = v50;
                v41 = v136;
                a3 = v137;
LABEL_16:
                v45 = v132;
                goto LABEL_19;
              }

              v41 = v34 & 0xFFFFFFFF000000FFLL | ((*&v35 & 0xFFFFFFLL) << 8) | (v36 << 32) | ((v120 | (v121 << 16)) << 40);
              v63 = v125;
              v64 = sub_1C4499AD0(v41, v125, v25);
              v42 = v63;
              if (!v64)
              {

                v41 = 0x657463616465723CLL;
                v42 = 0xEA00000000003E64;
              }

              v45 = 0;
              v46 = 1;
              v57 = 0x657463616465723CLL;
              v40 = 0xEA00000000003E64;
LABEL_44:
              a3 = v137;
              break;
            case 4:
              v44 = 0x100000000;
              if ((BYTE4(v27) & 1) == 0)
              {
                v44 = 0;
              }

              v41 = v27 | ((*&v35 & 0xFFFFFFLL) << 8) | v44;

              a3 = v137;
              sub_1C49A26FC(v137);
              v42 = 0;
              v45 = 0;
              v46 = 4;
              goto LABEL_24;
            case 7:
              v41 = v27 & 1;

              a3 = v137;
              sub_1C49A26FC(v137);
              v42 = 0;
              v45 = 0;
              v46 = 7;
              goto LABEL_24;
            case 9:
              v41 = v27 & 1;

              a3 = v137;
              sub_1C49A26FC(v137);
              v42 = 0;
              v45 = 0;
              v46 = 9;
              goto LABEL_24;
            case 0xA:
              v41 = v27 & 1;

              a3 = v137;
              sub_1C49A26FC(v137);
              v42 = 0;
              v45 = 0;
              v46 = 10;
              goto LABEL_24;
            case 0xC:
              v130 = v29;
              v128 = v28;
              v129 = v32;
              v132 = v31;
              v51 = *&v156[16];

              v52 = v137;
              sub_1C49A26FC(v137);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v53 = sub_1C4F01108();
              v54 = [v52 payloadForString_];

              if (v54)
              {
                v55 = v130;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v56 = v132;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

                v40 = v55;
                v45 = v56;
                v42 = v30;
                v41 = v136;
                a3 = v137;
LABEL_19:
                v46 = v129;
                v57 = v128;
              }

              else
              {
                v46 = 12;
                v41 = 0x657463616465723CLL;
                v57 = 0x657463616465723CLL;
                v40 = 0xEA00000000003E64;
                v42 = 0xEA00000000003E64;
                v45 = v51;
                a3 = v137;
              }

              break;
            case 0xD:

              a3 = v137;
              sub_1C49A26FC(v137);
              v41 = 0;
              v42 = 0;
              v45 = 0;
              v46 = 13;
LABEL_24:
              v57 = 0x657463616465723CLL;
              v40 = 0xEA00000000003E64;
              break;
            case 0xE:
              v62 = 0x100000000;
              if ((BYTE4(v27) & 1) == 0)
              {
                v62 = 0;
              }

              v136 = v62 | v27 | ((*&v35 & 0xFFFFFFLL) << 8);

              a3 = v137;
              sub_1C49A26FC(v137);
              v42 = 0;
              v45 = 0;
              if (*(&v33 + 1))
              {
                v57 = 0x657463616465723CLL;
              }

              else
              {
                v57 = v33;
              }

              v41 = v136;
              if (*(&v33 + 1))
              {
                v40 = 0xEA00000000003E64;
              }

              else
              {
                v40 = 0;
              }

              v46 = 14;
              break;
            case 0xF:
              v61 = v126;
              (*v123)(v126, v124, v145);

              a3 = v137;
              sub_1C49A26FC(v137);
              sub_1C45D2400();

              sub_1C45D29E0(v61, 0x657463616465723CLL, 0xEA00000000003E64, v147);
              v57 = v147[0];
              v40 = v147[1];
              v41 = v147[2];
              v42 = v147[3];
              v45 = v147[4];
              v46 = v148;
              break;
            default:
              v131 = v30;
              v132 = v31;
              v130 = v29;
              v58 = v32;
              v59 = v28;

              a3 = v137;
              sub_1C49A26FC(v137);
              sub_1C45A2358(&v155, &v151);
              v40 = v130;
              v42 = v131;
              v57 = v59;
              v46 = v58;
              v45 = v132;
              v41 = v136;
              break;
          }

          v153[0] = v57;
          v153[1] = v40;
          v153[2] = v41;
          v153[3] = v42;
          v153[4] = v45;
          v154 = v46;
          type metadata accessor for BehaviorEvent();
          v60 = v140;
          (*v138)(v140, *(v23 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v141);
          sub_1C45D644C(v153, v60);

          v22 = v143;
        }

        else
        {
          type metadata accessor for BehaviorEvent();
          memset(v157, 0, sizeof(v157));
          v158 = 21;
          v43 = v140;
          (*v138)(v140, *(v23 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v141);
          sub_1C45D644C(v157, v43);
        }
      }

      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v20;
    }

    while (v20);
    v65 = v149;
    v21 = MEMORY[0x1E69E7CC0];
    v10 = v122;
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v65 + 16);
  if (v66)
  {
    *&v149 = v21;
    sub_1C4F02348();
    v67 = 0;
    v68 = (v10 + 32);
    LODWORD(v143) = *MEMORY[0x1E69A9450];
    v141 = (v10 + 104);
    v69 = (v10 + 8);
    do
    {
      v70 = *(v65 + 8 * v67 + 32);
      v71 = v145;
      if (v70)
      {
        v72 = v70[2];
        v151 = v70[1];
        v152[0] = v72;
        *(v152 + 9) = *(v70 + 41);
        v73 = v142;
        sub_1C45D5A24(v142);
        v74 = v144;
        (*v68)(v144, v73, v71);
      }

      else
      {
        v74 = v144;
        (*v141)(v144, v143, v145);
      }

      ++v67;

      sub_1C4EFDAA8();
      (*v69)(v74, v71);
      sub_1C4F01B58();

      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    while (v66 != v67);
    v145 = v149;
    v146 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v66, 0);
    v75 = 32;
    v76 = v146;
    do
    {
      v77 = *(v65 + v75);
      if (v77)
      {
        v78 = v77[2];
        v149 = v77[1];
        v150[0] = v78;
        *(v150 + 9) = *(v77 + 41);

        v79 = sub_1C45D2400();
        v81 = v80;
      }

      else
      {
        v81 = 0xE300000000000000;
        v79 = 7040629;
      }

      v146 = v76;
      v83 = *(v76 + 16);
      v82 = *(v76 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1C44CD9C0(v82 > 1, v83 + 1, 1);
        v76 = v146;
      }

      *(v76 + 16) = v83 + 1;
      v84 = v76 + 16 * v83;
      *(v84 + 32) = v79;
      *(v84 + 40) = v81;
      v75 += 8;
      --v66;
    }

    while (v66);

    v85 = v145;
  }

  else
  {

    v76 = MEMORY[0x1E69E7CC0];
    v85 = MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  sub_1C4461BB8(0, &qword_1EC0C1C18, 0x1E695FF10);
  v87 = sub_1C4C0C460(v85);
  v88 = objc_opt_self();
  v89 = [v88 featureValueWithSequence_];

  *(inited + 48) = v89;
  *(inited + 56) = 0x696669746E656469;
  *(inited + 64) = 0xEA00000000007265;
  v90 = sub_1C4C0C4E4(v76);
  v91 = [v88 featureValueWithSequence_];

  *(inited + 72) = v91;
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v92 = sub_1C4F00F28();
  v93 = *(v92 + 16);
  if (v93)
  {
    v146 = MEMORY[0x1E69E7CC0];
    sub_1C459D810();
    v94 = v146;
    v97 = sub_1C4703354();
    v98 = 0;
    v99 = (v92 + 64);
    v136 = v92 + 72;
    v137 = v93;
    v100 = v127;
    v138 = (v92 + 64);
    if ((v97 & 0x8000000000000000) == 0)
    {
      while (v97 < 1 << *(v92 + 32))
      {
        v101 = v97 >> 6;
        if ((v99[v97 >> 6] & (1 << v97)) == 0)
        {
          goto LABEL_84;
        }

        if (*(v92 + 36) != v95)
        {
          goto LABEL_85;
        }

        LODWORD(v140) = v96;
        v141 = v98;
        v142 = v95;
        v102 = *(v92 + 56);
        v103 = (*(v92 + 48) + 16 * v97);
        v104 = v103[1];
        v143 = *v103;
        v144 = v104;
        v105 = *(v102 + 8 * v97);
        v146 = v94;
        v106 = *(v94 + 16);
        v107 = *(v94 + 24);
        v145 = v106 + 1;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v108 = v105;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v106 >= v107 >> 1)
        {
          sub_1C459D810();
          v94 = v146;
        }

        *(v94 + 16) = v145;
        v109 = (v94 + 40 * v106);
        v110 = v144;
        v109[4] = v143;
        v109[5] = v110;
        v109[6] = v139;
        v109[7] = v100;
        v109[8] = v108;
        v111 = 1 << *(v92 + 32);
        if (v97 >= v111)
        {
          goto LABEL_86;
        }

        v99 = v138;
        v112 = v138[v101];
        if ((v112 & (1 << v97)) == 0)
        {
          goto LABEL_87;
        }

        if (*(v92 + 36) != v142)
        {
          goto LABEL_88;
        }

        v113 = v112 & (-2 << (v97 & 0x3F));
        if (v113)
        {
          v111 = __clz(__rbit64(v113)) | v97 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v114 = v94;
          v115 = v101 << 6;
          v116 = v101 + 1;
          v117 = (v136 + 8 * v101);
          while (v116 < (v111 + 63) >> 6)
          {
            v119 = *v117++;
            v118 = v119;
            v115 += 64;
            ++v116;
            if (v119)
            {
              sub_1C440951C(v97, v142, v140 & 1);
              v111 = __clz(__rbit64(v118)) + v115;
              goto LABEL_78;
            }
          }

          sub_1C440951C(v97, v142, v140 & 1);
LABEL_78:
          v94 = v114;
        }

        v98 = v141 + 1;
        if (v141 + 1 == v137)
        {
          goto LABEL_82;
        }

        v96 = 0;
        v95 = *(v92 + 36);
        v97 = v111;
        if (v111 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
  }

  else
  {
LABEL_82:
  }
}

uint64_t sub_1C4BCF864()
{

  sub_1C4407DE4();
  sub_1C4454378(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C4BCF8CC()
{
  sub_1C4BCF864();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorSequenceSignalView(uint64_t a1)
{
  result = qword_1EDDF2CB8;
  if (!qword_1EDDF2CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BCF978(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4BCFA2C()
{
  sub_1C4BCE0F4();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C4BCFB28(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1C4F02128();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_1C4BCFBCC()
{
  v1 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  v23 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - v6;
  v22 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v21 = v8 - 2;
    while (1)
    {
      v25 = 0;
      MEMORY[0x1C6942850](&v25, 8, v5);
      v11 = (v25 * v8) >> 64;
      if (v8 > v25 * v8)
      {
        v12 = -v8 % v8;
        if (v12 > v25 * v8)
        {
          do
          {
            v25 = 0;
            MEMORY[0x1C6942850](&v25, 8);
          }

          while (v12 > v25 * v8);
          v11 = (v25 * v8) >> 64;
        }
      }

      v13 = v10 + v11;
      if (__OFADD__(v10, v11))
      {
        break;
      }

      if (v10 != v13)
      {
        v14 = *(v7 + 16);
        if (v10 >= v14)
        {
          goto LABEL_20;
        }

        v15 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v16 = *(v23 + 72);
        sub_1C4BCFFA0(v7 + v15 + v16 * v10, v24);
        if (v13 >= v14)
        {
          goto LABEL_21;
        }

        sub_1C4BCFFA0(v7 + v15 + v16 * v13, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C461B004();
          v7 = v17;
        }

        if (v10 >= *(v7 + 16))
        {
          goto LABEL_22;
        }

        v18 = v7 + v15;
        sub_1C4BD0010(v3, v18 + v16 * v10);
        if (v13 >= *(v7 + 16))
        {
          goto LABEL_23;
        }

        sub_1C4BD0010(v24, v18 + v16 * v13);
        v9 = v21;
        *v22 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1C4BCFDFC()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v15 = 0;
      MEMORY[0x1C6942850](&v15, 8);
      v4 = (v15 * v1) >> 64;
      if (v1 > v15 * v1)
      {
        v5 = -v1 % v1;
        if (v5 > v15 * v1)
        {
          do
          {
            v15 = 0;
            MEMORY[0x1C6942850](&v15, 8);
          }

          while (v5 > v15 * v1);
          v4 = (v15 * v1) >> 64;
        }
      }

      v6 = v3 + v4;
      if (__OFADD__(v3, v4))
      {
        break;
      }

      if (v3 != v6)
      {
        v7 = *v0;
        v8 = *(*v0 + 16);
        if (v3 >= v8)
        {
          goto LABEL_22;
        }

        if (v6 >= v8)
        {
          goto LABEL_23;
        }

        v9 = *(v7 + 32 + 8 * v3);
        v10 = *(v7 + 32 + 8 * v6);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_1C461C0EC();
          *v0 = v7;
        }

        if (v3 >= *(v7 + 16))
        {
          goto LABEL_24;
        }

        *(v7 + 8 * v3 + 32) = v10;

        sub_1C4F02328();
        v12 = *v0;
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v12;
        if ((v13 & 1) == 0)
        {
          v12 = sub_1C461C0EC();
          *v0 = v12;
        }

        if (v6 >= *(v12 + 16))
        {
          goto LABEL_25;
        }

        *(v12 + 8 * v6 + 32) = v9;

        sub_1C4F02328();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_1C4BCFFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BD0010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BD0088()
{
  v0 = sub_1C444E0CC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    do
    {
      sub_1C442E860(v2, v6);
      v3 = v7;
      v4 = v8;
      sub_1C4409678(v6, v7);
      (*(v4 + 128))(v3, v4);
      sub_1C440962C(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1C4BD0160()
{
  sub_1C4BD0088();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BD01C8()
{
  v2 = 0;
  v3 = *(v0 + 56);
  v7 = *(v3 + 16);
  v6 = v3;
  v4 = v3 + 48;
  while (v7 != v2)
  {
    if (v2 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFA628();

    if (v1)
    {
      return result;
    }

    ++v2;
    v4 += 64;
  }

  return result;
}

uint64_t sub_1C4BD02D8()
{
  v2 = v0;
  v3 = sub_1C4F00978();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C4F00178();

  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1C441D828(v2[2], v2[3], &v20);
    _os_log_impl(&dword_1C43F8000, v10, v11, "BiomeIncrementalViewGenerator: %s: truncation is not supported, treating as a clear instead.", v12, 0xCu);
    sub_1C440962C(v13);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  result = (*(v5 + 8))(v9, v3);
  v15 = 0;
  v16 = v2[7];
  v19 = *(v16 + 16);
  v18 = v16;
  v17 = v16 + 48;
  while (v19 != v15)
  {
    if (v15 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFA628();

    if (v1)
    {
      return result;
    }

    ++v15;
    v17 += 64;
  }

  return result;
}

void sub_1C4BD0518()
{
  if (v0[32] == 1)
  {
    switch(v0[33])
    {
      case 1:
      case 3:
        sub_1C444F17C();
        break;
      case 2:
        sub_1C4CCD7DC();
        break;
      case 4:
        goto LABEL_4;
      default:
        sub_1C4CCD940();
        break;
    }
  }

  else
  {
LABEL_4:
    v0[34] = 1;
  }
}

uint64_t sub_1C4BD0570(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_queries) = a3;
  sub_1C441D670(a1, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact);
  return v3;
}

uint64_t sub_1C4BD05D8()
{
  sub_1C442E860(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact, v4);
  v1 = v5;
  v2 = v6;
  sub_1C4409678(v4, v5);
  (*(v2 + 32))(v1, v2);
  return sub_1C440962C(v4);
}

void sub_1C4BD0650()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E698F2E0]) init];
  v91 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact);
  sub_1C442E860(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact, &v96);
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C4760, &unk_1C4F5BC80);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v94, v98);
    v3 = 0;
    v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_queries);
    v5 = *(v4 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    v89 = v2;
    v86 = v5;
    v87 = v4;
    v85 = v4 + 32;
LABEL_3:
    if (v3 == v5)
    {
      v68 = v6;
      v69 = v2;
      v70 = v99;
      v71 = v100;
      sub_1C4409678(v98, v99);
      (*(v71 + 8))(v68, v70, v71);

LABEL_35:
      sub_1C440962C(v98);
      return;
    }

    if (v3 < *(v4 + 16))
    {
      v7 = v3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v8 = sub_1C4F01C88();

      v9 = [v8 error];
      if (v9)
      {
        v72 = v9;

        if (qword_1EDDFECD0 != -1)
        {
          sub_1C44066DC(&qword_1EDDFECD0);
        }

        v73 = sub_1C4F00978();
        sub_1C442B738(v73, qword_1EDE2DF70);

        v40 = v72;
        v74 = sub_1C4F00968();
        v75 = v1;
        v76 = sub_1C4F01CD8();

        if (os_log_type_enabled(v74, v76))
        {
          v77 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v96 = v93;
          *v77 = 136315394;
          v78 = sub_1C4401774(OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
          *(v77 + 4) = sub_1C441D828(v78, v79, &v96);
          *(v77 + 12) = 2080;
          swift_getErrorValue();
          v80 = sub_1C4F02A38();
          sub_1C441D828(v80, v81, &v96);
          sub_1C440390C();
          *(v77 + 14) = v40;
          v40 = v75;
          sub_1C43FDFC4(&dword_1C43F8000, v82, v83, "BiomeSQLView %s: failed to read Biome SQL due to %s");
          sub_1C4432C18();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        sub_1C442D5C8();
        sub_1C4F02248();
        MEMORY[0x1C6940010](0x4C5153656D6F6942, 0xED00002077656956);
        v84 = sub_1C4401774(OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
        MEMORY[0x1C6940010](v84);
        MEMORY[0x1C6940010](0xD000000000000022, 0x80000001C4FB8680);
        swift_getErrorValue();
      }

      else
      {
        v88 = v7 + 1;
        v90 = v8;
        while (1)
        {
          if (![v8 next])
          {

            v3 = v88;
            v2 = v89;
            v5 = v86;
            v4 = v87;
            goto LABEL_3;
          }

          v10 = [v8 error];
          if (v10)
          {
            break;
          }

          v11 = sub_1C4BD1B7C(v8);
          if (!v11)
          {

            if (qword_1EDDFECD0 != -1)
            {
              sub_1C44066DC(&qword_1EDDFECD0);
            }

            v58 = sub_1C4F00978();
            sub_1C442B738(v58, qword_1EDE2DF70);

            v59 = sub_1C4F00968();
            v60 = sub_1C4F01CD8();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v96 = v62;
              *v61 = 136315138;
              *(v61 + 4) = sub_1C441D828(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config + 8), &v96);
              _os_log_impl(&dword_1C43F8000, v59, v60, "BiomeSQLSignalView %s: could not coerce result to row", v61, 0xCu);
              sub_1C440962C(v62);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            sub_1C442D5C8();
            sub_1C4F02248();
            sub_1C4420588();
            MEMORY[0x1C6940010](*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config + 8));
            MEMORY[0x1C6940010](v60 + 13, 0x80000001C4FB8620);
            v63 = v96;
            v64 = v97;
            v65 = sub_1C446D0DC();
            v66 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v65);
            *v67 = v63;
            v67[1] = v64;
            sub_1C440B500(v66, v67);

            goto LABEL_34;
          }

          v12 = v11;
          v93 = v6;
          v96 = MEMORY[0x1E69E7CC0];
          v13 = v91[3];
          v14 = v91[4];
          v15 = sub_1C4409678(v91, v13);
          v92 = &v85;
          v16 = *(v13 - 8);
          v17 = MEMORY[0x1EEE9AC00](v15);
          v19 = v1;
          v20 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v16 + 16))(v20, v17);
          v21 = (*(v14 + 24))(v13, v14);
          v22 = v20;
          v1 = v19;
          v8 = v90;
          (*(v16 + 8))(v22, v13);
          v23 = 0;
          v24 = *(v21 + 16);
          while (v24 != v23)
          {
            v25 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
            sub_1C4BD10D0((v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23++), v8, v1, &v96, v12);
          }

          v26 = v96;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v6 = v93;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458B824();
            v6 = v28;
          }

          v27 = *(v6 + 16);
          if (v27 >= *(v6 + 24) >> 1)
          {
            sub_1C458B824();
            v6 = v29;
          }

          *(v6 + 16) = v27 + 1;
          *(v6 + 8 * v27 + 32) = v26;
        }

        v37 = v10;

        if (qword_1EDDFECD0 != -1)
        {
          sub_1C44066DC(&qword_1EDDFECD0);
        }

        v38 = sub_1C4F00978();
        v39 = sub_1C442B738(v38, qword_1EDE2DF70);

        v40 = v37;
        v41 = sub_1C4F00968();
        v42 = v1;
        v43 = sub_1C4F01CD8();

        if (os_log_type_enabled(v41, v43))
        {
          v44 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v96 = v93;
          *v44 = 136315394;
          v45 = sub_1C4401774(OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
          *(v44 + 4) = sub_1C441D828(v45, v46, &v96);
          *(v44 + 12) = 2080;
          swift_getErrorValue();
          v47 = sub_1C4F02A38();
          sub_1C441D828(v47, v48, &v96);
          sub_1C440390C();
          *(v44 + 14) = v40;
          v40 = v42;
          sub_1C43FDFC4(&dword_1C43F8000, v49, v50, "BiomeSQLSignalView %s: failed to read Biome SQL step due to %s");
          sub_1C4432C18();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        sub_1C442D5C8();
        sub_1C4F02248();
        sub_1C4420588();
        v51 = sub_1C4401774(OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
        MEMORY[0x1C6940010](v51);
        MEMORY[0x1C6940010](v39 + 20, 0x80000001C4FB8650);
        swift_getErrorValue();
      }

      v52 = sub_1C4F02A38();
      MEMORY[0x1C6940010](v52);

      v53 = v96;
      v54 = v97;
      v55 = sub_1C446D0DC();
      v56 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v55);
      *v57 = v53;
      v57[1] = v54;
      sub_1C440B500(v56, v57);

LABEL_34:
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_43;
  }

  v95 = 0;
  memset(v94, 0, sizeof(v94));
  sub_1C446F170(v94, &qword_1EC0C4810, &unk_1C4F5BAE0);
  if (qword_1EDDFECD0 != -1)
  {
LABEL_43:
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v30 = sub_1C4F00978();
  sub_1C442B738(v30, qword_1EDE2DF70);
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CD8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1C43F8000, v31, v32, "BiomeSQLView: Cannot infer updateable table", v33, 2u);
    sub_1C43FBE2C();
  }

  v34 = sub_1C446D0DC();
  v35 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v34);
  *v36 = 0xD00000000000002BLL;
  v36[1] = 0x80000001C4FB85D0;
  sub_1C440B500(v35, v36);
}

uint64_t sub_1C4BD10D0(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v48 = a5;
  v10 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a2 columns];
  sub_1C4F01678();

  v41 = a1;
  v15 = sub_1C44CE068();

  if (!v15)
  {
    v40 = v5;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDE2DF70);
    sub_1C443CCBC(a1, v13);

    v17 = a2;
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v44 = v39;
      *v20 = 136315650;
      *(v20 + 4) = sub_1C441D828(*(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config), *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config + 8), &v44);
      *(v20 + 12) = 2080;
      *&v47[0] = 0;
      *(&v47[0] + 1) = 0xE000000000000000;
      v38 = v19;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x747265706F72503CLL, 0xED0000203A6E2079);
      MEMORY[0x1C6940010](*v13, v13[1]);
      MEMORY[0x1C6940010](0x203A74202CLL, 0xE500000000000000);
      sub_1C4EFBE38();
      sub_1C4F02438();
      MEMORY[0x1C6940010](62, 0xE100000000000000);
      v21 = v47[0];
      sub_1C443CE80(v13, type metadata accessor for ViewDatabaseArtifact.Property);
      v22 = sub_1C441D828(v21, *(&v21 + 1), &v44);

      *(v20 + 14) = v22;
      *(v20 + 22) = 2080;
      v23 = [v17 columns];
      v24 = MEMORY[0x1E69E6158];
      v25 = sub_1C4F01678();

      v26 = MEMORY[0x1C6940380](v25, v24);
      v28 = v27;

      v29 = sub_1C441D828(v26, v28, &v44);

      *(v20 + 24) = v29;
      _os_log_impl(&dword_1C43F8000, v18, v38, "BiomeSQLSignalView %s: column mismatch: %s not found in %s", v20, 0x20u);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v30, -1, -1);
      MEMORY[0x1C6942830](v20, -1, -1);
    }

    else
    {

      sub_1C443CE80(v13, type metadata accessor for ViewDatabaseArtifact.Property);
    }

    static DatabaseValue.emptyValue(forType:)(a1 + *(v10 + 20), v47);
    sub_1C4589648();
    v31 = *(*a4 + 16);
    sub_1C458A1C8();
    v32 = *a4;
    *(v32 + 16) = v31 + 1;
    sub_1C441D670(v47, v32 + 40 * v31 + 32);
  }

  v33 = a1[1];
  *&v44 = *a1;
  *(&v44 + 1) = v33;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F02198();
  sub_1C465C11C();
  sub_1C457E804(v47);
  if (v43)
  {
    sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
    if (swift_dynamicCast())
    {
      if (*(&v45 + 1))
      {
        sub_1C441D670(&v44, v47);
        goto LABEL_16;
      }
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
    }
  }

  else
  {
    sub_1C446F170(v42, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
  }

  static DatabaseValue.emptyValue(forType:)(a1 + *(v10 + 20), v47);
  if (*(&v45 + 1))
  {
    sub_1C446F170(&v44, &qword_1EC0B9038, &unk_1C4F231C0);
  }

LABEL_16:
  sub_1C4589648();
  v34 = *(*a4 + 16);
  sub_1C458A1C8();
  v35 = *a4;
  *(v35 + 16) = v34 + 1;
  return sub_1C441D670(v47, v35 + 40 * v34 + 32);
}

uint64_t sub_1C4BD1644(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

uint64_t sub_1C4BD169C()
{
  sub_1C4407E24();
  sub_1C443CE80(v0 + v1, v2);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact));
  return v0;
}

uint64_t sub_1C4BD16E8()
{
  sub_1C4BD169C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BD1768(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4BD1810()
{
  sub_1C4BD0650();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BD1888()
{
  sub_1C4BD05D8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BD18E4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = *(*v3 + 16);

  sub_1C443A738(a1, a2, v15, v16, v17, v18, v19, v20);

  if (!v4)
  {
    v22 = *(v13 + 9);
    if (v22)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3 & 1);
      sub_1C463F300(v13, v10);
      type metadata accessor for BiomeSQLSignalView(0);
      v14 = swift_allocObject();
      sub_1C4BD0570(&v27, v10, v22);
    }

    else
    {
      v14 = 0x80000001C4FB86B0;
      v23 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v23);
      *v24 = a1;
      *(v24 + 8) = a2;
      *(v24 + 16) = 0xD000000000000013;
      *(v24 + 24) = 0x80000001C4FB86B0;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0xE000000000000000;
      *(v24 + 48) = v27;
      *(v24 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4407E24();
      sub_1C443CE80(v13, v25);
    }
  }

  return v14;
}

uint64_t sub_1C4BD1AD4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1C4BD18E4(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_1C4BD1B7C(void *a1)
{
  v1 = [a1 row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F00ED8();

  return v3;
}

uint64_t sub_1C4BD1C50(uint64_t a1)
{
  result = type metadata accessor for ViewGeneration.ViewClients(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C4EF98F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4BD1CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_config);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_featureNames) = a4;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_queries) = a3;
  return v4;
}

void sub_1C4BD1D4C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E698F2E0]) init];
  v3 = 0;
  v4 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_queries);
  v54 = v1;
  v58 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_config);
  v57 = MEMORY[0x1E69E7CC0];
  v5 = *(v4 + 16);
  v6 = 0x4E65727574616566;
  v59 = v2;
  v56 = v4;
  v55 = v5;
LABEL_2:
  if (v3 == v5)
  {
    v44 = v2;
    v45 = v54[3];
    v46 = v54[4];
    v47 = v54[5];
    v48 = v54[6];
    v62 = v54[2];
    v63 = v45;
    v64 = v46;
    v65 = v47;
    v66 = v48;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C47D32C8();
  }

  else if (v3 >= *(v4 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C4F01C88();

    v9 = [v8 error];
    if (!v9)
    {
      ++v3;
LABEL_6:
      v6 = v7;
      while (1)
      {
        if (![v8 next])
        {

          v2 = v59;
          v4 = v56;
          v5 = v55;
          goto LABEL_2;
        }

        v10 = [v8 error];
        if (v10)
        {
          v39 = v10;

          v62 = 0;
          v63 = 0xE000000000000000;
          sub_1C4F02248();
          sub_1C441A710();
          MEMORY[0x1C6940010](*v58, v58[1]);
          MEMORY[0x1C6940010](0xD000000000000027, 0x80000001C4FB8650);
          swift_getErrorValue();
          goto LABEL_54;
        }

        v11 = sub_1C4BD1B7C(v8);
        if (!v11)
        {
          goto LABEL_16;
        }

        v12 = v11;
        *&v60 = v7;
        *(&v60 + 1) = 0xEB00000000656D61;
        sub_1C4F02198();
        if (*(v12 + 16) && (v13 = sub_1C457AA70(&v62), (v14 & 1) != 0))
        {
          sub_1C442B870(*(v12 + 56) + 32 * v13, &v67);
          sub_1C457E804(&v62);

          if (!*(&v68 + 1))
          {
            goto LABEL_17;
          }

          if (swift_dynamicCast())
          {
            v15 = v62;
            v16 = v63;
            v17 = sub_1C4BD1B7C(v8);
            if (!v17)
            {

              v60 = 0u;
              v61 = 0u;
              goto LABEL_36;
            }

            v18 = v17;
            sub_1C4F02198();
            if (!*(v18 + 16) || (v19 = sub_1C457AA70(&v62), (v20 & 1) == 0))
            {

              sub_1C457E804(&v62);
              v60 = 0u;
              v61 = 0u;
LABEL_34:

LABEL_36:
              sub_1C4448244(&v60);
              goto LABEL_6;
            }

            sub_1C442B870(*(v18 + 56) + 32 * v19, &v60);
            sub_1C457E804(&v62);

            if (!*(&v61 + 1))
            {
              goto LABEL_34;
            }

            sub_1C44482AC(&v60, &v67);
            v21 = sub_1C4BD1B7C(v8);
            if (!v21)
            {
              goto LABEL_38;
            }

            v22 = v21;
            strcpy(&v60, "subidentifier");
            HIWORD(v60) = -4864;
            sub_1C4F02198();
            if (!*(v22 + 16) || (v23 = sub_1C457AA70(&v62), (v24 & 1) == 0))
            {

              sub_1C457E804(&v62);
LABEL_38:
              v60 = 0u;
              v61 = 0u;
              goto LABEL_39;
            }

            sub_1C442B870(*(v22 + 56) + 32 * v23, &v60);
            sub_1C457E804(&v62);

            if (*(&v61 + 1))
            {
              v25 = swift_dynamicCast();
              if (v25)
              {
                v26 = v62;
              }

              else
              {
                v26 = 0;
              }

              if (v25)
              {
                v27 = v63;
              }

              else
              {
                v27 = 0;
              }

              v51 = v26;
              log = v27;
              goto LABEL_40;
            }

LABEL_39:
            sub_1C4448244(&v60);
            v51 = 0;
            log = 0;
LABEL_40:
            sub_1C4577DBC();
            sub_1C442B870(&v67, &v62);
            v28 = sub_1C4C0BF5C(&v62);
            if (v28)
            {
              v34 = v28;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C458B504();
                v57 = v37;
              }

              v35 = *(v57 + 16);
              v49 = v35 + 1;
              v50 = v35;
              if (v35 >= *(v57 + 24) >> 1)
              {
                sub_1C458B504();
                v57 = v38;
              }

              sub_1C440962C(&v67);
              *(v57 + 16) = v49;
              v36 = (v57 + 40 * v50);
              v36[4] = v15;
              v36[5] = v16;
              v36[6] = v51;
              v36[7] = log;
              v36[8] = v34;
            }

            else
            {

              if (qword_1EDDFECD0 != -1)
              {
                swift_once();
              }

              v29 = sub_1C4F00978();
              sub_1C442B738(v29, qword_1EDE2DF70);

              v30 = sub_1C4F00968();
              v31 = sub_1C4F01CD8();

              if (os_log_type_enabled(v30, v31))
              {
                v32 = swift_slowAlloc();
                loga = v30;
                v33 = swift_slowAlloc();
                v62 = v33;
                *v32 = 136315138;
                *(v32 + 4) = sub_1C441D828(*v58, v58[1], &v62);
                _os_log_impl(&dword_1C43F8000, loga, v31, "SignalView %s: received a non-ML compatible feature value", v32, 0xCu);
                sub_1C440962C(v33);
                MEMORY[0x1C6942830](v33, -1, -1);
                MEMORY[0x1C6942830](v32, -1, -1);
              }

              else
              {
              }

              sub_1C440962C(&v67);
            }

            goto LABEL_6;
          }
        }

        else
        {

          sub_1C457E804(&v62);
LABEL_16:
          v67 = 0u;
          v68 = 0u;
LABEL_17:
          sub_1C4448244(&v67);
        }
      }
    }

    v39 = v9;

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1C4F02248();
    sub_1C441A710();
    MEMORY[0x1C6940010](*v58, v58[1]);
    MEMORY[0x1C6940010](0xD000000000000022, 0x80000001C4FB8680);
    swift_getErrorValue();
LABEL_54:
    v40 = sub_1C4F02A38();
    MEMORY[0x1C6940010](v40);

    v41 = v62;
    v42 = v63;
    sub_1C446D0DC();
    swift_allocError();
    *v43 = v41;
    *(v43 + 8) = v42;
    *(v43 + 16) = 3;
    swift_willThrow();
  }
}

uint64_t sub_1C4BD24E8()
{

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_config);

  return v0;
}

uint64_t sub_1C4BD255C()
{
  sub_1C4BD24E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BiomeSQLView(uint64_t a1)
{
  result = qword_1EC0C4768;
  if (!qword_1EC0C4768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BD2608(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4BD26E0()
{
  sub_1C4BD1D4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static DatabaseValue.emptyValue(forType:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EFBE38();
  sub_1C43FCE64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v6 + 16))(&v28 - v12, a1, v4, v11);
  sub_1C4EFBE08();
  sub_1C4BD2A38();
  v13 = sub_1C44068D0();
  v14 = *(v6 + 8);
  v14(v9, v4);
  if (v13)
  {
    v15 = sub_1C4404050();
    result = (v14)(v15);
    v17 = MEMORY[0x1E69A0180];
    a2[3] = MEMORY[0x1E69E6530];
    a2[4] = v17;
    *a2 = 0;
    return result;
  }

  sub_1C4EFBDF8();
  sub_1C44068D0();
  v18 = sub_1C4417504();
  (v14)(v18);
  sub_1C4EFBDE8();
  sub_1C44068D0();
  v19 = sub_1C4417504();
  (v14)(v19);
  sub_1C4EFBDD8();
  sub_1C44068D0();
  v20 = sub_1C4417504();
  (v14)(v20);
  sub_1C4EFBDB8();
  sub_1C44068D0();
  v22 = sub_1C4417504();
  (v14)(v22);
  if (v13)
  {
    v23 = sub_1C4404050();
    (v14)(v23);
  }

  else
  {
    sub_1C4EFBDA8();
    v24 = sub_1C44068D0();
    v14(v9, v4);
    v25 = sub_1C4404050();
    result = (v14)(v25);
    if ((v24 & 1) == 0)
    {
      v21 = MEMORY[0x1E69A0138];
      a2[3] = MEMORY[0x1E69E6158];
      a2[4] = v21;
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      return result;
    }
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  result = sub_1C4461BB8(0, &qword_1EC0C4778, 0x1E695DEF0);
  v27 = MEMORY[0x1E69A0190];
  a2[3] = result;
  a2[4] = v27;
  *a2 = v26;
  return result;
}

unint64_t sub_1C4BD2A38()
{
  result = qword_1EDDF0040;
  if (!qword_1EDDF0040)
  {
    sub_1C4EFBE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0040);
  }

  return result;
}

uint64_t sub_1C4BD2A90(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C463F300(a2, v6 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config);
  v12 = (v6 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition);
  *v12 = a3;
  v12[1] = a4;
  v12[2] = a5;
  *(v6 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_postProcessingOps) = a6;
  sub_1C441D670(a1, v6 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact);
  return v6;
}

uint64_t sub_1C4BD2B20()
{
  sub_1C442E860(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact, v4);
  v1 = v5;
  v2 = v6;
  sub_1C4409678(v4, v5);
  (*(v2 + 32))(v1, v2);
  return sub_1C440962C(v4);
}

uint64_t sub_1C4BD2B98()
{
  v3 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config);
  v2 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config + 8);
  v5 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 8);
  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 16);
  v6 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_postProcessingOps);
  *&v27 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition);
  *(&v27 + 1) = v5;
  v29 = 0;
  v28 = 0uLL;
  sub_1C442E860(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact, v25);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C4760, &unk_1C4F5BC80);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v23, v26);
    v7 = swift_allocObject();
    v30 = v1;
    *(v7 + 16) = 0;
    v8 = v26[4];
    sub_1C4409678(v26, v26[3]);
    v9 = swift_allocObject();
    v10 = v28;
    *(v9 + 24) = v27;
    *(v9 + 16) = v7;
    *(v9 + 40) = v10;
    *(v9 + 56) = v29;
    *(v9 + 64) = v3;
    *(v9 + 72) = v2;
    *(v9 + 80) = v4;
    *(v9 + 88) = v6;
    *(v9 + 96) = v0;
    v11 = *(v8 + 16);
    sub_1C4BD7B3C(&v27, v25);

    sub_1C4405BE0();
    v11();

    sub_1C4BD7ABC(&v27);

    swift_beginAccess();
    v12 = *(v7 + 16);
    swift_unknownObjectRetain();

    sub_1C440962C(v26);
  }

  else
  {

    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1C4420C3C(v23, &qword_1EC0C4810, &unk_1C4F5BAE0);
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    v14 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();
    if (os_log_type_enabled(v14, v12))
    {
      *swift_slowAlloc() = 0;
      sub_1C4414B20();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C446D0DC();
    sub_1C441C114();
    v20 = swift_allocError();
    sub_1C440D9E0(v20, v21);
    sub_1C4BD7ABC(&v27);
  }

  return v12;
}

uint64_t sub_1C4BD2EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a9;
  v16[7] = a1;
  v16[8] = a2;
  v26 = a4[3];
  v27 = a4[2];
  v17 = a4[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = objc_autoreleasePoolPush();
  v19 = objc_opt_self();
  v20 = sub_1C4F01108();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C4BD8378;
  *(v21 + 24) = v16;
  aBlock[4] = sub_1C4BD8370;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C463F5CC;
  aBlock[3] = &unk_1F44018A0;
  v22 = _Block_copy(aBlock);

  LOBYTE(v25) = 0;
  v23 = [v19 iterateStream:v20 device:v26 account:v17 bookmark:v27 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v25 body:v22];
  _Block_release(v22);

  objc_autoreleasePoolPop(v18);

  swift_beginAccess();
  *(a3 + 16) = v23;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C4BD30DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v195 = a1;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v202 = &v188 - v6;
  v199 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v192 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1C4F00F28();
  sub_1C440DD98();
  v13 = v12 & v11;
  v196 = (v14 + 63) >> 6;
  v191 = (v8 + 32);
  v190 = (v8 + 8);
  v16 = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = 0;
  v189 = 0;
  *&v18 = 136315138;
  v201 = v18;
  *&v18 = 136315650;
  v188 = v18;
  v194 = a4;
  v193 = v16;
  while (1)
  {
    if (!v13)
    {
      do
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_106;
        }

        if (v19 >= v196)
        {

          return v210;
        }

        v13 = *(v16 + 8 * v19);
        ++v17;
      }

      while (!v13);
      v17 = v19;
    }

    v198 = v13;
    v197 = v17;
    v20 = __clz(__rbit64(v13)) | (v17 << 6);
    v21 = *(a4 + 56);
    v22 = (*(a4 + 48) + 16 * v20);
    v23 = v22[1];
    v208 = *v22;
    v24 = *(v21 + 8 * v20);
    *(&v218 + 1) = sub_1C4461BB8(0, &qword_1EC0BA448, 0x1E698F280);
    *&v217 = v195;
    v207 = *(v24 + 16);
    if (v207)
    {
      break;
    }

    v165 = v195;
LABEL_101:
    v13 = (v198 - 1) & v198;
    sub_1C440FD60();
    sub_1C4420C3C(v184, v185, v186);
    v17 = v197;
  }

  v206 = v24 + 32;
  v25 = v195;
  v209 = v23;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = v25;
  v27 = 0;
  v205 = v24;
  while (2)
  {
    if (v27 >= *(v24 + 16))
    {
      goto LABEL_104;
    }

    v28 = v206 + 32 * v27;
    v29 = *v28;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
    switch(v32)
    {
      case 0u:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v33 = sub_1C4F01108();
        v34 = NSClassFromString(v33);

        if (v34)
        {
          sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
          v35 = [sub_1C4F01F38() isKindOfClass_];
          sub_1C4400D10();
          sub_1C49F181C(v36, v37, v38, 0);
          swift_unknownObjectRelease();
          if (v35)
          {
            sub_1C4412738();
          }

          else
          {
            v215 = 0u;
            v216 = 0u;
          }

          goto LABEL_79;
        }

        sub_1C4BD7FDC();
        sub_1C441C114();
        v166 = swift_allocError();
        *v167 = 0;
        swift_willThrow();
        sub_1C4400D10();
        sub_1C49F181C(v168, v169, v170, 0);
        v171 = v166;
        if (qword_1EDDFECD0 != -1)
        {
          sub_1C4400FC0();
          swift_once();
        }

        v172 = sub_1C4F00978();
        sub_1C43FCEE8(v172, qword_1EDE2DF70);
        v173 = v209;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v174 = v166;
        v175 = sub_1C4F00968();
        v176 = sub_1C4F01CD8();

        v177 = os_log_type_enabled(v175, v176);
        a4 = v194;
        if (v177)
        {
          sub_1C43FEC60();
          v178 = swift_slowAlloc();
          *&v215 = swift_slowAlloc();
          *v178 = v188;
          v179 = v208;
          *(v178 + 4) = sub_1C441D828(v208, v173, &v215);
          *(v178 + 12) = 2080;
          v180 = sub_1C441D828(v179, v173, &v215);

          *(v178 + 14) = v180;
          *(v178 + 22) = 2080;
          swift_getErrorValue();
          v181 = sub_1C4F02A38();
          v183 = sub_1C441D828(v181, v182, &v215);

          *(v178 + 24) = v183;
          _os_log_impl(&dword_1C43F8000, v175, v176, "StreamPipelineProcessor %s: invalid pipeline for feature %s: %s", v178, 0x20u);
          swift_arrayDestroy();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        v189 = 0;
        v16 = v193;
        goto LABEL_101;
      case 1u:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
        v66 = v29;
        v67 = sub_1C4F01F38();
        v68 = sub_1C4F01108();
        v69 = [v67 valueForKeyPath_];

        swift_unknownObjectRelease();
        if (v69)
        {
          sub_1C4F02078();
          sub_1C4400D10();
          sub_1C49F181C(v70, v71, v72, 1u);
          swift_unknownObjectRelease();
          sub_1C440FD60();
          sub_1C4420C3C(v73, v74, v75);
          v76 = sub_1C442E608();
          sub_1C44482AC(v76, v77);
        }

        else
        {
          v200 = v66;
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v114 = sub_1C4F00978();
          sub_1C43FCEE8(v114, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v115 = sub_1C4F00968();
          v116 = sub_1C4F01CB8();
          if (os_log_type_enabled(v115, v116))
          {
            sub_1C43FECF0();
            v117 = swift_slowAlloc();
            sub_1C43FEC60();
            v118 = swift_slowAlloc();
            *&v215 = v118;
            *v117 = v201;
            v204 = sub_1C441D828(v200, v30, &v215);
            sub_1C4400D10();
            sub_1C49F181C(v119, v120, v121, 1u);
            *(v117 + 4) = v204;
            _os_log_impl(&dword_1C43F8000, v115, v116, "streamOps: Could not get a value for keypath %s", v117, 0xCu);
            sub_1C440962C(v118);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {

            sub_1C4400D10();
            sub_1C49F181C(v122, v123, v124, 1u);
          }

          sub_1C4400D10();
          sub_1C49F181C(v125, v126, v127, 1u);
          sub_1C440FD60();
          sub_1C4420C3C(v128, v129, v130);
          v217 = 0u;
          v218 = 0u;
        }

        goto LABEL_80;
      case 8u:
        sub_1C4412738();
        v39 = *(v29 + 16);
        if (!v39)
        {
          goto LABEL_108;
        }

        v204 = v27;
        v40 = v29;
        v41 = *(v29 + 32);
        v42 = *(v40 + 40);
        sub_1C4400D10();
        sub_1C49F1884(v43, v44, v45, 8u);
        v203 = v30;
        sub_1C49F1884(v40, v30, v31, 8u);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (!swift_isUniquelyReferenced_nonNull_native() || (v46 = v40, (v39 - 1) > *(v40 + 24) >> 1))
        {
          sub_1C443D664();
          v46 = v47;
        }

        v48 = v40;
LABEL_19:
        sub_1C4471348((v46 + 4));
        v49 = v46[2];
        memmove(v46 + 4, v46 + 6, 16 * v49 - 16);
        v46[2] = v49 - 1;
        if (v49 == 1)
        {
          sub_1C49F181C(v48, v203, v31, 8u);

          v104 = sub_1C442E608();
          sub_1C4815D50(v104, v105);
          v27 = v204;
LABEL_80:
          sub_1C446C964(&v217, &v213, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          if (*(&v214 + 1))
          {
            sub_1C44482AC(&v213, &v215);
            sub_1C442B870(&v215, &v213);
            v147 = v210;
            swift_isUniquelyReferenced_nonNull_native();
            v212 = v147;
            sub_1C44047BC();
            sub_1C442C010();
            if (v150)
            {
              goto LABEL_105;
            }

            v151 = v148;
            v152 = v149;
            sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
            if (sub_1C4F02458())
            {
              v153 = sub_1C44047BC();
              v24 = v205;
              if ((v152 & 1) != (v154 & 1))
              {
                goto LABEL_109;
              }

              v151 = v153;
            }

            else
            {
              v24 = v205;
            }

            v158 = v212;
            v210 = v212;
            if (v152)
            {
              v159 = (*(v212 + 56) + 32 * v151);
              sub_1C440962C(v159);
              sub_1C44482AC(&v213, v159);
              sub_1C440962C(&v215);
            }

            else
            {
              *(v212 + 8 * (v151 >> 6) + 64) |= 1 << v151;
              v160 = (*(v158 + 48) + 16 * v151);
              v161 = v209;
              *v160 = v208;
              v160[1] = v161;
              sub_1C44482AC(&v213, (*(v158 + 56) + 32 * v151));
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C440962C(&v215);
              v162 = *(v210 + 16);
              v150 = __OFADD__(v162, 1);
              v163 = v162 + 1;
              if (v150)
              {
                goto LABEL_107;
              }

              *(v210 + 16) = v163;
            }
          }

          else
          {
            sub_1C440FD60();
            sub_1C4420C3C(v155, v156, v157);
            v24 = v205;
          }

          if (++v27 == v207)
          {

            a4 = v194;
            v16 = v193;
            goto LABEL_101;
          }

          continue;
        }

        sub_1C446C964(&v215, &v213, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        if (!*(&v214 + 1))
        {
          sub_1C440FD60();
          sub_1C4420C3C(v54, v55, v56);

LABEL_28:
          sub_1C440FD60();
LABEL_29:
          sub_1C4420C3C(v60, v61, v62);
          goto LABEL_30;
        }

        sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_1C440FD60();
          sub_1C4420C3C(v57, v58, v59);

LABEL_30:
          v213 = 0u;
          v214 = 0u;
          goto LABEL_31;
        }

        v50 = v212;
        if (!*(v212 + 16))
        {

          goto LABEL_28;
        }

        v51 = sub_1C445FAA8(v41, v42);
        v53 = v52;

        if ((v53 & 1) == 0)
        {

          v60 = &v215;
          v61 = &qword_1EC0BCD10;
          v62 = &qword_1C4F0C8C0;
          goto LABEL_29;
        }

        sub_1C442B870(*(v50 + 56) + 32 * v51, &v213);
        sub_1C4420C3C(&v215, &qword_1EC0BCD10, &qword_1C4F0C8C0);

LABEL_31:
        v215 = v213;
        v216 = v214;
        v63 = v46[2];
        if (v63)
        {
          v41 = v46[4];
          v42 = v46[5];
          v64 = v46[3];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v63 - 1 > v64 >> 1)
          {
            sub_1C443D664();
            v46 = v65;
          }

          goto LABEL_19;
        }

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
        result = sub_1C4F029F8();
        __break(1u);
        return result;
      case 9u:
        if (v29 != 6 || (v31 | v30) != 0)
        {
          goto LABEL_42;
        }

        sub_1C4412738();
        if (*(&v216 + 1))
        {
          v106 = v202;
          v107 = v199;
          v108 = swift_dynamicCast();
          sub_1C440BAA8(v106, v108 ^ 1u, 1, v107);
          if (sub_1C44157D4(v106, 1, v107) != 1)
          {
            v109 = v192;
            v110 = v199;
            (*v191)(v192, v202, v199);
            sub_1C4EF9AD8();
            *(&v216 + 1) = MEMORY[0x1E69E63B0];
            *&v215 = v111;
            (*v190)(v109, v110);
            v112 = sub_1C442E608();
            sub_1C4815D50(v112, v113);
            goto LABEL_60;
          }
        }

        else
        {
          sub_1C440FD60();
          sub_1C4420C3C(v131, v132, v133);
          sub_1C440BAA8(v202, 1, 1, v199);
        }

        sub_1C4420C3C(v202, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_60:
        sub_1C4412738();
        if (!*(&v216 + 1))
        {
          sub_1C440FD60();
          sub_1C4420C3C(v138, v139, v140);
          goto LABEL_80;
        }

        v134 = swift_dynamicCast();
        if ((v134 & 1) == 0)
        {
          goto LABEL_80;
        }

        v135 = *(&v213 + 1);
        v212 = 0;
        MEMORY[0x1EEE9AC00](v134);
        *(&v188 - 2) = &v212;
        if ((v135 & 0x1000000000000000) != 0)
        {
          goto LABEL_93;
        }

        if ((v135 & 0x2000000000000000) != 0)
        {
          *&v213 = v136;
          *(&v213 + 1) = v135 & 0xFFFFFFFFFFFFFFLL;
          if (v136 >= 0x21u || ((0x100003E01uLL >> v136) & 1) == 0)
          {
LABEL_71:
            v141 = _swift_stdlib_strtod_clocale();
            if (v141)
            {
              v142 = *v141 == 0;
LABEL_74:
              v211 = v142;
              goto LABEL_75;
            }
          }

LABEL_73:
          v142 = 0;
          goto LABEL_74;
        }

        if ((v136 & 0x1000000000000000) != 0)
        {
          v137 = *((v135 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v137 >= 0x21 || ((0x100003E01uLL >> v137) & 1) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_73;
        }

LABEL_93:
        v164 = v189;
        sub_1C4F02218();
        v189 = v164;
LABEL_75:

        if (v211)
        {
          v143 = v212;
          v144 = MEMORY[0x1E69E63B0];
        }

        else
        {
          v144 = 0;
          v143 = 0;
          *(&v215 + 1) = 0;
          *&v216 = 0;
        }

        *(&v216 + 1) = v144;
        *&v215 = v143;
LABEL_79:
        v145 = sub_1C442E608();
        sub_1C4815D50(v145, v146);
        goto LABEL_80;
      default:
LABEL_42:
        sub_1C4400D10();
        sub_1C49F1884(v79, v80, v81, v32);
        v82 = v29;
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v83 = sub_1C4F00978();
        sub_1C43FCEE8(v83, qword_1EDDFECB8);
        sub_1C4400D10();
        sub_1C49F1884(v84, v85, v86, v32);
        v87 = sub_1C4F00968();
        v88 = sub_1C4F01CD8();
        sub_1C4400D10();
        sub_1C49F181C(v89, v90, v91, v32);
        if (os_log_type_enabled(v87, v88))
        {
          sub_1C43FECF0();
          v92 = swift_slowAlloc();
          LODWORD(v204) = v88;
          v93 = v92;
          sub_1C43FEC60();
          v94 = swift_slowAlloc();
          *&v213 = v94;
          *v93 = v201;
          *&v215 = v82;
          *(&v215 + 1) = v30;
          *&v216 = v31;
          BYTE8(v216) = v32;
          sub_1C4400D10();
          sub_1C49F1884(v95, v96, v97, v32);
          v98 = sub_1C4F01198();
          v100 = sub_1C441D828(v98, v99, &v213);

          *(v93 + 4) = v100;
          _os_log_impl(&dword_1C43F8000, v87, v204, "Operation %s not yet supported for StreamPipelineProcessor", v93, 0xCu);
          sub_1C440962C(v94);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C4400D10();
        sub_1C49F181C(v101, v102, v103, v32);
        goto LABEL_80;
    }
  }
}

int64_t sub_1C4BD4168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = MEMORY[0x1E69E7CC0];
  if (!a5)
  {
    sub_1C456902C(&qword_1EC0B8978, &qword_1C4F0DD80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1C4F0D130;
    sub_1C456902C(&unk_1EC0C47B0, &qword_1C4F14670);
    v12 = sub_1C4F02538();
    v13 = 0;
    sub_1C440DD98();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    v20 = v19 + 64;
    if ((v15 & v14) != 0)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_15:
        v24 = v21 | (v13 << 6);
        v25 = (*(a1 + 48) + 16 * v24);
        v26 = *v25;
        v27 = v25[1];
        sub_1C442B870(*(a1 + 56) + 32 * v24, v57);
        sub_1C44482AC(v57, &v53);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
        }

        *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v28 = (v12[6] + 16 * v24);
        *v28 = v26;
        v28[1] = v27;
        v29 = v12[7] + 40 * v24;
        v30 = v54;
        v31 = v55;
        *(v29 + 32) = v56;
        *v29 = v30;
        *(v29 + 16) = v31;
        v32 = v12[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          break;
        }

        v12[2] = v34;
        if (!v16)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v22 = v13;
      while (1)
      {
        v13 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v13 >= v18)
        {
          result = v51;
          *(v51 + 32) = v12;
          return result;
        }

        v23 = *(a1 + 64 + 8 * v13);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v16 = (v23 - 1) & v23;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_30:
    sub_1C4400FC0();
    swift_once();
    goto LABEL_24;
  }

  v50 = 136315138;
  if (!*(a5 + 16))
  {
    return 0;
  }

  v6 = *(a5 + 32);
  if ((*(a5 + 40) & 1) == 0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4BD614C(a1, v6);
    sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
    sub_1C4F00F28();
    v36 = sub_1C43FBC98();
    sub_1C4BD6D94(v36, v37, v38);

    return v58;
  }

  v7 = qword_1EDDFDCF8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8)
  {
    v8 = (*(off_1EDDFF3D0 + 5))();
    v10 = v9;
    sub_1C465E94C();
    v39 = (*(v10 + 8))(a1, v11, v8, v10);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v18 = v39;
  v58 = v39;
  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_30;
  }

LABEL_24:
  v40 = sub_1C4F00978();
  sub_1C43FCEE8(v40, qword_1EDE2DF70);
  v41 = sub_1C4F00968();
  v42 = sub_1C4F01CB8();
  if (os_log_type_enabled(v41, v42))
  {
    sub_1C43FECF0();
    v43 = swift_slowAlloc();
    sub_1C43FEC60();
    v44 = swift_slowAlloc();
    *&v57[0] = v44;
    *v43 = v50;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v45 = sub_1C456902C(&unk_1EC0C47C0, &qword_1C4F0DD88);
    v46 = MEMORY[0x1C6940380](v18, v45);
    v48 = v47;

    v49 = sub_1C441D828(v46, v48, v57);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_1C43F8000, v41, v42, "Got some Row items: %s", v43, 0xCu);
    sub_1C440962C(v44);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  return v18;
}

uint64_t sub_1C4BD48F8(unint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config);
  v3 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config + 8);
  v6 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 8);
  v5 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 16);
  v7 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_postProcessingOps);
  *&v32 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition);
  *(&v32 + 1) = v6;
  v34 = 0;
  v33 = a1;
  sub_1C442E860(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact, v27);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_unknownObjectRetain();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C47A0, &qword_1C4F5BC40);
  if (swift_dynamicCast())
  {
    sub_1C460986C(v26, &v28);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v35 = v2;
    v9 = v4;
    v10 = v29;
    v24 = v31;
    v25 = v30;
    sub_1C4409678(&v28, v29);
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v12 = v33;
    *(v11 + 24) = v32;
    *(v11 + 40) = v12;
    *(v11 + 56) = v34;
    *(v11 + 64) = v9;
    *(v11 + 72) = v3;
    *(v11 + 80) = v5;
    *(v11 + 88) = v7;
    *(v11 + 96) = v1;
    sub_1C4BD7B3C(&v32, v26);

    sub_1C4AE4F44(sub_1C4BD7B10, v11, v10, v25, v24);

    sub_1C4BD7ABC(&v32);

    swift_beginAccess();
    v13 = *(v8 + 16);
    swift_unknownObjectRetain();

    sub_1C440962C(&v28);
  }

  else
  {

    memset(v26, 0, sizeof(v26));
    sub_1C4420C3C(v26, &qword_1EC0C47A8, &qword_1C4F5BC48);
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    v15 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();
    if (os_log_type_enabled(v15, v13))
    {
      *swift_slowAlloc() = 0;
      sub_1C4414B20();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C446D0DC();
    sub_1C441C114();
    v21 = swift_allocError();
    sub_1C440D9E0(v21, v22);
    sub_1C4BD7ABC(&v32);
  }

  return v13;
}

uint64_t sub_1C4BD4C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a9;
  v16[7] = a1;
  v16[8] = a2;
  v26 = a4[3];
  v27 = a4[2];
  v17 = a4[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = objc_autoreleasePoolPush();
  v19 = objc_opt_self();
  v20 = sub_1C4F01108();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C4BD7B98;
  *(v21 + 24) = v16;
  aBlock[4] = sub_1C463F294;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C463F5CC;
  aBlock[3] = &unk_1F4401800;
  v22 = _Block_copy(aBlock);

  LOBYTE(v25) = 0;
  v23 = [v19 iterateStream:v20 device:v26 account:v17 bookmark:v27 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v25 body:v22];
  _Block_release(v22);

  objc_autoreleasePoolPop(v18);

  swift_beginAccess();
  *(a3 + 16) = v23;
  return swift_unknownObjectRelease();
}

void sub_1C4BD4E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v13 = sub_1C4BD30DC(a1, a2, a3, a4);
  v14 = sub_1C4BD4168(v13, a2, a3, a4, a5);

  if (v14)
  {
    v26 = sub_1C4BD558C(v14);

    v27 = 0;
    v28 = *(v26 + 16);
    while (1)
    {
      if (v28 == v27)
      {
        sub_1C43FBF50();

        return;
      }

      if (v27 >= *(v26 + 16))
      {
        break;
      }

      v29 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a7(v29);

      ++v27;
    }

    __break(1u);
    sub_1C44064A8();
    swift_once();
    v33 = sub_1C4F00978();
    sub_1C43FCEE8(v33, qword_1EDDFECB8);
    v34 = 0;
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CD8();

    if (os_log_type_enabled(v35, v36))
    {
      sub_1C43FECF0();
      v37 = swift_slowAlloc();
      sub_1C43FEC60();
      v38 = swift_slowAlloc();
      v50 = v38;
      *v37 = 136315138;
      v39 = 0;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v40 = sub_1C4F01198();
      v42 = sub_1C441D828(v40, v41, &v50);

      *(v37 + 4) = v42;
      sub_1C4414B20();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      sub_1C440962C(v38);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      goto LABEL_18;
    }

    sub_1C43FBF50();

    goto LABEL_12;
  }

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDE2DF70);
  v16 = a1;
  oslog = sub_1C4F00968();
  v17 = sub_1C4F01CD8();

  if (!os_log_type_enabled(oslog, v17))
  {
    sub_1C43FBF50();

LABEL_12:

    return;
  }

  sub_1C43FECF0();
  v18 = swift_slowAlloc();
  sub_1C43FEC60();
  v19 = swift_slowAlloc();
  v50 = v19;
  *v18 = 136315138;
  v20 = v16;
  v21 = [v20 description];
  v22 = sub_1C4F01138();
  v24 = v23;

  v25 = sub_1C441D828(v22, v24, &v50);

  *(v18 + 4) = v25;
  _os_log_impl(&dword_1C43F8000, oslog, v17, "BiomeStreamView: Cannot process item %s", v18, 0xCu);
  sub_1C440962C(v19);
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();

LABEL_18:
  sub_1C43FBF50();
}

uint64_t sub_1C4BD5220(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  v5 = *(a1 + 80);
  if (sub_1C4428DA0(v5) == 1 && sub_1C4428DA0(v5))
  {
    sub_1C4431590(0, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    v6 = *(v5 + 32);

    while (1)
    {
      v7 = sub_1C4D0E2C0();
      if (v7)
      {
        sub_1C4BD2B20();
        sub_1C4D0E478();
      }

      sub_1C4D0E664(v7, v8, v9, v10, v11, v12, v13, v14, v35, v36, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v6, v40, v41, v42, v43, v44, v45, v46, v47, vars0, vars8);
      if ((v19 & 1) == 0)
      {
        break;
      }

LABEL_9:
      v20 = sub_1C4BD2B98();
      if (v2)
      {
      }

      v27 = v20;
      sub_1C444F17C();
      v4 = *(v4 + 72);
      v28 = sub_1C4428DA0(v4);
      v29 = 0;
      v5 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v28 == v29)
        {
          sub_1C444D5B8(v27);

          return swift_unknownObjectRelease();
        }

        if (v5)
        {
          MEMORY[0x1C6940F90](v29, v4);
        }

        else
        {
          if (v29 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }
        }

        if (__OFADD__(v29, 1))
        {
          break;
        }

        sub_1C4CBF8F8();

        ++v29;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v6 = MEMORY[0x1C6940F90](0, v5);
    }

    v21 = *(v4 + 72);
    v22 = sub_1C4428DA0(v21);
    v23 = 0;
    v24 = v21 & 0xC000000000000001;
    v5 = v21 & 0xFFFFFFFFFFFFFF8;
    while (v23 != v22)
    {
      if (v24)
      {
        result = MEMORY[0x1C6940F90](v23, v21);
        if (__OFADD__(v23++, 1))
        {
          goto LABEL_50;
        }

        HIDWORD(v36) = *(result + 32);
        swift_unknownObjectRelease();
        if ((v36 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v25 = *(v21 + 32 + 8 * v23++);
        if (*(v25 + 32))
        {
          goto LABEL_9;
        }
      }
    }

    sub_1C4CC0AAC();
    if (!v30)
    {
      goto LABEL_9;
    }

    v31 = sub_1C4BD48F8(v30);
    if (!v2)
    {
      v32 = v31;
      sub_1C444F17C();
      result = sub_1C4428DA0(v21);
      v33 = result;
      for (i = 0; ; ++i)
      {
        if (v33 == i)
        {
          sub_1C444D5B8(v32);

          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        if (v24)
        {
          result = MEMORY[0x1C6940F90](i, v21);
        }

        else
        {
          if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1C4CBF8F8();
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config);
    v15 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config + 8);
    sub_1C450B034();
    sub_1C441C114();
    swift_allocError();
    *v17 = v16;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0xD00000000000001DLL;
    *(v17 + 24) = 0x80000001C4FB87B0;
    *(v17 + 32) = v37;
    *(v17 + 48) = v38;
    *(v17 + 64) = 3;
    swift_willThrow();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4BD558C(uint64_t a1)
{
  v3 = v1;
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = (v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact);
  v7 = a1 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v40 = (v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact);
  v41 = v5;
  v39 = a1 + 32;
  while (v4 != v5)
  {
    v44 = v9;
    v10 = *(v7 + 8 * v4);
    v42 = v4 + 1;
    v46 = v8;
    v11 = v6[3];
    v12 = v6[4];
    sub_1C4409678(v6, v11);
    v43 = &v38;
    sub_1C43FCE64();
    v14 = v13;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v18, v16);
    v19 = *(v12 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = v19(v11, v12);
    (*(v14 + 8))(v18, v11);
    v21 = 0;
    v22 = *(v20 + 16);
    while (v22 != v21)
    {
      v23 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
      sub_1C4BD5990(v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21++, v10, v3, &v46);
      if (v2)
      {
        v9 = v44;

        return v9;
      }
    }

    v24 = v46;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458B824();
      v9 = v27;
    }

    v5 = v41;
    v4 = v42;
    v6 = v40;
    v26 = *(v9 + 16);
    v25 = *(v9 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1C43FCFE8(v25);
      sub_1C458B824();
      v9 = v28;
    }

    *(v9 + 16) = v26 + 1;
    *(v9 + 8 * v26 + 32) = v24;

    v7 = v39;
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v30 = sub_1C4F00978();
  sub_1C442B738(v30, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CB8();
  if (os_log_type_enabled(v31, v32))
  {
    sub_1C43FECF0();
    v33 = swift_slowAlloc();
    sub_1C43FEC60();
    v34 = swift_slowAlloc();
    v46 = v34;
    *v33 = 136315138;
    v45 = *(v9 + 16);
    v35 = sub_1C4F02858();
    v37 = sub_1C441D828(v35, v36, &v46);

    *(v33 + 4) = v37;

    _os_log_impl(&dword_1C43F8000, v31, v32, "Generated rows: %s", v33, 0xCu);
    sub_1C440962C(v34);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  return v9;
}

uint64_t sub_1C4BD5990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = a1;
  sub_1C479B674(sub_1C4BD1BE8);
  if (v10)
  {
    sub_1C465CB54();
    if (*(&v36 + 1) == 1)
    {
      v11 = &unk_1EC0C4798;
      v12 = &unk_1C4F5BC30;
      v13 = &v35;
    }

    else
    {
      v41[0] = v35;
      v41[1] = v36;
      v42 = v37;
      if (*(&v36 + 1))
      {
        sub_1C441D670(v41, &v38);
        sub_1C441D670(&v38, v41);
LABEL_15:
        sub_1C4589648();
        v31 = *(*a4 + 16);
        sub_1C458A1C8();
        v32 = *a4;
        *(v32 + 16) = v31 + 1;
        return sub_1C441D670(v41, v32 + 40 * v31 + 32);
      }

      v11 = &qword_1EC0B9038;
      v12 = &unk_1C4F231C0;
      v13 = v41;
    }

    sub_1C4420C3C(v13, v11, v12);
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    static DatabaseValue.emptyValue(forType:)(a1 + *(v7 + 20), v41);
    if (*(&v39 + 1))
    {
      sub_1C4420C3C(&v38, &qword_1EC0B9038, &unk_1C4F231C0);
    }

    goto LABEL_15;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DF70);
  sub_1C4BD8310(a1, v9, type metadata accessor for ViewDatabaseArtifact.Property);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CD8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v38 = v43;
    *v17 = 136315650;
    *(v17 + 4) = sub_1C441D828(*(a3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config), *(a3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config + 8), &v38);
    *(v17 + 12) = 2080;
    *&v41[0] = 0;
    *(&v41[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0x747265706F72503CLL, 0xED0000203A6E2079);
    MEMORY[0x1C6940010](*v9, v9[1]);
    MEMORY[0x1C6940010](0x203A74202CLL, 0xE500000000000000);
    sub_1C4EFBE38();
    sub_1C4F02438();
    MEMORY[0x1C6940010](62, 0xE100000000000000);
    v19 = *(&v41[0] + 1);
    v18 = *&v41[0];
    sub_1C443CED4(v9, type metadata accessor for ViewDatabaseArtifact.Property);
    v20 = sub_1C441D828(v18, v19, &v38);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2080;
    sub_1C456902C(&qword_1EC0B9038, &unk_1C4F231C0);
    v21 = sub_1C4F00EE8();
    v23 = sub_1C441D828(v21, v22, &v38);

    *(v17 + 24) = v23;
    v24 = qword_1EC151FF8 + 8;
    _os_log_impl(&dword_1C43F8000, v15, v16, "BiomeStreamSignalView %s: column mismatch: %s not found in %s", v17, 0x20u);
    v25 = v43;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v25, -1, -1);
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  else
  {

    sub_1C443CED4(v9, type metadata accessor for ViewDatabaseArtifact.Property);
    v24 = &qword_1EC151FF8[1];
  }

  *&v41[0] = 0;
  *(&v41[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FB8770);
  MEMORY[0x1C6940010](*(a3 + v24[410]), *(a3 + v24[410] + 8));
  MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FB8790);
  v26 = ViewDatabaseArtifact.Property.description.getter();
  MEMORY[0x1C6940010](v26);

  MEMORY[0x1C6940010](0x756F6620746F6E20, 0xEE00206E6920646ELL);
  sub_1C456902C(&qword_1EC0B9038, &unk_1C4F231C0);
  v27 = sub_1C4F00EE8();
  MEMORY[0x1C6940010](v27);

  v28 = v41[0];
  sub_1C446D0DC();
  swift_allocError();
  *v29 = v28;
  *(v29 + 16) = 3;
  return swift_willThrow();
}

uint64_t sub_1C4BD5F38()
{
  sub_1C4407E24();
  sub_1C443CED4(v0 + v1, v2);

  sub_1C440962C((v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact));
  return v0;
}

uint64_t sub_1C4BD5FA8()
{
  sub_1C4BD5F38();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BD6028(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4BD60D4(uint64_t a1)
{
  sub_1C4BD5220(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4BD614C(_BYTE *a1, uint64_t a2)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v98 = a1;
  v101 = a2;
  v7 = sub_1C4BD7C3C(a1, a2);
  v8 = v2;
  v9 = *(v7 + 2);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {

    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v124[0] = MEMORY[0x1E69E7CC0];
  sub_1C459EF98(0, v9, 0);
  v11 = sub_1C4703354();
  v13 = v124[0];
  v14 = v11;
  v15 = 0;
  v16 = v7 + 64;
  v106 = v7 + 72;
  v108 = v9;
  v110 = v12;
  v112 = (v7 + 64);
  do
  {
    if (v14 < 0 || v14 >= 1 << v7[32])
    {
      goto LABEL_99;
    }

    v17 = v14 >> 6;
    v3 = 1 << v14;
    if ((*&v16[8 * (v14 >> 6)] & (1 << v14)) == 0)
    {
      goto LABEL_100;
    }

    if (*(v7 + 9) != v12)
    {
      goto LABEL_101;
    }

    v113 = v15;
    v18 = v13;
    v19 = *(v7 + 7);
    v20 = v7;
    v21 = (*(v7 + 6) + 16 * v14);
    v23 = *v21;
    v22 = v21[1];
    sub_1C442B870(v19 + 32 * v14, &v120);
    *&v126[0] = v23;
    *(&v126[0] + 1) = v22;
    sub_1C44482AC(&v120, &v126[1]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4BD713C(v126, v123);
    if (v8)
    {
      sub_1C4420C3C(v126, &qword_1EC0C47D8, &unk_1C4F5BC60);

      __break(1u);
      return result;
    }

    v8 = 0;
    sub_1C4420C3C(v126, &qword_1EC0C47D8, &unk_1C4F5BC60);
    v24 = *&v123[0];
    v13 = v18;
    v124[0] = v18;
    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    v4 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v37 = sub_1C43FCFE8(v25);
      sub_1C459EF98(v37, v26 + 1, 1);
      v13 = v124[0];
    }

    *(v13 + 16) = v4;
    *(v13 + 8 * v26 + 32) = v24;
    v27 = 1 << v20[32];
    if (v14 >= v27)
    {
      goto LABEL_102;
    }

    v16 = v112;
    v28 = *(v112 + 8 * v17);
    if ((v28 & v3) == 0)
    {
      goto LABEL_103;
    }

    v7 = v20;
    v12 = v110;
    if (*(v20 + 9) != v110)
    {
      goto LABEL_104;
    }

    v29 = v28 & (-2 << (v14 & 0x3F));
    if (v29)
    {
      v27 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v10 = MEMORY[0x1E69E7CC0];
      v30 = v108;
      v31 = v113;
    }

    else
    {
      v32 = v17 << 6;
      v33 = v17 + 1;
      v30 = v108;
      v34 = &v106[8 * v17];
      v10 = MEMORY[0x1E69E7CC0];
      v31 = v113;
      while (v33 < (v27 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          v27 = __clz(__rbit64(v35)) + v32;
          break;
        }
      }
    }

    v15 = v31 + 1;
    v14 = v27;
  }

  while (v15 != v30);
  v38 = v13;

LABEL_22:
  v3 = v101 + 64;
  sub_1C440DD98();
  v4 = v40 & v39;
  v42 = (v41 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = 0;
  v95 = v38;
  v96 = v42;
  v97 = v101 + 64;
  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_23:
  v102 = v38;
LABEL_28:
  v45 = v4;
  v100 = v43;
  v46 = __clz(__rbit64(v4)) | (v43 << 6);
  v47 = (*(v101 + 48) + 16 * v46);
  v3 = *v47;
  v4 = v47[1];
  v48 = *(*(v101 + 56) + 8 * v46);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C465C4B8();
  if (!*(&v120 + 1))
  {

    sub_1C4420C3C(&v119, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_90;
  }

  v104 = sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_90:

    if (qword_1EDDFECD0 == -1)
    {
      goto LABEL_91;
    }

    goto LABEL_105;
  }

  v99 = (v45 - 1) & v45;

  v3 = 0;
  v105 = *(*&v126[0] + 16);
  v107 = *&v126[0];
  v103 = *&v126[0] + 32;
  v111 = (v48 + 7);
  v4 = v10;
  while (1)
  {
    v114 = v4;
    if (v3 == v105)
    {

      v38 = v102;
      v4 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458F380();
        v38 = v83;
      }

      v42 = v96;
      v3 = v97;
      v43 = v100;
      v82 = *(v38 + 16);
      v81 = *(v38 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_1C43FFD98(v81);
        sub_1C458F380();
        v38 = v84;
      }

      *(v38 + 16) = v82 + 1;
      *(v38 + 8 * v82 + 32) = v114;
      if (v99)
      {
        goto LABEL_23;
      }

      while (1)
      {
LABEL_24:
        v44 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_98;
        }

        if (v44 >= v42)
        {
          break;
        }

        v4 = *(v3 + 8 * v44);
        ++v43;
        if (v4)
        {
          v102 = v38;
          v43 = v44;
          goto LABEL_28;
        }
      }

      return v38;
    }

    if (v3 >= *(v107 + 16))
    {
      break;
    }

    sub_1C442B870(v103 + 32 * v3, v124);
    sub_1C442B870(v124, v123);
    if (!v48[2])
    {
      goto LABEL_97;
    }

    if (v48[5])
    {
      v49 = v3;
      sub_1C4409678(v124, v125);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v50 = sub_1C4F02918();
      v51 = sub_1C4F01108();

      v52 = [v50 valueForKeyPath_];

      swift_unknownObjectRelease();
      if (v52)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C440962C(v123);
        sub_1C44482AC(v126, &v119);
      }

      else
      {
        sub_1C440962C(v123);
        sub_1C442B870(v124, &v119);
      }

      sub_1C44482AC(&v119, v123);
      v3 = v49;
    }

    sub_1C442B870(v123, &v119);
    v109 = v3;
    if (swift_dynamicCast())
    {
      v53 = *(*&v126[0] + 16);

      v112 = v53;
      if (v53)
      {
        v54 = 0;
        do
        {
          v55 = v48[2];
          if (v55)
          {
            v115 = v4;
            *&v116 = v10;
            sub_1C459EFD8(0, v55, 0);
            v56 = v116;
            v57 = v111;
            do
            {
              v58 = *v57;
              *&v126[0] = *(v57 - 3);
              *(v126 + 8) = *(v57 - 1);
              *(&v126[1] + 1) = v58;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4BD7364(v126, v124, v48, v54, &v119);

              *&v116 = v56;
              v60 = *(v56 + 16);
              v59 = *(v56 + 24);
              if (v60 >= v59 >> 1)
              {
                v61 = sub_1C43FCFE8(v59);
                sub_1C459EFD8(v61, v60 + 1, 1);
                v56 = v116;
              }

              *(v56 + 16) = v60 + 1;
              sub_1C44112FC(v56 + 56 * v60, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v107, v109, v111, v112, v115, v116, *(&v116 + 1), v117, v118, v119, v120, v121, v122);
              v57 += 4;
              --v55;
            }

            while (v55);
            v10 = MEMORY[0x1E69E7CC0];
            v4 = v115;
          }

          else
          {
            v56 = v10;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458F544();
            v4 = v64;
          }

          v63 = *(v4 + 16);
          v62 = *(v4 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1C43FFD98(v62);
            sub_1C458F544();
            v4 = v65;
          }

          ++v54;
          *(v4 + 16) = v63 + 1;
          *(v4 + 8 * v63 + 32) = v56;
        }

        while (v54 != v112);
      }

      sub_1C440962C(v123);
      v76 = v109;
      goto LABEL_80;
    }

    v66 = v48[2];
    if (v66)
    {
      v128 = v10;
      sub_1C459EFD8(0, v66, 0);
      v67 = v128;
      v68 = v111;
      while (1)
      {
        v69 = *v68;
        if (*(v68 - 2))
        {
          v112 = v67;
          v119.n128_u64[0] = *(v68 - 1);
          v119.n128_u64[1] = v69;
          sub_1C4409678(v124, v125);
          swift_bridgeObjectRetain_n();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v70 = sub_1C4F02918();
          v71 = sub_1C4F01108();
          v72 = [v70 valueForKeyPath_];

          swift_unknownObjectRelease();
          if (v72)
          {
            sub_1C4F02078();
            swift_unknownObjectRelease();
            sub_1C44482AC(v126, &v116);
          }

          else
          {
            sub_1C442B870(v124, &v116);
          }

          sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
          v67 = v112;
          v4 = v114;
          if (!swift_dynamicCast())
          {
            v127 = 0;
            memset(v126, 0, sizeof(v126));
            *(&v121 + 1) = MEMORY[0x1E69E6158];
            v122 = MEMORY[0x1E69A0138];

LABEL_68:

            *&v120 = 0;
            *(&v120 + 1) = 0xE000000000000000;
            goto LABEL_69;
          }

          sub_1C441D670(v126, &v120);
        }

        else
        {
          v119.n128_u64[0] = *(v68 - 1);
          v119.n128_u64[1] = v69;
          sub_1C442B870(v124, &v116);
          swift_bridgeObjectRetain_n();
          sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v127 = 0;
            memset(v126, 0, sizeof(v126));
            *(&v121 + 1) = MEMORY[0x1E69E6158];
            v122 = MEMORY[0x1E69A0138];
            goto LABEL_68;
          }

          sub_1C441D670(v126, &v120);
        }

LABEL_69:
        v128 = v67;
        v74 = *(v67 + 16);
        v73 = *(v67 + 24);
        if (v74 >= v73 >> 1)
        {
          v75 = sub_1C43FCFE8(v73);
          sub_1C459EFD8(v75, v74 + 1, 1);
          v67 = v128;
        }

        *(v67 + 16) = v74 + 1;
        sub_1C44112FC(v67 + 56 * v74, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v107, v109, v111, v112, v114, v116, *(&v116 + 1), v117, v118, v119, v120, v121, v122);
        v68 += 4;
        if (!--v66)
        {
          v10 = MEMORY[0x1E69E7CC0];
          goto LABEL_75;
        }
      }
    }

    v67 = v10;
LABEL_75:
    v76 = v109;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458F544();
      v4 = v79;
    }

    v78 = *(v4 + 16);
    v77 = *(v4 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_1C43FFD98(v77);
      sub_1C458F544();
      v4 = v80;
    }

    sub_1C440962C(v123);
    *(v4 + 16) = v78 + 1;
    *(v4 + 8 * v78 + 32) = v67;
LABEL_80:
    v3 = v76 + 1;
    sub_1C440962C(v124);
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
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
  sub_1C4400FC0();
  swift_once();
LABEL_91:
  v85 = sub_1C4F00978();
  sub_1C442B738(v85, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v86 = sub_1C4F00968();
  v87 = sub_1C4F01CD8();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v119.n128_u64[0] = swift_slowAlloc();
    *v88 = 136315394;
    v89 = sub_1C441D828(v3, v4, &v119);

    *(v88 + 4) = v89;
    *(v88 + 12) = 2080;
    v90 = sub_1C4F00F48();
    v92 = sub_1C441D828(v90, v91, &v119);

    *(v88 + 14) = v92;
    _os_log_impl(&dword_1C43F8000, v86, v87, "BiomeStreamSignalView: could not postprocess: %s not an array found in %s", v88, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1C4BD6D94(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  v6 = a2;
  if (*(a1 + 16))
  {
    v60 = a1;
    v7 = *(a1 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C07768();
    v46 = *(v7 + 16);
    if (v46)
    {
      v8 = 0;
      v47 = v7 + 32;
      v44 = v7;
      v45 = a3;
      v43 = v6;
      while (v8 < *(v7 + 16))
      {
        v9 = *(v47 + 8 * v8);
        v51 = *(v9 + 16);
        if (v51)
        {
          v48 = v8;
          v49 = v4;
          v10 = v9 + 32;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v11 = 0;
          v50 = v9;
          while (v11 < *(v9 + 16))
          {
            sub_1C4405BE0();
            sub_1C446C964(v12, v13, v14, v15);
            v57[0] = v58[5];
            v57[1] = v58[6];
            sub_1C441D670(v59, v58);
            sub_1C4405BE0();
            sub_1C446C964(v16, v17, v18, v19);
            v20 = v54;
            v21 = v55;
            sub_1C4405BE0();
            sub_1C446C964(v22, v23, v24, v25);

            sub_1C441D670(&v53, v52);
            swift_isUniquelyReferenced_nonNull_native();
            sub_1C445FAA8(v20, v21);
            sub_1C442C010();
            if (v28)
            {
              goto LABEL_26;
            }

            v29 = v26;
            v30 = v27;
            sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
            if (sub_1C4F02458())
            {
              v31 = sub_1C445FAA8(v20, v21);
              if ((v30 & 1) != (v32 & 1))
              {
                goto LABEL_29;
              }

              v29 = v31;
            }

            if (v30)
            {

              v33 = (v6[7] + 40 * v29);
              sub_1C440962C(v33);
              sub_1C441D670(v52, v33);
              sub_1C4420C3C(v57, &qword_1EC0B9050, &unk_1C4F5BC50);
            }

            else
            {
              v6[(v29 >> 6) + 8] |= 1 << v29;
              v34 = (v6[6] + 16 * v29);
              *v34 = v20;
              v34[1] = v21;
              sub_1C441D670(v52, v6[7] + 40 * v29);
              sub_1C4420C3C(v57, &qword_1EC0B9050, &unk_1C4F5BC50);
              v35 = v6[2];
              v28 = __OFADD__(v35, 1);
              v36 = v35 + 1;
              if (v28)
              {
                goto LABEL_27;
              }

              v6[2] = v36;
            }

            ++v11;
            sub_1C440962C(v56);
            v10 += 56;
            v9 = v50;
            if (v51 == v11)
            {

              v8 = v48;
              v4 = v49;
              v7 = v44;
              a3 = v45;
              v6 = v43;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_19:
        v37 = sub_1C43FBC98();
        sub_1C4BD6D94(v37, v38, a3);
        if (v4)
        {

          goto LABEL_24;
        }

        ++v8;

        if (v8 == v46)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_29:
      sub_1C4F029F8();
      __break(1u);
    }

    else
    {
LABEL_21:

LABEL_24:
    }
  }

  else
  {
    sub_1C465D0F0(a2);
    v40 = v39;
    sub_1C4589660();
    v41 = *(*a3 + 16);
    sub_1C458A1E0();
    v42 = *a3;
    *(v42 + 16) = v41 + 1;
    *(v42 + 8 * v41 + 32) = v40;
    *a3 = v42;
  }
}

uint64_t sub_1C4BD713C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C446C964(a1, &v14, &qword_1EC0C47D8, &unk_1C4F5BC60);

  sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v12, v17);
    sub_1C456902C(&unk_1EC0C47E0, &qword_1C4F0DDA0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C4F0D130;
    sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C4F0D130;
    sub_1C446C964(a1, &v14, &qword_1EC0C47D8, &unk_1C4F5BC60);
    v6 = v15;
    *(v5 + 32) = v14;
    *(v5 + 40) = v6;
    sub_1C442E860(v17, v5 + 48);
    sub_1C440962C(v16);
    *(v4 + 32) = v5;
    result = sub_1C440962C(v17);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1C4420C3C(v12, &qword_1EC0B9038, &unk_1C4F231C0);
    sub_1C456902C(&unk_1EC0C47E0, &qword_1C4F0DDA0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C4F0D130;
    sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C4F0D130;
    sub_1C446C964(a1, &v14, &qword_1EC0C47D8, &unk_1C4F5BC60);
    v9 = v15;
    v10 = MEMORY[0x1E69E6158];
    v11 = MEMORY[0x1E69A0138];
    *(v8 + 32) = v14;
    *(v8 + 40) = v9;
    *(v8 + 72) = v10;
    *(v8 + 80) = v11;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0xE000000000000000;
    result = sub_1C440962C(v16);
    *(v4 + 32) = v8;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C4BD7364@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = a3;
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  sub_1C442B870(a2, v39);
  if (v8)
  {
    sub_1C4409678(a2, a2[3]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C4F02918();
    v33 = v9;
    v13 = sub_1C4F01108();
    v14 = [v12 valueForKeyPath_];

    swift_unknownObjectRelease();
    if (v14)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
      sub_1C440962C(v39);
    }

    else
    {
      sub_1C440962C(v39);
      sub_1C442B870(a2, &v35);
    }

    sub_1C44482AC(&v35, v39);
    v9 = v33;
  }

  sub_1C442B870(v39, &v35);
  sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
  if (!swift_dynamicCast())
  {
    if (qword_1EDDFECD0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v16 = v38[0];
  *a5 = v11;
  a5[1] = v10;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_12:
    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CD8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = 7104878;
      v21 = v9;
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v35 = v34;
      *v22 = 136315394;
      if (v8)
      {
        v23 = v21;
      }

      else
      {
        v23 = 7104878;
      }

      if (!v8)
      {
        v8 = 0xE300000000000000;
      }

      v24 = sub_1C441D828(v23, v8, &v35);

      *(v22 + 4) = v24;
      v25 = v40;
      *(v22 + 12) = 2080;
      if (!v25[2])
      {
        goto LABEL_31;
      }

      v26 = v10;
      v27 = v11;
      if (v25[5])
      {
        v20 = v25[4];
        v28 = v25[5];
      }

      else
      {
        v28 = 0xE300000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = sub_1C441D828(v20, v28, &v35);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_1C43F8000, v18, v19, "Fields %s and %s did not have the same length", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v34, -1, -1);
      MEMORY[0x1C6942830](v22, -1, -1);

      v11 = v27;
      v10 = v26;
    }

    else
    {
    }

    v31 = MEMORY[0x1E69E6158];
    v32 = MEMORY[0x1E69A0138];
    *a5 = v11;
    a5[1] = v10;
    a5[5] = v31;
    a5[6] = v32;
    a5[2] = 0;
    a5[3] = 0xE000000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return sub_1C440962C(v39);
  }

  if (*(v16 + 16) <= a4)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  sub_1C442B870(v16 + 32 * a4 + 32, v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
  if (swift_dynamicCast())
  {
    sub_1C440962C(v39);
    return sub_1C441D670(&v35, (a5 + 2));
  }

  else
  {
    v37 = 0;
    v29 = MEMORY[0x1E69A0138];
    v35 = 0u;
    v36 = 0u;
    a5[5] = MEMORY[0x1E69E6158];
    a5[6] = v29;
    a5[2] = 0;
    a5[3] = 0xE000000000000000;
    result = sub_1C440962C(v39);
    if (*(&v36 + 1))
    {
      return sub_1C4420C3C(&v35, &qword_1EC0B9038, &unk_1C4F231C0);
    }
  }

  return result;
}

uint64_t sub_1C4BD77DC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v26 - v12);
  v14 = *(*v3 + 16);

  sub_1C443A738(a1, a2, v15, v16, v17, v18, v19, v20);

  if (!v4)
  {
    v21 = v13[6];
    if (v21)
    {
      v27 = v13[5];
      v22 = v13[7];
      v30 = v13[8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28 = v22;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3 & 1);
      sub_1C4BD8310(v13, v10, _s10ViewConfigVMa);
      _s21BiomeStreamSignalViewCMa(0);
      v14 = swift_allocObject();
      sub_1C4BD2A90(&v29, v10, v27, v21, v28, v30);
      sub_1C443CED4(v13, _s10ViewConfigVMa);
    }

    else
    {
      sub_1C450B034();
      sub_1C441C114();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = 0x656D6F6962;
      *(v23 + 24) = 0xE500000000000000;
      *(v23 + 32) = 0;
      *(v23 + 40) = 0xE000000000000000;
      *(v23 + 48) = v29;
      *(v23 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4407E24();
      sub_1C443CED4(v13, v24);
    }
  }

  return v14;
}

uint64_t sub_1C4BD7A14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1C4BD77DC(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

void *sub_1C4BD7B9C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1C4BD7E00(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

_BYTE *sub_1C4BD7C3C(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C4BD7B9C(v12, v7, v4, a2);
      MEMORY[0x1C6942830](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4BD7E00(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C4BD7E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v26 = 0;
  v5 = 0;
  v30 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v30 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1C442B870(*(v30 + 56) + 32 * v14, v29);
    v27[0] = v16;
    v27[1] = v17;
    sub_1C442B870(v29, &v28);
    v18 = *(a4 + 16);
    swift_bridgeObjectRetain_n();
    if (v18)
    {
      sub_1C445FAA8(v16, v17);
      v20 = v19;
      sub_1C4420C3C(v27, &qword_1EC0C47D8, &unk_1C4F5BC60);
      sub_1C440962C(v29);

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C4420C3C(v27, &qword_1EC0C47D8, &unk_1C4F5BC60);
      sub_1C440962C(v29);

LABEL_15:
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_18:
        sub_1C458799C(v25, a2, v26, v30);
        v23 = v22;

        return v23;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_18;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4BD7FDC()
{
  result = qword_1EC0C4800;
  if (!qword_1EC0C4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4800);
  }

  return result;
}

uint64_t sub_1C4BD8030()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C4BD8114()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

_BYTE *_s19StreamPipelineErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BD82BC()
{
  result = qword_1EC0C4818;
  if (!qword_1EC0C4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4818);
  }

  return result;
}

uint64_t sub_1C4BD8310(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C4BD837C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &__src[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);
  if (v6)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, 0x50uLL);
      v16 = type metadata accessor for BehaviorHistoryUtility(0);
      swift_allocObject();

      v18 = sub_1C4624330(a6, a5);
      v19 = __dst[16];
      sub_1C442E860(&__dst[40], __src);
      if (v18)
      {
        v20 = &off_1F43E41D8;
      }

      else
      {
        v16 = 0;
        v20 = 0;
        v32[1] = 0;
        v32[2] = 0;
      }

      v32[0] = v18;
      v32[3] = v16;
      v32[4] = v20;
      swift_unownedRetainStrong();
      sub_1C44098F0(a4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v15);

      *&v30 = 0;
      *(&v30 + 1) = 0xE000000000000000;
      sub_1C4F02248();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *&v30 = a1;
      *(&v30 + 1) = a2;
      MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F92720);
      v22 = *(&v30 + 1);
      v21 = v30;
      type metadata accessor for KeyValueStore(0);
      swift_allocObject();
      v24 = KeyValueStore.init(config:domain:)(v15, v21, v22);
      v25 = sub_1C4418280(__src, *(&__src[1] + 1));
      v26 = MEMORY[0x1EEE9AC00](v25);
      v28 = (&__src[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28, v26);
      a2 = sub_1C4BDA0DC(v19, *v28, v32, v24);

      sub_1C4AF9C44(__dst);
      sub_1C440962C(__src);
    }

    else
    {
      memset(__src, 0, sizeof(__src));
      sub_1C4423A0C(__src, &qword_1EC0BAFF8, qword_1C4F1D680);
      sub_1C450B034();
      swift_allocError();
      *v17 = a1;
      *(v17 + 8) = a2;
      *(v17 + 16) = xmmword_1C4F5B670;
      *(v17 + 32) = 0xD000000000000025;
      *(v17 + 40) = 0x80000001C4FB83A0;
      *(v17 + 48) = v30;
      *(v17 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a2;
}

uint64_t sub_1C4BD87D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BD837C(a1, a2, a3, *v3, *(v3 + 8), *(v3 + 16));
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4BD8884()
{
  sub_1C43FBCD4();
  v1[10] = v0;
  v2 = sub_1C4EFDAB8();
  v1[11] = v2;
  sub_1C43FCF7C(v2);
  v1[12] = v3;
  v1[13] = swift_task_alloc();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4BD8930()
{
  v25 = v0;
  v1 = *(v0 + 80);
  v2 = v1[6];
  v3 = v1[7];
  sub_1C4409678(v1 + 3, v2);
  (*(*(v3 + 8) + 16))(v2);
  sub_1C44600A0(*(v0 + 80) + 104, v0 + 16, &qword_1EC0C4820, &qword_1C4F5BE30);
  if (*(v0 + 16))
  {
    KeyValueStore.delete(key:)(*(v0 + 24));
    sub_1C46E07D0(v0 + 16);
    if (v19)
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728(&qword_1EDDFA668);
      }

      v4 = sub_1C4F00978();
      sub_1C442B738(v4, qword_1EDE2DDE0);

      v5 = v19;
      v6 = sub_1C4F00968();
      v7 = sub_1C4F01CE8();

      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 96);
        v8 = *(v0 + 104);
        v10 = *(v0 + 80);
        v11 = *(v0 + 88);
        v12 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v12 = 136315394;
        sub_1C469B6F8(*(v10 + 16), v8);
        sub_1C4403DDC(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
        v13 = sub_1C4F02858();
        v15 = v14;
        (*(v9 + 8))(v8, v11);
        v16 = sub_1C441D828(v13, v15, &v24);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2112;
        v17 = v19;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 14) = v18;
        *v22 = v18;
        _os_log_impl(&dword_1C43F8000, v6, v7, "ContextualEventsViewGenerator: Error deleting events table for %s behaviors - %@", v12, 0x16u);
        sub_1C4423A0C(v22, &qword_1EC0BDA00, &qword_1C4F10D30);
        sub_1C43FBE2C();
        sub_1C440962C(v23);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C4423A0C(v0 + 16, &qword_1EC0C4820, &qword_1C4F5BE30);
  }

  sub_1C43FBDA0();

  return v20();
}

uint64_t sub_1C4BD8C30()
{
  sub_1C43FBCD4();
  v1[7] = v0;
  v2 = sub_1C4EF9CD8();
  v1[8] = v2;
  sub_1C43FCF7C(v2);
  v1[9] = v3;
  v1[10] = swift_task_alloc();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4BD8CDC()
{
  sub_1C44600A0(v0[7] + 64, (v0 + 2), &qword_1EC0C4828, &qword_1C4F5BE40);
  v1 = v0[5];
  v0[11] = v1;
  sub_1C4423A0C((v0 + 2), &qword_1EC0C4828, &qword_1C4F5BE40);
  if (v1)
  {
    sub_1C4EF9CC8();
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1C4BD8E94;

    return sub_1C4BD90A4();
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DDE0);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (sub_1C4402B64(v6))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v7, v8, "EventSource is nil");
      sub_1C43FBE2C();
    }

    v9 = v0[1];
    v10 = v0[11] != 0;

    return v9(v10);
  }
}

uint64_t sub_1C4BD8E94()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  v5[13] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4BD9040, 0, 0);
  }

  else
  {

    v7 = v5[1];
    v8 = v5[11] != 0;

    return v7(v8);
  }
}

uint64_t sub_1C4BD9040()
{
  sub_1C43FBCD4();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1C4BD90A4()
{
  sub_1C43FBCD4();
  v1[32] = v2;
  v1[33] = v0;
  v3 = sub_1C4EF9CD8();
  v1[34] = v3;
  sub_1C43FCF7C(v3);
  v1[35] = v4;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4BD9168()
{
  sub_1C44600A0(*(v0 + 264) + 64, v0 + 184, &qword_1EC0C4828, &qword_1C4F5BE40);
  if (*(v0 + 208))
  {
    v1 = *(v0 + 264);
    sub_1C443FA18((v0 + 184), v0 + 144);
    sub_1C44600A0(v1 + 104, v0 + 80, &qword_1EC0C4820, &qword_1C4F5BE30);
    if (*(v0 + 80))
    {
      v2 = *(v0 + 264);
      v3 = *(v0 + 96);
      *(v0 + 16) = *(v0 + 80);
      *(v0 + 32) = v3;
      v4 = *(v0 + 128);
      *(v0 + 48) = *(v0 + 112);
      *(v0 + 64) = v4;
      sub_1C4EF9CC8();
      v5 = swift_task_alloc();
      *(v0 + 312) = v5;
      *(v5 + 16) = v2;
      *(v5 + 24) = v0 + 144;
      v6 = swift_task_alloc();
      *(v0 + 320) = v6;
      *v6 = v0;
      v6[1] = sub_1C4BD93C0;

      return sub_1C46D8448();
    }

    sub_1C4423A0C(v0 + 80, &qword_1EC0C4820, &qword_1C4F5BE30);
    sub_1C440962C((v0 + 144));
  }

  else
  {
    sub_1C4423A0C(v0 + 184, &qword_1EC0C4828, &qword_1C4F5BE40);
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DDE0);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (sub_1C4402B64(v10))
  {
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v11, v12, "batchedDigester is nil");
    sub_1C43FBE2C();
  }

  sub_1C43FBDA0();

  return v13();
}

uint64_t sub_1C4BD93C0()
{
  v2 = *v1;
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  *v4 = *v1;
  v3[41] = v0;

  v5 = v2[38];
  v6 = v2[35];
  v7 = v2[34];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);

    v11 = sub_1C4BD9808;
  }

  else
  {
    v3[42] = v9;
    v3[43] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);

    v11 = sub_1C4BD9564;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1C4BD9564()
{
  v24 = v0;
  v1 = v0[42];
  v2 = v0[41];
  v3 = v0[36];
  v4 = v0[34];
  sub_1C4409678((v0[33] + 24), *(v0[33] + 48));
  sub_1C4EF9C88();
  sub_1C4EF9BE8();
  v1(v3, v4);
  sub_1C45E025C();
  (v0[42])(v0[37], v0[34]);
  if (v2)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDE0);
    v6 = v2;
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CE8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_1C4F02A38();
      v13 = sub_1C441D828(v11, v12, &v23);

      *(v9 + 4) = v13;
      sub_1C43FD580(&dword_1C43F8000, v14, v15, "ContextualEventsViewGenerator: Error pruning eventTracker - %s");
      sub_1C440962C(v10);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2DDE0);
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CF8();
  if (sub_1C4402B64(v18))
  {
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v19, v20, "ContextualEventsViewGenerator: Completed pruning");
    sub_1C43FBE2C();
  }

  sub_1C46E07D0((v0 + 2));
  sub_1C440962C(v0 + 18);

  sub_1C43FBDA0();

  return v21();
}

uint64_t sub_1C4BD9808()
{
  sub_1C46E07D0(v0 + 16);
  sub_1C440962C((v0 + 144));

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4BD9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_1C4EFDAB8();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1C4EF9CD8();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BD99C8, 0, 0);
}

uint64_t sub_1C4BD99C8()
{
  v37 = v0;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[6];
  v5 = v0[7];
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DDE0);
  v8 = *(v3 + 16);
  v8(v1, v6, v4);
  v8(v2, v5, v4);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CC8();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v16 = 136315394;
    sub_1C4403DDC(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    log = v9;
    v17 = sub_1C4F02858();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1C441D828(v17, v19, v36);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_1C4F02858();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1C441D828(v22, v24, v36);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1C43F8000, log, v10, "ContextualEventsViewGenerator: Starting events table batched digest from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[13];
  v29 = v0[9];
  v28 = v0[10];
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];
  sub_1C4409678((v29 + 24), *(v29 + 48));
  sub_1C469B6F8(*(v29 + 16), v27);
  sub_1C45DCC18(v32, v31, v28, v30, v27, 0);
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_1C43FBDA0();

  return v33();
}

uint64_t sub_1C4BD9DF4()
{
  sub_1C440962C((v0 + 24));
  sub_1C4423A0C(v0 + 64, &qword_1EC0C4828, &qword_1C4F5BE40);
  sub_1C4423A0C(v0 + 104, &qword_1EC0C4820, &qword_1C4F5BE30);
  return v0;
}

uint64_t sub_1C4BD9E44()
{
  sub_1C4BD9DF4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BD9E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C4707B70;

  return sub_1C4BD9898(a1, a2, a3, v9, v8);
}

uint64_t sub_1C4BD9F6C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = type metadata accessor for BehaviorDatabaseEventTracker();
  v16[4] = &off_1F43E2390;
  v16[0] = a2;
  *(a5 + 16) = a1;
  sub_1C442E860(v16, a5 + 24);
  sub_1C44600A0(a3, a5 + 64, &qword_1EC0C4828, &qword_1C4F5BE40);
  sub_1C44600A0(a3, &v13, &qword_1EC0C4828, &qword_1C4F5BE40);
  if (*(&v14[0] + 1))
  {
    sub_1C443FA18(&v13, v15);
    sub_1C4423A0C(a3, &qword_1EC0C4828, &qword_1C4F5BE40);
    sub_1C440962C(v16);
    sub_1C443FA18(v15, v14 + 8);
    *&v13 = a4;
    *(&v13 + 1) = 0xD000000000000022;
    *&v14[0] = 0x80000001C4FB8870;
    v10 = v14[2];
    *(a5 + 136) = v14[1];
    *(a5 + 152) = v10;
    v11 = v14[0];
    *(a5 + 104) = v13;
    *(a5 + 120) = v11;
  }

  else
  {
    sub_1C4423A0C(a3, &qword_1EC0C4828, &qword_1C4F5BE40);

    sub_1C440962C(v16);
    sub_1C4423A0C(&v13, &qword_1EC0C4828, &qword_1C4F5BE40);
    *(a5 + 152) = 0u;
    *(a5 + 136) = 0u;
    *(a5 + 120) = 0u;
    *(a5 + 104) = 0u;
  }

  return a5;
}

uint64_t sub_1C4BDA0DC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = type metadata accessor for BehaviorDatabaseEventTracker();
  v19 = &off_1F43E2390;
  v17[0] = a2;
  _s29ContextualEventsViewGeneratorCMa();
  v8 = swift_allocObject();
  v9 = sub_1C4418280(v17, v18);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_1C4BD9F6C(a1, *v12, a3, a4, v8);
  sub_1C440962C(v17);
  return v14;
}

uint64_t sub_1C4BDA21C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &unk_1F43E6C38;
  a1[4] = &off_1F43E6CB0;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1C4AF9BE8(v1, v3 + 16);
}

void sub_1C4BDA284(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C4EFBE38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = a3 + *(_s6ConfigVMa(0) + 68);
  v11 = *(v10 + 8);
  if (v11)
  {
    v30 = *v10;
    v29 = *(v10 + 16);
    sub_1C44E9220();
    if (!v4)
    {
      v28 = v12;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v13 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v15 = *(v13 + 72);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1C4F0D480;
      v16 = v27 + v14;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBE08();
      strcpy((v27 + v14), "behaviorType");
      *(v16 + 13) = 0;
      *(v16 + 14) = -5120;
      v17 = *(v9 + 32);
      sub_1C4407E3C();
      v17();
      v18 = v15;
      v19 = (v16 + v15);
      v26 = v17;
      sub_1C4EFBDD8();
      *v19 = 0xD000000000000012;
      v19[1] = 0x80000001C4F855A0;
      sub_1C4407E3C();
      v17();
      v20 = (v16 + 2 * v18);
      sub_1C4EFBDC8();
      *v20 = 0x6D617473656D6974;
      v20[1] = 0xE900000000000070;
      sub_1C4407E3C();
      v26();
      v21 = (v16 + 3 * v18);
      sub_1C4EFBDC8();
      *v21 = 0xD000000000000016;
      v21[1] = 0x80000001C4F855C0;
      sub_1C4407E3C();
      v26();
      *(a4 + 24) = v28;
      *(a4 + 32) = v27;
      *a4 = v30;
      *(a4 + 8) = v11;
      *(a4 + 16) = v29;
      v22 = *(*(v28 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
      v23 = type metadata accessor for BehaviorDatabaseEventTracker();
      swift_allocObject();
      v24 = sub_1C45DC594(v30, v11, v22, 0, 0, 0);
      *(a4 + 64) = v23;
      *(a4 + 72) = &off_1F43E2390;
      *(a4 + 40) = v24;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = 0xD000000000000019;
    *(v25 + 24) = 0x80000001C4FB88A0;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0xE000000000000000;
    *(v25 + 48) = v31;
    *(v25 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4BDA684(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = &unk_1F43E6C38;
  a4[4] = &off_1F43E6CB0;
  v9 = swift_allocObject();
  *a4 = v9;
  sub_1C4BDA284(a1, a2, a3, v9 + 16);
  if (v4)
  {
    sub_1C47C41F8(a4);
  }
}

void sub_1C4BDA73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C4BDA284(a1, a2, a3, v12);
  if (!v8)
  {
    MEMORY[0x1EEE9AC00](v10);
    v11[2] = v12;

    sub_1C446C37C(a8, v11);

    sub_1C4AF9C44(v12);
  }
}

uint64_t sub_1C4BDA89C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView____lazy_storage___featureNames);
  }

  else
  {
    v3 = [*(v0 + 56) modelDescription];
    v4 = [v3 outputDescriptionsByName];

    sub_1C4461BB8(0, &qword_1EDDDB8D8, 0x1E695FE50);
    sub_1C4F00ED8();

    v2 = sub_1C45A322C();
    *(v0 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C4BDA978()
{
  v207 = *MEMORY[0x1E69E9840];
  v2 = sub_1C456902C(&qword_1EC0C4848, &qword_1C4F5C068);
  MEMORY[0x1EEE9AC00](v2);
  *&v192 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v185 - v5);
  MEMORY[0x1EEE9AC00](v7);
  *&v196 = &v185 - v8;
  *&v193 = v0;
  v9 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_dependencyViewConfigs);
  v10 = sub_1C4F00F28();
  v11 = v9 + 64;
  sub_1C43FD030();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  *(&v192 + 1) = v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = 0;
  *(&v189 + 1) = v9 + 64;
  *&v189 = v16;
  v190 = v6;
  v191 = v2;
  while (1)
  {
    *(&v196 + 1) = v10;
    if (v14)
    {
      goto LABEL_7;
    }

    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if (v18 >= v16)
      {

        v44 = v193;
        v186 = *(v193 + 56);
        v45 = [v186 modelDescription];
        v46 = [v45 inputDescriptionsByName];

        v185 = sub_1C4461BB8(0, &qword_1EDDDB8D8, 0x1E695FE50);
        v47 = sub_1C4F00ED8();

        v201 = MEMORY[0x1E69E7CC8];
        sub_1C43FD030();
        v50 = v49 & v48;
        v52 = (v51 + 63) >> 6;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v53 = 0;
        v17 = v188;
        if (!v50)
        {
          goto LABEL_18;
        }

        do
        {
          v1 = v53;
LABEL_21:
          v54 = *(v47 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v50))));
          v55 = *(v54 + 8);
          v202 = *v54;
          v203 = v55;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4BDBA48(&v201, &v202, v44);
          if (v17)
          {
            goto LABEL_88;
          }

          v50 &= v50 - 1;

          v53 = v1;
        }

        while (v50);
        while (1)
        {
LABEL_18:
          v1 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_79;
          }

          if (v1 >= v52)
          {
            break;
          }

          v50 = *(v47 + 64 + 8 * v1);
          ++v53;
          if (v50)
          {
            goto LABEL_21;
          }
        }

        v188 = v17;

        v56 = 0;
        v58 = v201 + 64;
        v57 = *(v201 + 64);
        v195 = v201;
        v59 = 1 << *(v201 + 32);
        v60 = -1;
        if (v59 < 64)
        {
          v60 = ~(-1 << v59);
        }

        v61 = v60 & v57;
        v62 = (v59 + 63) >> 6;
        v1 = MEMORY[0x1E69E7CC8];
        *(&v193 + 1) = v201 + 64;
        v194 = v62;
        while (1)
        {
          while (1)
          {
            if (v61)
            {
              *&v196 = v1;
              v63 = v56;
            }

            else
            {
              do
              {
                v63 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
                  goto LABEL_80;
                }

                if (v63 >= v62)
                {

                  if (qword_1EDDFECD0 == -1)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_84;
                }

                v61 = *(v58 + 8 * v63);
                ++v56;
              }

              while (!v61);
              *&v196 = v1;
            }

            v64 = __clz(__rbit64(v61));
            v61 &= v61 - 1;
            v65 = v64 | (v63 << 6);
            v66 = (*(v195 + 48) + 16 * v65);
            v67 = *v66;
            v68 = *(*(v195 + 56) + 8 * v65);
            v69 = v66[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v70 = v68;
            v71 = [v70 viewName];
            v72 = sub_1C4F01138();
            v74 = v73;

            if (*(*(&v196 + 1) + 16))
            {
              break;
            }

            v1 = v196;
LABEL_38:
            v96 = sub_1C445FAA8(v67, v69);
            v98 = v97;

            if (v98)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v202 = v1;
              sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
              sub_1C4F02458();
              v1 = v202;

              sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
              sub_1C4F02478();
            }

            v56 = v63;
            v58 = *(&v193 + 1);
            v62 = v194;
          }

          v75 = sub_1C445FAA8(v72, v74);
          v77 = v76;

          v1 = v196;
          if ((v77 & 1) == 0)
          {
            goto LABEL_38;
          }

          v78 = (*(*(&v196 + 1) + 56) + 40 * v75);
          v79 = v78[1];
          v80 = v78[2];
          *&v192 = v67;
          *(&v192 + 1) = v79;
          v81 = v78[4];
          v190 = v78[3];
          v191 = v80;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v82 = [v70 viewName];
          *&v189 = sub_1C4F01138();
          v84 = v83;

          v85 = [v70 featureName];
          v86 = sub_1C4F01138();
          v87 = v70;
          v89 = v88;

          v187 = v87;
          v90 = sub_1C47DC860(v87);
          v92 = v91;
          *(&v189 + 1) = &v185;
          MEMORY[0x1EEE9AC00](v90);
          *(&v185 - 10) = v93;
          *(&v185 - 9) = v92;
          *(&v185 - 8) = v189;
          *(&v185 - 7) = v84;
          *(&v185 - 6) = v86;
          *(&v185 - 5) = v89;
          v94 = v190;
          *(&v185 - 4) = v191;
          *(&v185 - 3) = v94;
          *(&v185 - 2) = v81;
          v95 = sub_1C49A52E4(sub_1C46A76E4, (&v185 - 12));

          swift_bridgeObjectRelease_n();

          if (!*(v95 + 16))
          {

            v1 = v196;
            v67 = v192;
            v70 = v187;
            goto LABEL_38;
          }

          *(&v192 + 1) = *(v95 + 40);

          v99 = v196;
          swift_isUniquelyReferenced_nonNull_native();
          v202 = v99;
          v17 = v192;
          v100 = sub_1C445FAA8(v192, v69);
          if (__OFADD__(v99[2], (v101 & 1) == 0))
          {
            __break(1u);
LABEL_86:
            __break(1u);
          }

          v102 = v100;
          v103 = v101;
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          v104 = sub_1C4F02458();
          v105 = v187;
          if (v104)
          {
            v106 = sub_1C445FAA8(v17, v69);
            if ((v103 & 1) != (v107 & 1))
            {
              goto LABEL_87;
            }

            v102 = v106;
          }

          if (v103)
          {

            v1 = v202;
            v108 = v202[7];
            v109 = v105;
            v110 = *(v108 + 8 * v102);
            *(v108 + 8 * v102) = *(&v192 + 1);
          }

          else
          {
            v1 = v202;
            v202[(v102 >> 6) + 8] |= 1 << v102;
            v111 = (*(v1 + 48) + 16 * v102);
            *v111 = v17;
            v111[1] = v69;
            *(*(v1 + 56) + 8 * v102) = *(&v192 + 1);

            v112 = *(v1 + 16);
            v42 = __OFADD__(v112, 1);
            v113 = v112 + 1;
            if (v42)
            {
              goto LABEL_86;
            }

            *(v1 + 16) = v113;
          }

          v58 = *(&v193 + 1);
          v62 = v194;
          v56 = v63;
        }
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
    }

    while (!v14);
    v17 = v18;
LABEL_7:
    v19 = __clz(__rbit64(v14)) | (v17 << 6);
    v20 = *(*(&v192 + 1) + 56);
    v21 = (*(*(&v192 + 1) + 48) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = v20 + *(*(_s10ViewConfigVMa(0) - 8) + 72) * v19;
    v25 = *(v2 + 48);
    v26 = v2;
    v27 = v196;
    sub_1C463F29C(v24, v196 + v25);
    *v27 = v23;
    v27[1] = v22;
    sub_1C4BDC068(v27, v6);
    v1 = *v6;
    v28 = v6[1];
    v29 = *(v193 + 48);
    v30 = v192;
    sub_1C4BDC068(v27, v192);
    v31 = v30[1];
    v194 = *v30;
    v195 = v31;
    v32 = *(v26 + 48);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(&v193 + 1) = v29;

    sub_1C445F57C(v30 + v32);
    v33 = *(&v196 + 1);
    swift_isUniquelyReferenced_nonNull_native();
    v202 = v33;
    v34 = v1;
    v35 = sub_1C445FAA8(v1, v28);
    if (__OFADD__(v33[2], (v36 & 1) == 0))
    {
      goto LABEL_82;
    }

    v37 = v35;
    v1 = v36;
    sub_1C456902C(&qword_1EC0C4850, &unk_1C4F5C070);
    if (sub_1C4F02458())
    {
      break;
    }

LABEL_11:
    if (v1)
    {

      v10 = v202;
      sub_1C4407E48((v202[7] + 40 * v37));

      sub_1C4BDC0D8(v196);
    }

    else
    {
      v10 = v202;
      v202[(v37 >> 6) + 8] |= 1 << v37;
      v40 = (v10[6] + 16 * v37);
      *v40 = v34;
      v40[1] = v28;
      sub_1C4407E48((v10[7] + 40 * v37));
      sub_1C4BDC0D8(v196);
      v41 = v10[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        while (1)
        {
          __break(1u);
LABEL_84:
          swift_once();
LABEL_51:
          v114 = sub_1C4F00978();
          v115 = sub_1C442B738(v114, qword_1EDE2DF70);
          v116 = sub_1C4F00968();
          v117 = sub_1C4F01CB8();
          v118 = os_log_type_enabled(v116, v117);
          v119 = v188;
          if (v118)
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v202 = v121;
            *v120 = 136380675;
            sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v122 = sub_1C4F00EE8();
            v124 = v123;

            v125 = sub_1C441D828(v122, v124, &v202);

            *(v120 + 4) = v125;
            _os_log_impl(&dword_1C43F8000, v116, v117, "CoreMLTransformerView: Features %{private}s", v120, 0xCu);
            sub_1C440962C(v121);
            sub_1C43FBE2C();
            sub_1C43FBE2C();
          }

          v126 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C465D378(v126, v127, v128, v129, v130, v131, v132, v133, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
          v135 = v134;

          v136 = objc_allocWithZone(MEMORY[0x1E695FE48]);
          v137 = sub_1C4701E88(v135);
          v138 = v119;
          if (v119)
          {
            break;
          }

          v147 = v137;
          v202 = 0;
          v148 = v186;
          *(&v196 + 1) = [v186 predictionFromFeatures:v137 error:&v202];
          if (!*(&v196 + 1))
          {
            v180 = v202;
            v138 = sub_1C4EF97A8();

            swift_willThrow();
            break;
          }

          *&v196 = v1;
          v149 = v202;

          v150 = [v148 modelDescription];
          v151 = [v150 outputDescriptionsByName];

          v152 = sub_1C4F00ED8();
          v153 = 0;
          v154 = v152 + 64;
          v195 = v152;
          sub_1C43FD030();
          v157 = v156 & v155;
          v1 = (v158 + 63) >> 6;
          *(&v193 + 1) = MEMORY[0x1E69E7CC0];
          v194 = v115;
          while (v157)
          {
LABEL_64:
            v160 = __clz(__rbit64(v157));
            v157 &= v157 - 1;
            v161 = (*(v195 + 48) + ((v153 << 10) | (16 * v160)));
            v163 = *v161;
            v162 = v161[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v164 = sub_1C4F01108();
            v165 = [*(&v196 + 1) featureValueForName_];

            if (v165)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C458B504();
                *(&v193 + 1) = v173;
              }

              v169 = *(*(&v193 + 1) + 16);
              v170 = v169 + 1;
              if (v169 >= *(*(&v193 + 1) + 24) >> 1)
              {
                *(&v192 + 1) = v169 + 1;
                sub_1C458B504();
                v170 = *(&v192 + 1);
                *(&v193 + 1) = v174;
              }

              v171 = *(&v193 + 1);
              *(*(&v193 + 1) + 16) = v170;
              v172 = (v171 + 40 * v169);
              v172[4] = v163;
              v172[5] = v162;
              v172[6] = 0;
              v172[7] = 0;
              v172[8] = v165;
            }

            else
            {

              v166 = sub_1C4F00968();
              v167 = sub_1C4F01CD8();
              if (os_log_type_enabled(v166, v167))
              {
                v168 = swift_slowAlloc();
                *v168 = 0;
                _os_log_impl(&dword_1C43F8000, v166, v167, "CoreMLTransformerView: could not find featureName", v168, 2u);
                sub_1C43FBE2C();
              }
            }
          }

          while (1)
          {
            v159 = v153 + 1;
            if (__OFADD__(v153, 1))
            {
              break;
            }

            if (v159 >= v1)
            {

              v175 = v193;
              v176 = *(v193 + 24);
              v177 = *(v193 + 32);
              v178 = *(v193 + 40);
              v179 = *(v193 + 48);
              v202 = *(v193 + 16);
              v203 = v176;
              v204 = v177;
              v205 = v178;
              v206 = v179;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

              sub_1C47D32C8();

              v181 = sub_1C4F00968();
              v182 = sub_1C4F01CB8();

              if (os_log_type_enabled(v181, v182))
              {
                v183 = swift_slowAlloc();
                v184 = swift_slowAlloc();
                v202 = v184;
                *v183 = 136315138;
                *(v183 + 4) = sub_1C441D828(*(v175 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_config), *(v175 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_config + 8), &v202);
                _os_log_impl(&dword_1C43F8000, v181, v182, "CoreMLTransformerView %s: Wrote features", v183, 0xCu);
                sub_1C440962C(v184);
                sub_1C43FBE2C();
                sub_1C43FBE2C();
              }

              swift_unknownObjectRelease();
              return;
            }

            v157 = *(v154 + 8 * v159);
            ++v153;
            if (v157)
            {
              v153 = v159;
              goto LABEL_64;
            }
          }

LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
        }

        v139 = v138;
        v140 = sub_1C4F00968();
        v141 = sub_1C4F01CB8();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v202 = v143;
          *v142 = 136315138;
          swift_getErrorValue();
          v144 = sub_1C4F02A38();
          v146 = sub_1C441D828(v144, v145, &v202);

          *(v142 + 4) = v146;
          _os_log_impl(&dword_1C43F8000, v140, v141, "CoreMLTransformerView: error during prediction %s", v142, 0xCu);
          sub_1C440962C(v143);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {
        }

        return;
      }

      v10[2] = v43;
    }

    v14 &= v14 - 1;
    v6 = v190;
    v2 = v191;
    sub_1C445F57C(v190 + *(v191 + 48));
    v11 = *(&v189 + 1);
    v16 = v189;
  }

  v38 = sub_1C445FAA8(v34, v28);
  if ((v1 & 1) == (v39 & 1))
  {
    v37 = v38;
    goto LABEL_11;
  }

LABEL_87:
  sub_1C4F029F8();
  __break(1u);
LABEL_88:

  __break(1u);
}