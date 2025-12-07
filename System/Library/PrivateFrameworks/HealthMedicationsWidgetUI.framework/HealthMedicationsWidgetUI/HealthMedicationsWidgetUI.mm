uint64_t sub_20CE989C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_20CE9B1C4(0, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
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
      sub_20CE9B1C4(0, &qword_281113010, MEMORY[0x277CC9578]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_20CE98B1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_20CE9B1C4(0, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
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
      sub_20CE9B1C4(0, &qword_281113010, MEMORY[0x277CC9578]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_20CE98C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CEB23F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_20CEB23A4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CE98D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20CEB23F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_20CEB23A4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CE98E88()
{
  sub_20CE9C38C(255);
  sub_20CE9C220(255);
  sub_20CE9C098(255);
  sub_20CE9C2F0(&qword_2811126A8, sub_20CE9C098, MEMORY[0x277CE3D88]);
  sub_20CE9C338();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE98FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CE9FA34(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for MedicationsWidgetEntry(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CE990C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CE9FA34(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for MedicationsWidgetEntry(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CE992DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CE99314()
{
  v1 = sub_20CEB2A54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_20CE99400()
{
  v1 = sub_20CEB2274();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20CEB2A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_20CE99578(uint64_t a1, uint64_t a2, int *a3)
{
  sub_20CEA7994(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_20CEA7994(0, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

  v14 = type metadata accessor for MedicationsWidgetViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 2)
  {
    v17 = ((v16 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v17 = -2;
  }

  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_20CE99748(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_20CEA7994(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_20CEA7994(0, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for MedicationsWidgetViewModel(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2 + 2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20CE998FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CEA7994(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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

void sub_20CE999E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CEA7994(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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

uint64_t sub_20CE99AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicationsWidgetViewModel(0);
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
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20CE99BA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicationsWidgetViewModel(0);
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

uint64_t sub_20CE99C60()
{
  sub_20CEA8FA0(255);
  sub_20CEA95AC(255);
  sub_20CEA94F4(&qword_281112718, sub_20CEA8FA0, MEMORY[0x277CE11A8]);
  sub_20CEA9660(255);
  sub_20CEA94F4(&qword_2811128A8, sub_20CEA9660, MEMORY[0x277CDD828]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE99D70@<X0>(uint64_t a1@<X8>)
{
  result = sub_20CEB2604();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20CE99DD4(uint64_t a1, uint64_t a2)
{
  sub_20CEA918C(0, &qword_281112798, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE99E7C@<X0>(uint64_t *a1@<X8>)
{
  sub_20CEB2044();
  result = sub_20CEB2034();
  *a1 = result;
  return result;
}

uint64_t sub_20CE99F14(uint64_t a1, uint64_t a2, int *a3)
{
  sub_20CEAD61C(0, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_20CEAD61C(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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

  sub_20CEAD61C(0, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[7] + 8);
    if (v16 > 1)
    {
      return (v16 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = type metadata accessor for MedicationsWidgetViewModel(0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

void sub_20CE9A15C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_20CEAD61C(0, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_20CEAD61C(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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

  sub_20CEAD61C(0, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7] + 8) = -a2;
  }

  else
  {
    v17 = type metadata accessor for MedicationsWidgetViewModel(0);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[8];

    v18(v19, a2, a2, v17);
  }
}

uint64_t sub_20CE9A3A8(uint64_t a1, uint64_t a2)
{
  sub_20CEAF808(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE9A434@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CEB25B4();
  *a1 = result;
  return result;
}

uint64_t sub_20CE9A48C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CEB2584();
  *a1 = result;
  return result;
}

uint64_t sub_20CE9A4E4()
{
  v1 = type metadata accessor for MedicationsWidgetRectangularView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_20CEAD61C(0, &qword_27C8184F8, MEMORY[0x277CDFB98], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20CEB2544();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_20CEAD61C(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20CEB2A54();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_20CEAD61C(0, &qword_2811128D8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_20CEB2A44();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  sub_20CEB0828(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v11 = v5 + v1[8];

  v12 = type metadata accessor for MedicationsWidgetViewModel(0);
  v13 = v11 + *(v12 + 24);
  v14 = type metadata accessor for MedmojiIconConfiguration(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = sub_20CEB23F4();
    (*(*(v15 - 8) + 8))(v13, v15);
    v16 = *(v14 + 20);
    v17 = sub_20CEB23A4();
    (*(*(v17 - 8) + 8))(v13 + v16, v17);
  }

  v18 = *(v12 + 32);
  v19 = sub_20CEB2274();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v11 + v18, 1, v19))
  {
    (*(v20 + 8))(v11 + v18, v19);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CE9A8D0()
{
  sub_20CEB0224(255);
  sub_20CEB031C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE9A93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CEB0B0C(0, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_20CEB0B0C(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for MedicationsWidgetViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20CE9AADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CEB0B0C(0, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_20CEB0B0C(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for MedicationsWidgetViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_20CE9AC88(uint64_t a1, uint64_t a2)
{
  sub_20CEB175C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE9ACF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CEB2274();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for MedicationsWidgetViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CE9ADE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20CEB2274();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for MedicationsWidgetViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CE9AF00@<X0>(uint64_t *a1@<X8>)
{
  if (qword_281112628 != -1)
  {
    swift_once();
  }

  v2 = sub_20CEB2104();
  v4 = v3;
  sub_20CE9B334(0, &qword_2811125F0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CEB33D0;
  *(inited + 32) = sub_20CEB2104();
  *(inited + 40) = v6;
  *(inited + 48) = sub_20CEB2104();
  *(inited + 56) = v7;
  v8 = sub_20CEA6B44(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  v9 = type metadata accessor for MedicationsWidgetViewModel(0);
  v10 = v9[6];
  v11 = type metadata accessor for MedmojiIconConfiguration(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v9[8];
  v13 = sub_20CEB2274();
  result = (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v8;
  *(a1 + v9[7]) = 3;
  return result;
}

uint64_t type metadata accessor for MedicationsWidgetViewModel(uint64_t a1)
{
  result = qword_281112B88;
  if (!qword_281112B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE9B1C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CEB2CE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CE9B22C(uint64_t a1)
{
  sub_20CE9B334(319, &qword_281112688, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20CE9B1C4(319, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
    if (v2 <= 0x3F)
    {
      sub_20CE9B1C4(319, &qword_281113010, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20CE9B334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for MedmojiIconConfiguration(uint64_t a1)
{
  result = qword_281112AE8;
  if (!qword_281112AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CE9B3FC(uint64_t a1)
{
  result = sub_20CEB23F4();
  if (v2 <= 0x3F)
  {
    result = sub_20CEB23A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20CE9B4C0()
{
  result = qword_27C8184E0;
  if (!qword_27C8184E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8184E0);
  }

  return result;
}

uint64_t HKMedicationUserDomainConcept.visualConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_20CE9B720(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 userVisualizationConfigJSONString];
  if (v7)
  {
    v8 = v7;
    sub_20CEB2B54();

    sub_20CEB23E4();
    v9 = sub_20CEB23F4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) != 1)
    {
      (*(v10 + 32))(a1, v6, v9);
      return (*(v10 + 56))(a1, 0, 1, v9);
    }

    sub_20CE9B778(v6);
  }

  v11 = sub_20CEB23F4();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

void sub_20CE9B720(uint64_t a1)
{
  if (!qword_281112920)
  {
    sub_20CEB23F4();
    v1 = sub_20CEB2CE4();
    if (!v2)
    {
      atomic_store(v1, &qword_281112920);
    }
  }
}

uint64_t sub_20CE9B778(uint64_t a1)
{
  sub_20CE9B720(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CE9B800@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  sub_20CE9C098(0);
  v2 = v1;
  OpaqueTypeConformance2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9C220(0);
  v33 = v5;
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9C38C(0);
  v34 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2B54();
  type metadata accessor for MedicationsWidgetTimelineGenerator(0);
  swift_allocObject();
  v40 = sub_20CEA41D4();
  sub_20CE9C16C(0);
  v10 = type metadata accessor for MedicationsWidgetEntryView(255);
  v11 = sub_20CE9C2F0(qword_281112C28, type metadata accessor for MedicationsWidgetEntryView, &unk_20CEB35DC);
  v36 = v10;
  v37 = v11;
  swift_getOpaqueTypeConformance2();
  sub_20CE9C49C();
  sub_20CEB2A84();
  if (qword_281112628 != -1)
  {
    swift_once();
  }

  v36 = sub_20CEB2104();
  v37 = v12;
  v13 = sub_20CE9C2F0(&qword_2811126A8, sub_20CE9C098, MEMORY[0x277CE3D88]);
  v14 = sub_20CE9C338();
  v15 = MEMORY[0x277D837D0];
  sub_20CEB2704();

  (*(OpaqueTypeConformance2 + 8))(v4, v2);
  v40 = sub_20CEB2104();
  v41 = v16;
  v36 = v2;
  v37 = v15;
  v38 = v13;
  v39 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v31;
  v18 = v33;
  sub_20CEB26E4();

  (*(v30 + 8))(v7, v18);
  sub_20CE9C578(0, &qword_2811125F8, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v19 = sub_20CEB2A54();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20CEB3440;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x277CE3B90], v19);
  v25(v24 + v21, *MEMORY[0x277CE3B80], v19);
  v25(v24 + 2 * v21, *MEMORY[0x277CE3B98], v19);
  v36 = v18;
  v37 = MEMORY[0x277D837D0];
  v38 = OpaqueTypeConformance2;
  v39 = v14;
  swift_getOpaqueTypeConformance2();
  v26 = v34;
  sub_20CEB26F4();

  return (*(v32 + 8))(v17, v26);
}

uint64_t sub_20CE9BE10(uint64_t a1)
{
  sub_20CE9C578(0, &qword_281113030, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for MedicationsWidgetEntryView(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE9C4F0(a1, v7 + *(v5 + 20));
  *v7 = swift_getKeyPath();
  sub_20CE9C578(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v8 = HKMedicationsRoomDeepLink();
  sub_20CEB2194();

  v9 = sub_20CEB21A4();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  sub_20CE9C2F0(qword_281112C28, type metadata accessor for MedicationsWidgetEntryView, &unk_20CEB35DC);
  sub_20CEB2864();
  sub_20CE9C5DC(v4);
  sub_20CE9C668(v7);
}

void sub_20CE9C098(uint64_t a1)
{
  if (!qword_2811126A0)
  {
    sub_20CE9C16C(255);
    type metadata accessor for MedicationsWidgetEntryView(255);
    sub_20CE9C2F0(qword_281112C28, type metadata accessor for MedicationsWidgetEntryView, &unk_20CEB35DC);
    swift_getOpaqueTypeConformance2();
    v1 = sub_20CEB2A94();
    if (!v2)
    {
      atomic_store(v1, &qword_2811126A0);
    }
  }
}

void sub_20CE9C16C(uint64_t a1)
{
  if (!qword_281112760)
  {
    type metadata accessor for MedicationsWidgetEntryView(255);
    sub_20CE9C2F0(qword_281112C28, type metadata accessor for MedicationsWidgetEntryView, &unk_20CEB35DC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112760);
    }
  }
}

void sub_20CE9C220(uint64_t a1)
{
  if (!qword_281112838)
  {
    sub_20CE9C098(255);
    sub_20CE9C2F0(&qword_2811126A8, sub_20CE9C098, MEMORY[0x277CE3D88]);
    sub_20CE9C338();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112838);
    }
  }
}

uint64_t sub_20CE9C2F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20CE9C338()
{
  result = qword_281112698;
  if (!qword_281112698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112698);
  }

  return result;
}

void sub_20CE9C38C(uint64_t a1)
{
  if (!qword_281112840)
  {
    sub_20CE9C220(255);
    sub_20CE9C098(255);
    sub_20CE9C2F0(&qword_2811126A8, sub_20CE9C098, MEMORY[0x277CE3D88]);
    sub_20CE9C338();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112840);
    }
  }
}

unint64_t sub_20CE9C49C()
{
  result = qword_281112E10[0];
  if (!qword_281112E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281112E10);
  }

  return result;
}

uint64_t sub_20CE9C4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsWidgetEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CE9C578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE9C5DC(uint64_t a1)
{
  sub_20CE9C578(0, &qword_281113030, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CE9C668(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsWidgetEntryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CE9C6C4()
{
  v0 = sub_20CEB22B4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v22 = &v21 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = sub_20CEB22D4();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB22A4();
  v26 = v13;
  sub_20CEB22C4();
  v14 = *MEMORY[0x277CC9768];
  v21 = *(v1 + 104);
  v21(v8, v14, v0);
  sub_20CE9CD88();
  sub_20CEB2BB4();
  sub_20CEB2BB4();
  if (v29 == v27 && v30 == v28)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_20CEB2E24();
  }

  v16 = *(v1 + 8);
  v16(v8, v0);
  v16(v10, v0);

  if (v15)
  {
    (*(v24 + 8))(v26, v25);
    v17 = 1;
  }

  else
  {
    v18 = v22;
    sub_20CEB22C4();
    v19 = v23;
    v21(v23, *MEMORY[0x277CC9770], v0);
    sub_20CEB2BB4();
    sub_20CEB2BB4();
    if (v29 == v27 && v30 == v28)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_20CEB2E24();
    }

    v16(v19, v0);
    v16(v18, v0);
    (*(v24 + 8))(v26, v25);
  }

  return v17 & 1;
}

uint64_t sub_20CE9CA48(uint64_t a1)
{
  v2 = sub_20CEB22B4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v24 = &v22 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v25 = a1;
  sub_20CEB22C4();
  v13 = *MEMORY[0x277CC9758];
  v22 = *(v3 + 104);
  v22(v10, v13, v2);
  sub_20CE9CD88();
  sub_20CEB2BB4();
  sub_20CEB2BB4();
  if (v28 == v26 && v29 == v27)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_20CEB2E24();
  }

  v15 = *(v3 + 8);
  v15(v10, v2);
  v15(v12, v2);

  if ((v14 & 1) == 0)
  {
    v16 = v24;
    sub_20CEB22C4();
    v17 = v23;
    v22(v23, *MEMORY[0x277CC9760], v2);
    sub_20CEB2BB4();
    sub_20CEB2BB4();
    if (v28 == v26 && v29 == v27)
    {
      v15(v17, v2);
      v15(v16, v2);
    }

    else
    {
      v18 = sub_20CEB2E24();
      v15(v17, v2);
      v15(v16, v2);

      if ((v18 & 1) == 0)
      {
        return 2;
      }
    }
  }

  v19 = sub_20CEB2284();
  v20 = [v19 positionOfDayPeriodInFormattedTime];

  if (v20 <= 2)
  {
    return (2 - v20);
  }

  else
  {
    return 2;
  }
}

unint64_t sub_20CE9CD88()
{
  result = qword_281113008;
  if (!qword_281113008)
  {
    sub_20CEB22B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113008);
  }

  return result;
}

id sub_20CE9CDE0()
{
  type metadata accessor for MedicationsWidgetTimelineGenerator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_281113680 = result;
  return result;
}

unint64_t sub_20CE9CE4C()
{
  result = qword_281112CC0;
  if (!qword_281112CC0)
  {
    type metadata accessor for MedicationsWidgetEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112CC0);
  }

  return result;
}

uint64_t sub_20CE9CEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20CEB2AF4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_20CEB2474();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2454();
  v14 = *(v5 + 16);
  v14(v10, a1, v4);
  v15 = sub_20CEB2464();
  v16 = sub_20CEB2C74();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a2;
    v18 = v17;
    v28 = swift_slowAlloc();
    v32 = v28;
    *v18 = 136446466;
    *(v18 + 4) = sub_20CEA47DC(0xD000000000000021, 0x800000020CEB3500, &v32);
    *(v18 + 12) = 2082;
    v14(v8, v10, v4);
    v19 = sub_20CEB2B64();
    v21 = v20;
    (*(v5 + 8))(v10, v4);
    v22 = sub_20CEA47DC(v19, v21, &v32);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_20CE97000, v15, v16, "[%{public}s] Returning placeholder for context %{public}s", v18, 0x16u);
    v23 = v28;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v23, -1, -1);
    v24 = v18;
    a2 = v29;
    MEMORY[0x20F318720](v24, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  (*(v30 + 8))(v13, v31);
  sub_20CEB2264();
  v25 = type metadata accessor for MedicationsWidgetEntry(0);
  return sub_20CE9AF00((a2 + *(v25 + 20)));
}

uint64_t sub_20CE9D1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v33 = a1;
  v34 = a4;
  v6 = sub_20CEB2AF4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = sub_20CEB2474();
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2454();
  v16 = *(v7 + 16);
  v16(v12, a2, v6);
  v17 = sub_20CEB2464();
  v18 = sub_20CEB2C74();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = a3;
    v20 = v19;
    v29 = swift_slowAlloc();
    v35 = v29;
    *v20 = 136446466;
    *(v20 + 4) = sub_20CEA47DC(0xD000000000000021, 0x800000020CEB3500, &v35);
    *(v20 + 12) = 2082;
    v16(v10, v12, v6);
    v21 = sub_20CEB2B64();
    v23 = v22;
    (*(v7 + 8))(v12, v6);
    v24 = sub_20CEA47DC(v21, v23, &v35);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_20CE97000, v17, v18, "[%{public}s] Returning snapshot for context %{public}s", v20, 0x16u);
    v25 = v29;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v25, -1, -1);
    v26 = v20;
    a3 = v30;
    MEMORY[0x20F318720](v26, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  (*(v31 + 8))(v15, v32);
  return a3(v33);
}

uint64_t sub_20CE9D4D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v60 = a2;
  v61 = a3;
  v67 = sub_20CEB2A54();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CEB2274();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v69 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CEB2AF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = sub_20CEB2474();
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2454();
  v68 = v9;
  v20 = v9;
  v21 = v8;
  v24 = *(v20 + 16);
  v23 = v20 + 16;
  v22 = v24;
  v59 = a1;
  v24(v16, a1, v21);
  v25 = sub_20CEB2464();
  v26 = sub_20CEB2C74();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v53 = v26;
    v28 = v27;
    v54 = swift_slowAlloc();
    v70[0] = v54;
    *v28 = 136446466;
    *(v28 + 4) = sub_20CEA47DC(0xD000000000000021, 0x800000020CEB3500, v70);
    *(v28 + 12) = 2082;
    v22(v14, v16, v21);
    v29 = sub_20CEB2B64();
    v52 = v17;
    v30 = v22;
    v31 = v29;
    v55 = v23;
    v32 = v14;
    v34 = v33;
    (*(v68 + 8))(v16, v21);
    v35 = v31;
    v22 = v30;
    v36 = sub_20CEA47DC(v35, v34, v70);
    v14 = v32;

    *(v28 + 14) = v36;
    _os_log_impl(&dword_20CE97000, v25, v53, "[%{public}s] Requesting timeline for context %{public}s", v28, 0x16u);
    v37 = v54;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v37, -1, -1);
    MEMORY[0x20F318720](v28, -1, -1);

    (*(v57 + 8))(v19, v52);
  }

  else
  {

    (*(v68 + 8))(v16, v21);
    (*(v57 + 8))(v19, v17);
  }

  v56 = v22;
  v38 = v59;
  v22(v14, v59, v21);
  v39 = v68;
  v40 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v41 = (v10 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = *(v39 + 32);
  v43(v42 + v40, v14, v21);
  v44 = (v42 + v41);
  v45 = v61;
  *v44 = v60;
  v44[1] = v45;

  sub_20CEB2264();
  v46 = v64;
  sub_20CEB2AE4();
  v47 = v58;
  v56(v58, v38, v21);
  v48 = swift_allocObject();
  v43(v48 + v40, v47, v21);
  v49 = (v48 + v41);
  *v49 = sub_20CE9E488;
  v49[1] = v42;

  v50 = v69;
  sub_20CEA0794(v69, v46, sub_20CE9E4A0, v48);

  (*(v65 + 8))(v46, v67);
  return (*(v62 + 8))(v50, v63);
}

uint64_t sub_20CE9DAB8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v46 = a4;
  v44 = a1;
  v6 = sub_20CEB2AB4();
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9E4B8(0);
  v45 = v8;
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CEB2AF4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = sub_20CEB2474();
  v39 = *(v17 - 8);
  v40 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2454();
  v20 = *(v11 + 16);
  v20(v16, a2, v10);
  v21 = sub_20CEB2464();
  v22 = sub_20CEB2C74();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = a3;
    v24 = v23;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v24 = 136446466;
    *(v24 + 4) = sub_20CEA47DC(0xD000000000000021, 0x800000020CEB3500, &v47);
    *(v24 + 12) = 2082;
    v20(v14, v16, v10);
    v25 = sub_20CEB2B64();
    v27 = v26;
    (*(v11 + 8))(v16, v10);
    v28 = sub_20CEA47DC(v25, v27, &v47);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_20CE97000, v21, v22, "[%{public}s] Returning timeline for context %{public}s", v24, 0x16u);
    v29 = v37;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v29, -1, -1);
    v30 = v24;
    a3 = v38;
    MEMORY[0x20F318720](v30, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  (*(v39 + 8))(v19, v40);
  sub_20CE9E51C(0);
  v31 = *(type metadata accessor for MedicationsWidgetEntry(0) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20CEB34F0;
  sub_20CE9C4F0(v44, v33 + v32);
  sub_20CEB2AA4();
  sub_20CE9CE4C();
  v34 = v41;
  sub_20CEB2B04();
  a3(v34);
  return (*(v42 + 8))(v34, v45);
}

uint64_t sub_20CE9DF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v5 = sub_20CEB2AF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20CEB2A54();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20CEB2274();
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *v3;
  sub_20CEB2264();
  sub_20CEB2AE4();
  (*(v6 + 16))(v8, a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v15, v8, v5);
  v18 = (v17 + v16);
  v19 = v25;
  *v18 = v24;
  v18[1] = v19;

  sub_20CEA0794(v14, v11, sub_20CE9E6CC, v17);

  (*(v9 + 8))(v11, v23);
  return (*(v12 + 8))(v14, v22);
}

uint64_t sub_20CE9E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CE9E2E0;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_20CE9E2E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CE9E3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CE9E6C8;

  return MEMORY[0x282136278](a1, a2, a3);
}

void sub_20CE9E4B8(uint64_t a1)
{
  if (!qword_27C8184E8)
  {
    type metadata accessor for MedicationsWidgetEntry(255);
    sub_20CE9CE4C();
    v1 = sub_20CEB2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8184E8);
    }
  }
}

void sub_20CE9E51C(uint64_t a1)
{
  if (!qword_27C8184F0)
  {
    type metadata accessor for MedicationsWidgetEntry(255);
    v1 = sub_20CEB2E14();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8184F0);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_20CEB2AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20CE9E614(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_20CEB2AF4() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

uint64_t type metadata accessor for MedicationsWidgetEntryView(uint64_t a1)
{
  result = qword_281112C18;
  if (!qword_281112C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE9E744(uint64_t a1)
{
  sub_20CE9FA34(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicationsWidgetEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20CE9E814@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CEB2634();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20CE9FDAC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20CEB2A54();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20CEB2C64();
    v13 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20CE9EA20@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = MEMORY[0x277CE0330];
  sub_20CE9F6C4(0, &qword_281112828, MEMORY[0x277CE0330]);
  v50[1] = v3;
  MEMORY[0x28223BE20](v3);
  v52 = v50 - v4;
  v5 = MEMORY[0x277CE0338];
  sub_20CE9F6C4(0, &qword_2811127E0, MEMORY[0x277CE0338]);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = v50 - v7;
  v51 = type metadata accessor for MedicationsWidgetRectangularView(0);
  MEMORY[0x28223BE20](v51);
  v9 = (v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for MedicationsWidgetInlineView(0);
  MEMORY[0x28223BE20](v57);
  v50[0] = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9FEDC(0, &qword_281112808, v2);
  v58 = v11;
  MEMORY[0x28223BE20](v11);
  v60 = v50 - v12;
  sub_20CE9F72C(0, &qword_281112830, v2);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v55 = v50 - v14;
  sub_20CE9F72C(0, &qword_2811127F0, v5);
  v59 = v15;
  MEMORY[0x28223BE20](v15);
  v56 = v50 - v16;
  v17 = sub_20CEB22D4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MedicationsWidgetCircularView(0);
  MEMORY[0x28223BE20](v21);
  v23 = (v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_20CEB2A54();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9E814(v27);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x277CE3B78] || v28 == *MEMORY[0x277CE3B90])
  {
    v38 = v1 + *(type metadata accessor for MedicationsWidgetEntryView(0) + 20);
    v39 = type metadata accessor for MedicationsWidgetEntry(0);
    sub_20CE9FBA4(v38 + *(v39 + 20), v23 + v21[6], type metadata accessor for MedicationsWidgetViewModel);
    *v23 = swift_getKeyPath();
    v40 = MEMORY[0x277CDF458];
    sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v23 + v21[5]) = swift_getKeyPath();
    sub_20CE9FA34(0, &qword_2811128D8, MEMORY[0x277CE3AF8], v40);
    swift_storeEnumTagMultiPayload();
    sub_20CEB22A4();
    LOBYTE(v40) = sub_20CE9CA48(v20);
    (*(v18 + 8))(v20, v17);
    *(v23 + v21[7]) = v40;
    sub_20CE9FBA4(v23, v55, type metadata accessor for MedicationsWidgetCircularView);
    swift_storeEnumTagMultiPayload();
    sub_20CE9FD64(qword_281112F60, type metadata accessor for MedicationsWidgetCircularView, &unk_20CEB3950);
    sub_20CE9FD64(&qword_281113000, type metadata accessor for MedicationsWidgetInlineView, &unk_20CEB3CAC);
    v41 = v56;
    sub_20CEB2724();
    sub_20CE9FC0C(v41, v60, &qword_2811127F0, sub_20CE9F72C);
    swift_storeEnumTagMultiPayload();
    sub_20CE9F79C();
    sub_20CE9F898();
    sub_20CEB2724();
    sub_20CE9FC8C(v41, &qword_2811127F0, sub_20CE9F72C);
    v36 = type metadata accessor for MedicationsWidgetCircularView;
    v37 = v23;
  }

  else if (v28 == *MEMORY[0x277CE3B98])
  {
    v29 = v1 + *(type metadata accessor for MedicationsWidgetEntryView(0) + 20);
    v30 = type metadata accessor for MedicationsWidgetEntry(0);
    v31 = v51;
    sub_20CE9FBA4(v29 + *(v30 + 20), v9 + *(v51 + 32), type metadata accessor for MedicationsWidgetViewModel);
    *v9 = swift_getKeyPath();
    v32 = MEMORY[0x277CDF458];
    sub_20CE9FA34(0, &qword_27C8184F8, MEMORY[0x277CDFB98], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v9 + v31[5]) = swift_getKeyPath();
    sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], v32);
    swift_storeEnumTagMultiPayload();
    *(v9 + v31[6]) = swift_getKeyPath();
    sub_20CE9FA34(0, &qword_2811128D8, MEMORY[0x277CE3AF8], v32);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v34 = v9 + v31[7];
    *v34 = KeyPath;
    v34[8] = 0;
    sub_20CE9FBA4(v9, v52, type metadata accessor for MedicationsWidgetRectangularView);
    swift_storeEnumTagMultiPayload();
    sub_20CE9FD64(&qword_281112EB8, type metadata accessor for MedicationsWidgetRectangularView, &unk_20CEB3B84);
    v35 = v53;
    sub_20CEB2724();
    sub_20CE9FC0C(v35, v60, &qword_2811127E0, sub_20CE9F6C4);
    swift_storeEnumTagMultiPayload();
    sub_20CE9F79C();
    sub_20CE9F898();
    sub_20CEB2724();
    sub_20CE9FC8C(v35, &qword_2811127E0, sub_20CE9F6C4);
    v36 = type metadata accessor for MedicationsWidgetRectangularView;
    v37 = v9;
  }

  else
  {
    if (v28 != *MEMORY[0x277CE3B80])
    {
      swift_storeEnumTagMultiPayload();
      sub_20CE9FD64(&qword_281112EB8, type metadata accessor for MedicationsWidgetRectangularView, &unk_20CEB3B84);
      v49 = v53;
      sub_20CEB2724();
      sub_20CE9FC0C(v49, v60, &qword_2811127E0, sub_20CE9F6C4);
      swift_storeEnumTagMultiPayload();
      sub_20CE9F79C();
      sub_20CE9F898();
      sub_20CEB2724();
      sub_20CE9FC8C(v49, &qword_2811127E0, sub_20CE9F6C4);
      return (*(v25 + 8))(v27, v24);
    }

    v43 = v1 + *(type metadata accessor for MedicationsWidgetEntryView(0) + 20);
    v44 = type metadata accessor for MedicationsWidgetEntry(0);
    v45 = v57;
    v46 = v50[0];
    sub_20CE9FBA4(v43 + *(v44 + 20), v50[0] + *(v57 + 24), type metadata accessor for MedicationsWidgetViewModel);
    *v46 = swift_getKeyPath();
    v47 = MEMORY[0x277CDF458];
    sub_20CE9FA34(0, &qword_27C8184F8, MEMORY[0x277CDFB98], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v46 + *(v45 + 20)) = swift_getKeyPath();
    sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], v47);
    swift_storeEnumTagMultiPayload();
    sub_20CE9FBA4(v46, v55, type metadata accessor for MedicationsWidgetInlineView);
    swift_storeEnumTagMultiPayload();
    sub_20CE9FD64(qword_281112F60, type metadata accessor for MedicationsWidgetCircularView, &unk_20CEB3950);
    sub_20CE9FD64(&qword_281113000, type metadata accessor for MedicationsWidgetInlineView, &unk_20CEB3CAC);
    v48 = v56;
    sub_20CEB2724();
    sub_20CE9FC0C(v48, v60, &qword_2811127F0, sub_20CE9F72C);
    swift_storeEnumTagMultiPayload();
    sub_20CE9F79C();
    sub_20CE9F898();
    sub_20CEB2724();
    sub_20CE9FC8C(v48, &qword_2811127F0, sub_20CE9F72C);
    v36 = type metadata accessor for MedicationsWidgetInlineView;
    v37 = v46;
  }

  return sub_20CE9FD04(v37, v36);
}

void sub_20CE9F6C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MedicationsWidgetRectangularView(255);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_20CE9F72C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MedicationsWidgetCircularView(255);
    v7 = type metadata accessor for MedicationsWidgetInlineView(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_20CE9F79C()
{
  result = qword_2811127F8;
  if (!qword_2811127F8)
  {
    sub_20CE9F72C(255, &qword_2811127F0, MEMORY[0x277CE0338]);
    sub_20CE9FD64(qword_281112F60, type metadata accessor for MedicationsWidgetCircularView, &unk_20CEB3950);
    sub_20CE9FD64(&qword_281113000, type metadata accessor for MedicationsWidgetInlineView, &unk_20CEB3CAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127F8);
  }

  return result;
}

unint64_t sub_20CE9F898()
{
  result = qword_2811127E8;
  if (!qword_2811127E8)
  {
    sub_20CE9F6C4(255, &qword_2811127E0, MEMORY[0x277CE0338]);
    sub_20CE9FD64(&qword_281112EB8, type metadata accessor for MedicationsWidgetRectangularView, &unk_20CEB3B84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127E8);
  }

  return result;
}

uint64_t sub_20CE9F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_20CE9FA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE9FA98()
{
  sub_20CEB25D4();
  sub_20CE9FD64(&qword_27C818500, MEMORY[0x277CE3940], MEMORY[0x277CE3938]);
  sub_20CEB2644();
  return v1;
}

void *sub_20CE9FB14@<X0>(_BYTE *a1@<X8>)
{
  sub_20CEB25D4();
  sub_20CE9FD64(&qword_27C818500, MEMORY[0x277CE3940], MEMORY[0x277CE3938]);
  result = sub_20CEB2644();
  *a1 = v3;
  return result;
}

uint64_t sub_20CE9FBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE9FC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CE0338]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE9FC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void))
{
  v4 = a3(0, a2, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CE9FD04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE9FD64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CE9FDAC(uint64_t a1, uint64_t a2)
{
  sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CE9FE40()
{
  result = qword_2811127B0;
  if (!qword_2811127B0)
  {
    sub_20CE9FEDC(255, &qword_2811127A8, MEMORY[0x277CE0338]);
    sub_20CE9F79C();
    sub_20CE9F898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127B0);
  }

  return result;
}

void sub_20CE9FEDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277CE0338];
    sub_20CE9F72C(255, &qword_2811127F0, MEMORY[0x277CE0338]);
    v8 = v7;
    sub_20CE9F6C4(255, &qword_2811127E0, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MedicationsWidget(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MedicationsWidget(_WORD *result, int a2, int a3)
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

unint64_t sub_20CEA008C()
{
  result = qword_281112EC0[0];
  if (!qword_281112EC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281112EC0);
  }

  return result;
}

uint64_t sub_20CEA00E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064656C7564;
  v3 = 0x65686353656E6F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x657461446F547075;
    }

    else
    {
      v5 = 0x6567676F4C6C6C61;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x65754474736170;
    }

    else
    {
      v5 = 0x65686353656E6F6ELL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED000064656C7564;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x657461446F547075;
  if (a2 != 2)
  {
    v8 = 0x6567676F4C6C6C61;
    v7 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = 0x65754474736170;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20CEB2E24();
  }

  return v11 & 1;
}

uint64_t sub_20CEA0240()
{
  sub_20CEB2E84();
  sub_20CEB2B74();

  return sub_20CEB2EA4();
}

uint64_t sub_20CEA0314(uint64_t a1)
{
  sub_20CEB2B74();
}

uint64_t sub_20CEA03D4(uint64_t a1)
{
  sub_20CEB2E84();
  sub_20CEB2B74();

  return sub_20CEB2EA4();
}

unint64_t sub_20CEA04A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20CEA7934(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20CEA04D4(uint64_t *a1@<X8>)
{
  v2 = 0xED000064656C7564;
  v3 = 0x65686353656E6F6ELL;
  v4 = 0xE800000000000000;
  v5 = 0x657461446F547075;
  if (*v1 != 2)
  {
    v5 = 0x6567676F4C6C6C61;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x65754474736170;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_20CEA056C()
{
  sub_20CEB2E84();
  MEMORY[0x20F318300](0);
  return sub_20CEB2EA4();
}

uint64_t sub_20CEA05D8(uint64_t a1)
{
  sub_20CEB2E84();
  MEMORY[0x20F318300](0);
  return sub_20CEB2EA4();
}

id sub_20CEA0628()
{
  v1 = v0;
  v2 = sub_20CEB22D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter;
  v7 = *(v1 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v9 setDateStyle_];
    [v9 setTimeStyle_];
    sub_20CEB22A4();
    v10 = sub_20CEB2284();
    (*(v3 + 8))(v5, v2);
    [v9 setLocale_];

    v11 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

uint64_t sub_20CEA0794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a4;
  v91 = a3;
  v89 = a2;
  v85 = a1;
  v94 = *v4;
  v88 = sub_20CEB2A54();
  v93 = *(v88 - 8);
  v84 = *(v93 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x277D85248];
  sub_20CEA4778(0, &qword_281112640, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v67 - v7;
  v8 = sub_20CEB2CB4();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA4778(0, &qword_2811128E0, MEMORY[0x277D11688], MEMORY[0x277CBCEC0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v67 - v13;
  sub_20CEA6E78(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA6F94(0);
  v69 = v20;
  v72 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA7060(0);
  v24 = *(v23 - 8);
  v82 = v23;
  v83 = v24;
  MEMORY[0x28223BE20](v23);
  v86 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_20CEB2274();
  v77 = *(v73 - 8);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v73);
  v27 = v4[2];
  v74 = *(v28 + 16);
  v75 = v28 + 16;
  v70 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74(v70, v85);
  v29 = objc_allocWithZone(sub_20CEB2424());
  v30 = v27;
  v76 = sub_20CEB2414();
  sub_20CEB2404();
  sub_20CEA6F0C();
  sub_20CEB24D4();
  (*(v12 + 8))(v14, v11);
  sub_20CEA74CC(0, &qword_2811125D8, MEMORY[0x277D84948]);
  sub_20CEA7350(&qword_281112918, sub_20CEA6E78, MEMORY[0x277CBCB18]);
  sub_20CEB24F4();
  (*(v17 + 8))(v19, v16);
  v31 = v68;
  sub_20CEB2CA4();
  v95 = *(v92 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_queue);
  v32 = v95;
  v33 = sub_20CEB2C94();
  v34 = v71;
  (*(*(v33 - 8) + 56))(v71, 1, 1, v33);
  *(swift_allocObject() + 16) = v94;
  sub_20CEA44CC();
  sub_20CEA7350(&qword_281112908, sub_20CEA6F94, MEMORY[0x277CBCBA0]);
  sub_20CEA7350(&qword_281112638, sub_20CEA44CC, MEMORY[0x277D85228]);
  v35 = v32;
  v36 = v69;
  sub_20CEB24E4();

  sub_20CEA7398(v34, &qword_281112640, v81);

  (*(v79 + 8))(v31, v80);
  (*(v72 + 8))(v22, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v93;
  v79 = *(v93 + 16);
  v40 = v87;
  v39 = v88;
  (v79)(v87, v89, v88);
  v41 = *(v38 + 80);
  v42 = (v41 + 24) & ~v41;
  v80 = v41 | 7;
  v81 = (v84 + 7);
  v43 = &v84[v42 + 7] & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v37;
  v45 = *(v38 + 32);
  v93 = v38 + 32;
  v84 = v45;
  v46 = v44 + v42;
  v47 = v40;
  v48 = v40;
  v49 = v39;
  (v45)(v46, v48, v39);
  v50 = (v44 + v43);
  v51 = v90;
  *v50 = v91;
  v50[1] = v51;
  *(v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8)) = v94;
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = v70;
  v54 = v73;
  (v74)(v70, v85, v73);
  (v79)(v47, v89, v49);
  v55 = v77;
  v56 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v57 = (v78 + v41 + v56) & ~v41;
  v58 = (v81 + v57) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v52;
  v60 = v76;
  *(v59 + 24) = v76;
  (*(v55 + 32))(v59 + v56, v53, v54);
  (v84)(v59 + v57, v87, v88);
  v61 = (v59 + v58);
  v62 = v90;
  *v61 = v91;
  v61[1] = v62;
  *(v59 + ((v58 + 23) & 0xFFFFFFFFFFFFFFF8)) = v94;
  sub_20CEA7350(&qword_2811128F8, sub_20CEA7060, MEMORY[0x277CBCCE8]);
  swift_retain_n();
  v63 = v60;
  v64 = v82;
  v65 = v86;
  sub_20CEB24C4();

  (*(v83 + 8))(v65, v64);
  swift_beginAccess();
  sub_20CEB24B4();
  swift_endAccess();
}

uint64_t sub_20CEA1238(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v52 = a5;
  v53 = a4;
  sub_20CEA4778(0, &qword_281113010, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_20CEB2274();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MedicationsWidgetEntry(0);
  MEMORY[0x28223BE20](v15 - 8);
  v51 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20CEB2474();
  v54 = *(v17 - 8);
  v55 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v56 = result;
  if (result)
  {
    if (v23)
    {
      sub_20CEB2454();
      v25 = sub_20CEB2464();
      v26 = sub_20CEB2C54();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v49 = v14;
        v29 = v28;
        v57 = v28;
        *v27 = 136446210;
        v30 = sub_20CEB2EB4();
        v50 = a3;
        v32 = v12;
        v33 = v10;
        v34 = v11;
        v35 = sub_20CEA47DC(v30, v31, &v57);
        a3 = v50;

        *(v27 + 4) = v35;
        v11 = v34;
        v10 = v33;
        v12 = v32;
        _os_log_impl(&dword_20CE97000, v25, v26, "[%{public}s] Timed out waiting for medication summary", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        v36 = v29;
        v14 = v49;
        MEMORY[0x20F318720](v36, -1, -1);
        MEMORY[0x20F318720](v27, -1, -1);
      }

      (*(v54 + 8))(v22, v55);
      sub_20CEB2264();
      sub_20CEA6E2C(0, &qword_2811125F0, MEMORY[0x277D837D0]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20CEB33D0;
      if (qword_281112628 != -1)
      {
        swift_once();
      }

      *(inited + 32) = sub_20CEB2104();
      *(inited + 40) = v38;
      *(inited + 48) = sub_20CEB2104();
      *(inited + 56) = v39;
      (*(v12 + 56))(v10, 1, 1, v11);
      v40 = v51;
      sub_20CEA32D4(v14, inited, a3, 3, 0, v10, v51);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_20CEA7398(v10, &qword_281113010, MEMORY[0x277CC9578]);
      (*(v12 + 8))(v14, v11);
      v53(v40);

      return sub_20CEA7408(v40);
    }

    else
    {
      sub_20CEB2454();
      v41 = sub_20CEB2464();
      v42 = sub_20CEB2C74();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v57 = v44;
        *v43 = 136446210;
        v45 = sub_20CEB2EB4();
        v47 = sub_20CEA47DC(v45, v46, &v57);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_20CE97000, v41, v42, "[%{public}s] Finished fetching medication day summary", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x20F318720](v44, -1, -1);
        MEMORY[0x20F318720](v43, -1, -1);
      }

      return (*(v54 + 8))(v20, v55);
    }
  }

  return result;
}

uint64_t sub_20CEA1838(void (**a1)(_BYTE *, uint64_t), uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, void (*a6)(_BYTE *), uint64_t a7, uint64_t a8)
{
  v236 = a8;
  v242 = a5;
  v240 = a4;
  v247 = a1;
  v11 = sub_20CEB2314();
  v238 = *(v11 - 8);
  *&v239 = v11;
  MEMORY[0x28223BE20](v11);
  v237 = &v218[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CEA4778(0, &qword_281113010, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v246 = &v218[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v221 = &v218[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v218[-v19];
  MEMORY[0x28223BE20](v18);
  v231 = &v218[-v21];
  v22 = sub_20CEB2274();
  v243 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v228 = &v218[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v224 = &v218[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v223 = &v218[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v225 = &v218[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v229 = &v218[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v218[-v34];
  v36 = MEMORY[0x28223BE20](v33);
  v230 = &v218[-v37];
  MEMORY[0x28223BE20](v36);
  v241 = &v218[-v38];
  v39 = type metadata accessor for MedicationsWidgetEntry(0);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v227 = &v218[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v40);
  v222 = &v218[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v226 = &v218[-v45];
  MEMORY[0x28223BE20](v44);
  *&v232 = &v218[-v46];
  v245 = sub_20CEB2474();
  v47 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v49 = &v218[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v244 = result;
  if (result)
  {
    v235 = a6;
    sub_20CEB2454();
    v51 = a3;
    v52 = sub_20CEB2464();
    v53 = sub_20CEB2C74();

    v54 = os_log_type_enabled(v52, v53);
    v233 = v20;
    v234 = a7;
    v248 = v22;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v219 = v53;
      v56 = v55;
      v220 = swift_slowAlloc();
      v253 = v220;
      *v56 = 136446466;
      v57 = sub_20CEB2EB4();
      v59 = sub_20CEA47DC(v57, v58, &v253);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v60 = v51;
      v61 = [v60 description];
      v62 = sub_20CEB2B54();
      v64 = v63;

      v65 = sub_20CEA47DC(v62, v64, &v253);

      *(v56 + 14) = v65;
      _os_log_impl(&dword_20CE97000, v52, v219, "[%{public}s] Creating snapshot from provider: %s", v56, 0x16u);
      v66 = v220;
      swift_arrayDestroy();
      MEMORY[0x20F318720](v66, -1, -1);
      MEMORY[0x20F318720](v56, -1, -1);
    }

    (*(v47 + 8))(v49, v245);
    v253 = MEMORY[0x277D84F90];
    v67 = sub_20CEB23B4();
    sub_20CEA4518(v67);
    v68 = sub_20CEB23C4();
    sub_20CEA4518(v68);
    sub_20CEA4608(&v253);
    v69 = v253;
    if (v253 >> 62)
    {
LABEL_46:
      v70 = sub_20CEB2DD4();
      if (v70)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v70 = *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
LABEL_6:
        v71 = 0;
        v72 = 0;
        v245 = v69 & 0xFFFFFFFFFFFFFF8;
        v247 = (v243 + 8);
        while (1)
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v76 = MEMORY[0x20F3181E0](v71, v69);
            v77 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v71 >= *(v245 + 16))
            {
              goto LABEL_45;
            }

            v76 = *(v69 + 8 * v71 + 32);

            v77 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }
          }

          sub_20CEB2364();
          sub_20CEB2254();
          if (v78 < 0.0 && sub_20CEB2374() != 4 && sub_20CEB2374() != 5)
          {

            v141 = v244;
            v142 = sub_20CEA0628();
            v143 = sub_20CEB2B34();
            v144 = sub_20CEB2234();
            v145 = [v142 hm:v143 localizableTimeStringKeyWithPrefix:v144 date:?];

            sub_20CEB2B54();
            if (qword_281112628 != -1)
            {
              swift_once();
            }

            v241 = qword_281113680;
            v246 = sub_20CEB2104();
            v228 = v146;

            sub_20CEA7464(0);
            v236 = v147;
            v148 = swift_allocObject();
            v232 = xmmword_20CEB34F0;
            *(v148 + 16) = xmmword_20CEB34F0;
            v227 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter;
            v149 = *(v141 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter);
            v150 = sub_20CEB2234();
            v151 = [v149 stringFromDate_];

            v152 = sub_20CEB2B54();
            v154 = v153;

            v253 = v152;
            v254 = v154;
            v251 = 32;
            v252 = 0xE100000000000000;
            v249 = 41154;
            v250 = 0xA200000000000000;
            v231 = sub_20CE9C338();
            v155 = MEMORY[0x277D837D0];
            v156 = sub_20CEB2D14();
            v158 = v157;

            *(v148 + 56) = v155;
            v230 = sub_20CEA7528();
            *(v148 + 64) = v230;
            *(v148 + 32) = v156;
            *(v148 + 40) = v158;
            v159 = sub_20CEB2B44();
            v245 = v160;
            v246 = v159;

            v161 = v227;
            v162 = *&v227[v141];
            v163 = sub_20CEB2B34();
            v164 = sub_20CEB2234();
            v165 = [v162 hm:v163 localizableTimeStringKeyWithPrefix:v164 date:?];

            sub_20CEB2B54();
            v241 = sub_20CEB2104();
            v228 = v166;

            v167 = swift_allocObject();
            *(v167 + 16) = v232;
            v168 = *&v161[v141];
            v169 = sub_20CEB2234();
            v170 = [v168 stringFromDate_];

            v171 = sub_20CEB2B54();
            v173 = v172;

            v253 = v171;
            v254 = v173;
            v251 = 32;
            v252 = 0xE100000000000000;
            v249 = 41154;
            v250 = 0xA200000000000000;
            v174 = MEMORY[0x277D837D0];
            v175 = sub_20CEB2D14();
            v177 = v176;

            v178 = v230;
            *(v167 + 56) = v174;
            *(v167 + 64) = v178;
            *(v167 + 32) = v175;
            *(v167 + 40) = v177;
            v241 = sub_20CEB2B44();
            v236 = v179;

            v180 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_calendar;
            v182 = v237;
            v181 = v238;
            v183 = v239;
            (*(v238 + 104))(v237, *MEMORY[0x277CC9968], v239);
            *&v232 = v180;
            v184 = v221;
            v185 = v240;
            sub_20CEB2304();
            (*(v181 + 8))(v182, v183);
            v186 = v243;
            v187 = *(v243 + 48);
            v188 = v248;
            if (v187(v184, 1, v248) == 1)
            {
              (*(v186 + 16))(v225, v185, v188);
              v189 = v187(v184, 1, v188);
              v190 = v225;
              if (v189 != 1)
              {
                sub_20CEA7398(v184, &qword_281113010, MEMORY[0x277CC9578]);
              }
            }

            else
            {
              v190 = v225;
              (*(v186 + 32))(v225, v184, v188);
            }

            sub_20CEB22E4();
            v240 = *(v186 + 8);
            v240(v190, v188);
            sub_20CEA6E2C(0, &qword_2811125F0, MEMORY[0x277D837D0]);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_20CEB33D0;
            v197 = v245;
            *(inited + 32) = v246;
            v198 = v241;
            *(inited + 40) = v197;
            *(inited + 48) = v198;
            *(inited + 56) = v236;
            v246 = sub_20CEB2354();
            v199 = v233;
            sub_20CEB2364();
            (*(v186 + 56))(v199, 0, 1, v188);
            v200 = v246;
            sub_20CEA32D4(v229, inited, v242, 1, v246, v199, v226);

            swift_setDeallocating();
            swift_arrayDestroy();
            sub_20CEA7398(v199, &qword_281113010, MEMORY[0x277CC9578]);
            v201 = v240;
            v240(v229, v188);
            v202 = v226;
            v235(v226);

            sub_20CEA7408(v202);
            return v201(v35, v188);
          }

          if (v72)
          {

            v73 = *v247;
            (*v247)(v35, v248);
          }

          else
          {
            sub_20CEB2254();
            if (v79 <= 0.0 || sub_20CEB2374() == 4)
            {
              v73 = *v247;
              (*v247)(v35, v248);
            }

            else
            {
              v80 = sub_20CEB2374();
              v73 = *v247;
              (*v247)(v35, v248);
              if (v80 != 5)
              {
                v72 = v76;
                goto LABEL_9;
              }
            }

            v72 = 0;
          }

LABEL_9:
          ++v71;
          v74 = v77 == v70;
          v75 = v246;
          if (v74)
          {

            if (v72)
            {
              v81 = v244;
              v82 = v72;
              v83 = sub_20CEA0628();
              v84 = sub_20CEB2B34();
              v85 = v228;
              sub_20CEB2364();
              v86 = sub_20CEB2234();
              v73(v85, v248);
              v87 = [v83 hm:v84 localizableTimeStringKeyWithPrefix:v86 date:?];

              sub_20CEB2B54();
              if (qword_281112628 != -1)
              {
                swift_once();
              }

              v236 = qword_281113680;
              v246 = sub_20CEB2104();
              *&v232 = v88;

              sub_20CEA7464(0);
              v240 = v89;
              v90 = swift_allocObject();
              v239 = xmmword_20CEB34F0;
              *(v90 + 16) = xmmword_20CEB34F0;
              sub_20CEB2364();
              v238 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter;
              v91 = *(v81 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter);
              v92 = sub_20CEB2234();
              v93 = [v91 stringFromDate_];

              v94 = sub_20CEB2B54();
              v241 = v82;
              v96 = v95;

              v253 = v94;
              v254 = v96;
              v251 = 32;
              v252 = 0xE100000000000000;
              v249 = 41154;
              v250 = 0xA200000000000000;
              sub_20CE9C338();
              v97 = MEMORY[0x277D837D0];
              v98 = sub_20CEB2D14();
              v100 = v99;
              v73(v85, v248);

              *(v90 + 56) = v97;
              v237 = sub_20CEA7528();
              *(v90 + 64) = v237;
              *(v90 + 32) = v98;
              *(v90 + 40) = v100;
              v101 = sub_20CEB2B44();
              v245 = v102;
              v246 = v101;

              sub_20CEB2104();
              v236 = sub_20CEB2104();
              *&v232 = v103;

              v104 = swift_allocObject();
              *(v104 + 16) = v239;
              sub_20CEB2364();
              v105 = *(v81 + v238);
              v106 = v85;
              v107 = sub_20CEB2234();
              v108 = [v105 stringFromDate_];

              v109 = sub_20CEB2B54();
              v111 = v110;

              v253 = v109;
              v254 = v111;
              v251 = 32;
              v252 = 0xE100000000000000;
              v249 = 41154;
              v250 = 0xA200000000000000;
              v112 = MEMORY[0x277D837D0];
              v113 = sub_20CEB2D14();
              v115 = v114;
              v116 = v85;
              v117 = v248;
              v73(v116, v248);

              v118 = v237;
              *(v104 + 56) = v112;
              *(v104 + 64) = v118;
              *(v104 + 32) = v113;
              *(v104 + 40) = v115;
              v119 = sub_20CEB2B44();
              v121 = v120;

              sub_20CEB2364();
              sub_20CEA6E2C(0, &qword_2811125F0, v112);
              v122 = swift_initStackObject();
              *(v122 + 16) = xmmword_20CEB33D0;
              v123 = v245;
              *(v122 + 32) = v246;
              *(v122 + 40) = v123;
              *(v122 + 48) = v119;
              *(v122 + 56) = v121;
              v124 = sub_20CEB2354();
              v125 = v233;
              sub_20CEB2364();
              (*(v243 + 56))(v125, 0, 1, v117);
              v126 = v227;
              sub_20CEA32D4(v106, v122, v242, 2, v124, v125, v227);

              swift_setDeallocating();
              swift_arrayDestroy();
              sub_20CEA7398(v125, &qword_281113010, MEMORY[0x277CC9578]);
              v73(v106, v248);
              v235(v126);

              v127 = v126;
            }

            else
            {
              v129 = v237;
              v128 = v238;
              v130 = v239;
              (*(v238 + 104))(v237, *MEMORY[0x277CC9968], v239);
              v131 = v75;
              v132 = v240;
              sub_20CEB2304();
              (*(v128 + 8))(v129, v130);
              v133 = v243;
              v134 = *(v243 + 48);
              v135 = v248;
              if (v134(v131, 1, v248) == 1)
              {
                v136 = *(v133 + 16);
                v137 = v224;
                v136(v224, v132, v135);
                v138 = v134(v131, 1, v135);
                v139 = v137;
                v140 = v233;
                if (v138 != 1)
                {
                  sub_20CEA7398(v131, &qword_281113010, MEMORY[0x277CC9578]);
                }
              }

              else
              {
                v139 = v224;
                (*(v133 + 32))(v224, v131, v135);
                v140 = v233;
              }

              v191 = v223;
              sub_20CEB22E4();
              v73(v139, v135);
              sub_20CEA6E2C(0, &qword_2811125F0, MEMORY[0x277D837D0]);
              v192 = swift_initStackObject();
              *(v192 + 16) = xmmword_20CEB33D0;
              if (qword_281112628 != -1)
              {
                swift_once();
              }

              *(v192 + 32) = sub_20CEB2104();
              *(v192 + 40) = v193;
              *(v192 + 48) = sub_20CEB2104();
              *(v192 + 56) = v194;
              (*(v243 + 56))(v140, 1, 1, v135);
              v195 = v222;
              sub_20CEA32D4(v191, v192, v242, 3, 0, v140, v222);
              swift_setDeallocating();
              swift_arrayDestroy();
              sub_20CEA7398(v140, &qword_281113010, MEMORY[0x277CC9578]);
              v73(v191, v135);
              v235(v195);

              v127 = v195;
            }

            return sub_20CEA7408(v127);
          }
        }
      }
    }

    v204 = v237;
    v203 = v238;
    v205 = v239;
    (*(v238 + 104))(v237, *MEMORY[0x277CC9968], v239);
    v206 = v231;
    v207 = v240;
    sub_20CEB2304();
    (*(v203 + 8))(v204, v205);
    v208 = v243;
    v209 = *(v243 + 48);
    v210 = v248;
    if (v209(v206, 1, v248) == 1)
    {
      v211 = v230;
      (*(v208 + 16))(v230, v207, v210);
      if (v209(v206, 1, v210) != 1)
      {
        sub_20CEA7398(v206, &qword_281113010, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v211 = v230;
      (*(v208 + 32))(v230, v206, v210);
    }

    sub_20CEB22E4();
    v247 = *(v208 + 8);
    (v247)(v211, v210);
    sub_20CEA6E2C(0, &qword_2811125F0, MEMORY[0x277D837D0]);
    v212 = swift_initStackObject();
    *(v212 + 16) = xmmword_20CEB33D0;
    if (qword_281112628 != -1)
    {
      swift_once();
    }

    *(v212 + 32) = sub_20CEB2104();
    *(v212 + 40) = v213;
    *(v212 + 48) = sub_20CEB2104();
    *(v212 + 56) = v214;
    v215 = v233;
    (*(v208 + 56))(v233, 1, 1, v210);
    v216 = v232;
    v217 = v241;
    sub_20CEA32D4(v241, v212, v242, 0, 0, v215, v232);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_20CEA7398(v215, &qword_281113010, MEMORY[0x277CC9578]);
    (v247)(v217, v210);
    v235(v216);

    v127 = v216;
    return sub_20CEA7408(v127);
  }

  return result;
}

uint64_t sub_20CEA32D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v125 = a2;
  v126 = a6;
  v122 = a5;
  v134 = a4;
  v135 = a3;
  v131 = a7;
  v120 = *v8;
  v10 = MEMORY[0x277D83D88];
  sub_20CEA4778(0, &qword_281112920, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v115 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v112 = &v105 - v14;
  v15 = sub_20CEB23F4();
  v117 = *(v15 - 8);
  v118 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v111 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v105 - v18;
  sub_20CEA4778(0, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration, v10);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v114 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v130 = &v105 - v22;
  v23 = sub_20CEB2A54();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v132 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v105 - v27;
  v29 = sub_20CEB2274();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20CEB2474();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v113 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v105 - v37;
  sub_20CEB2454();
  v39 = *(v30 + 16);
  v127 = a1;
  v123 = v39;
  v124 = v30 + 16;
  v39(v32, a1, v29);
  v128 = *(v24 + 16);
  v129 = v24 + 16;
  v128(v28, v135, v23);
  v40 = sub_20CEB2464();
  v119 = sub_20CEB2C74();
  v41 = os_log_type_enabled(v40, v119);
  v133 = v29;
  v121 = v33;
  if (v41)
  {
    v108 = v40;
    v107 = v34;
    v116 = v23;
    v42 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v136 = v106;
    *v42 = 136315906;
    v43 = sub_20CEB2EB4();
    v45 = sub_20CEA47DC(v43, v44, &v136);

    v46 = v134;
    *(v42 + 4) = v45;
    v47 = 0xED000064656C7564;
    *(v42 + 12) = 2082;
    v48 = 0x65686353656E6F6ELL;
    v49 = 0xE800000000000000;
    v50 = 0x657461446F547075;
    if (v46 != 2)
    {
      v50 = 0x6567676F4C6C6C61;
      v49 = 0xE900000000000064;
    }

    if (v46)
    {
      v48 = 0x65754474736170;
      v47 = 0xE700000000000000;
    }

    if (v46 <= 1)
    {
      v51 = v48;
    }

    else
    {
      v51 = v50;
    }

    if (v46 <= 1)
    {
      v52 = v47;
    }

    else
    {
      v52 = v49;
    }

    v53 = sub_20CEA47DC(v51, v52, &v136);

    *(v42 + 14) = v53;
    *(v42 + 22) = 2082;
    sub_20CEA7350(&qword_281113018, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v54 = v133;
    v55 = sub_20CEB2E04();
    v57 = v56;
    (*(v30 + 8))(v32, v54);
    v58 = sub_20CEA47DC(v55, v57, &v136);

    *(v42 + 24) = v58;
    *(v42 + 32) = 2082;
    sub_20CEA7350(&qword_2811126B0, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BB8]);
    v59 = v116;
    v60 = sub_20CEB2E04();
    v62 = v61;
    v110 = *(v24 + 8);
    v110(v28, v59);
    v63 = sub_20CEA47DC(v60, v62, &v136);

    *(v42 + 34) = v63;
    v64 = v59;
    v65 = v108;
    _os_log_impl(&dword_20CE97000, v108, v119, "[%s] Creating entry for state: %{public}s date: %{public}s family: %{public}s", v42, 0x2Au);
    v66 = v106;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v66, -1, -1);
    MEMORY[0x20F318720](v42, -1, -1);

    v67 = *(v107 + 8);
    v67(v38, v121);
  }

  else
  {

    v110 = *(v24 + 8);
    v110(v28, v23);
    (*(v30 + 8))(v32, v29);
    v67 = *(v34 + 8);
    v67(v38, v33);
    v64 = v23;
  }

  v68 = type metadata accessor for MedmojiIconConfiguration(0);
  v69 = *(*(v68 - 8) + 56);
  v70 = v130;
  v69(v130, 1, 1, v68);
  v71 = v132;
  v128(v132, v135, v64);
  v72 = (*(v24 + 88))(v71, v64);
  v73 = v134;
  if (v72 == *MEMORY[0x277CE3B78])
  {
    if (v134 == 1 && v122)
    {
      v74 = v122;
      v75 = v115;
      HKMedicationUserDomainConcept.visualConfig.getter(v115);
      v77 = v117;
      v76 = v118;
      if ((*(v117 + 48))(v75, 1, v118) != 1)
      {
        v78 = *(v77 + 32);
        v79 = &v138;
LABEL_28:
        v89 = *(v79 - 32);
        v78(v89, v75, v76);
        v90 = v114;
        (*(v77 + 16))(v114, v89, v76);
        sub_20CEB2394();

        v91 = v89;
        v73 = v134;
        (*(v77 + 8))(v91, v76);
        sub_20CEA7398(v70, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
        v69(v90, 0, 1, v68);
        sub_20CEA6CA4(v90, v70);
        goto LABEL_29;
      }

LABEL_22:

      sub_20CEA7398(v75, &qword_281112920, MEMORY[0x277D116C8]);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v72 == *MEMORY[0x277CE3B90])
  {
    if (v122)
    {
      v74 = v122;
      v75 = v112;
      HKMedicationUserDomainConcept.visualConfig.getter(v112);
      v77 = v117;
      v76 = v118;
      if ((*(v117 + 48))(v75, 1, v118) != 1)
      {
        v78 = *(v77 + 32);
        v79 = &v137;
        goto LABEL_28;
      }

      goto LABEL_22;
    }

LABEL_29:
    if (qword_281112628 != -1)
    {
      swift_once();
    }

    v92 = sub_20CEB2104();
    v94 = v93;
    v136 = MEMORY[0x277D84FA0];

    v96 = sub_20CEA6B44(v95);

    v97 = type metadata accessor for MedicationsWidgetEntry(0);
    v98 = v131;
    v99 = (v131 + *(v97 + 20));
    v100 = type metadata accessor for MedicationsWidgetViewModel(0);
    sub_20CEA6CA4(v70, v99 + v100[6]);
    sub_20CEA6D38(v126, v99 + v100[8]);
    *v99 = v92;
    v99[1] = v94;
    v99[2] = v96;
    *(v99 + v100[7]) = v73;
    return v123(v98, v127, v133);
  }

  if (v72 == *MEMORY[0x277CE3B98] || v72 == *MEMORY[0x277CE3B80])
  {
    goto LABEL_29;
  }

  v116 = v64;
  v80 = v113;
  sub_20CEB2454();
  v81 = sub_20CEB2464();
  v82 = sub_20CEB2C64();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v136 = v84;
    *v83 = 136446210;
    v85 = sub_20CEB2EB4();
    v87 = sub_20CEA47DC(v85, v86, &v136);

    *(v83 + 4) = v87;
    _os_log_impl(&dword_20CE97000, v81, v82, "[%{public}s] Requested unsupported widget family entry", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x20F318720](v84, -1, -1);
    MEMORY[0x20F318720](v83, -1, -1);

    v88 = v113;
  }

  else
  {

    v88 = v80;
  }

  v67(v88, v121);
  v102 = v116;
  v103 = v131;
  sub_20CEB2264();
  v104 = type metadata accessor for MedicationsWidgetEntry(0);
  sub_20CE9AF00((v103 + *(v104 + 20)));
  sub_20CEA7398(v70, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
  return (v110)(v132, v102);
}

uint64_t sub_20CEA3FE4()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_calendar;
  v2 = sub_20CEB2324();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for MedicationsWidgetTimelineGenerator(uint64_t a1)
{
  result = qword_281112DD8;
  if (!qword_281112DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CEA410C(uint64_t a1)
{
  result = sub_20CEB2324();
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

uint64_t sub_20CEA41D4()
{
  v11 = sub_20CEB2CC4();
  v1 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20CEB2C84();
  MEMORY[0x28223BE20](v4);
  v5 = sub_20CEB29F4();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  sub_20CEB22F4();
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_cancellables) = MEMORY[0x277D84FA0];
  v10 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_queue;
  v6 = sub_20CEA44CC();
  v9[1] = "$__lazy_storage_$_dateFormatter";
  v9[2] = v6;
  sub_20CEB29E4();
  v12 = MEMORY[0x277D84F90];
  sub_20CEA7350(&qword_281112648, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v7 = MEMORY[0x277D85230];
  sub_20CEA4778(0, &qword_281112678, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_20CEA757C(&qword_281112670, &qword_281112678, v7, MEMORY[0x277D83970]);
  sub_20CEB2D34();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v11);
  *(v0 + v10) = sub_20CEB2CD4();
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_timeoutInterval) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter) = 0;
  return v0;
}

unint64_t sub_20CEA44CC()
{
  result = qword_281112630;
  if (!qword_281112630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281112630);
  }

  return result;
}

uint64_t sub_20CEA4518(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20CEB2DD4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_20CEB2DD4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_20CEA582C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20CEA6890(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_20CEA4608(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_20CEA6AE0(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_20CEA58CC(v5);
  *a1 = v2;
  return result;
}

char *sub_20CEA4680(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CEA75D4(0);
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

void sub_20CEA4778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20CEA47DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CEA48A8(v11, 0, 0, 1, a1, a2);
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
    sub_20CEA6DD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20CEA48A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20CEA49B4(a5, a6);
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
    result = sub_20CEB2D94();
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

void *sub_20CEA49B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_20CEA4A00(a1, a2);
  sub_20CEA4B30(&unk_2823C84D8);
  return v3;
}

void *sub_20CEA4A00(uint64_t a1, unint64_t a2)
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

  v6 = sub_20CEA4C1C(v5, 0);
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

  result = sub_20CEB2D94();
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
        v10 = sub_20CEB2B84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CEA4C1C(v10, 0);
        result = sub_20CEB2D64();
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

uint64_t sub_20CEA4B30(uint64_t result)
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

  result = sub_20CEA4C94(result, v11, 1, v3);
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

void *sub_20CEA4C1C(uint64_t a1, uint64_t a2)
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

  sub_20CEA6E2C(0, &qword_2811125E8, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20CEA4C94(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CEA6E2C(0, &qword_2811125E8, MEMORY[0x277D84B78]);
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

char *sub_20CEA4DD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CEA4DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CEA4DF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CEA6E2C(0, &qword_2811125F0, MEMORY[0x277D837D0]);
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

uint64_t sub_20CEA4F08(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20CEB2E84();
  sub_20CEB2B74();
  v8 = sub_20CEB2EA4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20CEB2E24() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_20CEA52D8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20CEA5058(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20CEA7658(0, &qword_281112620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_20CEB2D54();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_20CEB2E84();
      sub_20CEB2B74();
      result = sub_20CEB2EA4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CEA52D8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20CEA5058(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20CEA5458();
      goto LABEL_16;
    }

    sub_20CEA55D4(v8 + 1);
  }

  v10 = *v4;
  sub_20CEB2E84();
  sub_20CEB2B74();
  result = sub_20CEB2EA4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20CEB2E24();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20CEB2E34();
  __break(1u);
  return result;
}

void *sub_20CEA5458()
{
  v1 = v0;
  sub_20CEA7658(0, &qword_281112620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_20CEB2D44();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_20CEA55D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20CEA7658(0, &qword_281112620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_20CEB2D54();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_20CEB2E84();

      sub_20CEB2B74();
      result = sub_20CEB2EA4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_20CEA582C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_20CEB2DD4();
LABEL_9:
  result = sub_20CEB2D84();
  *v2 = result;
  return result;
}

uint64_t sub_20CEA58CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20CEB2DF4();
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
        sub_20CEB2384();
        v6 = sub_20CEB2BC4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_20CEA5BC4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_20CEA59D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20CEA59D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31 = sub_20CEB2274();
  v8 = MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  v26 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v32 = *a4;
    v15 = v32 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v28 = v15;
    v29 = a3;
    v27 = v16;
    v17 = v15;
    while (1)
    {

      sub_20CEB2364();
      v18 = v30;
      sub_20CEB2364();
      v19 = sub_20CEB2244();
      v20 = *v14;
      v21 = v18;
      v22 = v31;
      (*v14)(v21, v31);
      v20(v13, v22);

      if ((v19 & 1) == 0)
      {
LABEL_4:
        a3 = v29 + 1;
        v15 = v28 + 8;
        v16 = v27 - 1;
        if (v29 + 1 == v26)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = *v17;
      *v17 = v17[1];
      v17[1] = v23;
      --v17;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CEA5BC4(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v99 = a1;
  v108 = sub_20CEB2274();
  v9 = MEMORY[0x28223BE20](v108);
  v107 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v106 = &v93 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_88:
    v17 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v5 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_121:
      result = sub_20CEA687C(a4);
    }

    v109 = result;
    v89 = *(result + 16);
    if (v89 >= 2)
    {
      while (*v5)
      {
        a4 = *(result + 16 * v89);
        v90 = result;
        v91 = *(result + 16 * (v89 - 1) + 40);
        sub_20CEA63AC((*v5 + 8 * a4), (*v5 + 8 * *(result + 16 * (v89 - 1) + 32)), (*v5 + 8 * v91), v17);
        if (v6)
        {
        }

        if (v91 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_20CEA687C(v90);
        }

        if (v89 - 2 >= *(v90 + 2))
        {
          goto LABEL_115;
        }

        v92 = &v90[16 * v89];
        *v92 = a4;
        v92[1] = v91;
        v109 = v90;
        sub_20CEA67F0(v89 - 1);
        result = v109;
        v89 = *(v109 + 16);
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v15 = 0;
  v105 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v98 = a4;
  v94 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v103 = v14;
      v96 = v16;
      v97 = v6;
      v18 = *a3;
      v102 = 8 * v17;
      v5 = v18 + 8 * v17 + 16;

      v19 = v106;
      sub_20CEB2364();
      v20 = v107;
      sub_20CEB2364();
      LODWORD(v104) = sub_20CEB2244();
      v21 = *v105;
      v22 = v108;
      (*v105)(v20, v108);
      v21(v19, v22);

      v95 = v17;
      v23 = v17 + 2;
      while (1)
      {
        v15 = v103;
        if (v103 == v23)
        {
          break;
        }

        v24 = v106;
        sub_20CEB2364();
        v25 = v107;
        sub_20CEB2364();
        v26 = sub_20CEB2244() & 1;
        v27 = v25;
        v28 = v108;
        v21(v27, v108);
        v21(v24, v28);

        ++v23;
        v5 += 8;
        if ((v104 & 1) != v26)
        {
          v15 = v23 - 1;
          break;
        }
      }

      v16 = v96;
      v6 = v97;
      a4 = v98;
      v17 = v95;
      v29 = v102;
      if (v104)
      {
        if (v15 < v95)
        {
          goto LABEL_118;
        }

        a3 = v94;
        if (v95 < v15)
        {
          v30 = 8 * v15 - 8;
          v31 = v15;
          v32 = v95;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v29);
              *(v34 + v29) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            ++v32;
            v30 -= 8;
            v29 += 8;
          }

          while (v32 < v31);
        }
      }

      else
      {
        a3 = v94;
      }
    }

    v35 = a3[1];
    if (v15 < v35)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v36 = v17 + a4;
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v36 >= v35)
        {
          v36 = a3[1];
        }

        if (v36 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v36)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v45 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v45;
    }

    else
    {
      result = sub_20CEA4680(0, *(v45 + 16) + 1, 1, v45);
      v16 = result;
    }

    v5 = *(v16 + 16);
    v46 = *(v16 + 24);
    a4 = v5 + 1;
    if (v5 >= v46 >> 1)
    {
      result = sub_20CEA4680((v46 > 1), v5 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 16) = a4;
    v47 = v16 + 16 * v5;
    *(v47 + 32) = v17;
    *(v47 + 40) = v15;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_126;
    }

    if (v5)
    {
      while (1)
      {
        v17 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v16 + 32);
          v50 = *(v16 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_105;
          }

          v65 = (v16 + 16 * a4);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_108;
          }

          v71 = (v16 + 32 + 16 * v17);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_112;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v17 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = (v16 + 16 * a4);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_107;
        }

        v78 = v16 + 16 * v17;
        v80 = *(v78 + 32);
        v79 = *(v78 + 40);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_77:
        v5 = v17 - 1;
        if (v17 - 1 >= a4)
        {
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
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v86 = v16;
        a4 = *(v16 + 32 + 16 * v5);
        v87 = *(v16 + 32 + 16 * v17 + 8);
        sub_20CEA63AC((*a3 + 8 * a4), (*a3 + 8 * *(v16 + 32 + 16 * v17)), (*a3 + 8 * v87), v48);
        if (v6)
        {
        }

        if (v87 < a4)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_20CEA687C(v86);
        }

        if (v5 >= *(v86 + 2))
        {
          goto LABEL_102;
        }

        v88 = &v86[16 * v5];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v109 = v86;
        result = sub_20CEA67F0(v17);
        v16 = v109;
        a4 = *(v109 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = v16 + 32 + 16 * a4;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_103;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_104;
      }

      v60 = (v16 + 16 * a4);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_106;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_109;
      }

      if (v64 >= v56)
      {
        v82 = (v16 + 32 + 16 * v17);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v17 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v98;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v96 = v16;
  v97 = v6;
  v104 = *a3;
  v37 = (v104 + 8 * v15 - 8);
  v95 = v17;
  v38 = v17 - v15;
  v100 = v36;
LABEL_29:
  v102 = v37;
  v103 = v15;
  v101 = v38;
  while (1)
  {

    v5 = v106;
    sub_20CEB2364();
    v39 = v107;
    sub_20CEB2364();
    a4 = sub_20CEB2244();
    v40 = *v105;
    v41 = v39;
    v42 = v108;
    (*v105)(v41, v108);
    v40(v5, v42);

    if ((a4 & 1) == 0)
    {
LABEL_28:
      v15 = v103 + 1;
      v37 = (v102 + 8);
      v38 = v101 - 1;
      if (v103 + 1 != v100)
      {
        goto LABEL_29;
      }

      v15 = v100;
      v16 = v96;
      v6 = v97;
      a3 = v94;
      v17 = v95;
      goto LABEL_36;
    }

    if (!v104)
    {
      break;
    }

    v43 = *v37;
    *v37 = v37[1];
    v37[1] = v43;
    --v37;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_20CEA63AC(char *a1, char *a2, char *a3, char *a4)
{
  v47 = a4;
  v45 = sub_20CEB2274();
  v7 = *(v45 - 8);
  v8 = MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    if (v47 != a2 || &a2[8 * v14] <= v47)
    {
      memmove(v47, a2, 8 * v14);
    }

    v46 = &v47[8 * v14];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v39 = (v7 + 8);
      v42 = a1;
      do
      {
        v38 = a2;
        v25 = a3 - 8;
        v26 = v46;
        v40 = a2 - 8;
        while (1)
        {
          v41 = v25;
          v27 = v25 + 8;
          v26 -= 8;

          v28 = v43;
          sub_20CEB2364();
          v29 = v44;
          sub_20CEB2364();
          v30 = sub_20CEB2244();
          v31 = *v39;
          v32 = v29;
          v33 = v45;
          (*v39)(v32, v45);
          v31(v28, v33);

          if (v30)
          {
            break;
          }

          v34 = v41;
          if (v27 != v46)
          {
            *v41 = *v26;
          }

          v25 = v34 - 8;
          v46 = v26;
          if (v26 <= v47)
          {
            v46 = v26;
            a2 = v38;
            goto LABEL_39;
          }
        }

        a3 = v41;
        v35 = v42;
        v36 = v40;
        if (v27 != v38)
        {
          *v41 = *v40;
        }

        if (v46 <= v47)
        {
          break;
        }

        a2 = v36;
      }

      while (v36 > v35);
      a2 = v36;
    }
  }

  else
  {
    if (v47 != a1 || &a1[8 * v12] <= v47)
    {
      memmove(v47, a1, 8 * v12);
    }

    v46 = &v47[8 * v12];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v15 = (v7 + 8);
      while (1)
      {
        v42 = a1;

        v16 = v43;
        sub_20CEB2364();
        v17 = v44;
        sub_20CEB2364();
        v18 = sub_20CEB2244();
        v19 = *v15;
        v20 = v17;
        v21 = v45;
        (*v15)(v20, v45);
        v19(v16, v21);

        if ((v18 & 1) == 0)
        {
          break;
        }

        v22 = a2;
        v23 = v42;
        v24 = v42 == a2;
        a2 += 8;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v23 + 8;
        if (v47 >= v46 || a2 >= a3)
        {
          goto LABEL_20;
        }
      }

      v22 = v47;
      v23 = v42;
      v47 += 8;
      if (v42 == v22)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v23 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_39:
  if (a2 != v47 || a2 >= &v47[(v46 - v47 + (v46 - v47 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v47, 8 * ((v46 - v47) / 8));
  }

  return 1;
}

uint64_t sub_20CEA67F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20CEA687C(v3);
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

uint64_t sub_20CEA6890(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_20CEB2DD4();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20CEB2DD4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x277D11628];
          sub_20CEA4778(0, &qword_27C818508, MEMORY[0x277D11628], MEMORY[0x277D83940]);
          sub_20CEA757C(&qword_27C818510, &qword_27C818508, v8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v10 = sub_20CEA6A58(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20CEB2384();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20CEA6A58(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F3181E0](a2, a3);
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
    return sub_20CEA6AD8;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CEA6AE0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_20CEB2DD4();
  }

  return sub_20CEB2D84();
}

uint64_t sub_20CEA6B44(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_20CEA4F08(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_20CEA4DD8(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_20CEA4DD8((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_20CEA6CA4(uint64_t a1, uint64_t a2)
{
  sub_20CEA4778(0, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEA6D38(uint64_t a1, uint64_t a2)
{
  sub_20CEA4778(0, &qword_281113010, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEA6DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_20CEA6E2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20CEB2E14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CEA6E78(uint64_t a1)
{
  if (!qword_281112910)
  {
    sub_20CEA4778(255, &qword_2811128E0, MEMORY[0x277D11688], MEMORY[0x277CBCEC0]);
    sub_20CEA6F0C();
    v1 = sub_20CEB2484();
    if (!v2)
    {
      atomic_store(v1, &qword_281112910);
    }
  }
}

unint64_t sub_20CEA6F0C()
{
  result = qword_2811128E8;
  if (!qword_2811128E8)
  {
    sub_20CEA4778(255, &qword_2811128E0, MEMORY[0x277D11688], MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811128E8);
  }

  return result;
}

void sub_20CEA6F94(uint64_t a1)
{
  if (!qword_281112900)
  {
    sub_20CEA6E78(255);
    sub_20CEA74CC(255, &qword_2811125D8, MEMORY[0x277D84948]);
    sub_20CEA7350(&qword_281112918, sub_20CEA6E78, MEMORY[0x277CBCB18]);
    v1 = sub_20CEB2494();
    if (!v2)
    {
      atomic_store(v1, &qword_281112900);
    }
  }
}

void sub_20CEA7060(uint64_t a1)
{
  if (!qword_2811128F0)
  {
    sub_20CEA6F94(255);
    sub_20CEA44CC();
    sub_20CEA7350(&qword_281112908, sub_20CEA6F94, MEMORY[0x277CBCBA0]);
    sub_20CEA7350(&qword_281112638, sub_20CEA44CC, MEMORY[0x277D85228]);
    v1 = sub_20CEB24A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811128F0);
    }
  }
}

uint64_t sub_20CEA714C@<X0>(uint64_t *a1@<X8>)
{
  sub_20CEA76AC();
  result = swift_allocError();
  *a1 = result;
  return result;
}

uint64_t sub_20CEA718C(uint64_t *a1)
{
  v3 = *(sub_20CEB2A54() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  return sub_20CEA1238(a1, v7, v1 + v4, v9, v10, v11);
}

uint64_t sub_20CEA723C(void (**a1)(_BYTE *, uint64_t))
{
  v3 = *(sub_20CEB2274() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_20CEB2A54() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v8;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v1 + v9);

  return sub_20CEA1838(a1, v10, v11, (v1 + v4), v1 + v7, v13, v14, v15);
}

uint64_t sub_20CEA7350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CEA7398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_20CEA4778(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CEA7408(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsWidgetEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CEA7464(uint64_t a1)
{
  if (!qword_2811125E0)
  {
    sub_20CEA74CC(255, &qword_2811125D0, MEMORY[0x277D84D98]);
    v1 = sub_20CEB2E14();
    if (!v2)
    {
      atomic_store(v1, &qword_2811125E0);
    }
  }
}

uint64_t sub_20CEA74CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_20CEA7528()
{
  result = qword_281112690;
  if (!qword_281112690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112690);
  }

  return result;
}

uint64_t sub_20CEA757C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CEA4778(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CEA75D4(uint64_t a1)
{
  if (!qword_27C818518)
  {
    sub_20CEA7658(255, &qword_27C818520, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v1 = sub_20CEB2E14();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818518);
    }
  }
}

void sub_20CEA7658(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_20CEA76AC()
{
  result = qword_27C818528;
  if (!qword_27C818528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicationsWidgetTimelineGenerator.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MedicationsWidgetTimelineGenerator.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20CEA7888()
{
  result = qword_27C818530;
  if (!qword_27C818530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818530);
  }

  return result;
}

unint64_t sub_20CEA78E0()
{
  result = qword_27C818538;
  if (!qword_27C818538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818538);
  }

  return result;
}

unint64_t sub_20CEA7934(uint64_t a1, uint64_t a2)
{
  v2 = sub_20CEB2DE4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_20CEA7994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CEA7A2C(uint64_t a1)
{
  sub_20CEA7994(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20CEA7994(319, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MedicationsWidgetViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_20CEACB4C(319, &qword_281112668, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20CEA7B80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v38 = a1;
  v36 = type metadata accessor for ImageView(0);
  MEMORY[0x28223BE20](v36);
  v3 = (v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CEA918C(0, &qword_281112820, sub_20CEA90E4, type metadata accessor for ImageView, MEMORY[0x277CE0330]);
  v34[1] = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v34 - v5;
  sub_20CEA90E4(0);
  v34[2] = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA909C(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v35 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - v13;
  v15 = sub_20CEB2A14();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v34 - v20;
  sub_20CEB2BF4();
  v34[3] = sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEB2A04();
  v22 = v38 + *(type metadata accessor for MedicationsWidgetCircularView(0) + 24);
  if (*(v22 + *(type metadata accessor for MedicationsWidgetViewModel(0) + 28)) == 1)
  {
  }

  else
  {
    v23 = sub_20CEB2E24();

    if ((v23 & 1) == 0)
    {
      v27 = sub_20CEB27B4();
      *v3 = swift_getKeyPath();
      sub_20CEA7994(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      *(v3 + *(v36 + 20)) = v27;
      sub_20CEAD274(v3, v6, type metadata accessor for ImageView);
      swift_storeEnumTagMultiPayload();
      sub_20CEA94F4(&qword_281112738, sub_20CEA90E4, MEMORY[0x277CE1198]);
      sub_20CEA94F4(&qword_2811129C0, type metadata accessor for ImageView, &unk_20CEB3A50);
      sub_20CEB2724();
      v25 = type metadata accessor for ImageView;
      v26 = v3;
      goto LABEL_8;
    }
  }

  *v9 = sub_20CEB26C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_20CEAC908(0, &qword_281112898, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0);
  sub_20CEA826C(v38, &v9[*(v24 + 44)]);
  sub_20CEAD274(v9, v6, sub_20CEA90E4);
  swift_storeEnumTagMultiPayload();
  sub_20CEA94F4(&qword_281112738, sub_20CEA90E4, MEMORY[0x277CE1198]);
  sub_20CEA94F4(&qword_2811129C0, type metadata accessor for ImageView, &unk_20CEB3A50);
  sub_20CEB2724();
  v25 = sub_20CEA90E4;
  v26 = v9;
LABEL_8:
  sub_20CEA9924(v26, v25);
  v28 = *(v16 + 16);
  v28(v19, v21, v15);
  v29 = v35;
  sub_20CEAD274(v14, v35, sub_20CEA909C);
  v30 = v37;
  v28(v37, v19, v15);
  sub_20CEA9068(0);
  sub_20CEAD274(v29, &v30[*(v31 + 48)], sub_20CEA909C);
  sub_20CEA9924(v14, sub_20CEA909C);
  v32 = *(v16 + 8);
  v32(v21, v15);
  sub_20CEA9924(v29, sub_20CEA909C);
  v32(v19, v15);
}

uint64_t sub_20CEA826C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  sub_20CEA92F0(0);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA918C(0, &qword_281112818, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0330]);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = &v38 - v7;
  sub_20CEA9210(0);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ImageView(0);
  v10 = MEMORY[0x28223BE20](v40);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v38 - v13);
  v15 = type metadata accessor for TimeView(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  sub_20CEA918C(0, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v21 - 8);
  v43 = &v38 - v22;
  sub_20CEB2BF4();
  v42 = sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = type metadata accessor for MedicationsWidgetCircularView(0);
  v24 = v23;
  v25 = a1;
  v26 = *(a1 + *(v23 + 28));
  if (v26 == 2 || (v26 & 1) == 0)
  {
    v34 = sub_20CEB27D4();
    *v14 = swift_getKeyPath();
    sub_20CEA7994(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v14 + *(v40 + 20)) = v34;
    sub_20CEAD274(v25 + *(v24 + 24), v20, type metadata accessor for MedicationsWidgetViewModel);
    v20[*(v15 + 20)] = v26;
    sub_20CEAD274(v14, v12, type metadata accessor for ImageView);
    sub_20CEAD274(v20, v18, type metadata accessor for TimeView);
    sub_20CEAD274(v12, v5, type metadata accessor for ImageView);
    sub_20CEA9324(0);
    sub_20CEAD274(v18, &v5[*(v35 + 48)], type metadata accessor for TimeView);
    sub_20CEA9924(v18, type metadata accessor for TimeView);
    sub_20CEA9924(v12, type metadata accessor for ImageView);
    sub_20CEAD274(v5, v45, sub_20CEA92F0);
    swift_storeEnumTagMultiPayload();
    v36 = MEMORY[0x277CE14C0];
    sub_20CEA94F4(&qword_2811126F8, sub_20CEA9210, MEMORY[0x277CE14C0]);
    sub_20CEA94F4(&qword_2811126E8, sub_20CEA92F0, v36);
    v31 = v43;
    sub_20CEB2724();
    sub_20CEA9924(v5, sub_20CEA92F0);
    sub_20CEA9924(v20, type metadata accessor for TimeView);
    v32 = v14;
    v33 = type metadata accessor for ImageView;
  }

  else
  {
    sub_20CEAD274(v25 + *(v23 + 24), v20, type metadata accessor for MedicationsWidgetViewModel);
    v20[*(v15 + 20)] = v26;
    v27 = sub_20CEB27D4();
    *v14 = swift_getKeyPath();
    sub_20CEA7994(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v14 + *(v40 + 20)) = v27;
    sub_20CEAD274(v20, v18, type metadata accessor for TimeView);
    sub_20CEAD274(v14, v12, type metadata accessor for ImageView);
    v28 = v39;
    sub_20CEAD274(v18, v39, type metadata accessor for TimeView);
    sub_20CEA9244(0);
    sub_20CEAD274(v12, v28 + *(v29 + 48), type metadata accessor for ImageView);
    sub_20CEA9924(v12, type metadata accessor for ImageView);
    sub_20CEA9924(v18, type metadata accessor for TimeView);
    sub_20CEAD274(v28, v45, sub_20CEA9210);
    swift_storeEnumTagMultiPayload();
    v30 = MEMORY[0x277CE14C0];
    sub_20CEA94F4(&qword_2811126F8, sub_20CEA9210, MEMORY[0x277CE14C0]);
    sub_20CEA94F4(&qword_2811126E8, sub_20CEA92F0, v30);
    v31 = v43;
    sub_20CEB2724();
    sub_20CEA9924(v28, sub_20CEA9210);
    sub_20CEA9924(v14, type metadata accessor for ImageView);
    v32 = v20;
    v33 = type metadata accessor for TimeView;
  }

  sub_20CEA9924(v32, v33);
  sub_20CEAC4C4(v31, v47);
}

uint64_t sub_20CEA8A24(uint64_t a1)
{
  sub_20CEA9660(0);
  MEMORY[0x28223BE20](v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v4 = sub_20CEB2784();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEA9864(0);
  v6[1] = *(a1 + *(type metadata accessor for MedicationsWidgetCircularView(0) + 24) + 16);
  swift_getKeyPath();
  sub_20CEACB4C(0, &qword_281112688, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_20CEA9778();

  sub_20CEB2984();

  sub_20CEA94F4(&qword_2811128A8, sub_20CEA9660, MEMORY[0x277CDD828]);
  sub_20CEB28B4();
  sub_20CEA9924(v4, sub_20CEA9660);
}

uint64_t sub_20CEA8CA8@<X0>(uint64_t a2@<X8>)
{
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE9C338();
  sub_20CEB2CF4();
  v3 = sub_20CEB2834();
  v5 = v4;
  v7 = v6;
  sub_20CEB28F4();
  v8 = sub_20CEB2804();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_20CEA9984(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_20CEA8DFC()
{
  sub_20CEA8FA0(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v3 = sub_20CEB29A4();
  v3[1] = v4;
  sub_20CEA953C(0);
  sub_20CEA7B80(v0, v3 + *(v5 + 44));
  v11 = v0;
  sub_20CEA95AC(0);
  sub_20CEA94F4(&qword_281112718, sub_20CEA8FA0, MEMORY[0x277CE11A8]);
  sub_20CEA9660(255);
  v7 = v6;
  v8 = sub_20CEA94F4(&qword_2811128A8, sub_20CEA9660, MEMORY[0x277CDD828]);
  v12 = v7;
  v13 = v8;
  swift_getOpaqueTypeConformance2();
  sub_20CEB2844();
  return sub_20CEA9924(v3, sub_20CEA8FA0);
}

void sub_20CEA8FA0(uint64_t a1)
{
  if (!qword_281112710)
  {
    sub_20CEA9034(255);
    sub_20CEA94F4(&qword_2811126D8, sub_20CEA9034, MEMORY[0x277CE14C0]);
    v1 = sub_20CEB2974();
    if (!v2)
    {
      atomic_store(v1, &qword_281112710);
    }
  }
}

void sub_20CEA90E4(uint64_t a1)
{
  if (!qword_281112730)
  {
    sub_20CEA918C(255, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0338]);
    sub_20CEA93D4();
    v1 = sub_20CEB2964();
    if (!v2)
    {
      atomic_store(v1, &qword_281112730);
    }
  }
}

void sub_20CEA918C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_20CEA92B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CEA9358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_20CEA93D4()
{
  result = qword_2811127D0;
  if (!qword_2811127D0)
  {
    sub_20CEA918C(255, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0338]);
    v1 = MEMORY[0x277CE14C0];
    sub_20CEA94F4(&qword_2811126F8, sub_20CEA9210, MEMORY[0x277CE14C0]);
    sub_20CEA94F4(&qword_2811126E8, sub_20CEA92F0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127D0);
  }

  return result;
}

uint64_t sub_20CEA94F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20CEA953C(uint64_t a1)
{
  if (!qword_281112888)
  {
    sub_20CEA9034(255);
    v1 = sub_20CEB2514();
    if (!v2)
    {
      atomic_store(v1, &qword_281112888);
    }
  }
}

void sub_20CEA95AC(uint64_t a1)
{
  if (!qword_281112750)
  {
    sub_20CEA9660(255);
    sub_20CEA94F4(&qword_2811128A8, sub_20CEA9660, MEMORY[0x277CDD828]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112750);
    }
  }
}

void sub_20CEA9660(uint64_t a1)
{
  if (!qword_2811128A0)
  {
    sub_20CEA96C4(255);
    sub_20CEA97F4();
    v1 = sub_20CEB2504();
    if (!v2)
    {
      atomic_store(v1, &qword_2811128A0);
    }
  }
}

void sub_20CEA96C4(uint64_t a1)
{
  if (!qword_281112700)
  {
    sub_20CEACB4C(255, &qword_281112688, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_20CEA9778();
    v1 = sub_20CEB2994();
    if (!v2)
    {
      atomic_store(v1, &qword_281112700);
    }
  }
}

unint64_t sub_20CEA9778()
{
  result = qword_281112680;
  if (!qword_281112680)
  {
    sub_20CEACB4C(255, &qword_281112688, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112680);
  }

  return result;
}

unint64_t sub_20CEA97F4()
{
  result = qword_281112708;
  if (!qword_281112708)
  {
    sub_20CEA96C4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112708);
  }

  return result;
}

void sub_20CEA9864(uint64_t a1)
{
  if (!qword_281112880)
  {
    sub_20CEA96C4(255);
    sub_20CEA98D0();
    v1 = sub_20CEB2514();
    if (!v2)
    {
      atomic_store(v1, &qword_281112880);
    }
  }
}

unint64_t sub_20CEA98D0()
{
  result = qword_281112848;
  if (!qword_281112848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112848);
  }

  return result;
}

uint64_t sub_20CEA9924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CEA9984(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20CEA9994()
{
  sub_20CEACF5C(0);
  v117 = v0;
  MEMORY[0x28223BE20](v0);
  v118 = &v110 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEACFF0(0);
  v115 = v2;
  MEMORY[0x28223BE20](v2);
  v116 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_20CEB1FF4();
  v126 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v124 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20CEB2064();
  MEMORY[0x28223BE20](v136);
  v135 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_20CEB2144();
  v125 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAD084(0);
  v121 = v7;
  MEMORY[0x28223BE20](v7);
  v119 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAD118(0);
  MEMORY[0x28223BE20](v9 - 8);
  v159 = (&v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CEAD14C(0);
  v158 = v11;
  v149 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v157 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_20CEB2124();
  v150 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v155 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_20CEB2014();
  v146 = *(v160 - 8);
  v14 = MEMORY[0x28223BE20](v160);
  v142 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = &v110 - v16;
  v162 = sub_20CEB20A4();
  v153 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_20CEB2094();
  v134 = *(v144 - 8);
  v18 = MEMORY[0x28223BE20](v144);
  v145 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v154 = &v110 - v20;
  v133 = sub_20CEB20B4();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v152 = (&v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CEAD1AC(0);
  v151 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_20CEB2204();
  v141 = *(v148 - 1);
  MEMORY[0x28223BE20](v148);
  v140 = (&v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = sub_20CEB20E4();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v27 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20CEB2184();
  MEMORY[0x28223BE20](v28 - 8);
  v139 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20CEB2344();
  MEMORY[0x28223BE20](v30 - 8);
  v138 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20CEB2324();
  MEMORY[0x28223BE20](v32 - 8);
  v132 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20CEB22D4();
  MEMORY[0x28223BE20](v34 - 8);
  v35 = MEMORY[0x277D83D88];
  sub_20CEA7994(0, &qword_281113028, MEMORY[0x277CC9388], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v110 - v37;
  sub_20CEA7994(0, &qword_281113020, MEMORY[0x277CC93A0], v35);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v110 - v40;
  v128 = sub_20CEB2224();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v43 = &v110 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAD240(0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v110 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20CEB2274();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for MedicationsWidgetViewModel(0);
  sub_20CEAD274(v137 + *(v51 + 32), v46, sub_20CEAD240);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    sub_20CEA9924(v46, sub_20CEAD240);
    return 0;
  }

  v112 = v48;
  v53 = *(v48 + 32);
  v113 = v47;
  v53(v50, v46, v47);
  v54 = sub_20CEB21E4();
  (*(*(v54 - 8) + 56))(v41, 1, 1, v54);
  sub_20CEB21C4();
  v55 = sub_20CEB21D4();
  (*(*(v55 - 8) + 56))(v38, 0, 1, v55);
  sub_20CEB2294();
  sub_20CEB22F4();
  sub_20CEB2334();
  sub_20CEB2174();
  sub_20CEB2214();
  v56 = v140;
  v114 = v43;
  sub_20CEB21B4();
  v111 = v50;
  sub_20CEB21F4();
  v141[1](v56, v148);
  v57 = v152;
  v132 = v27;
  sub_20CEB20C4();
  v58 = v131;
  v59 = v133;
  (*(v131 + 16))(v24, v57, v133);
  sub_20CEA94F4(&qword_281113050, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_20CEB2C04();
  (*(v58 + 8))(v57, v59);
  ++v153;
  v151 = (v134 + 32);
  v152 = (v134 + 16);
  ++v149;
  ++v150;
  v148 = (v146 + 6);
  v140 = (v146 + 4);
  LODWORD(v139) = *MEMORY[0x277CC8A98];
  v138 = (v146 + 13);
  v141 = v146 + 1;
  v146 = (v134 + 8);
  v60 = v144;
  v61 = v145;
  v147 = v24;
  while (1)
  {
    v62 = v161;
    sub_20CEB2C14();
    sub_20CEA94F4(&qword_281113058, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v63 = v162;
    v64 = sub_20CEB2B24();
    (*v153)(v62, v63);
    if (v64)
    {
      sub_20CEA9924(v24, sub_20CEAD1AC);
      v78 = v132;
      sub_20CEB2054();
      sub_20CEA94F4(&qword_281113060, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
      v79 = sub_20CEB2BA4();
      (*(v129 + 8))(v78, v130);
      (*(v127 + 8))(v114, v128);
      (*(v112 + 8))(v111, v113);
      return v79;
    }

    v65 = sub_20CEB2C34();
    v66 = v154;
    (*v152)(v154);
    v65(&v163, 0);
    v67 = v59;
    sub_20CEB2C24();
    (*v151)(v61, v66, v60);
    v68 = v155;
    sub_20CEB2074();
    swift_getKeyPath();
    v69 = v61;
    sub_20CEB2034();
    v70 = v157;
    sub_20CEB2114();

    (*v150)(v68, v156);
    swift_getKeyPath();
    sub_20CEAD2DC();
    v71 = v158;
    v72 = v159;
    sub_20CEB2154();

    (*v149)(v70, v71);
    v73 = v160;
    if ((*v148)(v72, 1, v160) == 1)
    {
      (*v146)(v69, v60);
      sub_20CEA9924(v72, sub_20CEAD118);
      v61 = v69;
      goto LABEL_5;
    }

    v74 = v143;
    (*v140)(v143, v72, v73);
    v75 = v142;
    (*v138)(v142, v139, v73);
    v76 = sub_20CEB2004();
    v77 = *v141;
    (*v141)(v75, v73);
    if (v76)
    {
      break;
    }

    v77(v74, v73);
    v61 = v145;
    v60 = v144;
    (*v146)(v145, v144);
LABEL_5:
    v24 = v147;
    v59 = v67;
  }

  v159 = v77;
  v80 = v119;
  v81 = v145;
  sub_20CEB2084();
  sub_20CEA94F4(&qword_281112650, sub_20CEAD084, MEMORY[0x277D83D30]);
  v82 = v122;
  sub_20CEB20F4();
  sub_20CEA9924(v80, sub_20CEAD084);
  sub_20CEB2134();
  v83 = *(v125 + 8);
  v125 += 8;
  v83(v82, v123);
  sub_20CEA94F4(&qword_281113060, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v163 = sub_20CEB2BA4();
  v164 = v84;
  v85 = v124;
  sub_20CEB1FE4();
  sub_20CE9C338();
  v86 = sub_20CEB2D04();
  v161 = v87;
  v162 = v86;
  v88 = *(v126 + 8);
  v89 = v120;
  v126 += 8;
  v158 = v88;
  v88(v85, v120);

  v90 = *(v137 + *(type metadata accessor for TimeView(0) + 20));
  if (v90 == 2 || (v90 & 1) == 0)
  {
    sub_20CEB2084();
    v102 = sub_20CEB20D4();
    v103 = v118;
    (*(*(v102 - 8) + 16))(v118, v80, v102);
    sub_20CEA9924(v80, sub_20CEAD084);
    sub_20CEA94F4(&qword_281113040, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    result = sub_20CEB2B24();
    v104 = v81;
    v105 = v143;
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_20CEA94F4(&qword_281112608, sub_20CEACF5C, MEMORY[0x277D84348]);
    v106 = v122;
    v107 = v132;
    sub_20CEB20F4();
    sub_20CEA9924(v103, sub_20CEACF5C);
    sub_20CEB2134();
    v83(v106, v123);
    v163 = sub_20CEB2BA4();
    v164 = v108;
    v109 = v124;
    sub_20CEB1FE4();
    v101 = sub_20CEB2D04();
    v158(v109, v89);

    v159(v105, v160);
    (*v146)(v104, v144);
    sub_20CEA9924(v147, sub_20CEAD1AC);
    (*(v129 + 8))(v107, v130);
LABEL_18:
    (*(v127 + 8))(v114, v128);
    (*(v112 + 8))(v111, v113);
    return v101;
  }

  else
  {
    sub_20CEB2084();
    v91 = *(v121 + 36);
    v92 = sub_20CEB20D4();
    v93 = v80 + v91;
    v94 = v116;
    (*(*(v92 - 8) + 16))(v116, v93, v92);
    sub_20CEA9924(v80, sub_20CEAD084);
    sub_20CEA94F4(&qword_281113040, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    result = sub_20CEB2B24();
    v95 = v81;
    v96 = v143;
    if (result)
    {
      sub_20CEA94F4(&qword_27C818540, sub_20CEACFF0, MEMORY[0x277D84338]);
      v97 = v122;
      v98 = v132;
      sub_20CEB20F4();
      sub_20CEA9924(v94, sub_20CEACFF0);
      sub_20CEB2134();
      v83(v97, v123);
      v163 = sub_20CEB2BA4();
      v164 = v99;
      v100 = v124;
      sub_20CEB1FE4();
      v101 = sub_20CEB2D04();
      v158(v100, v89);

      v159(v96, v160);
      (*v146)(v95, v144);
      sub_20CEA9924(v147, sub_20CEAD1AC);
      (*(v129 + 8))(v98, v130);
      goto LABEL_18;
    }

LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_20CEAB2CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  sub_20CEACB9C(0);
  v166 = v3;
  v156 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v155 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA918C(0, &qword_281112800, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0330]);
  v164 = v5;
  MEMORY[0x28223BE20](v5);
  v165 = &v150 - v6;
  sub_20CEACD88(0, &qword_281112810, MEMORY[0x277CE0330]);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = (&v150 - v9);
  sub_20CEAC9A8(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEACA40(0);
  v157 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v158 = &v150 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v159 = &v150 - v22;
  MEMORY[0x28223BE20](v21);
  v160 = &v150 - v23;
  sub_20CEAC988(0);
  v163 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA918C(0, &qword_281112798, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v150 - v28;
  sub_20CEB2BF4();
  v161 = sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = sub_20CE9C6C4();
  v162 = v29;
  if (v30)
  {
    v31 = sub_20CEA9994();
    v33 = v32;

    v168 = v31;
    v169 = v33;
    sub_20CE9C338();
    v34 = sub_20CEB2834();
    v36 = v35;
    v38 = v37;
    sub_20CEB27A4();
    v39 = sub_20CEB2814();
    v41 = v40;
    v42 = v166;
    v44 = v43;

    sub_20CEA9984(v34, v36, v38 & 1);

    sub_20CEB27C4();
    v45 = sub_20CEB27F4();
    v47 = v46;
    LOBYTE(v36) = v48;
    v50 = v49;
    sub_20CEA9984(v39, v41, v44 & 1);

    KeyPath = swift_getKeyPath();
    v168 = v45;
    v169 = v47;
    v170 = v36 & 1;
    v171 = v50;
    v172 = KeyPath;
    v173 = 1;
    v174 = 0;
    sub_20CEACC20(0);
    v53 = v52;
    v54 = sub_20CEACC98();
    v55 = v155;
    sub_20CEB28B4();
    v56 = v45;
    v57 = v162;
    sub_20CEA9984(v56, v47, v36 & 1);

    v58 = v156;
    v156[2](v165, v55, v42);
    swift_storeEnumTagMultiPayload();
    sub_20CEACEB4();
    v168 = v53;
    v169 = v54;
    swift_getOpaqueTypeConformance2();
    sub_20CEB2724();
    (*(v58 + 8))(v55, v42);
  }

  else
  {
    v151 = v18;
    v152 = v14;
    v153 = v8;
    v154 = v12;
    v155 = v26;
    v156 = v10;
    v59 = a1;
    v60 = *(a1 + *(type metadata accessor for TimeView(0) + 20));
    if (v60 == 2 || (v60 & 1) == 0)
    {
      v103 = sub_20CEA9994();
      v105 = v104;

      v168 = v103;
      v169 = v105;
      sub_20CE9C338();
      v106 = sub_20CEB2834();
      v108 = v107;
      v110 = v109;
      sub_20CEB27A4();
      v111 = sub_20CEB2814();
      v113 = v112;
      v115 = v114;
      v150 = v59;

      sub_20CEA9984(v106, v108, v110 & 1);

      sub_20CEB27C4();
      v116 = sub_20CEB27F4();
      v118 = v117;
      LOBYTE(v108) = v119;
      v121 = v120;
      sub_20CEA9984(v111, v113, v115 & 1);

      v168 = v116;
      v169 = v118;
      v170 = v108 & 1;
      v171 = v121;
      v122 = v160;
      sub_20CEB28B4();
      sub_20CEA9984(v116, v118, v108 & 1);

      v123 = swift_getKeyPath();
      v78 = (v157 + 36);
      v124 = &v122[*(v157 + 36)];
      *v124 = v123;
      *(v124 + 1) = 1;
      v124[16] = 0;
      sub_20CEA9994();
      v126 = v125;
      v128 = v127;

      v168 = v126;
      v169 = v128;
      v129 = sub_20CEB2834();
      v131 = v130;
      LOBYTE(v118) = v132;
      sub_20CEB27D4();
      v133 = sub_20CEB2814();
      v135 = v134;
      LOBYTE(v122) = v136;
      v138 = v137;

      sub_20CEA9984(v129, v131, v118 & 1);

      v168 = v133;
      v169 = v135;
      LOBYTE(v129) = v122 & 1;
      v76 = v160;
      v170 = v129;
      v171 = v138;
      v102 = v159;
      sub_20CEB28B4();
      sub_20CEA9984(v133, v135, v129);
    }

    else
    {
      sub_20CEA9994();
      v62 = v61;
      v64 = v63;

      v168 = v62;
      v169 = v64;
      v150 = sub_20CE9C338();
      v65 = sub_20CEB2834();
      v67 = v66;
      LOBYTE(v64) = v68;
      sub_20CEB27D4();
      v69 = sub_20CEB2814();
      v71 = v70;
      v73 = v72;
      v75 = v74;

      sub_20CEA9984(v65, v67, v64 & 1);

      v168 = v69;
      v169 = v71;
      v170 = v73 & 1;
      v171 = v75;
      v76 = v160;
      sub_20CEB28B4();
      sub_20CEA9984(v69, v71, v73 & 1);

      v77 = swift_getKeyPath();
      v78 = (v157 + 36);
      v79 = v76 + *(v157 + 36);
      *v79 = v77;
      *(v79 + 8) = 1;
      *(v79 + 16) = 0;
      v80 = sub_20CEA9994();
      v82 = v81;

      v168 = v80;
      v169 = v82;
      v83 = sub_20CEB2834();
      v85 = v84;
      v87 = v86;
      sub_20CEB27A4();
      v88 = sub_20CEB2814();
      v90 = v89;
      v92 = v91;
      v157 = v93;

      sub_20CEA9984(v83, v85, v87 & 1);

      sub_20CEB27C4();
      v94 = sub_20CEB27F4();
      v96 = v95;
      LOBYTE(v85) = v97;
      v99 = v98;
      sub_20CEA9984(v88, v90, v92 & 1);

      v168 = v94;
      v169 = v96;
      v170 = v85 & 1;
      v171 = v99;
      v100 = v159;
      sub_20CEB28B4();
      v101 = v96;
      v102 = v100;
      sub_20CEA9984(v94, v101, v85 & 1);
    }

    v139 = swift_getKeyPath();
    v140 = v102 + *v78;
    *v140 = v139;
    *(v140 + 8) = 1;
    *(v140 + 16) = 0;
    v141 = v158;
    sub_20CEACDEC(v76, v158, sub_20CEACA40);
    v142 = v151;
    sub_20CEACDEC(v102, v151, sub_20CEACA40);
    v143 = v152;
    sub_20CEACDEC(v141, v152, sub_20CEACA40);
    sub_20CEAC9DC(0);
    sub_20CEACDEC(v142, v143 + *(v144 + 48), sub_20CEACA40);
    sub_20CEACE54(v142, sub_20CEACA40);
    sub_20CEACE54(v141, sub_20CEACA40);
    sub_20CEACDEC(v143, v156, sub_20CEAC9A8);
    swift_storeEnumTagMultiPayload();
    sub_20CEA94F4(&qword_2811126C8, sub_20CEAC9A8, MEMORY[0x277CE14C0]);
    v145 = v155;
    sub_20CEB2724();
    sub_20CEACE54(v143, sub_20CEAC9A8);
    sub_20CEACE54(v102, sub_20CEACA40);
    sub_20CEACE54(v76, sub_20CEACA40);
    sub_20CEACDEC(v145, v165, sub_20CEAC988);
    swift_storeEnumTagMultiPayload();
    sub_20CEACEB4();
    sub_20CEACC20(255);
    v147 = v146;
    v148 = sub_20CEACC98();
    v168 = v147;
    v169 = v148;
    swift_getOpaqueTypeConformance2();
    v57 = v162;
    sub_20CEB2724();
    sub_20CEACE54(v145, sub_20CEAC988);
  }

  sub_20CE99DD4(v57, v167);
}

uint64_t sub_20CEABFDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CEB2634();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA7994(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20CE9FDAC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20CEB2A54();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20CEB2C64();
    v13 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20CEAC1E8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20CEB26C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_20CEAC908(0, &qword_281112890, &qword_281112798, sub_20CEAC988, sub_20CEACB9C);
  return sub_20CEAB2CC(v2, a2 + *(v4 + 44));
}

uint64_t sub_20CEAC268@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_20CEB2A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CE1078];
  sub_20CEACAEC(0, &qword_281112768, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277CE3A58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_20CEABFDC(v5);
  (*(v3 + 8))(v5, v2);
  v21 = sub_20CEB2934();
  v12 = MEMORY[0x277CE1088];
  sub_20CEB2854();

  v21 = v12;
  v22 = v6;
  swift_getOpaqueTypeConformance2();
  v13 = v20;
  sub_20CEB2894();
  (*(v9 + 8))(v11, v8);
  v14 = *(v1 + *(type metadata accessor for ImageView(0) + 20));
  KeyPath = swift_getKeyPath();
  sub_20CEAC740(0);
  v17 = (v13 + *(v16 + 36));
  *v17 = KeyPath;
  v17[1] = v14;
}

uint64_t sub_20CEAC4C4(uint64_t a1, uint64_t a2)
{
  sub_20CEA918C(0, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20CEAC594(uint64_t a1)
{
  sub_20CEA7994(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20CEAC660(uint64_t a1)
{
  type metadata accessor for MedicationsWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_20CEACB4C(319, &qword_281112668, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CEAC740(uint64_t a1)
{
  if (!qword_281112860)
  {
    sub_20CEAC7C0(255);
    sub_20CEAC89C(255, &qword_281112788, &qword_281112770, MEMORY[0x277CE0AE0]);
    v1 = sub_20CEB2524();
    if (!v2)
    {
      atomic_store(v1, &qword_281112860);
    }
  }
}

void sub_20CEAC7C0(uint64_t a1)
{
  if (!qword_281112758)
  {
    sub_20CEACAEC(255, &qword_281112768, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277CE3A58]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112758);
    }
  }
}

void sub_20CEAC89C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CEACB4C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CEB2754();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CEAC908(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_20CEA918C(255, a3, a4, a5, MEMORY[0x277CE0338]);
    v6 = sub_20CEB2514();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_20CEAC9DC(uint64_t a1)
{
  if (!qword_281112850)
  {
    sub_20CEACA40(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281112850);
    }
  }
}

void sub_20CEACA40(uint64_t a1)
{
  if (!qword_281112858)
  {
    sub_20CEACAEC(255, &qword_281112740, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE0D50]);
    sub_20CEAC89C(255, &qword_281112778, &qword_281112660, MEMORY[0x277D83B88]);
    v1 = sub_20CEB2524();
    if (!v2)
    {
      atomic_store(v1, &qword_281112858);
    }
  }
}

void sub_20CEACAEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_20CEACB4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_20CEACB9C(uint64_t a1)
{
  if (!qword_281112748)
  {
    sub_20CEACC20(255);
    sub_20CEACC98();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112748);
    }
  }
}

void sub_20CEACC20(uint64_t a1)
{
  if (!qword_281112870)
  {
    sub_20CEAC89C(255, &qword_281112778, &qword_281112660, MEMORY[0x277D83B88]);
    v1 = sub_20CEB2524();
    if (!v2)
    {
      atomic_store(v1, &qword_281112870);
    }
  }
}

unint64_t sub_20CEACC98()
{
  result = qword_281112878;
  if (!qword_281112878)
  {
    sub_20CEACC20(255);
    sub_20CEACD38(&qword_281112780, &qword_281112778, &qword_281112660, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112878);
  }

  return result;
}

uint64_t sub_20CEACD38(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CEAC89C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CEACD88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_20CEAC9A8(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_20CEACDEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CEACE54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CEACEB4()
{
  result = qword_2811127C0;
  if (!qword_2811127C0)
  {
    sub_20CEAC988(255);
    sub_20CEA94F4(&qword_2811126C8, sub_20CEAC9A8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127C0);
  }

  return result;
}

void sub_20CEACF5C(uint64_t a1)
{
  if (!qword_281112600)
  {
    sub_20CEB20D4();
    sub_20CEA94F4(&qword_281113048, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    v1 = sub_20CEB2DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_281112600);
    }
  }
}

void sub_20CEACFF0(uint64_t a1)
{
  if (!qword_281112610)
  {
    sub_20CEB20D4();
    sub_20CEA94F4(&qword_281113048, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    v1 = sub_20CEB2DB4();
    if (!v2)
    {
      atomic_store(v1, &qword_281112610);
    }
  }
}

void sub_20CEAD084(uint64_t a1)
{
  if (!qword_281112658)
  {
    sub_20CEB20D4();
    sub_20CEA94F4(&qword_281113048, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    v1 = sub_20CEB2C44();
    if (!v2)
    {
      atomic_store(v1, &qword_281112658);
    }
  }
}

void sub_20CEAD14C(uint64_t a1)
{
  if (!qword_281113038)
  {
    sub_20CEB2034();
    v1 = sub_20CEB2164();
    if (!v2)
    {
      atomic_store(v1, &qword_281113038);
    }
  }
}

void sub_20CEAD1AC(uint64_t a1)
{
  if (!qword_281112618)
  {
    sub_20CEB20B4();
    sub_20CEA94F4(&qword_281113050, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
    v1 = sub_20CEB2DA4();
    if (!v2)
    {
      atomic_store(v1, &qword_281112618);
    }
  }
}

uint64_t sub_20CEAD274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20CEAD2DC()
{
  result = qword_281113068;
  if (!qword_281113068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113068);
  }

  return result;
}

unint64_t sub_20CEAD330()
{
  result = qword_281112868;
  if (!qword_281112868)
  {
    sub_20CEAC740(255);
    sub_20CEACAEC(255, &qword_281112768, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277CE3A58]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20CEACD38(&qword_281112790, &qword_281112788, &qword_281112770, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112868);
  }

  return result;
}

void sub_20CEAD458(uint64_t a1)
{
  if (!qword_281112720)
  {
    sub_20CEA918C(255, &qword_281112798, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0338]);
    sub_20CEAD500();
    v1 = sub_20CEB2964();
    if (!v2)
    {
      atomic_store(v1, &qword_281112720);
    }
  }
}

unint64_t sub_20CEAD500()
{
  result = qword_2811127A0;
  if (!qword_2811127A0)
  {
    sub_20CEA918C(255, &qword_281112798, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0338]);
    sub_20CEACEB4();
    sub_20CEACC20(255);
    sub_20CEACC98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127A0);
  }

  return result;
}

void sub_20CEAD61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MedicationsWidgetRectangularView(uint64_t a1)
{
  result = qword_281112EA8;
  if (!qword_281112EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CEAD6E0(uint64_t a1)
{
  sub_20CEAD61C(319, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20CEAD61C(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_20CEAD61C(319, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_20CEB009C(319, &qword_2811128B0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MedicationsWidgetViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_20CEAD87C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CEB2634();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDFB98];
  sub_20CEAD61C(0, &qword_27C8184F8, MEMORY[0x277CDFB98], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_20CEB0A78(v2, &v15 - v10, &qword_27C8184F8, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CEB2544();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_20CEB2C64();
    v14 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20CEADAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CEB2634();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3BA0];
  sub_20CEAD61C(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for MedicationsWidgetRectangularView(0);
  sub_20CEB0A78(v1 + *(v11 + 20), v10, &qword_2811128D0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CEB2A54();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_20CEB2C64();
    v14 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20CEADCCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CEB2634();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3AF8];
  sub_20CEAD61C(0, &qword_2811128D8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for MedicationsWidgetRectangularView(0);
  sub_20CEB0A78(v1 + *(v11 + 24), v10, &qword_2811128D8, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CEB2A44();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_20CEB2C64();
    v14 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20CEADEF8()
{
  v1 = sub_20CEB2634();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MedicationsWidgetRectangularView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_20CEB2C64();
    v7 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();
    sub_20CEB0828(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_20CEAE050()
{
  v1 = sub_20CEB2744();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAF808(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB0224(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_20CEB26D4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_20CEB0284(0);
  sub_20CEAE2C8(v0, &v7[*(v12 + 44)]);
  sub_20CEB29B4();
  sub_20CEB2554();
  sub_20CE9A3A8(v7, v11);
  v13 = &v11[*(v9 + 36)];
  v14 = v24;
  *(v13 + 4) = v23;
  *(v13 + 5) = v14;
  *(v13 + 6) = v25;
  v15 = v20;
  *v13 = v19;
  *(v13 + 1) = v15;
  v16 = v22;
  *(v13 + 2) = v21;
  *(v13 + 3) = v16;
  v18[1] = sub_20CEB2914();
  sub_20CEB2734();
  sub_20CEB031C();
  sub_20CEB28D4();
  (*(v2 + 8))(v4, v1);

  return sub_20CEB071C(v11, sub_20CEB0224);
}

uint64_t sub_20CEAE2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v154 = type metadata accessor for MedicationsWidgetRectangularView(0);
  v136 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v137 = v3;
  v138 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAFFF8(0);
  v164 = v4;
  MEMORY[0x28223BE20](v4);
  v160 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAFF6C(0, &qword_27C8185E0, sub_20CEAFFF8, sub_20CEB00EC, MEMORY[0x277CE0E98]);
  v167 = v6;
  v140 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v139 = &v135 - v7;
  sub_20CEAFE78(0);
  v169 = v8;
  v142 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v141 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB03CC(0, &qword_27C818620, MEMORY[0x277CE0330]);
  v163 = v10;
  MEMORY[0x28223BE20](v10);
  v165 = (&v135 - v11);
  v159 = sub_20CEB2544();
  v158 = *(v159 - 8);
  v12 = MEMORY[0x28223BE20](v159);
  v157 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v156 = &v135 - v14;
  sub_20CEAFDFC(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v168 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v166 = &v135 - v18;
  v155 = sub_20CEB2A44();
  v153 = *(v155 - 8);
  v19 = MEMORY[0x28223BE20](v155);
  v152 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v151 = &v135 - v21;
  v22 = sub_20CEB2A54();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20CEB26A4();
  MEMORY[0x28223BE20](v26 - 8);
  sub_20CEAFAE8(0);
  v145 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAFF6C(0, &qword_27C818578, sub_20CEAFAE8, sub_20CEAFC04, MEMORY[0x277CE0C38]);
  v144 = v30;
  v143 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v135 - v31;
  sub_20CEAF9F4(0);
  v148 = v33;
  v147 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v146 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAF974(0);
  v149 = v35;
  MEMORY[0x28223BE20](v35);
  v150 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAF90C(0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v162 = &v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v171 = &v135 - v40;
  v41 = sub_20CEB2BF4();
  v161 = sub_20CEB2BE4();
  v135 = v41;
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEB2694();
  sub_20CEB2684();
  sub_20CEADAA0(v25);
  (*(v23 + 8))(v25, v22);
  sub_20CEB2934();
  sub_20CEB2664();

  sub_20CEB2684();
  v154 = a1 + *(v154 + 32);
  sub_20CEB2674();
  sub_20CEB2684();
  sub_20CEB26B4();
  v42 = sub_20CEB2824();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_20CEAFB08(0);
  v50 = &v29[*(v49 + 36)];
  sub_20CEAD61C(0, &qword_27C818590, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v51 = a1;
  v53 = *(v52 + 28);
  v54 = *MEMORY[0x277CE1050];
  v55 = sub_20CEB2944();
  v56 = v50 + v53;
  v57 = v51;
  (*(*(v55 - 8) + 104))(v56, v54, v55);
  *v50 = swift_getKeyPath();
  *v29 = v42;
  *(v29 + 1) = v44;
  v29[16] = v46 & 1;
  *(v29 + 3) = v48;
  v58 = sub_20CEB27E4();
  KeyPath = swift_getKeyPath();
  v60 = v145;
  v61 = &v29[*(v145 + 36)];
  *v61 = KeyPath;
  v61[1] = v58;
  v62 = sub_20CEAFC04();
  sub_20CEB2894();
  sub_20CEB0918(v29, sub_20CEAFAE8);
  v175 = v60;
  v176 = v62;
  swift_getOpaqueTypeConformance2();
  v63 = v146;
  v64 = v144;
  sub_20CEB2854();
  (*(v143 + 8))(v32, v64);
  v65 = v151;
  sub_20CEADCCC(v151);
  v66 = v152;
  sub_20CEB2A34();
  LOBYTE(v64) = sub_20CEB2A24();
  v67 = *(v153 + 8);
  v68 = v66;
  v69 = v155;
  v67(v68, v155);
  v67(v65, v69);
  if (v64)
  {
    v70 = sub_20CEB2914();
  }

  else
  {
    v70 = sub_20CEB28F4();
  }

  v71 = v70;
  v72 = v150;
  v73 = v149;
  v74 = swift_getKeyPath();
  (*(v147 + 32))(v72, v63, v148);
  v75 = (v72 + *(v73 + 36));
  *v75 = v74;
  v75[1] = v71;
  if (qword_281112628 != -1)
  {
    swift_once();
  }

  v175 = sub_20CEB2104();
  v176 = v76;
  sub_20CE9C338();
  v77 = sub_20CEB2834();
  v79 = v78;
  v81 = v80;
  sub_20CEB058C();
  sub_20CEB28C4();
  sub_20CEA9984(v77, v79, v81 & 1);

  sub_20CEB071C(v72, sub_20CEAF974);
  v82 = v156;
  sub_20CEAD87C(v156);
  v83 = v157;
  sub_20CEB2534();
  sub_20CEB077C(&qword_27C818638, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  v84 = v159;
  LOBYTE(v77) = sub_20CEB2D24();
  v85 = *(v158 + 8);
  v85(v83, v84);
  v85(v82, v84);
  if (v77)
  {
    sub_20CEB29C4();
    v175 = sub_20CEB2B94();
    v176 = v86;
    v87 = sub_20CEB2834();
    v160 = v88;
    LODWORD(v157) = v89;
    v158 = v90;
    sub_20CEB29D4();
    v175 = sub_20CEB2B94();
    v176 = v91;
    v92 = sub_20CEB2834();
    v94 = v93;
    v96 = v95;
    sub_20CEB2924();
    v97 = sub_20CEB2804();
    v99 = v98;
    v101 = v100;
    v103 = v102;

    sub_20CEA9984(v92, v94, v96 & 1);

    v104 = v157 & 1;
    v172 = v157 & 1;
    v174 = v157 & 1;
    LOBYTE(v92) = v101 & 1;
    v173 = v101 & 1;
    v105 = v87;
    v106 = v160;
    sub_20CEB0A68(v87, v160, v157 & 1);
    v107 = v158;

    sub_20CEB0A68(v97, v99, v92);

    sub_20CEB0A68(v105, v106, v104);

    sub_20CEB0A68(v97, v99, v92);

    sub_20CEA9984(v97, v99, v92);

    v159 = v105;
    sub_20CEA9984(v105, v106, v172);

    v108 = v174;
    v109 = v173;
    v110 = v165;
    *v165 = v105;
    v110[1] = v106;
    *(v110 + 16) = v108;
    v110[3] = v107;
    v110[4] = v97;
    v110[5] = v99;
    *(v110 + 48) = v109;
    v110[7] = v103;
    swift_storeEnumTagMultiPayload();
    sub_20CEAD61C(0, &qword_27C8185C8, sub_20CEAFE1C, MEMORY[0x277CE14B8]);
    sub_20CEB0978();
    v111 = sub_20CEB00EC();
    v175 = v164;
    v176 = v111;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v175 = v167;
    v176 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v113 = v166;
    sub_20CEB2724();
    sub_20CEA9984(v97, v99, v92);

    sub_20CEA9984(v159, v160, v104);
  }

  else
  {
    *v160 = sub_20CEB2794();
    sub_20CEB2BE4();
    sub_20CEB2BD4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CEA9864(0);
    v175 = *(v154 + 16);
    swift_getKeyPath();
    v114 = v138;
    sub_20CEB07C4(v57, v138);
    v115 = (*(v136 + 80) + 16) & ~*(v136 + 80);
    v116 = swift_allocObject();
    sub_20CEB0834(v114, v116 + v115);
    sub_20CEB009C(0, &qword_281112688, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_20CEA9778();

    v117 = v160;
    sub_20CEB2984();

    v118 = sub_20CEB27A4();
    v119 = swift_getKeyPath();
    v120 = v164;
    v121 = &v117[*(v164 + 36)];
    *v121 = v119;
    v121[1] = v118;
    v122 = sub_20CEB00EC();
    v123 = v139;
    sub_20CEB28E4();
    sub_20CEB0918(v117, sub_20CEAFFF8);
    v175 = v120;
    v176 = v122;
    v124 = swift_getOpaqueTypeConformance2();
    v125 = v141;
    v126 = v167;
    sub_20CEB28B4();
    (*(v140 + 8))(v123, v126);
    v127 = v142;
    v128 = v169;
    (*(v142 + 16))(v165, v125, v169);
    swift_storeEnumTagMultiPayload();
    sub_20CEAD61C(0, &qword_27C8185C8, sub_20CEAFE1C, MEMORY[0x277CE14B8]);
    sub_20CEB0978();
    v175 = v126;
    v176 = v124;
    swift_getOpaqueTypeConformance2();
    v113 = v166;
    sub_20CEB2724();
    (*(v127 + 8))(v125, v128);
  }

  v129 = v171;
  v130 = v162;
  sub_20CEB0A00(v171, v162, sub_20CEAF90C);
  v131 = v168;
  sub_20CEB0A00(v113, v168, sub_20CEAFDFC);
  v132 = v170;
  sub_20CEB0A00(v130, v170, sub_20CEAF90C);
  sub_20CEAF89C(0);
  sub_20CEB0A00(v131, v132 + *(v133 + 48), sub_20CEAFDFC);
  sub_20CEB071C(v113, sub_20CEAFDFC);
  sub_20CEB071C(v129, sub_20CEAF90C);
  sub_20CEB071C(v131, sub_20CEAFDFC);
  sub_20CEB071C(v130, sub_20CEAF90C);
}

uint64_t sub_20CEAF6A4@<X0>(uint64_t a2@<X8>)
{
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE9C338();

  v3 = sub_20CEB2834();
  v5 = v4;
  v7 = v6;
  if (sub_20CEADEF8())
  {
    sub_20CEB2904();
  }

  v8 = sub_20CEB2804();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_20CEA9984(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

void sub_20CEAF808(uint64_t a1)
{
  if (!qword_27C818548)
  {
    sub_20CEAD61C(255, &qword_27C818550, sub_20CEAF89C, MEMORY[0x277CE14B8]);
    sub_20CEB019C();
    v1 = sub_20CEB2964();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818548);
    }
  }
}

void sub_20CEAF89C(uint64_t a1)
{
  if (!qword_27C818558)
  {
    sub_20CEAF90C(255);
    sub_20CEAFDFC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C818558);
    }
  }
}

void sub_20CEAF90C(uint64_t a1)
{
  if (!qword_27C818560)
  {
    sub_20CEAF974(255);
    sub_20CEB2764();
    v1 = sub_20CEB2524();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818560);
    }
  }
}

void sub_20CEAF974(uint64_t a1)
{
  if (!qword_27C818568)
  {
    sub_20CEAF9F4(255);
    sub_20CEAFB98(255, &qword_27C8185B0, &qword_27C8185B8, MEMORY[0x277CE0F78]);
    v1 = sub_20CEB2524();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818568);
    }
  }
}

void sub_20CEAF9F4(uint64_t a1)
{
  if (!qword_27C818570)
  {
    sub_20CEAFF6C(255, &qword_27C818578, sub_20CEAFAE8, sub_20CEAFC04, MEMORY[0x277CE0C38]);
    sub_20CEAFAE8(255);
    sub_20CEAFC04();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C818570);
    }
  }
}

void sub_20CEAFB08(uint64_t a1)
{
  if (!qword_27C818588)
  {
    sub_20CEAD61C(255, &qword_27C818590, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v1 = sub_20CEB2524();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818588);
    }
  }
}

void sub_20CEAFB98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CEB009C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CEB2754();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_20CEAFC04()
{
  result = qword_27C818598;
  if (!qword_27C818598)
  {
    sub_20CEAFAE8(255);
    sub_20CEAFC84();
    sub_20CEAFD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818598);
  }

  return result;
}

unint64_t sub_20CEAFC84()
{
  result = qword_27C8185A0;
  if (!qword_27C8185A0)
  {
    sub_20CEAFB08(255);
    sub_20CEAFD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8185A0);
  }

  return result;
}

unint64_t sub_20CEAFD04()
{
  result = qword_27C8185A8;
  if (!qword_27C8185A8)
  {
    sub_20CEAD61C(255, &qword_27C818590, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8185A8);
  }

  return result;
}

unint64_t sub_20CEAFD8C()
{
  result = qword_281112790;
  if (!qword_281112790)
  {
    sub_20CEAFB98(255, &qword_281112788, &qword_281112770, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112790);
  }

  return result;
}

void sub_20CEAFE1C()
{
  if (!qword_27C8185D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8185D0);
    }
  }
}

void sub_20CEAFE78(uint64_t a1)
{
  if (!qword_27C8185D8)
  {
    sub_20CEAFF6C(255, &qword_27C8185E0, sub_20CEAFFF8, sub_20CEB00EC, MEMORY[0x277CE0E98]);
    sub_20CEAFFF8(255);
    sub_20CEB00EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C8185D8);
    }
  }
}

void sub_20CEAFF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_20CEB0018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_20CEAFB98(255, &qword_281112788, &qword_281112770, MEMORY[0x277CE0AE0]);
    v4 = sub_20CEB2524();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CEB009C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20CEB00EC()
{
  result = qword_27C8185F0;
  if (!qword_27C8185F0)
  {
    sub_20CEAFFF8(255);
    sub_20CEB077C(&qword_2811128A8, sub_20CEA9660, MEMORY[0x277CDD828]);
    sub_20CEAFD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8185F0);
  }

  return result;
}

unint64_t sub_20CEB019C()
{
  result = qword_27C8185F8;
  if (!qword_27C8185F8)
  {
    sub_20CEAD61C(255, &qword_27C818550, sub_20CEAF89C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8185F8);
  }

  return result;
}

void sub_20CEB0224(uint64_t a1)
{
  if (!qword_27C818600)
  {
    sub_20CEAF808(255);
    v1 = sub_20CEB2524();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818600);
    }
  }
}

void sub_20CEB0284(uint64_t a1)
{
  if (!qword_27C818608)
  {
    sub_20CEAD61C(255, &qword_27C818550, sub_20CEAF89C, MEMORY[0x277CE14B8]);
    v1 = sub_20CEB2514();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818608);
    }
  }
}

unint64_t sub_20CEB031C()
{
  result = qword_27C818610;
  if (!qword_27C818610)
  {
    sub_20CEB0224(255);
    sub_20CEB077C(&qword_27C818618, sub_20CEAF808, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818610);
  }

  return result;
}

void sub_20CEB03CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_20CEAD61C(255, &qword_27C8185C8, sub_20CEAFE1C, MEMORY[0x277CE14B8]);
    v7 = v6;
    sub_20CEAFE78(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_20CEB046C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CEB25B4();
  *a1 = result;
  return result;
}

uint64_t sub_20CEB04C4(uint64_t a1)
{
  v2 = sub_20CEB2944();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20CEB2574();
}

unint64_t sub_20CEB058C()
{
  result = qword_27C818628;
  if (!qword_27C818628)
  {
    sub_20CEAF974(255);
    sub_20CEAFF6C(255, &qword_27C818578, sub_20CEAFAE8, sub_20CEAFC04, MEMORY[0x277CE0C38]);
    sub_20CEAFAE8(255);
    sub_20CEAFC04();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20CEB06AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818628);
  }

  return result;
}

unint64_t sub_20CEB06AC()
{
  result = qword_27C818630;
  if (!qword_27C818630)
  {
    sub_20CEAFB98(255, &qword_27C8185B0, &qword_27C8185B8, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818630);
  }

  return result;
}

uint64_t sub_20CEB071C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CEB077C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CEB07C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsWidgetRectangularView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEB0828(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_20CEB0834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsWidgetRectangularView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEB0898@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MedicationsWidgetRectangularView(0);

  return sub_20CEAF6A4(a2);
}

uint64_t sub_20CEB0918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CEB0978()
{
  result = qword_27C818640;
  if (!qword_27C818640)
  {
    sub_20CEAD61C(255, &qword_27C8185C8, sub_20CEAFE1C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818640);
  }

  return result;
}

uint64_t sub_20CEB0A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CEB0A68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20CEB0A78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CEAD61C(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_20CEB0B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MedicationsWidgetInlineView(uint64_t a1)
{
  result = qword_281112FF0;
  if (!qword_281112FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CEB0BD0(uint64_t a1)
{
  sub_20CEB0B0C(319, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20CEB0B0C(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MedicationsWidgetViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20CEB0CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CEB2634();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB0B0C(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MedicationsWidgetInlineView(0);
  sub_20CE9FDAC(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20CEB2A54();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20CEB2C64();
    v13 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_20CEB0EFC@<Q0>(uint64_t a1@<X8>)
{
  sub_20CEB175C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = sub_20CEB26D4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEB1A94(0);
  v7 = &v5[*(v6 + 44)];
  *v7 = sub_20CEB2654();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_20CEB1AFC(0);
  sub_20CEB10AC(v1, &v7[*(v8 + 44)]);

  sub_20CEB29B4();
  sub_20CEB2554();
  sub_20CE9AC88(v5, a1);
  sub_20CEB1B94(0);
  v10 = a1 + *(v9 + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_20CEB10AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  sub_20CEACAEC(0, &qword_281112740, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE0D50]);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v53 - v4;
  sub_20CEB1988(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v53 - v8;
  v9 = sub_20CEB2A54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEACAEC(0, &qword_27C818670, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277CE0C38]);
  v55 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  sub_20CEB18F4(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v57 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v63 = &v53 - v20;
  sub_20CEB2BF4();
  v56 = sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEB0CE8(v12);
  (*(v10 + 8))(v12, v9);
  v64 = sub_20CEB2934();
  v21 = MEMORY[0x277CE1088];
  v22 = MEMORY[0x277CE1078];
  sub_20CEB2894();

  v54 = a1;
  if (qword_281112628 != -1)
  {
    swift_once();
  }

  v64 = sub_20CEB2104();
  v65 = v23;
  sub_20CE9C338();
  v24 = sub_20CEB2834();
  v26 = v25;
  v28 = v27;
  v64 = v21;
  v65 = v22;
  v29 = 1;
  swift_getOpaqueTypeConformance2();
  v30 = v55;
  sub_20CEB28C4();
  sub_20CEA9984(v24, v26, v28 & 1);

  (*(v14 + 8))(v16, v30);
  v31 = *(v54 + *(type metadata accessor for MedicationsWidgetInlineView(0) + 24) + 16);
  v34 = *(v31 + 16);
  v32 = v31 + 16;
  v33 = v34;
  if (v34)
  {
    v35 = (v32 + 16 * v33);
    v36 = v35[1];
    v64 = *v35;
    v65 = v36;

    v37 = sub_20CEB2834();
    v39 = v38;
    v64 = v37;
    v65 = v38;
    v41 = v40 & 1;
    v66 = v40 & 1;
    v67 = v42;
    v43 = v53;
    sub_20CEB28B4();
    sub_20CEA9984(v37, v39, v41);

    v45 = v58;
    v44 = v59;
    v46 = v60;
    (*(v58 + 32))(v60, v43, v59);
    v29 = 0;
  }

  else
  {
    v44 = v59;
    v46 = v60;
    v45 = v58;
  }

  (*(v45 + 56))(v46, v29, 1, v44);
  v47 = v63;
  v48 = v57;
  sub_20CEB1BF4(v63, v57, sub_20CEB18F4);
  v49 = v61;
  sub_20CEB1BF4(v46, v61, sub_20CEB1988);
  v50 = v62;
  sub_20CEB1BF4(v48, v62, sub_20CEB18F4);
  sub_20CEB1884(0);
  sub_20CEB1BF4(v49, v50 + *(v51 + 48), sub_20CEB1988);
  sub_20CEB1C5C(v46, sub_20CEB1988);
  sub_20CEB1C5C(v47, sub_20CEB18F4);
  sub_20CEB1C5C(v49, sub_20CEB1988);
  sub_20CEB1C5C(v48, sub_20CEB18F4);
}

void sub_20CEB175C(uint64_t a1)
{
  if (!qword_27C818648)
  {
    sub_20CEB17F0(255);
    sub_20CEB1D6C(&qword_27C818688, sub_20CEB17F0, MEMORY[0x277CE1138]);
    v1 = sub_20CEB2964();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818648);
    }
  }
}

void sub_20CEB17F0(uint64_t a1)
{
  if (!qword_27C818650)
  {
    sub_20CEB0B0C(255, &qword_27C818658, sub_20CEB1884, MEMORY[0x277CE14B8]);
    sub_20CEB1A0C();
    v1 = sub_20CEB2954();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818650);
    }
  }
}

void sub_20CEB1884(uint64_t a1)
{
  if (!qword_27C818660)
  {
    sub_20CEB18F4(255);
    sub_20CEB1988(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C818660);
    }
  }
}

void sub_20CEB18F4(uint64_t a1)
{
  if (!qword_27C818668)
  {
    sub_20CEACAEC(255, &qword_27C818670, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277CE0C38]);
    sub_20CEB2764();
    v1 = sub_20CEB2524();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818668);
    }
  }
}

void sub_20CEB1988(uint64_t a1)
{
  if (!qword_27C818678)
  {
    sub_20CEACAEC(255, &qword_281112740, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE0D50]);
    v1 = sub_20CEB2CE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818678);
    }
  }
}

unint64_t sub_20CEB1A0C()
{
  result = qword_27C818680;
  if (!qword_27C818680)
  {
    sub_20CEB0B0C(255, &qword_27C818658, sub_20CEB1884, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818680);
  }

  return result;
}

void sub_20CEB1A94(uint64_t a1)
{
  if (!qword_27C818690)
  {
    sub_20CEB17F0(255);
    v1 = sub_20CEB2514();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818690);
    }
  }
}

void sub_20CEB1AFC(uint64_t a1)
{
  if (!qword_27C818698)
  {
    sub_20CEB0B0C(255, &qword_27C818658, sub_20CEB1884, MEMORY[0x277CE14B8]);
    v1 = sub_20CEB2514();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818698);
    }
  }
}

void sub_20CEB1B94(uint64_t a1)
{
  if (!qword_27C8186A0)
  {
    sub_20CEB175C(255);
    v1 = sub_20CEB2524();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8186A0);
    }
  }
}

uint64_t sub_20CEB1BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CEB1C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CEB1CBC()
{
  result = qword_27C8186A8;
  if (!qword_27C8186A8)
  {
    sub_20CEB1B94(255);
    sub_20CEB1D6C(&unk_27C8186B0, sub_20CEB175C, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8186A8);
  }

  return result;
}

uint64_t sub_20CEB1D6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MedicationsWidgetEntry(uint64_t a1)
{
  result = qword_281112CB0;
  if (!qword_281112CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CEB1E28(uint64_t a1)
{
  result = sub_20CEB2274();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MedicationsWidgetViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20CEB1EAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CEB2274();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_20CEB1F14@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MedicationsWidgetViewModel(0);
  sub_20CEB2AC4();
  v3 = sub_20CEB2AD4();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}