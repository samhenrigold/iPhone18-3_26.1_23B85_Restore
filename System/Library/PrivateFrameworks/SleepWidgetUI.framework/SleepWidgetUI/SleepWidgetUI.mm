uint64_t sub_269DE6BC0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

void *sub_269DE6C1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_269DE6C48(void *a1, uint64_t *a2)
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

uint64_t sub_269DE6CE0()
{
  sub_269DF088C(255);
  sub_269DF09F4(&qword_281571E50, sub_269DF088C, MEMORY[0x277D126F0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE6D68()
{
  sub_269E51A9C();
  sub_269DF20F8(&qword_281571E28, MEMORY[0x277D12710], MEMORY[0x277D126F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE6DF0()
{
  sub_269DF6030(255);
  sub_269DF5EB8(255);
  sub_269DF5D88(255);
  sub_269DF5C88(255);
  sub_269DF5BD4(255);
  sub_269DF58DC(255);
  sub_269DF6B64(&qword_281571E00, sub_269DF58DC, MEMORY[0x277CE3D88]);
  swift_getOpaqueTypeConformance2();
  sub_269DF0E28();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE6F9C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269E50C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_269DE7048(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_269E50C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DE70EC()
{
  sub_269DF6D0C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269DE7178()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269DE71C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269DF6864(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
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

  else
  {
    sub_269DF6864(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

void sub_269DE73A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269E50B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_269DF6864(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    sub_269DF6864(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[7];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_269DE7580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DE75EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DE76A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
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
    sub_269DF7980(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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
      sub_269DF7980(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_269DE7820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    sub_269DF7980(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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
      sub_269DF7980(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_269DE79A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269DF7980(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269DF7980(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

void sub_269DE7B0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269DF7980(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_269DF7980(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_269DE7C74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E511AC();
  *a1 = result;
  return result;
}

uint64_t sub_269DE7CCC(uint64_t a1, uint64_t a2)
{
  sub_269DFCC38(0, &qword_28035E928, &qword_28035E930, sub_269DFB9E0, &qword_28035E950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE7D5C(uint64_t a1, uint64_t a2)
{
  sub_269DFBCA4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE7DC0(uint64_t a1, uint64_t a2)
{
  sub_269DFBCA4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE7E24(uint64_t a1)
{
  sub_269DFBCA4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DE7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269DFEAC8(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_269DFEAC8(0, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_269DE8050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepWidgetViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_269DFEAC8(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_269DFEAC8(0, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_269DE820C()
{
  sub_269DFE5D0(255);
  sub_269DFE53C(255);
  sub_269DFE8C4(&qword_28035EA58, sub_269DFE5D0, MEMORY[0x277CE1198]);
  sub_269DFE8C4(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE82E4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_269DFEBC0(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_269DFEBC0(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_269DFEBC0(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for SleepStageBarViewModel(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_269DE8510(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_269DFEBC0(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_269DFEBC0(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_269DFEBC0(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for SleepStageBarViewModel(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_269DE8738()
{
  v1 = type metadata accessor for SleepStageBarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_269DFEBC0(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_269E510EC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_269DFEBC0(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_269E51B0C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_269DFEBC0(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_269E51ADC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  sub_269DFC008(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v11 = v5 + v1[8];
  v12 = sub_269E509EC();
  (*(*(v12 - 8) + 8))(v11, v12);
  type metadata accessor for SleepStageBarViewModel(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_269DE8A40(uint64_t a1, uint64_t a2)
{
  sub_269DFEBC0(0, &qword_28035EAB8, sub_269E00C4C, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE8AF4(uint64_t a1, uint64_t a2)
{
  sub_269E00948(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE8B58(uint64_t a1)
{
  sub_269E00948(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DE8BB4(uint64_t a1, uint64_t a2)
{
  sub_269E00C4C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE8C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DE8CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DE8D3C(uint64_t a1, uint64_t a2)
{
  sub_269E016F4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE8DA0()
{
  sub_269E0180C(255);
  sub_269E01A60(&qword_281571F68, sub_269E0180C, MEMORY[0x277CE1198]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE8E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DE8EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DE8F2C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D652DF0]();
  *a1 = result;
  return result;
}

uint64_t sub_269DE8F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E0355C(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24) + 32);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for SleepWidgetViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_269DE90D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E0355C(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24) + 32) = -a2;
  }

  else
  {
    v11 = type metadata accessor for SleepWidgetViewModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_269DE9238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E07A08(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

void sub_269DE9324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E07A08(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

uint64_t sub_269DE940C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E07A08(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

void sub_269DE94FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E07A08(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

void sub_269DE9614(uint64_t a1, uint64_t *a2)
{
  sub_269E08040();
  sub_269E50ADC();
  __break(1u);
}

void sub_269DE96C8(uint64_t a1, uint64_t *a2)
{
  sub_269E07F8C();
  sub_269E50ADC();
  __break(1u);
}

uint64_t sub_269DE973C()
{
  v1 = *(type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_269E07A08(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_269E51ADC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_269DE9930(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_269E0895C(255);
  type metadata accessor for SleepWidgetResultsView.SummaryTextView(255, v1, v2, v3);
  sub_269E510FC();
  sub_269E08A58();
  swift_getTupleTypeMetadata();
  sub_269E519DC();
  swift_getWitnessTable();
  sub_269E5194C();
  sub_269DFE53C(255);
  swift_getWitnessTable();
  sub_269E08D9C(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

void sub_269DE9B50(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x26D652F10]();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_269DE9B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E0A508(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_269DE9C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E0A508(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }
}

uint64_t sub_269DE9E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_269E166D0(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 48);
    v16 = a1 + *(a3 + 28);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_269DE9F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepWidgetViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  else
  {
    sub_269E166D0(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_269DEA0E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E5121C();
  *a1 = result;
  return result;
}

uint64_t sub_269DEA13C(uint64_t a1, uint64_t a2)
{
  sub_269E14F38(0, &qword_2815724D0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DEA274()
{
  sub_269E15714(255);
  sub_269DFE53C(255);
  sub_269E16DA0(&qword_28035EC80, sub_269E15714, MEMORY[0x277CE1198]);
  sub_269E16DA0(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEA34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269E50A5C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEA3B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_269E50A5C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEA448(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SleepWidgetViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_269DEA4EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for SleepWidgetViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEA58C()
{
  v1 = (type metadata accessor for GreetingSleepWidgetRectangularView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v22 = *(*v1 + 64);
  v23 = v0;
  v4 = v0 + v3;
  sub_269DFC008(*v4, *(v4 + 8));
  v5 = v4 + v1[7];
  v6 = type metadata accessor for SleepWidgetViewModel(0);
  v7 = v6[5];
  v8 = sub_269E50A0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = v6[6];
  if (!v10(v5 + v11, 1, v8))
  {
    (*(v9 + 8))(v5 + v11, v8);
  }

  v12 = v6[8];
  v13 = sub_269E50B9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v5 + v12, v13);

  v16 = v5 + v6[10];
  if (*v16)
  {
  }

  v17 = v6[11];
  v18 = *(v14 + 48);
  if (!v18(v5 + v17, 1, v13))
  {
    v15(v5 + v17, v13);
  }

  v19 = v6[12];
  if (!v18(v5 + v19, 1, v13))
  {
    v15(v5 + v19, v13);
  }

  v20 = v6[13];
  if (!v18(v5 + v20, 1, v13))
  {
    v15(v5 + v20, v13);
  }

  return MEMORY[0x2821FE8E8](v23, v3 + v22, v2 | 7);
}

uint64_t sub_269DEA8AC()
{
  sub_269E1C810(255);
  sub_269E1C698(255);
  sub_269E1C550(255);
  sub_269E1C440(255);
  sub_269E1C370(255);
  sub_269E1C040(255);
  sub_269E1D29C(&qword_281571DF0, sub_269E1C040, MEMORY[0x277CE3D88]);
  sub_269DF0E28();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEAA60(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269E50C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_269DEAB0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_269E50C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEABB0()
{
  sub_269E1D310(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269DEAC3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269DEAC84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_269E1D01C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for SleepWidgetViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_269E1D01C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_269DEAE6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269E50B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_269E1D01C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for SleepWidgetViewModel(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_269E1D01C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_269DEB06C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

  else
  {
    v9 = sub_269E50CDC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_269DEB124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_269E50CDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEB1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269E5103C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_269E510EC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_269E51ADC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_269DEB310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_269E5103C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_269E510EC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_269E51ADC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_269DEB46C()
{
  sub_269E21F38(255, &qword_28035EEE0, sub_269E2042C, sub_269E20454, MEMORY[0x277CE3A78]);
  sub_269E2042C(255);
  sub_269E20454();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEB548@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269E511CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_269DEB5A8(uint64_t a1)
{
  sub_269E220A8(0, &qword_28035EF70, sub_269E22078, &qword_2815720C0, MEMORY[0x277D85048]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DEB638()
{
  sub_269E220A8(255, &qword_28035EF70, sub_269E22078, &qword_2815720C0, MEMORY[0x277D85048]);
  sub_269DFE53C(255);
  sub_269E2225C();
  sub_269E224DC(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEB72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E27338(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24) + 32);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for SleepScoreWidgetViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_269DEB87C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E27338(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24) + 32) = -a2;
  }

  else
  {
    v11 = type metadata accessor for SleepScoreWidgetViewModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_269DEB9FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SleepWidgetViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_269DEBAA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for SleepWidgetViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEBB54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEBBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEBC30(uint64_t a1, uint64_t a2)
{
  sub_269E01714(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DEBC94(uint64_t a1)
{
  sub_269E01714(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DEBDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEBE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEBEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepScoreWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_269E2E2C8(0, &qword_28035F0D8, _s13SleepWidgetUI5SpecsVMa_0, MEMORY[0x277CDF468]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_269DEBFC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepScoreWidgetViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_269E2E2C8(0, &qword_28035F0D8, _s13SleepWidgetUI5SpecsVMa_0, MEMORY[0x277CDF468]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_269DEC0EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_269E51ADC();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_269DEC190(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_269E51ADC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEC248()
{
  sub_269E2E7F8(255);
  sub_269E2E32C(255);
  sub_269E51C1C();
  sub_269E2EF68(&qword_28035F160, sub_269E2E32C, MEMORY[0x277CDEFF0]);
  sub_269E2EF68(&qword_28035F168, MEMORY[0x277CE3ED8], MEMORY[0x277CE3ED0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEC350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269E2EFC4(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_269E2EFC4(0, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_269DEC4F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepWidgetViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_269E2EFC4(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_269E2EFC4(0, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_269DEC69C(uint64_t a1)
{
  sub_269E30E2C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DEC718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEC784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEC7F4()
{
  v1 = *(type metadata accessor for GreetingSleepWidgetView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(v1 + 64);
  v22 = v0;
  v4 = v0 + v3;
  v5 = type metadata accessor for SleepWidgetViewModel(0);
  v6 = v5[5];
  v7 = sub_269E50A0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[6];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v5[8];
  v12 = sub_269E50B9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v4 + v11, v12);

  v15 = v4 + v5[10];
  if (*v15)
  {
  }

  v16 = v5[11];
  v17 = *(v13 + 48);
  if (!v17(v4 + v16, 1, v12))
  {
    v14(v4 + v16, v12);
  }

  v18 = v5[12];
  if (!v17(v4 + v18, 1, v12))
  {
    v14(v4 + v18, v12);
  }

  v19 = v5[13];
  if (!v17(v4 + v19, 1, v12))
  {
    v14(v4 + v19, v12);
  }

  return MEMORY[0x2821FE8E8](v22, v3 + v21, v2 | 7);
}

uint64_t sub_269DECAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E34FE4(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269E34FE4(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

void sub_269DECC6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E34FE4(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_269E34FE4(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_269DECDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269E509EC();
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

uint64_t sub_269DECEB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269E509EC();
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

uint64_t sub_269DECFC4()
{
  sub_269E38CB4(255);
  sub_269E38B3C(255);
  sub_269E389F4(255);
  sub_269E388E4(255);
  sub_269E38814(255);
  sub_269E3852C(255);
  sub_269E3871C(&qword_281571E10, sub_269E3852C, MEMORY[0x277CE3D88]);
  sub_269DF0E28();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DED178(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269E50CDC();
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
      v13 = sub_269E50C8C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_269DED29C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_269E50CDC();
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
      v13 = sub_269E50C8C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_269DED3C0()
{
  sub_269E39800(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269DED448()
{
  v1 = (type metadata accessor for SleepScoreWidgetTimelineProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_269E50CDC();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = (v5 + v1[9]);

  v9 = v1[11];
  v10 = sub_269E50C8C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_269DED5A4()
{
  v1 = sub_269E50CDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_269DED688()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269DED6D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_269E3953C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for SleepScoreWidgetViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_269E3953C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_269DED8B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269E50B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_269E3953C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for SleepScoreWidgetViewModel(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_269E3953C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_269DEDAB0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_269E50B9C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[9]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_269DEDC80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_269E50B9C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
  }

  else
  {
    sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_269DEDE50()
{
  sub_269E3F648(255);
  sub_269E3F598(255);
  sub_269E3F8B8(&qword_28035F248, sub_269E3F598, MEMORY[0x277CE3D88]);
  sub_269DF0E28();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEDF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_269E50B9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEDF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_269E50B9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEE000()
{
  sub_269E40370(255);
  sub_269E401B8(255);
  sub_269DFE53C(255);
  sub_269E40474(&qword_28035F2B0, sub_269E401B8, MEMORY[0x277CE1198]);
  sub_269E40474(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEE148()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_269DEE1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEE248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEE300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEE36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEE404()
{
  sub_269E20324(255);
  sub_269E2E6C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEE464@<X0>(_BYTE *a1@<X8>)
{
  sub_269E42930();
  result = sub_269E512DC();
  *a1 = v3;
  return result;
}

uint64_t sub_269DEE500()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_269DEE548()
{
  v1 = sub_269E50CDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_269DEE62C()
{
  v1 = sub_269E50B9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_269DEE718()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269DEE758()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269DEE798()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_269DEE800()
{
  sub_269E4961C(255);
  sub_269E496D0(255);
  sub_269E4997C(&qword_281571F78, sub_269E496D0, MEMORY[0x277CE1198]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEE8D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_269E49C1C(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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
      sub_269E49C1C(0, &qword_2815725C8, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_269DEEA54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_269E49C1C(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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
      sub_269E49C1C(0, &qword_2815725C8, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_269DEEBD8()
{
  v1 = type metadata accessor for SleepWidgetChartView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_269E51B0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_269DFC008(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v8 = v1[10];
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_269E5160C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_269DFC008(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_269DEEDF0(uint64_t a1, uint64_t a2)
{
  sub_269E49C1C(0, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DEEE84()
{
  v1 = type metadata accessor for SleepWidgetChartView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[8];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_269E51B0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_269DFC008(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v8 = v1[10];
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_269E5160C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_269DFC008(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_269DEF13C@<X0>(uint64_t a1@<X8>)
{
  result = sub_269E5129C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_269DEF1A0()
{
  v1 = type metadata accessor for SleepWidgetChartView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_269E51B0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_269DFC008(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v8 = v1[10];
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_269E5160C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_269DFC008(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t get_enum_tag_for_layout_string_13SleepWidgetUI0A17DaySummaryResultsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269DEF4B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269DEF50C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_269DEF580(uint64_t a1)
{
  result = sub_269DEF5A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269DEF5A8()
{
  result = qword_2815731B8;
  if (!qword_2815731B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815731B8);
  }

  return result;
}

uint64_t sub_269DEF618@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_269DF0BA8(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  sub_269DF088C(0);
  v29 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[1];
  v35 = *v1;
  v36 = v12;
  v37 = *(v1 + 32);
  v13 = v1[1];
  v32 = *v1;
  v33 = v13;
  v34 = *(v1 + 32);
  v28 = sub_269DEFABC();
  v42 = v37;
  v41[0] = v35;
  v41[1] = v36;
  v38 = v35;
  v39 = v36;
  v40 = v37;
  if (v37 == 2)
  {
    goto LABEL_2;
  }

  if (!*&v41[0])
  {
    goto LABEL_2;
  }

  v19 = *(&v41[0] + 1);
  if (!*(&v41[0] + 1))
  {
    goto LABEL_2;
  }

  sub_269DF0AC8(v41, v31);
  [v19 sleepDuration];
  if (v20 <= COERCE_DOUBLE(1) || v20 <= 0.0)
  {
    [v19 inBedDuration];
    v25 = v24;
    sub_269DF0B24(&v35);
    if (v25 > COERCE_DOUBLE(1) && v25 > 0.0)
    {
      goto LABEL_16;
    }

LABEL_2:
    sub_269DF035C();
    goto LABEL_3;
  }

  sub_269DF0B24(&v35);
LABEL_16:
  sub_269DF145C(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_269E528D0;
  *(v26 + 32) = sub_269DEFFC4();
  *(v26 + 40) = v27;
LABEL_3:
  if (qword_281571DC0 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  v15 = v36;
  *(v14 + 16) = v35;
  *(v14 + 32) = v15;
  *(v14 + 48) = v37;
  sub_269DF0928(&v35, v31);
  type metadata accessor for SleepStageResultsView(0);
  sub_269DF09F4(&qword_2815736A8, type metadata accessor for SleepStageResultsView, &unk_269E55748);

  sub_269E51A4C();
  v16 = HKSPSleepURL();
  if (v16)
  {
    v17 = v16;
    sub_269E50AFC();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v21 = sub_269E50B0C();
  (*(*(v21 - 8) + 56))(v5, v18, 1, v21);
  sub_269DF0960(v5, v7);
  sub_269DF09F4(&qword_281571E50, sub_269DF088C, MEMORY[0x277D126F0]);
  v22 = v29;
  sub_269E5173C();
  sub_269DF0A3C(v7);
  return (*(v9 + 8))(v11, v22);
}

uint64_t sub_269DEFABC()
{
  v0 = sub_269DEFD84();
  v1 = *(v0 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_269DF0E08(0, v1, 0);
    sub_269E51E1C();
    v2 = v11;
    v3 = v0 + 40;
    do
    {

      sub_269E51E0C();
      sub_269E51DDC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_269DF0E28();
      v4 = sub_269E51FAC();
      v6 = v5;

      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_269DF0E08((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_269DEFC60@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  v14 = *(a1 + 32);
  *a2 = swift_getKeyPath();
  v5 = MEMORY[0x277CDF458];
  sub_269DF0BA8(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SleepStageResultsView(0);
  v7 = *(v6 + 20);
  *(a2 + v7) = swift_getKeyPath();
  sub_269DF0BA8(0, &qword_281572610, MEMORY[0x277CE3AF8], v5);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + *(v6 + 24);
  v9 = v13;
  *v8 = v12;
  *(v8 + 1) = v9;
  v8[32] = v14;
  return sub_269DF0928(a1, v11);
}

uint64_t sub_269DEFD84()
{
  sub_269DF0490();
  v12[0] = v0;
  v1 = 0;
  v12[1] = sub_269DF1C70();
  v12[2] = v2;
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = &v12[2 * v1];
  while (++v1 != 3)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v4 += 2;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_269DF0E08(0, *(v3 + 16) + 1, 1);
      }

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_269DF0E08((v8 > 1), v9 + 1, 1);
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      goto LABEL_2;
    }
  }

  swift_arrayDestroy();
  return v3;
}

uint64_t sub_269DEFEA4()
{
  sub_269DF06AC();
  v12[0] = v0;
  v1 = 0;
  v12[1] = sub_269DF1E8C();
  v12[2] = v2;
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = &v12[2 * v1];
  while (++v1 != 3)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v4 += 2;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_269DF0E08(0, *(v3 + 16) + 1, 1);
      }

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_269DF0E08((v8 > 1), v9 + 1, 1);
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      goto LABEL_2;
    }
  }

  swift_arrayDestroy();
  return v3;
}

uint64_t sub_269DEFFC4()
{
  if (*(v0 + 32) != 2)
  {
    v1 = *(v0 + 24);
    if (*v0 && v1 != 0)
    {
      sub_269DF0AC8(v0, v12);
      v3 = [v1 averageSleepDuration];
      if (v3)
      {
        v4 = v3;
        [v3 _value];
        v6 = v5;

        sub_269DF0B54(v0);
        if (v6 > COERCE_DOUBLE(1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_269DF0B54(v0);
      }

      sub_269DF0AC8(v0, v12);
      v7 = [v1 averageInBedDuration];
      if (v7)
      {
        v8 = v7;
        [v7 _value];
        v10 = v9;

        sub_269DF0B54(v0);
        if (v10 > COERCE_DOUBLE(1))
        {
          if (qword_281571CB0 == -1)
          {
            return sub_269E50A7C();
          }

          goto LABEL_17;
        }
      }

      else
      {
        sub_269DF0B54(v0);
      }
    }
  }

LABEL_15:
  if (qword_281571CB0 != -1)
  {
LABEL_17:
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t sub_269DF01B0()
{
  v1 = (v0 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
  v2 = v1[3];
  if (*v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = [v2 averageSleepDuration];
    if (!v4 || (v5 = v4, [v4 _value], v7 = v6, v5, v7 <= COERCE_DOUBLE(1)))
    {
      v8 = [v2 averageInBedDuration];
      if (v8)
      {
        v9 = v8;
        [v8 _value];
        v11 = v10;

        if (v11 > COERCE_DOUBLE(1))
        {
          if (qword_281571CB0 == -1)
          {
            return sub_269E50A7C();
          }

          goto LABEL_13;
        }
      }
    }
  }

  if (qword_281571CB0 != -1)
  {
LABEL_13:
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t sub_269DF035C()
{
  sub_269DF145C(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269E528E0;
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_269E50A7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_269E50A7C();
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_269DF0490()
{
  if (*(v0 + 32) == 2)
  {
    return 0;
  }

  v1 = *(v0 + 24);
  if (!*v0 || v1 == 0)
  {
    return 0;
  }

  sub_269DF0AC8(v0, v20);
  v3 = [v1 averageSleepDuration];
  if (v3)
  {
    v4 = v3;
    [v3 _value];
    v6 = v5;

    sub_269DF0B54(v0);
    if (v6 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v9 setUnitsStyle_];
      [v9 setAllowedUnits_];
      v10 = [v9 stringFromTimeInterval_];
      if (v10)
      {
LABEL_9:
        v11 = v10;
        v12 = sub_269E51CDC();

        return v12;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_269DF0B54(v0);
  }

  sub_269DF0AC8(v0, v20);
  v14 = [v1 averageInBedDuration];
  if (!v14)
  {
    sub_269DF0B54(v0);
    return 0;
  }

  v15 = v14;
  [v14 _value];
  v17 = v16;

  sub_269DF0B54(v0);
  if (v17 > COERCE_DOUBLE(1))
  {
    sub_269E51E2C();
    v19 = v18;
    v9 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v9 setUnitsStyle_];
    [v9 setAllowedUnits_];
    v10 = [v9 stringFromTimeInterval_];
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_14:
  }

  return 0;
}

id sub_269DF06AC()
{
  v1 = (v0 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
  v2 = v1[3];
  if (*v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = [v2 averageSleepDuration];
  if (v5)
  {
    v6 = v5;
    [v5 _value];
    v8 = v7;

    if (v8 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v11 setUnitsStyle_];
      [v11 setAllowedUnits_];
      v12 = [v11 stringFromTimeInterval_];
      if (v12)
      {
LABEL_11:
        v13 = v12;
        v14 = sub_269E51CDC();

        return v14;
      }

      goto LABEL_15;
    }
  }

  result = [v2 averageInBedDuration];
  if (result)
  {
    v15 = result;
    [result _value];
    v17 = v16;

    if (v17 <= COERCE_DOUBLE(1))
    {
      return 0;
    }

    sub_269E51E2C();
    v19 = v18;
    v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v11 setUnitsStyle_];
    [v11 setAllowedUnits_];
    v12 = [v11 stringFromTimeInterval_];
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_15:

    return 0;
  }

  return result;
}

void sub_269DF088C(uint64_t a1)
{
  if (!qword_281571E48)
  {
    type metadata accessor for SleepStageResultsView(255);
    sub_269DF09F4(&qword_2815736A8, type metadata accessor for SleepStageResultsView, &unk_269E55748);
    v1 = sub_269E51A5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571E48);
    }
  }
}

uint64_t sub_269DF0960(uint64_t a1, uint64_t a2)
{
  sub_269DF0BA8(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DF09F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269DF0A3C(uint64_t a1)
{
  sub_269DF0BA8(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269DF0BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269DF0C0C()
{
  v1 = *v0;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v1);
  return sub_269E5223C();
}

uint64_t sub_269DF0C80(uint64_t a1)
{
  v2 = *v1;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v2);
  return sub_269E5223C();
}

void *sub_269DF0CEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_269DF0D18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_269DF0DC8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_269E507AC();

  *a2 = v3;
  return result;
}

char *sub_269DF0E08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269DF0EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_269DF0E28()
{
  result = qword_281571DD8;
  if (!qword_281571DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571DD8);
  }

  return result;
}

char *sub_269DF0E7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269DF1004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269DF0E9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269DF113C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269DF0EBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269DF128C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269DF0EDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_269DF145C(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

char *sub_269DF1004(char *result, int64_t a2, char a3, char *a4)
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
    sub_269DF145C(0, &qword_28035E8B8, &type metadata for SleepWidgetChartBar, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
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

char *sub_269DF113C(char *result, int64_t a2, char a3, char *a4)
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
    sub_269DF0BA8(0, &qword_28035E8A8, type metadata accessor for HKCategoryValueSleepAnalysis, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_269DF128C(char *result, int64_t a2, char a3, char *a4)
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
    sub_269DF145C(0, &qword_28035E8B0, &type metadata for Segment, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BarView.Range(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BarView.Range(uint64_t result, int a2, int a3)
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

void sub_269DF145C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269DF164C(uint64_t a1)
{
  result = sub_269DF1674();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269DF1674()
{
  result = qword_2815731C0[0];
  if (!qword_2815731C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815731C0);
  }

  return result;
}

uint64_t sub_269DF16E4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  sub_269DF2140(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v30 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - v5;
  v7 = sub_269E51A8C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_269E50FBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269E51A9C();
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[1];
  v33 = *v1;
  v34 = v15;
  v35 = *(v1 + 32);
  sub_269E50FAC();
  v16 = sub_269E50F6C();
  v27[1] = v17;
  v27[2] = v16;
  (*(v9 + 8))(v11, v8);
  v18 = MEMORY[0x277D84F90];
  if (v35 != 2)
  {
    if (v33)
    {
      if (*(&v33 + 1))
      {
        [*(&v33 + 1) sleepDuration];
        if (v23 > COERCE_DOUBLE(1) && v23 > 0.0)
        {
          sub_269DF2140(0, &qword_28035E900, MEMORY[0x277CC8C40], MEMORY[0x277D84560]);
          sub_269E50A5C();
          *(swift_allocObject() + 16) = xmmword_269E528D0;
          sub_269DF1C70();
          sub_269E51D4C();
        }
      }
    }
  }

  if (qword_281571DC0 != -1)
  {
    swift_once();
  }

  v32 = v18;
  sub_269DF20F8(&qword_281571E30, MEMORY[0x277D12700], MEMORY[0x277D12708]);
  sub_269DF2140(0, &qword_281571D80, MEMORY[0x277D12700], MEMORY[0x277D83940]);
  sub_269DF2070();

  sub_269E51FEC();
  sub_269E51A6C();
  v19 = HKSPSleepURL();
  if (v19)
  {
    v20 = v30;
    v21 = v19;
    sub_269E50AFC();

    v22 = 0;
  }

  else
  {
    v22 = 1;
    v20 = v30;
  }

  v24 = sub_269E50B0C();
  (*(*(v24 - 8) + 56))(v20, v22, 1, v24);
  sub_269DF0960(v20, v6);
  sub_269DF20F8(&qword_281571E28, MEMORY[0x277D12710], MEMORY[0x277D126F8]);
  v25 = v29;
  sub_269E5173C();
  sub_269DF0A3C(v6);
  return (*(v28 + 8))(v14, v25);
}

uint64_t sub_269DF1C70()
{
  if (*(v0 + 32) == 2)
  {
    return 0;
  }

  v1 = *(v0 + 24);
  if (!*v0 || v1 == 0)
  {
    return 0;
  }

  sub_269DF0AC8(v0, v20);
  v3 = [v1 averageSleepDuration];
  if (v3)
  {
    v4 = v3;
    [v3 _value];
    v6 = v5;

    sub_269DF0B54(v0);
    if (v6 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v9 setUnitsStyle_];
      [v9 setAllowedUnits_];
      v10 = [v9 stringFromTimeInterval_];
      if (v10)
      {
LABEL_9:
        v11 = v10;
        v12 = sub_269E51CDC();

        return v12;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_269DF0B54(v0);
  }

  sub_269DF0AC8(v0, v20);
  v14 = [v1 averageInBedDuration];
  if (!v14)
  {
    sub_269DF0B54(v0);
    return 0;
  }

  v15 = v14;
  [v14 _value];
  v17 = v16;

  sub_269DF0B54(v0);
  if (v17 > COERCE_DOUBLE(1))
  {
    sub_269E51E2C();
    v19 = v18;
    v9 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v9 setUnitsStyle_];
    [v9 setAllowedUnits_];
    v10 = [v9 stringFromTimeInterval_];
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_14:
  }

  return 0;
}

id sub_269DF1E8C()
{
  v1 = (v0 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
  v2 = v1[3];
  if (*v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = [v2 averageSleepDuration];
  if (v5)
  {
    v6 = v5;
    [v5 _value];
    v8 = v7;

    if (v8 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v11 setUnitsStyle_];
      [v11 setAllowedUnits_];
      v12 = [v11 stringFromTimeInterval_];
      if (v12)
      {
LABEL_11:
        v13 = v12;
        v14 = sub_269E51CDC();

        return v14;
      }

      goto LABEL_15;
    }
  }

  result = [v2 averageInBedDuration];
  if (result)
  {
    v15 = result;
    [result _value];
    v17 = v16;

    if (v17 <= COERCE_DOUBLE(1))
    {
      return 0;
    }

    sub_269E51E2C();
    v19 = v18;
    v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v11 setUnitsStyle_];
    [v11 setAllowedUnits_];
    v12 = [v11 stringFromTimeInterval_];
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_15:

    return 0;
  }

  return result;
}

unint64_t sub_269DF2070()
{
  result = qword_281571D78;
  if (!qword_281571D78)
  {
    sub_269DF2140(255, &qword_281571D80, MEMORY[0x277D12700], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D78);
  }

  return result;
}

uint64_t sub_269DF20F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269DF2140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_269DF21A4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_269E5101C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v6 = sub_269E5100C();
  v7 = sub_269E51ECC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v18);
    _os_log_impl(&dword_269DE5000, v6, v7, "[%{public}s] Returning placeholder for sleep stage widget...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_269E50B7C();
  v10 = type metadata accessor for SleepStageWidgetEntry(0);
  v11 = v10[5];
  sub_269E50B7C();
  v12 = sub_269E50B9C();
  (*(*(v12 - 8) + 56))(a1 + v11, 0, 1, v12);
  v13 = v10[7];
  v14 = sub_269E51BEC();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = a1 + v10[6];
  result = 0.0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 3;
  return result;
}

void sub_269DF23FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v13 = sub_269E5100C();
  v14 = sub_269E51ECC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v33 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v33);
    _os_log_impl(&dword_269DE5000, v13, v14, "[%{public}s] Getting snapshot for sleep stage widget...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D654490](v18, -1, -1);
    v19 = v16;
    v7 = v30;
    MEMORY[0x26D654490](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v31;
  *(v20 + 24) = v32;

  sub_269E51BFC();
  v22 = *(v4 + 24);
  v33 = *(v4 + 16);
  v21 = v33;
  v34 = v22;
  sub_269DF6EF0(v4, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageWidgetTimelineProvider);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_269DF6DE4(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v25 = (v24 + ((v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_269DF72AC;
  v25[1] = v20;
  v26 = v21;
  v27 = v22;

  SleepWidgetViewModelProvider.currentSleepStageWidgetViewModel(showLiveContent:completion:)(1, sub_269DF73E4, v24);

  v28 = v33;
}

uint64_t sub_269DF2728(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_269E5101C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v8 = sub_269E5100C();
  v9 = sub_269E51ECC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v14);
    _os_log_impl(&dword_269DE5000, v8, v9, "[%{public}s] Returning snapshot for sleep stage widget", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D654490](v11, -1, -1);
    MEMORY[0x26D654490](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1);
}

void sub_269DF28E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v13 = sub_269E5100C();
  v14 = sub_269E51ECC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v33 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v33);
    _os_log_impl(&dword_269DE5000, v13, v14, "[%{public}s] Getting timeline for sleep stage widget...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D654490](v18, -1, -1);
    v19 = v16;
    v7 = v30;
    MEMORY[0x26D654490](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v31;
  *(v20 + 24) = v32;

  sub_269E51BFC();
  v22 = *(v4 + 24);
  v33 = *(v4 + 16);
  v21 = v33;
  v34 = v22;
  sub_269DF6EF0(v4, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageWidgetTimelineProvider);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_269DF6DE4(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v25 = (v24 + ((v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_269DF6F58;
  v25[1] = v20;
  v26 = v21;
  v27 = v22;

  SleepWidgetViewModelProvider.currentSleepStageWidgetViewModel(showLiveContent:completion:)(1, sub_269DF73E4, v24);

  v28 = v33;
}

uint64_t sub_269DF2C10(uint64_t a1, void (*a2)(void))
{
  v46 = a1;
  sub_269DF7128(0);
  v4 = v3;
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6864(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_269E50B9C();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269E51BCC();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v38 - v14;
  v15 = sub_269E5101C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v19 = sub_269E5100C();
  v20 = sub_269E51ECC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v38 = v9;
    v24 = v23;
    v49 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v49);
    _os_log_impl(&dword_269DE5000, v19, v20, "[%{public}s] Returning timeline for sleep stage widget", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v9 = v38;
    MEMORY[0x26D654490](v24, -1, -1);
    v25 = v22;
    a2 = v39;
    MEMORY[0x26D654490](v25, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  v26 = type metadata accessor for SleepStageWidgetEntry(0);
  v27 = v46;
  sub_269DF71BC(v46 + *(v26 + 20), v8, &qword_281573C60, MEMORY[0x277CC9578]);
  v28 = v41;
  v29 = (*(v41 + 48))(v8, 1, v9);
  v30 = v43;
  if (v29 == 1)
  {
    sub_269DF723C(v8, &qword_281573C60, MEMORY[0x277CC9578]);
    sub_269E51BBC();
  }

  else
  {
    v31 = v40;
    (*(v28 + 32))(v40, v8, v9);
    sub_269E51BAC();
    (*(v28 + 8))(v31, v9);
  }

  sub_269DF6864(0, &qword_28035E910, type metadata accessor for SleepStageWidgetEntry, MEMORY[0x277D84560]);
  v32 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_269E528D0;
  sub_269DF6EF0(v27, v33 + v32, type metadata accessor for SleepStageWidgetEntry);
  v35 = v44;
  v34 = v45;
  (*(v44 + 16))(v42, v30, v45);
  sub_269DF6B64(qword_281573068, type metadata accessor for SleepStageWidgetEntry, &unk_269E52F50);
  v36 = v47;
  sub_269E51C2C();
  a2(v36);
  (*(v48 + 8))(v36, v4);
  return (*(v35 + 8))(v30, v34);
}

uint64_t sub_269DF3244(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v63 = a5;
  v60 = a4;
  v61 = type metadata accessor for SleepStageWidgetEntry(0);
  MEMORY[0x28223BE20](v61);
  v59 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_269E50B9C();
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v67 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_269E5101C();
  v9 = *(v65 - 8);
  v10 = MEMORY[0x28223BE20](v65);
  v58 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - v12;
  v14 = *(a1 + 8);
  v68 = *a1;
  v69 = v14;
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v64 = *(a1 + 32);
  if (a2)
  {
    v17 = a2;
    sub_269E50FFC();
    v18 = a2;
    v19 = sub_269E5100C();
    v20 = sub_269E51EAC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71 = v56;
      *v21 = 136446466;
      *(v21 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v71);
      *(v21 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v54[1] = v54;
      v55 = v20;
      MEMORY[0x28223BE20](ErrorValue);
      (*(v24 + 16))(v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = sub_269E51D0C();
      v27 = sub_269E47920(v25, v26, &v71);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_269DE5000, v19, v55, "[%{public}s] Error getting sleep stage widget viewModel: %{public}s", v21, 0x16u);
      v28 = v56;
      swift_arrayDestroy();
      MEMORY[0x26D654490](v28, -1, -1);
      MEMORY[0x26D654490](v21, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v13, v65);
  }

  v29 = v58;
  sub_269E50FFC();
  v31 = v68;
  v30 = v69;
  sub_269DF6E4C(v68, v69, v16, v15);
  v32 = sub_269E5100C();
  v33 = sub_269E51ECC();
  sub_269DF6EA0(v31, v30, v16, v15);
  v34 = os_log_type_enabled(v32, v33);
  v57 = v15;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v70 = v36;
    *v35 = 136446466;
    *(v35 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v70);
    *(v35 + 12) = 2082;
    v71 = v68;
    v72 = v69;
    v73 = v16;
    v74 = v15;
    v75 = v64;
    sub_269DF6E4C(v68, v69, v16, v15);
    v37 = sub_269E51D0C();
    v39 = v16;
    v40 = sub_269E47920(v37, v38, &v70);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_269DE5000, v32, v33, "[%{public}s] Returning sleep stage widget viewModel: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v36, -1, -1);
    MEMORY[0x26D654490](v35, -1, -1);

    (*(v9 + 8))(v29, v65);
  }

  else
  {

    (*(v9 + 8))(v29, v65);
    v39 = v16;
  }

  v41 = v67;
  sub_269E50B8C();
  v42 = v62;
  v43 = v59;
  (*(v62 + 16))(v59, v41, v66);
  type metadata accessor for SleepStageWidgetTimelineProvider(0);
  v44 = v61;
  Calendar.midnight(after:)(v43 + *(v61 + 20));
  v45 = *(v44 + 28);
  v47 = v68;
  v46 = v69;
  v71 = v68;
  v72 = v69;
  v73 = v39;
  v48 = v39;
  v49 = v57;
  v74 = v57;
  v50 = v64;
  v75 = v64;
  sub_269DF6E4C(v68, v69, v48, v57);
  SleepStageWidgetViewModel.timelineEntryRelevance.getter(v43 + v45);
  v51 = sub_269E51BEC();
  (*(*(v51 - 8) + 56))(v43 + v45, 0, 1, v51);
  v52 = v43 + *(v44 + 24);
  *v52 = v47;
  *(v52 + 8) = v46;
  *(v52 + 16) = v48;
  *(v52 + 24) = v49;
  *(v52 + 32) = v50;
  v60(v43);
  sub_269DF6C10(v43);
  return (*(v42 + 8))(v67, v66);
}

uint64_t sub_269DF3968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_269DF3A1C;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_269DF3A1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269DF3B10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269DF73E0;

  return sub_269DF3BA8(a1);
}

uint64_t sub_269DF3BA8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for SleepStageWidgetEntry(0);
  v2[10] = swift_task_alloc();
  v3 = sub_269E5101C();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269DF3C98, 0, 0);
}

uint64_t sub_269DF3C98(uint64_t a1)
{
  v17 = v1;
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v16);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] returning widget relevance", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v1[8];
  v11 = swift_task_alloc();
  v1[14] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = 1;
  v12 = swift_task_alloc();
  v1[15] = v12;
  *v12 = v1;
  v12[1] = sub_269DF3E9C;
  v14 = v1[9];
  v13 = v1[10];

  return MEMORY[0x2822007B8](v13, 0, 0, 0xD000000000000023, 0x8000000269E567C0, sub_269DF6C04, v11, v14);
}

uint64_t sub_269DF3E9C()
{

  return MEMORY[0x2822009F8](sub_269DF3FB4, 0, 0);
}

uint64_t sub_269DF3FB4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = v1 + *(*(v0 + 72) + 24);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  sub_269DF4050((v0 + 16), v2);
  sub_269DF6C10(v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_269DF4050@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = sub_269E5096C();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269E50B9C();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = sub_269E5097C();
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6CB8();
  v33 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6864(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_269E509EC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v22 = a1[1];
  v36 = *a1;
  v37 = v22;
  v38 = *(a1 + 32);
  SleepStageWidgetViewModel.relevantDateInterval.getter(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_269DF723C(v14, &qword_281573CB8, MEMORY[0x277CC88A8]);
    return sub_269E51B4C();
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_269E509CC();
    sub_269E509AC();
    sub_269E509BC();
    v24 = v31;
    sub_269E5095C();
    sub_269E5094C();
    (*(v32 + 8))(v24, v34);
    v25 = *(v16 + 8);
    v25(v19, v15);
    sub_269E51AEC();
    sub_269DF6864(0, &qword_281571BD8, sub_269DF6CB8, MEMORY[0x277D84560]);
    v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_269E528D0;
    v28 = v27 + v26;
    v29 = v33;
    (*(v9 + 16))(v28, v11, v33);
    sub_269E51B4C();
    (*(v9 + 8))(v11, v29);
    return (v25)(v21, v15);
  }
}

uint64_t sub_269DF456C@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v33 = sub_269E5096C();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269E50B9C();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_269E5097C();
  MEMORY[0x28223BE20](v5 - 8);
  v29[1] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6CB8();
  v32 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6864(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - v12;
  v14 = sub_269E509EC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v29 - v20;
  v34(v19);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_269DF723C(v13, &qword_281573CB8, MEMORY[0x277CC88A8]);
    return sub_269E51B4C();
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    sub_269E509CC();
    sub_269E509AC();
    sub_269E509BC();
    v23 = v30;
    sub_269E5095C();
    sub_269E5094C();
    (*(v31 + 8))(v23, v33);
    v24 = *(v15 + 8);
    v24(v18, v14);
    sub_269E51AEC();
    sub_269DF6864(0, &qword_281571BD8, sub_269DF6CB8, MEMORY[0x277D84560]);
    v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_269E528D0;
    v27 = v26 + v25;
    v28 = v32;
    (*(v8 + 16))(v27, v10, v32);
    sub_269E51B4C();
    (*(v8 + 8))(v10, v28);
    return (v24)(v21, v14);
  }
}

void sub_269DF4A4C(uint64_t a1, uint64_t a2, int a3)
{
  v25 = a3;
  v5 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269DF6D0C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v10);
  v16 = *(a2 + 24);
  v26 = *(a2 + 16);
  v15 = v26;
  v27 = v16;
  sub_269DF6EF0(a2, v8, type metadata accessor for SleepStageWidgetTimelineProvider);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_269DF6DE4(v8, v19 + v17);
  v20 = (v19 + v18);
  *v20 = sub_269DF6D74;
  v20[1] = v14;
  v21 = v15;
  v22 = v16;

  SleepWidgetViewModelProvider.currentSleepStageWidgetViewModel(showLiveContent:completion:)(v25, sub_269DF6E48, v19);

  v23 = v26;
}

uint64_t sub_269DF4CB0(uint64_t a1)
{
  v2 = type metadata accessor for SleepStageWidgetEntry(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269DF6EF0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageWidgetEntry);
  sub_269DF6D0C(0);
  return sub_269E51DEC();
}

uint64_t sub_269DF4D58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E50B9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

SleepWidgetUI::SleepStageWidget __swiftcall SleepStageWidget.init()()
{
  v1 = v0;
  v2 = sub_269E51CDC();
  *v1 = v2;
  v1[1] = v3;
  result.kind._object = v3;
  result.kind._countAndFlagsBits = v2;
  return result;
}

uint64_t SleepStageWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_269E50BDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269DF58DC(0);
  v51 = v8;
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF5BD4(0);
  v55 = v11;
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF5C88(0);
  v61 = v14;
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF5D88(0);
  v65 = v16;
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v58 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF5EB8(0);
  v66 = v18;
  v64 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v60 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6030(0);
  v63 = v20;
  v59 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v57 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x277CC9830], v1);

  sub_269E50BEC();
  (*(v2 + 8))(v4, v1);
  v22 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *v7 = v22;
  v23 = objc_allocWithZone(MEMORY[0x277D62528]);
  v24 = v22;
  v25 = sub_269E51CCC();
  v26 = [v23 initWithIdentifier:v25 healthStore:v24 options:1];

  v7[1] = v26;
  v7[2] = v24;
  v7[3] = v26;
  sub_269DF5940(0);
  sub_269DF5AF4();
  sub_269DF6B64(&qword_2815731B0, type metadata accessor for SleepStageWidgetTimelineProvider, &unk_269E52EF8);
  v27 = v26;
  sub_269E51B8C();
  v28 = sub_269DF6B64(&qword_281571E00, sub_269DF58DC, MEMORY[0x277CE3D88]);
  v29 = v51;
  sub_269E5139C();
  (*(v52 + 1))(v10, v29);
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v52 = "SLEEP_STAGE_WIDGET_DISPLAY_NAME";
  v68 = sub_269E50A7C();
  v69 = v30;
  v72 = v29;
  v73 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_269DF0E28();
  v34 = v54;
  v33 = v55;
  sub_269E5138C();

  (*(v53 + 8))(v13, v33);
  v35 = MEMORY[0x277D84560];
  sub_269DF6864(0, &qword_281571BC8, MEMORY[0x277CE3BD8], MEMORY[0x277D84560]);
  sub_269E51B3C();
  *(swift_allocObject() + 16) = xmmword_269E528E0;
  sub_269E51B2C();
  sub_269E51B1C();
  sub_269DF6864(0, &qword_281571BD0, MEMORY[0x277CE3BA0], v35);
  v36 = sub_269E51B0C();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_269E528D0;
  (*(v37 + 104))(v39 + v38, *MEMORY[0x277CE3B68], v36);
  v68 = v33;
  v40 = MEMORY[0x277D837D0];
  v69 = MEMORY[0x277D837D0];
  v70 = OpaqueTypeConformance2;
  v71 = v32;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v58;
  v43 = v61;
  sub_269E5137C();

  (*(v56 + 8))(v34, v43);
  v68 = sub_269E50A7C();
  v69 = v44;
  v72 = v43;
  v73 = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v60;
  v47 = v65;
  sub_269E5135C();

  (*(v62 + 8))(v42, v47);
  _s13SleepWidgetUI0a5StageB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  v68 = v47;
  v69 = v40;
  v70 = v45;
  v71 = v32;
  swift_getOpaqueTypeConformance2();
  v48 = v57;
  v49 = v66;
  sub_269E5136C();

  (*(v64 + 8))(v46, v49);
  sub_269DF63DC(v67);
  return (*(v59 + 8))(v48, v63);
}

void sub_269DF58DC(uint64_t a1)
{
  if (!qword_281571DF8)
  {
    sub_269DF5940(255);
    sub_269DF5AF4();
    v1 = sub_269E51B9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571DF8);
    }
  }
}

void sub_269DF5940(uint64_t a1)
{
  if (!qword_281572438)
  {
    sub_269DF59A8(255);
    sub_269DF5A94(255);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572438);
    }
  }
}

void sub_269DF59A8(uint64_t a1)
{
  if (!qword_281571F90)
  {
    type metadata accessor for SleepStageWidgetView(255);
    sub_269E50B9C();
    sub_269DF6B64(qword_281573108, type metadata accessor for SleepStageWidgetView, &protocol conformance descriptor for SleepStageWidgetView);
    sub_269DF6B64(&qword_281573C68, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v1 = sub_269E5192C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571F90);
    }
  }
}

void sub_269DF5A94(uint64_t a1)
{
  if (!qword_2815720D8)
  {
    sub_269E5132C();
    v1 = sub_269E513DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2815720D8);
    }
  }
}

unint64_t sub_269DF5AF4()
{
  result = qword_281572440;
  if (!qword_281572440)
  {
    sub_269DF5940(255);
    sub_269DF6B64(&qword_281571F98, sub_269DF59A8, MEMORY[0x277CE1148]);
    sub_269DF6B64(&qword_2815720E0, sub_269DF5A94, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572440);
  }

  return result;
}

void sub_269DF5BD4(uint64_t a1)
{
  if (!qword_281572258)
  {
    sub_269DF58DC(255);
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC, MEMORY[0x277CE3D88]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572258);
    }
  }
}

void sub_269DF5C88(uint64_t a1)
{
  if (!qword_281572260)
  {
    sub_269DF5BD4(255);
    sub_269DF58DC(255);
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC, MEMORY[0x277CE3D88]);
    swift_getOpaqueTypeConformance2();
    sub_269DF0E28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572260);
    }
  }
}

void sub_269DF5D88(uint64_t a1)
{
  if (!qword_281572288)
  {
    sub_269DF5C88(255);
    sub_269DF5BD4(255);
    sub_269DF58DC(255);
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC, MEMORY[0x277CE3D88]);
    swift_getOpaqueTypeConformance2();
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572288);
    }
  }
}

void sub_269DF5EB8(uint64_t a1)
{
  if (!qword_2815722B8)
  {
    sub_269DF5D88(255);
    sub_269DF5C88(255);
    sub_269DF5BD4(255);
    sub_269DF58DC(255);
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC, MEMORY[0x277CE3D88]);
    swift_getOpaqueTypeConformance2();
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2815722B8);
    }
  }
}

void sub_269DF6030(uint64_t a1)
{
  if (!qword_2815722A0)
  {
    sub_269DF5EB8(255);
    sub_269DF5D88(255);
    sub_269DF5C88(255);
    sub_269DF5BD4(255);
    sub_269DF58DC(255);
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC, MEMORY[0x277CE3D88]);
    swift_getOpaqueTypeConformance2();
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2815722A0);
    }
  }
}

void sub_269DF61D8(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1 + *(type metadata accessor for SleepStageWidgetEntry(0) + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  *a2 = swift_getKeyPath();
  sub_269DF6864(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for SleepStageWidgetView(0);
  v11 = v10[5];
  *&a2[v11] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v12 = &a2[v10[6]];
  *v12 = swift_getKeyPath();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v12[32] = 0;
  v13 = &a2[v10[7]];
  *v13 = v5;
  *(v13 + 1) = v6;
  *(v13 + 2) = v7;
  *(v13 + 3) = v8;
  v13[32] = v9;
  sub_269DF59A8(0);
  v15 = *(v14 + 52);
  v16 = sub_269E50B9C();
  (*(*(v16 - 8) + 16))(&a2[v15], a1, v16);
  sub_269DF6E4C(v5, v6, v7, v8);
  v17 = sub_269E5107C();

  sub_269DF5940(0);
  *&a2[*(v18 + 36)] = v17;
}

id sub_269DF63DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269E5101C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v37 - v7;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v10 = result;
    v11 = [result hksp_supportsHealthData];

    v37[1] = a1;
    if (v11)
    {
      sub_269E50FFC();
      v12 = sub_269E5100C();
      v13 = sub_269E51ECC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v38 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_269E47920(0xD00000000000004ALL, 0x8000000269E567F0, &v38);
        _os_log_impl(&dword_269DE5000, v12, v13, "[%{public}s] sleep stage widget supported", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x26D654490](v15, -1, -1);
        MEMORY[0x26D654490](v14, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
    }

    else
    {
      sub_269E50FFC();
      v16 = sub_269E5100C();
      v17 = sub_269E51ECC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v38 = v19;
        *v18 = 136446210;
        *(v18 + 4) = sub_269E47920(0xD00000000000004ALL, 0x8000000269E567F0, &v38);
        _os_log_impl(&dword_269DE5000, v16, v17, "[%{public}s] sleep stage widget not supported", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x26D654490](v19, -1, -1);
        MEMORY[0x26D654490](v18, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
    }

    sub_269DF6030(0);
    sub_269DF5EB8(255);
    v21 = v20;
    sub_269DF5D88(255);
    v23 = v22;
    sub_269DF5C88(255);
    v25 = v24;
    sub_269DF5BD4(255);
    v27 = v26;
    sub_269DF58DC(255);
    v29 = v28;
    v30 = sub_269DF6B64(&qword_281571E00, sub_269DF58DC, MEMORY[0x277CE3D88]);
    v38 = v29;
    v39 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = sub_269DF0E28();
    v33 = MEMORY[0x277D837D0];
    v38 = v27;
    v39 = MEMORY[0x277D837D0];
    v40 = OpaqueTypeConformance2;
    v41 = v32;
    v34 = swift_getOpaqueTypeConformance2();
    v38 = v25;
    v39 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v38 = v23;
    v39 = v33;
    v40 = v35;
    v41 = v32;
    v36 = swift_getOpaqueTypeConformance2();
    v38 = v21;
    v39 = v36;
    swift_getOpaqueTypeConformance2();
    return sub_269E513AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269DF682C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E51CDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_269DF6864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269DF68E4(uint64_t a1, int a2)
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

uint64_t sub_269DF692C(uint64_t result, int a2, int a3)
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

void sub_269DF69A0(uint64_t a1)
{
  sub_269DF6A7C(319, &qword_281571D10, 0x277CCD4D8);
  if (v1 <= 0x3F)
  {
    sub_269DF6A7C(319, &qword_281571D08, 0x277D62528);
    if (v2 <= 0x3F)
    {
      sub_269DF6AC4(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        sub_269E50C8C();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_269DF6A7C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_269DF6AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_281572B90)
  {
    v4 = type metadata accessor for SleepWidgetRelevanceProvider(0, &type metadata for SleepStageWidgetViewModel, &protocol witness table for SleepStageWidgetViewModel, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_281572B90);
    }
  }
}

uint64_t sub_269DF6B64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269DF6BCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269DF6C10(uint64_t a1)
{
  v2 = type metadata accessor for SleepStageWidgetEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void sub_269DF6CB8()
{
  if (!qword_281571E20)
  {
    v0 = sub_269E51AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_281571E20);
    }
  }
}

void sub_269DF6D0C(uint64_t a1)
{
  if (!qword_281571D38)
  {
    type metadata accessor for SleepStageWidgetEntry(255);
    v1 = sub_269E51DFC();
    if (!v2)
    {
      atomic_store(v1, &qword_281571D38);
    }
  }
}

uint64_t sub_269DF6D74(uint64_t a1)
{
  sub_269DF6D0C(0);

  return sub_269DF4CB0(a1);
}

uint64_t sub_269DF6DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_269DF6E4C(id result, void *a2, uint64_t a3, void *a4)
{
  if (result)
  {
    v4 = a4;

    return a2;
  }

  return result;
}

void sub_269DF6EA0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_269DF6EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for SleepStageWidgetTimelineProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);

  v6 = v1[10];
  v7 = sub_269E50C8C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_269DF7078(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for SleepStageWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_269DF3244(a1, a2, v2 + v6, v8, v9);
}

void sub_269DF7128(uint64_t a1)
{
  if (!qword_28035E908)
  {
    type metadata accessor for SleepStageWidgetEntry(255);
    sub_269DF6B64(qword_281573068, type metadata accessor for SleepStageWidgetEntry, &unk_269E52F50);
    v1 = sub_269E51C3C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035E908);
    }
  }
}

uint64_t sub_269DF71BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269DF6864(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269DF723C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269DF6864(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_269DF72DC(uint64_t a1)
{
  sub_269E50B9C();
  if (v1 <= 0x3F)
  {
    sub_269DF6864(319, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_269DF6864(319, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for GreetingSleepWidgetCircularView(uint64_t a1)
{
  result = qword_281573A18;
  if (!qword_281573A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269DF745C(uint64_t a1)
{
  result = type metadata accessor for SleepWidgetViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269DF74D4(uint64_t a1)
{
  result = sub_269DF78C0(qword_281573A50, type metadata accessor for GreetingSleepWidgetCircularView, &unk_269E5306C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269DF7548@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v14[0] = a1;
  v3 = sub_269E51A8C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_269E50FBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FAC();
  sub_269E50F6C();
  (*(v5 + 8))(v7, v4);
  v8 = (v2 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
  v9 = v8[1];
  v10 = MEMORY[0x277D84F90];
  if (*v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [v9 sleepDuration];
    if (v12 > COERCE_DOUBLE(1) && v12 > 0.0)
    {
      sub_269DF7908(0, &qword_28035E900, MEMORY[0x277CC8C40], MEMORY[0x277D84560]);
      sub_269E50A5C();
      *(swift_allocObject() + 16) = xmmword_269E528D0;
      sub_269DF1E8C();
      sub_269E51D4C();
    }
  }

  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v14[1] = v10;
  sub_269DF78C0(&qword_281571E30, MEMORY[0x277D12700], MEMORY[0x277D12708]);
  sub_269DF7908(0, &qword_281571D80, MEMORY[0x277D12700], MEMORY[0x277D83940]);
  sub_269DF2070();

  sub_269E51FEC();
  return sub_269E51A6C();
}

uint64_t sub_269DF78C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269DF7908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269DF7980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269DF7A18(uint64_t a1)
{
  sub_269DF7980(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_269DF7980(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BarView.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for BarView.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_269DF7C34(uint64_t a1)
{
  sub_269DF7980(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_269DF7980(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_269DFB5D8(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_269DF7DA8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_28035E918 = 1.0 / v2;
  return result;
}

double sub_269DF7E14()
{
  if (qword_28035E870 != -1)
  {
    swift_once();
  }

  result = *&qword_28035E918;
  qword_28035E920 = qword_28035E918;
  return result;
}

uint64_t sub_269DF7E6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3BA0];
  v9 = MEMORY[0x277CDF458];
  sub_269DF7980(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_269DFB888(v2, &v16 - v11, &qword_281572608, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51B0C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_269E51EBC();
    v15 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_269DF8098@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3AF8];
  v8 = MEMORY[0x277CDF458];
  sub_269DF7980(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for BarView(0);
  sub_269DFB888(v1 + *(v12 + 20), v11, &qword_281572610, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51ADC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_269E51EBC();
    v15 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269DF82CC()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BarView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_269E51EBC();
    v7 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_269DF8424@<X0>(uint64_t a1@<X8>)
{
  v38[1] = a1;
  sub_269DFCC38(0, &qword_28035E928, &qword_28035E930, sub_269DFB9E0, &qword_28035E950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v38 - v3);
  sub_269DFBCA4(0);
  v38[0] = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v38 - v9;
  sub_269DFBD64(0, &qword_28035E960, type metadata accessor for PlaceholderBarView, sub_269DFBCA4, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v11);
  v13 = v38 - v12;
  v14 = type metadata accessor for PlaceholderBarView(0);
  MEMORY[0x28223BE20](v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BarView(0);
  v18 = (v1 + v17[7]);
  v19 = v18[1];
  v39 = *v18;
  v40 = v19;
  v41 = v18[2];
  v25 = sub_269E28B60(v17, v20, v21, v22, v23, v24);
  v26 = v1 + v17[8];
  if (v25)
  {
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    v30 = *(v1 + v17[10]);
    *&v16[*(v14 + 28)] = swift_getKeyPath();
    v31 = MEMORY[0x277CDF458];
    sub_269DF7980(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *&v16[*(v14 + 32)] = swift_getKeyPath();
    sub_269DF7980(0, &qword_281572610, MEMORY[0x277CE3AF8], v31);
    swift_storeEnumTagMultiPayload();
    *v16 = v27;
    *(v16 + 1) = v28;
    v16[16] = v29;
    *(v16 + 3) = 0x4018000000000000;
    v16[32] = v30;
    sub_269DFB7C0(v16, v13, type metadata accessor for PlaceholderBarView);
    swift_storeEnumTagMultiPayload();
    sub_269DFCAB0(&qword_281572768, type metadata accessor for PlaceholderBarView, &unk_269E53170);
    sub_269DFBE80();
    sub_269E513BC();
    return sub_269DFB828(v16, type metadata accessor for PlaceholderBarView);
  }

  else
  {
    v33 = v38[0];
    if (*(v26 + 16))
    {
      v34 = sub_269E519AC();
    }

    else
    {
      v34 = sub_269E519CC();
    }

    *v4 = v34;
    v4[1] = v35;
    sub_269DFBDE8(0);
    sub_269DF88A4(v1, v4 + *(v36 + 44));
    v37 = sub_269E5185C();
    sub_269DE7CCC(v4, v8);
    *&v8[*(v33 + 36)] = v37;
    sub_269DE7D5C(v8, v10);
    sub_269DE7DC0(v10, v13);
    swift_storeEnumTagMultiPayload();
    sub_269DFCAB0(&qword_281572768, type metadata accessor for PlaceholderBarView, &unk_269E53170);
    sub_269DFBE80();
    sub_269E513BC();
    return sub_269DE7E24(v10);
  }
}

uint64_t sub_269DF88A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for BarView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_269DFBA64(0);
  v109 = v7;
  v117 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v119 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = &v103 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v108 = &v103 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v103 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v106 = &v103 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v115 = &v103 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v103 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v127 = &v103 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v125 = &v103 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v126 = &v103 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v128 = &v103 - v29;
  MEMORY[0x28223BE20](v28);
  v129 = &v103 - v30;
  sub_269DF94D0(*(a1 + *(v4 + 40) + 16), &v134);
  v114 = sub_269E5186C();
  KeyPath = swift_getKeyPath();
  v31 = (a1 + *(v4 + 36));
  v32 = *v31;
  v124 = v31;
  v33 = a1;
  v34 = sub_269DF9734(v32);
  v35 = *(v34 + 16);
  *&v147[0] = 0;
  *(&v147[0] + 1) = v35;
  v105 = swift_getKeyPath();
  v122 = type metadata accessor for BarView;
  v130 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFB7C0(a1, v130, type metadata accessor for BarView);
  v36 = *(v5 + 80);
  v37 = (v36 + 24) & ~v36;
  v133 = v37;
  v111 = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = v34;
  v131 = type metadata accessor for BarView;
  sub_269DFC688(&v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, type metadata accessor for BarView);
  *(v38 + ((v6 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  sub_269DFC3D8(0, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
  v132 = v39;
  sub_269DFBB24();
  v41 = v40;
  v121 = sub_269DFBBA4();
  *&v142[0] = MEMORY[0x277CE11C8];
  *(&v142[0] + 1) = MEMORY[0x277CE11C0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112 = v41;
  sub_269E5197C();
  v42 = v31[1];
  v105 = _HKCategoryValueSleepAnalysisDefaultAsleepValue();
  v120 = v33;
  v43 = sub_269DF9734(v42);
  v44 = *(v43 + 16);
  *&v147[0] = 0;
  *(&v147[0] + 1) = v44;
  swift_getKeyPath();
  v45 = v33;
  v46 = v130;
  v47 = v122;
  sub_269DFB7C0(v45, v130, v122);
  v48 = (v6 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = v43;
  v50 = v46;
  v51 = v46;
  v52 = v131;
  sub_269DFC688(v50, v49 + v133, v131);
  *(v49 + v48) = v105;
  sub_269E5197C();
  v53 = v124;
  v54 = v120;
  v55 = sub_269DF9734(v124[3]);
  v56 = *(v55 + 16);
  *&v147[0] = 0;
  *(&v147[0] + 1) = v56;
  v105 = swift_getKeyPath();
  v57 = v54;
  v58 = v51;
  sub_269DFB7C0(v57, v51, v47);
  v59 = v104;
  v60 = swift_allocObject();
  *(v60 + 16) = v55;
  v61 = v133;
  sub_269DFC688(v58, v60 + v133, v52);
  *(v60 + v59) = 5;
  sub_269E5197C();
  v62 = v120;
  v63 = sub_269DF9734(v53[2]);
  v64 = *(v63 + 16);
  *&v147[0] = 0;
  *(&v147[0] + 1) = v64;
  swift_getKeyPath();
  v65 = v62;
  v66 = v130;
  v67 = v122;
  sub_269DFB7C0(v65, v130, v122);
  v68 = swift_allocObject();
  *(v68 + 16) = v63;
  sub_269DFC688(v66, v68 + v61, v131);
  *(v68 + v59) = 3;
  v69 = v59;
  sub_269E5197C();
  v70 = v120;
  v71 = sub_269DF9734(v124[4]);
  v72 = *(v71 + 16);
  *&v147[0] = 0;
  *(&v147[0] + 1) = v72;
  v105 = swift_getKeyPath();
  v73 = v130;
  sub_269DFB7C0(v70, v130, v67);
  v74 = swift_allocObject();
  *(v74 + 16) = v71;
  sub_269DFC688(v73, v74 + v133, v131);
  *(v74 + v69) = 4;
  sub_269E5197C();
  v75 = sub_269DF9734(v124[5]);
  v76 = *(v75 + 16);
  *&v147[0] = 0;
  *(&v147[0] + 1) = v76;
  swift_getKeyPath();
  v77 = v130;
  sub_269DFB7C0(v70, v130, v122);
  v78 = swift_allocObject();
  *(v78 + 16) = v75;
  sub_269DFC688(v77, v78 + v133, v131);
  *(v78 + v69) = 2;
  v79 = v113;
  sub_269E5197C();
  v80 = *(v117 + 16);
  v81 = v115;
  v82 = v109;
  v80(v115, v129, v109);
  v83 = v106;
  v80(v106, v128, v82);
  v84 = v107;
  v80(v107, v126, v82);
  v85 = v108;
  v80(v108, v125, v82);
  v80(v116, v127, v82);
  v80(v119, v79, v82);
  v143 = v139;
  v144 = v140;
  v142[0] = v134;
  v142[1] = v135;
  v142[2] = v136;
  v142[3] = v137;
  v142[4] = v138;
  *&v145 = v141;
  *(&v145 + 1) = KeyPath;
  v86 = v114;
  v146 = v114;
  v87 = v134;
  v88 = v135;
  v89 = v137;
  v90 = v138;
  v91 = v110;
  *(v110 + 32) = v136;
  *(v91 + 48) = v89;
  *v91 = v87;
  *(v91 + 16) = v88;
  v92 = v143;
  v93 = v144;
  v94 = v145;
  *(v91 + 128) = v86;
  *(v91 + 96) = v93;
  *(v91 + 112) = v94;
  *(v91 + 64) = v90;
  *(v91 + 80) = v92;
  v95 = v91;
  sub_269DFB9E0(0);
  v97 = v96;
  v80((v95 + v96[12]), v81, v82);
  v80((v95 + v97[16]), v83, v82);
  v80((v95 + v97[20]), v84, v82);
  v80((v95 + v97[24]), v85, v82);
  v98 = v116;
  v80((v95 + v97[28]), v116, v82);
  v99 = v95 + v97[32];
  v100 = v119;
  v80(v99, v119, v82);
  sub_269DFB7C0(v142, v147, sub_269DFB458);
  v101 = *(v117 + 8);
  v101(v113, v82);
  v101(v127, v82);
  v101(v125, v82);
  v101(v126, v82);
  v101(v128, v82);
  v101(v129, v82);
  v101(v100, v82);
  v101(v98, v82);
  v101(v85, v82);
  v101(v84, v82);
  v101(v83, v82);
  v101(v115, v82);
  v147[4] = v138;
  v147[5] = v139;
  v147[6] = v140;
  v147[0] = v134;
  v147[1] = v135;
  v147[2] = v136;
  v147[3] = v137;
  v148 = v141;
  v149 = KeyPath;
  v150 = v114;
  return sub_269DFB828(v147, sub_269DFB458);
}

double sub_269DF94D0@<D0>(char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    sub_269E519AC();
    sub_269E5106C();
  }

  else
  {
    sub_269E519AC();
    sub_269E5111C();
  }

  v5 = MEMORY[0x277CE14A8];
  v6 = MEMORY[0x277CDFC70];
  v7 = MEMORY[0x277CDFAB8];
  sub_269DFC3D8(0, &qword_281572408, MEMORY[0x277CE14A8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  v8 = MEMORY[0x277CDF688];
  sub_269DFC3D8(0, &qword_281572418, v5, MEMORY[0x277CDF688], v7);
  sub_269DFB94C(&qword_281572410, &qword_281572408, v6);
  sub_269DFB94C(&qword_281572420, &qword_281572418, v8);
  sub_269E513BC();
  *(a4 + 64) = v14;
  *(a4 + 80) = v15;
  *(a4 + 96) = v16;
  *(a4 + 112) = v17;
  *a4 = v10;
  *(a4 + 16) = v11;
  result = *&v12;
  *(a4 + 32) = v12;
  *(a4 + 48) = v13;
  return result;
}

uint64_t sub_269DF9734(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  result = type metadata accessor for BarView(0);
  v5 = (v1 + *(result + 36));
  v6 = *v5;
  v7 = *(v1 + *(result + 32) + 8) / (v5[1] - *v5);
  v8 = MEMORY[0x277D84F90];
  for (i = (a1 + 48); ; i += 3)
  {
    v15 = *(i - 2);
    v16 = *i;
    v17 = v7 * (v15 - v6);
    v18 = v7 * (*(i - 1) - v15);
    v19 = *(v8 + 16);
    if (!v19)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v25 = 1;
LABEL_21:
        result = sub_269E0DE88(0, v25, 1, v8);
        v8 = result;
      }

LABEL_4:
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_269E0DE88((v10 > 1), v11 + 1, 1, v8);
        v8 = result;
      }

      v13 = v17;
      goto LABEL_7;
    }

    v20 = v8 + 24 * v19;
    v13 = *(v20 + 8);
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (qword_28035E878 != -1)
    {
      result = swift_once();
    }

    v23 = v17 - (v13 + v21);
    if (v23 >= *&qword_28035E920)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v25 = *(v8 + 16) + 1;
        goto LABEL_21;
      }

      goto LABEL_4;
    }

    if (!*(v8 + 16))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v12 = *(v8 + 16);
      if (!v12)
      {
        goto LABEL_27;
      }
    }

    else
    {
      result = sub_269DFCAF8(v8);
      v8 = result;
      v12 = *(result + 16);
      if (!v12)
      {
        goto LABEL_27;
      }
    }

    v11 = v12 - 1;
    *(v8 + 16) = v12 - 1;
    v24 = *(v8 + 24);
    if (v12 > v24 >> 1)
    {
      result = sub_269E0DE88((v24 > 1), v12, 1, v8);
      v8 = result;
    }

    v16 |= v22;
    v18 = v18 + v21 + v23;
LABEL_7:
    *(v8 + 16) = v12;
    v14 = v8 + 24 * v11;
    *(v14 + 32) = v13;
    *(v14 + 40) = v18;
    *(v14 + 48) = v16 & 1;
    if (!--v2)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_269DF996C@<X0>(unint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v73 = a5;
  v68 = sub_269E51B0C();
  v67 = *(v68 - 8);
  v10 = MEMORY[0x28223BE20](v68);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v61 - v12;
  sub_269DFBD64(0, &qword_28035E988, sub_269DFC2FC, sub_269DFC42C, MEMORY[0x277CDFAB8]);
  v65 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  sub_269DFC4C0(0);
  v70 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFC564(0);
  v72 = v19;
  MEMORY[0x28223BE20](v19);
  v71 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_269E51ADC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  sub_269E51E1C();
  v69 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v25 < *(a2 + 2))
  {
    v26 = a2;
    a2 = v18;
    v27 = &v26[24 * v25];
    v6 = *(v27 + 4);
    v5 = *(v27 + 5);
    v28 = v27[48];
    sub_269DF8098(v24);
    v29 = sub_269DF82CC();
    v30 = v63;
    v61 = sub_269DFA074(v28, v24, v29 & 1, v63);
    v31 = *(v22 + 8);
    v31(v24, v21);
    sub_269DF8098(v24);
    v62 = v28;
    LODWORD(v63) = sub_269DFA360(v28, v24, v30);
    v31(v24, v21);
    if (qword_28035E870 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_6:
  v32 = 1.0;
  v33 = v67;
  v34 = v66;
  if (*&qword_28035E918 >= v5)
  {
    v32 = fmax(v5 / *&qword_28035E918, 0.5);
  }

  v35 = a2;
  v36 = type metadata accessor for BarView(0);
  v37 = *(a3 + *(v36 + 32) + 16);
  sub_269DFA4A8(*(a3 + *(v36 + 32) + 16), v75);
  KeyPath = swift_getKeyPath();
  v39 = v61;

  v40 = v64;
  sub_269DF7E6C(v64);
  v41 = sub_269DF82CC();
  v42 = v68;
  (*(v33 + 32))(v34, v40, v68);
  if ((*(v33 + 88))(v34, v42) == *MEMORY[0x277CE3B98])
  {
    v43 = 3.0;
    if (v41)
    {
      v43 = 4.0;
    }

    if (v37)
    {
      v44 = 2.0;
    }

    else
    {
      v44 = v43;
    }
  }

  else
  {
    (*(v33 + 8))(v34, v42);
    v44 = 2.0;
  }

  v45 = &v15[*(v65 + 36)];
  v46 = *(sub_269E5110C() + 20);
  v47 = *MEMORY[0x277CE0118];
  v48 = sub_269E5131C();
  (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
  *v45 = v44;
  v45[1] = v44;
  sub_269DFC42C(0);
  *(v45 + *(v49 + 36)) = 256;
  v50 = v75[5];
  *(v15 + 4) = v75[4];
  *(v15 + 5) = v50;
  *(v15 + 6) = v75[6];
  v51 = v76;
  v52 = v75[1];
  *v15 = v75[0];
  *(v15 + 1) = v52;
  v53 = v75[3];
  *(v15 + 2) = v75[2];
  *(v15 + 3) = v53;
  v54 = v63;
  *(v15 + 28) = v51;
  *(v15 + 29) = v54;
  *(v15 + 15) = KeyPath;
  *(v15 + 16) = v39;
  sub_269DFC5E0(v15, v35);
  *&v35[*(v70 + 36)] = v32;
  v55 = v71;
  sub_269DFC688(v35, v71, sub_269DFC4C0);
  v56 = (v55 + *(v72 + 36));
  v57 = 0.0;
  if (v37)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = v6;
  }

  if (v37)
  {
    v57 = v6;
  }

  *v56 = v58;
  v56[1] = v57;
  sub_269DFC6F0(&qword_28035E9C8, sub_269DFC564, sub_269DFC770);
  v59 = sub_269E5196C();

  v74 = v59;
  sub_269E5172C();
}

uint64_t sub_269DFA074(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_269E51ADC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51ACC();
  v11 = sub_269E51AAC();
  (*(v8 + 8))(v10, v7);
  result = 0;
  if (v11)
  {
    if (a3)
    {
      sub_269E5180C();
      v13 = sub_269E5188C();

      return v13;
    }

    if (a4 > 2)
    {
      switch(a4)
      {
        case 3:
          v14 = objc_opt_self();
          if (a1)
          {
            v15 = [v14 hk_sleepAsleepCoreColor];
            goto LABEL_30;
          }

          goto LABEL_29;
        case 4:
          v14 = objc_opt_self();
          if (a1)
          {
            v15 = [v14 hk_sleepAsleepDeepColor];
            goto LABEL_30;
          }

          goto LABEL_29;
        case 5:
          v14 = objc_opt_self();
          if (a1)
          {
            v15 = [v14 hk_sleepAsleepREMColor];
            goto LABEL_30;
          }

LABEL_29:
          v15 = [v14 systemGray3Color];
          goto LABEL_30;
      }
    }

    else
    {
      switch(a4)
      {
        case 0:
          v16 = objc_opt_self();
          if (a1)
          {
            v15 = [v16 hk_sleepInBedColor];
          }

          else
          {
            v15 = [v16 systemGray5Color];
          }

          goto LABEL_30;
        case 1:
          if ((a1 & 1) == 0)
          {
            goto LABEL_20;
          }

          return sub_269E5180C();
        case 2:
          v14 = objc_opt_self();
          if (a1)
          {
            v15 = [v14 hk_sleepAwakeColor];
LABEL_30:
            v17 = v15;
            return sub_269E5183C();
          }

          goto LABEL_29;
      }
    }

    if ((a1 & 1) == 0)
    {
LABEL_20:
      v15 = [objc_opt_self() systemGray3Color];
      goto LABEL_30;
    }

    return sub_269E5180C();
  }

  return result;
}

uint64_t sub_269DFA360(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_269E51ADC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51ACC();
  sub_269DFCAB0(&qword_28035EA08, MEMORY[0x277CE3AF8], MEMORY[0x277CE3B18]);
  v9 = sub_269E51C9C();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    return sub_269E513EC();
  }

  if (a1)
  {
    if (a3)
    {
      return sub_269E513EC();
    }

    return sub_269E5140C();
  }

  if (a3)
  {
    return sub_269E5140C();
  }

  return sub_269E513FC();
}

double sub_269DFA4A8@<D0>(char a2@<W2>, uint64_t a3@<X8>)
{
  if (a2)
  {
    sub_269E519AC();
    sub_269E5106C();
  }

  else
  {
    sub_269E519AC();
    sub_269E5111C();
  }

  v5 = MEMORY[0x277CE14A8];
  v6 = MEMORY[0x277CDFC70];
  v7 = MEMORY[0x277CDFAB8];
  sub_269DFC3D8(0, &qword_281572408, MEMORY[0x277CE14A8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  v8 = MEMORY[0x277CDF688];
  sub_269DFC3D8(0, &qword_281572418, v5, MEMORY[0x277CDF688], v7);
  sub_269DFB94C(&qword_281572410, &qword_281572408, v6);
  sub_269DFB94C(&qword_281572420, &qword_281572418, v8);
  sub_269E513BC();
  *(a3 + 64) = v14;
  *(a3 + 80) = v15;
  *(a3 + 96) = v16;
  *(a3 + 112) = v17;
  *a3 = v10;
  *(a3 + 16) = v11;
  result = *&v12;
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  return result;
}

uint64_t sub_269DFA72C(uint64_t a1)
{
  v2 = sub_269E51ADC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269E51B0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 != *MEMORY[0x277CE3B68])
  {
    if (v10 != *MEMORY[0x277CE3B98])
    {
      v13 = sub_269E5180C();
      (*(v7 + 8))(v9, v6);
      return v13;
    }

    goto LABEL_5;
  }

  sub_269E51ABC();
  v11 = sub_269E51AAC();
  (*(v3 + 8))(v5, v2);
  if (v11)
  {
LABEL_5:
    sub_269E5185C();
    v13 = sub_269E5188C();

    return v13;
  }

  v12 = [objc_opt_self() systemGray5Color];
  return sub_269E5183C();
}

uint64_t sub_269DFA964@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3BA0];
  v8 = MEMORY[0x277CDF458];
  sub_269DF7980(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PlaceholderBarView(0);
  sub_269DFB888(v1 + *(v12 + 28), v11, &qword_281572608, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_269E51EBC();
    v15 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269DFAB98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3AF8];
  v8 = MEMORY[0x277CDF458];
  sub_269DF7980(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PlaceholderBarView(0);
  sub_269DFB888(v1 + *(v12 + 32), v11, &qword_281572610, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51ADC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_269E51EBC();
    v15 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_269DFADCC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 16))
  {
    v4 = sub_269E519AC();
  }

  else
  {
    v4 = sub_269E519CC();
  }

  v6 = v4;
  v7 = v5;
  sub_269DFAF84(v2, &v16);
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v30 = v16;
  v31 = v17;
  v44[10] = v26;
  v44[11] = v27;
  v44[12] = v28;
  v44[6] = v22;
  v44[7] = v23;
  v44[8] = v24;
  v44[9] = v25;
  v44[2] = v18;
  v44[3] = v19;
  v44[4] = v20;
  v44[5] = v21;
  v43 = v29;
  v45 = v29;
  v44[0] = v16;
  v44[1] = v17;
  sub_269DFB888(&v30, &v15, &qword_281571EE8, sub_269DFB3E8, MEMORY[0x277CE14B8]);
  sub_269DFB6DC(v44);
  v56 = v40;
  v57 = v41;
  v58 = v42;
  v59 = v43;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v55 = v39;
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v51 = v35;
  v46 = v30;
  v47 = v31;
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = v57;
  *(a1 + 176) = v56;
  *(a1 + 192) = v8;
  *(a1 + 208) = v58;
  *(a1 + 224) = v59;
  v9 = v53;
  *(a1 + 112) = v52;
  *(a1 + 128) = v9;
  v10 = v55;
  *(a1 + 144) = v54;
  *(a1 + 160) = v10;
  v11 = v49;
  *(a1 + 48) = v48;
  *(a1 + 64) = v11;
  v12 = v51;
  *(a1 + 80) = v50;
  *(a1 + 96) = v12;
  result = *&v46;
  v14 = v47;
  *(a1 + 16) = v46;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_269DFAF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269E51ADC();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269E51B0C();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  sub_269DF94D0(*(a1 + 16), &v89);
  v45 = sub_269E5186C();
  KeyPath = swift_getKeyPath();
  v12 = *(a1 + 24);
  sub_269E519BC();
  sub_269E5106C();
  v13 = v84;
  v40 = v83;
  v41 = v85;
  v14 = v86;
  v42 = v88;
  v43 = v87;
  if (*(a1 + 32) == 1)
  {
    sub_269DFA964(v9);
    sub_269DFAB98(v6);
    v15 = sub_269DFA72C(v6);
    (*(v38 + 8))(v6, v39);
    (*(v36 + 8))(v9, v37);
  }

  else
  {
    v15 = sub_269E5186C();
  }

  v16 = swift_getKeyPath();
  v80 = v13;
  v79 = v14;
  v17 = v10 * 0.5 - v12 * 0.5;
  if (v11)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10 * 0.5 - v12 * 0.5;
  }

  if (!v11)
  {
    v17 = 0.0;
  }

  v55[4] = v93;
  v55[5] = v94;
  v55[6] = v95;
  v55[0] = v89;
  v55[1] = v90;
  v55[2] = v91;
  v55[3] = v92;
  v20 = KeyPath;
  v19 = v45;
  *&v56 = v96;
  *(&v56 + 1) = KeyPath;
  v57 = v45;
  *&v54[0] = v45;
  v50 = v93;
  v51 = v94;
  v48 = v91;
  v49 = v92;
  v46 = v89;
  v47 = v90;
  v52 = v95;
  v53 = v56;
  v22 = v40;
  v21 = v41;
  *&v58 = v40;
  BYTE8(v58) = v13;
  HIDWORD(v58) = *&v82[3];
  *(&v58 + 9) = *v82;
  *&v59 = v41;
  BYTE8(v59) = v14;
  HIDWORD(v59) = *&v81[3];
  *(&v59 + 9) = *v81;
  v24 = v42;
  v23 = v43;
  *&v60 = v43;
  *(&v60 + 1) = v42;
  *&v61 = v16;
  *(&v61 + 1) = v15;
  *&v62 = v18;
  *(&v62 + 1) = v17;
  *(v54 + 8) = v58;
  *(&v54[4] + 8) = v62;
  *(&v54[3] + 8) = v61;
  *(&v54[2] + 8) = v60;
  *(&v54[1] + 8) = v59;
  v25 = v90;
  *a2 = v89;
  *(a2 + 16) = v25;
  v26 = v48;
  v27 = v49;
  v28 = v51;
  *(a2 + 64) = v50;
  *(a2 + 80) = v28;
  *(a2 + 32) = v26;
  *(a2 + 48) = v27;
  v29 = v52;
  v30 = v53;
  v31 = v54[1];
  *(a2 + 128) = v54[0];
  *(a2 + 144) = v31;
  *(a2 + 96) = v29;
  *(a2 + 112) = v30;
  v32 = v54[2];
  v33 = v54[3];
  v34 = v54[4];
  *(a2 + 208) = *&v54[5];
  *(a2 + 176) = v33;
  *(a2 + 192) = v34;
  *(a2 + 160) = v32;
  v63 = v22;
  v64 = v13;
  *v65 = *v82;
  *&v65[3] = *&v82[3];
  v66 = v21;
  v67 = v14;
  *v68 = *v81;
  *&v68[3] = *&v81[3];
  v69 = v23;
  v70 = v24;
  v71 = v16;
  v72 = v15;
  v73 = v18;
  v74 = v17;
  sub_269DFB7C0(v55, v75, sub_269DFB458);
  sub_269DFB7C0(&v58, v75, sub_269DFB628);
  sub_269DFB828(&v63, sub_269DFB628);
  v75[4] = v93;
  v75[5] = v94;
  v75[6] = v95;
  v75[0] = v89;
  v75[1] = v90;
  v75[2] = v91;
  v75[3] = v92;
  v76 = v96;
  v77 = v20;
  v78 = v19;
  return sub_269DFB828(v75, sub_269DFB458);
}

void sub_269DFB3E8(uint64_t a1)
{
  if (!qword_281572510)
  {
    sub_269DFB458(255);
    sub_269DFB628(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281572510);
    }
  }
}

void sub_269DFB4A0(uint64_t a1)
{
  if (!qword_281572160)
  {
    v1 = MEMORY[0x277CE14A8];
    v2 = MEMORY[0x277CDFAB8];
    sub_269DFC3D8(255, &qword_281572408, MEMORY[0x277CE14A8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_269DFC3D8(255, &qword_281572418, v1, MEMORY[0x277CDF688], v2);
    v3 = sub_269E513CC();
    if (!v4)
    {
      atomic_store(v3, &qword_281572160);
    }
  }
}

void sub_269DFB55C(uint64_t a1)
{
  if (!qword_281572098)
  {
    sub_269DFB5D8(255, &qword_281572020, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    v1 = sub_269E5147C();
    if (!v2)
    {
      atomic_store(v1, &qword_281572098);
    }
  }
}

void sub_269DFB5D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269DFB648(uint64_t a1)
{
  if (!qword_281572378)
  {
    sub_269DFC3D8(255, &qword_281572478, MEMORY[0x277CE1120], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269DFB55C(255);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572378);
    }
  }
}

uint64_t sub_269DFB6DC(uint64_t a1)
{
  sub_269DF7980(0, &qword_281571EE8, sub_269DFB3E8, MEMORY[0x277CE14B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DFB768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E511AC();
  *a1 = result;
  return result;
}

uint64_t sub_269DFB7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269DFB828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269DFB888(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_269DF7980(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_269DFB8F8()
{
  result = qword_281571F08;
  if (!qword_281571F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571F08);
  }

  return result;
}

uint64_t sub_269DFB94C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_269DFC3D8(255, a2, MEMORY[0x277CE14A8], a3, MEMORY[0x277CDFAB8]);
    sub_269DFB8F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269DFB9E0(uint64_t a1)
{
  if (!qword_28035E938)
  {
    sub_269DFB458(255);
    sub_269DFBA64(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28035E938);
    }
  }
}

void sub_269DFBA64(uint64_t a1)
{
  if (!qword_28035E940)
  {
    sub_269DFC3D8(255, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    sub_269DFBB24();
    sub_269DFBBA4();
    v1 = sub_269E5198C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035E940);
    }
  }
}

void sub_269DFBB24()
{
  if (!qword_28035E948)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035E948);
    }
  }
}

unint64_t sub_269DFBBA4()
{
  result = qword_281571D18;
  if (!qword_281571D18)
  {
    sub_269DFC3D8(255, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    sub_269DFBC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D18);
  }

  return result;
}

unint64_t sub_269DFBC50()
{
  result = qword_281571DC8;
  if (!qword_281571DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571DC8);
  }

  return result;
}

void sub_269DFBCA4(uint64_t a1)
{
  if (!qword_28035E958)
  {
    sub_269DFCC38(255, &qword_28035E928, &qword_28035E930, sub_269DFB9E0, &qword_28035E950);
    sub_269DFC3D8(255, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035E958);
    }
  }
}

void sub_269DFBD64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_269DFBDE8(uint64_t a1)
{
  if (!qword_28035E968)
  {
    sub_269DF7980(255, &qword_28035E930, sub_269DFB9E0, MEMORY[0x277CE14B8]);
    v1 = sub_269E5109C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035E968);
    }
  }
}

unint64_t sub_269DFBE80()
{
  result = qword_28035E970;
  if (!qword_28035E970)
  {
    sub_269DFBCA4(255);
    sub_269DFBF20();
    sub_269DFBFA4(&qword_28035E980, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E970);
  }

  return result;
}

unint64_t sub_269DFBF20()
{
  result = qword_28035E978;
  if (!qword_28035E978)
  {
    sub_269DFCC38(255, &qword_28035E928, &qword_28035E930, sub_269DFB9E0, &qword_28035E950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E978);
  }

  return result;
}

uint64_t sub_269DFBFA4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269DFC3D8(255, a2, a3, a4, MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269DFC008(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_269DFC018@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BarView(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_269DF996C(a1, v8, v2 + v6, v7, a2);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for BarView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  sub_269DF7980(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_269E51B0C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_269DF7980(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_269E51ADC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_269DFC008(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_269DFC344(uint64_t a1)
{
  if (!qword_28035E998)
  {
    sub_269DFB4A0(255);
    sub_269DFC3D8(255, &qword_28035E9A0, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035E998);
    }
  }
}

void sub_269DFC3D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269DFC42C(uint64_t a1)
{
  if (!qword_28035E9A8)
  {
    sub_269E5110C();
    sub_269DFCAB0(&qword_28035E9B0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v1 = sub_269E5104C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035E9A8);
    }
  }
}

void sub_269DFC4C0(uint64_t a1)
{
  if (!qword_28035E9B8)
  {
    sub_269DFBD64(255, &qword_28035E988, sub_269DFC2FC, sub_269DFC42C, MEMORY[0x277CDFAB8]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035E9B8);
    }
  }
}

void sub_269DFC584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E510FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269DFC5E0(uint64_t a1, uint64_t a2)
{
  sub_269DFBD64(0, &qword_28035E988, sub_269DFC2FC, sub_269DFC42C, MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DFC688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269DFC6F0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269DFC7AC()
{
  result = qword_28035E9D8;
  if (!qword_28035E9D8)
  {
    sub_269DFBD64(255, &qword_28035E988, sub_269DFC2FC, sub_269DFC42C, MEMORY[0x277CDFAB8]);
    sub_269DFC8A0();
    sub_269DFCAB0(&qword_28035EA00, sub_269DFC42C, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E9D8);
  }

  return result;
}

unint64_t sub_269DFC8A0()
{
  result = qword_28035E9E0;
  if (!qword_28035E9E0)
  {
    sub_269DFC2FC(255);
    sub_269DFC950();
    sub_269DFCAB0(&qword_2815720A0, sub_269DFB55C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E9E0);
  }

  return result;
}

unint64_t sub_269DFC950()
{
  result = qword_28035E9E8;
  if (!qword_28035E9E8)
  {
    sub_269DFC344(255);
    sub_269DFC9F0();
    sub_269DFBFA4(&qword_28035E9F8, &qword_28035E9A0, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E9E8);
  }

  return result;
}

unint64_t sub_269DFC9F0()
{
  result = qword_28035E9F0;
  if (!qword_28035E9F0)
  {
    sub_269DFB4A0(255);
    sub_269DFB94C(&qword_281572410, &qword_281572408, MEMORY[0x277CDFC70]);
    sub_269DFB94C(&qword_281572420, &qword_281572418, MEMORY[0x277CDF688]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E9F0);
  }

  return result;
}

uint64_t sub_269DFCAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for Segment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Segment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_269DFCBB4()
{
  result = qword_281571F38;
  if (!qword_281571F38)
  {
    sub_269DFCC38(255, &qword_281571F30, &qword_281571EE8, sub_269DFB3E8, &qword_281571EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571F38);
  }

  return result;
}

void sub_269DFCC38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_269DF7980(255, a3, a4, MEMORY[0x277CE14B8]);
    sub_269DFCCD8(a5, a3, a4);
    v9 = sub_269E5195C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_269DFCCD8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_269DF7980(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269DFCD3C()
{
  result = qword_28035EA10;
  if (!qword_28035EA10)
  {
    sub_269DFBD64(255, &qword_28035EA18, type metadata accessor for PlaceholderBarView, sub_269DFBCA4, MEMORY[0x277CE0338]);
    sub_269DFCAB0(&qword_281572768, type metadata accessor for PlaceholderBarView, &unk_269E53170);
    sub_269DFBE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EA10);
  }

  return result;
}

uint64_t type metadata accessor for BedtimeSleepWidgetView(uint64_t a1)
{
  result = qword_281573AE0;
  if (!qword_281573AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269DFCEB4(uint64_t a1)
{
  type metadata accessor for SleepWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_269DFEAC8(319, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_269DFEAC8(319, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_269DFCFCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDFA28];
  sub_269DFEAC8(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for BedtimeSleepWidgetView(0);
  sub_269DFEB2C(v1 + *(v11 + 20), v10, &qword_281572600, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_269E510EC();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_269E51EBC();
    v14 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269DFD1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v66 = type metadata accessor for SleepWidgetViewModel(0);
  MEMORY[0x28223BE20](v66);
  v70 = &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  MEMORY[0x28223BE20](v69);
  v5 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269DFE6F4(0);
  v72 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v75 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v67 = &v62[-v10];
  MEMORY[0x28223BE20](v9);
  v74 = &v62[-v11];
  v12 = sub_269E510EC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v62[-v17];
  v19 = type metadata accessor for BedTitleView(0);
  v20 = MEMORY[0x28223BE20](v19);
  v73 = &v62[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v62[-v23];
  MEMORY[0x28223BE20](v22);
  v68 = &v62[-v25];
  sub_269E51E1C();
  v71 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = SleepWidgetViewModel.title.getter();
  v64 = v27;
  v65 = v26;
  v63 = (*(a1 + 8) & 1) == 0 && *a1 == 5;
  sub_269DFCFCC(v18);
  (*(v13 + 104))(v16, *MEMORY[0x277CDFA00], v12);
  sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v28 = sub_269E51C8C();
  v29 = *(v13 + 8);
  v29(v16, v12);
  v29(v18, v12);
  if (sub_269DFD928())
  {
    v30 = 0.6;
  }

  else
  {
    v30 = 1.0;
  }

  *v24 = swift_getKeyPath();
  v31 = MEMORY[0x277CDF458];
  sub_269DFEAC8(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v32 = (v24 + v19[5]);
  v33 = v64;
  *v32 = v65;
  v32[1] = v33;
  *(v24 + v19[6]) = v63;
  *(v24 + v19[7]) = v28 & 1;
  *(v24 + v19[8]) = v30;
  v34 = v68;
  sub_269DFE96C(v24, v68, type metadata accessor for BedTitleView);
  if (sub_269DFDB80())
  {
    v35 = 0;
  }

  else
  {
    v35 = 0x4010000000000000;
  }

  v36 = v70;
  sub_269DFE9D4(a1, v70, type metadata accessor for SleepWidgetViewModel);
  v37 = *(a1 + *(v66 + 28));
  v38 = sub_269DFDB80() & 1;
  KeyPath = swift_getKeyPath();
  v40 = v69;
  *&v5[*(v69 + 28)] = KeyPath;
  sub_269DFEAC8(0, &qword_281572600, MEMORY[0x277CDFA28], v31);
  swift_storeEnumTagMultiPayload();
  sub_269DFE96C(v36, v5, type metadata accessor for SleepWidgetViewModel);
  v5[*(v40 + 20)] = v37;
  *&v5[*(v40 + 24)] = v38;
  v41 = sub_269E5150C();
  sub_269E5102C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v67;
  sub_269DFE96C(v5, v67, type metadata accessor for ScheduleOccurrenceSectionView);
  v51 = &v50[*(v72 + 36)];
  *v51 = v41;
  *(v51 + 1) = v43;
  *(v51 + 2) = v45;
  *(v51 + 3) = v47;
  *(v51 + 4) = v49;
  v51[40] = 0;
  v52 = v74;
  sub_269DFE96C(v50, v74, sub_269DFE6F4);
  v53 = sub_269DFDDDC();
  v54 = v73;
  sub_269DFE9D4(v34, v73, type metadata accessor for BedTitleView);
  v55 = v75;
  sub_269DFE9D4(v52, v75, sub_269DFE6F4);
  v56 = v76;
  sub_269DFE9D4(v54, v76, type metadata accessor for BedTitleView);
  sub_269DFE664(0);
  v58 = v57;
  v59 = v56 + *(v57 + 48);
  *v59 = v35;
  *(v59 + 8) = 0;
  sub_269DFE9D4(v55, v56 + *(v57 + 64), sub_269DFE6F4);
  v60 = v56 + *(v58 + 80);
  *v60 = 0;
  *(v60 + 8) = 0;
  *(v60 + 9) = (v53 & 1) == 0;
  sub_269DFE90C(v52, sub_269DFE6F4);
  sub_269DFE90C(v34, type metadata accessor for BedTitleView);
  sub_269DFE90C(v55, sub_269DFE6F4);
  sub_269DFE90C(v54, type metadata accessor for BedTitleView);
}

uint64_t sub_269DFD928()
{
  v0 = sub_269E510EC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_269DFEAC8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if ((sub_269DFE030() & 1) != 0 || (sub_269E3CD30(v9), v10 = sub_269E50B9C(), v11 = (*(*(v10 - 8) + 48))(v9, 1, v10), sub_269DFEA3C(v9), v11 == 1))
  {
    v12 = 0;
  }

  else
  {
    sub_269DFCFCC(v6);
    (*(v1 + 104))(v4, *MEMORY[0x277CDF998], v0);
    sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v12 = sub_269E51C8C();
    v13 = *(v1 + 8);
    v13(v4, v0);
    v13(v6, v0);
  }

  return v12 & 1;
}

uint64_t sub_269DFDB80()
{
  v0 = sub_269E510EC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_269DFEAC8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_269E3CD30(&v15 - v8);
  v10 = sub_269E50B9C();
  v11 = 1;
  v12 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_269DFEA3C(v9);
  if (v12 != 1)
  {
    if (sub_269DFE030())
    {
      v11 = 0;
    }

    else
    {
      sub_269DFCFCC(v6);
      (*(v1 + 104))(v4, *MEMORY[0x277CDF988], v0);
      sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
      v11 = sub_269E51C8C();
      v13 = *(v1 + 8);
      v13(v4, v0);
      v13(v6, v0);
    }
  }

  return v11 & 1;
}

uint64_t sub_269DFDDDC()
{
  v0 = sub_269E510EC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_269DFEAC8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_269E3CD30(&v15 - v8);
  v10 = sub_269E50B9C();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_269DFEA3C(v9);
  if (v11 == 1)
  {
    sub_269DFCFCC(v6);
    (*(v1 + 104))(v4, *MEMORY[0x277CDF988], v0);
    sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v12 = sub_269E51C8C();
    v13 = *(v1 + 8);
    v13(v4, v0);
    v13(v6, v0);
  }

  else
  {
    v12 = sub_269DFDB80();
  }

  return v12 & 1;
}

uint64_t sub_269DFE030()
{
  v17 = sub_269E512CC();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CC9788];
  sub_269DFEAC8(0, qword_281572618, MEMORY[0x277CC9788], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = sub_269E50BCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BedtimeSleepWidgetView(0);
  sub_269DFEB2C(v0 + *(v12 + 24), v7, qword_281572618, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v17);
  }

  v14 = sub_269E50BBC();
  (*(v9 + 8))(v11, v8);
  return v14 & 1;
}

uint64_t sub_269DFE2E0()
{
  sub_269DFE53C(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFE5D0(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_269E5134C();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_269DFE82C(0);
  sub_269DFD1F8(v0, &v6[*(v7 + 44)]);
  v8 = *MEMORY[0x277CDF998];
  v9 = sub_269E510EC();
  (*(*(v9 - 8) + 104))(v3, v8, v9);
  sub_269DFE8C4(&qword_281572560, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269DFE8C4(&qword_28035EA58, sub_269DFE5D0, MEMORY[0x277CE1198]);
    sub_269DFE8C4(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    sub_269E5179C();
    sub_269DFE90C(v3, sub_269DFE53C);
    return sub_269DFE90C(v6, sub_269DFE5D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269DFE53C(uint64_t a1)
{
  if (!qword_281571BF0)
  {
    sub_269E510EC();
    sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v1 = sub_269E5217C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571BF0);
    }
  }
}

void sub_269DFE5D0(uint64_t a1)
{
  if (!qword_28035EA20)
  {
    sub_269DFEAC8(255, &qword_28035EA28, sub_269DFE664, MEMORY[0x277CE14B8]);
    sub_269DFE7A4();
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EA20);
    }
  }
}

void sub_269DFE664(uint64_t a1)
{
  if (!qword_28035EA30)
  {
    type metadata accessor for BedTitleView(255);
    sub_269DFE6F4(255);
    sub_269DFE754();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28035EA30);
    }
  }
}

void sub_269DFE6F4(uint64_t a1)
{
  if (!qword_28035EA38)
  {
    type metadata accessor for ScheduleOccurrenceSectionView(255);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EA38);
    }
  }
}

void sub_269DFE754()
{
  if (!qword_28035EA40)
  {
    v0 = sub_269E51F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EA40);
    }
  }
}

unint64_t sub_269DFE7A4()
{
  result = qword_28035EA48;
  if (!qword_28035EA48)
  {
    sub_269DFEAC8(255, &qword_28035EA28, sub_269DFE664, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EA48);
  }

  return result;
}

void sub_269DFE82C(uint64_t a1)
{
  if (!qword_28035EA50)
  {
    sub_269DFEAC8(255, &qword_28035EA28, sub_269DFE664, MEMORY[0x277CE14B8]);
    v1 = sub_269E5109C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EA50);
    }
  }
}

uint64_t sub_269DFE8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269DFE90C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269DFE96C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269DFE9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269DFEA3C(uint64_t a1)
{
  sub_269DFEAC8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269DFEAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269DFEB2C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269DFEAC8(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_269DFEBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SleepStageBarView(uint64_t a1)
{
  result = qword_281573748;
  if (!qword_281573748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269DFEC84(uint64_t a1)
{
  sub_269DFEBC0(319, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_269DFEBC0(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_269DFEBC0(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_269E00DC8(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SleepStageBarViewModel(319);
          if (v5 <= 0x3F)
          {
            sub_269DFEE1C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_269DFEE1C()
{
  result = qword_281571D00;
  if (!qword_281571D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281571D00);
  }

  return result;
}

uint64_t sub_269DFEE84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFEBC0(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SleepStageBarView(0);
  sub_269E00F68(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269E51B0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269DFF098()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SleepStageBarView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_269E51EBC();
    v7 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_269DFF1F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v123 = a2;
  sub_269DFE53C(0);
  v104 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E00948(0);
  v105 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v108 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = v94 - v8;
  v112 = type metadata accessor for BarView(0);
  v9 = MEMORY[0x28223BE20](v112);
  v106 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v117 = (v94 - v11);
  v118 = sub_269E51B0C();
  v115 = *(v118 - 8);
  v12 = MEMORY[0x28223BE20](v118);
  v113 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v111 = v94 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v110 = v94 - v17;
  MEMORY[0x28223BE20](v16);
  v109 = v94 - v18;
  sub_269E00C4C(0);
  v20 = v19;
  v122 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v116 = (v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269DFEBC0(0, &qword_28035EAB8, sub_269E00C4C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v22 - 8);
  v121 = v94 - v23;
  sub_269E51E1C();
  v120 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E5108C();
  v25 = v24;
  v26 = *(type metadata accessor for SleepStageBarView(0) + 32);
  v119 = a1;
  v27 = a1 + v26;
  v28 = type metadata accessor for SleepStageBarViewModel(0);
  v29 = (v27 + *(v28 + 20));
  v30 = *v29;
  v31 = v29[1];
  v33 = v29[2];
  v32 = v29[3];
  v34 = v29[4];
  v35 = v29[5];
  *&v134 = *v29;
  *(&v134 + 1) = v31;
  *&v135 = v33;
  *(&v135 + 1) = v32;
  *&v136 = v34;
  *(&v136 + 1) = v35;
  v41 = sub_269E28C14(v28, v36, v37, v38, v39, v40);
  if (v42 & 1) != 0 || (v101 = v41, v102 = v34, *&v134 = v30, *(&v134 + 1) = v31, *&v135 = v33, *(&v135 + 1) = v32, *&v136 = v34, *(&v136 + 1) = v35, v103 = v35, v47 = sub_269E28CB8(v41, v42, v43, v44, v45, v46), (v48))
  {
    v49 = v121;
    (*(v122 + 56))(v121, 1, 1, v20);
LABEL_17:
    sub_269DE8A40(v49, v123);
  }

  v100 = v47;
  v50 = sub_269E5134C();
  v51 = v116;
  *v116 = v50;
  v51[1] = 0;
  *(v51 + 16) = 0;
  v94[1] = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269DFEE84(v109);
  v52 = sub_269DFF098();
  v53 = v115;
  v54 = v110;
  v55 = v118;
  v98 = *(v115 + 32);
  v99 = v115 + 32;
  v98();
  v96 = *(v53 + 88);
  v97 = v53 + 88;
  v56 = v96(v54, v55);
  LODWORD(v109) = *MEMORY[0x277CE3B98];
  v95 = v20;
  if (v56 == v109)
  {
    v57 = 0x4030000000000000;
    if (v52)
    {
      v57 = 0x4038000000000000;
    }
  }

  else
  {
    (*(v53 + 8))(v54, v55);
    v57 = 0x403E000000000000;
  }

  v110 = v57;
  KeyPath = swift_getKeyPath();
  v59 = v117;
  *v117 = KeyPath;
  v60 = MEMORY[0x277CDF458];
  sub_269DFEBC0(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v61 = v112;
  v62 = *(v112 + 20);
  *(v59 + v62) = swift_getKeyPath();
  sub_269DFEBC0(0, &qword_281572610, MEMORY[0x277CE3AF8], v60);
  swift_storeEnumTagMultiPayload();
  v63 = v59 + v61[6];
  *v63 = swift_getKeyPath();
  v63[8] = 0;
  v64 = (v59 + v61[7]);
  *v64 = v30;
  v64[1] = v31;
  v64[2] = v33;
  v64[3] = v32;
  v65 = v103;
  v64[4] = v102;
  v64[5] = v65;
  v66 = v59 + v61[8];
  *v66 = v110;
  *(v66 + 1) = v25;
  v66[16] = 0;
  v67 = (v59 + v61[9]);
  v68 = v100;
  *v67 = v101;
  v67[1] = v68;
  *(v59 + v61[10]) = 1;

  v69 = v111;
  v70 = v119;
  sub_269DFEE84(v111);
  v71 = v113;
  v72 = v118;
  (v98)(v113, v69, v118);
  v73 = v96(v71, v72);
  v74 = v109;
  if (v73 != v109)
  {
    (*(v115 + 8))(v71, v72);
  }

  sub_269E00E18(0);
  v76 = *(v75 + 44);
  v77 = sub_269E5130C();
  v127 = 1;
  sub_269DFFD38(v70, &v134);
  v130 = v136;
  v131 = v137;
  v128 = v134;
  v129 = v135;
  v133[1] = v135;
  v133[2] = v136;
  v133[3] = v137;
  v133[4] = v138;
  v132 = v138;
  v133[0] = v134;
  sub_269E00EE0(&v128, &v124, sub_269E00B6C);
  sub_269E00E80(v133, sub_269E00B6C);
  *&v126[7] = v128;
  *&v126[71] = v132;
  *&v126[55] = v131;
  *&v126[39] = v130;
  *&v126[23] = v129;
  *&v125[33] = *&v126[32];
  *&v125[49] = *&v126[48];
  *&v125[65] = *&v126[64];
  *&v125[1] = *v126;
  v124 = v77;
  v125[0] = v127;
  *&v125[80] = *(&v132 + 1);
  *&v125[17] = *&v126[16];
  v78 = *MEMORY[0x277CDFA00];
  v79 = sub_269E510EC();
  v80 = v114;
  (*(*(v79 - 8) + 104))(v114, v78, v79);
  sub_269E00C04(&qword_281572560, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_269E51C9C();
  if (result)
  {
    LODWORD(v119) = v73 != v74;
    v82 = v116;
    v83 = v116 + v76;
    sub_269E00AD8(0);
    sub_269E00C04(&qword_28035EA90, sub_269E00AD8, MEMORY[0x277CE1138]);
    sub_269E00C04(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    v84 = v107;
    sub_269E5179C();
    sub_269E00E80(v80, sub_269DFE53C);
    v138 = *&v125[48];
    v139 = *&v125[64];
    v140 = *&v125[80];
    v134 = v124;
    v135 = *v125;
    v136 = *&v125[16];
    v137 = *&v125[32];
    sub_269E00E80(&v134, sub_269E00AD8);
    v85 = swift_getKeyPath();
    v86 = v106;
    v87 = (v84 + *(v105 + 36));
    *v87 = v85;
    v87[1] = 0x3FE7AE147AE147AELL;
    v88 = v117;
    sub_269E00EE0(v117, v86, type metadata accessor for BarView);
    v89 = v108;
    sub_269DE8AF4(v84, v108);
    *v83 = 0;
    v83[8] = 0;
    sub_269E00D14(0);
    v91 = v90;
    sub_269E00EE0(v86, &v83[v90[12]], type metadata accessor for BarView);
    v92 = &v83[v91[16]];
    *v92 = 0;
    v92[8] = 0;
    v92[9] = v119;
    sub_269DE8AF4(v89, &v83[v91[20]]);
    v93 = &v83[v91[24]];
    *v93 = 0;
    v93[8] = 0;
    sub_269DE8B58(v84);
    sub_269E00E80(v88, type metadata accessor for BarView);
    sub_269DE8B58(v89);
    sub_269E00E80(v86, type metadata accessor for BarView);

    v49 = v121;
    sub_269DE8BB4(v82, v121);
    (*(v122 + 56))(v49, 0, 1, v95);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_269DFFD38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v123 = a2;
  v128 = sub_269E51ADC();
  v125 = *(v128 - 8);
  v3 = MEMORY[0x28223BE20](v128);
  v121 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v119 = v101 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = v101 - v7;
  v9 = sub_269E51B0C();
  v126 = *(v9 - 8);
  v127 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v124 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v120 = v101 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v101 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v101 - v17;
  v19 = sub_269E50B9C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v122 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = type metadata accessor for SleepStageBarView(0);
  v24 = *(a1 + v23[9]);
  v111 = a1 + v23[8];
  sub_269E509CC();
  v25 = sub_269E50B5C();
  v26 = *(v20 + 8);
  v117 = v19;
  v116 = v20 + 8;
  v110 = v26;
  v26(v22, v19);
  v113 = v24;
  v27 = [v24 stringFromDate_];

  v28 = sub_269E51CDC();
  v30 = v29;

  v132 = v28;
  v133 = v30;
  v109 = sub_269DF0E28();
  v31 = sub_269E516CC();
  v114 = v32;
  v34 = v33;
  v115 = v35;
  sub_269DFEE84(v18);
  v36 = v23[6];
  v118 = a1;
  v108 = a1 + v36;
  sub_269E2E90C(v8);
  v38 = v126;
  v37 = v127;
  v39 = *(v126 + 16);
  v107 = v126 + 16;
  v106 = v39;
  v39(v16, v18, v127);
  v105 = *(v38 + 88);
  v101[1] = v38 + 88;
  v40 = v105(v16, v37);
  v41 = v125 + 1;
  v103 = *MEMORY[0x277CE3B68];
  ++v125;
  v101[0] = v22;
  if (v40 == v103)
  {
    v42 = v119;
    sub_269E51ABC();
    v43 = sub_269E51AAC();
    v44 = *v125;
    v45 = v128;
    (*v125)(v42, v128);
    v46 = (v38 + 8);
    v112 = v44;
    if (v43)
    {
      sub_269E5185C();
    }

    else
    {
      sub_269E5180C();
    }

    v44(v8, v45);
    goto LABEL_10;
  }

  v46 = (v38 + 8);
  if (v40 == *MEMORY[0x277CE3B98])
  {
    sub_269E5185C();
    v112 = *v41;
    v112(v8, v128);
LABEL_10:
    v47 = v127;
    v104 = *v46;
    v104(v18, v127);
    goto LABEL_12;
  }

  sub_269E5180C();
  v112 = *v41;
  v112(v8, v128);
  v48 = *v46;
  v47 = v127;
  (*v46)(v18, v127);
  v104 = v48;
  v48(v16, v47);
LABEL_12:
  v49 = v34;
  v50 = v114;
  v51 = sub_269E5168C();
  v53 = v52;
  v55 = v54;

  sub_269E00F48(v31, v50, v49 & 1);

  sub_269E5155C();
  v115 = sub_269E516AC();
  v114 = v56;
  v102 = v57;
  v127 = v58;

  sub_269E00F48(v51, v53, v55 & 1);

  v59 = v101[0];
  sub_269E509AC();
  v60 = sub_269E50B5C();
  v110(v59, v117);
  v61 = [v113 stringFromDate_];

  v62 = sub_269E51CDC();
  v64 = v63;

  v132 = v62;
  v133 = v64;
  v117 = sub_269E516CC();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v120;
  sub_269DFEE84(v120);
  v72 = v121;
  sub_269E2E90C(v121);
  v73 = v124;
  v106(v124, v71, v47);
  v74 = v105(v73, v47);
  v75 = v47;
  if (v74 == v103)
  {
    v124 = v70;
    v76 = v119;
    sub_269E51ABC();
    v77 = sub_269E51AAC();
    v78 = v128;
    v79 = v112;
    v112(v76, v128);
    if (v77)
    {
      sub_269E5185C();
    }

    else
    {
      sub_269E5180C();
    }

    v79(v72, v78);
    v104(v71, v75);
  }

  else
  {
    v80 = v128;
    v81 = v112;
    if (v74 == *MEMORY[0x277CE3B98])
    {
      sub_269E5185C();
      v81(v72, v80);
      v104(v71, v47);
    }

    else
    {
      sub_269E5180C();
      v81(v72, v80);
      v82 = v104;
      v104(v71, v47);
      v82(v124, v47);
    }
  }

  v83 = v117;
  v84 = sub_269E5168C();
  v86 = v85;
  v88 = v87;

  sub_269E00F48(v83, v66, v68 & 1);

  sub_269E5155C();
  v89 = sub_269E516AC();
  v91 = v90;
  v93 = v92;
  v95 = v94;

  sub_269E00F48(v84, v86, v88 & 1);

  v96 = v102 & 1;
  LOBYTE(v132) = v102 & 1;
  v131 = v102 & 1;
  v130 = 0;
  v129 = v93 & 1;
  v97 = v123;
  v98 = v115;
  v99 = v114;
  *v123 = v115;
  v97[1] = v99;
  *(v97 + 16) = v96;
  v97[3] = v127;
  v97[4] = 0x3FE0000000000000;
  *(v97 + 40) = 0;
  v97[6] = v89;
  v97[7] = v91;
  *(v97 + 64) = v93 & 1;
  v97[9] = v95;
  sub_269E00F58(v98, v99, v96);

  sub_269E00F58(v89, v91, v93 & 1);

  sub_269E00F48(v89, v91, v93 & 1);

  sub_269E00F48(v98, v99, v132);
}

uint64_t sub_269E00764@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_269E00EE0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageBarView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_269E00864(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_269E008C8;
  a2[1] = v7;
  return result;
}

uint64_t sub_269E00864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepStageBarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E008C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepStageBarView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_269DFF1F0(v4, a1);
}

void sub_269E00948(uint64_t a1)
{
  if (!qword_28035EA60)
  {
    sub_269E009D4(255);
    sub_269E00DC8(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EA60);
    }
  }
}

void sub_269E009D4(uint64_t a1)
{
  if (!qword_28035EA68)
  {
    sub_269E00AD8(255);
    sub_269DFE53C(255);
    sub_269E00C04(&qword_28035EA90, sub_269E00AD8, MEMORY[0x277CE1138]);
    sub_269E00C04(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035EA68);
    }
  }
}

void sub_269E00AD8(uint64_t a1)
{
  if (!qword_28035EA70)
  {
    sub_269E00B6C(255);
    sub_269E00C04(&qword_28035EA88, sub_269E00B6C, MEMORY[0x277CE14C0]);
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EA70);
    }
  }
}

void sub_269E00BA0()
{
  if (!qword_28035EA80)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28035EA80);
    }
  }
}

uint64_t sub_269E00C04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E00C4C(uint64_t a1)
{
  if (!qword_28035EA98)
  {
    sub_269E00CE0(255);
    sub_269E00C04(&qword_28035EAB0, sub_269E00CE0, MEMORY[0x277CE14C0]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EA98);
    }
  }
}

void sub_269E00D14(uint64_t a1)
{
  if (!qword_28035EAA8)
  {
    v1 = MEMORY[0x277CE1180];
    type metadata accessor for BarView(255);
    sub_269E00DC8(255, &qword_28035EA40, v1, MEMORY[0x277D83D88]);
    sub_269E00948(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_28035EAA8);
    }
  }
}

void sub_269E00DC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269E00E18(uint64_t a1)
{
  if (!qword_28035EAC0)
  {
    sub_269E00CE0(255);
    v1 = sub_269E5109C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EAC0);
    }
  }
}

uint64_t sub_269E00E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E00EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E00F48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_269E00F58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_269E00F68(uint64_t a1, uint64_t a2)
{
  sub_269DFEBC0(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E00FFC(uint64_t a1)
{
  if (!qword_28035EAD0)
  {
    sub_269DFEBC0(255, &qword_28035EAB8, sub_269E00C4C, MEMORY[0x277D83D88]);
    sub_269E01090();
    v1 = sub_269E510BC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EAD0);
    }
  }
}

unint64_t sub_269E01090()
{
  result = qword_28035EAD8;
  if (!qword_28035EAD8)
  {
    sub_269DFEBC0(255, &qword_28035EAB8, sub_269E00C4C, MEMORY[0x277D83D88]);
    sub_269E00C04(&qword_28035EAE0, sub_269E00C4C, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EAD8);
  }

  return result;
}

id sub_269E0119C()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_281575970 = result;
  return result;
}

uint64_t type metadata accessor for SleepWidgetSmallView(uint64_t a1)
{
  result = qword_281572948;
  if (!qword_281572948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E01268(uint64_t a1)
{
  result = sub_269E01A60(&qword_281572958, type metadata accessor for SleepWidgetSmallView, &unk_269E534E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E012C0(uint64_t a1)
{
  result = sub_269E01A60(&qword_28035EAE8, type metadata accessor for SleepWidgetSmallView, &unk_269E534A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E01334@<X0>(uint64_t a1@<X8>)
{
  v20[2] = a1;
  v21 = sub_269E5146C();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E016F4(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  sub_269E0180C(0);
  v20[1] = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = sub_269E5134C();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E019F4(0, &qword_281572588, sub_269E018A0, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  v14 = &v12[*(v13 + 44)];
  *v14 = sub_269E512FC();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E019F4(0, &qword_281572598, sub_269E01934, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  v16 = &v14[*(v15 + 44)];
  sub_269E29B9C(v9);
  sub_269DE8D3C(v9, v7);
  sub_269DE8D3C(v7, v16);
  sub_269E0198C(0);
  v18 = v16 + *(v17 + 48);
  *v18 = 0;
  *(v18 + 8) = 0;
  sub_269E01AA8(v9, sub_269E016F4);
  sub_269E01AA8(v7, sub_269E016F4);

  sub_269E5145C();
  sub_269E01A60(&qword_281571F68, sub_269E0180C, MEMORY[0x277CE1198]);
  sub_269E517CC();
  (*(v1 + 8))(v3, v21);
  return sub_269E01AA8(v12, sub_269E0180C);
}

void sub_269E01734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E513CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E0178C()
{
  if (!qword_281572040)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572040);
    }
  }
}

void sub_269E0180C(uint64_t a1)
{
  if (!qword_281571F60)
  {
    sub_269E018A0(255);
    sub_269E01A60(&qword_281571FB8, sub_269E018A0, MEMORY[0x277CE1138]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571F60);
    }
  }
}

void sub_269E018A0(uint64_t a1)
{
  if (!qword_281571FB0)
  {
    sub_269E01934(255);
    sub_269E01A60(&qword_281571E68, sub_269E01934, MEMORY[0x277CE14C0]);
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571FB0);
    }
  }
}

void sub_269E01934(uint64_t a1)
{
  if (!qword_281571E60)
  {
    sub_269E0198C(255);
    v1 = sub_269E519DC();
    if (!v2)
    {
      atomic_store(v1, &qword_281571E60);
    }
  }
}

void sub_269E0198C(uint64_t a1)
{
  if (!qword_281572108)
  {
    sub_269E016F4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281572108);
    }
  }
}

void sub_269E019F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_269E5109C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_269E01A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269E01AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SleepWidgetRectangularView(uint64_t a1)
{
  result = qword_281572D20;
  if (!qword_281572D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E01B7C(uint64_t a1)
{
  result = sub_269E01C04(qword_281572D58, &unk_269E53594);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E01BC0(uint64_t a1)
{
  result = sub_269E01C04(&qword_28035EAF0, &unk_269E5355C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E01C04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SleepWidgetRectangularView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269E01C68()
{
  result = qword_281572118;
  if (!qword_281572118)
  {
    sub_269E01734(255, &qword_281572110, sub_269E01714);
    sub_269E01CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572118);
  }

  return result;
}

unint64_t sub_269E01CFC()
{
  result = qword_281572158;
  if (!qword_281572158)
  {
    sub_269E01714(255);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572158);
  }

  return result;
}

uint64_t sub_269E01DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0355C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_269E00F68(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269E51B0C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_269E01FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0355C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SleepWidgetView(0);
  sub_269E00F68(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269E51B0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SleepWidgetView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_269E0355C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SleepWidgetView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 0;
  return sub_269E0376C(a1, a2 + v4[7], type metadata accessor for SleepWidgetViewModel);
}

uint64_t SleepWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E51B0C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  sub_269E034E0(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E02570(v1, v13);
  v14 = sub_269E5180C();
  KeyPath = swift_getKeyPath();
  v16 = &v13[*(v11 + 44)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = swift_getKeyPath();
  v18 = _s13SleepWidgetUI0aB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E01FB0(v7);
  v19 = sub_269E02FE0(v7, v18);

  (*(v4 + 8))(v7, v3);
  if (v19)
  {
    sub_269E01FB0(v9);
  }

  else
  {
    sub_269E01DA4(v9);
  }

  sub_269E036B4(0, &qword_281572380, sub_269E034E0, sub_269E03738, MEMORY[0x277CDFAB8]);
  v21 = (a1 + *(v20 + 36));
  sub_269E03738(0);
  (*(v4 + 32))(v21 + *(v22 + 28), v9, v3);
  *v21 = v17;
  return sub_269E0376C(v13, a1, sub_269E034E0);
}

uint64_t sub_269E02570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_269E03DE8(0, &qword_281572220, MEMORY[0x277CE0330]);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v41 - v4;
  sub_269E03DE8(0, &qword_281572178, MEMORY[0x277CE0338]);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v41 - v6;
  v49 = type metadata accessor for SleepWidgetSmallView(0);
  MEMORY[0x28223BE20](v49);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SleepWidgetRectangularView(0);
  MEMORY[0x28223BE20](v47);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E035E0(0, &qword_281572200, MEMORY[0x277CE0330]);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = &v41 - v11;
  sub_269E036B4(0, &qword_281572228, type metadata accessor for SleepWidgetCircularView, type metadata accessor for SleepWidgetRectangularView, MEMORY[0x277CE0330]);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v13;
  sub_269E0366C(0);
  v54 = v14;
  MEMORY[0x28223BE20](v14);
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SleepWidgetCircularView(0);
  MEMORY[0x28223BE20](v44);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_269E51B0C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  sub_269E035C0(0);
  MEMORY[0x28223BE20](v25 - 8);
  v55 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v53 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = _s13SleepWidgetUI0aB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E01FB0(v22);
  v28 = sub_269E02FE0(v22, v27);

  v29 = *(v19 + 8);
  v29(v22, v18);
  if (v28)
  {
    sub_269E01FB0(v24);
  }

  else
  {
    sub_269E01DA4(v24);
  }

  v30 = (*(v19 + 88))(v24, v18);
  if (v30 == *MEMORY[0x277CE3B68])
  {
    v31 = type metadata accessor for SleepWidgetView(0);
    sub_269E03FA8(a1 + *(v31 + 28), v8, type metadata accessor for SleepWidgetViewModel);
    sub_269E03FA8(v8, v50, type metadata accessor for SleepWidgetSmallView);
    swift_storeEnumTagMultiPayload();
    sub_269E03CD4(&qword_281572958, type metadata accessor for SleepWidgetSmallView, &unk_269E534E0);
    v32 = v51;
    sub_269E513BC();
    sub_269E03E50(v32, v56);
    swift_storeEnumTagMultiPayload();
    sub_269E03BF4();
    sub_269E03D1C();
    v33 = v55;
    sub_269E513BC();
    sub_269E03ED0(v32);
    sub_269E03F48(v8, type metadata accessor for SleepWidgetSmallView);
  }

  else if (v30 == *MEMORY[0x277CE3B90])
  {
    v34 = type metadata accessor for SleepWidgetView(0);
    sub_269E03FA8(a1 + *(v34 + 28), v17, type metadata accessor for SleepWidgetViewModel);
    sub_269E03FA8(v17, v45, type metadata accessor for SleepWidgetCircularView);
    swift_storeEnumTagMultiPayload();
    sub_269E03CD4(&qword_281572EA0, type metadata accessor for SleepWidgetCircularView, &unk_269E55200);
    sub_269E03CD4(qword_281572D58, type metadata accessor for SleepWidgetRectangularView, &unk_269E53594);
    v35 = v46;
    sub_269E513BC();
    sub_269E03FA8(v35, v56, sub_269E0366C);
    swift_storeEnumTagMultiPayload();
    sub_269E03BF4();
    sub_269E03D1C();
    v33 = v55;
    sub_269E513BC();
    sub_269E03F48(v35, sub_269E0366C);
    sub_269E03F48(v17, type metadata accessor for SleepWidgetCircularView);
  }

  else if (v30 == *MEMORY[0x277CE3B98])
  {
    v36 = type metadata accessor for SleepWidgetView(0);
    v37 = v42;
    sub_269E03FA8(a1 + *(v36 + 28), v42, type metadata accessor for SleepWidgetViewModel);
    sub_269E03FA8(v37, v45, type metadata accessor for SleepWidgetRectangularView);
    swift_storeEnumTagMultiPayload();
    sub_269E03CD4(&qword_281572EA0, type metadata accessor for SleepWidgetCircularView, &unk_269E55200);
    sub_269E03CD4(qword_281572D58, type metadata accessor for SleepWidgetRectangularView, &unk_269E53594);
    v38 = v46;
    sub_269E513BC();
    sub_269E03FA8(v38, v56, sub_269E0366C);
    swift_storeEnumTagMultiPayload();
    sub_269E03BF4();
    sub_269E03D1C();
    v33 = v55;
    sub_269E513BC();
    sub_269E03F48(v38, sub_269E0366C);
    sub_269E03F48(v37, type metadata accessor for SleepWidgetRectangularView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_269E03CD4(&qword_281572958, type metadata accessor for SleepWidgetSmallView, &unk_269E534E0);
    v39 = v51;
    sub_269E513BC();
    sub_269E03E50(v39, v56);
    swift_storeEnumTagMultiPayload();
    sub_269E03BF4();
    sub_269E03D1C();
    v33 = v55;
    sub_269E513BC();
    sub_269E03ED0(v39);
    v29(v24, v18);
  }

  sub_269E0376C(v33, v58, sub_269E035C0);
}

BOOL sub_269E02FE0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_269E51B0C();
    ++v2;
    sub_269E03CD4(&qword_281571E18, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BA8]);
  }

  while ((sub_269E51C9C() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_269E030EC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D652DF0]();
  *a1 = result;
  return result;
}

uint64_t _s13SleepWidgetUI0aB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0()
{
  v0 = sub_269E5101C();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0355C(0, &qword_281571BD0, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v3 = sub_269E51B0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269E528E0;
  v8 = *(v4 + 104);
  v8(v7 + v6, *MEMORY[0x277CE3B90], v3);
  v8(v7 + v6 + v5, *MEMORY[0x277CE3B98], v3);
  v22 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269E528D0;
  v8(v9 + v6, *MEMORY[0x277CE3B68], v3);
  sub_269E25A54(v9);
  sub_269E50FFC();
  v10 = v22;

  v11 = sub_269E5100C();
  v12 = sub_269E51E9C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_269E47920(0x6469577065656C53, 0xEF77656956746567, &v21);
    *(v13 + 12) = 2082;
    v15 = MEMORY[0x26D653A40](v10, v3);
    v17 = sub_269E47920(v15, v16, &v21);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_269DE5000, v11, v12, "[%{public}s] supportedFamilies: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v14, -1, -1);
    MEMORY[0x26D654490](v13, -1, -1);
  }

  (*(v19 + 8))(v2, v20);
  return v10;
}

uint64_t type metadata accessor for SleepWidgetView(uint64_t a1)
{
  result = qword_281572B70;
  if (!qword_281572B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E0355C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E035E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269E0366C(255);
    v7 = v6;
    sub_269E03DE8(255, &qword_281572178, MEMORY[0x277CE0338]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_269E036B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}