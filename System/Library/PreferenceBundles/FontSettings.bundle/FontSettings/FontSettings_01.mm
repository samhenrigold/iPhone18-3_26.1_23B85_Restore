unint64_t sub_22578()
{
  v2 = qword_91218;
  if (!qword_91218)
  {
    sub_B24C(&qword_91210, &qword_7F150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22600()
{
  v2 = qword_91220;
  if (!qword_91220)
  {
    sub_B24C(&qword_91208, &qword_7F148);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22688(uint64_t a1)
{
  v3 = a1 + *(sub_1A88(&qword_91228, &qword_7F158) + 44);
  sub_209FC(*v3, *(v3 + 8), *(v3 + 16) & 1);

  v4 = v3 + *(sub_1A88(&qword_91230, &qword_7F160) + 64);

  v5 = *(sub_1A88(&qword_91238, &qword_7F168) + 52);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(v4 + v5);
  return a1;
}

uint64_t sub_22794(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_1A88(&qword_91228, &qword_7F158) + 44);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  sub_20C1C(v6, v7, v8 & 1);
  v10 = a2 + v5;
  *v10 = v6;
  *(v10 + 8) = v7;
  *(v10 + 16) = v8 & 1;
  v9 = *(a1 + v5 + 24);

  *(v10 + 24) = v9;
  *(v10 + 32) = *(a1 + v5 + 32);
  *(v10 + 40) = *(a1 + v5 + 40);
  v11 = *(sub_1A88(&qword_91230, &qword_7F160) + 64);
  v17 = (a1 + v5 + v11);
  v12 = *v17;

  v15 = a2 + v5 + v11;
  *(v10 + v11) = v12;
  v13 = *(v17 + 1);

  *(v15 + 8) = v13;
  v14 = *(v17 + 2);

  *(v15 + 16) = v14;
  v16 = *(sub_1A88(&qword_91238, &qword_7F168) + 52);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(v15 + v16, &v17[v16]);
  return a2;
}

uint64_t sub_2298C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22ACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_22CB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_22FFC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_7BD04();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_2313C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_7BD04();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2322C(uint64_t a1)
{
  v3 = sub_7BD04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_232FC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_7BD04();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 24), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_2343C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_7BD04();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 24), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_2352C(uint64_t a1)
{
  v5 = sub_23630(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_236D8(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_7BD04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_23630(uint64_t a1)
{
  v5 = qword_91338;
  if (!qword_91338)
  {
    type metadata accessor for FontAssetFamily(255);
    sub_20C60();
    v4 = sub_7C0F4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_91338);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_236D8(uint64_t a1)
{
  v5 = qword_91340;
  if (!qword_91340)
  {
    type metadata accessor for FontSettingsModel(255);
    sub_1AC10();
    v4 = sub_7C1B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_91340);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_237A8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_7BD04();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_238E8(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_7BD04();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_239D8()
{
  sub_B24C(&qword_91000, &qword_7F028);
  sub_B24C(&qword_910C8, &qword_7F098);
  sub_1E708();
  sub_1E838();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BF4(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_23C3C()
{
  v2 = qword_91410;
  if (!qword_91410)
  {
    sub_B24C(&qword_91408, &qword_7F6E8);
    sub_1EB48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91410);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_23CE0(void *a1)
{
}

unint64_t sub_23D24()
{
  v2 = qword_91418;
  if (!qword_91418)
  {
    sub_B24C(&qword_91238, &qword_7F168);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91418);
    return WitnessTable;
  }

  return v2;
}

char *sub_23DAC(char *a1)
{

  v3 = *(sub_1A88(&qword_91238, &qword_7F168) + 52);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

uint64_t sub_23E4C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_20C1C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);

  result = a2;
  *(a2 + 24) = v8;
  return result;
}

char *sub_23ED4(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(a1 + 2);

  *(a2 + 2) = v6;
  v7 = *(sub_1A88(&qword_91238, &qword_7F168) + 52);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(&a2[v7], &a1[v7]);
  return a2;
}

uint64_t sub_23FBC()
{
  v4 = type metadata accessor for DownloadView(0);
  v1 = *(*(v4 - 8) + 80);
  v5 = v0 + ((v1 + 16) & ~v1);

  v6 = *(v4 + 24);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 8))(v5 + v6);
  return swift_deallocObject();
}

char *sub_240CC(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v4 = *(type metadata accessor for DownloadView(0) + 24);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_24170()
{
  type metadata accessor for DownloadView(0);

  return sub_21C34();
}

uint64_t sub_241D4(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91200, &qword_7F140) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

unint64_t sub_24298()
{
  v2 = qword_91420;
  if (!qword_91420)
  {
    sub_B24C(&qword_91200, &qword_7F140);
    sub_1EAC0();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_24340(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91200, &qword_7F140) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

unint64_t sub_24420()
{
  v2 = qword_91428;
  if (!qword_91428)
  {
    sub_B24C(&qword_911B8, &qword_7F110);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_244A8()
{
  v2 = qword_91430;
  if (!qword_91430)
  {
    sub_B24C(&qword_911C0, &qword_7F118);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91430);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_24530(uint64_t a1)
{
  v1 = sub_1A88(&qword_911B8, &qword_7F110);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_911C0, &qword_7F118) + 52);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_245F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_911B8, &qword_7F110);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_911C0, &qword_7F118) + 52);
  v3 = sub_7BD04();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_246D4(uint64_t a1)
{
  v1 = sub_1A88(&qword_910F8, &qword_7F0A8);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    sub_1A88(&qword_91438, &qword_7F6F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_1A88(&qword_91128, &qword_7F0C0);
      (*(*(v4 - 8) + 8))(a1);
      sub_1A88(&qword_91118, &qword_7F0B8);

      v7 = a1 + *(sub_1A88(&qword_91108, &qword_7F0B0) + 36);
      v5 = sub_7C574();
      (*(*(v5 - 8) + 8))(v7);
    }

    else
    {
      v2 = sub_1A88(&qword_91128, &qword_7F0C0);
      (*(*(v2 - 8) + 8))(a1);
      sub_1A88(&qword_91118, &qword_7F0B8);

      v8 = a1 + *(sub_1A88(&qword_91108, &qword_7F0B0) + 36);
      v3 = sub_7C574();
      (*(*(v3 - 8) + 8))(v8);
    }
  }

  return a1;
}

char *sub_24930(char *a1, char *a2)
{
  v18 = sub_1A88(&qword_910F8, &qword_7F0A8);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v10 = sub_1A88(&qword_910C8, &qword_7F098);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    sub_1A88(&qword_91438, &qword_7F6F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_1A88(&qword_91128, &qword_7F0C0);
      (*(*(v6 - 8) + 32))(a2, a1);
      v7 = sub_1A88(&qword_91118, &qword_7F0B8);
      *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
      v8 = sub_1A88(&qword_91108, &qword_7F0B0);
      v13 = &a2[*(v8 + 36)];
      v12 = &a1[*(v8 + 36)];
      v9 = sub_7C574();
      (*(*(v9 - 8) + 32))(v13, v12);
    }

    else
    {
      v2 = sub_1A88(&qword_91128, &qword_7F0C0);
      (*(*(v2 - 8) + 32))(a2, a1);
      v3 = sub_1A88(&qword_91118, &qword_7F0B8);
      *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
      v4 = sub_1A88(&qword_91108, &qword_7F0B0);
      v15 = &a2[*(v4 + 36)];
      v14 = &a1[*(v4 + 36)];
      v5 = sub_7C574();
      (*(*(v5 - 8) + 32))(v15, v14);
    }

    swift_storeEnumTagMultiPayload();
    (*(v19 + 56))(a2, 0, 1, v18);
  }

  return a2;
}

char *sub_24C50(char *a1, char *a2)
{
  v26 = sub_1A88(&qword_910F8, &qword_7F0A8);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(a1, 1))
  {
    v10 = sub_1A88(&qword_910C8, &qword_7F098);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    sub_1A88(&qword_91438, &qword_7F6F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_1A88(&qword_91128, &qword_7F0C0);
      (*(*(v6 - 8) + 16))(a2, a1);
      v7 = sub_1A88(&qword_91118, &qword_7F0B8);
      v14 = &a2[*(v7 + 36)];
      v13 = &a1[*(v7 + 36)];
      v12 = *v13;

      *v14 = v12;
      v15 = *(v13 + 1);

      *(v14 + 1) = v15;
      v8 = sub_1A88(&qword_91108, &qword_7F0B0);
      v17 = &a2[*(v8 + 36)];
      v16 = &a1[*(v8 + 36)];
      v9 = sub_7C574();
      (*(*(v9 - 8) + 16))(v17, v16);
    }

    else
    {
      v2 = sub_1A88(&qword_91128, &qword_7F0C0);
      (*(*(v2 - 8) + 16))(a2, a1);
      v3 = sub_1A88(&qword_91118, &qword_7F0B8);
      v20 = &a2[*(v3 + 36)];
      v19 = &a1[*(v3 + 36)];
      v18 = *v19;

      *v20 = v18;
      v21 = *(v19 + 1);

      *(v20 + 1) = v21;
      v4 = sub_1A88(&qword_91108, &qword_7F0B0);
      v23 = &a2[*(v4 + 36)];
      v22 = &a1[*(v4 + 36)];
      v5 = sub_7C574();
      (*(*(v5 - 8) + 16))(v23, v22);
    }

    swift_storeEnumTagMultiPayload();
    (*(v27 + 56))(a2, 0, 1, v26);
  }

  return a2;
}

uint64_t sub_24FE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91118, &qword_7F0B8) + 36);
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);

  *(a2 + v5 + 8) = v7;
  v8 = *(sub_1A88(&qword_91108, &qword_7F0B0) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

unint64_t sub_25138()
{
  v2 = qword_91440;
  if (!qword_91440)
  {
    sub_7C544();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91440);
    return WitnessTable;
  }

  return v2;
}

_OWORD *sub_251B8(_OWORD *a1, _OWORD *a2)
{
  v23 = sub_1A88(&qword_91098, &qword_7F068);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v23 - 8) + 64));
  }

  else
  {
    sub_1A88(&qword_910A0, &qword_7F070);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_1A88(&qword_910C0, &qword_7F090);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a2, a1, *(*(v13 - 8) + 64));
      }

      else
      {
        *a2 = *a1;
        v8 = type metadata accessor for ProcessingView(0);
        v12 = a2 + *(v8 + 20);
        v11 = a1 + *(v8 + 20);
        v9 = sub_7BD04();
        (*(*(v9 - 8) + 32))(v12, v11);
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_1A88(&qword_910A8, &qword_7F078);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A88(&qword_910B8, &qword_7F088);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *a2 = *a1;
          v6 = type metadata accessor for CachedDownloadView(0);
          v15 = a2 + *(v6 + 20);
          v14 = a1 + *(v6 + 20);
          v7 = sub_7BD04();
          (*(*(v7 - 8) + 32))(v15, v14);
        }

        else
        {
          *a2 = *a1;
          v4 = type metadata accessor for ProcessingView(0);
          v17 = a2 + *(v4 + 20);
          v16 = a1 + *(v4 + 20);
          v5 = sub_7BD04();
          (*(*(v5 - 8) + 32))(v17, v16);
        }

        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v20 = sub_1A88(&qword_910B0, &qword_7F080);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a2, a1, *(*(v20 - 8) + 64));
        }

        else
        {
          *a2 = *a1;
          a2[1] = a1[1];
          v2 = type metadata accessor for DownloadView(0);
          v19 = a2 + *(v2 + 24);
          v18 = a1 + *(v2 + 24);
          v3 = sub_7BD04();
          (*(*(v3 - 8) + 32))(v19, v18);
          swift_storeEnumTagMultiPayload();
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_25624(void *a1, void *a2)
{
  sub_1A88(&qword_91098, &qword_7F068);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v11 = a1[1];

    a2[1] = v11;
    v12 = a1[2];

    a2[2] = v12;
    a2[3] = a1[3];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1A88(&qword_910A0, &qword_7F070);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A88(&qword_910C0, &qword_7F090);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *a2 = *a1;
        v13 = a1[1];

        a2[1] = v13;
        v14 = a1[2];

        a2[2] = v14;
        a2[3] = a1[3];
      }

      else
      {
        *a2 = *a1;
        v15 = a1[1];

        a2[1] = v15;
        v8 = type metadata accessor for ProcessingView(0);
        v17 = a2 + *(v8 + 20);
        v16 = a1 + *(v8 + 20);
        v9 = sub_7BD04();
        (*(*(v9 - 8) + 16))(v17, v16);
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_1A88(&qword_910A8, &qword_7F078);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A88(&qword_910B8, &qword_7F088);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *a2 = *a1;
          v18 = a1[1];

          a2[1] = v18;
          v6 = type metadata accessor for CachedDownloadView(0);
          v20 = a2 + *(v6 + 20);
          v19 = a1 + *(v6 + 20);
          v7 = sub_7BD04();
          (*(*(v7 - 8) + 16))(v20, v19);
        }

        else
        {
          *a2 = *a1;
          v21 = a1[1];

          a2[1] = v21;
          v4 = type metadata accessor for ProcessingView(0);
          v23 = a2 + *(v4 + 20);
          v22 = a1 + *(v4 + 20);
          v5 = sub_7BD04();
          (*(*(v5 - 8) + 16))(v23, v22);
        }
      }

      else
      {
        sub_1A88(&qword_910B0, &qword_7F080);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *a2 = *a1;
          v24 = a1[1];

          a2[1] = v24;
          v25 = a1[2];

          a2[2] = v25;
          a2[3] = a1[3];
        }

        else
        {
          *a2 = *a1;
          v26 = a1[1];

          a2[1] = v26;
          v27 = a1[2];

          a2[2] = v27;
          a2[3] = a1[3];
          v2 = type metadata accessor for DownloadView(0);
          v29 = a2 + *(v2 + 24);
          v28 = a1 + *(v2 + 24);
          v3 = sub_7BD04();
          (*(*(v3 - 8) + 16))(v29, v28);
        }
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

_OWORD *sub_25BC0(_OWORD *a1, _OWORD *a2)
{
  v9 = sub_1A88(&qword_910C0, &qword_7F090);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = type metadata accessor for ProcessingView(0);
    v6 = a2 + *(v2 + 20);
    v5 = a1 + *(v2 + 20);
    v3 = sub_7BD04();
    (*(*(v3 - 8) + 32))(v6, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_25CD0(void *a1, void *a2)
{
  sub_1A88(&qword_910C0, &qword_7F090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v5 = a1[1];

    a2[1] = v5;
    v6 = a1[2];

    a2[2] = v6;
    a2[3] = a1[3];
  }

  else
  {
    *a2 = *a1;
    v7 = a1[1];

    a2[1] = v7;
    v2 = type metadata accessor for ProcessingView(0);
    v9 = a2 + *(v2 + 20);
    v8 = a1 + *(v2 + 20);
    v3 = sub_7BD04();
    (*(*(v3 - 8) + 16))(v9, v8);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_25E30(uint64_t a1)
{
  sub_1A88(&qword_910C0, &qword_7F090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v3 = a1 + *(type metadata accessor for ProcessingView(0) + 20);
    v1 = sub_7BD04();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_25F04(uint64_t a1)
{
  sub_1A88(&qword_910A0, &qword_7F070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910C0, &qword_7F090);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v6 = a1 + *(type metadata accessor for ProcessingView(0) + 20);
      v4 = sub_7BD04();
      (*(*(v4 - 8) + 8))(v6);
      return a1;
    }

    goto LABEL_11;
  }

  sub_1A88(&qword_910A8, &qword_7F078);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A88(&qword_910B0, &qword_7F080);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v9 = a1 + *(type metadata accessor for DownloadView(0) + 24);
      v1 = sub_7BD04();
      (*(*(v1 - 8) + 8))(v9);
      return a1;
    }

LABEL_11:

    return a1;
  }

  sub_1A88(&qword_910B8, &qword_7F088);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = a1 + *(type metadata accessor for CachedDownloadView(0) + 20);
    v3 = sub_7BD04();
    (*(*(v3 - 8) + 8))(v7);
  }

  else
  {

    v8 = a1 + *(type metadata accessor for ProcessingView(0) + 20);
    v2 = sub_7BD04();
    (*(*(v2 - 8) + 8))(v8);
  }

  return a1;
}

uint64_t sub_261F8(uint64_t a1)
{
  sub_1A88(&qword_910B8, &qword_7F088);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = a1 + *(type metadata accessor for CachedDownloadView(0) + 20);
    v2 = sub_7BD04();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {

    v5 = a1 + *(type metadata accessor for ProcessingView(0) + 20);
    v1 = sub_7BD04();
    (*(*(v1 - 8) + 8))(v5);
  }

  return a1;
}

_OWORD *sub_26318(_OWORD *a1, _OWORD *a2)
{
  sub_1A88(&qword_910A8, &qword_7F078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910B8, &qword_7F088);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v6 = type metadata accessor for CachedDownloadView(0);
      v10 = a2 + *(v6 + 20);
      v9 = a1 + *(v6 + 20);
      v7 = sub_7BD04();
      (*(*(v7 - 8) + 32))(v10, v9);
    }

    else
    {
      *a2 = *a1;
      v4 = type metadata accessor for ProcessingView(0);
      v12 = a2 + *(v4 + 20);
      v11 = a1 + *(v4 + 20);
      v5 = sub_7BD04();
      (*(*(v5 - 8) + 32))(v12, v11);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v15 = sub_1A88(&qword_910B0, &qword_7F080);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v15 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      a2[1] = a1[1];
      v2 = type metadata accessor for DownloadView(0);
      v14 = a2 + *(v2 + 24);
      v13 = a1 + *(v2 + 24);
      v3 = sub_7BD04();
      (*(*(v3 - 8) + 32))(v14, v13);
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_265D8(void *a1, void *a2)
{
  sub_1A88(&qword_910A8, &qword_7F078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910B8, &qword_7F088);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v9 = a1[1];

      a2[1] = v9;
      v6 = type metadata accessor for CachedDownloadView(0);
      v11 = a2 + *(v6 + 20);
      v10 = a1 + *(v6 + 20);
      v7 = sub_7BD04();
      (*(*(v7 - 8) + 16))(v11, v10);
    }

    else
    {
      *a2 = *a1;
      v12 = a1[1];

      a2[1] = v12;
      v4 = type metadata accessor for ProcessingView(0);
      v14 = a2 + *(v4 + 20);
      v13 = a1 + *(v4 + 20);
      v5 = sub_7BD04();
      (*(*(v5 - 8) + 16))(v14, v13);
    }
  }

  else
  {
    sub_1A88(&qword_910B0, &qword_7F080);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v15 = a1[1];

      a2[1] = v15;
      v16 = a1[2];

      a2[2] = v16;
      a2[3] = a1[3];
    }

    else
    {
      *a2 = *a1;
      v17 = a1[1];

      a2[1] = v17;
      v18 = a1[2];

      a2[2] = v18;
      a2[3] = a1[3];
      v2 = type metadata accessor for DownloadView(0);
      v20 = a2 + *(v2 + 24);
      v19 = a1 + *(v2 + 24);
      v3 = sub_7BD04();
      (*(*(v3 - 8) + 16))(v20, v19);
    }
  }

  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26938(uint64_t a1)
{
  sub_1A88(&qword_910A8, &qword_7F078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910B8, &qword_7F088);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v5 = a1 + *(type metadata accessor for CachedDownloadView(0) + 20);
      v3 = sub_7BD04();
      (*(*(v3 - 8) + 8))(v5);
    }

    else
    {

      v6 = a1 + *(type metadata accessor for ProcessingView(0) + 20);
      v2 = sub_7BD04();
      (*(*(v2 - 8) + 8))(v6);
    }
  }

  else
  {
    sub_1A88(&qword_910B0, &qword_7F080);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {

      v7 = a1 + *(type metadata accessor for DownloadView(0) + 24);
      v1 = sub_7BD04();
      (*(*(v1 - 8) + 8))(v7);
    }
  }

  return a1;
}

uint64_t sub_26B48(uint64_t a1)
{
  sub_1A88(&qword_910B0, &qword_7F080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v3 = a1 + *(type metadata accessor for DownloadView(0) + 24);
    v1 = sub_7BD04();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_26C28()
{
  v2 = *v0;

  return v2;
}

double sub_26C98()
{
  v4 = *(v0 + 8);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAE4();
  sub_26D50(&v4);
  return v2;
}

void *sub_26D10(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

void sub_26D7C(double a1)
{
  v5 = *(v1 + 8);
  sub_26D10(&v5, &v4);
  sub_26D10(&v5, &v3);
  v2 = v5;
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAF4();
  sub_26D50(&v2);
  sub_26D50(&v5);
}

uint64_t sub_26E18()
{
  v4 = *(v0 + 8);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CB04();
  sub_26D50(&v4);
  return v2;
}

double sub_26EA8()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_26EE0(uint64_t a1, double a2)
{

  *(v2 + 8) = a2;
  *(v2 + 16) = a1;
}

double sub_26F6C()
{
  v4 = *(v0 + 24);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91450, &qword_7F718);
  sub_7CAE4();
  sub_26D50(&v4);
  return v2;
}

void sub_26FE4(double a1)
{
  v5 = *(v1 + 24);
  sub_26D10(&v5, &v4);
  sub_26D10(&v5, &v3);
  v2 = v5;
  sub_1A88(&qword_91450, &qword_7F718);
  sub_7CAF4();
  sub_26D50(&v2);
  sub_26D50(&v5);
}

uint64_t sub_27080()
{
  v4 = *(v0 + 24);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91450, &qword_7F718);
  sub_7CB04();
  sub_26D50(&v4);
  return v2;
}

double sub_27110()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_27148(uint64_t a1, double a2)
{

  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
}

double sub_27190()
{
  v4 = *(v0 + 40);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91450, &qword_7F718);
  sub_7CAE4();
  sub_26D50(&v4);
  return v2;
}

void sub_27208(double a1)
{
  v5 = *(v1 + 40);
  sub_26D10(&v5, &v4);
  sub_26D10(&v5, &v3);
  v2 = v5;
  sub_1A88(&qword_91450, &qword_7F718);
  sub_7CAF4();
  sub_26D50(&v2);
  sub_26D50(&v5);
}

uint64_t sub_272A4()
{
  v4 = *(v0 + 40);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91450, &qword_7F718);
  sub_7CB04();
  sub_26D50(&v4);
  return v2;
}

double sub_27334()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_2736C(uint64_t a1, double a2)
{

  *(v2 + 40) = a2;
  *(v2 + 48) = a1;
}

double sub_273B4()
{
  v14 = 0.0;
  v20 = v0;
  v18[2] = 0x4058000000000000;
  v24 = *(v0 + 8);
  sub_26D10(&v24, v18);
  v17 = v24;
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAE4();
  sub_26D50(&v24);
  v15 = v16;
  sub_275DC();
  sub_7D744();
  v3 = v19;
  v14 = v19;
  v23 = *(v4 + 8);
  sub_26D10(&v23, &v13);
  v12 = v23;
  sub_7CAE4();
  v6 = *&v11[2];
  sub_26D50(&v23);
  v22 = *(v4 + 24);
  sub_26D10(&v22, v11);
  v10 = v22;
  sub_1A88(&qword_91450, &qword_7F718);
  sub_7CAE4();
  v5 = *&v9[2];
  sub_26D50(&v22);
  v21 = *(v4 + 40);
  sub_26D10(&v21, v9);
  sub_7CAE4();
  sub_26D50(&v21);
  v7 = v6 * (v5 + v8);
  if (v7 < 8.0)
  {
    return 8.0;
  }

  if (v3 >= v7)
  {
    return v6 * (v5 + v8);
  }

  return v3;
}

unint64_t sub_275DC()
{
  v2 = qword_91458;
  if (!qword_91458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91458);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_27654@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v37 = sub_288B4;
  v56 = &opaque type descriptor for <<opaque return type of View.tabViewStyle<A>(_:)>>;
  v70 = &opaque type descriptor for <<opaque return type of View.indexViewStyle<A>(_:)>>;
  v79 = &opaque type descriptor for <<opaque return type of View.navigationTitle<A>(_:)>>;
  v80 = sub_2BC20;
  v87 = sub_2BC80;
  v93 = sub_2BDE0;
  v111 = &opaque type descriptor for <<opaque return type of View.gesture<A>(_:including:)>>;
  v113 = sub_2C284;
  v131 = 0;
  __n = 56;
  memset(&v130[7], 0, 0x38uLL);
  memcpy(__dst, __src, sizeof(__dst));
  v32 = __dst[0];
  v26 = __dst[1];
  v33 = __dst[2];
  v27 = __dst[3];
  v34 = __dst[4];
  v28 = __dst[5];
  v29 = __dst[6];
  v17 = 0;
  v92 = sub_7C074();
  v89 = *(v92 - 8);
  v90 = v92 - 8;
  v12 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v91 = &v12 - v12;
  v98 = sub_1A88(&qword_91460, &qword_7F720);
  v95 = *(v98 - 8);
  v96 = v98 - 8;
  v13 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v98);
  v97 = &v12 - v13;
  v108 = sub_1A88(&qword_91468, &qword_7F728);
  v99 = *(v108 - 8);
  v100 = v108 - 8;
  v14 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v101 = &v12 - v14;
  v51 = sub_7C314();
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v15 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v50 = &v12 - v15;
  v67 = sub_7C334();
  v57 = *(v67 - 8);
  v58 = v67 - 8;
  v16 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v59 = &v12 - v16;
  v41 = sub_7C144();
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v18 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v40 = &v12 - v18;
  v53 = sub_7C164();
  v42 = *(v53 - 8);
  v43 = v53 - 8;
  v19 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v44 = &v12 - v19;
  v52 = sub_1A88(&qword_91470, &qword_7F730);
  v45 = *(v52 - 8);
  v46 = v52 - 8;
  v20 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v47 = &v12 - v20;
  v66 = sub_1A88(&qword_91478, &qword_7F738);
  v60 = *(v66 - 8);
  v61 = v66 - 8;
  v21 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v62 = &v12 - v21;
  v75 = sub_1A88(&qword_91480, &qword_7F740);
  v72 = *(v75 - 8);
  v73 = v75 - 8;
  v22 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v74 = &v12 - v22;
  v85 = sub_1A88(&qword_91488, &qword_7F748);
  v82 = *(v85 - 8);
  v83 = v85 - 8;
  v23 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85);
  v84 = &v12 - v23;
  v107 = sub_1A88(&qword_91490, &qword_7F750);
  v24 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v107);
  v102 = &v12 - v24;
  v118 = sub_1A88(&qword_91498, &qword_7F758);
  v115 = *(v118 - 8);
  v116 = v118 - 8;
  v25 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v117 = &v12 - v25;
  v120 = sub_1A88(&qword_914A0, &qword_7F760);
  v31 = *(*(v120 - 8) + 64);
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(__src);
  v122 = &v12 - v30;
  v2 = __chkstk_darwin(v1);
  v123 = &v12 - v3;
  v131 = &v12 - v3;
  v130[7] = v32;
  v130[8] = v4;
  v130[9] = v33;
  v130[10] = v5;
  v130[11] = v34;
  *&v130[12] = v2;
  v130[13] = v6;
  sub_2880C(v7, v130);
  v35 = v124;
  v124[2] = __src;
  v36 = sub_1A88(&qword_914A8, &qword_7F768);
  sub_288BC();
  sub_7CC34();
  sub_28B04(__src);
  sub_7C134();
  sub_2931C(v40, v44);
  (*(v38 + 8))(v40, v41);
  v54 = sub_293D0();
  v55 = &protocol witness table for PageTabViewStyle;
  sub_7C714();
  (*(v42 + 8))(v44, v53);
  (*(v45 + 8))(v47, v52);
  sub_7C304();
  sub_29458(v50, v59);
  (*(v48 + 8))(v50, v51);
  v129[2] = v52;
  v129[3] = v53;
  v129[4] = v54;
  v129[5] = v55;
  v112 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = sub_2950C();
  sub_7C744();
  v8 = __src;
  (*(v57 + 8))(v59, v67);
  (*(v60 + 8))(v62, v66);
  v63 = *v8;

  v64 = sub_65E4C();
  v65 = v9;

  v71 = v129;
  v129[0] = v64;
  v129[1] = v65;
  v128[7] = v66;
  v128[8] = v67;
  v128[9] = OpaqueTypeConformance2;
  v128[10] = v69;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = sub_198A4();
  v76 = &type metadata for String;
  sub_7C824();
  sub_1F58(v71);
  (*(v72 + 8))(v74, v75);
  sub_2880C(__src, v128);
  v103 = 72;
  v104 = 7;
  v81 = swift_allocObject();
  memcpy((v81 + 16), __src, __n);
  v127[7] = v75;
  v127[8] = v76;
  v127[9] = v77;
  v127[10] = v78;
  v10 = swift_getOpaqueTypeConformance2();
  sub_62174(v80, v81, v85, v10);

  (*(v82 + 8))(v84, v85);
  sub_298D8();
  sub_7C044();
  sub_2880C(__src, v127);
  v88 = swift_allocObject();
  memcpy((v88 + 16), __src, __n);
  v86 = sub_2BC88();
  sub_2BD08();
  sub_7CC04();

  (*(v89 + 8))(v91, v92);
  sub_2880C(__src, v126);
  v94 = swift_allocObject();
  memcpy((v94 + 16), __src, __n);
  sub_2BDE8();
  sub_7CBF4();

  (*(v95 + 8))(v97, v98);
  v109 = sub_2BE70();
  v110 = sub_2C100();
  sub_29C3C(v107, v108);
  sub_7C914();
  (*(v99 + 8))(v101, v108);
  sub_2C188(v102);
  sub_2880C(__src, v125);
  v114 = swift_allocObject();
  memcpy((v114 + 16), __src, __n);
  v124[4] = v107;
  v124[5] = v108;
  v124[6] = v109;
  v124[7] = v110;
  swift_getOpaqueTypeConformance2();
  sub_7C894();

  (*(v115 + 8))(v117, v118);
  v121 = sub_2C28C();
  sub_1991C(v122, v120, v123);
  sub_2C3B4(v122);
  sub_2C478(v123, v122);
  sub_1991C(v122, v120, v119);
  sub_2C3B4(v122);
  return sub_2C3B4(v123);
}

uint64_t sub_28470@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = &v46;
  v25 = a1;
  v26 = a2;
  v31 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v62 = *(a1 + 6);
  v61 = v4;
  v60 = v3;
  v59 = v2;
  v27 = *(&v2 + 1);
  v35 = v2;
  v28 = *(&v3 + 1);
  v36 = v3;
  v29 = *(&v4 + 1);
  v37 = v4;
  v30 = v62;
  v32 = sub_1A88(&qword_914A8, &qword_7F768);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(0);
  v34 = (v19 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v5);
  v38 = (v19 - v7);
  v58 = v19 - v7;
  *&v54 = v35;
  *(&v54 + 1) = v8;
  *&v55 = v36;
  *(&v55 + 1) = v9;
  *&v56 = v37;
  *(&v56 + 1) = v6;
  v57 = v10;
  v39 = sub_7D184();
  v40 = sub_7D174();
  v41 = sub_7D154();
  v42 = v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2880C(v25, v45);
  v19[2] = v19;
  __chkstk_darwin(v19);
  v19[0] = &v19[-4];
  v19[-2] = v12;
  v19[1] = sub_1A88(&qword_914D0, &qword_7F778);
  sub_289FC();
  sub_7CA14();
  sub_28B04(v25);
  v13 = *v24;
  v49 = v24[1];
  v48 = v13;
  v14 = v24[2];
  v15 = v24[3];
  v16 = v24[4];
  v53 = v47;
  v52 = v16;
  v51 = v15;
  v50 = v14;
  v43[1] = v49;
  v43[0] = v48;
  v44 = v47;
  v43[4] = v16;
  v43[3] = v15;
  v43[2] = v14;
  v21 = sub_7C5B4();
  v20 = sub_1A88(&qword_914C0, &qword_7F770);
  v17 = sub_28964();
  v22 = v43;
  sub_29178(v21, 0x4046000000000000, 0, v20, v17, v34);
  sub_2E244(v22);
  v23 = sub_288BC();
  sub_1991C(v34, v32, v38);
  sub_2E2D0(v34);
  sub_2E3B8(v38, v34);
  sub_1991C(v34, v32, v26);
  sub_2E2D0(v34);
  sub_2E2D0(v38);
}

void *sub_2880C(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  a2[1] = a1[1];
  v4 = a1[2];

  a2[2] = v4;
  a2[3] = a1[3];
  v6 = a1[4];

  a2[4] = v6;
  a2[5] = a1[5];
  v8 = a1[6];

  result = a2;
  a2[6] = v8;
  return result;
}

unint64_t sub_288BC()
{
  v2 = qword_914B0;
  if (!qword_914B0)
  {
    sub_B24C(&qword_914A8, &qword_7F768);
    sub_28964();
    sub_28A84();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_28964()
{
  v2 = qword_914B8;
  if (!qword_914B8)
  {
    sub_B24C(&qword_914C0, &qword_7F770);
    sub_289FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_289FC()
{
  v2 = qword_914C8;
  if (!qword_914C8)
  {
    sub_B24C(&qword_914D0, &qword_7F778);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_28A84()
{
  v2 = qword_914D8;
  if (!qword_914D8)
  {
    sub_7C514();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914D8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_28B04(void *a1)
{
}

uint64_t sub_28B54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v29, 0, 24);
  memset(v27, 0, sizeof(v27));
  memset(__b, 0, sizeof(__b));
  v29[3] = a1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *a1;

  v13 = *(v12 + 16);
  v13;

  v2 = sub_273B4();
  sub_620F4(v2);

  sub_6680C();

  nullsub_1();
  v28[0] = v3;
  v28[1] = v4;
  v28[2] = v5;
  sub_2E54C();
  sub_1991C(v28, &unk_8ED90, v29);
  sub_2E5C8(v28);
  v14 = *a1;

  v15 = *(v14 + 16);
  v15;

  v6 = sub_273B4();
  sub_620F4(v6);

  sub_67148();

  nullsub_1();
  v26[0] = v7;
  v26[1] = v8;
  v26[2] = v9;
  sub_1991C(v26, &unk_8ED90, v27);
  sub_2E5C8(v26);
  v16 = *a1;

  v10 = sub_273B4();
  sub_28F14(v16, v30, v10);
  memcpy(__dst, v30, sizeof(__dst));
  sub_2E608();
  sub_1991C(__dst, &unk_8EE10, __b);
  sub_2C558(__dst);
  sub_2E684(v29, v22);
  v23[0] = v22;
  sub_2E684(v27, v21);
  v23[1] = v21;
  sub_2CAB8(__b, v20);
  v23[2] = v20;
  v19[0] = &unk_8ED90;
  v19[1] = &unk_8ED90;
  v19[2] = &unk_8EE10;
  sub_4E6CC(v23, 3uLL, v19, a2);
  sub_2C558(v20);
  sub_2E5C8(v21);
  sub_2E5C8(v22);
  sub_2C558(__b);
  sub_2E5C8(v27);
  sub_2E5C8(v29);
}

uint64_t sub_28F14@<X0>(uint64_t a1@<X0>, double *a2@<X8>, CGFloat a3@<D0>)
{
  v33 = a2;
  v28 = a1;
  v16 = a3;
  v29 = __b;
  v24 = 0;
  memset(__b, 0, sizeof(__b));
  v37 = 0;
  v36 = 0.0;
  v25 = 0;
  v21 = sub_7CC64();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v15 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v28);
  v23 = (&v15 - v15);
  v37 = v4;
  v36 = v3;
  v32 = 25.0;
  __b[3] = 25.0;
  v17 = *(v4 + 16);
  v17;
  v30 = sub_620F4(v16);

  v30;
  __b[0] = v30;
  v31 = sub_68A4C();

  __b[1] = v31;
  v18 = sub_6227C();
  v34 = (v18 + sub_622B4()) * 1.3;
  *&__b[4] = v34;
  v27 = sub_7CC74();
  v26 = sub_7D714();
  v22 = v5;
  v6 = sub_2AC90();
  v7 = v19;
  v8 = v23;
  *v23 = v34;
  v8[1] = v6;
  (*(v7 + 104))();
  sub_7CC84();
  sub_71DDC(v26, v27);
  v35 = v9;

  __b[2] = v35;

  sub_2C558(v29);
  v10 = v31;
  v11 = v32;
  v12 = v33;
  v13 = v34;
  result = v35;
  *v33 = v30;
  *(v12 + 1) = v10;
  *(v12 + 2) = result;
  v12[3] = v11;
  v12[4] = v13;
  return result;
}

uint64_t sub_29178@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a6;
  v19 = a1;
  v20 = a2;
  v23 = a3;
  v21 = a4;
  v22 = a5;
  v34 = a4;
  v24 = sub_7C514();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v28 = &v12 - v27;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else
  {
    sub_7BEA4();
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = 0;
  }

  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17 & 1;
  sub_7C504();
  sub_7C994();
  return (*(v25 + 8))(v28, v24);
}

uint64_t sub_2931C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v5[1] = a1;
  v2 = sub_7C144();
  v7 = *(v2 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v9 = v5 - v6;
  (*(v7 + 16))(v3);
  return sub_7C154();
}

unint64_t sub_293D0()
{
  v2 = qword_914E0;
  if (!qword_914E0)
  {
    sub_B24C(&qword_91470, &qword_7F730);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v5[1] = a1;
  v2 = sub_7C314();
  v7 = *(v2 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v9 = v5 - v6;
  (*(v7 + 16))(v3);
  return sub_7C324();
}

unint64_t sub_2950C()
{
  v2 = qword_914E8;
  if (!qword_914E8)
  {
    sub_7C334();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914E8);
    return WitnessTable;
  }

  return v2;
}

void sub_2958C(uint64_t *a1, double a2, double a3)
{
  v25 = 0.0;
  v26 = 0.0;
  v24 = 0.0;
  v23 = 0.0;
  v30 = a2;
  v31 = a3;
  v29 = a1;

  sub_6680C();

  v12 = sub_7CF04();
  v9 = sub_1A88(&qword_91620, &qword_7FB48);
  v10 = sub_7D714();
  v7 = v3;
  sub_BA0C(&NSFontAttributeName, v3);
  v6 = *a1;

  v8 = *(v6 + 16);
  v8;

  v7[4] = type metadata accessor for CTFont(0);
  v7[1] = v8;
  sub_71DDC(v10, v9);
  type metadata accessor for Key(0);
  sub_EFA0();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;

  [v12 sizeWithAttributes:isa];
  v27 = v4;
  v28 = v5;
  v14 = v4;
  v16 = v5;

  v25 = v14;
  v26 = v16;
  v24 = (a2 - 50.0) / v14;
  v23 = (a3 - 100.0) / v16;
  v17 = *a1;

  v18 = *(v17 + 16);
  v18;

  sub_6213C();

  *&v22[3] = v24;
  *&v22[2] = v23;
  sub_275DC();
  sub_7D754();
  v32 = *(a1 + 1);
  sub_26D10(&v32, v22);
  sub_26D10(&v32, &v21);
  v20 = v32;
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAF4();
  sub_26D50(&v20);
  sub_26D50(&v32);
}

uint64_t sub_298E4(uint64_t a1, uint64_t a2)
{
  v6[3] = a1;
  v6[2] = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7C054();
  v7 = *(a2 + 24);
  sub_26D10(&v7, v6);
  sub_26D10(&v7, &v5);
  v4 = v7;
  sub_1A88(&qword_91450, &qword_7F718);
  sub_7CAF4();
  sub_26D50(&v4);
  sub_26D50(&v7);
}

uint64_t sub_29A28(uint64_t a1, uint64_t a2)
{
  v15[3] = a1;
  v15[2] = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(a2 + 24);
  sub_26D10(&v18, v15);
  v14 = v18;
  sub_1A88(&qword_91450, &qword_7F718);
  sub_7CAE4();
  v3 = *&v13[2];
  sub_26D50(&v18);
  v17 = *(a2 + 40);
  sub_26D10(&v17, v13);
  v11 = v17;
  sub_7CAE4();
  v12 = v12 + v3;
  v4 = v12;
  sub_26D10(&v17, &v10);
  v9 = v17;
  *&v8[2] = v4;
  sub_7CAF4();
  sub_26D50(&v9);
  sub_26D50(&v17);
  v16 = *(a2 + 24);
  sub_26D10(&v16, v8);
  sub_26D10(&v16, &v7);
  v6 = v16;
  sub_7CAF4();
  sub_26D50(&v6);
  sub_26D50(&v16);
}

uint64_t sub_29C64(uint64_t a1, uint64_t a2)
{
  v14[3] = a1;
  v14[2] = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7C564();
  if (sub_7C554())
  {
    v15 = *(a2 + 40);
    sub_26D10(&v15, v9);
    v7 = v15;
    sub_1A88(&qword_91450, &qword_7F718);
    sub_7CAE4();
    v8 = v8 + 1.0;
    sub_26D10(&v15, &v6);
    v5 = v15;
    sub_7CAF4();
    sub_26D50(&v5);
    sub_26D50(&v15);
  }

  else
  {
    v16 = *(a2 + 40);
    sub_26D10(&v16, v14);
    v12 = v16;
    sub_1A88(&qword_91450, &qword_7F718);
    sub_7CAE4();
    v13 = v13 - 1.0;
    v3 = v13;
    sub_26D10(&v16, &v11);
    v10 = v16;
    *&v9[2] = v3;
    sub_7CAF4();
    sub_26D50(&v10);
    sub_26D50(&v16);
  }
}

uint64_t sub_29E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = sub_26C54(0.0);
  v9 = v3;
  v10 = v2;
  v4 = sub_26F28(0.0);
  v11 = v5;
  v12 = v4;
  result = sub_26F28(1.0);
  *a2 = a1;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v7;
  a2[6] = result;
  return result;
}

void sub_29F98(void *a1)
{
  a1;
  v2 = *v1;
  *v1 = a1;
}

uint64_t sub_2A020(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_2A06C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v21 = a1;
  v16 = a2;
  v22 = a3;
  v17 = sub_2C5A4;
  v32 = &opaque type descriptor for <<opaque return type of View.scrollBounceBehavior(_:axes:)>>;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v33 = 0;
  v26 = sub_7C3E4();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v25 = &v10 - v11;
  v30 = sub_1A88(&qword_91530, &qword_7F788);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v12 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v29 = &v10 - v12;
  v38 = sub_1A88(&qword_91538, &qword_7F790);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v37 = &v10 - v13;
  v40 = sub_1A88(&qword_91540, &qword_7F798);
  v14 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v42 = &v10 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v43 = &v10 - v15;
  v53 = &v10 - v15;
  v50 = v6;
  v51 = v7;
  v52 = v8;
  v20 = sub_7C594();
  v21;

  v18 = &v44;
  v45 = v21;
  v46 = v16;
  v47 = v22;
  v19 = sub_1A88(&qword_91548, &qword_7F7A0);
  sub_2C5B4();
  sub_2A9E4(v20, v17, v18);

  sub_7C3D4();
  v31 = sub_2C828();
  sub_2AA38(v30);
  sub_7C854();
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  v48 = v30;
  v49 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2AB34();
  sub_7C944();
  (*(v35 + 8))(v37, v38);
  v41 = sub_2C8B0();
  sub_1991C(v42, v40, v43);
  sub_2C9A4(v42);
  sub_2CA0C(v43, v42);
  sub_1991C(v42, v40, v39);
  sub_2C9A4(v42);
  return sub_2C9A4(v43);
}

uint64_t sub_2A564@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a1;
  v62 = a2;
  v63 = a3;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = a2;
  v48 = a3;
  sub_198A4();
  v43 = sub_7C6E4();
  v44 = v4;
  v45 = v5;
  v46 = v6;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  a1;
  sub_7C644();
  v39 = v43;
  v40 = v11;
  v41 = v12 & 1;
  v42 = v13;
  v35 = sub_7C6C4();
  v36 = v7;
  v37 = v8;
  v38 = v9;
  v14 = v7;
  v15 = v8;
  v16 = v9;

  sub_209FC(v43, v11, v12 & 1);

  v32[0] = v35;
  v32[1] = v14;
  v33 = v15 & 1;
  v34 = v16;
  sub_7C874();
  sub_23BF4(v32);
  v27[0] = v49;
  v27[1] = v50;
  v28 = v51 & 1;
  v29 = v52;
  v30 = v53;
  v31 = v54;
  v17 = sub_1A88(&qword_91570, &qword_7F7B0);
  sub_2C6FC();
  sub_3FCB0(v17);
  sub_7C8F4();
  sub_2E104(v27);
  memcpy(__dst, v55, sizeof(__dst));
  memcpy(v26, __dst, sizeof(v26));
  sub_7CCA4();
  sub_1A88(&qword_91560, &qword_7F7A8);
  sub_2C658();
  sub_7C8E4();
  sub_2E104(v26);
  memcpy(v59, v56, sizeof(v59));
  memcpy(v25, v59, sizeof(v25));
  v18 = sub_1A88(&qword_91548, &qword_7F7A0);
  sub_2C5B4();
  sub_1991C(v25, v18, v57);
  sub_2E104(v25);
  memcpy(v60, v57, sizeof(v60));
  sub_2E158(v60, v24);
  memcpy(v23, v60, sizeof(v23));
  sub_1991C(v23, v18, a4);
  sub_2E104(v23);
  sub_2E104(v57);
}

uint64_t sub_2AA38(uint64_t a1)
{
  sub_1A88(&qword_91618, &qword_7FB40);
  inited = swift_initStackObject();
  sub_2DE00(inited, 1);
  *v2 = sub_7C594();
  sub_2DE4C();
  v7 = v3;
  v8 = sub_7C584();
  v4 = sub_2DE80();
  v9 = sub_2DE8C(0, v4 & 1, v7);

  sub_7C584();
  if (sub_7C584() == v9)
  {
    return v8;
  }

  else
  {
    return sub_7C584();
  }
}

id sub_2AB7C()
{
  v2 = *v0;
  *v0;
  return v2;
}

uint64_t sub_2ABB0()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_2ABDC(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_2AC18()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_2AC44(uint64_t a1)
{

  *(v1 + 16) = a1;
}

uint64_t sub_2AC9C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v12 = sub_2CB48;
  v29 = 0;
  v7[0] = 40;
  memset(&v28[5], 0, 0x28uLL);
  memcpy(__dst, v1, sizeof(__dst));
  v10 = __dst[0];
  v11 = __dst[1];
  v7[1] = __dst[2];
  v7[2] = __dst[3];
  v7[3] = __dst[4];
  v23 = sub_1A88(&qword_91598, &qword_7F7C0);
  v17 = *(v23 - 8);
  v18 = v23 - 8;
  v9 = *(v17 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v21 = v7 - v8;
  v2 = __chkstk_darwin(v7 - v8);
  v22 = v7 - v3;
  v29 = v7 - v3;
  v28[5] = v10;
  v28[6] = v11;
  v28[7] = v4;
  v28[8] = v5;
  *&v28[9] = v2;
  v15 = sub_7C594();
  sub_2CAB8(v1, v28);
  v13 = &v26;
  v27 = v1;
  v14 = sub_1A88(&qword_915A0, &qword_7F7C8);
  sub_2CB50();
  sub_2A9E4(v15, v12, v13);
  sub_2C558(v16);
  v20 = sub_2CDC4();
  sub_1991C(v21, v23, v22);
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v25(v21, v23);
  (*(v17 + 16))(v21, v22, v23);
  sub_1991C(v21, v23, v19);
  v25(v21, v23);
  return (v25)(v22, v23);
}

uint64_t sub_2AF94@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v41 = 0;
  v55 = 0;
  v54 = 0.0;
  v53 = 0u;
  v52 = 0u;
  v2 = *a1;
  v3 = *(a1 + 1);
  v58 = a1[4];
  v57 = v3;
  v56 = v2;
  v45 = v2;
  v39 = v3;
  v40 = v58;
  v4 = sub_7C444();
  __chkstk_darwin(v4 - 8);
  v27 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A88(&qword_915D8, &qword_7F7E0);
  v29 = *(v28 - 8);
  v30 = v29;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - 8);
  v32 = v14 - v31;
  v33 = sub_1A88(&qword_915C8, &qword_7F7D8);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33 - 8);
  v35 = v14 - v34;
  v36 = sub_1A88(&qword_915B8, &qword_7F7D0);
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - 8);
  v38 = v14 - v37;
  v42 = sub_1A88(&qword_915A0, &qword_7F7C8);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = v14 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v46 = v14 - v8;
  v55 = v14 - v8;
  v52 = v45;
  *&v53 = v9;
  *(&v53 + 1) = v10;
  v54 = v7;
  v47 = sub_7D184();
  v48 = sub_7D174();
  v49 = sub_7D154();
  v50 = v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14[2] = v25[2];

  v14[3] = sub_7C344();
  v14[4] = v25[3];
  sub_2CAB8(v25, &v51);
  v16 = v14;
  __chkstk_darwin(v14);
  v14[5] = &v14[-4];
  v15 = sub_1A88(&qword_915E8, &unk_7FB10);
  v14[1] = sub_2D8AC();
  sub_2BB20(v15);
  v17 = 0;
  sub_7CCD4();
  sub_2C558(v25);
  v18 = sub_7C5B4();
  sub_2CD3C();
  sub_7C944();
  (*(v30 + 8))(v32, v28);
  v19 = sub_7CCA4();
  v20 = v12;
  sub_2CC98();
  v21 = 0;
  v22 = 1;
  sub_7C8E4();
  sub_2D9BC(v35);
  v23 = sub_2CBF4();
  sub_2AB34();
  sub_7C944();
  sub_2D9BC(v38);
  v24 = sub_2CB50();
  sub_1991C(v44, v42, v46);
  sub_2D9BC(v44);
  sub_2DA24(v46, v44);
  sub_1991C(v44, v42, v26);
  sub_2D9BC(v44);
  sub_2D9BC(v46);
}

uint64_t sub_2B628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v17 = a1;
  v16 = sub_2DC20;
  v33 = 0;
  v32 = 0;
  v18 = sub_1A88(&qword_915E8, &unk_7FB10);
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v22 = v7 - v21;
  v23 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v24 = v7 - v23;
  v33 = v7 - v23;
  v32 = v4;
  v25 = sub_7D184();
  v26 = sub_7D174();
  v27 = sub_7D154();
  v28 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = v17[1];
  sub_13DF8(&v34, &v31);
  v11 = &v30;
  v30 = v34;
  v7[2] = swift_getKeyPath();
  sub_2CAB8(v17, v29);
  v8 = swift_allocObject();
  memcpy((v8 + 16), v17, 0x28uLL);
  v9 = sub_1A88(&qword_91608, &qword_7FB38);
  v10 = sub_2DC28();
  sub_2D944();
  sub_7CBC4();
  v12 = sub_2D8AC();
  sub_1991C(v22, v18, v24);
  v14 = *(v19 + 8);
  v13 = v19 + 8;
  v14(v22, v18);
  (*(v19 + 16))(v22, v24, v18);
  sub_1991C(v22, v18, v15);
  v14(v22, v18);
  v14(v24, v18);
}

uint64_t sub_2B970@<X0>(unsigned __int16 *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v14 = 0;
  memset(__b, 0, sizeof(__b));
  v8 = *a1;
  v15 = *a1;
  v14 = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a2;
  *a2;
  sub_3FCD4(v4, v8, v16);
  memcpy(__dst, v16, sizeof(__dst));
  sub_2D944();
  sub_1991C(__dst, &unk_8F100, __b);
  sub_2DCB0(__dst);
  memcpy(v13, __b, sizeof(v13));
  sub_2DCF0(v13, v10);
  memcpy(v9, v13, sizeof(v9));
  sub_1991C(v9, &unk_8F100, a3);
  sub_2DCB0(v9);
  sub_2DCB0(__b);
}

uint64_t sub_2BB20(uint64_t a1)
{
  sub_7C444();
  sub_2DB48();
  return sub_7D854();
}

uint64_t sub_2BBC8()
{

  return swift_deallocObject();
}

uint64_t sub_2BC28()
{

  return swift_deallocObject();
}

unint64_t sub_2BC88()
{
  v2 = qword_914F0;
  if (!qword_914F0)
  {
    sub_7C074();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2BD08()
{
  v2 = qword_914F8;
  if (!qword_914F8)
  {
    sub_7C064();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2BD88()
{

  return swift_deallocObject();
}

unint64_t sub_2BDE8()
{
  v2 = qword_91500;
  if (!qword_91500)
  {
    sub_B24C(&qword_91460, &qword_7F720);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2BE70()
{
  v2 = qword_91508;
  if (!qword_91508)
  {
    sub_B24C(&qword_91490, &qword_7F750);
    sub_B24C(&qword_91480, &qword_7F740);
    sub_B24C(&qword_91478, &qword_7F738);
    sub_7C334();
    sub_B24C(&qword_91470, &qword_7F730);
    sub_7C164();
    sub_293D0();
    swift_getOpaqueTypeConformance2();
    sub_2950C();
    swift_getOpaqueTypeConformance2();
    sub_198A4();
    swift_getOpaqueTypeConformance2();
    sub_2C078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C078()
{
  v2 = qword_91510;
  if (!qword_91510)
  {
    sub_B24C(&qword_91518, &qword_7F780);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C100()
{
  v2 = qword_91520;
  if (!qword_91520)
  {
    sub_B24C(&qword_91468, &qword_7F728);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C188(uint64_t a1)
{
  v1 = sub_1A88(&qword_91488, &qword_7F748);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91490, &qword_7F750);

  return a1;
}

uint64_t sub_2C22C()
{

  return swift_deallocObject();
}

unint64_t sub_2C28C()
{
  v2 = qword_91528;
  if (!qword_91528)
  {
    sub_B24C(&qword_914A0, &qword_7F760);
    sub_B24C(&qword_91490, &qword_7F750);
    sub_B24C(&qword_91468, &qword_7F728);
    sub_2BE70();
    sub_2C100();
    swift_getOpaqueTypeConformance2();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C3B4(uint64_t a1)
{
  v1 = sub_1A88(&qword_91498, &qword_7F758);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_914A0, &qword_7F760) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_2C478(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91498, &qword_7F758);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_914A0, &qword_7F760) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

unint64_t sub_2C5B4()
{
  v2 = qword_91550;
  if (!qword_91550)
  {
    sub_B24C(&qword_91548, &qword_7F7A0);
    sub_2C658();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C658()
{
  v2 = qword_91558;
  if (!qword_91558)
  {
    sub_B24C(&qword_91560, &qword_7F7A8);
    sub_2C6FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C6FC()
{
  v2 = qword_91568;
  if (!qword_91568)
  {
    sub_B24C(&qword_91570, &qword_7F7B0);
    sub_2C7A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C7A0()
{
  v2 = qword_91578;
  if (!qword_91578)
  {
    sub_B24C(&qword_91580, &qword_7F7B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C828()
{
  v2 = qword_91588;
  if (!qword_91588)
  {
    sub_B24C(&qword_91530, &qword_7F788);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C8B0()
{
  v2 = qword_91590;
  if (!qword_91590)
  {
    sub_B24C(&qword_91540, &qword_7F798);
    sub_B24C(&qword_91530, &qword_7F788);
    sub_2C828();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91590);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C9A4(uint64_t a1)
{
  v1 = sub_1A88(&qword_91538, &qword_7F790);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_2CA0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91538, &qword_7F790);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_1A88(&qword_91540, &qword_7F798);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

void *sub_2CAB8(uint64_t a1, void *a2)
{
  v3 = *a1;
  *a1;
  *a2 = v3;
  v4 = *(a1 + 8);

  a2[1] = v4;
  v6 = *(a1 + 16);

  result = a2;
  a2[2] = v6;
  a2[3] = *(a1 + 24);
  a2[4] = *(a1 + 32);
  return result;
}

unint64_t sub_2CB50()
{
  v2 = qword_915A8;
  if (!qword_915A8)
  {
    sub_B24C(&qword_915A0, &qword_7F7C8);
    sub_2CBF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CBF4()
{
  v2 = qword_915B0;
  if (!qword_915B0)
  {
    sub_B24C(&qword_915B8, &qword_7F7D0);
    sub_2CC98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CC98()
{
  v2 = qword_915C0;
  if (!qword_915C0)
  {
    sub_B24C(&qword_915C8, &qword_7F7D8);
    sub_2CD3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CD3C()
{
  v2 = qword_915D0;
  if (!qword_915D0)
  {
    sub_B24C(&qword_915D8, &qword_7F7E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CDC4()
{
  v2 = qword_915E0;
  if (!qword_915E0)
  {
    sub_B24C(&qword_91598, &qword_7F7C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2CE7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2CF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

__n128 sub_2D184(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_2D198(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2D2B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_2D4C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2D5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_2D8AC()
{
  v2 = qword_915F0;
  if (!qword_915F0)
  {
    sub_B24C(&qword_915E8, &unk_7FB10);
    sub_2D944();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2D944()
{
  v2 = qword_915F8;
  if (!qword_915F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2D9BC(uint64_t a1)
{
  v1 = sub_1A88(&qword_915D8, &qword_7F7E0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_2DA24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_915D8, &qword_7F7E0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_1A88(&qword_915C8, &qword_7F7D8);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v4 = sub_1A88(&qword_915B8, &qword_7F7D0);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x30uLL);
  v5 = sub_1A88(&qword_915A0, &qword_7F7C8);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_2DB48()
{
  v2 = qword_91600;
  if (!qword_91600)
  {
    sub_7C444();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91600);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2DBC8()
{

  return swift_deallocObject();
}

unint64_t sub_2DC28()
{
  v2 = qword_91610;
  if (!qword_91610)
  {
    sub_B24C(&qword_91608, &qword_7FB38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91610);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2DCF0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *a1;
  *a2 = v3;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v6 = *(a1 + 88);

  result = a2;
  *(a2 + 88) = v6;
  return result;
}

uint64_t sub_2DD88(Swift::Int a1)
{

  if (a1 > 15)
  {
    sub_7D524(a1);
  }

  return 0;
}

uint64_t sub_2DE00(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

uint64_t sub_2DE8C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return *(a3 + 32 + a1);
  }

  result = sub_2DF28(a1, a3);
  __break(1u);
  return result;
}

uint64_t sub_2DF28(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = *(&stru_20.cmd + 8 * result + (a2 & 0xFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2DD88(82);
    v3._countAndFlagsBits = sub_7CF84("Down-casted Array element failed to match the target type\nExpected ", 0x43uLL, 1);
    sub_7CFA4(v3);

    v4._countAndFlagsBits = sub_7CF84("Set", 3uLL, 1);
    sub_7CFA4(v4);

    v5._countAndFlagsBits = sub_7CF84(" but found ", 0xBuLL, 1);
    sub_7CFA4(v5);

    swift_getObjectType();
    v6._countAndFlagsBits = sub_7D914();
    sub_7CFA4(v6);

    sub_7CF74();
    sub_7D5F4();
    __break(1u);
  }

  return v2;
}

uint64_t sub_2E104(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_2E158(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_20C1C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v7 = *(a1 + 32);

  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x70uLL);
  memcpy((a2 + 160), (a1 + 160), 0x30uLL);
  return a2;
}

id *sub_2E244(id *a1)
{

  return a1;
}

id *sub_2E2D0(id *a1)
{

  v3 = *(sub_1A88(&qword_914A8, &qword_7F768) + 36);
  v1 = sub_7C514();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_2E3B8(uint64_t a1, char *a2)
{
  v4 = *a1;
  *a1;
  *a2 = v4;
  *(a2 + 1) = *(a1 + 8);
  v5 = *(a1 + 16);

  *(a2 + 2) = v5;
  v6 = *(a1 + 24);
  v6;
  *(a2 + 3) = v6;
  *(a2 + 4) = *(a1 + 32);
  v7 = *(a1 + 40);

  *(a2 + 5) = v7;
  v8 = *(a1 + 48);
  v8;
  *(a2 + 6) = v8;
  v9 = *(a1 + 56);

  *(a2 + 7) = v9;
  v10 = *(a1 + 64);

  *(a2 + 8) = v10;
  *(a2 + 9) = *(a1 + 72);
  *(a2 + 10) = *(a1 + 80);
  v11 = *(sub_1A88(&qword_914A8, &qword_7F768) + 36);
  v2 = sub_7C514();
  (*(*(v2 - 8) + 16))(&a2[v11], a1 + v11);
  return a2;
}

unint64_t sub_2E54C()
{
  v2 = qword_91628;
  if (!qword_91628)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91628);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2E608()
{
  v2 = qword_91630;
  if (!qword_91630)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91630);
    return WitnessTable;
  }

  return v2;
}

void *sub_2E684(uint64_t a1, void *a2)
{
  v3 = *a1;
  *a1;
  *a2 = v3;
  a2[1] = *(a1 + 8);
  v6 = *(a1 + 16);

  result = a2;
  a2[2] = v6;
  return result;
}

char *sub_2E6EC@<X0>(__objc2_class **a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v43 = a1;
  v31 = "Fatal error";
  v32 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v33 = "FontSettings/FamilyView.swift";
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v34 = 0;
  v39 = type metadata accessor for FamilyView(0);
  v35 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v42 = v19 - v35;
  v48 = v19 - v35;
  v47 = v2;
  v36 = type metadata accessor for FontSettingsModel(v3);
  sub_1AC10();
  v4 = sub_7C1A4();
  v5 = v42;
  v6 = v4;
  v7 = v39;
  *(v42 + 2) = v6;
  *(v5 + 3) = v8;
  v37 = *(v7 + 28);
  swift_getKeyPath();
  sub_7BF24();
  v38 = *(v39 + 32);
  v9 = sub_26C54(0.0);
  v10 = v39;
  v11 = &v42[v38];
  *v11 = v12;
  *(v11 + 1) = v9;
  v41 = *(v10 + 36);
  v40 = 1;
  v13 = sub_2EFE0(0);
  v14 = &v42[v41];
  *v14 = v13 & v40;
  *(v14 + 1) = v15;

  *v42 = v43;

  v16 = 0;
  if (_TtC12FontSettings18FontProviderFamily == *v43)
  {
    v16 = v43;
  }

  v44 = v16;
  if (v16)
  {
    v29 = v44;
  }

  else
  {

    v29 = 0;
  }

  v28 = v29;
  if (v29)
  {
    v27 = v28;
    v20 = v28;
    v46 = v28;
    v23 = objc_opt_self();

    v19[2] = &v45;
    swift_beginAccess();
    v19[3] = v20[7];
    v21 = v20[8];

    swift_endAccess();
    v25 = sub_7CF04();

    v22 = [objc_opt_self() mainScreen];
    [v22 scale];
    v24 = v17;

    v26 = [v23 _applicationIconImageForBundleIdentifier:v25 format:0 scale:v24];
    if (v26)
    {
      v19[1] = v26;
    }

    else
    {
      sub_7D5E4();
      __break(1u);
    }

    *(v42 + 1) = sub_7CA24();
  }

  else
  {
    *(v42 + 1) = 0;
  }

  sub_3619C(v42, v30);

  return sub_204E4(v42);
}

uint64_t type metadata accessor for FamilyView(uint64_t a1)
{
  v2 = qword_91700;
  if (!qword_91700)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_2EB90()
{
  v2 = *(v0 + 8);

  return v2;
}

void *sub_2EBBC@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91638, &qword_7FB88);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = (&v4 - v5);
  v2 = type metadata accessor for FamilyView(0);
  sub_36390((v6 + *(v2 + 28)), v1);
  sub_7BF04();
  return sub_36464(v9);
}

void *sub_2ECB4(void *a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91638, &qword_7FB88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = (&v5 - v6);
  sub_36390(v2, (&v5 - v6));
  v3 = type metadata accessor for FamilyView(0);
  sub_36500(v7, (v1 + *(v3 + 28)));
  return sub_36464(v8);
}

double sub_2ED64()
{
  type metadata accessor for FamilyView(0);

  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAE4();

  return v1;
}

uint64_t sub_2EDF0(double a1)
{
  v2 = (v1 + *(type metadata accessor for FamilyView(0) + 32));
  v4 = *v2;
  v5 = v2[1];

  v6[0] = v4;
  v6[1] = v5;
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAF4();
  sub_26D50(v6);
}

double sub_2EE9C()
{
  type metadata accessor for FamilyView(0);

  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CB04();

  return v1;
}

double sub_2EF40()
{
  v2 = *(v0 + *(type metadata accessor for FamilyView(0) + 32));

  return v2;
}

uint64_t sub_2EF88(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for FamilyView(0) + 32);
  *v3 = a2;
  *(v3 + 8) = a1;
}

uint64_t sub_2F034()
{
  type metadata accessor for FamilyView(0);

  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CAE4();

  return v1 & 1;
}

uint64_t sub_2F0C4(char a1)
{
  v2 = (v1 + *(type metadata accessor for FamilyView(0) + 36));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CAF4();
  sub_26D50(v6);
}

uint64_t sub_2F170()
{
  type metadata accessor for FamilyView(0);

  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CB04();

  return v1;
}

uint64_t sub_2F218()
{
  v2 = *(v0 + *(type metadata accessor for FamilyView(0) + 36));

  return v2 & 1;
}

uint64_t sub_2F264(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for FamilyView(0) + 36);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_2F2C0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v16 = 0;
  v12 = sub_365EC;
  v23 = &opaque type descriptor for <<opaque return type of View.settingsListAppearance()>>;
  v33 = &opaque type descriptor for <<opaque return type of View.navigationTitle<A>(_:)>>;
  v35 = &opaque type descriptor for <<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>;
  v37 = sub_36704;
  v45 = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v75 = 0;
  v74 = 0;
  v21 = sub_1A88(&qword_91648, &qword_7FB90);
  v13 = *(v21 - 8);
  v14 = v21 - 8;
  v4 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v15 = &v4 - v4;
  v29 = sub_1A88(&qword_91650, &qword_7FB98);
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v5 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v27 = &v4 - v5;
  v41 = sub_1A88(&qword_91658, &qword_7FBA0);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v6 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v40 = &v4 - v6;
  v53 = sub_1A88(&qword_91660, &qword_7FBA8);
  v47 = *(v53 - 8);
  v48 = v53 - 8;
  v8 = *(v47 + 64);
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v51 = &v4 - v7;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v7);
  v52 = &v4 - v9;
  v75 = &v4 - v9;
  v74 = v1;
  v10 = &v58;
  v59 = v1;
  v11 = sub_1A88(&qword_91668, &qword_7FBB0);
  sub_365F4();
  sub_7C674();
  v22 = sub_3667C();
  sub_7C6F4();
  (*(v13 + 8))(v15, v21);
  v18 = *v28;

  v17 = &v73;
  swift_beginAccess();
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);

  swift_endAccess();

  v24 = v72;
  v72[0] = v19;
  v72[1] = v20;
  v70 = v21;
  v71 = v22;
  v46 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_198A4();
  v30 = &type metadata for String;
  sub_7C824();
  sub_1F58(v24);
  (*(v25 + 8))(v27, v29);
  v36 = &v56;
  v57 = v28;
  v42 = sub_1A88(&qword_91680, &qword_7FBB8);
  v66 = v29;
  v67 = v30;
  v68 = OpaqueTypeConformance2;
  v69 = v32;
  v43 = swift_getOpaqueTypeConformance2();
  v34 = sub_B24C(&qword_91688, &qword_7FBC0);
  v2 = sub_3670C();
  v64 = v34;
  v65 = v2;
  v44 = swift_getOpaqueTypeConformance2();
  sub_7C974();
  (*(v38 + 8))(v40, v41);
  v60 = v41;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v50 = swift_getOpaqueTypeConformance2();
  sub_1991C(v51, v53, v52);
  v55 = *(v47 + 8);
  v54 = v47 + 8;
  v55(v51, v53);
  (*(v47 + 16))(v51, v52, v53);
  sub_1991C(v51, v53, v49);
  v55(v51, v53);
  return (v55)(v52, v53);
}

uint64_t sub_2FAD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v48 = a2;
  v75 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v49 = sub_7CEF4();
  v50 = *(v49 - 8);
  v51 = v50;
  __chkstk_darwin(0);
  v52 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_7CED4();
  v54 = *(v53 - 8);
  v55 = v54;
  v57 = *(v54 + 64);
  __chkstk_darwin(v53 - 8);
  v59 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v16 - v59;
  __chkstk_darwin(v16 - v59);
  v58 = v16 - v59;
  __chkstk_darwin(v16 - v59);
  v60 = v16 - v59;
  v61 = sub_1A88(&qword_917E0, &qword_7FCB8);
  v62 = *(v61 - 8);
  v63 = v62;
  v64 = *(v62 + 64);
  __chkstk_darwin(v61 - 8);
  v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = v16 - v66;
  __chkstk_darwin(v3);
  v67 = v16 - v66;
  v103 = v16 - v66;
  v68 = sub_1A88(&qword_917E8, &qword_7FCC0);
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68 - 8);
  v70 = v16 - v69;
  v71 = sub_1A88(&qword_917F0, &qword_7FCC8);
  v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71 - 8);
  v73 = v16 - v72;
  v76 = sub_1A88(&qword_917F8, &qword_7FCD0);
  v77 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v75);
  v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = v16 - v79;
  __chkstk_darwin(v4);
  v80 = v16 - v79;
  v102 = v16 - v79;
  v101 = v5;
  v81 = sub_7D184();
  v82 = sub_7D174();
  v83 = sub_7D154();
  v84 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16[3] = sub_7C354();
  v16[4] = v16;
  v40 = 24;
  __chkstk_darwin(v16);
  v16[1] = &v16[-4];
  v16[-2] = v7;
  v16[2] = sub_1A88(&qword_91800, &qword_7FCD8);
  sub_382B8();
  v17 = &v99;
  sub_7CB94();
  v19 = 664;
  v18 = v100;
  memcpy(v100, v17, sizeof(v100));
  v23 = v98;
  memcpy(v98, v100, sizeof(v98));
  v36 = 1;
  v21 = sub_7CF84("FAMILY_INFO", 0xBuLL, 1);
  v22 = v8;
  v20 = sub_1A88(&qword_91810, &unk_7FCE0);
  sub_38340();
  sub_7C884();

  sub_383C8(v23);
  v24 = sub_7C5B4();
  sub_38564();
  v28 = 0;
  sub_7C944();
  sub_3860C(v70);
  v25 = sub_7C624();
  sub_38804();
  sub_7C8C4();

  sub_3860C(v73);
  v44 = sub_388A8();
  sub_1991C(v78, v76, v80);
  sub_389D8(v78);
  v35 = 10;
  sub_7CEC4();
  v104._countAndFlagsBits = sub_7CF84("", v28, v36);
  object = v104._object;
  sub_7CEB4(v104);

  v27 = *v74;

  v30 = sub_6C1CC();

  v29 = type metadata accessor for Face();
  v31 = sub_7D0E4();

  v97 = v31;
  v32 = &type metadata for Int;
  v33 = sub_4E3D8(&type metadata for Int);
  v34 = v9;
  sub_7CEA4();

  v105._countAndFlagsBits = sub_7CF84(" typefaces", v35, v36);
  v37 = v105._object;
  sub_7CEB4(v105);

  (*(v55 + 16))(v58, v60, v53);
  (*(v55 + 32))(v56, v58, v53);
  (*(v55 + 8))(v60, v53);
  sub_7CEE4();
  v38 = sub_61F88(v52);
  v39 = v10;
  (*(v51 + 8))(v52, v49);
  v95 = v38;
  v96 = v39;
  sub_198A4();
  v91 = sub_7C6E4();
  v92 = v11;
  v93 = v12;
  v94 = v13;
  v88[2] = v91;
  v88[3] = v11;
  v89 = v12;
  v90 = v13;
  v43 = v16;
  __chkstk_darwin(v16);
  v41 = &v16[-4];
  v16[-2] = v14;
  v42 = sub_1A88(&qword_91848, &qword_7FCF0);
  sub_38C10();
  sub_7CC14();
  v45 = sub_38D30();
  sub_1991C(v65, v61, v67);
  v47 = *(v63 + 8);
  v46 = v63 + 8;
  v47(v65, v61);
  sub_38DE0(v80, v78);
  v88[0] = v78;
  (*(v63 + 16))(v65, v67, v61);
  v88[1] = v65;
  v87[0] = v76;
  v87[1] = v61;
  v85 = v44;
  v86 = v45;
  sub_4E6CC(v88, 2uLL, v87, v48);
  v47(v65, v61);
  sub_389D8(v78);
  v47(v67, v61);
  sub_389D8(v80);
}

uint64_t sub_30470(uint64_t a1)
{
  __chkstk_darwin(a1);
  v269 = v369;
  v270 = v286;
  v271 = v1;
  v272 = v2;
  v273 = 0;
  v274 = 0u;
  memset(v388, 0, 32);
  v361 = 0;
  memset(v360, 0, sizeof(v360));
  v352 = 0;
  memset(v351, 0, sizeof(v351));
  v315 = 0;
  v314 = 0;
  memset(v313, 0, sizeof(v313));
  v305 = 0;
  memset(v304, 0, sizeof(v304));
  v291 = 0;
  v389 = v1;
  v275 = sub_7D184();
  v276 = sub_7D174();
  v277 = sub_7D154();
  v278 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v248 = *v271;

  v247 = &v387;
  v267 = 0;
  swift_beginAccess();
  v249 = v248[4];
  v250 = v248[5];

  swift_endAccess();

  v385 = v249;
  v386 = v250;
  sub_198A4();
  v4 = sub_7C6E4();
  v5 = v269;
  v382 = v4;
  v383 = v6;
  v269[176] = v7;
  v384 = v8;
  v252 = v382;
  v253 = v383;
  v254 = v5[176];
  v255 = v8;
  v9 = sub_7C5F4();
  v10 = v255;
  v251 = v9;
  v379 = v252;
  v380 = v253;
  v269[144] = v254;
  v381 = v10;
  v11 = sub_7C6C4();
  v12 = v269;
  v376 = v11;
  v377 = v13;
  v269[112] = v14;
  v378 = v15;
  v256 = v376;
  v257 = v377;
  v258 = v12[112];
  v259 = v15;

  sub_209FC(v252, v253, v254);

  sub_7C604();
  v16 = v259;
  v373 = v256;
  v374 = v257;
  v269[80] = v258;
  v375 = v16;
  v17 = sub_7C6A4();
  v18 = v269;
  v19 = v17;
  v20 = v256;
  v22 = v21;
  v23 = v257;
  v25 = v24;
  v26 = v258;
  v370 = v19;
  v371 = v22;
  v269[48] = v25;
  v372 = v27;
  v260 = v370;
  v261 = v371;
  v262 = v18[48];
  v263 = v27;
  sub_209FC(v20, v23, v26);

  v28 = v263;
  v369[0] = v260;
  v369[1] = v261;
  v269[16] = v262;
  v369[3] = v28;
  v264 = v369;
  sub_1991C(v369, &type metadata for Text, v388);
  sub_23BF4(v369);
  v266 = *v271;
  v265 = v266;

  v29 = v267;
  if (_TtC12FontSettings18FontProviderFamily == *v266)
  {
    v29 = v266;
  }

  v268 = v29;
  if (v29)
  {
    v246 = v268;
  }

  else
  {

    v246 = 0;
  }

  v245 = v246;
  if (v246)
  {
    v244 = v245;
    v237 = v245;
    v291 = v245;
    v212 = sub_7C284();

    v213 = &v168;
    __chkstk_darwin(&v168);
    v210 = v165;
    v166 = v271;
    v167 = v30;
    v211 = sub_1A88(&qword_91900, &qword_7FD40);
    sub_39F94();
    v218 = 0;
    sub_7CB74();

    v31 = v270;
    v32 = v270[29];
    v270[102] = v270[30];
    v31[101] = v32;
    v33 = v31[31];
    v34 = v31[32];
    v35 = v31[33];
    v31[106] = v31[34];
    v31[105] = v35;
    v31[104] = v34;
    v31[103] = v33;
    v36 = v31[35];
    v37 = v31[36];
    v38 = v31[37];
    v31[110] = v31[38];
    v31[109] = v38;
    v31[108] = v37;
    v31[107] = v36;
    v39 = v31[39];
    v40 = v31[40];
    v41 = v31[41];
    v31[114] = v31[42];
    v31[113] = v41;
    v31[112] = v40;
    v31[111] = v39;
    v42 = v31[101];
    v31[16] = v31[102];
    v31[15] = v42;
    v43 = v31[103];
    v44 = v31[104];
    v45 = v31[105];
    v31[20] = v31[106];
    v31[19] = v45;
    v31[18] = v44;
    v31[17] = v43;
    v46 = v31[107];
    v47 = v31[108];
    v48 = v31[109];
    v31[24] = v31[110];
    v31[23] = v48;
    v31[22] = v47;
    v31[21] = v46;
    v49 = v31[111];
    v50 = v31[112];
    v51 = v31[113];
    v31[28] = v31[114];
    v31[27] = v51;
    v31[26] = v50;
    v31[25] = v49;
    v214 = sub_1A88(&qword_918B8, &qword_7FD18);
    v52 = sub_397B0();
    v215 = &v287;
    sub_32774(v214, v52);
    sub_3A01C(v215);
    v53 = v270;
    v54 = v270[43];
    v55 = v270[44];
    v270[117] = v270[45];
    v53[116] = v55;
    v53[115] = v54;
    v56 = v53[46];
    v57 = v53[47];
    v58 = v53[48];
    v53[121] = v53[49];
    v53[120] = v58;
    v53[119] = v57;
    v53[118] = v56;
    v59 = v53[50];
    v60 = v53[51];
    v61 = v53[52];
    v53[125] = v53[53];
    v53[124] = v61;
    v53[123] = v60;
    v53[122] = v59;
    v62 = v53[54];
    v63 = v53[55];
    v64 = v53[56];
    v292 = v288;
    v53[128] = v64;
    v53[127] = v63;
    v53[126] = v62;
    v65 = v53[115];
    v66 = v53[116];
    v53[2] = v53[117];
    v53[1] = v66;
    *v53 = v65;
    v67 = v53[118];
    v68 = v53[119];
    v69 = v53[120];
    v53[6] = v53[121];
    v53[5] = v69;
    v53[4] = v68;
    v53[3] = v67;
    v70 = v53[122];
    v71 = v53[123];
    v72 = v53[124];
    v53[10] = v53[125];
    v53[9] = v72;
    v53[8] = v71;
    v53[7] = v70;
    v73 = v53[126];
    v74 = v53[127];
    v75 = v53[128];
    v286[112] = v292;
    v53[13] = v75;
    v53[12] = v74;
    v53[11] = v73;
    v219 = sub_7CCB4();
    v217 = v76;
    v216 = sub_1A88(&qword_918A8, &qword_7FD10);
    v77 = sub_3970C();
    v220 = &v157;
    v164 = v77;
    v163 = v216;
    v162 = v217;
    v161 = v219;
    LOBYTE(v160) = 1;
    v159 = 0;
    LOBYTE(v158) = 1;
    v157 = 0;
    v222 = &v289;
    v221 = v286;
    sub_7C8F4();
    sub_3A01C(v221);
    v234 = 344;
    v223 = v293;
    memcpy(v293, v222, sizeof(v293));
    v224 = v285;
    memcpy(v285, v293, sizeof(v285));
    v229 = sub_1A88(&qword_91890, &qword_7FD08);
    v230 = sub_39668();
    v236 = v290;
    sub_1991C(v224, v229, v290);
    sub_3A01C(v224);
    v225 = v294;
    memcpy(v294, v236, v234);
    sub_3A078(v225, &v283);
    v226 = v282;
    memcpy(v282, v225, v234);
    v235 = v284;
    sub_1991C(v226, v229, v284);
    sub_3A01C(v226);
    v227 = v295;
    memcpy(v295, v235, v234);
    sub_3A078(v227, &v280);
    v228 = v296;
    memcpy(v296, v227, v234);
    nullsub_1();
    v231 = v279;
    memcpy(v279, v228, v234);
    v232 = v281;
    sub_4E680(v231, v229, v281);
    sub_39F10(v231);
    v233 = v297;
    memcpy(v297, v232, v234);
    memcpy(v368, v233, v234);
    sub_3A01C(v235);
    sub_3A01C(v236);
  }

  else
  {
    v238 = v366;
    sub_395B8(v366);
    v243 = 344;
    v240 = v364;
    memcpy(v364, v366, sizeof(v364));
    v239 = sub_1A88(&qword_91890, &qword_7FD08);
    sub_39668();
    v241 = v365;
    sub_4E680(v364, v239, v365);
    v242 = v367;
    memcpy(v367, v365, sizeof(v367));
    memcpy(v368, v367, sizeof(v368));
  }

  v192 = sub_7C354();
  v194 = &v168;
  v198 = 24;
  __chkstk_darwin(&v168);
  v191 = v165;
  v166 = v78;
  v200 = sub_1A88(&qword_918C0, &qword_7FD20);
  v190 = v200;
  v201 = sub_39840();
  v193 = v201;
  v208 = 0;
  v199 = 1;
  sub_7CB94();
  v79 = v270;
  v80 = v354;
  v270[429] = v355;
  v79[428] = v80;
  v81 = v356;
  v82 = v357;
  v362 = v359;
  v79[432] = v358;
  v79[431] = v82;
  v79[430] = v81;
  v83 = v79[428];
  v79[412] = v79[429];
  v79[411] = v83;
  v84 = v79[430];
  v85 = v79[431];
  v86 = v79[432];
  v353[10] = v362;
  v79[415] = v86;
  v79[414] = v85;
  v79[413] = v84;
  v203 = sub_1A88(&qword_918D0, &qword_7FD28);
  v195 = v203;
  v204 = sub_398C8();
  v196 = v204;
  v197 = v353;
  sub_1991C(v353, v203, v360);
  sub_39950(v197);
  v87 = sub_7C354();
  v202 = &v168;
  __chkstk_darwin(v87);
  v166 = v88;
  sub_7CB94();
  v89 = v270;
  v90 = v203;
  v91 = v345;
  v270[435] = v346;
  v89[434] = v91;
  v92 = v347;
  v93 = v348;
  v363 = v350;
  v89[438] = v349;
  v89[437] = v93;
  v89[436] = v92;
  v94 = v89[434];
  v89[395] = v89[435];
  v89[394] = v94;
  v95 = v89[436];
  v96 = v89[437];
  v97 = v89[438];
  v344[10] = v363;
  v89[398] = v97;
  v89[397] = v96;
  v89[396] = v95;
  v205 = v344;
  sub_1991C(v344, v90, v351);
  sub_39950(v205);
  v207 = *v271;
  v206 = v207;

  v98 = v208;
  if (_TtC12FontSettings18FontProviderFamily == *v207)
  {
    v98 = v207;
  }

  v209 = v98;
  if (v98)
  {
    v189 = v209;
  }

  else
  {

    v189 = 0;
  }

  v188 = v189;
  if (v189)
  {
    v187 = v188;
    v185 = v188;
    v315 = v188;
    v179 = sub_7C354();

    sub_7CB94();

    v112 = v195;
    v113 = v270;
    v114 = v307;
    v270[289] = v308;
    v113[288] = v114;
    v115 = v309;
    v116 = v310;
    v316 = v312;
    v113[292] = v311;
    v113[291] = v116;
    v113[290] = v115;
    v117 = v113[288];
    v113[272] = v113[289];
    v113[271] = v117;
    v118 = v113[290];
    v119 = v113[291];
    v120 = v113[292];
    v306[10] = v316;
    v113[275] = v120;
    v113[274] = v119;
    v113[273] = v118;
    v184 = v313;
    v180 = v306;
    sub_1991C(v306, v112, v313);
    sub_39950(v180);
    v121 = v270;
    v122 = v270[282];
    v270[295] = v270[283];
    v121[294] = v122;
    v123 = v121[284];
    v124 = v121[285];
    v125 = v121[286];
    v318 = v314;
    v121[298] = v125;
    v121[297] = v124;
    v121[296] = v123;
    sub_39B24(&v317, &v303);
    v126 = v195;
    v127 = v270;
    v128 = v270[294];
    v270[255] = v270[295];
    v127[254] = v128;
    v129 = v127[296];
    v130 = v127[297];
    v131 = v127[298];
    v302[10] = v318;
    v127[258] = v131;
    v127[257] = v130;
    v127[256] = v129;
    v183 = v304;
    v181 = v302;
    sub_1991C(v302, v126, v304);
    sub_39950(v181);
    v132 = v270;
    v133 = v270[265];
    v270[301] = v270[266];
    v132[300] = v133;
    v134 = v132[267];
    v135 = v132[268];
    v136 = v132[269];
    v320 = v305;
    v132[304] = v136;
    v132[303] = v135;
    v132[302] = v134;
    sub_39B24(&v319, &v299);
    v137 = v195;
    v138 = v270;
    v139 = v270[300];
    v270[307] = v270[301];
    v138[306] = v139;
    v140 = v138[302];
    v141 = v138[303];
    v142 = v138[304];
    v321 = v320;
    v138[310] = v142;
    v138[309] = v141;
    v138[308] = v140;
    v143 = v138[306];
    v138[238] = v138[307];
    v138[237] = v143;
    v144 = v138[308];
    v145 = v138[309];
    v146 = v138[310];
    v298[10] = v321;
    v138[241] = v146;
    v138[240] = v145;
    v138[239] = v144;
    v182 = v298;
    sub_4E680(v298, v137, v300);
    sub_39E94(v182);
    v147 = v270;
    v148 = v183;
    v149 = v300[0];
    v270[313] = v300[1];
    v147[312] = v149;
    v150 = v300[2];
    v151 = v300[3];
    v322 = v301;
    v147[316] = v300[4];
    v147[315] = v151;
    v147[314] = v150;
    v152 = v147[312];
    v147[389] = v147[313];
    v147[388] = v152;
    v153 = v147[314];
    v154 = v147[315];
    v155 = v147[316];
    v343 = v322;
    v147[392] = v155;
    v147[391] = v154;
    v147[390] = v153;
    sub_39950(v148);
    sub_39950(v184);
  }

  else
  {
    v99 = v270;
    v100 = v195;
    v186 = 0;
    memset(&v336[11], 0, 32);
    v337 = 0uLL;
    v338 = 0uLL;
    v339 = 0uLL;
    v340 = 0;
    v270[366] = 0u;
    v99[365] = 0u;
    v101 = v337;
    v102 = v338;
    v335[10] = v340;
    v99[369] = v339;
    v99[368] = v102;
    v99[367] = v101;
    sub_4E680(v335, v100, v336);
    v103 = v270;
    v104 = v270[371];
    v270[383] = v270[372];
    v103[382] = v104;
    v105 = v103[373];
    v106 = v103[374];
    v107 = v103[375];
    v341 = v336[10];
    v103[386] = v107;
    v103[385] = v106;
    v103[384] = v105;
    v108 = v103[382];
    v103[389] = v103[383];
    v103[388] = v108;
    v109 = v103[384];
    v110 = v103[385];
    v111 = v103[386];
    v343 = v341;
    v103[392] = v111;
    v103[391] = v110;
    v103[390] = v109;
  }

  v178 = v388;
  v173 = v333;
  sub_23E4C(v388, v333);
  v334[0] = v173;
  v177 = v368;
  v172 = v332;
  sub_399C4(v368, v332);
  v334[1] = v172;
  v176 = v360;
  v171 = v331;
  sub_39B24(v360, v331);
  v334[2] = v171;
  v175 = v351;
  v170 = v330;
  sub_39B24(v351, v330);
  v334[3] = v170;
  v174 = v342;
  v169 = v329;
  sub_39C2C(v342, v329);
  v334[4] = v169;
  v328[0] = &type metadata for Text;
  v328[1] = sub_1A88(&qword_918E0, &qword_7FD30);
  v328[2] = v195;
  v328[3] = v195;
  v328[4] = sub_1A88(&qword_918E8, &qword_7FD38);
  v323 = &protocol witness table for Text;
  v324 = sub_39D64();
  v325 = v196;
  v326 = v196;
  v327 = sub_39DFC();
  sub_4E6CC(v334, 5uLL, v328, v272);
  sub_39E94(v169);
  sub_39950(v170);
  sub_39950(v171);
  sub_39F10(v172);
  sub_23BF4(v173);
  sub_39E94(v174);
  sub_39950(v175);
  sub_39950(v176);
  sub_39F10(v177);
  sub_23BF4(v178);
}

uint64_t sub_317A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v87 = a1;
  v88 = a2;
  v80 = sub_3A580;
  v136 = 0;
  v135 = 0;
  v89 = 0;
  v81 = type metadata accessor for FamilyView(0);
  v82 = *(v81 - 8);
  v83 = v82;
  v84 = *(v82 + 64);
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v86 = (&v26 - v85);
  v90 = sub_7CA44();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89);
  v94 = &v26 - v93;
  v136 = v3;
  v135 = v4;
  v95 = sub_7D184();
  v96 = sub_7D174();
  v97 = sub_7D154();
  v98 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v78 = v87[1];

  if (v78)
  {
    v77 = v78;
    v59 = v78;
    v55 = sub_31F60();
    v56 = v6;
    v57 = v7;
    v58 = v8;
    sub_31F74(v94);
    v60 = sub_7CA54();
    (*(v91 + 8))(v94, v90);

    v61 = &v105;
    v105 = v60;
    v67 = 0;
    v64 = 1;
    v68 = 1;
    sub_7C774();
    sub_B068(v61);
    v71 = v102;
    v102[0] = v129[17];
    v102[1] = v129[18];
    v103 = v130 & 1;
    v104 = v131;
    v9 = (v87 + *(v81 + 32));
    v62 = *v9;
    v63 = v9[1];

    v100 = v62;
    v101 = v63;
    sub_1A88(&qword_91448, &qword_7F710);
    sub_7CAE4();
    v65 = v99;

    v66 = sub_1A88(&qword_91938, &qword_7FD58);
    v69 = sub_3A32C();
    v10 = sub_3FCB0(v66);
    v70 = &v18;
    v18 = 0;
    LOBYTE(v19) = v64;
    v20 = v65;
    LOBYTE(v21) = 0;
    v22 = v10;
    v23 = v11;
    v24 = v66;
    v25 = v69;
    v72 = &v132;
    sub_7C8F4();
    sub_B068(v71);
    v73 = v106;
    v75 = 136;
    memcpy(v106, v72, sizeof(v106));
    v74 = v107;
    memcpy(v107, v106, sizeof(v107));
    nullsub_1();
    memcpy(__dst, v74, v75);
  }

  else
  {
    v76 = v129;
    sub_3A1A8(v129);
    memcpy(__dst, v76, sizeof(__dst));
  }

  v27 = v127;
  memcpy(v127, __dst, sizeof(v127));
  v46 = sub_1A88(&qword_91910, &qword_7FD48);
  v48 = sub_3A1F0();
  v54 = v133;
  sub_1991C(v27, v46, v133);
  sub_B068(v27);

  v28 = &v124;
  swift_beginAccess();
  v29 = *(v88 + 72);
  v30 = *(v88 + 80);

  swift_endAccess();

  v31 = v123;
  v123[0] = v29;
  v123[1] = v30;
  sub_198A4();
  v119 = sub_7C6E4();
  v120 = v12;
  v121 = v13;
  v122 = v14;
  v41 = v116;
  v116[0] = v119;
  v116[1] = v12;
  v117 = v13 & 1;
  v118 = v14;
  sub_3619C(v87, v86);
  v32 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v33 = swift_allocObject();
  sub_3789C(v86, v33 + v32);
  v34 = sub_1A88(&qword_91940, &qword_7FD60);
  sub_3A600();
  v15 = sub_7C034();
  v40 = v115;
  v115[0] = v15;
  v115[1] = v16;
  v36 = sub_1A88(&qword_91950, &qword_7FD68);
  v38 = sub_3A6A0();
  v35 = &type metadata for Text;
  v37 = &protocol witness table for Text;
  v39 = sub_3274C(&type metadata for Text);
  v42 = &v125;
  sub_7C934();
  sub_26D50(v40);
  sub_23BF4(v41);
  v43 = v128;
  v44 = 64;
  memcpy(v128, v42, sizeof(v128));
  v45 = v114;
  memcpy(v114, v128, sizeof(v114));
  v47 = sub_1A88(&qword_91960, &qword_7FD70);
  v49 = sub_3A728();
  v53 = v126;
  sub_1991C(v45, v47, v126);
  sub_3A854(v45);
  v52 = v112;
  sub_3A8A8(v54, v112);
  v50 = v113;
  v113[0] = v52;
  v51 = v111;
  sub_3A910(v53, v111);
  v113[1] = v51;
  v110[0] = v46;
  v110[1] = v47;
  v108 = v48;
  v109 = v49;
  sub_4E6CC(v50, 2uLL, v110, v79);
  sub_3A854(v51);
  sub_B068(v52);
  sub_3A854(v53);
  sub_B068(v54);
}

uint64_t sub_31F74@<X0>(uint64_t a1@<X8>)
{
  v4 = enum case for Image.ResizingMode.stretch(_:);
  v2 = sub_7CA44();
  return (*(*(v2 - 8) + 104))(a1, v4);
}

uint64_t sub_31FE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v35 = a1;
  v36 = a2;
  v27 = sub_3AC44;
  v52 = 0;
  v51 = 0;
  v37 = 0;
  v28 = sub_7C004();
  v30 = *(v28 - 8);
  v29 = v28 - 8;
  v31 = v30;
  v32 = *(v30 + 64);
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v34 = &v10 - v33;
  v38 = *(type metadata accessor for FamilyView(v3) - 8);
  v39 = v38;
  v40 = *(v38 + 64);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v42 = (&v10 - v41);
  v52 = v4;
  v51 = v5;
  v43 = sub_7D184();
  v44 = sub_7D174();
  v45 = sub_7D154();
  v46 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_7C9E4();
  v15 = v49;
  v49[0] = v7;
  sub_3619C(v36, v42);
  v11 = v31;
  (*(v30 + 16))(v34, v35, v28);
  v12 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v13 = (v12 + v40 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v8 = sub_3789C(v42, v14 + v12);
  (*(v30 + 32))(v14 + v13, v34, v28, v8);
  sub_7C9A4();
  sub_3AD28(v27, v14);
  sub_B068(v15);
  v16 = v48;
  v48[0] = v49[1];
  v48[1] = v49[2];
  v48[2] = v49[3];
  v48[3] = v49[4];
  v48[4] = v49[5];
  v22 = sub_1A88(&qword_91940, &qword_7FD60);
  v23 = sub_3A600();
  v25 = v50;
  sub_1991C(v16, v22, v50);
  sub_3AD5C(v16);
  v17 = v50[0];
  v18 = v50[1];
  v19 = v50[2];
  v20 = v50[3];
  v21 = v50[4];

  sub_3ADC8(v18);
  sub_3ADC8(v20);
  v24 = v47;
  v47[0] = v17;
  v47[1] = v18;
  v47[2] = v19;
  v47[3] = v20;
  v47[4] = v21;
  sub_1991C(v47, v22, v26);
  sub_3AD5C(v24);
  sub_3AD5C(v25);
}

uint64_t sub_32548(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v28 = 0;
  v27 = 0;
  v15 = 0;
  v16 = sub_7C3C4();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v20 = &v8 - v19;
  v28 = v2;
  v27 = v3;
  v21 = sub_7D184();
  v22 = sub_7D174();
  v23 = sub_7D154();
  v24 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7C4D4();
  sub_7BFF4();
  v9 = v5;
  (*(v17 + 8))(v20, v16);
  v6 = (v13 + *(type metadata accessor for FamilyView(0) + 32));
  v8 = *v6;
  v12 = v6[1];

  v11 = v26;
  v26[0] = v8;
  v26[1] = v12;
  v10 = &v25;
  v25 = v9;
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAF4();
  sub_26D50(v11);
}

uint64_t sub_327B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = a1;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  memset(v69, 0, sizeof(v69));
  v44 = 0;
  v45 = sub_7CEF4();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v49 = &v16 - v48;
  v87 = v2;
  v50 = sub_7D184();
  v51 = sub_7D174();
  v52 = sub_7D154();
  v53 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = 1;
  sub_7CF84("Copyright", 9uLL, 1);
  sub_7CE94();
  v16 = sub_61F88(v49);
  v17 = v4;
  (*(v46 + 8))(v49, v45);
  v18 = v85;
  v85[0] = v16;
  v85[1] = v17;
  v32 = sub_198A4();
  v31 = &type metadata for String;
  v81 = sub_7C6E4();
  v82 = v5;
  v83 = v6;
  v84 = v7;
  v20 = v81;
  v21 = v5;
  v19 = v6;
  v22 = v7;
  sub_7C604();
  v77 = v20;
  v78 = v21;
  v79 = v19 & 1;
  v80 = v22;
  v73 = sub_7C6A4();
  v74 = v8;
  v75 = v9;
  v76 = v10;
  v23 = v73;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  sub_209FC(v20, v21, v19 & 1);

  v27 = v70;
  v70[0] = v23;
  v70[1] = v24;
  v71 = v25 & 1 & v33;
  v72 = v26;
  v41 = v86;
  v35 = &type metadata for Text;
  v36 = &protocol witness table for Text;
  sub_1991C(v70, &type metadata for Text, v86);
  sub_23BF4(v27);
  v28 = *v43;

  v29 = sub_6CC38();
  v30 = v11;

  v67 = v29;
  v68 = v30;
  v63 = sub_7C6E4();
  v64 = v12;
  v65 = v13;
  v66 = v14;
  v34 = v60;
  v60[0] = v63;
  v60[1] = v12;
  v61 = v13 & 1 & v33;
  v62 = v14;
  v40 = v69;
  sub_1991C(v60, v35, v69);
  sub_23BF4(v34);
  v39 = v58;
  sub_23E4C(v41, v58);
  v37 = v59;
  v59[0] = v39;
  v38 = v57;
  sub_23E4C(v40, v57);
  v59[1] = v38;
  v56[0] = v35;
  v56[1] = v35;
  v54 = v36;
  v55 = v36;
  sub_4E6CC(v37, 2uLL, v56, v42);
  sub_23BF4(v38);
  sub_23BF4(v39);
  sub_23BF4(v40);
  sub_23BF4(v41);
}

uint64_t sub_32C0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = a1;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  memset(v69, 0, sizeof(v69));
  v44 = 0;
  v45 = sub_7CEF4();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v49 = &v16 - v48;
  v87 = v2;
  v50 = sub_7D184();
  v51 = sub_7D174();
  v52 = sub_7D154();
  v53 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = 1;
  sub_7CF84("Version", 7uLL, 1);
  sub_7CE94();
  v16 = sub_61F88(v49);
  v17 = v4;
  (*(v46 + 8))(v49, v45);
  v18 = v85;
  v85[0] = v16;
  v85[1] = v17;
  v32 = sub_198A4();
  v31 = &type metadata for String;
  v81 = sub_7C6E4();
  v82 = v5;
  v83 = v6;
  v84 = v7;
  v20 = v81;
  v21 = v5;
  v19 = v6;
  v22 = v7;
  sub_7C604();
  v77 = v20;
  v78 = v21;
  v79 = v19 & 1;
  v80 = v22;
  v73 = sub_7C6A4();
  v74 = v8;
  v75 = v9;
  v76 = v10;
  v23 = v73;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  sub_209FC(v20, v21, v19 & 1);

  v27 = v70;
  v70[0] = v23;
  v70[1] = v24;
  v71 = v25 & 1 & v33;
  v72 = v26;
  v41 = v86;
  v35 = &type metadata for Text;
  v36 = &protocol witness table for Text;
  sub_1991C(v70, &type metadata for Text, v86);
  sub_23BF4(v27);
  v28 = *v43;

  v29 = sub_6CF0C();
  v30 = v11;

  v67 = v29;
  v68 = v30;
  v63 = sub_7C6E4();
  v64 = v12;
  v65 = v13;
  v66 = v14;
  v34 = v60;
  v60[0] = v63;
  v60[1] = v12;
  v61 = v13 & 1 & v33;
  v62 = v14;
  v40 = v69;
  sub_1991C(v60, v35, v69);
  sub_23BF4(v34);
  v39 = v58;
  sub_23E4C(v41, v58);
  v37 = v59;
  v59[0] = v39;
  v38 = v57;
  sub_23E4C(v40, v57);
  v59[1] = v38;
  v56[0] = v35;
  v56[1] = v35;
  v54 = v36;
  v55 = v36;
  sub_4E6CC(v37, 2uLL, v56, v42);
  sub_23BF4(v38);
  sub_23BF4(v39);
  sub_23BF4(v40);
  sub_23BF4(v41);
}

uint64_t sub_33068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = a1;
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  memset(v67, 0, sizeof(v67));
  v42 = 0;
  v43 = sub_7CEF4();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v47 = &v16 - v46;
  v85 = v2;
  v48 = sub_7D184();
  v49 = sub_7D174();
  v50 = sub_7D154();
  v51 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = 1;
  sub_7CF84("File Size", 9uLL, 1);
  sub_7CE94();
  v17 = sub_61F88(v47);
  v18 = v4;
  (*(v44 + 8))(v47, v43);
  v19 = v83;
  v83[0] = v17;
  v83[1] = v18;
  v29 = sub_198A4();
  v30 = &type metadata for String;
  v79 = sub_7C6E4();
  v80 = v5;
  v81 = v6;
  v82 = v7;
  v21 = v79;
  v22 = v5;
  v20 = v6;
  v23 = v7;
  sub_7C604();
  v75 = v21;
  v76 = v22;
  v77 = v20 & 1;
  v78 = v23;
  v71 = sub_7C6A4();
  v72 = v8;
  v73 = v9;
  v74 = v10;
  v24 = v71;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  sub_209FC(v21, v22, v20 & 1);

  v28 = v68;
  v68[0] = v24;
  v68[1] = v25;
  v69 = v26 & 1 & v31;
  v70 = v27;
  v39 = v84;
  v33 = &type metadata for Text;
  v34 = &protocol witness table for Text;
  sub_1991C(v68, &type metadata for Text, v84);
  sub_23BF4(v28);
  v65 = sub_6A514();
  v66 = v11;
  v61 = sub_7C6E4();
  v62 = v12;
  v63 = v13;
  v64 = v14;
  v32 = v58;
  v58[0] = v61;
  v58[1] = v12;
  v59 = v13 & 1 & v31;
  v60 = v14;
  v38 = v67;
  sub_1991C(v58, v33, v67);
  sub_23BF4(v32);
  v37 = v56;
  sub_23E4C(v39, v56);
  v35 = v57;
  v57[0] = v37;
  v36 = v55;
  sub_23E4C(v38, v55);
  v57[1] = v36;
  v54[0] = v33;
  v54[1] = v33;
  v52 = v34;
  v53 = v34;
  sub_4E6CC(v35, 2uLL, v54, v40);
  sub_23BF4(v36);
  sub_23BF4(v37);
  sub_23BF4(v38);
  sub_23BF4(v39);
}

uint64_t sub_334A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = a1;
  v18 = sub_337A4;
  v33 = 0;
  v32 = 0;
  v20 = sub_1A88(&qword_91848, &qword_7FCF0);
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v24 = v7 - v23;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v26 = v7 - v25;
  v33 = v7 - v25;
  v32 = v4;
  v27 = sub_7D184();
  v28 = sub_7D174();
  v29 = sub_7D154();
  v30 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7[1] = *v19;

  v8 = sub_6C1CC();

  v13 = &v31;
  v31 = v8;
  v9 = sub_1A88(&qword_91870, &qword_7FD00);
  v10 = sub_1A88(&qword_91860, &qword_7FCF8);
  v11 = sub_39438();
  v12 = sub_38CA8();
  sub_394C0();
  sub_7CBD4();
  v14 = sub_38C10();
  sub_1991C(v24, v20, v26);
  v16 = *(v21 + 8);
  v15 = v21 + 8;
  v16(v24, v20);
  (*(v21 + 16))(v24, v26, v20);
  sub_1991C(v24, v20, v17);
  v16(v24, v20);
  v16(v26, v20);
}

uint64_t sub_337A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = a1;
  v34 = 0;
  v33 = 0;
  v19 = sub_1A88(&qword_91860, &qword_7FCF8);
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v23 = &v9 - v22;
  v24 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v25 = &v9 - v24;
  v34 = &v9 - v24;
  v26 = *v4;
  v33 = v26;
  v27 = sub_7D184();
  v28 = sub_7D174();
  v29 = sub_7D154();
  v30 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_65E4C();
  v13 = v32;
  v32[0] = v6;
  v32[1] = v7;

  v10 = &v35;
  sub_29E98(v26, &v35);
  v11 = __dst;
  memcpy(__dst, v10, sizeof(__dst));
  v12 = sub_39540();
  sub_198A4();
  sub_7C084();
  v14 = sub_38CA8();
  sub_1991C(v23, v19, v25);
  v16 = *(v20 + 8);
  v15 = v20 + 8;
  v16(v23, v19);
  (*(v20 + 16))(v23, v25, v19);
  sub_1991C(v23, v19, v17);
  v16(v23, v19);
  v16(v25, v19);
}

uint64_t sub_33AB0@<X0>(__objc2_class ***a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v37 = a2;
  v52 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v38 = sub_1A88(&qword_91768, &qword_7FC68);
  v39 = *(v38 - 8);
  v40 = v39;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v42 = v15 - v41;
  v78 = v15 - v41;
  v2 = sub_7C434();
  __chkstk_darwin(v2 - 8);
  v43 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1A88(&qword_91698, &unk_7FBC8);
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = *(v45 + 64);
  __chkstk_darwin(v44 - 8);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = v15 - v49;
  __chkstk_darwin(v15 - v49);
  v50 = v15 - v49;
  v77 = v15 - v49;
  v53 = sub_1A88(&qword_91688, &qword_7FBC0);
  v55 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v52);
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v15 - v57;
  __chkstk_darwin(v4);
  v56 = v15 - v57;
  __chkstk_darwin(v5);
  v58 = v15 - v57;
  v76 = v15 - v57;
  v75 = v6;
  v59 = sub_7D184();
  v60 = sub_7D174();
  v61 = sub_7D154();
  v62 = v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = *v51;
  v34 = v35;

  v8 = 0;
  if (_TtC12FontSettings15FontAssetFamily == *v35)
  {
    v8 = v35;
  }

  v36 = v8;
  if (v8)
  {

    v33 = 1;
  }

  else
  {

    v33 = 0;
  }

  if (v33)
  {
    v32 = 1;
  }

  else
  {
    v30 = *v51;
    v29 = v30;

    v9 = 0;
    if (_TtC12FontSettings18FontProviderFamily == *v30)
    {
      v9 = v30;
    }

    v31 = v9;
    if (v9)
    {

      v28 = 1;
    }

    else
    {

      v28 = 0;
    }

    v32 = v28;
  }

  if (v32)
  {
    sub_7C414();
    v22 = v15;
    __chkstk_darwin(v15);
    v20 = &v15[-8];
    *&v15[-4] = v10;
    v21 = sub_1A88(&qword_91770, &qword_7FC70);
    v16 = sub_B24C(&qword_91778, &qword_7FC78);
    v17 = sub_B24C(&qword_91780, &qword_7FC80);
    v18 = sub_373E0();
    v19 = sub_198A4();
    v11 = sub_375B8();
    v65 = v16;
    v66 = &type metadata for String;
    v67 = v17;
    v68 = &type metadata for Text;
    v69 = v18;
    v70 = v19;
    v71 = v11;
    v72 = &protocol witness table for Text;
    v23 = 1;
    v25 = 1;
    swift_getOpaqueTypeConformance2();
    sub_7BF74();
    v24 = sub_367F4();
    sub_1991C(v48, v44, v50);
    v27 = *(v46 + 8);
    v26 = v46 + 8;
    v27(v48, v44);
    (*(v46 + 16))(v48, v50, v44);
    sub_7C454();
    v27(v48, v44);
    (*(v40 + 16))(v54, v42, v38);
    (*(v40 + 56))(v54, 0, v23, v38);
    v63 = v44;
    v64 = v24;
    swift_getOpaqueTypeConformance2();
    sub_7C464();
    sub_370BC(v54);
    sub_37170(v56, v58);
    (*(v40 + 8))(v42, v38);
    v27(v50, v44);
  }

  else
  {
    v12 = *(v40 + 56);
    v15[3] = 1;
    v12(v54, 1, 1, v38);
    v13 = sub_367F4();
    v73 = v44;
    v74 = v13;
    swift_getOpaqueTypeConformance2();
    sub_7C464();
    sub_370BC(v54);
    sub_37170(v56, v58);
  }

  sub_372A4(v58, v56);
  sub_3670C();
  sub_7C454();
  sub_370BC(v56);
  sub_370BC(v58);
}

uint64_t sub_34414@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v60 = a2;
  v86 = 0;
  v114 = 0;
  v113 = 0;
  v61 = sub_7CEF4();
  v62 = *(v61 - 8);
  v63 = v62;
  __chkstk_darwin(0);
  v64 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FamilyView(v3);
  v66 = *(v65 - 8);
  v67 = v66;
  v68 = *(v66 + 64);
  __chkstk_darwin(v65 - 8);
  v69 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1A88(&qword_917C8, &qword_7FCA8);
  v70 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5 - 8);
  v71 = &v21 - v70;
  v72 = sub_1A88(&qword_917A8, &unk_7FC90);
  v73 = *(v72 - 8);
  v74 = v73;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v72 - 8);
  v76 = &v21 - v75;
  v77 = sub_1A88(&qword_91798, &qword_7FC88);
  v78 = (*(*(v77 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77 - 8);
  v79 = &v21 - v78;
  v80 = sub_1A88(&qword_91778, &qword_7FC78);
  v81 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80 - 8);
  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = &v21 - v83;
  __chkstk_darwin(&v21 - v83);
  v84 = &v21 - v83;
  v87 = sub_1A88(&qword_91770, &qword_7FC70);
  v88 = *(v87 - 8);
  v89 = v88;
  v90 = *(v88 + 64);
  __chkstk_darwin(v86);
  v92 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = &v21 - v92;
  __chkstk_darwin(v6);
  v93 = &v21 - v92;
  v114 = &v21 - v92;
  v113 = v7;
  v94 = sub_7D184();
  v95 = sub_7D174();
  v96 = sub_7D154();
  v97 = v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = v76;
  v42 = 0;
  v55 = 1;
  sub_7CF84("", 0, 1);
  v28 = sub_7C2E4();
  v24 = v10;
  v23 = v11;
  v25 = v12;
  v26 = sub_7CF84("trash", 5uLL, v55);
  v27 = v13;
  sub_7BE84();
  v14 = sub_7BE94();
  (*(*(v14 - 8) + 56))(v71, 0, v55);
  sub_3619C(v85, v69);
  v21 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v22 = swift_allocObject();
  sub_3789C(v69, v22 + v21);
  sub_3523C(v28, v24, v23 & 1, v25, v26, v27, v71, sub_379F8, v9, v22);
  v29 = sub_7C9C4();
  sub_37530();
  sub_7C8D4();

  (*(v74 + 8))(v76, v72);
  v35 = 13;
  v30 = sub_7CF84("REMOVE_FAMILY", 0xDuLL, v55);
  v31 = v15;
  sub_37488();
  sub_7C884();

  sub_37A5C(v79);
  sub_7CF84("Remove font", 0xBuLL, v55);
  sub_7CE94();
  v32 = sub_61F88(v64);
  v33 = v16;
  v37 = *(v63 + 8);
  v36 = v63 + 8;
  v37(v64, v61);
  v112[0] = v32;
  v112[1] = v33;
  v53 = sub_198A4();
  v49 = &type metadata for String;
  v34 = v112;
  sub_7C114();
  sub_1F58(v34);
  sub_37B00(v82);
  sub_7CF84("Are you sure?", v35, v55);
  sub_7CE94();
  v38 = sub_61F88(v64);
  v39 = v17;
  v37(v64, v61);
  v111[0] = v38;
  v111[1] = v39;
  v18 = v85 + *(v65 + 36);
  v40 = *v18;
  v41 = *(v18 + 1);

  v109 = v40;
  v110 = v41;
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CB04();
  v46 = v106;
  v47 = v107;
  v43 = v108;

  v45 = &v21;
  __chkstk_darwin(&v21);
  v44 = v20;
  v50 = sub_1A88(&qword_91780, &qword_7FC80);
  v52 = sub_373E0();
  v56 = sub_375B8();
  v51 = &type metadata for Text;
  v54 = &protocol witness table for Text;
  sub_4E928();
  v20[2] = v54;
  v20[1] = v56;
  v20[0] = v53;
  v48 = v111;
  sub_7C844();

  sub_1F58(v48);
  sub_37B00(v84);
  v98 = v80;
  v99 = v49;
  v100 = v50;
  v101 = v51;
  v102 = v52;
  v103 = v53;
  v104 = v56;
  v105 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v91, v87, v93);
  v59 = *(v89 + 8);
  v58 = v89 + 8;
  v59(v91, v87);
  (*(v89 + 16))(v91, v93, v87);
  sub_1991C(v91, v87, v60);
  v59(v91, v87);
  v59(v93, v87);
}

uint64_t sub_35108(uint64_t a1)
{
  v8 = a1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = (a1 + *(type metadata accessor for FamilyView(0) + 36));
  v3 = *v1;
  v4 = *(v1 + 1);

  v6[0] = v3;
  v7 = v4;
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CAF4();
  sub_26D50(v6);
}

uint64_t sub_3523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = a9;
  v16 = a1;
  v25 = a2;
  v14 = a3;
  v26 = a4;
  v15 = a5;
  v24 = a6;
  v27 = a7;
  v18 = a8;
  v19 = a10;
  v20 = sub_38160;
  v13 = (*(*(sub_1A88(&qword_917C8, &qword_7FCA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v23 = &v12 - v13;
  sub_37FC4(v10, &v12 - v13);
  v21 = &v28;
  v29 = v16;
  v30 = v25;
  v31 = v14;
  v32 = v26;
  v33 = v15;
  v34 = v24;
  v22 = sub_1A88(&qword_917D0, &qword_7FCB0);
  sub_38180();
  sub_7CB34();

  return sub_38208(v27);
}

uint64_t sub_3539C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v48 = a1;
  v30 = sub_37DBC;
  v65 = 0;
  v64 = 0;
  v49 = 0;
  v2 = type metadata accessor for FamilyView(0);
  v31 = *(v2 - 8);
  v32 = v31;
  v33 = *(v31 + 64);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v35 = (&v12 - v34);
  v36 = (*(*(sub_1A88(&qword_917C8, &qword_7FCA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v37 = &v12 - v36;
  v38 = sub_7CEF4();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v42 = &v12 - v41;
  v43 = sub_1A88(&qword_917C0, &qword_7FCA0);
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v47 = &v12 - v46;
  v50 = sub_1A88(&qword_91780, &qword_7FC80);
  v54 = *(*(v50 - 8) + 64);
  v51 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v52 = &v12 - v51;
  v53 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v55 = &v12 - v53;
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v57 = &v12 - v56;
  v65 = &v12 - v56;
  v64 = v5;
  v58 = sub_7D184();
  v59 = sub_7D174();
  v60 = sub_7D154();
  v61 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = 1;
  sub_7CF84("Remove", 6uLL, 1);
  sub_7CE94();
  v13 = sub_61F88(v42);
  v14 = v7;
  v22 = *(v39 + 8);
  v21 = v39 + 8;
  v22(v42, v38);
  v17 = v63;
  v63[0] = v13;
  v63[1] = v14;
  sub_7BE84();
  v8 = sub_7BE94();
  (*(*(v8 - 8) + 56))(v37, 0, v20);
  sub_3619C(v48, v35);
  v15 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v16 = swift_allocObject();
  sub_3789C(v35, v16 + v15);
  v26 = sub_198A4();
  v25 = &type metadata for String;
  sub_7CB54();
  v18 = sub_7CF84("CONFIRM_REMOVE_FAMILY", 0x15uLL, v20 & 1);
  v19 = v9;
  sub_37660();
  sub_7C884();

  (*(v44 + 8))(v47, v43);
  sub_7CF84("Confirm removal", 0xFuLL, v20 & 1);
  sub_7CE94();
  v23 = sub_61F88(v42);
  v24 = v10;
  v22(v42, v38);
  v27 = v62;
  v62[0] = v23;
  v62[1] = v24;
  sub_7C114();
  sub_1F58(v27);
  sub_37E20(v52);
  v28 = sub_375B8();
  sub_1991C(v55, v50, v57);
  sub_37E20(v55);
  sub_37EE4(v57, v55);
  sub_1991C(v55, v50, v29);
  sub_37E20(v55);
  sub_37E20(v57);
}

uint64_t sub_35AB0(__objc2_class ***a1)
{
  v12 = a1;
  v23 = 0;
  v9 = sub_1A88(&qword_91638, &qword_7FB88);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v11 = (&v6 - v10);
  v13 = 0;
  v14 = sub_7BFD4();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v18 = &v6 - v17;
  v23 = v1;
  v19 = sub_7D184();
  v20 = sub_7D174();
  v21 = sub_7D154();
  v22 = v2;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_20DDC();
  v7 = *v12;

  sub_7078(v7);
  v3 = v11;

  v4 = type metadata accessor for FamilyView(0);
  sub_36390((v12 + *(v4 + 28)), v3);
  sub_7BF04();
  sub_36464(v11);
  sub_7BFC4();
  (*(v15 + 8))(v18, v14);
}

uint64_t sub_35CD0@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v42 = 0u;
  v43 = 0u;
  v21 = 0;
  v22 = sub_7CEF4();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v26 = &v7 - v25;
  v27 = sub_7D184();
  v28 = sub_7D174();
  v29 = sub_7D154();
  v30 = v1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = 1;
  sub_7CF84("This font will no longer be available.", 0x26uLL, 1);
  sub_7CE94();
  v8 = sub_61F88(v26);
  v9 = v2;
  (*(v23 + 8))(v26, v22);
  v10 = v41;
  v41[0] = v8;
  v41[1] = v9;
  sub_198A4();
  v37 = sub_7C6E4();
  v38 = v3;
  v39 = v4;
  v40 = v5;
  v11 = v34;
  v34[0] = v37;
  v34[1] = v3;
  v35 = v4 & 1;
  v36 = v5;
  v19 = &v42;
  v16 = &type metadata for Text;
  v17 = &protocol witness table for Text;
  sub_1991C(v34, &type metadata for Text, &v42);
  sub_23BF4(v11);
  v12 = v42;
  v13 = v43;
  v15 = *(&v43 + 1);
  sub_20C1C(v42, *(&v42 + 1), v43 & 1);

  v18 = &v31;
  v31 = v12;
  v32 = v13 & 1 & v14;
  v33 = v15;
  sub_1991C(&v31, v16, v20);
  sub_23BF4(v18);
  sub_23BF4(v19);
}

uint64_t sub_35FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_7BFD4();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v4 - v5;
  v15 = sub_7C244();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_7C204();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

void *sub_3619C(void *a1, void *a2)
{
  v11 = *a1;

  *a2 = v11;
  v12 = a1[1];

  a2[1] = v12;
  v13 = a1[2];

  a2[2] = v13;
  a2[3] = a1[3];
  v15 = type metadata accessor for FamilyView(0);
  v16 = v15[7];
  sub_1A88(&qword_91160, &unk_7F0E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BFD4();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v10 = *(a1 + v16);

    *(a2 + v16) = v10;
  }

  swift_storeEnumTagMultiPayload();
  v3 = v15[8];
  v6 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v7 = *(a1 + v3 + 8);

  *(v6 + 1) = v7;
  v4 = v15[9];
  v8 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v9 = *(a1 + v4 + 8);

  result = a2;
  *(v8 + 1) = v9;
  return result;
}

void *sub_36390(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_91160, &unk_7F0E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BFD4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_36464(void *a1)
{
  sub_1A88(&qword_91160, &unk_7F0E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_36500(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_36464(a2);
    v4 = sub_1A88(&qword_91160, &unk_7F0E0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7BFD4();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

unint64_t sub_365F4()
{
  v2 = qword_91670;
  if (!qword_91670)
  {
    sub_B24C(&qword_91668, &qword_7FBB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91670);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3667C()
{
  v2 = qword_91678;
  if (!qword_91678)
  {
    sub_B24C(&qword_91648, &qword_7FB90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3670C()
{
  v2 = qword_91690;
  if (!qword_91690)
  {
    sub_B24C(&qword_91688, &qword_7FBC0);
    sub_B24C(&qword_91698, &unk_7FBC8);
    sub_367F4();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91690);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_367F4()
{
  v2 = qword_916A0;
  if (!qword_916A0)
  {
    sub_B24C(&qword_91698, &unk_7FBC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_916A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_368A4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1A88(&qword_91638, &qword_7FB88);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 28)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_369F0(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = sub_1A88(&qword_91638, &qword_7FB88);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_36AEC(uint64_t a1)
{
  v8 = type metadata accessor for Family(319);
  if (v1 <= 0x3F)
  {
    v8 = sub_36C8C(319);
    if (v2 <= 0x3F)
    {
      v8 = sub_236D8(319);
      if (v3 <= 0x3F)
      {
        v8 = sub_36D20(319);
        if (v4 <= 0x3F)
        {
          v8 = sub_36DBC(319);
          if (v5 <= 0x3F)
          {
            v8 = sub_36E50(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v8;
}

unint64_t sub_36C8C(uint64_t a1)
{
  v5 = qword_91710;
  if (!qword_91710)
  {
    v4 = sub_7D424();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_91710);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_36D20(uint64_t a1)
{
  v5 = qword_91718;
  if (!qword_91718)
  {
    sub_7BFD4();
    v4 = sub_7BF14();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_91718);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_36DBC(uint64_t a1)
{
  v5 = qword_91720;
  if (!qword_91720)
  {
    v4 = sub_7CB14();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_91720);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_36E50(uint64_t a1)
{
  v5 = qword_91728;
  if (!qword_91728)
  {
    v4 = sub_7CB14();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_91728);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_36EE4()
{
  sub_B24C(&qword_91658, &qword_7FBA0);
  sub_B24C(&qword_91680, &qword_7FBB8);
  sub_B24C(&qword_91650, &qword_7FB98);
  sub_B24C(&qword_91648, &qword_7FB90);
  sub_3667C();
  swift_getOpaqueTypeConformance2();
  sub_198A4();
  swift_getOpaqueTypeConformance2();
  sub_B24C(&qword_91688, &qword_7FBC0);
  sub_3670C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_370BC(uint64_t a1)
{
  v3 = sub_1A88(&qword_91768, &qword_7FC68);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_37170(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91768, &qword_7FC68);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91688, &qword_7FBC0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_372A4(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91768, &qword_7FC68);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91688, &qword_7FBC0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_373E0()
{
  v2 = qword_91788;
  if (!qword_91788)
  {
    sub_B24C(&qword_91778, &qword_7FC78);
    sub_37488();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37488()
{
  v2 = qword_91790;
  if (!qword_91790)
  {
    sub_B24C(&qword_91798, &qword_7FC88);
    sub_37530();
    sub_1EB48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37530()
{
  v2 = qword_917A0;
  if (!qword_917A0)
  {
    sub_B24C(&qword_917A8, &unk_7FC90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_917A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_375B8()
{
  v2 = qword_917B0;
  if (!qword_917B0)
  {
    sub_B24C(&qword_91780, &qword_7FC80);
    sub_37660();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_917B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37660()
{
  v2 = qword_917B8;
  if (!qword_917B8)
  {
    sub_B24C(&qword_917C0, &qword_7FCA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_917B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_376E8()
{
  v5 = type metadata accessor for FamilyView(0);
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  sub_1A88(&qword_91160, &unk_7F0E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_3789C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v5 = type metadata accessor for FamilyView(0);
  v6 = v5[7];
  v8 = sub_1A88(&qword_91160, &unk_7F0E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BFD4();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v6), (a1 + v6), *(*(v8 - 8) + 64));
  }

  *(a2 + v5[8]) = *(a1 + v5[8]);
  result = *(a1 + v5[9]);
  *(a2 + v5[9]) = result;
  return result;
}

uint64_t sub_379F8()
{
  v1 = *(type metadata accessor for FamilyView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_35108(v2);
}

uint64_t sub_37A5C(uint64_t a1)
{
  v1 = sub_1A88(&qword_917A8, &unk_7FC90);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91798, &qword_7FC88);

  return a1;
}

uint64_t sub_37B00(uint64_t a1)
{
  v1 = sub_1A88(&qword_917A8, &unk_7FC90);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91798, &qword_7FC88);

  v4 = *(sub_1A88(&qword_91778, &qword_7FC78) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_37C08()
{
  v5 = type metadata accessor for FamilyView(0);
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  sub_1A88(&qword_91160, &unk_7F0E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_37DBC()
{
  v1 = *(type metadata accessor for FamilyView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_35AB0(v2);
}

uint64_t sub_37E20(uint64_t a1)
{
  v1 = sub_1A88(&qword_917C0, &qword_7FCA0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91780, &qword_7FC80) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_37EE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_917C0, &qword_7FCA0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91780, &qword_7FC80) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

void *sub_37FC4(const void *a1, void *a2)
{
  v6 = sub_7BE94();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_917C8, &qword_7FCA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_380EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_7CA64();
}

unint64_t sub_38180()
{
  v2 = qword_917D8;
  if (!qword_917D8)
  {
    sub_B24C(&qword_917D0, &qword_7FCB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_917D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_38208(uint64_t a1)
{
  v3 = sub_7BE94();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_382B8()
{
  v2 = qword_91808;
  if (!qword_91808)
  {
    sub_B24C(&qword_91800, &qword_7FCD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91808);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38340()
{
  v2 = qword_91818;
  if (!qword_91818)
  {
    sub_B24C(&qword_91810, &unk_7FCE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91818);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_383C8(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 240))
  {

    sub_209FC(*(a1 + 216), *(a1 + 224), *(a1 + 232) & 1);
  }

  sub_209FC(*(a1 + 424), *(a1 + 432), *(a1 + 440) & 1);

  sub_209FC(*(a1 + 456), *(a1 + 464), *(a1 + 472) & 1);

  sub_209FC(*(a1 + 512), *(a1 + 520), *(a1 + 528) & 1);

  sub_209FC(*(a1 + 544), *(a1 + 552), *(a1 + 560) & 1);

  if (*(a1 + 624))
  {
    sub_209FC(*(a1 + 600), *(a1 + 608), *(a1 + 616) & 1);

    sub_209FC(*(a1 + 632), *(a1 + 640), *(a1 + 648) & 1);
  }

  return a1;
}

unint64_t sub_38564()
{
  v2 = qword_91820;
  if (!qword_91820)
  {
    sub_B24C(&qword_917E8, &qword_7FCC0);
    sub_38340();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91820);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3860C(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 240))
  {

    sub_209FC(*(a1 + 216), *(a1 + 224), *(a1 + 232) & 1);
  }

  sub_209FC(*(a1 + 424), *(a1 + 432), *(a1 + 440) & 1);

  sub_209FC(*(a1 + 456), *(a1 + 464), *(a1 + 472) & 1);

  sub_209FC(*(a1 + 512), *(a1 + 520), *(a1 + 528) & 1);

  sub_209FC(*(a1 + 544), *(a1 + 552), *(a1 + 560) & 1);

  if (*(a1 + 624))
  {
    sub_209FC(*(a1 + 600), *(a1 + 608), *(a1 + 616) & 1);

    sub_209FC(*(a1 + 632), *(a1 + 640), *(a1 + 648) & 1);
  }

  v3 = a1 + *(sub_1A88(&qword_917E8, &qword_7FCC0) + 36);
  v1 = sub_7C574();
  (*(*(v1 - 8) + 8))(v3);
  return a1;
}

unint64_t sub_38804()
{
  v2 = qword_91828;
  if (!qword_91828)
  {
    sub_B24C(&qword_917F0, &qword_7FCC8);
    sub_38564();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_388A8()
{
  v2 = qword_91830;
  if (!qword_91830)
  {
    sub_B24C(&qword_917F8, &qword_7FCD0);
    sub_38804();
    sub_38950();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38950()
{
  v2 = qword_91838;
  if (!qword_91838)
  {
    sub_B24C(&qword_91840, &qword_806F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91838);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_389D8(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 240))
  {

    sub_209FC(*(a1 + 216), *(a1 + 224), *(a1 + 232) & 1);
  }

  sub_209FC(*(a1 + 424), *(a1 + 432), *(a1 + 440) & 1);

  sub_209FC(*(a1 + 456), *(a1 + 464), *(a1 + 472) & 1);

  sub_209FC(*(a1 + 512), *(a1 + 520), *(a1 + 528) & 1);

  sub_209FC(*(a1 + 544), *(a1 + 552), *(a1 + 560) & 1);

  if (*(a1 + 624))
  {
    sub_209FC(*(a1 + 600), *(a1 + 608), *(a1 + 616) & 1);

    sub_209FC(*(a1 + 632), *(a1 + 640), *(a1 + 648) & 1);
  }

  v3 = a1 + *(sub_1A88(&qword_917E8, &qword_7FCC0) + 36);
  v1 = sub_7C574();
  (*(*(v1 - 8) + 8))(v3);
  sub_1A88(&qword_917F8, &qword_7FCD0);

  return a1;
}

unint64_t sub_38C10()
{
  v2 = qword_91850;
  if (!qword_91850)
  {
    sub_B24C(&qword_91848, &qword_7FCF0);
    sub_38CA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38CA8()
{
  v2 = qword_91858;
  if (!qword_91858)
  {
    sub_B24C(&qword_91860, &qword_7FCF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91858);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38D30()
{
  v2 = qword_91868;
  if (!qword_91868)
  {
    sub_B24C(&qword_917E0, &qword_7FCB8);
    sub_38C10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91868);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_38DE0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v44 = *(a1 + 24);
  v45 = *(a1 + 32);
  v46 = *(a1 + 40);
  sub_20C1C(v44, v45, v46 & 1);
  *(a2 + 24) = v44;
  *(a2 + 32) = v45;
  *(a2 + 40) = v46 & 1;
  v49 = *(a1 + 48);

  *(a2 + 48) = v49;
  if (*(a1 + 240))
  {
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
    v37 = *(a1 + 80);

    *(a2 + 80) = v37;
    *(a2 + 88) = *(a1 + 88);
    *(a2 + 96) = *(a1 + 96);
    memcpy((a2 + 104), (a1 + 104), 0x70uLL);
    v38 = *(a1 + 216);
    v39 = *(a1 + 224);
    v40 = *(a1 + 232);
    sub_20C1C(v38, v39, v40 & 1);
    *(a2 + 216) = v38;
    *(a2 + 224) = v39;
    *(a2 + 232) = v40 & 1;
    v41 = *(a1 + 240);

    *(a2 + 240) = v41;
    v42 = *(a1 + 248);
    v43 = *(a1 + 256);

    *(a2 + 248) = v42;
    *(a2 + 256) = v43;
    *(a2 + 264) = *(a1 + 264);
    *(a2 + 280) = *(a1 + 280);
    memcpy((a2 + 288), (a1 + 288), 0x70uLL);
  }

  else
  {
    memcpy((a2 + 56), (a1 + 56), 0x158uLL);
  }

  *(a2 + 400) = *(a1 + 400);
  *(a2 + 416) = *(a1 + 416);
  v21 = *(a1 + 424);
  v22 = *(a1 + 432);
  v23 = *(a1 + 440);
  sub_20C1C(v21, v22, v23 & 1);
  *(a2 + 424) = v21;
  *(a2 + 432) = v22;
  *(a2 + 440) = v23 & 1;
  v24 = *(a1 + 448);

  *(a2 + 448) = v24;
  v25 = *(a1 + 456);
  v26 = *(a1 + 464);
  v27 = *(a1 + 472);
  sub_20C1C(v25, v26, v27 & 1);
  *(a2 + 456) = v25;
  *(a2 + 464) = v26;
  *(a2 + 472) = v27 & 1;
  v28 = *(a1 + 480);

  *(a2 + 480) = v28;
  *(a2 + 488) = *(a1 + 488);
  *(a2 + 504) = *(a1 + 504);
  v29 = *(a1 + 512);
  v30 = *(a1 + 520);
  v31 = *(a1 + 528);
  sub_20C1C(v29, v30, v31 & 1);
  *(a2 + 512) = v29;
  *(a2 + 520) = v30;
  *(a2 + 528) = v31 & 1;
  v32 = *(a1 + 536);

  *(a2 + 536) = v32;
  v33 = *(a1 + 544);
  v34 = *(a1 + 552);
  v35 = *(a1 + 560);
  sub_20C1C(v33, v34, v35 & 1);
  *(a2 + 544) = v33;
  *(a2 + 552) = v34;
  *(a2 + 560) = v35 & 1;
  v36 = *(a1 + 568);

  *(a2 + 568) = v36;
  if (*(a1 + 624))
  {
    *(a2 + 576) = *(a1 + 576);
    *(a2 + 592) = *(a1 + 592);
    v13 = *(a1 + 600);
    v14 = *(a1 + 608);
    v15 = *(a1 + 616);
    sub_20C1C(v13, v14, v15 & 1);
    *(a2 + 600) = v13;
    *(a2 + 608) = v14;
    *(a2 + 616) = v15 & 1;
    v16 = *(a1 + 624);

    *(a2 + 624) = v16;
    v17 = *(a1 + 632);
    v18 = *(a1 + 640);
    v19 = *(a1 + 648);
    sub_20C1C(v17, v18, v19 & 1);
    *(a2 + 632) = v17;
    *(a2 + 640) = v18;
    *(a2 + 648) = v19 & 1;
    v20 = *(a1 + 656);

    *(a2 + 656) = v20;
  }

  else
  {
    memcpy((a2 + 576), (a1 + 576), 0x58uLL);
  }

  v2 = sub_1A88(&qword_917E8, &qword_7FCC0);
  v8 = a2 + *(v2 + 36);
  v7 = a1 + *(v2 + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(v8, v7);
  v4 = sub_1A88(&qword_917F0, &qword_7FCC8);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  v5 = sub_1A88(&qword_917F8, &qword_7FCD0);
  v11 = (a2 + *(v5 + 36));
  v10 = (a1 + *(v5 + 36));
  v9 = *v10;

  *v11 = v9;
  v12 = v10[1];

  result = a2;
  v11[1] = v12;
  return result;
}

unint64_t sub_39438()
{
  v2 = qword_91878;
  if (!qword_91878)
  {
    sub_B24C(&qword_91870, &qword_7FD00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_394C0()
{
  v2 = qword_91880;
  if (!qword_91880)
  {
    type metadata accessor for Face();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_39540()
{
  v2 = qword_91888;
  if (!qword_91888)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91888);
    return WitnessTable;
  }

  return v2;
}

void *sub_395B8(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  result[17] = 0;
  result[18] = 0;
  result[19] = 0;
  result[20] = 0;
  result[21] = 0;
  result[22] = 0;
  result[23] = 0;
  result[24] = 0;
  result[25] = 0;
  result[26] = 0;
  result[27] = 0;
  result[28] = 0;
  result[29] = 0;
  result[30] = 0;
  result[31] = 0;
  result[32] = 0;
  result[33] = 0;
  result[34] = 0;
  result[35] = 0;
  result[36] = 0;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  result[40] = 0;
  result[41] = 0;
  result[42] = 0;
  return result;
}

unint64_t sub_39668()
{
  v2 = qword_91898;
  if (!qword_91898)
  {
    sub_B24C(&qword_91890, &qword_7FD08);
    sub_3970C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3970C()
{
  v2 = qword_918A0;
  if (!qword_918A0)
  {
    sub_B24C(&qword_918A8, &qword_7FD10);
    sub_397B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_397B0()
{
  v2 = qword_918B0;
  if (!qword_918B0)
  {
    sub_B24C(&qword_918B8, &qword_7FD18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_39840()
{
  v2 = qword_918C8;
  if (!qword_918C8)
  {
    sub_B24C(&qword_918C0, &qword_7FD20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_398C8()
{
  v2 = qword_918D8;
  if (!qword_918D8)
  {
    sub_B24C(&qword_918D0, &qword_7FD28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_39950(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_209FC(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

char *sub_399C4(void *a1, char *a2)
{
  if (a1[23])
  {
    *a2 = *a1;
    a2[16] = *(a1 + 16);
    v3 = a1[3];

    *(a2 + 3) = v3;
    *(a2 + 4) = a1[4];
    *(a2 + 20) = *(a1 + 20);
    memcpy(a2 + 48, a1 + 6, 0x70uLL);
    v4 = a1[20];
    v5 = a1[21];
    v6 = *(a1 + 176);
    sub_20C1C(v4, v5, v6 & 1);
    *(a2 + 20) = v4;
    *(a2 + 21) = v5;
    a2[176] = v6 & 1;
    v7 = a1[23];

    *(a2 + 23) = v7;
    v8 = a1[24];
    v9 = a1[25];

    *(a2 + 24) = v8;
    *(a2 + 25) = v9;
    *(a2 + 13) = *(a1 + 13);
    *(a2 + 112) = *(a1 + 112);
    memcpy(a2 + 232, a1 + 29, 0x70uLL);
  }

  else
  {
    memcpy(a2, a1, 0x158uLL);
  }

  return a2;
}

uint64_t sub_39B24(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_20C1C(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_20C1C(v7, v8, v9 & 1);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9 & 1;
  v12 = *(a1 + 80);

  result = a2;
  *(a2 + 80) = v12;
  return result;
}

_BYTE *sub_39C2C(void *a1, _BYTE *a2)
{
  if (a1[6])
  {
    *a2 = *a1;
    a2[16] = *(a1 + 16);
    v3 = a1[3];
    v4 = a1[4];
    v5 = *(a1 + 40);
    sub_20C1C(v3, v4, v5 & 1);
    *(a2 + 3) = v3;
    *(a2 + 4) = v4;
    a2[40] = v5 & 1;
    v6 = a1[6];

    *(a2 + 6) = v6;
    v7 = a1[7];
    v8 = a1[8];
    v9 = *(a1 + 72);
    sub_20C1C(v7, v8, v9 & 1);
    *(a2 + 7) = v7;
    *(a2 + 8) = v8;
    a2[72] = v9 & 1;
    v10 = a1[10];

    *(a2 + 10) = v10;
  }

  else
  {
    memcpy(a2, a1, 0x58uLL);
  }

  return a2;
}

unint64_t sub_39D64()
{
  v2 = qword_918F0;
  if (!qword_918F0)
  {
    sub_B24C(&qword_918E0, &qword_7FD30);
    sub_39668();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_39DFC()
{
  v2 = qword_918F8;
  if (!qword_918F8)
  {
    sub_B24C(&qword_918E8, &qword_7FD38);
    sub_398C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_39E94(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

    sub_209FC(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);
  }

  return a1;
}

uint64_t sub_39F10(uint64_t a1)
{
  if (*(a1 + 184))
  {

    sub_209FC(*(a1 + 160), *(a1 + 168), *(a1 + 176) & 1);
  }

  return a1;
}

unint64_t sub_39F94()
{
  v2 = qword_91908;
  if (!qword_91908)
  {
    sub_B24C(&qword_91900, &qword_7FD40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91908);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3A01C(uint64_t a1)
{

  sub_209FC(*(a1 + 160), *(a1 + 168), *(a1 + 176) & 1);

  return a1;
}

uint64_t sub_3A078(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x70uLL);
  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  v6 = *(a1 + 176);
  sub_20C1C(v4, v5, v6 & 1);
  *(a2 + 160) = v4;
  *(a2 + 168) = v5;
  *(a2 + 176) = v6 & 1;
  v7 = *(a1 + 184);

  *(a2 + 184) = v7;
  v9 = *(a1 + 192);
  v10 = *(a1 + 200);

  *(a2 + 192) = v9;
  *(a2 + 200) = v10;
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 224) = *(a1 + 224);
  memcpy((a2 + 232), (a1 + 232), 0x70uLL);
  return a2;
}

void *sub_3A1A8(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  return result;
}

unint64_t sub_3A1F0()
{
  v2 = qword_91918;
  if (!qword_91918)
  {
    sub_B24C(&qword_91910, &qword_7FD48);
    sub_3A288();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91918);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A288()
{
  v2 = qword_91920;
  if (!qword_91920)
  {
    sub_B24C(&qword_91928, &qword_7FD50);
    sub_3A32C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A32C()
{
  v2 = qword_91930;
  if (!qword_91930)
  {
    sub_B24C(&qword_91938, &qword_7FD58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91930);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3A3CC()
{
  v5 = type metadata accessor for FamilyView(0);
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  sub_1A88(&qword_91160, &unk_7F0E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_3A580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for FamilyView(0);
  v4 = (v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));

  return sub_31FE0(a1, v4, a2);
}

unint64_t sub_3A600()
{
  v2 = qword_91948;
  if (!qword_91948)
  {
    sub_B24C(&qword_91940, &qword_7FD60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A6A0()
{
  v2 = qword_91958;
  if (!qword_91958)
  {
    sub_B24C(&qword_91950, &qword_7FD68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A728()
{
  v2 = qword_91968;
  if (!qword_91968)
  {
    sub_B24C(&qword_91960, &qword_7FD70);
    sub_3A7CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91968);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A7CC()
{
  v2 = qword_91970;
  if (!qword_91970)
  {
    sub_B24C(&qword_91978, &qword_7FD78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91970);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3A854(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_3A8A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  memcpy((a2 + 24), a1 + 3, 0x70uLL);
  return a2;
}

__n128 sub_3A910(__n128 *a1, __n128 *a2)
{
  v3 = *a1;
  v4 = a1[1].n128_u8[0];
  sub_20C1C(a1->n128_u64[0], a1->n128_i64[1], v4 & 1);
  *a2 = v3;
  a2[1].n128_u8[0] = v4 & 1;
  v5 = a1[1].n128_u64[1];

  a2[1].n128_u64[1] = v5;
  v7 = a1[2];

  a2[2] = v7;
  result = a1[3];
  a2[3] = result;
  return result;
}

uint64_t sub_3A9D0()
{
  v9 = type metadata accessor for FamilyView(0);
  v0 = *(*(v9 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  v4 = v5 + *(*(v9 - 8) + 64);
  v6 = sub_7C004();
  v7 = *(v6 - 8);
  v8 = (v4 + *(v7 + 80)) & ~*(v7 + 80);

  v10 = *(v9 + 28);
  sub_1A88(&qword_91160, &unk_7F0E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(v3 + v5 + v10);
  }

  else
  {
  }

  (*(v7 + 8))(v3 + v8, v6);
  return swift_deallocObject();
}

uint64_t sub_3AC44()
{
  v4 = *(type metadata accessor for FamilyView(0) - 8);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v5 = v6 + *(v4 + 64);
  v1 = *(sub_7C004() - 8);
  v2 = v0 + ((v5 + *(v1 + 80)) & ~*(v1 + 80));

  return sub_32548(v0 + v6, v2);
}

uint64_t sub_3AD28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_3AD5C(void *a1)
{

  if (a1[1])
  {
  }

  if (a1[3])
  {
  }

  return a1;
}

uint64_t sub_3ADC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3ADFC(uint64_t a1, uint64_t a2)
{

  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v3 = sub_7BF44();

  return v3;
}

uint64_t sub_3AE8C(uint64_t a1, uint64_t a2, char a3)
{
  sub_3AF28();
  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v6 = sub_7BF54();
  sub_3AF68(a1, a2);
  return v6;
}

uint64_t sub_3AFA8(uint64_t a1, uint64_t a2, char a3)
{
  sub_3AF28();
  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v6 = sub_7BF64();
  sub_3AF68(a1, a2);
  return v6;
}

uint64_t sub_3B084(uint64_t a1, uint64_t a2, char a3)
{
  sub_3AF28();
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  sub_3AF68(v4, v5);
  return sub_3AF68(a1, a2);
}

uint64_t sub_3B0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v139 = a4;
  v118 = a1;
  v119 = a2;
  LODWORD(v120) = a3;
  v48 = sub_3CA70;
  v59 = &opaque type descriptor for <<opaque return type of View.settingsListAppearance()>>;
  v69 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
  v123 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v71 = sub_3E094;
  v99 = &opaque type descriptor for <<opaque return type of View.navigationDestination<A, B>(for:destination:)>>;
  v124 = &unk_7FDE0;
  v131 = &opaque type descriptor for <<opaque return type of View.refreshable(action:)>>;
  v134 = sub_3E694;
  v177 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v133 = 0;
  v32 = (*(*(sub_7BD34() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v84 = &v32 - v32;
  v103 = sub_7BCD4();
  v100 = *(v103 - 8);
  v101 = v103 - 8;
  v33 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v102 = &v32 - v33;
  v83 = sub_7BC14();
  v81 = *(v83 - 8);
  v82 = v83 - 8;
  v34 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v85 = &v32 - v34;
  v108 = sub_7BC24();
  v105 = *(v108 - 8);
  v106 = v108 - 8;
  v35 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v107 = &v32 - v35;
  v112 = sub_7CD04();
  v109 = *(v112 - 8);
  v110 = v112 - 8;
  v36 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v111 = (&v32 - v36);
  v89 = sub_7CEF4();
  v52 = *(v89 - 8);
  v53 = v89 - 8;
  v37 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89);
  v88 = &v32 - v37;
  v57 = sub_1A88(&qword_91980, &qword_7FD80);
  v49 = *(v57 - 8);
  v50 = v57 - 8;
  v38 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v51 = &v32 - v38;
  v67 = sub_1A88(&qword_91988, &qword_7FD88);
  v64 = *(v67 - 8);
  v65 = v67 - 8;
  v39 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v66 = &v32 - v39;
  v93 = sub_1A88(&qword_91990, &qword_7FD90);
  v73 = *(v93 - 8);
  v74 = v93 - 8;
  v40 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v93);
  v75 = &v32 - v40;
  v121 = sub_1A88(&qword_91998, &qword_7FD98);
  v113 = *(v121 - 8);
  v114 = v121 - 8;
  v41 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v121);
  v115 = &v32 - v41;
  v129 = sub_1A88(&qword_919A0, &qword_7FDA0);
  v126 = *(v129 - 8);
  v127 = v129 - 8;
  v42 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v129);
  v128 = &v32 - v42;
  v138 = sub_1A88(&qword_919A8, &qword_7FDA8);
  v135 = *(v138 - 8);
  v136 = v138 - 8;
  v43 = (*(v135 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v138);
  v137 = &v32 - v43;
  v140 = sub_1A88(&qword_919B0, &qword_7FDB0);
  v44 = (*(*(v140 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v142 = &v32 - v44;
  v45 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v143 = &v32 - v45;
  v177 = &v32 - v45;
  v174 = v6;
  v175 = v7;
  HIDWORD(v120) = 1;
  v176 = v8 & 1;
  sub_3AF28();
  v46 = v144;
  v144[2] = v118;
  v144[3] = v119;
  v145 = v120 & 1 & BYTE4(v120);
  v47 = sub_1A88(&qword_919B8, &qword_7FDB8);
  sub_3CA84();
  sub_7C674();
  sub_3AF68(v118, v119);
  v58 = sub_3CB0C();
  sub_7C6F4();
  (*(v49 + 8))(v51, v57);
  v78 = "Fonts";
  v79 = 5;
  sub_7CF84("Fonts", 5uLL, v120 & 0x100000000);
  sub_7CE94();
  v54 = sub_61F88(v88);
  v55 = v9;
  v91 = *(v52 + 8);
  v90 = v52 + 8;
  v91(v88, v89);
  v56 = v173;
  v173[0] = v54;
  v173[1] = v55;
  sub_198A4();
  v169 = sub_7C6E4();
  v170 = v10;
  v171 = v11;
  v172 = v12;
  v60 = v169;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v167 = v57;
  v168 = v58;
  v132 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v163 = v60;
  v164 = v61;
  v165 = v62 & 1 & BYTE4(v120);
  v166 = v63;
  sub_7C814();
  sub_209FC(v60, v61, v62 & 1);

  (*(v64 + 8))(v66, v67);
  sub_3AF28();
  v116 = 33;
  v117 = 7;
  v13 = swift_allocObject();
  v14 = v119;
  v15 = v120;
  v16 = BYTE4(v120);
  v72 = v13;
  *(v13 + 16) = v118;
  *(v13 + 24) = v14;
  *(v13 + 32) = v15 & 1 & v16;
  v95 = sub_1A88(&qword_919D0, &qword_7FDC0);
  v161 = v67;
  v162 = OpaqueTypeConformance2;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = sub_19E54();
  v70 = sub_B24C(&qword_919D8, &qword_7FDC8);
  v17 = sub_3E0A8();
  v159 = v70;
  v160 = v17;
  v98 = swift_getOpaqueTypeConformance2();
  v94 = &unk_8FDE0;
  sub_7C864();

  (*(v73 + 8))(v75, v93);
  v18 = sub_791C4();
  v76 = *v18;
  v77 = v18[1];

  v19 = v111;
  v20 = v77;
  v21 = v109;
  *v111 = v76;
  v19[1] = v20;
  (*(v21 + 104))();
  sub_7CF84(v78, v79, v120 & 0x100000000);
  sub_7CE94();
  v80 = *sub_622EC();
  v80;
  v86 = [v80 bundleURL];
  sub_7BC94();
  (*(v100 + 32))(v85, v102, v103);

  (*(v81 + 104))(v85, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v83);
  sub_3E1D0();
  v156 = 0;
  v157 = 0;
  v158 = *(&v120 + 3) & 0x100;
  sub_7BC34();

  v92 = sub_7D714();
  v87 = v22;
  sub_7CF84("General", v117, v120 & 0x100000000);
  sub_7CE94();
  sub_6234C(v88, v87);
  v91(v88, v89);
  sub_71DDC(v92, v108);
  v104 = v23;
  v24 = sub_79224();
  (*(v100 + 16))(v102, v24, v103);
  v150 = v93;
  v151 = v94;
  v152 = v95;
  v153 = v96;
  v154 = v97;
  v155 = v98;
  v122 = swift_getOpaqueTypeConformance2();
  sub_7C704();
  (*(v100 + 8))(v102, v103);

  (*(v105 + 8))(v107, v108);
  (*(v109 + 8))(v111, v112);
  (*(v113 + 8))(v115, v121);
  sub_3AF28();
  v25 = swift_allocObject();
  v26 = v119;
  v27 = v120;
  v28 = BYTE4(v120);
  v29 = v121;
  v30 = v122;
  v125 = v25;
  *(v25 + 16) = v118;
  *(v25 + 24) = v26;
  *(v25 + 32) = v27 & 1 & v28;
  v148 = v29;
  v149 = v30;
  v130 = swift_getOpaqueTypeConformance2();
  sub_7C7A4();

  (*(v126 + 8))(v128, v129);
  v146 = v129;
  v147 = v130;
  swift_getOpaqueTypeConformance2();
  sub_7C9A4();
  (*(v135 + 8))(v137, v138);
  v141 = sub_3E800();
  sub_1991C(v142, v140, v143);
  sub_3EAB4(v142);
  sub_3EB94(v143, v142);
  sub_1991C(v142, v140, v139);
  sub_3EAB4(v142);
  return sub_3EAB4(v143);
}

uint64_t sub_3C068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v63 = a2;
  v62 = a1;
  v49 = a4;
  v65 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v50 = a3;
  v51 = sub_1A88(&qword_91A08, &qword_7FF80);
  v52 = *(v51 - 8);
  v53 = v52;
  v54 = *(v52 + 64);
  __chkstk_darwin(0);
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = &v24 - v56;
  __chkstk_darwin(v4);
  v57 = &v24 - v56;
  v103 = &v24 - v56;
  v58 = sub_7CEF4();
  v59 = *(v58 - 8);
  v60 = v59;
  __chkstk_darwin(v58 - 8);
  v61 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1A88(&qword_91A10, &qword_7FF88);
  v67 = *(v66 - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  __chkstk_darwin(v65);
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v24 - v71;
  __chkstk_darwin(v6);
  v72 = &v24 - v71;
  v102 = &v24 - v71;
  v99 = v7;
  v100 = v8;
  v101 = v9 & 1;
  v73 = sub_7D184();
  v74 = sub_7D174();
  v75 = sub_7D154();
  v76 = v10;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = 1;
  sub_7CF84("INSTALLED_FONTS_CLARIFICATION", 0x1DuLL, 1);
  sub_7CE94();
  v24 = sub_61F88(v61);
  v25 = v11;
  v31 = *(v60 + 8);
  v30 = v60 + 8;
  v31(v61, v58);
  v97 = v24;
  v98 = v25;
  v35 = sub_198A4();
  v34 = &type metadata for String;
  v93 = sub_7C6E4();
  v94 = v12;
  v95 = v13;
  v96 = v14;
  v89 = v93;
  v90 = v12;
  v91 = v13;
  v92 = v14;
  v42 = v50 & 1;
  sub_3AF28();
  v28 = &v24;
  v36 = 33;
  __chkstk_darwin(&v24);
  v15 = v63;
  v26 = &v24 - 6;
  *(&v24 - 4) = v62;
  *(&v24 - 3) = v15;
  *(&v24 - 16) = v16;
  v27 = sub_1A88(&qword_91A18, &qword_7FF90);
  sub_3F5C0();
  v39 = &type metadata for Text;
  v40 = &protocol witness table for Text;
  sub_7CC24();
  sub_3AF68(v62, v63);
  v43 = sub_3F648();
  sub_1991C(v70, v66, v72);
  v48 = *(v68 + 8);
  v47 = v68 + 8;
  v48(v70, v66);
  sub_7CF84("MORE_FONTS_CLARIFICATION", 0x18uLL, v29);
  sub_7CE94();
  v32 = sub_61F88(v61);
  v33 = v17;
  v31(v61, v58);
  v87 = v32;
  v88 = v33;
  v83 = sub_7C6E4();
  v84 = v18;
  v85 = v19;
  v86 = v20;
  v80[2] = v83;
  v80[3] = v18;
  v81 = v19;
  v82 = v20;
  sub_3AF28();
  v41 = &v24;
  __chkstk_darwin(&v24);
  v21 = v63;
  v37 = &v24 - 6;
  *(&v24 - 4) = v62;
  *(&v24 - 3) = v21;
  *(&v24 - 16) = v22;
  v38 = sub_1A88(&qword_91A30, &qword_7FF98);
  sub_3F70C();
  sub_7CC24();
  sub_3AF68(v62, v63);
  v44 = sub_3F794();
  sub_1991C(v55, v51, v57);
  v46 = *(v53 + 8);
  v45 = v53 + 8;
  v46(v55, v51);
  (*(v68 + 16))(v70, v72, v66);
  v80[0] = v70;
  (*(v53 + 16))(v55, v57, v51);
  v80[1] = v55;
  v79[0] = v66;
  v79[1] = v51;
  v77 = v43;
  v78 = v44;
  sub_4E6CC(v80, 2uLL, v79, v49);
  v46(v55, v51);
  v48(v70, v66);
  v46(v57, v51);
  v48(v72, v66);
}

unint64_t sub_3CA84()
{
  v2 = qword_919C0;
  if (!qword_919C0)
  {
    sub_B24C(&qword_919B8, &qword_7FDB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3CB0C()
{
  v2 = qword_919C8;
  if (!qword_919C8)
  {
    sub_B24C(&qword_91980, &qword_7FD80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3CB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v32 = a1;
  v30 = a2;
  v31 = a3;
  v29 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v33 = sub_1A88(&qword_91A30, &qword_7FF98);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v35 = &v18[-v34];
  v36 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v37 = &v18[-v36];
  v38 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v39 = &v18[-v38];
  v40 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v41 = &v18[-v40];
  v56 = &v18[-v40];
  v53 = v10;
  v54 = v11;
  v55 = v12 & 1;
  v42 = sub_7D184();
  v43 = sub_7D174();
  v44 = sub_7D154();
  v45 = v13;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_3CF98(v32, v30, v31 & 1);
  v24 = v14;
  v25 = sub_1A88(&qword_919D0, &qword_7FDC0);
  v22 = sub_B24C(&qword_919D8, &qword_7FDC8);
  v15 = sub_3E0A8();
  v51 = v22;
  v52 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_19ECC(0, v23, v24, v25, OpaqueTypeConformance2, v39);
  v27 = sub_3F70C();
  sub_1991C(v39, v33, v41);
  sub_3F844(v39);
  v50 = v39;
  v19 = 1;
  v20 = sub_3D980(v32, v30, v31 & 1);
  sub_19ECC(v19, v20, v16, v25, OpaqueTypeConformance2, v37);
  sub_1991C(v37, v33, v39);
  sub_3F844(v37);
  sub_3F998(v41, v37);
  v21 = v49;
  v49[0] = v37;
  sub_3F998(v39, v35);
  v49[1] = v35;
  v48[0] = v33;
  v48[1] = v33;
  v46 = v27;
  v47 = v27;
  sub_4E6CC(v21, 2uLL, v48, v28);
  sub_3F844(v35);
  sub_3F844(v37);
  sub_3F844(v39);
  sub_3F844(v41);
}

uint64_t (*sub_3CF98(uint64_t a1, uint64_t a2, char a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3AF28();
  v3 = swift_allocObject();
  result = sub_3FC04;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t sub_3D09C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v53 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v70 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v87 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v35 = 0;
  v57 = sub_7BCD4();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v24 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v56 = &v24 - v24;
  v49 = sub_7CEF4();
  v43 = *(v49 - 8);
  v44 = v49 - 8;
  v25 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v48 = &v24 - v25;
  v62 = sub_7BC24();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v26 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v61 = &v24 - v26;
  v66 = sub_7CD04();
  v63 = *(v66 - 8);
  v64 = v66 - 8;
  v27 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v65 = (&v24 - v27);
  v36 = type metadata accessor for ListView(v5);
  v28 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v6 = (&v24 - v28);
  v40 = &v24 - v28;
  v68 = sub_1A88(&qword_919D8, &qword_7FDC8);
  v29 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68);
  v67 = &v24 - v29;
  v78 = sub_1A88(&qword_919D0, &qword_7FDC0);
  v72 = *(v78 - 8);
  v73 = v78 - 8;
  v30 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v76 = &v24 - v30;
  v31 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v77 = &v24 - v31;
  v87 = &v24 - v31;
  v86 = v9;
  v83 = v10;
  v84 = v11;
  v45 = 1;
  v85 = v12 & 1;
  v13 = sub_4E948();
  sub_4E980(v13, v14, v53, v6);
  v39 = sub_3AE8C(v32, v33, v34 & 1);
  v37 = type metadata accessor for FontSettingsModel(v35);
  v38 = sub_3E150(v15);
  sub_1AC10();
  sub_7C834();

  sub_3ED20(v40);
  v16 = sub_791C4();
  v41 = *v16;
  v42 = v16[1];

  v17 = v65;
  v18 = v42;
  v19 = v63;
  *v65 = v41;
  v17[1] = v18;
  (*(v19 + 104))();
  sub_79024(v53, v48);
  sub_6234C(v48, v61);
  v51 = *(v43 + 8);
  v50 = v43 + 8;
  v51(v48, v49);
  v52 = sub_7D714();
  v47 = v20;
  sub_7CF84("General", 7uLL, v45 & 1);
  sub_7CE94();
  sub_6234C(v48, v47);
  v51(v48, v49);
  v21 = *(v59 + 72);
  v71 = 1;
  v46 = v21;
  sub_7CF84("Fonts", 5uLL, v45 & 1);
  sub_7CE94();
  sub_6234C(v48, v47 + v46);
  v51(v48, v49);
  sub_71DDC(v52, v62);
  v58 = v22;
  sub_79290(v53, v56);
  v69 = sub_3E0A8();
  sub_7C704();
  (*(v54 + 8))(v56, v57);

  (*(v59 + 8))(v61, v62);
  (*(v63 + 8))(v65, v66);
  sub_3EEFC(v67);
  v81 = v68;
  v82 = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v76, v78, v77);
  v80 = *(v72 + 8);
  v79 = v72 + 8;
  v80(v76, v78);
  (*(v72 + 16))(v76, v77, v78);
  sub_1991C(v76, v78, v74);
  v80(v76, v78);
  return (v80)(v77, v78);
}

uint64_t (*sub_3D980(uint64_t a1, uint64_t a2, char a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3AF28();
  v3 = swift_allocObject();
  result = sub_3FC04;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t sub_3DA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v24 = a1;
  v22 = a2;
  v23 = a3;
  v21 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v25 = sub_1A88(&qword_91A30, &qword_7FF98);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v27 = (&v14 - v26);
  v28 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v29 = (&v14 - v28);
  v39 = &v14 - v28;
  v36 = v6;
  v37 = v7;
  v38 = v8 & 1;
  v30 = sub_7D184();
  v31 = sub_7D174();
  v32 = sub_7D154();
  v33 = v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_3DCB0(v24, v22, v23 & 1);
  v17 = v10;
  v18 = sub_1A88(&qword_919D0, &qword_7FDC0);
  v15 = sub_B24C(&qword_919D8, &qword_7FDC8);
  v11 = sub_3E0A8();
  v34 = v15;
  v35 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_19ECC(2, v16, v17, v18, OpaqueTypeConformance2, v27);
  v19 = sub_3F70C();
  sub_1991C(v27, v25, v29);
  sub_3F844(v27);
  sub_3F998(v29, v27);
  sub_1991C(v27, v25, v20);
  sub_3F844(v27);
  sub_3F844(v29);
}

uint64_t (*sub_3DCB0(uint64_t a1, uint64_t a2, char a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3AF28();
  v3 = swift_allocObject();
  result = sub_3FC04;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t sub_3DD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v20 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v43 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v25 = sub_1A88(&qword_919D0, &qword_7FDC0);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v29 = &v14 - v28;
  v30 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v31 = &v14 - v30;
  v43 = &v14 - v30;
  v32 = *v7;
  v42 = v32;
  v39 = v8;
  v40 = v9;
  v41 = v10 & 1;
  v33 = sub_7D184();
  v34 = sub_7D174();
  v35 = sub_7D154();
  v36 = v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3D09C(v32, v21, v22, v23 & 1, v29);
  v15 = sub_B24C(&qword_919D8, &qword_7FDC8);
  v12 = sub_3E0A8();
  v37 = v15;
  v38 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v29, v25, v31);
  v18 = *(v26 + 8);
  v17 = v26 + 8;
  v18(v29, v25);
  (*(v26 + 16))(v29, v31, v25);
  sub_1991C(v29, v25, v19);
  v18(v29, v25);
  v18(v31, v25);
}

unint64_t sub_3E0A8()
{
  v3 = qword_919E0;
  if (!qword_919E0)
  {
    sub_B24C(&qword_919D8, &qword_7FDC8);
    sub_3E150(v0);
    sub_206A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919E0);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_3E150(double a1)
{
  v3 = qword_919E8;
  if (!qword_919E8)
  {
    type metadata accessor for ListView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919E8);
    return WitnessTable;
  }

  return v3;
}

uint64_t sub_3E1E8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 33) = a3;
  *(v3 + 56) = a2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  sub_7D184();
  *(v3 + 64) = sub_7D174();
  v6 = sub_7D154();
  *(v3 + 72) = v6;
  *(v3 + 80) = v4;

  return _swift_task_switch(sub_3E2C0, v6);
}

uint64_t sub_3E2C0()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  *(v0 + 40) = v0;
  *(v0 + 88) = sub_3AE8C(v3, v2, v1 & 1);
  v4 = swift_task_alloc();
  *(v6 + 96) = v4;
  *v4 = *(v6 + 40);
  v4[1] = sub_3E388;

  return sub_11118();
}

uint64_t sub_3E388()
{
  v3 = *v0;
  *(*v0 + 40) = *v0;

  v1 = *(v3 + 72);

  return _swift_task_switch(sub_3E4E8, v1);
}

uint64_t sub_3E4E8()
{
  *(v0 + 40) = v0;

  v1 = *(*(v0 + 40) + 8);

  return v1();
}

uint64_t sub_3E5C0()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_25A4;

  return sub_3E1E8(v7, v5, v6 & 1);
}

uint64_t sub_3E694()
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [objc_opt_self() sharedManager];
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 45;
    LODWORD(v3) = 0;
    sub_7D5E4();
    __break(1u);
  }

  [v4 resumeAndShowAlertForSuspendedFontProviders];
}

unint64_t sub_3E800()
{
  v2 = qword_919F0;
  if (!qword_919F0)
  {
    sub_B24C(&qword_919B0, &qword_7FDB0);
    sub_B24C(&qword_919A0, &qword_7FDA0);
    sub_B24C(&qword_91998, &qword_7FD98);
    sub_B24C(&qword_91990, &qword_7FD90);
    sub_B24C(&qword_919D0, &qword_7FDC0);
    sub_B24C(&qword_91988, &qword_7FD88);
    sub_B24C(&qword_91980, &qword_7FD80);
    sub_3CB0C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_19E54();
    sub_B24C(&qword_919D8, &qword_7FDC8);
    sub_3E0A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3EAB4(uint64_t a1)
{
  v1 = sub_1A88(&qword_919A8, &qword_7FDA8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_919B0, &qword_7FDB0) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_3EB94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_919A8, &qword_7FDA8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = *(sub_1A88(&qword_919B0, &qword_7FDB0) + 36);
  if (*(a1 + v13))
  {
    v9 = *(a1 + v13);
    v10 = *(a1 + v13 + 8);

    v3 = (a2 + v13);
    *v3 = v9;
    v3[1] = v10;
  }

  else
  {
    *(a2 + v13) = *(a1 + v13);
  }

  v7 = a2 + v13;
  v8 = a1 + v13;
  if (*(a1 + v13 + 16))
  {
    v5 = *(v8 + 16);
    v6 = *(a1 + v13 + 24);

    *(v7 + 16) = v5;
    *(a2 + v13 + 24) = v6;
  }

  else
  {
    *(v7 + 16) = *(v8 + 16);
  }

  return a2;
}

char *sub_3ED20(char *a1)
{

  v5 = *(type metadata accessor for ListView(0) + 20);
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00, &qword_7FDF0);
    if (!(*(*(v4 - 8) + 48))(&a1[v5], 1))
    {

      v3 = &a1[v5 + *(v4 + 32)];
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return a1;
}

char *sub_3EEFC(char *a1)
{

  v5 = *(type metadata accessor for ListView(0) + 20);
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00, &qword_7FDF0);
    if (!(*(*(v4 - 8) + 48))(&a1[v5], 1))
    {

      v3 = &a1[v5 + *(v4 + 32)];
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  sub_1A88(&qword_919D8, &qword_7FDC8);

  return a1;
}

uint64_t sub_3F110()
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v5 = sub_3ADFC(sub_1484C, 0);
  v4 = v0;
  v3 = v1;
  sub_3AF28();
  v6 = v5;
  v7 = v4;
  v8 = v3 & 1;
  sub_3F570(&v6);
  return v5;
}

__n128 sub_3F1DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_3F1F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_3F2E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 16) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_3F4CC()
{
  sub_B24C(&qword_919D8, &qword_7FDC8);
  sub_3E0A8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_3F5C0()
{
  v2 = qword_91A20;
  if (!qword_91A20)
  {
    sub_B24C(&qword_91A18, &qword_7FF90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3F648()
{
  v2 = qword_91A28;
  if (!qword_91A28)
  {
    sub_B24C(&qword_91A10, &qword_7FF88);
    sub_3F5C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3F70C()
{
  v2 = qword_91A38;
  if (!qword_91A38)
  {
    sub_B24C(&qword_91A30, &qword_7FF98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3F794()
{
  v2 = qword_91A40;
  if (!qword_91A40)
  {
    sub_B24C(&qword_91A08, &qword_7FF80);
    sub_3F70C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A40);
    return WitnessTable;
  }

  return v2;
}

void *sub_3F844(void *a1)
{
  sub_1A88(&qword_90F10, &qword_7FFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7CD24();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v4 = a1 + *(sub_1A88(&qword_91A30, &qword_7FF98) + 36);
  sub_1A88(&qword_90F20, &qword_7EEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BD84();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return a1;
}

void *sub_3F998(void *a1, void *a2)
{
  sub_1A88(&qword_90F10, &qword_7FFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7CD24();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v13 = *a1;

    *a2 = v13;
  }

  swift_storeEnumTagMultiPayload();
  v10 = sub_1A88(&qword_91A30, &qword_7FF98);
  v11 = (a2 + v10[9]);
  v12 = (a1 + v10[9]);
  sub_1A88(&qword_90F20, &qword_7EEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BD84();
    (*(*(v3 - 8) + 16))(v11, v12);
  }

  else
  {
    v9 = *v12;

    *v11 = v9;
  }

  swift_storeEnumTagMultiPayload();
  *(a2 + v10[10]) = *(a1 + v10[10]);
  v4 = v10[11];
  v7 = (a2 + v4);
  v6 = *(a1 + v4);
  v8 = *(a1 + v4 + 8);

  result = a2;
  *v7 = v6;
  v7[1] = v8;
  return result;
}

void *sub_3FCD4@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v10 = a1;
  v9 = a2;
  LOBYTE(__b[10]) = sub_2EFE0(0) & 1;
  __b[11] = v3;
  a1;
  sub_40038(a1, a2, v12);
  memcpy(__b, v12, 0x50uLL);
  memcpy(v13, __b, sizeof(v13));
  sub_2DCF0(v13, v8);

  sub_2DCB0(__b);
  return memcpy(a3, v13, 0x60uLL);
}

uint64_t sub_3FE04()
{
  v4 = *(v0 + 80);
  sub_40460(&v4, v3);
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CAE4();
  sub_26D50(&v4);
  return v2 & 1;
}

void sub_3FE80(char a1)
{
  v5 = *(v1 + 80);
  sub_40460(&v5, v4);
  sub_40460(&v5, v3);
  v2 = v5;
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CAF4();
  sub_26D50(&v2);
  sub_26D50(&v5);
}

uint64_t sub_3FF1C()
{
  v4 = *(v0 + 80);
  sub_40460(&v4, v3);
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CB04();
  sub_26D50(&v4);
  return v2;
}

uint64_t sub_3FFB0()
{
  v2 = *(v0 + 80);

  return v2 & 1;
}

uint64_t sub_3FFEC(char a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

void *sub_40038@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v36 = 0u;
  v37 = 0u;
  v40 = a1;
  v39 = a2;
  a1;
  *&__b[0] = a1;
  WORD4(__b[0]) = a2;
  v4 = sub_7D714();
  *v5 = a2;
  sub_71DDC(v4, &type metadata for UInt16);
  v12 = v6;

  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(a1, kCTFontOrientationHorizontal, (v12 + 32), 0, 1);
  v38 = BoundingRectsForGlyphs;
  *&v18 = BoundingRectsForGlyphs.origin.x;
  *(&v18 + 1) = *&BoundingRectsForGlyphs.origin.y;
  *&v19 = BoundingRectsForGlyphs.size.width;
  *(&v19 + 1) = *&BoundingRectsForGlyphs.size.height;
  swift_unknownObjectRelease();

  v36 = v18;
  v37 = v19;
  v7 = sub_7D714();
  *v8 = a2;
  sub_71DDC(v7, &type metadata for UInt16);
  v14 = v9;

  AdvancesForGlyphs = CTFontGetAdvancesForGlyphs(a1, kCTFontOrientationDefault, (v14 + 32), 0, 1);
  swift_unknownObjectRelease();

  v35 = AdvancesForGlyphs;
  v15 = sub_6227C();
  v33 = v15 + sub_622B4();
  v32 = sub_46064(*&v18, *(&v18 + 1), *&v19, *(&v19 + 1));
  sub_275DC();
  sub_7D744();
  *(&__b[4] + 1) = v34;
  v30 = sub_460A4(*&v18, *(&v18 + 1), *&v19, *(&v19 + 1));
  v29 = 0;
  sub_7D754();
  v10 = sub_622B4();
  *&__b[1] = -v31;
  *(&__b[1] + 1) = v10;
  v27 = AdvancesForGlyphs;
  v26 = sub_460E4(*&v18, *(&v18 + 1), *&v19, *(&v19 + 1));
  sub_7D744();
  v17 = v28;
  v24 = sub_460A4(*&v18, *(&v18 + 1), *&v19, *(&v19 + 1));
  v23 = 0;
  sub_7D754();
  *&__b[4] = v17 - v25;
  __b[2] = v18;
  __b[3] = v19;
  memcpy(__dst, __b, sizeof(__dst));
  sub_403E8(__dst, v22);

  sub_BB0C(__b);
  return memcpy(a3, __dst, 0x50uLL);
}

__n128 sub_403E8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *a1;
  *a2 = v3;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  return result;
}

uint64_t sub_40460(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_404A0@<X0>(uint64_t a1@<X8>)
{
  v52 = &v100;
  v83 = a1;
  v46 = &opaque type descriptor for <<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>;
  v47 = sub_46604;
  v60 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  v62 = &opaque type descriptor for <<opaque return type of View.presentationCompactAdaptation(_:)>>;
  v64 = sub_4665C;
  v79 = &unk_882EC;
  v110 = 0;
  v109 = 0;
  v11 = 0;
  v68 = sub_7C4F4();
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v10 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v67 = (&v10 - v10);
  v43 = sub_7C3B4();
  v38 = *(v43 - 8);
  v39 = v43 - 8;
  v12 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v40 = &v10 - v12;
  v30 = type metadata accessor for RenderedGlyphView(v1);
  v13 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v2 = &v10 - v13;
  v32 = &v10 - v13;
  v33 = sub_1A88(&qword_91A48, &qword_7FFB8);
  v14 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v37 = &v10 - v14;
  v42 = sub_1A88(&qword_91A50, &qword_7FFC0);
  v15 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v41 = &v10 - v15;
  v58 = sub_1A88(&qword_91A58, &qword_7FFC8);
  v49 = *(v58 - 8);
  v50 = v58 - 8;
  v16 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58);
  v51 = &v10 - v16;
  v75 = sub_1A88(&qword_91A60, &qword_7FFD0);
  v72 = *(v75 - 8);
  v73 = v75 - 8;
  v17 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v74 = &v10 - v17;
  v87 = sub_1A88(&qword_91A68, &qword_7FFD8);
  v81 = *(v87 - 8);
  v82 = v87 - 8;
  v18 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87);
  v85 = &v10 - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v18);
  v86 = &v10 - v19;
  v110 = &v10 - v19;
  v109 = v4;
  v20 = __dst;
  v25 = 80;
  memcpy(__dst, v4, sizeof(__dst));
  sub_403E8(__dst, &v108);
  sub_40F20(v20, v2);
  v21 = v117;
  memcpy(v117, v56, v25);
  sub_403E8(v21, v107);
  v119 = v118;
  sub_BB0C(v21);
  v24 = &v106;
  v106 = v119;
  v22 = v115;
  memcpy(v115, v56, v25);
  sub_403E8(v22, &v105);
  v116 = v115[9];
  sub_BB0C(v22);
  v23 = &v104;
  v104 = v116;
  sub_275DC();
  sub_7D744();
  v27 = 2.0;
  v28 = v107[10] * 2.0;
  v26 = v112;
  memcpy(v112, v56, v25);
  sub_403E8(v26, &v103);
  v113 = *&v112[9];
  sub_BB0C(v26);
  v114 = v113;
  v29 = v113 * v27;
  v31 = sub_46198();
  sub_3FCB0(v30);
  sub_7C8E4();
  sub_46218(v32);
  sub_7CCE4();
  v35 = sub_462E8();
  v36 = sub_4638C();
  v34 = &type metadata for Rectangle;
  sub_41054();
  sub_7C7B4();
  sub_46218(v37);
  sub_7C174();
  v44 = sub_46404();
  v45 = sub_46534(v5);
  sub_1E6EC();
  sub_7C784();
  (*(v38 + 8))(v40, v43);
  sub_46218(v41);
  sub_2DCF0(v56, &v102);
  v54 = 112;
  v55 = 7;
  v48 = swift_allocObject();
  v57 = 96;
  memcpy((v48 + 16), v56, 0x60uLL);
  v101[2] = v42;
  v101[3] = v43;
  v101[4] = v44;
  v101[5] = v45;
  v80 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_41194();
  sub_7C7C4();
  v6 = v56;

  (*(v49 + 8))(v51, v58);
  v7 = v6[5];
  v53 = v111;
  *(v52 + 33) = v7;
  sub_40460(v111, v101);
  *v52 = *(v52 + 33);
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CB04();
  v70 = v98[12];
  v71 = v98[13];
  v63 = v99;
  sub_26D50(v53);
  sub_2DCF0(v56, v98);
  v69 = swift_allocObject();
  memcpy((v69 + 16), v56, v57);
  v76 = sub_1A88(&qword_91AB0, &qword_7FFF0);
  v96 = v58;
  v97 = OpaqueTypeConformance2;
  v77 = swift_getOpaqueTypeConformance2();
  v61 = type metadata accessor for GlyphPopoverView(255);
  v8 = sub_466D8();
  v94 = v61;
  v95 = v8;
  v78 = swift_getOpaqueTypeConformance2();
  sub_AB94(v67);
  sub_AC14(v70, v71, v63 & 1, v67, 4, v64, v69, v75, v76, v77, v78);
  (*(v65 + 8))(v67, v68);

  (*(v72 + 8))(v74, v75);
  v90 = v75;
  v91 = v76;
  v92 = v77;
  v93 = v78;
  v84 = swift_getOpaqueTypeConformance2();
  sub_1991C(v85, v87, v86);
  v89 = *(v81 + 8);
  v88 = v81 + 8;
  v89(v85, v87);
  (*(v81 + 16))(v85, v86, v87);
  sub_1991C(v85, v87, v83);
  v89(v85, v87);
  return (v89)(v86, v87);
}

uint64_t sub_40F20@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = a1;
  v19 = 0;
  v18 = 0;
  v3 = type metadata accessor for RenderedGlyphView(0);
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v16 = &v11 - v12;
  v19 = &v11 - v12;
  v18 = v4;
  v13 = *(v5 + 36);
  swift_getKeyPath();
  sub_7BF24();
  v6 = v15;
  v24 = *(v15 + 4);
  *v16 = v24;
  sub_403E8(v6, v17);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v23 = *v15;
  *(v16 + 8) = v23;
  v22 = *(v8 + 1);
  *(v9 + 16) = v22;
  v21 = v8[8];
  *(v9 + 32) = v21;
  v20 = v8[9];
  *(v9 + 40) = v20;
  sub_4850C(v9, v7);
  sub_BB0C(v15);
  return sub_46218(v16);
}

uint64_t sub_41070(uint64_t a1)
{
  v6 = a1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a1 + 80);
  sub_40460(&v7, v5);
  sub_40460(&v7, v4);
  v3 = v7;
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CAF4();
  sub_26D50(&v3);
  sub_26D50(&v7);
}

uint64_t sub_411AC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v24 = a1;
  v15 = &opaque type descriptor for <<opaque return type of View.presentationCompactAdaptation(_:)>>;
  v42 = 0;
  v41 = 0;
  v25 = 0;
  v16 = sub_7C4C4();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v20 = &v8 - v19;
  v21 = type metadata accessor for GlyphPopoverView(v2);
  v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v23 = (&v8 - v22);
  v26 = sub_1A88(&qword_91AB0, &qword_7FFF0);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v30 = *(v27 + 64);
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v31 = &v8 - v29;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v33 = &v8 - v32;
  v42 = &v8 - v32;
  v41 = v4;
  v34 = sub_7D184();
  v35 = sub_7D174();
  v36 = sub_7D154();
  v37 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = v23;
  v9 = __dst;
  memcpy(__dst, v24, sizeof(__dst));
  sub_403E8(__dst, v40);
  sub_41678(v9, v6);
  sub_7C4B4();
  v10 = sub_466D8();
  sub_7C8A4();
  (*(v17 + 8))(v20, v16);
  sub_489CC(v23);
  v38 = v21;
  v39 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v31, v26, v33);
  v13 = *(v27 + 8);
  v12 = v27 + 8;
  v13(v31, v26);
  (*(v27 + 16))(v31, v33, v26);
  sub_1991C(v31, v26, v14);
  v13(v31, v26);
  v13(v33, v26);
}

id *sub_41678@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v52 = a1;
  v38 = sub_4867C;
  v39 = "Fatal error";
  v40 = "Not enough bits to represent the passed value";
  v41 = "Swift/Integers.swift";
  v67 = 0;
  v66 = 0;
  v57 = 0;
  v58 = 0;
  v42 = 0;
  v45 = type metadata accessor for GlyphPopoverView(0);
  v43 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v50 = (&v20 - v43);
  v67 = &v20 - v43;
  v66 = v2;
  v3 = sub_26C54(0.0);
  v4 = v50;
  v5 = v3;
  v6 = v45;
  v50[14] = v7;
  v4[15] = v5;
  v44 = *(v6 + 36);
  swift_getKeyPath();
  sub_7BF24();
  v47 = *(v45 + 40);
  swift_getKeyPath();
  sub_7BF24();
  sub_403E8(v52, v65);
  v48 = *v52;
  v49 = sub_6263C(120.0);

  v8 = *(v52 + 4);
  v51 = v68;
  sub_40038(v49, v8, v68);
  memcpy(v50, v51, 0x50uLL);
  sub_403E8(v52, &v62);
  v53 = *v52;
  v69 = *(v52 + 4);
  v54 = v69;
  v36 = CTFontCopyNameForGlyph(v53, v69);

  if (v36)
  {
    v35 = v36;
    v30 = v36;
    v31 = sub_7CF14();
    v32 = v9;

    v33 = v31;
    v34 = v32;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v60 = v33;
  v61 = v34;
  if (v34)
  {
    v63 = v60;
    v64 = v61;
  }

  else
  {
    v63 = sub_7CF84(".notdef", 7uLL, 1);
    v64 = v10;
    if (v61)
    {
      sub_1F58(&v60);
    }
  }

  v11 = v42;
  v12 = v52;
  v13 = v50;
  v14 = v64;
  v50[10] = v63;
  v13[11] = v14;
  sub_403E8(v12, &v59);
  v24 = *v52;
  v25 = CTFontCopyStringForGlyph();

  v26 = sub_7CF14();
  v27 = v15;
  v57 = v26;
  v58 = v15;

  v56[0] = sub_7CF64();
  v56[1] = v16;
  KeyPath = swift_getKeyPath();

  v17 = sub_486B0();
  v29 = sub_7FFC(v38, KeyPath, &type metadata for String.UnicodeScalarView, &type metadata for Unicode.Scalar, &type metadata for Never, v17, &protocol witness table for Never, v46);
  if (v11)
  {

    __break(1u);
  }

  else
  {
    v21 = v29;

    sub_1F58(v56);
    v18 = v52;
    v50[12] = v21;
    sub_403E8(v18, &v55);
    v22 = *v52;
    v23 = sub_62784();

    *(v50 + 104) = (v23 ^ 1) & 1;

    sub_48728(v50, v37);
    sub_BB0C(v52);
    return sub_489CC(v50);
  }

  return result;
}

uint64_t sub_41BBC()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_41BF4()
{
  v2 = *(v0 + 96);

  return v2;
}

double sub_41C2C()
{

  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAE4();

  return v1;
}

uint64_t sub_41CA8(double a1)
{
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);

  v5[0] = v3;
  v5[1] = v4;
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAF4();
  sub_26D50(v5);
}

double sub_41D44()
{

  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CB04();

  return v1;
}

double sub_41DD8()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t sub_41E10(uint64_t a1, double a2)
{

  *(v2 + 112) = a2;
  *(v2 + 120) = a1;
}

void *sub_41E58@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91AD0, &qword_80088);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = (&v4 - v5);
  v2 = type metadata accessor for GlyphPopoverView(0);
  sub_48B50((v6 + *(v2 + 36)), v1);
  sub_7BF04();
  return sub_48C24(v9);
}

void *sub_41F50(void *a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91AD0, &qword_80088) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = (&v5 - v6);
  sub_48B50(v2, (&v5 - v6));
  v3 = type metadata accessor for GlyphPopoverView(0);
  sub_48CC0(v7, (v1 + *(v3 + 36)));
  return sub_48C24(v8);
}

void *sub_42000@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91AD8, &qword_80090);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = (&v4 - v5);
  v2 = type metadata accessor for GlyphPopoverView(0);
  sub_48DAC((v6 + *(v2 + 40)), v1);
  sub_7BF04();
  return sub_48E80(v9);
}

void *sub_420F8(void *a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91AD8, &qword_80090) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = (&v5 - v6);
  sub_48DAC(v2, (&v5 - v6));
  v3 = type metadata accessor for GlyphPopoverView(0);
  sub_48F1C(v7, (v1 + *(v3 + 40)));
  return sub_48E80(v8);
}

uint64_t sub_421A8()
{
  v16 = 0;
  v9 = sub_1A88(&qword_91AD8, &qword_80090);
  v5 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v0 = (&v5 - v5);
  v10 = (&v5 - v5);
  v6 = 0;
  v13 = sub_7BEF4();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v14 = &v5 - v7;
  v16 = v1;
  v3 = type metadata accessor for GlyphPopoverView(v2);
  sub_48DAC((v8 + *(v3 + 40)), v0);
  sub_7BF04();
  sub_48E80(v10);
  if ((*(v11 + 88))(v14, v13) == enum case for ColorScheme.dark(_:))
  {
    return sub_7C9F4();
  }

  v15 = sub_7C9D4();
  (*(v11 + 8))(v14, v13);
  return v15;
}

uint64_t sub_42370(int *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_423D0@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v8 = sub_49008;
  v29 = 0;
  v28 = 0;
  v12 = sub_1A88(&qword_91AE0, &qword_80098);
  v3 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v15 = &v3 - v3;
  v18 = sub_1A88(&qword_91AE8, &qword_800A0);
  v4 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v20 = &v3 - v4;
  v22 = sub_1A88(&qword_91AF0, &qword_800A8);
  v6 = *(*(v22 - 8) + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v24 = &v3 - v5;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v5);
  v25 = &v3 - v7;
  v29 = &v3 - v7;
  v28 = v1;
  v9 = &v26;
  v27 = v1;
  v10 = sub_1A88(&qword_91AF8, &qword_800B0);
  v11 = sub_49010();
  sub_44450(v10);
  v13 = 0;
  sub_7CB94();
  v14 = sub_49098();
  sub_3FCB0(v12);
  v16 = 0;
  v17 = 1;
  sub_7C8F4();
  sub_49120(v15);
  v19 = sub_49274();
  sub_2AB34();
  sub_7C944();
  sub_49120(v20);
  v23 = sub_49318();
  sub_1991C(v24, v22, v25);
  sub_49120(v24);
  sub_493BC(v25, v24);
  sub_1991C(v24, v22, v21);
  sub_49120(v24);
  return sub_49120(v25);
}

uint64_t sub_42704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v27 = a2;
  v43 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v55 = 0;
  v28 = sub_1A88(&qword_91B28, &qword_800D0);
  v29 = *(v28 - 8);
  v30 = v29;
  v32 = *(v29 + 64);
  __chkstk_darwin(v28 - 8);
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v10 - v34;
  __chkstk_darwin(v10 - v34);
  v33 = v10 - v34;
  __chkstk_darwin(v2);
  v35 = v10 - v34;
  v63 = v10 - v34;
  v36 = sub_1A88(&qword_91B40, &qword_800D8);
  v38 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = v10 - v40;
  __chkstk_darwin(v10 - v40);
  v39 = v10 - v40;
  __chkstk_darwin(v3);
  v41 = v10 - v40;
  v62 = v10 - v40;
  v44 = sub_1A88(&qword_91B18, &qword_800C0);
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = *(v45 + 64);
  __chkstk_darwin(v43);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = v10 - v49;
  __chkstk_darwin(v4);
  v50 = v10 - v49;
  v61 = v10 - v49;
  v60 = v5;
  v51 = sub_7D184();
  v52 = sub_7D174();
  v53 = sub_7D154();
  v54 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v10;
  __chkstk_darwin(v10);
  v18 = &v10[-4];
  v10[-2] = v7;
  v19 = sub_1A88(&qword_91D10, &qword_80610);
  sub_4B7E4();
  sub_7CC94();
  v21 = sub_4B86C();
  sub_1991C(v48, v44, v50);
  v22 = *(v46 + 8);
  v23 = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v48, v44);
  v25 = *(v42 + 96);

  v59[2] = v25;
  v24 = sub_1A88(&qword_91D28, &qword_80618);
  sub_4B8F4();
  v26 = sub_7D344();

  if (v26)
  {
    (*(v30 + 56))(v37, 1, 1, v28);
    sub_4B97C();
    sub_4E680(v37, v28, v39);
    sub_4BA04(v37);
    sub_4BAB8(v39, v41);
  }

  else
  {
    v14 = v10;
    __chkstk_darwin(v10);
    v12 = &v10[-4];
    v10[-2] = v8;
    v13 = sub_1A88(&qword_91D48, &qword_80620);
    sub_4BDC0();
    sub_7CC94();
    v15 = sub_4B97C();
    sub_1991C(v33, v28, v35);
    v16 = *(v30 + 8);
    v17 = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v33, v28);
    v55 = v33;
    v11 = *(v30 + 16);
    v10[1] = v30 + 16;
    v11(v31, v35, v28);
    sub_1991C(v31, v28, v33);
    v16(v31, v28);
    v11(v37, v33, v28);
    (*(v30 + 56))(v37, 0, 1, v28);
    sub_4E680(v37, v28, v39);
    sub_4BA04(v37);
    sub_4BAB8(v39, v41);
    v16(v33, v28);
    v16(v35, v28);
  }

  (*(v46 + 16))(v48, v50, v44);
  v59[0] = v48;
  sub_4BBEC(v41, v39);
  v59[1] = v39;
  v58[0] = v44;
  v58[1] = v36;
  v56 = v21;
  v57 = sub_4BD20();
  sub_4E6CC(v59, 2uLL, v58, v27);
  sub_4BA04(v39);
  v22(v48, v44);
  sub_4BA04(v41);
  v22(v50, v44);
}