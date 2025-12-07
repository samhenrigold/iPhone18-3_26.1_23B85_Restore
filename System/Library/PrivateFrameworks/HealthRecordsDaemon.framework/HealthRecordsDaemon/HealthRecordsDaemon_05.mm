uint64_t sub_251AE41E0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingSyncTask(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_251C70014() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_251ADCEE8(a1, v2 + v6, v9, a2);
}

uint64_t sub_251AE42C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AE430C(uint64_t a1)
{
  if (!qword_2813E2388)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    v1 = MEMORY[0x277CBCB58];
    sub_251AE7A1C(255, &qword_2813E26E0, MEMORY[0x277CBCB58]);
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE4438(&qword_2813E26E8, &qword_2813E26E0, v1, MEMORY[0x277CBCB60]);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_2813E2388);
    }
  }
}

uint64_t sub_251AE4438(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251AE7A1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AE447C(uint64_t a1)
{
  if (!qword_2813E2458)
  {
    v1 = MEMORY[0x277CBCCD8];
    sub_251AE61B8(255, &qword_2813E2368, MEMORY[0x277CBCCD8]);
    sub_251AE63E0(&qword_2813E2370, &qword_2813E2368, v1, MEMORY[0x277CBCCE0]);
    v2 = sub_251C708C4();
    if (!v3)
    {
      atomic_store(v2, &qword_2813E2458);
    }
  }
}

void sub_251AE4530(uint64_t a1)
{
  if (!qword_2813E22E8)
  {
    sub_251AE7808(255, &qword_2813E2140, sub_251AE463C, MEMORY[0x277CBCD88]);
    sub_251AE447C(255);
    sub_251AE417C(&qword_2813E2148, &qword_2813E2140, sub_251AE463C);
    sub_251AE42C4(&qword_2813E2460, sub_251AE447C, MEMORY[0x277CBCCD0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E22E8);
    }
  }
}

void sub_251AE463C(uint64_t a1)
{
  if (!qword_2813E1E88)
  {
    sub_251AE406C(255);
    sub_251AE526C(255, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1E88);
    }
  }
}

void sub_251AE46BC(uint64_t a1)
{
  if (!qword_2813E22C8)
  {
    sub_251AE7808(255, &qword_2813E2130, sub_251AE406C, MEMORY[0x277CBCD88]);
    sub_251AE4530(255);
    sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
    sub_251AE42C4(&qword_2813E22F0, sub_251AE4530, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E22C8);
    }
  }
}

void sub_251AE47C8(uint64_t a1)
{
  if (!qword_2813E22F8)
  {
    sub_251AE7808(255, &qword_2813E2150, sub_251AE48D4, MEMORY[0x277CBCD88]);
    sub_251AE46BC(255);
    sub_251AE417C(&qword_2813E2158, &qword_2813E2150, sub_251AE48D4);
    sub_251AE42C4(&qword_2813E22D0, sub_251AE46BC, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E22F8);
    }
  }
}

void sub_251AE48FC(uint64_t a1)
{
  if (!qword_2813E22D8)
  {
    sub_251AE7808(255, &qword_2813E2130, sub_251AE406C, MEMORY[0x277CBCD88]);
    sub_251AE47C8(255);
    sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
    sub_251AE42C4(&qword_2813E2300, sub_251AE47C8, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E22D8);
    }
  }
}

void sub_251AE4A08(uint64_t a1)
{
  if (!qword_2813E24A8)
  {
    sub_251AE48FC(255);
    sub_251AA8E98(255, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
    sub_251AE42C4(&qword_2813E22E0, sub_251AE48FC, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E24A8);
    }
  }
}

uint64_t sub_251AE4AF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_3Tm()
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

  return MEMORY[0x2821FE8E8](v0, v4 + v15, v3 | 7);
}

uint64_t sub_251AE4D74(uint64_t a1)
{
  type metadata accessor for ClinicalSharingSyncTask(0);

  return sub_251ADF710(a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for ClinicalSharingSyncTask(0) - 8);
  v19 = *(*v1 + 80);
  v17 = *(*v1 + 64);
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = *(v3 + 8);
  v20 = v0;
  v18 = (v19 + 16) & ~v19;
  v5 = v0 + v18;
  v16(v0 + v18 + v1[8], v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + v18 + v1[9]));
  v6 = v1[10];
  v7 = sub_251C70074();
  (*(*(v7 - 8) + 8))(v0 + v18 + v6, v7);

  v8 = v0 + v18 + v1[13];

  __swift_destroy_boxed_opaque_existential_1((v8 + 48));
  v9 = v0 + v18 + v1[14];
  v10 = sub_251C6FE64();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v11(v9 + *(v12 + 20), v10);

  if (*(v5 + v1[17]))
  {
  }

  v13 = (v18 + v17 + v4) & ~v4;
  v16(v20 + v13, v2);

  return MEMORY[0x2821FE8E8](v20, v13 + v15, v19 | v4 | 7);
}

uint64_t sub_251AE5084@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingSyncTask(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_251C70014() - 8);
  result = sub_251ADF9A0(*a1, a1[1], v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
  *a2 = result;
  return result;
}

uint64_t sub_251AE51C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251AE51F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ClinicalSharingSyncTask(0);
  result = sub_251AE06A0(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

void sub_251AE526C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251AE52B8(uint64_t a1)
{
  if (!qword_2813E2240)
  {
    sub_251AE406C(255);
    sub_251AE5338();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2240);
    }
  }
}

void sub_251AE536C(uint64_t a1)
{
  if (!qword_2813E2378)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    sub_251AE7098(255, &qword_2813E2248, sub_251AE406C, sub_251AE5338, MEMORY[0x277CBCD10]);
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE548C();
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2378);
    }
  }
}

unint64_t sub_251AE548C()
{
  result = qword_2813E2250;
  if (!qword_2813E2250)
  {
    sub_251AE7098(255, &qword_2813E2248, sub_251AE406C, sub_251AE5338, MEMORY[0x277CBCD10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2250);
  }

  return result;
}

void sub_251AE5528(uint64_t a1)
{
  if (!qword_2813E2468)
  {
    sub_251AE536C(255);
    sub_251AE42C4(&qword_2813E2380, sub_251AE536C, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2468);
    }
  }
}

uint64_t sub_251AE55BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251B2835C(*(v1 + 16));
  *a1 = result;
  return result;
}

void sub_251AE55F0(uint64_t a1)
{
  if (!qword_2813E2328)
  {
    sub_251AE5AC0(255, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata);
    sub_251AE7808(255, &qword_2813E1BE0, sub_251AE406C, MEMORY[0x277CBCF38]);
    sub_251AE5F64(&qword_2813E2188, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata);
    sub_251AE5FB4(&qword_2813E1BE8, &qword_2813E1BE0, sub_251AE406C);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2328);
    }
  }
}

void sub_251AE56FC(uint64_t a1)
{
  if (!qword_2813E2608)
  {
    sub_251AE5AC0(255, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata);
    sub_251AE48D4(255);
    sub_251AE5F64(&qword_2813E2188, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2608);
    }
  }
}

uint64_t sub_251AE57A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251AE5884(uint64_t a1)
{
  if (!qword_2813E2660)
  {
    sub_251AE591C(255, &qword_2813E21F0, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric, sub_251AA98B0);
    sub_251AE59A8();
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2660);
    }
  }
}

void sub_251AE591C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251AE59A8()
{
  result = qword_2813E2200;
  if (!qword_2813E2200)
  {
    sub_251AE591C(255, &qword_2813E21F0, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric, sub_251AA98B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2200);
  }

  return result;
}

void sub_251AE5A2C(uint64_t a1)
{
  if (!qword_2813E2478)
  {
    v1 = MEMORY[0x277D839B0];
    sub_251AE5AC0(255, &qword_2813E20D0, MEMORY[0x277D839B0]);
    sub_251AE5F64(&qword_2813E20D8, &qword_2813E20D0, v1);
    v2 = sub_251C708C4();
    if (!v3)
    {
      atomic_store(v2, &qword_2813E2478);
    }
  }
}

void sub_251AE5AC0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v4 = sub_251C70974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251AE5B38(uint64_t a1)
{
  if (!qword_2813E2538)
  {
    sub_251AE5A2C(255);
    sub_251AE406C(255);
    sub_251AE42C4(&qword_2813E2480, sub_251AE5A2C, MEMORY[0x277CBCCD0]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2538);
    }
  }
}

uint64_t sub_251AE5BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AE5C58(uint64_t a1)
{
  if (!qword_2813E2628)
  {
    sub_251AE591C(255, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, sub_251AE526C);
    sub_251AE463C(255);
    sub_251AE5D00();
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2628);
    }
  }
}

unint64_t sub_251AE5D00()
{
  result = qword_2813E21A8;
  if (!qword_2813E21A8)
  {
    sub_251AE591C(255, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, sub_251AE526C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E21A8);
  }

  return result;
}

uint64_t sub_251AE5D84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *(v2 + 16);
  a2[1] = v3;
}

uint64_t sub_251AE5DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251AE5E58(uint64_t a1)
{
  if (!qword_2813E2318)
  {
    sub_251AE5AC0(255, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations);
    sub_251AE7808(255, &qword_2813E1BF0, sub_251AE5E24, MEMORY[0x277CBCF38]);
    sub_251AE5F64(&qword_2813E2178, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations);
    sub_251AE5FB4(&qword_2813E1BF8, &qword_2813E1BF0, sub_251AE5E24);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2318);
    }
  }
}

uint64_t sub_251AE5F64(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251AE5AC0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AE5FB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AE7808(255, a2, a3, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AE6018(uint64_t a1)
{
  if (!qword_2813E26A8)
  {
    sub_251AE5E58(255);
    sub_251AE42C4(&qword_2813E2320, sub_251AE5E58, MEMORY[0x277CBCCE0]);
    v1 = sub_251C707A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E26A8);
    }
  }
}

void sub_251AE60AC(uint64_t a1)
{
  if (!qword_2813E23B8)
  {
    sub_251AE7808(255, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCD88]);
    sub_251AE6018(255);
    sub_251AE417C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251AE42C4(&qword_2813E26B0, sub_251AE6018, MEMORY[0x277CBCB60]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E23B8);
    }
  }
}

void sub_251AE61B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    v9[0] = v6;
    v9[1] = v6;
    v10 = sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    v11 = v10;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251AE62B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ClinicalSharingSyncTask(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_251AE634C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ClinicalSharingSyncTask(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_251AE63E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251AE61B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AE6424(uint64_t a1)
{
  if (!qword_27F479908)
  {
    sub_251AE7808(255, &qword_27F479910, sub_251AE64F0, MEMORY[0x277CBCD88]);
    sub_251AE6524(255);
    sub_251AE417C(&qword_27F479938, &qword_27F479910, sub_251AE64F0);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479908);
    }
  }
}

void sub_251AE6524(uint64_t a1)
{
  if (!qword_27F479920)
  {
    sub_251AE6818(255, &qword_27F479928, sub_251AE65AC, type metadata accessor for ClinicalSharingSyncContext);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479920);
    }
  }
}

void sub_251AE65E0(uint64_t a1)
{
  if (!qword_27F479940)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    sub_251AE7808(255, &qword_27F479948, sub_251AE6524, v1);
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE417C(&qword_27F479950, &qword_27F479948, sub_251AE6524);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F479940);
    }
  }
}

void sub_251AE6718(uint64_t a1)
{
  if (!qword_27F479968)
  {
    sub_251AE7808(255, &qword_27F479970, sub_251ABA5A0, MEMORY[0x277CBCD88]);
    sub_251AE67E4(255);
    sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479968);
    }
  }
}

void sub_251AE6818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_251AE6894(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_251AE7808(255, a3, a4, MEMORY[0x277CBCD88]);
    sub_251AE417C(a5, a3, a4);
    v9 = sub_251C707D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251AE6934(uint64_t a1)
{
  if (!qword_27F4799A0)
  {
    sub_251AE7808(255, &qword_27F479910, sub_251AE64F0, MEMORY[0x277CBCD88]);
    sub_251AE6894(255, &qword_27F479988, &qword_27F479990, sub_251AE67E4, &qword_27F479998);
    sub_251AE417C(&qword_27F479938, &qword_27F479910, sub_251AE64F0);
    sub_251AE6A3C();
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4799A0);
    }
  }
}

unint64_t sub_251AE6A3C()
{
  result = qword_27F4799A8;
  if (!qword_27F4799A8)
  {
    sub_251AE6894(255, &qword_27F479988, &qword_27F479990, sub_251AE67E4, &qword_27F479998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4799A8);
  }

  return result;
}

void sub_251AE6AC0(uint64_t a1)
{
  if (!qword_27F4799B0)
  {
    sub_251AE6934(255);
    sub_251AE42C4(&qword_27F4799B8, sub_251AE6934, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4799B0);
    }
  }
}

void sub_251AE6B54(uint64_t a1)
{
  if (!qword_27F4799C0)
  {
    sub_251AE6AC0(255);
    sub_251AE64F0(255);
    sub_251AE42C4(&qword_27F4799C8, sub_251AE6AC0, MEMORY[0x277CBCCD0]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4799C0);
    }
  }
}

uint64_t objectdestroy_57Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

void sub_251AE6C64(uint64_t a1)
{
  if (!qword_27F4799E0)
  {
    sub_251AE60AC(255);
    sub_251AE6D10(255);
    sub_251AE42C4(&qword_27F4799F0, sub_251AE60AC, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4799E0);
    }
  }
}

void sub_251AE6D44(uint64_t a1)
{
  if (!qword_27F479A10)
  {
    sub_251AE7808(255, &qword_27F479970, sub_251ABA5A0, MEMORY[0x277CBCD88]);
    sub_251AE6894(255, &qword_27F4799F8, &qword_27F479A00, sub_251AE6D10, &qword_27F479A08);
    sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
    sub_251AE6E4C();
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479A10);
    }
  }
}

unint64_t sub_251AE6E4C()
{
  result = qword_27F479A18;
  if (!qword_27F479A18)
  {
    sub_251AE6894(255, &qword_27F4799F8, &qword_27F479A00, sub_251AE6D10, &qword_27F479A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479A18);
  }

  return result;
}

void sub_251AE6ED0(uint64_t a1)
{
  if (!qword_27F479A20)
  {
    sub_251AE6D44(255);
    sub_251AE42C4(&qword_27F479A28, sub_251AE6D44, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479A20);
    }
  }
}

void sub_251AE6F64(uint64_t a1)
{
  if (!qword_27F479A30)
  {
    sub_251AE7808(255, &qword_27F479970, sub_251ABA5A0, MEMORY[0x277CBCD88]);
    sub_251AE6ED0(255);
    sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
    sub_251AE42C4(&qword_27F479A38, sub_251AE6ED0, MEMORY[0x277CBCCD0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479A30);
    }
  }
}

void sub_251AE7098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = a3(255);
    v11[1] = sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v11[2] = a4();
    v11[3] = MEMORY[0x277D84950];
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251AE71D0(uint64_t a1)
{
  if (!qword_2813E2398)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    sub_251AE72DC(255);
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE42C4(&qword_2813E26C0, sub_251AE72DC, MEMORY[0x277CBCB60]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2398);
    }
  }
}

void sub_251AE72DC(uint64_t a1)
{
  if (!qword_2813E26B8)
  {
    sub_251AE7370(255);
    sub_251AE42C4(&qword_2813E23B0, sub_251AE7370, MEMORY[0x277CBCCE0]);
    v1 = sub_251C707A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E26B8);
    }
  }
}

void sub_251AE7370(uint64_t a1)
{
  if (!qword_2813E23A8)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    sub_251AE747C(255);
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE42C4(&qword_2813E24A0, sub_251AE747C, MEMORY[0x277CBCCC0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E23A8);
    }
  }
}

void sub_251AE747C(uint64_t a1)
{
  if (!qword_2813E2498)
  {
    sub_251AE7528(255);
    sub_251AE406C(255);
    sub_251AE42C4(&qword_2813E22C0, sub_251AE7528, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2498);
    }
  }
}

void sub_251AE7528(uint64_t a1)
{
  if (!qword_2813E22B8)
  {
    sub_251AE7808(255, &qword_2813E2100, sub_251AE7634, MEMORY[0x277CBCD88]);
    sub_251AE76FC(255);
    sub_251AE417C(&qword_2813E2108, &qword_2813E2100, sub_251AE7634);
    sub_251AE42C4(&qword_2813E22B0, sub_251AE76FC, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E22B8);
    }
  }
}

void sub_251AE765C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_251AE76FC(uint64_t a1)
{
  if (!qword_2813E22A8)
  {
    sub_251AE7808(255, &qword_2813E20F0, sub_251AE76C8, MEMORY[0x277CBCD88]);
    sub_251AE7894(255);
    sub_251AE417C(&qword_2813E20F8, &qword_2813E20F0, sub_251AE76C8);
    sub_251AE42C4(&qword_2813E26D8, sub_251AE7894, MEMORY[0x277CBCB60]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E22A8);
    }
  }
}

void sub_251AE7808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251AE7894(uint64_t a1)
{
  if (!qword_2813E26D0)
  {
    sub_251AE7918(255, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AE79A4();
    v1 = sub_251C707A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E26D0);
    }
  }
}

void sub_251AE7918(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_251AA8E98(255, a3, a4, a5);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251AE79A4()
{
  result = qword_2813E2118;
  if (!qword_2813E2118)
  {
    sub_251AE7918(255, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2118);
  }

  return result;
}

void sub_251AE7A1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    v7 = v6;
    v8 = sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251AE7B10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WebResponse.data.getter()
{
  v1 = *v0;
  sub_251A85E50(*v0, *(v0 + 8));
  return v1;
}

void *WebResponse.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t WebResponse.init(data:response:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_251AE7BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_251AE7C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_251AE7CA4@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a4;
  v35 = a3;
  v43 = a5;
  sub_251AE9D54(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE9EA4(0);
  v41 = v12;
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA05C(0);
  v42 = v14;
  v40 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v17 = sub_251C70764();
  __swift_project_value_buffer(v17, qword_2813E8130);

  v18 = sub_251C70744();
  v19 = sub_251C713C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v16 >> 62)
    {
      v21 = sub_251C717F4();
    }

    else
    {
      v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v21;

    _os_log_impl(&dword_251A6C000, v18, v19, "Updating ClinicalSharingGraphMetadata. No of Accounts: %ld", v20, 0xCu);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  else
  {
  }

  *&v44[0] = sub_251C71444();
  sub_251AE9F44(0, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
  sub_251AEA7F4(0, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277D83D88]);
  sub_251AE9E20();
  sub_251C70AE4();

  v22 = MEMORY[0x277CBCC08];
  sub_251AEA1F8(&qword_2813E2570, sub_251AE9D54, MEMORY[0x277CBCC08]);
  v23 = sub_251C70A94();
  (*(v9 + 8))(v11, v8);
  *&v44[0] = v23;
  *(swift_allocObject() + 16) = v16;
  sub_251AE9F44(0, &qword_2813E2190, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
  sub_251AE9FD8();

  v24 = v37;
  sub_251C70AE4();

  sub_251A823B4(v35, v46);
  sub_251AE5810(v36, v44);
  v25 = swift_allocObject();
  sub_251A7E8D8(v46, v25 + 16);
  v26 = v44[3];
  *(v25 + 88) = v44[2];
  *(v25 + 104) = v26;
  *(v25 + 120) = v44[4];
  v27 = v45;
  v28 = v44[1];
  *(v25 + 56) = v44[0];
  *(v25 + 72) = v28;
  *(v25 + 136) = v27;
  *(v25 + 144) = a2;
  v29 = a2;
  sub_251C70964();
  sub_251AEACC8(0, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
  sub_251AEA1F8(&qword_2813E2620, sub_251AE9EA4, v22);
  sub_251AEA17C();
  v30 = v38;
  v31 = v41;
  sub_251C70B94();

  (*(v39 + 8))(v24, v31);
  sub_251AEA1F8(&qword_2813E2350, sub_251AEA05C, MEMORY[0x277CBCCE0]);
  v32 = v42;
  v33 = sub_251C70A94();
  result = (*(v40 + 8))(v30, v32);
  *v43 = v33;
  return result;
}

uint64_t sub_251AE832C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1)
  {
    result = sub_251AD03C0(a2, *a1, *(a1 + 8));
  }

  else
  {

    result = sub_251AD1B58(v6);
  }

  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_251AE8378@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a4;
  v34 = a5;
  sub_251AEA258(0);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA294(0);
  v31 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = a1[1];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = sub_251AD0038(v17, v16);
  v19 = sub_251AE8754(v18, a3);

  v35 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v16;
  v21 = MEMORY[0x277CBCD88];
  sub_251AEAA34(0, &qword_2813E2120, MEMORY[0x277CBCD88]);
  sub_251AEAB50(&qword_2813E2128, &qword_2813E2120, v21, MEMORY[0x277CBCD90]);

  sub_251C70AE4();

  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v30;
  v24 = v23;
  sub_251C70964();
  sub_251AEACC8(0, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
  sub_251AEA1F8(&qword_2813E25D0, sub_251AEA294, MEMORY[0x277CBCC08]);
  sub_251AEA17C();
  v25 = v31;
  sub_251C70B94();

  sub_251AEA1F8(&qword_2813E2340, sub_251AEA258, MEMORY[0x277CBCCE0]);
  v26 = v32;
  v27 = sub_251C70A94();
  (*(v33 + 8))(v11, v26);
  (*(v13 + 8))(v15, v25);
  v35 = v27;
  v28 = sub_251C70A94();

  *v34 = v28;
  return result;
}

uint64_t sub_251AE8754(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  sub_251AEA360(0);
  v70 = v3;
  v68 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v65 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA684(0);
  v71 = v5;
  v69 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA9C8(0, &qword_2813E2080, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata);
  v8 = v7;
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  sub_251AEA518(0, &qword_2813E1C10, sub_251AEA594, MEMORY[0x277CBCF38]);
  v56 = v11;
  v55 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  sub_251AEA40C(0);
  v59 = v14;
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v72 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA844(0);
  v64 = v16;
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v60 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA934(0);
  v67 = v18;
  v63 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v61 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA9C8(0, &qword_2813E2078, &qword_2813E1E48, MEMORY[0x277D837D0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  sub_251AEAA34(0, &qword_2813E1BD0, MEMORY[0x277CBCF38]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  if (*(a1 + 16))
  {
    *&v74 = a1;
    v52 = MEMORY[0x277D83940];
    sub_251AEA7F4(0, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D83940]);

    sub_251C70A24();
    sub_251AEA594(0);
    sub_251C70A04();
    (*(v53 + 8))(v10, v8);
    sub_251AE5810(v54, &v74);
    v30 = swift_allocObject();
    v31 = v77;
    *(v30 + 48) = v76;
    *(v30 + 64) = v31;
    *(v30 + 80) = v78;
    *(v30 + 96) = v79;
    v32 = v75;
    *(v30 + 16) = v74;
    *(v30 + 32) = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_251AEAAD0;
    *(v33 + 24) = v30;
    sub_251C70964();
    type metadata accessor for PBDeleteBlobsRequest(0);
    v34 = MEMORY[0x277CBCD88];
    sub_251AEA518(0, &qword_2813E2208, type metadata accessor for PBDeleteBlobsRequest, MEMORY[0x277CBCD88]);
    sub_251AEA5FC();
    sub_251AEA790(&qword_2813E2210, &qword_2813E2208, type metadata accessor for PBDeleteBlobsRequest);
    v35 = v56;
    sub_251C70B94();

    (*(v55 + 8))(v13, v35);
    *(&v75 + 1) = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
    *&v76 = &off_2863F7EA0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
    sub_251AEAD38(v57, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
    sub_251A823B4(&v74, v73);
    v37 = swift_allocObject();
    sub_251A7E8D8(v73, v37 + 16);
    sub_251C6F9A4();
    v38 = MEMORY[0x277CBCCE0];
    sub_251AEA1F8(&qword_2813E2430, sub_251AEA40C, MEMORY[0x277CBCCE0]);
    v39 = v65;
    v40 = v59;
    sub_251C70B54();

    sub_251A823B4(&v74, v73);
    v41 = swift_allocObject();
    sub_251A7E8D8(v73, v41 + 16);
    sub_251C70964();
    type metadata accessor for PBDeleteBlobsResponse(0);
    sub_251AEA518(0, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse, v34);
    sub_251AEA1F8(&qword_2813E24C0, sub_251AEA360, MEMORY[0x277CBCCC0]);
    sub_251AEA790(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    v42 = v66;
    v43 = v70;
    sub_251C70B94();

    (*(v68 + 8))(v39, v43);
    sub_251AEA1F8(&qword_27F479A50, sub_251AEA684, v38);
    v44 = v71;
    v45 = sub_251C70A94();
    (*(v69 + 8))(v42, v44);
    (*(v58 + 8))(v72, v40);
    __swift_destroy_boxed_opaque_existential_1(&v74);
    *&v74 = v45;
    sub_251AEA7F4(0, &qword_2813E1E48, MEMORY[0x277D837D0], v52);
    v46 = v60;
    sub_251C70AE4();

    sub_251AEA1F8(&unk_2813E2650, sub_251AEA844, MEMORY[0x277CBCC08]);
    v47 = v64;
    v48 = v61;
    sub_251C70AB4();
    (*(v62 + 8))(v46, v47);
    sub_251AEA1F8(&qword_27F479A58, sub_251AEA934, MEMORY[0x277CBCB60]);
    v49 = v67;
    v50 = sub_251C70A94();
    (*(v63 + 8))(v48, v49);
  }

  else
  {
    *&v74 = MEMORY[0x277D84F90];
    sub_251AEA7F4(0, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v22 + 8))(v24, v21);
    sub_251AEAB50(&qword_2813E1BD8, &qword_2813E1BD0, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
    v50 = sub_251C70A94();
    (*(v27 + 8))(v29, v26);
  }

  return v50;
}

uint64_t sub_251AE93C8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{

  v8 = sub_251BFBECC(v7);

  v9 = sub_251AD0A10(v8, a2, a3);
  v11 = v10;

  *a4 = v9;
  a4[1] = v11;
  return result;
}

uint64_t sub_251AE9440@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PBDeleteBlobs(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  result = sub_251AEB358(v7, v6);
  if (!v2)
  {
    sub_251AEA1F8(&qword_27F479A90, type metadata accessor for PBDeleteBlobs, &unk_251C7A8B0);
    v9 = sub_251C70594();
    v11 = v10;
    sub_251AEA594(0);
    v13 = (a2 + *(v12 + 48));
    result = sub_251AEADA0(v6, a2);
    *v13 = v9;
    v13[1] = v11;
  }

  return result;
}

uint64_t sub_251AE9580(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v25 = a1;
  v7 = type metadata accessor for PBDeleteBlobs(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_251AEAB94(0);
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 32);
  sub_251A823B4(a4 + 48, v28);
  v14 = swift_allocObject();
  sub_251A7E8D8(v28, (v14 + 2));
  v14[7] = a2;
  v14[8] = a3;
  v14[9] = 3;
  v14[10] = v13;
  v15 = MEMORY[0x277CBCEA8];
  sub_251AEACC8(0, &qword_27F479A78, &type metadata for ClinicalSharingEncryption.BAACertSignature, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_251A858C4(a2, a3);
  *&v28[0] = sub_251C70A64();
  sub_251AEAC68(&qword_27F479A80, &qword_27F479A78, v15, MEMORY[0x277CBCEB0]);
  v16 = sub_251C70A94();

  *&v28[0] = v16;
  sub_251AEAD38(v25, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PBDeleteBlobs);
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = swift_allocObject();
  sub_251AEADA0(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = MEMORY[0x277CBCD88];
  sub_251AEACC8(0, &qword_27F479A68, &type metadata for ClinicalSharingEncryption.BAACertSignature, MEMORY[0x277CBCD88]);
  type metadata accessor for PBDeleteBlobsRequest(0);
  sub_251AEAC68(&qword_27F479A70, &qword_27F479A68, v19, MEMORY[0x277CBCD90]);
  sub_251C70B54();

  sub_251AEA1F8(&qword_27F479A88, sub_251AEAB94, MEMORY[0x277CBCCC0]);
  v20 = v26;
  v21 = sub_251C70A94();
  (*(v27 + 8))(v12, v20);
  return v21;
}

uint64_t sub_251AE992C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PBDeleteBlobs(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  sub_251AEAD38(a2, v8, type metadata accessor for PBDeleteBlobs);

  sub_251A858C4(v10, v11);
  return sub_251C23948(v8, v9, v10, v11, a3);
}

uint64_t sub_251AE9A10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for PBBlobDeleteResult(0) - 8;
  result = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 16);
  if (v8)
  {
    v9 = *a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_251AEAD38(v9, v7, type metadata accessor for PBBlobDeleteResult);
      v12 = *(v7 + 4);
      if (v7[40] == 1)
      {
        if (((1 << v12) & 0x16) == 0)
        {
LABEL_8:
          v13 = *v7;
          v14 = *(v7 + 1);

          sub_251AEAE80(v7, type metadata accessor for PBBlobDeleteResult);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_251C38CCC(0, *(v11 + 16) + 1, 1, v11);
            v11 = result;
          }

          v16 = *(v11 + 16);
          v15 = *(v11 + 24);
          if (v16 >= v15 >> 1)
          {
            result = sub_251C38CCC((v15 > 1), v16 + 1, 1, v11);
            v11 = result;
          }

          *(v11 + 16) = v16 + 1;
          v17 = v11 + 16 * v16;
          *(v17 + 32) = v13;
          *(v17 + 40) = v14;
          goto LABEL_5;
        }
      }

      else if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 0)
      {
        goto LABEL_8;
      }

      result = sub_251AEAE80(v7, type metadata accessor for PBBlobDeleteResult);
LABEL_5:
      v9 += v10;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_14:
  *v19 = v11;
  return result;
}

void sub_251AE9C10(uint64_t *a1)
{
  v1 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);

  oslog = sub_251C70744();
  v3 = sub_251C713F4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_251A6C000, oslog, v3, "Number of deleted nodes: %ld", v4, 0xCu);
    MEMORY[0x25308E2B0](v4, -1, -1);
  }

  else
  {
  }
}

void sub_251AE9D54(uint64_t a1)
{
  if (!qword_2813E2568)
  {
    sub_251AE9F44(255, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
    sub_251AEA7F4(255, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277D83D88]);
    sub_251AE9E20();
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2568);
    }
  }
}

unint64_t sub_251AE9E20()
{
  result = qword_2813E2068;
  if (!qword_2813E2068)
  {
    sub_251AE9F44(255, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2068);
  }

  return result;
}

void sub_251AE9EA4(uint64_t a1)
{
  if (!qword_2813E2618)
  {
    sub_251AE9F44(255, &qword_2813E2190, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
    sub_251AE9FD8();
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2618);
    }
  }
}

void sub_251AE9F44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AEA7F4(255, a3, a4, MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = sub_251A82284();
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_251AE9FD8()
{
  result = qword_2813E2198;
  if (!qword_2813E2198)
  {
    sub_251AE9F44(255, &qword_2813E2190, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2198);
  }

  return result;
}

void sub_251AEA098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_251AEACC8(255, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251AEA17C();
    sub_251AEA1F8(a4, a5, MEMORY[0x277CBCC08]);
    v9 = sub_251C708D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_251AEA17C()
{
  result = qword_2813E2188;
  if (!qword_2813E2188)
  {
    sub_251AEACC8(255, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2188);
  }

  return result;
}

uint64_t sub_251AEA1F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AEA294(uint64_t a1)
{
  if (!qword_2813E25C8)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251AEAA34(255, &qword_2813E2120, MEMORY[0x277CBCD88]);
    sub_251AEAB50(&qword_2813E2128, &qword_2813E2120, v1, MEMORY[0x277CBCD90]);
    v2 = sub_251C70804();
    if (!v3)
    {
      atomic_store(v2, &qword_2813E25C8);
    }
  }
}

void sub_251AEA360(uint64_t a1)
{
  if (!qword_2813E24B8)
  {
    sub_251AEA40C(255);
    sub_251C6F9A4();
    sub_251AEA1F8(&qword_2813E2430, sub_251AEA40C, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E24B8);
    }
  }
}

void sub_251AEA40C(uint64_t a1)
{
  if (!qword_2813E2428)
  {
    sub_251AEA518(255, &qword_2813E2208, type metadata accessor for PBDeleteBlobsRequest, MEMORY[0x277CBCD88]);
    sub_251AEA518(255, &qword_2813E1C10, sub_251AEA594, MEMORY[0x277CBCF38]);
    sub_251AEA790(&qword_2813E2210, &qword_2813E2208, type metadata accessor for PBDeleteBlobsRequest);
    sub_251AEA5FC();
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2428);
    }
  }
}

void sub_251AEA518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251A82284();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251AEA594(uint64_t a1)
{
  if (!qword_2813E68D8[0])
  {
    type metadata accessor for PBDeleteBlobs(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_2813E68D8);
    }
  }
}

unint64_t sub_251AEA5FC()
{
  result = qword_2813E1C18;
  if (!qword_2813E1C18)
  {
    sub_251AEA518(255, &qword_2813E1C10, sub_251AEA594, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1C18);
  }

  return result;
}

void sub_251AEA684(uint64_t a1)
{
  if (!qword_2813E23C0)
  {
    sub_251AEA518(255, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse, MEMORY[0x277CBCD88]);
    sub_251AEA360(255);
    sub_251AEA790(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    sub_251AEA1F8(&qword_2813E24C0, sub_251AEA360, MEMORY[0x277CBCCC0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E23C0);
    }
  }
}

uint64_t sub_251AEA790(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AEA518(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AEA7F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_251AEA844(uint64_t a1)
{
  if (!qword_2813E2648)
  {
    sub_251AEA518(255, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse, MEMORY[0x277CBCD88]);
    sub_251AEA7F4(255, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_251AEA790(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2648);
    }
  }
}

void sub_251AEA934(uint64_t a1)
{
  if (!qword_2813E26C8)
  {
    sub_251AEA844(255);
    sub_251AEA1F8(&unk_2813E2650, sub_251AEA844, MEMORY[0x277CBCC08]);
    v1 = sub_251C707A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E26C8);
    }
  }
}

void sub_251AEA9C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_251AEA7F4(255, a3, a4, MEMORY[0x277D83940]);
    v5 = sub_251C70A14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251AEAA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AEA7F4(255, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_251A82284();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251AEAAD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_251AEA594(0);
  result = v5(a1, *(a1 + *(v6 + 48)), *(a1 + *(v6 + 48) + 8));
  *a2 = result;
  return result;
}

uint64_t sub_251AEAB50(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251AEAA34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AEAB94(uint64_t a1)
{
  if (!qword_27F479A60)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251AEACC8(255, &qword_27F479A68, &type metadata for ClinicalSharingEncryption.BAACertSignature, MEMORY[0x277CBCD88]);
    type metadata accessor for PBDeleteBlobsRequest(255);
    sub_251AEAC68(&qword_27F479A70, &qword_27F479A68, v1, MEMORY[0x277CBCD90]);
    v2 = sub_251C708B4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F479A60);
    }
  }
}

uint64_t sub_251AEAC68(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251AEACC8(255, a2, &type metadata for ClinicalSharingEncryption.BAACertSignature, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AEACC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251A82284();
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251AEAD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AEADA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBDeleteBlobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AEAE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251AEAEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = swift_allocObject();
  v16[2] = sub_251AD96B8;
  v16[3] = v14;
  v16[4] = v15;
  if (a6)
  {
    sub_251AEB30C();

    a6 = sub_251C71144();
  }

  else
  {
  }

  if (a5)
  {
    a4 = 0;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CCDB30]);
  v20[4] = sub_251AEB21C;
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_251AEB228;
  v20[3] = &block_descriptor_2;
  v18 = _Block_copy(v20);
  v19 = [v17 initWithPredicate:a3 anchor:0 limit:a4 sortDescriptors:a6 resultsHandler:v18];

  _Block_release(v18);

  [a7 executeQuery_];
}

void sub_251AEB0CC(int a1, void *a2, int a3, char a4, id a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v10 = a5;
    a6(a5, 1);
  }

  else
  {
    if (a2)
    {
      v12 = a4;
      swift_beginAccess();
      v14 = a2;
      MEMORY[0x25308CEE0]();
      if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_251C71174();
      }

      sub_251C71194();
      swift_endAccess();
      a4 = v12;
    }

    if (a4)
    {
      swift_beginAccess();

      a6(v15, 0);
    }
  }
}

void sub_251AEB228(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v15 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v11(v15, a3, a4, a5, a6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251AEB30C()
{
  result = qword_27F479A98;
  if (!qword_27F479A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479A98);
  }

  return result;
}

uint64_t sub_251AEB358@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_251C70404();
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PBRevocationAuthorization(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBDeleteBlob(0);
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for PBDeleteBlobs(0);
  sub_251C703A4();
  v18 = *(a1 + 16);
  if (v18)
  {
    v38 = a2;
    v52 = v2;
    v58 = v17;
    v40 = v18;
    result = sub_251C0B904(0, v18, 0);
    v20 = 0;
    v21 = v58;
    v22 = (v8 + 56);
    v23 = (a1 + 56);
    v43 = xmmword_251C745D0;
    v44 = a1;
    v41 = v16;
    v39 = (v8 + 56);
    v42 = v10;
    while (v20 < *(a1 + 16))
    {
      v50 = v20;
      v51 = v21;
      v24 = *(v23 - 3);
      v25 = *(v23 - 2);
      v26 = *(v23 - 1);
      v27 = *v23;
      v28 = v14;
      v49 = v23;
      *(v14 + 1) = v43;
      v29 = v46;
      v30 = v22;

      sub_251A858C4(v26, v27);

      sub_251A858C4(v26, v27);
      sub_251C703A4();
      v31 = *(v29 + 28);
      v48 = *v30;
      v48(&v28[v31], 1, 1, v7);
      *v28 = v24;
      *(v28 + 1) = v25;
      v56 = v26;
      v57 = v27;
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      sub_251C703F4();
      sub_251AEB844();
      v32 = v42;
      v33 = v52;
      sub_251C705A4();
      v52 = v33;
      if (v33)
      {

        sub_251A83028(v26, v27);
        sub_251AEB89C(v28, type metadata accessor for PBDeleteBlob);

        return sub_251AEB89C(v38, type metadata accessor for PBDeleteBlobs);
      }

      sub_251A83028(v26, v27);
      sub_251AEB89C(&v28[v31], sub_251AEB8FC);
      sub_251AEB954(v32, &v28[v31], type metadata accessor for PBRevocationAuthorization);
      v48(&v28[v31], 0, 1, v7);
      v34 = v41;
      sub_251AEB954(v28, v41, type metadata accessor for PBDeleteBlob);
      v21 = v51;
      v58 = v51;
      v36 = *(v51 + 16);
      v35 = *(v51 + 24);
      v14 = v28;
      if (v36 >= v35 >> 1)
      {
        sub_251C0B904((v35 > 1), v36 + 1, 1);
        v21 = v58;
      }

      v20 = v50 + 1;
      *(v21 + 16) = v36 + 1;
      result = sub_251AEB954(v34, v21 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v36, type metadata accessor for PBDeleteBlob);
      v23 = v49 + 4;
      a1 = v44;
      v22 = v39;
      if (v40 == v20)
      {

        *v38 = v21;
        return result;
      }
    }

    __break(1u);
  }

  else
  {

    *a2 = MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_251AEB844()
{
  result = qword_27F479858;
  if (!qword_27F479858)
  {
    type metadata accessor for PBRevocationAuthorization(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479858);
  }

  return result;
}

uint64_t sub_251AEB89C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251AEB8FC(uint64_t a1)
{
  if (!qword_2813E3BF0)
  {
    type metadata accessor for PBRevocationAuthorization(255);
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E3BF0);
    }
  }
}

uint64_t sub_251AEB954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AEB9BC()
{
  v1 = v0;
  sub_251AF2868(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ClinicalSharingMedicalRecordsQuery(0);
  v112 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v113 = v8;
  v114 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF28D8(0);
  v10 = v9;
  v116 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v115 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2A98(0);
  v117 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_251C70014();
  v106 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v105 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_251C701E4();
  v122 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v110 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_251C6FC94();
  v108 = *(v109 - 8);
  v18 = MEMORY[0x28223BE20](v109);
  v107 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v121 = &v84 - v20;
  sub_251AF2314(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v84 - v22;
  v24 = sub_251C6FAE4();
  v119 = *(v24 - 8);
  v120 = v24;
  MEMORY[0x28223BE20](v24);
  v123 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_251AEC9FC();
  if (!*(v26 + 16))
  {

    type metadata accessor for ClinicalSharingQueryOutput(0);
    sub_251A82284();
    sub_251C70A34();
    sub_251AF2B44(&qword_27F479B00, sub_251AF2868, MEMORY[0x277CBCE90]);
    v31 = sub_251C70A94();
    (*(v4 + 8))(v6, v3);
    return v31;
  }

  v100 = v26;
  v27 = *v0;
  sub_251A823B4(*v0 + 16, &v125);
  v28 = __swift_project_boxed_opaque_existential_1(&v125, v126);
  __swift_project_boxed_opaque_existential_1(v28 + 3, v28[6]);
  v101 = off_2863F67E8[0]();
  __swift_destroy_boxed_opaque_existential_1(&v125);
  v29 = v0[2];
  if (v29 == 2)
  {
    v30 = MEMORY[0x277CCBC90];
  }

  else
  {
    if (v29 != 3)
    {
      v32 = 0;
      goto LABEL_9;
    }

    v30 = MEMORY[0x277CCBC98];
  }

  v32 = [objc_opt_self() predicateForDiagnosticTestResultCategory_];
LABEL_9:
  v102 = v10;
  v103 = v15;
  v104 = v13;
  sub_251AF3018(v1 + *(v7 + 28), v23, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v34 = v119;
  v33 = v120;
  v35 = (*(v119 + 48))(v23, 1, v120);
  v36 = MEMORY[0x277D84F68];
  if (v35 == 1)
  {
    sub_251AF3098(v23, &qword_27F478D90, MEMORY[0x277CC88A8]);
    v37 = v32;
  }

  else
  {
    v99 = v1;
    (*(v34 + 32))(v123, v23, v33);
    v96 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
    v38 = *(v122 + 16);
    v95 = v122 + 16;
    v97 = v38;
    v38(v110, v27 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v118);
    sub_251AF2314(0, &qword_27F479AA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v94 = v39;
    v40 = sub_251C701C4();
    v41 = *(v40 - 8);
    v42 = *(v41 + 72);
    v85 = *(v41 + 80);
    v98 = v32;
    v43 = (v85 + 32) & ~v85;
    v88 = v43;
    v93 = 3 * v42;
    v44 = v42;
    v90 = v42;
    v45 = 2 * v42;
    v87 = 2 * v42;
    v46 = swift_allocObject();
    v92 = xmmword_251C76AF0;
    *(v46 + 16) = xmmword_251C76AF0;
    v91 = *MEMORY[0x277CC9988];
    v47 = *(v41 + 104);
    v47(v46 + v43);
    v89 = *MEMORY[0x277CC9998];
    v47(v46 + v43 + v44);
    v86 = *MEMORY[0x277CC9968];
    v47(v46 + v43 + v45);
    sub_251B1D3EC(v46);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v48 = v105;
    sub_251C6FAB4();
    v49 = v110;
    sub_251C700E4();

    v84 = *(v106 + 8);
    v84(v48, v111);
    v50 = *(v122 + 8);
    v122 += 8;
    v51 = v118;
    v50(v49, v118);
    v106 = v27;
    v97(v49, v27 + v96, v51);
    v52 = v88;
    v53 = swift_allocObject();
    *(v53 + 16) = v92;
    v54 = v53 + v52;
    (v47)(v54, v91, v40);
    (v47)(v54 + v90, v89, v40);
    (v47)(v54 + v87, v86, v40);
    sub_251B1D3EC(v53);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_251C6FA84();
    v55 = v107;
    sub_251C700E4();

    v84(v48, v111);
    v50(v49, v118);
    v56 = objc_opt_self();
    v57 = sub_251C6FBC4();
    v58 = sub_251C6FBC4();
    v37 = [v56 predicateForRecordsWithSortDateFromStartDateComponents:v57 endDateComponents:v58];

    v59 = v98;
    v36 = MEMORY[0x277D84F68];
    if (v59)
    {
      sub_251AF2B8C(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_251C76B00;
      *(v60 + 32) = v59;
      *(v60 + 40) = v37;
      sub_251A8223C(0, &qword_27F479AF8, 0x277CCAC30);
      v61 = v59;
      v62 = v37;
      v63 = sub_251C71144();

      v37 = [objc_opt_self() andPredicateWithSubpredicates_];
    }

    v64 = *(v108 + 8);
    v65 = v109;
    v64(v55, v109);
    v64(v121, v65);
    (*(v119 + 8))(v123, v120);
    v1 = v99;
    v27 = v106;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:*(v1 + 8) predicate:v37];
  v67 = sub_251BFC460();
  v69 = v68;
  sub_251A823B4(v27 + 16, &v125);
  __swift_project_boxed_opaque_existential_1(&v125, v126);
  sub_251AF2B8C(0, &qword_27F47BD20, v36 + 8, MEMORY[0x277D84560]);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_251C74560;
  *(v70 + 32) = v66;
  v71 = off_2863FD750;
  v72 = v66;
  v73 = v71(v70, v67, v69, MEMORY[0x277D84F90], 0);

  __swift_destroy_boxed_opaque_existential_1(&v125);
  v125 = v101;
  v124 = v73;
  sub_251AF29A4(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AF29A4(0, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
  sub_251AE79A4();
  sub_251AF2A20();

  v74 = v115;
  sub_251C70824();
  v75 = v114;
  sub_251AF2CC0(v1, v114, type metadata accessor for ClinicalSharingMedicalRecordsQuery);
  v76 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v77 = (v113 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  sub_251AF2EBC(v75, v78 + v76, type metadata accessor for ClinicalSharingMedicalRecordsQuery);
  *(v78 + v77) = v100;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_251AF2BDC;
  *(v79 + 24) = v78;
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251AF2B44(&qword_27F479AE8, sub_251AF28D8, MEMORY[0x277CBCC10]);
  v80 = v103;
  v81 = v102;
  sub_251C70AA4();

  (*(v116 + 8))(v74, v81);
  sub_251AF2B44(&qword_27F479AF0, sub_251AF2A98, MEMORY[0x277CBCB10]);
  v82 = v117;
  v31 = sub_251C70A94();

  (*(v104 + 8))(v80, v82);
  return v31;
}

uint64_t sub_251AEC9FC()
{
  sub_251AF2314(0, &qword_27F479B38, MEMORY[0x277D11300], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = sub_251C702E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0[2];
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      sub_251A8223C(0, &qword_27F479B40, 0x277CCD118);
      v9 = MEMORY[0x277CCBB58];
      goto LABEL_11;
    }

    if (v8 == 6)
    {
      sub_251A8223C(0, &qword_27F479B40, 0x277CCD118);
      v9 = MEMORY[0x277CCBB40];
      goto LABEL_11;
    }
  }

  else
  {
    if (v8 == 1)
    {
      sub_251A8223C(0, &qword_27F479B40, 0x277CCD118);
      v9 = MEMORY[0x277CCBB50];
      goto LABEL_11;
    }

    if (v8 == 2)
    {
      sub_251A8223C(0, &qword_27F479B40, 0x277CCD118);
      v9 = MEMORY[0x277CCBB48];
LABEL_11:
      *v3 = MEMORY[0x25308D1C0](*v9);
      (*(v5 + 104))(v3, *MEMORY[0x277D112F0], v4);
      (*(v5 + 56))(v3, 0, 1, v4);
      v11 = (*(v5 + 32))(v7, v3, v4);
      v12 = *(*v0 + 56);
      MEMORY[0x28223BE20](v11);
      *&v15[-16] = v7;

      v13 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, &v15[-32], v12);

      v10 = sub_251BFAE40(v13);

      (*(v5 + 8))(v7, v4);
      return v10;
    }
  }

  (*(v5 + 56))(v3, 1, 1, v4);
  sub_251AF3098(v3, &qword_27F479B38, MEMORY[0x277D11300]);
  return MEMORY[0x277D84FA0];
}

uint64_t sub_251AECD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_251AF2314(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PBTypedData(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AECFBC(a2, a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_251AF3098(v10, &qword_27F4793C8, type metadata accessor for PBTypedData);
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(Output - 8) + 56))(a4, 1, 1, Output);
  }

  else
  {
    sub_251AF2EBC(v10, v14, type metadata accessor for PBTypedData);
    sub_251AF2EBC(v14, a4, type metadata accessor for PBTypedData);
    v17 = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a4 + *(v17 + 20)) = a3;
    v18 = (a4 + *(v17 + 24));
    *v18 = 0;
    v18[1] = 0;
    (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
  }
}

uint64_t sub_251AECFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for PBAllClinicalRecords(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PBTimeSeries(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_251AF2314(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v104 = &v84 - v16;
  v17 = type metadata accessor for PBTypedData(0);
  v106 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PBDateRange(0);
  v102 = *(v20 - 8);
  v103 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_251C70014();
  v100 = *(v97 - 8);
  v23 = MEMORY[0x28223BE20](v97);
  v98 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v84 - v25;
  sub_251AF2314(0, &qword_2813E7500, MEMORY[0x277CC9578], v14);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v96 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v95 = &v84 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v105 = &v84 - v32;
  MEMORY[0x28223BE20](v31);
  v99 = &v84 - v33;
  sub_251AF2314(0, &qword_27F478D90, MEMORY[0x277CC88A8], v14);
  v34 = MEMORY[0x28223BE20](a1);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v84 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v41 = &v84 - v40;
  if (v38 >> 62)
  {
    v94 = v22;
    v93 = v38;
    v76 = v39;
    v77 = sub_251C717F4();
    v39 = v76;
    v78 = v77;
    v38 = v93;
    v22 = v94;
    if (v78)
    {
LABEL_3:
      v89 = v39;
      v94 = v22;
      v90 = a2;
      v42 = v13;
      v43 = v10;
      v44 = v19;
      v92 = v17;
      v93 = a3;
      v45 = sub_251B15044(v38);
      if (v45)
      {
        v46 = v45;
        v91 = type metadata accessor for ClinicalSharingMedicalRecordsQuery(0);
        v47 = MEMORY[0x277CC88A8];
        sub_251AF3018(v4 + *(v91 + 28), v41, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251AF3018(v41, v37, &qword_27F478D90, v47);
        v48 = sub_251C6FAE4();
        v87 = *(v48 - 8);
        v49 = *(v87 + 48);
        v88 = v48;
        v50 = v4;
        v51 = v49(v37, 1);
        sub_251AF3098(v37, &qword_27F478D90, v47);
        v52 = v51 == 1;
        v53 = v50;
        v54 = v44;
        v55 = v43;
        v56 = v42;
        if (v52)
        {
          v86 = v42;
          v114 = v46;
          v115 = sub_251AF3108;
          v116 = 0;
          v117 = sub_251AF2378;
          v118 = 0;
          v119 = sub_251AF23DC;
          v120 = 0;

          v57 = v99;
          sub_251C0DFC8(v99);

          v107 = v46;
          v108 = sub_251AF3108;
          v109 = 0;
          v110 = sub_251AF2378;
          v111 = 0;
          v112 = sub_251AF23DC;
          v113 = 0;

          sub_251AC0404(v105);

          v58 = v95;
          sub_251AF3018(v57, v95, &qword_2813E7500, MEMORY[0x277CC9578]);
          v59 = v100;
          v60 = *(v100 + 48);
          v61 = v97;
          v62 = v60(v58, 1, v97);
          v85 = v55;
          if (v62 == 1)
          {
            sub_251C6FF24();
            v63 = v60(v58, 1, v61);
            v64 = v98;
            if (v63 != 1)
            {
              sub_251AF3098(v58, &qword_2813E7500, MEMORY[0x277CC9578]);
            }
          }

          else
          {
            (*(v59 + 32))(v101, v58, v61);
            v64 = v98;
          }

          v65 = v96;
          sub_251AF3018(v105, v96, &qword_2813E7500, MEMORY[0x277CC9578]);
          if (v60(v65, 1, v61) == 1)
          {
            (*(v100 + 16))(v64, *v53 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v61);
            if (v60(v65, 1, v61) != 1)
            {
              sub_251AF3098(v65, &qword_2813E7500, MEMORY[0x277CC9578]);
            }
          }

          else
          {
            (*(v100 + 32))(v64, v65, v61);
          }

          v66 = v89;
          sub_251C6FA94();
          v67 = MEMORY[0x277CC9578];
          sub_251AF3098(v105, &qword_2813E7500, MEMORY[0x277CC9578]);
          sub_251AF3098(v99, &qword_2813E7500, v67);
          sub_251AF3098(v41, &qword_27F478D90, MEMORY[0x277CC88A8]);
          (*(v87 + 56))(v66, 0, 1, v88);
          sub_251AAFBF8(v66, v41);
          v56 = v86;
          v55 = v85;
        }

        v68 = v94;
        sub_251BFC464();
        v69 = v104;
        sub_251AF2CC0(v68, v104, type metadata accessor for PBDateRange);
        (*(v102 + 56))(v69, 0, 1, v103);
        sub_251AEDD84(v69, v54);
        sub_251AF3098(v69, qword_2813E6EE8, type metadata accessor for PBDateRange);
        v70 = *(v53 + *(v91 + 32));
        v71 = v92;
        if (v70 == 4)
        {
          sub_251AEE0D0(v46, v90, *(v53 + 8), v55);

          sub_251AF2FB8(v68, type metadata accessor for PBDateRange);
          sub_251AF3098(v41, &qword_27F478D90, MEMORY[0x277CC88A8]);
          v72 = *(v71 + 20);
          sub_251AF3098(v54 + v72, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251AF2EBC(v55, v54 + v72, type metadata accessor for PBAllClinicalRecords);
        }

        else
        {
          sub_251B2ADEC(v46, *(v53 + 8), v70, v56);

          sub_251AF2FB8(v68, type metadata accessor for PBDateRange);
          sub_251AF3098(v41, &qword_27F478D90, MEMORY[0x277CC88A8]);
          v72 = *(v71 + 20);
          sub_251AF3098(v54 + v72, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251AF2EBC(v56, v54 + v72, type metadata accessor for PBTimeSeries);
        }

        v73 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v73 - 8) + 56))(v54 + v72, 0, 1, v73);
        v74 = v93;
        sub_251AF2EBC(v54, v93, type metadata accessor for PBTypedData);
        return (*(v106 + 56))(v74, 0, 1, v71);
      }

      else
      {
        v114 = 0;
        v115 = 0xE000000000000000;
        sub_251C716A4();

        v114 = 0xD000000000000023;
        v115 = 0x8000000251C89D50;
        v80 = [*(v4 + 8) description];
        v81 = sub_251C70F14();
        v83 = v82;

        MEMORY[0x25308CDA0](v81, v83);

        result = sub_251C717E4();
        __break(1u);
      }

      return result;
    }
  }

  else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v79 = *(v106 + 56);

  return v79(a3, 1, 1, v17);
}

uint64_t sub_251AEDCC8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 sortDate];
  v4 = [v3 date];

  sub_251C6FFE4();
  v5 = sub_251C70014();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_251AEDD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  sub_251AF2314(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for PBTypedData(0);
  v15 = *(v14 + 20);
  v16 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  sub_251C703A4();
  v17 = *(v14 + 28);
  v18 = *(v8 + 56);
  v18(a2 + v17, 1, 1, v7);
  v19 = *(v2 + *(type metadata accessor for ClinicalSharingMedicalRecordsQuery(0) + 32));
  if (v19 <= 1)
  {
    if (v19)
    {
      v20 = 107;
    }

    else
    {
      v20 = 106;
    }
  }

  else if (v19 == 2)
  {
    v20 = 108;
  }

  else if (v19 == 3)
  {
    v20 = 110;
  }

  else
  {
    v21 = *(v2 + 16) - 1;
    if (v21 > 5)
    {
      v20 = 0;
    }

    else
    {
      v20 = qword_251C76BD0[v21];
    }
  }

  v22 = v25;
  *a2 = v20;
  *(a2 + 8) = 1;
  sub_251AF3018(v22, v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_251AF3098(v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251AF2EBC(v6, v13, type metadata accessor for PBDateRange);
  sub_251AF2EBC(v13, v11, type metadata accessor for PBDateRange);
  sub_251AF3098(a2 + v17, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251AF2EBC(v11, a2 + v17, type metadata accessor for PBDateRange);
  return (v18)(a2 + v17, 0, 1, v7);
}

uint64_t sub_251AEE0D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = sub_251B15008(a1);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    type metadata accessor for PBAllClinicalRecords(0);
    v11 = sub_251C703A4();
    MEMORY[0x28223BE20](v11);
    v32 = v4;
    v33 = a2;
    v12 = sub_251BC370C(sub_251AF2D48, v31, v10);
LABEL_26:
    v25 = v12;

    *a4 = v25;
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v13 = sub_251B15014(a1);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    type metadata accessor for PBAllClinicalRecords(0);
    v15 = sub_251C703A4();
    MEMORY[0x28223BE20](v15);
    v32 = v4;
    v33 = a2;
    v12 = sub_251BC370C(sub_251AF2D40, v31, v14);
    goto LABEL_26;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v16 = sub_251B15020(a1);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    type metadata accessor for PBAllClinicalRecords(0);
    v18 = sub_251C703A4();
    MEMORY[0x28223BE20](v18);
    v32 = v4;
    v33 = a2;
    v12 = sub_251BC370C(sub_251AF2D38, v31, v17);
    goto LABEL_26;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v19 = sub_251B1502C(a1);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    type metadata accessor for PBAllClinicalRecords(0);
    v21 = sub_251C703A4();
    MEMORY[0x28223BE20](v21);
    v32 = v4;
    v33 = a2;
    v12 = sub_251BC370C(sub_251AF2D30, v31, v20);
    goto LABEL_26;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v22 = sub_251B15038(a1);
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    type metadata accessor for PBAllClinicalRecords(0);
    v24 = sub_251C703A4();
    MEMORY[0x28223BE20](v24);
    v32 = v4;
    v33 = a2;
    v12 = sub_251BC370C(sub_251AF2D28, v31, v23);
    goto LABEL_26;
  }

  sub_251C716A4();

  v27 = [a3 description];
  v28 = sub_251C70F14();
  v30 = v29;

  MEMORY[0x25308CDA0](v28, v30);

  result = sub_251C717E4();
  __break(1u);
  return result;
}

void sub_251AEE494(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PBHKInspectableValue(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v10 = type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251C703A4();
  v11 = v10[8];
  v12 = *(v7 + 56);
  v12(a2 + v11, 1, 1, v6);
  v13 = v10[9];
  v12(a2 + v13, 1, 1, v6);
  v34[0] = v10[10];
  v12(a2 + v34[0], 1, 1, v6);
  *a2 = sub_251B19040();
  *(a2 + 8) = v14 & 1;
  v15 = [a1 inspectableValue];
  if (v15)
  {
    v16 = v3;
    v17 = v15;
    sub_251AEE890(v15, v9);

    v3 = v16;
    sub_251AF3098(a2 + v11, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    sub_251AF2EBC(v9, a2 + v11, type metadata accessor for PBHKInspectableValue);
    v12(a2 + v11, 0, 1, v6);
  }

  v18 = [a1 min];
  v19 = v3;
  if (v18)
  {
    v20 = v18;
    sub_251AEE890(v18, v9);

    sub_251AF3098(a2 + v13, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    sub_251AF2EBC(v9, a2 + v13, type metadata accessor for PBHKInspectableValue);
    v12(a2 + v13, 0, 1, v6);
  }

  v21 = [a1 max];
  if (v21)
  {
    v22 = v21;
    sub_251AEE890(v21, v9);

    v23 = v34[0];
    sub_251AF3098(a2 + v34[0], qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    sub_251AF2EBC(v9, a2 + v23, type metadata accessor for PBHKInspectableValue);
    v12(a2 + v23, 0, 1, v6);
  }

  v24 = [a1 inspectableValues];
  if (v24)
  {
    v25 = v24;
    sub_251A8223C(0, &qword_27F479B08, 0x277CCD550);
    v26 = sub_251C71154();

    MEMORY[0x28223BE20](v27);
    v34[-2] = v19;
    sub_251C4F964(sub_251AF2D50, &v34[-4], v26);
    v29 = v28;

    *(a2 + 16) = v29;
  }

  v30 = [a1 unitString];
  v31 = sub_251C70F14();
  v33 = v32;

  *(a2 + 24) = v31;
  *(a2 + 32) = v33;
}

uint64_t sub_251AEE890@<X0>(char **a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_251AF2314(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v220 = &v201 - v6;
  v219 = type metadata accessor for PBHKConcept(0);
  v218 = *(v219 - 8);
  v7 = MEMORY[0x28223BE20](v219);
  v217 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v221 = &v201 - v9;
  v214 = sub_251C6FC94();
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v215 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2314(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v4);
  MEMORY[0x28223BE20](v11 - 8);
  v208 = &v201 - v12;
  sub_251AF2314(0, &qword_2813E7500, MEMORY[0x277CC9578], v4);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v212 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v204 = &v201 - v17;
  MEMORY[0x28223BE20](v16);
  v203 = &v201 - v18;
  v207 = type metadata accessor for PBDateRange(0);
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v205 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_251C70014();
  v227 = *(v226 - 8);
  v20 = MEMORY[0x28223BE20](v226);
  v216 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v222 = &v201 - v22;
  v225 = sub_251C701E4();
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v223 = &v201 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2314(0, qword_2813E64E0, type metadata accessor for PBHKRatioValue, v4);
  MEMORY[0x28223BE20](v24 - 8);
  v211 = &v201 - v25;
  v210 = type metadata accessor for PBHKRatioValue(0);
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v27 = &v201 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2314(0, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, v4);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v201 - v29;
  v31 = type metadata accessor for PBHKCodedQuantity(0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v201 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v35 = *(type metadata accessor for PBHKInspectableValue(0) + 20);
  if (qword_27F478710 != -1)
  {
LABEL_66:
    swift_once();
  }

  *&a2[v35] = qword_27F47AC08;

  v230 = a1;
  v36 = sub_251B303BC();
  v38 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *&a2[v35];
  v229 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBHKInspectableValue._StorageClass(0);
    swift_allocObject();
    v40 = sub_251B80F70(v40);
    *&a2[v35] = v40;
  }

  swift_beginAccess();
  *(v40 + 16) = v36;
  *(v40 + 24) = v38 & 1;
  v41 = [v230 stringValue];
  if (v41)
  {
    v42 = v41;
    v43 = sub_251C70F14();
    v45 = v44;

    v46 = v229;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *&a2[v46];
    if ((v47 & 1) == 0)
    {
      type metadata accessor for PBHKInspectableValue._StorageClass(0);
      swift_allocObject();
      v48 = sub_251B80F70(v48);
      *&a2[v46] = v48;
    }

    swift_beginAccess();
    *(v48 + 32) = v43;
    *(v48 + 40) = v45;
  }

  v49 = [v230 codedQuantityValue];
  if (v49)
  {
    v50 = v49;
    sub_251AF0480(v49, v34);
    v51 = v229;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v52 = *&a2[v51];
    }

    else
    {
      type metadata accessor for PBHKInspectableValue._StorageClass(0);
      swift_allocObject();

      v52 = sub_251B80F70(v53);

      *&a2[v51] = v52;
    }

    sub_251AF2EBC(v34, v30, type metadata accessor for PBHKCodedQuantity);
    (*(v32 + 7))(v30, 0, 1, v31);
    v54 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
    swift_beginAccess();
    sub_251AF2DB0(v30, v52 + v54, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    swift_endAccess();
  }

  v55 = v230;
  v56 = [v230 ratioValue];
  v57 = v229;
  if (v56)
  {
    v58 = v56;
    v59 = v210;
    sub_251C703A4();
    v60 = [v58 numerator];
    v61 = [v60 localizedValue];

    v62 = sub_251C70F14();
    v64 = v63;

    *v27 = v62;
    *(v27 + 8) = v64;
    v65 = [v58 denominator];
    v66 = [v65 localizedValue];

    v67 = sub_251C70F14();
    v69 = v68;

    *(v27 + 16) = v67;
    *(v27 + 24) = v69;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v70 = *&a2[v57];
    }

    else
    {
      type metadata accessor for PBHKInspectableValue._StorageClass(0);
      swift_allocObject();

      v70 = sub_251B80F70(v71);

      *&a2[v57] = v70;
    }

    v72 = v211;
    sub_251AF2EBC(v27, v211, type metadata accessor for PBHKRatioValue);
    (*(v209 + 56))(v72, 0, 1, v59);
    v73 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
    swift_beginAccess();
    sub_251AF2DB0(v72, v70 + v73, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    swift_endAccess();
  }

  v74 = [v55 medicalDateValue];
  if (v74)
  {
    v75 = v74;
    v76 = *v228;
    v77 = v224;
    v78 = v223;
    v79 = v225;
    (*(v224 + 16))(v223, *v228 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v225);
    v80 = sub_251C70114();
    (*(v77 + 8))(v78, v79);
    v81 = [v75 adjustedDateForCalendar_];

    v82 = v222;
    sub_251C6FFE4();

    v83 = *(v76 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v84 = sub_251C6FF94();
    v85 = [v83 stringFromDate_];

    v86 = sub_251C70F14();
    v87 = v57;
    v89 = v88;

    (*(v227 + 8))(v82, v226);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v90 = *&a2[v87];
    }

    else
    {
      type metadata accessor for PBHKInspectableValue._StorageClass(0);
      swift_allocObject();

      v90 = sub_251B80F70(v91);

      *&a2[v87] = v90;
    }

    v92 = (v90 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
    swift_beginAccess();
    *v92 = v86;
    v92[1] = v89;

    v57 = v229;
  }

  v93 = [v55 medicalDateIntervalValue];
  v222 = a2;
  v94 = v227;
  v27 = v216;
  if (v93)
  {
    v95 = v93;
    v96 = [v93 startDate];

    if (v96)
    {
      v97 = [v55 medicalDateIntervalValue];
      if (v97 && (v98 = v97, v99 = [v97 endDate], v98, (v211 = v99) != 0))
      {
        v210 = *v228;
        v100 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
        v101 = v224;
        v209 = *(v224 + 16);
        v102 = v223;
        v103 = v225;
        (v209)(v223, v210 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v225);
        v104 = sub_251C70114();
        v202 = *(v101 + 8);
        v202(v102, v103);
        v105 = [v96 adjustedDateForCalendar_];

        v106 = v203;
        sub_251C6FFE4();

        v201 = *(v94 + 56);
        v107 = v226;
        v201(v106, 0, 1, v226);
        (v209)(v102, v210 + v100, v103);
        v57 = v229;
        v108 = sub_251C70114();
        v202(v102, v103);
        a2 = v222;
        v109 = [v211 adjustedDateForCalendar_];

        v110 = v204;
        sub_251C6FFE4();

        v201(v110, 0, 1, v107);
        v111 = v205;
        sub_251C15BE4();
        v112 = MEMORY[0x277CC9578];
        sub_251AF3098(v110, &qword_2813E7500, MEMORY[0x277CC9578]);
        sub_251AF3098(v106, &qword_2813E7500, v112);
        if (swift_isUniquelyReferenced_nonNull_native())
        {

          v113 = *&a2[v57];
        }

        else
        {
          type metadata accessor for PBHKInspectableValue._StorageClass(0);
          swift_allocObject();

          v113 = sub_251B80F70(v114);

          *&a2[v57] = v113;
        }

        v55 = v230;
        v27 = v216;
        v115 = v208;
        sub_251AF2EBC(v111, v208, type metadata accessor for PBDateRange);
        (*(v206 + 56))(v115, 0, 1, v207);
        v116 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
        swift_beginAccess();
        sub_251AF2DB0(v115, v113 + v116, qword_2813E6EE8, type metadata accessor for PBDateRange);
        swift_endAccess();
        v94 = v227;
      }

      else
      {
      }
    }
  }

  v117 = [v55 dateComponentsValue];
  if (v117)
  {
    v118 = v27;
    v119 = v215;
    v120 = v117;
    sub_251C6FBD4();

    v121 = *v228;
    v122 = v224;
    v123 = v223;
    v27 = v225;
    (*(v224 + 16))(v223, *v228 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v225);
    v124 = v212;
    sub_251C70134();
    (*(v122 + 8))(v123, v27);
    v125 = v226;
    if ((*(v94 + 48))(v124, 1, v226) == 1)
    {
      (*(v213 + 8))(v119, v214);
      sub_251AF3098(v124, &qword_2813E7500, MEMORY[0x277CC9578]);
      v55 = v230;
    }

    else
    {
      (*(v94 + 32))(v118, v124, v125);
      v126 = *(v121 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
      v127 = v125;
      v128 = sub_251C6FF94();
      v129 = [v126 stringFromDate_];

      v130 = sub_251C70F14();
      v132 = v131;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        (*(v94 + 8))(v118, v127);
        (*(v213 + 8))(v215, v214);
        v133 = *&a2[v57];
      }

      else
      {
        type metadata accessor for PBHKInspectableValue._StorageClass(0);
        swift_allocObject();

        v133 = sub_251B80F70(v134);
        (*(v94 + 8))(v118, v127);
        (*(v213 + 8))(v215, v214);

        *&a2[v57] = v133;
      }

      v55 = v230;
      v135 = (v133 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
      swift_beginAccess();
      *v135 = v130;
      v135[1] = v132;
    }
  }

  v136 = [v55 codedValueCollection];
  if (v136)
  {
    v137 = v136;
    v138 = [v136 codedValues];
    sub_251A8223C(0, &qword_27F479B18, 0x277CCD1A0);
    v139 = sub_251C71154();

    MEMORY[0x28223BE20](v140);
    *(&v201 - 2) = v228;
    sub_251C4F910(sub_251AF2D80, (&v201 - 4), v139);
    v142 = v141;
    v227 = 0;

    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v143 = *&a2[v57];
    }

    else
    {
      type metadata accessor for PBHKInspectableValue._StorageClass(0);
      swift_allocObject();

      v143 = sub_251B80F70(v144);

      *&a2[v57] = v143;
    }

    v145 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
    swift_beginAccess();
    *(v143 + v145) = v142;
  }

  else
  {
    v227 = 0;
  }

  v146 = [v55 medicalCodings];
  if (v146)
  {
    v147 = v146;
    sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
    v148 = sub_251C71154();

    v35 = v148 & 0xFFFFFFFFFFFFFF8;
    if (v148 >> 62)
    {
      v30 = sub_251C717F4();
      if (v30)
      {
LABEL_48:
        a2 = 0;
        v31 = v148 & 0xC000000000000001;
        v32 = MEMORY[0x277D84F90];
        a1 = &selRef_dateComponentsValue;
        do
        {
          v34 = a2;
          while (1)
          {
            if (v31)
            {
              v149 = MEMORY[0x25308D460](v34, v148);
            }

            else
            {
              if (v34 >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v149 = *(v148 + 8 * v34 + 32);
            }

            v150 = v149;
            a2 = (v34 + 1);
            if (__OFADD__(v34, 1))
            {
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v151 = [v149 displayString];
            if (v151)
            {
              break;
            }

            ++v34;
            if (a2 == v30)
            {
              goto LABEL_69;
            }
          }

          v152 = v151;
          v153 = sub_251C70F14();
          v226 = v154;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_251C38CCC(0, *(v32 + 2) + 1, 1, v32);
          }

          v27 = *(v32 + 2);
          v155 = *(v32 + 3);
          if (v27 >= v155 >> 1)
          {
            v32 = sub_251C38CCC((v155 > 1), v27 + 1, 1, v32);
          }

          *(v32 + 2) = v27 + 1;
          v156 = &v32[16 * v27];
          v157 = v226;
          *(v156 + 4) = v153;
          *(v156 + 5) = v157;
        }

        while (a2 != v30);
        goto LABEL_69;
      }
    }

    else
    {
      v30 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_48;
      }
    }

    v32 = MEMORY[0x277D84F90];
LABEL_69:

    a2 = v222;
    v57 = v229;
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v159 = *&a2[v57];
    if ((v158 & 1) == 0)
    {
      type metadata accessor for PBHKInspectableValue._StorageClass(0);
      swift_allocObject();
      v159 = sub_251B80F70(v159);
      *&a2[v57] = v159;
    }

    v55 = v230;
    v160 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
    swift_beginAccess();
    *(v159 + v160) = v32;
  }

  v161 = [v55 ontologyConcept];
  if (v161)
  {
    v162 = v161;
    sub_251AF0ACC(v161, 1, v221);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v163 = *&a2[v57];
    }

    else
    {
      type metadata accessor for PBHKInspectableValue._StorageClass(0);
      swift_allocObject();

      v163 = sub_251B80F70(v164);

      *&a2[v57] = v163;
    }

    v165 = v220;
    sub_251AF2EBC(v221, v220, type metadata accessor for PBHKConcept);
    (*(v218 + 56))(v165, 0, 1, v219);
    v166 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
    swift_beginAccess();
    sub_251AF2DB0(v165, v163 + v166, qword_2813E6D28, type metadata accessor for PBHKConcept);
    swift_endAccess();
  }

  v167 = [v55 dataAbsentReasonCodings];
  if (v167)
  {
    v168 = v167;
    sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
    v169 = sub_251C71154();

    if (v169 >> 62)
    {
LABEL_98:
      v170 = sub_251C717F4();
      if (v170)
      {
LABEL_80:
        v171 = 0;
        v172 = MEMORY[0x277D84F90];
        do
        {
          v173 = v171;
          while (1)
          {
            if ((v169 & 0xC000000000000001) != 0)
            {
              v174 = MEMORY[0x25308D460](v173, v169);
            }

            else
            {
              if (v173 >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_97;
              }

              v174 = *(v169 + 8 * v173 + 32);
            }

            v175 = v174;
            v171 = v173 + 1;
            if (__OFADD__(v173, 1))
            {
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v176 = [v174 displayString];
            if (v176)
            {
              break;
            }

            ++v173;
            if (v171 == v170)
            {
              goto LABEL_100;
            }
          }

          v177 = v176;
          v178 = sub_251C70F14();
          v226 = v179;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v172 = sub_251C38CCC(0, *(v172 + 2) + 1, 1, v172);
          }

          v181 = *(v172 + 2);
          v180 = *(v172 + 3);
          if (v181 >= v180 >> 1)
          {
            v172 = sub_251C38CCC((v180 > 1), v181 + 1, 1, v172);
          }

          *(v172 + 2) = v181 + 1;
          v182 = &v172[16 * v181];
          v183 = v226;
          *(v182 + 4) = v178;
          *(v182 + 5) = v183;
        }

        while (v171 != v170);
        goto LABEL_100;
      }
    }

    else
    {
      v170 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v170)
      {
        goto LABEL_80;
      }
    }

    v172 = MEMORY[0x277D84F90];
LABEL_100:

    a2 = v222;
    v57 = v229;
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v185 = *&a2[v57];
    if ((v184 & 1) == 0)
    {
      type metadata accessor for PBHKInspectableValue._StorageClass(0);
      swift_allocObject();
      v185 = sub_251B80F70(v185);
      *&a2[v57] = v185;
    }

    v55 = v230;
    v186 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
    swift_beginAccess();
    *(v185 + v186) = v172;
  }

  v187 = [v55 dataAbsentReason];
  if (v187)
  {
    v188 = v187;
    sub_251AF0ACC(v187, 1, v217);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v189 = *&a2[v57];
    }

    else
    {
      type metadata accessor for PBHKInspectableValue._StorageClass(0);
      swift_allocObject();

      v189 = sub_251B80F70(v190);

      *&a2[v57] = v189;
    }

    v191 = v220;
    sub_251AF2EBC(v217, v220, type metadata accessor for PBHKConcept);
    (*(v218 + 56))(v191, 0, 1, v219);
    v192 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
    swift_beginAccess();
    sub_251AF2DB0(v191, v189 + v192, qword_2813E6D28, type metadata accessor for PBHKConcept);
    swift_endAccess();
  }

  v193 = [v55 unitString];
  v194 = sub_251C70F14();
  v196 = v195;

  v197 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *&a2[v57];
  if ((v197 & 1) == 0)
  {
    type metadata accessor for PBHKInspectableValue._StorageClass(0);
    swift_allocObject();
    v198 = sub_251B80F70(v198);
    *&a2[v57] = v198;
  }

  v199 = (v198 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  swift_beginAccess();
  *v199 = v194;
  v199[1] = v196;
}

void sub_251AF0480(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  type metadata accessor for PBHKCodedQuantity(0);
  sub_251C703A4();
  v4 = [a1 localizedValue];
  v5 = sub_251C70F14();
  v7 = v6;

  v8 = [a1 rawValue];
  v9 = sub_251C70F14();
  v11 = v10;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;

  [a1 doubleValue];
  *&v12 = v12;
  *(a2 + 32) = LODWORD(v12);
  v13 = [a1 comparatorCoding];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 displayString];

    if (v15)
    {
      v16 = sub_251C70F14();
      v18 = v17;

      v19 = [a1 comparatorCoding];
      if (!v19 || (v20 = v19, v21 = [v19 code], v20, !v21))
      {

        goto LABEL_12;
      }

      v22 = sub_251C70F14();
      v24 = v23;

      *(a2 + 40) = v16;
      *(a2 + 48) = v18;
      v25 = sub_251C4BEF8(&unk_2863F3060);
      sub_251AF2E30();
      swift_arrayDestroy();
      v39 = 0;
      v40 = 0xE000000000000000;
      if (*(v25 + 16))
      {
        v26 = sub_251AC8C58(v22, v24);
        v28 = v27;

        if (v28)
        {
          v29 = (*(v25 + 56) + 16 * v26);
          v31 = *v29;
          v30 = v29[1];

          v32 = v31;
LABEL_11:
          MEMORY[0x25308CDA0](v32, v30);

          MEMORY[0x25308CDA0](v5, v7);

          v5 = 0;
          v7 = 0xE000000000000000;
          goto LABEL_12;
        }
      }

      else
      {
      }

      v32 = 0;
      v30 = 0xE000000000000000;
      goto LABEL_11;
    }
  }

LABEL_12:
  *(a2 + 72) = v5;
  *(a2 + 80) = v7;
  v33 = [a1 unitCoding];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 displayString];

    if (v35)
    {
      v36 = sub_251C70F14();
      v38 = v37;

      *(a2 + 56) = v36;
      *(a2 + 64) = v38;
    }
  }
}

id sub_251AF0748@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v27 = a1;
  v3 = type metadata accessor for PBHKInspectableValue(0);
  v30 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PBHKConcept(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = MEMORY[0x277D84F90];
  v10 = type metadata accessor for PBHKCodedValue(0);
  sub_251C703A4();
  v11 = *(v10 + 24);
  v12 = *(v7 + 56);
  v12(&a2[v11], 1, 1, v6);
  v13 = *(v10 + 28);
  v14 = *(v4 + 56);
  v29 = v4 + 56;
  v31 = v14;
  v14(&a2[v13], 1, 1, v3);
  v15 = v27;
  v16 = [v27 ontologyConcept];
  v17 = v28;
  sub_251AF0ACC(v16, 1, v9);

  sub_251AF3098(&a2[v11], qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251AF2EBC(v9, &a2[v11], type metadata accessor for PBHKConcept);
  v12(&a2[v11], 0, 1, v6);
  v18 = [v15 value];
  v19 = v32;
  sub_251AEE890(v18, v32);

  sub_251AF3098(&a2[v13], qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  sub_251AF2EBC(v19, &a2[v13], type metadata accessor for PBHKInspectableValue);
  v31(&a2[v13], 0, 1, v30);
  result = [v15 referenceRanges];
  if (result)
  {
    v21 = result;
    sub_251A8223C(0, &qword_27F479B28, 0x277CCD890);
    v22 = sub_251C71154();

    MEMORY[0x28223BE20](v23);
    *(&v26 - 2) = v17;
    sub_251C4F9B8(sub_251AF2E8C, (&v26 - 4), v22);
    v25 = v24;

    *a2 = v25;
  }

  return result;
}

id sub_251AF0ACC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a2;
  sub_251AF2314(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v11 = *(v8 + 20);
  if (qword_27F478680 != -1)
  {
    swift_once();
  }

  *(a3 + v11) = qword_27F47ABF8;

  v12 = [a1 preferredName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_251C70F14();
    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a3 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for PBHKConcept._StorageClass(0);
      swift_allocObject();
      v19 = sub_251BB27F0(v18);

      *(a3 + v11) = v19;
      v18 = v19;
    }

    swift_beginAccess();
    *(v18 + 2) = v14;
    *(v18 + 3) = v16;
  }

  v20 = [a1 localizedPreferredName];
  if (v20)
  {
    v21 = v20;
    v22 = sub_251C70F14();
    v24 = v23;

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a3 + v11);
    if ((v25 & 1) == 0)
    {
      type metadata accessor for PBHKConcept._StorageClass(0);
      swift_allocObject();
      v27 = sub_251BB27F0(v26);

      *(a3 + v11) = v27;
      v26 = v27;
    }

    swift_beginAccess();
    *(v26 + 4) = v22;
    *(v26 + 5) = v24;
  }

  v28 = [a1 identifier];
  v29 = [v28 rawIdentifier];

  v50[0] = v29;
  v30 = sub_251C719A4();
  v32 = v31;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a3 + v11);
  if ((v33 & 1) == 0)
  {
    type metadata accessor for PBHKConcept._StorageClass(0);
    swift_allocObject();
    v35 = sub_251BB27F0(v34);

    *(a3 + v11) = v35;
    v34 = v35;
  }

  swift_beginAccess();
  *(v34 + 6) = v30;
  *(v34 + 7) = v32;

  v36 = [a1 isInMemory];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a3 + v11);
  if ((v37 & 1) == 0)
  {
    type metadata accessor for PBHKConcept._StorageClass(0);
    swift_allocObject();
    v39 = sub_251BB27F0(v38);

    *(a3 + v11) = v39;
    v38 = v39;
  }

  v40 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
  result = swift_beginAccess();
  v38[v40] = v36;
  if (v49)
  {
    result = [a1 relationshipsAreLoaded];
    if (result)
    {
      v42 = [a1 groupByConcept];
      sub_251AF0ACC(v42, 0, v10);

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(a3 + v11);
      if ((v43 & 1) == 0)
      {
        type metadata accessor for PBHKConcept._StorageClass(0);
        swift_allocObject();
        v45 = sub_251BB27F0(v44);

        *(a3 + v11) = v45;
        v44 = v45;
      }

      sub_251AF2EBC(v10, v7, type metadata accessor for PBHKConcept);
      (*(v48 + 56))(v7, 0, 1, v8);
      v46 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
      swift_beginAccess();
      sub_251AF2DB0(v7, &v44[v46], qword_2813E6D28, type metadata accessor for PBHKConcept);
      return swift_endAccess();
    }
  }

  return result;
}

id sub_251AF0FCC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PBHKInspectableValueCollection(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v8 = type metadata accessor for PBHKReferenceRange(0);
  sub_251C703A4();
  v9 = *(v8 + 24);
  v10 = *(v5 + 56);
  v10(&a2[v9], 1, 1, v4);
  v11 = [a1 referenceRangeIdentifier];
  if (v11)
  {
    v22 = a1;
    v12 = v7;
    v13 = v4;
    v14 = v10;
    v15 = v11;
    v16 = sub_251C70F14();
    v18 = v17;

    v10 = v14;
    v4 = v13;
    v7 = v12;
    a1 = v22;
    *a2 = v16;
    *(a2 + 1) = v18;
  }

  result = [a1 valueRange];
  if (result)
  {
    v20 = result;
    sub_251AEE494(result, v7);

    sub_251AF3098(&a2[v9], qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    sub_251AF2EBC(v7, &a2[v9], type metadata accessor for PBHKInspectableValueCollection);
    return (v10)(&a2[v9], 0, 1, v4);
  }

  return result;
}

uint64_t sub_251AF11B4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251AF2314(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v58 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v13 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  if (qword_27F478660 != -1)
  {
LABEL_38:
    swift_once();
  }

  *(a3 + v13) = qword_27F47ABF0;

  v14 = [a1 primaryConcept];
  sub_251AF0ACC(v14, 1, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a3 + v13);
  v58 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v17 = sub_251BB2A8C(v16);

    *(a3 + v13) = v17;
    v16 = v17;
  }

  sub_251AF2EBC(v12, v8, type metadata accessor for PBHKConcept);
  (*(v10 + 56))(v8, 0, 1, v9);
  v18 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  sub_251AF2DB0(v8, &v16[v18], qword_2813E6D28, type metadata accessor for PBHKConcept);
  swift_endAccess();
  if (a2 >> 62)
  {
    v19 = sub_251C717F4();
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  v9 = 0;
  v8 = 0;
  v10 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x25308D460](v9, a2);
    }

    else
    {
      if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v20 = *(a2 + 8 * v9 + 32);
    }

    v12 = v20;
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v59 = v20;
    if (sub_251AF18A8(&v59, a1))
    {
      break;
    }

    ++v9;
    if (v13 == v19)
    {
      goto LABEL_22;
    }
  }

  v21 = [v12 gateway];

  if (v21)
  {
    v22 = [v21 title];
    v23 = sub_251C70F14();
    v25 = v24;

    v26 = v58;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a3 + v26);
    if ((v27 & 1) == 0)
    {
      type metadata accessor for PBClinicalRecord._StorageClass(0);
      swift_allocObject();
      v29 = sub_251BB2A8C(v28);

      *(a3 + v26) = v29;
      v28 = v29;
    }

    v30 = (v28 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
    swift_beginAccess();
    *v30 = v23;
    v30[1] = v25;

    v31 = [v21 externalID];
    v32 = sub_251C70F14();
    v34 = v33;

    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v35 = *(a3 + v26);
    }

    else
    {
      type metadata accessor for PBClinicalRecord._StorageClass(0);
      swift_allocObject();

      v35 = sub_251BB2A8C(v36);

      *(a3 + v26) = v35;
    }

    v37 = &v35[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID];
    swift_beginAccess();
    *v37 = v32;
    v37[1] = v34;
  }

LABEL_22:
  v38 = [a1 medicalRecordOriginType];
  v39 = v58;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(a3 + v39);
  if (v38 == 3)
  {
    if ((v40 & 1) == 0)
    {
      type metadata accessor for PBClinicalRecord._StorageClass(0);
      swift_allocObject();
      v46 = sub_251BB2A8C(v41);

      *(a3 + v39) = v46;
      v41 = v46;
    }

    v47 = v41 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
    swift_beginAccess();
    *v47 = 2;
    v47[8] = 1;
    v48 = [a1 sourceRevision];
    v49 = [v48 source];

    v50 = [v49 name];
    v51 = sub_251C70F14();
    v53 = v52;

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(a3 + v39);
    if ((v54 & 1) == 0)
    {
      type metadata accessor for PBClinicalRecord._StorageClass(0);
      swift_allocObject();
      v56 = sub_251BB2A8C(v55);

      *(a3 + v39) = v56;
      v55 = v56;
    }

    v57 = (v55 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
    swift_beginAccess();
    *v57 = v51;
    v57[1] = v53;
  }

  else
  {
    if (v38 == 1)
    {
      if ((v40 & 1) == 0)
      {
        type metadata accessor for PBClinicalRecord._StorageClass(0);
        swift_allocObject();
        v42 = sub_251BB2A8C(v41);

        *(a3 + v39) = v42;
        v41 = v42;
      }

      v43 = v41 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
      result = swift_beginAccess();
      *v43 = 1;
    }

    else
    {
      if ((v40 & 1) == 0)
      {
        type metadata accessor for PBClinicalRecord._StorageClass(0);
        swift_allocObject();
        v45 = sub_251BB2A8C(v41);

        *(a3 + v39) = v45;
        v41 = v45;
      }

      v43 = v41 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
      result = swift_beginAccess();
      *v43 = 0;
    }

    v43[8] = 1;
  }

  return result;
}

uint64_t sub_251AF18A8(void **a1, void *a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2F24(0);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2314(0, &qword_2813E74D0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = *a1;
  v19 = [a2 sourceRevision];
  v20 = [v19 source];

  v21 = [v20 _deducedClinicalAccountIdentifier];
  if (v21)
  {
    sub_251C70054();

    v22 = *(v5 + 56);
    v23 = v5;
    v22(v17, 0, 1, v4);
  }

  else
  {
    v22 = *(v5 + 56);
    v23 = v5;
    v22(v17, 1, 1, v4);
  }

  v24 = [v18 identifier];
  sub_251C70054();

  v22(v15, 0, 1, v4);
  v25 = *(v39 + 48);
  v26 = MEMORY[0x277CC95F0];
  sub_251AF3018(v17, v9, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  sub_251AF3018(v15, &v9[v25], &qword_2813E74D0, v26);
  v27 = v23;
  v28 = *(v23 + 48);
  if (v28(v9, 1, v4) != 1)
  {
    sub_251AF3018(v9, v40, &qword_2813E74D0, MEMORY[0x277CC95F0]);
    if (v28(&v9[v25], 1, v4) != 1)
    {
      v32 = v27;
      v33 = v38;
      (*(v27 + 32))(v38, &v9[v25], v4);
      sub_251AF2B44(&qword_27F4796A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v30 = sub_251C70ED4();
      v34 = *(v32 + 8);
      v34(v33, v4);
      v35 = MEMORY[0x277CC95F0];
      sub_251AF3098(v15, &qword_2813E74D0, MEMORY[0x277CC95F0]);
      sub_251AF3098(v17, &qword_2813E74D0, v35);
      v34(v40, v4);
      sub_251AF3098(v9, &qword_2813E74D0, v35);
      return v30 & 1;
    }

    v31 = MEMORY[0x277CC95F0];
    sub_251AF3098(v15, &qword_2813E74D0, MEMORY[0x277CC95F0]);
    sub_251AF3098(v17, &qword_2813E74D0, v31);
    (*(v27 + 8))(v40, v4);
    goto LABEL_9;
  }

  v29 = MEMORY[0x277CC95F0];
  sub_251AF3098(v15, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  sub_251AF3098(v17, &qword_2813E74D0, v29);
  if (v28(&v9[v25], 1, v4) != 1)
  {
LABEL_9:
    sub_251AF2FB8(v9, sub_251AF2F24);
    v30 = 0;
    return v30 & 1;
  }

  sub_251AF3098(v9, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_251AF1E28@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_251AF2314(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v27 - v2;
  v3 = sub_251C6FC94();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_251C701E4();
  v5 = *(v32 - 8);
  v6 = MEMORY[0x28223BE20](v32);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = [objc_opt_self() referenceCalendar];
  sub_251C70124();

  sub_251AF2314(0, &qword_27F479AA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v12 = sub_251C701C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_251C75420;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x277CC9978], v12);
  v18(v17 + v14, *MEMORY[0x277CC9988], v12);
  v18(v17 + 2 * v14, *MEMORY[0x277CC9998], v12);
  v18(v17 + 3 * v14, *MEMORY[0x277CC9968], v12);
  v18(v17 + 4 * v14, *MEMORY[0x277CC9980], v12);
  v19 = v31;
  v18(v17 + 5 * v14, *MEMORY[0x277CC99A0], v12);
  v18(v17 + 6 * v14, *MEMORY[0x277CC99A8], v12);
  sub_251BFC068(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_251C700E4();
  v20 = v33;

  sub_251C70184();
  sub_251C70134();
  v21 = *(v5 + 8);
  v22 = v8;
  v23 = v32;
  v21(v22, v32);
  v24 = sub_251C70014();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v20, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v28 + 8))(v19, v29);
    v21(v10, v23);
    return (*(v25 + 32))(v30, v20, v24);
  }

  return result;
}

void sub_251AF2314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251AF23DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277CC9578];
  sub_251AF2314(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_251AF3018(a1, &v11 - v6, &qword_2813E7500, v4);
  v8 = sub_251C70014();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ClinicalSharingMedicalRecordsQuery(uint64_t a1)
{
  result = qword_27F479AA8;
  if (!qword_27F479AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251AF2590(uint64_t a1)
{
  type metadata accessor for ClinicalSharingQueryContext(319);
  if (v1 <= 0x3F)
  {
    sub_251A8223C(319, &qword_27F479AB8, 0x277CCD608);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HKMedicalRecordCategoryType(319);
      if (v3 <= 0x3F)
      {
        sub_251AF2314(319, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_251AF2B8C(319, &qword_27F479AC0, &type metadata for ClinicalSharingMedicalRecordsQuery.ChartablePointType, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ClinicalSharingMedicalRecordsQuery.ChartablePointType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClinicalSharingMedicalRecordsQuery.ChartablePointType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_251AF2814()
{
  result = qword_27F479AC8;
  if (!qword_27F479AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479AC8);
  }

  return result;
}

void sub_251AF2868(uint64_t a1)
{
  if (!qword_27F479AD0)
  {
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251A82284();
    v1 = sub_251C70A44();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479AD0);
    }
  }
}

void sub_251AF28D8(uint64_t a1)
{
  if (!qword_27F479AD8)
  {
    sub_251AF29A4(255, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AF29A4(255, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    sub_251AE79A4();
    sub_251AF2A20();
    v1 = sub_251C70814();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479AD8);
    }
  }
}

void sub_251AF29A4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_251AA8E98(255, a3, a4, a5);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251AF2A20()
{
  result = qword_27F478D78;
  if (!qword_27F478D78)
  {
    sub_251AF29A4(255, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478D78);
  }

  return result;
}

void sub_251AF2A98(uint64_t a1)
{
  if (!qword_27F479AE0)
  {
    sub_251AF28D8(255);
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251AF2B44(&qword_27F479AE8, sub_251AF28D8, MEMORY[0x277CBCC10]);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479AE0);
    }
  }
}

uint64_t sub_251AF2B44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AF2B8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251AF2BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ClinicalSharingMedicalRecordsQuery(0) - 8);
  v8 = *(v3 + ((*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_251AECD54(a1, a2, v8, a3);
}

uint64_t sub_251AF2CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AF2DB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AF2314(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_251AF2E30()
{
  if (!qword_27F479B20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479B20);
    }
  }
}

uint64_t sub_251AF2EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AF2F24(uint64_t a1)
{
  if (!qword_27F479B30)
  {
    sub_251AF2314(255, &qword_2813E74D0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479B30);
    }
  }
}

uint64_t sub_251AF2FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AF3018(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AF2314(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251AF3098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AF2314(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AF310C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70084();
  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v6 = 0;
  v7 = result + 40;
  v48 = *(result + 16);
  v43 = v5 - 1;
  v8 = MEMORY[0x277D84F90];
  v44 = result + 40;
  do
  {
    v47 = v8;
    v9 = v7 + 16 * v6;
    v10 = v6;
    while (1)
    {
      if (v10 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = objc_allocWithZone(MEMORY[0x277CBEAF8]);

      v12 = sub_251C70EE4();
      v13 = [v11 initWithLocaleIdentifier_];

      v14 = [v13 languageCode];
      v15 = sub_251C70F14();
      v17 = v16;

      v18 = [v13 regionCode];
      if (v18)
      {
        v19 = v18;
        v20 = sub_251C70F14();
        v22 = v21;
      }

      else
      {
        v22 = 0xE200000000000000;
        v20 = 21333;
      }

      sub_251AF34CC(0, &qword_27F4793D0, MEMORY[0x277D84560]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_251C75800;
      *(v23 + 32) = v15;
      *(v23 + 40) = v17;
      *(v23 + 48) = v20;
      *(v23 + 56) = v22;
      sub_251AF34CC(0, &qword_2813E1E48, MEMORY[0x277D83940]);
      sub_251AF3520();
      v24 = sub_251C70EA4();
      v26 = v25;

      v27 = v49;
      swift_getAtKeyPath();

      if (*(v50 + 16))
      {
        break;
      }

LABEL_5:

      ++v10;

      v9 += 16;
      if (v48 == v10)
      {
        v8 = v47;
        goto LABEL_20;
      }
    }

    v28 = sub_251AC8C58(v24, v26);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_5;
    }

    v31 = (*(v50 + 56) + 16 * v28);
    v33 = *v31;
    v32 = v31[1];

    v34 = v47;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251C38CCC(0, *(v47 + 16) + 1, 1, v47);
      v34 = result;
    }

    v36 = *(v34 + 16);
    v35 = *(v34 + 24);
    v37 = v34;
    if (v36 >= v35 >> 1)
    {
      result = sub_251C38CCC((v35 > 1), v36 + 1, 1, v34);
      v37 = result;
    }

    v6 = v10 + 1;
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 16 * v36;
    v8 = v37;
    *(v38 + 32) = v33;
    *(v38 + 40) = v32;
    v7 = v44;
  }

  while (v43 != v10);
LABEL_20:

  if (*(v8 + 16))
  {
    v39 = *(v8 + 32);
    goto LABEL_22;
  }

  v40 = v49;
  swift_getAtKeyPath();

  if (*(v50 + 16) && (v41 = sub_251AC8C58(a2, a3), (v42 & 1) != 0))
  {
    v39 = *(*(v50 + 56) + 16 * v41);
LABEL_22:
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

void sub_251AF34CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

unint64_t sub_251AF3520()
{
  result = qword_2813E1E40;
  if (!qword_2813E1E40)
  {
    sub_251AF34CC(255, &qword_2813E1E48, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1E40);
  }

  return result;
}

uint64_t WellKnownJWKSRequest.headers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t WellKnownJWKSRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WellKnownJWKSRequest(0) + 24);
  v4 = sub_251C6FE64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WellKnownJWKSRequest(uint64_t a1)
{
  result = qword_27F479B50;
  if (!qword_27F479B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WellKnownJWKSRequest.body.getter()
{
  v1 = v0 + *(type metadata accessor for WellKnownJWKSRequest(0) + 28);
  v2 = *v1;
  sub_251A85E50(*v1, *(v1 + 8));
  return v2;
}

uint64_t WellKnownJWKSRequest.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for WellKnownJWKSRequest(0) + 32));

  return v1;
}

uint64_t WellKnownJWKSRequest.init(baseURLString:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251AF3A84(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C6FE64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = 2;
  *(a3 + 8) = 0;
  v13 = type metadata accessor for WellKnownJWKSRequest(0);
  v25 = a3 + v13[7];
  v26 = a1;
  *v25 = xmmword_251C74660;
  v27 = a2;

  sub_251C70FC4();
  v14 = sub_251C71084();
  v16 = v15;

  if (v14 == 47 && v16 == 0xE100000000000000)
  {
  }

  else
  {
    v17 = sub_251C719D4();

    if ((v17 & 1) == 0)
    {
      MEMORY[0x25308CDA0](47, 0xE100000000000000);
    }
  }

  MEMORY[0x25308CDA0](0xD000000000000015, 0x8000000251C8A840);
  v19 = v26;
  v18 = v27;
  sub_251C15BE8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_251AF3ADC(v8);
    type metadata accessor for WebRequestError(0);
    sub_251AF3B38();
    swift_allocError();
    *v20 = v19;
    v20[1] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_251A8596C(*v25, *(v25 + 8));
  }

  else
  {

    v22 = *(v10 + 32);
    v22(v12, v8, v9);
    result = (v22)(a3 + v13[6], v12, v9);
    v23 = (a3 + v13[8]);
    *v23 = 0x6F6E4B2D6C6C6557;
    v23[1] = 0xEF534B574A206E77;
  }

  return result;
}

void sub_251AF3A84(uint64_t a1)
{
  if (!qword_2813E7520)
  {
    sub_251C6FE64();
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E7520);
    }
  }
}

uint64_t sub_251AF3ADC(uint64_t a1)
{
  sub_251AF3A84(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_251AF3B38()
{
  result = qword_27F479B48;
  if (!qword_27F479B48)
  {
    type metadata accessor for WebRequestError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B48);
  }

  return result;
}

id sub_251AF3BB8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
  v1 = sub_251C70EE4();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t *sub_251AF3C24()
{
  sub_251BD5744(v10);
  type metadata accessor for IssuerDirectoryDownloadTaskManager();
  v0 = swift_allocObject();
  v1 = v11;
  v2 = v12;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  MEMORY[0x28223BE20](v3);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  v7 = sub_251B14AC4(v5, 0, v0, v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t *sub_251AF3D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = xmmword_251C76C60;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;
  *(v4 + 152) = a3;
  *(v4 + 160) = a4;
  swift_getMetatypeMetadata();
  *(v4 + 168) = sub_251C70F74();
  *(v4 + 176) = v9;
  return v4;
}

uint64_t sub_251AF3DFC()
{
  v34 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  __swift_project_value_buffer(v1, qword_2813E8130);

  v2 = sub_251C70744();
  v3 = sub_251C713F4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_251B10780(*(v4 + 168), *(v4 + 176), &v33);
    _os_log_impl(&dword_251A6C000, v2, v3, "%s activating", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  v7 = v0[8];
  if (*(v7 + 112))
  {

    v8 = sub_251C70744();
    v9 = sub_251C713D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[8];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_251B10780(*(v10 + 168), *(v10 + 176), &v33);
      _os_log_impl(&dword_251A6C000, v8, v9, "%s is already activated, ignoring subsequent activation", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25308E2B0](v12, -1, -1);
      MEMORY[0x25308E2B0](v11, -1, -1);
    }

    goto LABEL_10;
  }

  v13 = (*(v7 + 136))();
  type metadata accessor for WrappedScheduler();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = v13;
  [v15 setPreregistered_];
  v17 = *(v7 + 152);
  v16 = *(v7 + 160);
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v14;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  *(v18 + 48) = xmmword_251C76C60;
  v0[6] = sub_251AF4DF0;
  v0[7] = v18;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_251BC69D0;
  v0[5] = &block_descriptor_3;
  v19 = _Block_copy(v0 + 2);

  [v15 scheduleWithBlock_];
  _Block_release(v19);
  v20 = *(v7 + 112);
  *(v7 + 112) = v15;
  v21 = v15;

  v8 = sub_251C70744();
  v22 = sub_251C713B4();

  if (os_log_type_enabled(v8, v22))
  {
    v23 = v0[8];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_251B10780(*(v23 + 168), *(v23 + 176), &v33);
    *(v24 + 12) = 2080;
    v26 = [*(v14 + 16) identifier];
    v27 = sub_251C70F14();
    v29 = v28;

    v30 = sub_251B10780(v27, v29, &v33);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_251A6C000, v8, v22, "%s background activity “%s” is set up", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v25, -1, -1);
    MEMORY[0x25308E2B0](v24, -1, -1);

LABEL_10:

    goto LABEL_11;
  }

LABEL_11:
  v31 = v0[1];

  return v31();
}

uint64_t sub_251AF42E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  __swift_project_value_buffer(v19, qword_2813E8130);

  v20 = sub_251C70744();
  v21 = sub_251C713F4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v22 = 136315394;
    *(v22 + 4) = sub_251B10780(*(a3 + 168), *(a3 + 176), &v46);
    *(v22 + 12) = 2080;
    v23 = [*(a4 + 16) identifier];
    v43 = v21;
    v24 = a1;
    v25 = v23;
    v26 = sub_251C70F14();
    v42 = v20;
    v27 = v26;
    v45 = a3;
    v28 = a5;
    v29 = a4;
    v30 = v18;
    v31 = a6;
    v32 = a2;
    v34 = v33;

    a1 = v24;
    v35 = sub_251B10780(v27, v34, &v46);
    a2 = v32;
    a6 = v31;
    v18 = v30;
    a4 = v29;
    a5 = v28;
    a3 = v45;

    *(v22 + 14) = v35;
    v36 = v42;
    _os_log_impl(&dword_251A6C000, v42, v43, "%s scheduled to execute activity “%s”", v22, 0x16u);
    v37 = v44;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v37, -1, -1);
    MEMORY[0x25308E2B0](v22, -1, -1);
  }

  else
  {
  }

  v38 = sub_251C71214();
  (*(*(v38 - 8) + 56))(v18, 1, 1, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = a5;
  *(v39 + 40) = a6;
  *(v39 + 48) = a3;
  *(v39 + 56) = a4;
  *(v39 + 64) = a7;
  *(v39 + 72) = a1;
  *(v39 + 80) = a2;
  *(v39 + 88) = a8;

  sub_251C56428(0, 0, v18, &unk_251C76D68, v39);
}

uint64_t sub_251AF461C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 80) = a2;
  *(v10 + 64) = a10;
  *(v10 + 72) = v12;
  *(v10 + 56) = a1;
  *(v10 + 40) = a8;
  *(v10 + 48) = a9;
  *(v10 + 24) = a6;
  *(v10 + 32) = a7;
  return MEMORY[0x2822009F8](sub_251AF4654, 0, 0);
}

uint64_t sub_251AF4654()
{
  *(v0 + 88) = (*(v0 + 24))();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_251AF46F8;

  return sub_251B11B20(2);
}

uint64_t sub_251AF46F8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_251AF4A5C;
  }

  else
  {
    v2 = sub_251AF480C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AF480C()
{
  v19 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  __swift_project_value_buffer(v1, qword_2813E8130);

  v2 = sub_251C70744();
  v3 = sub_251C713F4();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251B10780(*(v5 + 168), *(v5 + 176), &v18);
    *(v6 + 12) = 2080;
    v8 = [*(v4 + 16) identifier];
    v9 = sub_251C70F14();
    v11 = v10;

    v12 = sub_251B10780(v9, v11, &v18);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_251A6C000, v2, v3, "%s: activity “%s” succeeded", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 56);
  v15 = *(*(v0 + 48) + 16);
  [v15 setInterval_];
  [v15 setTolerance_];
  v13(1);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_251AF4A5C()
{
  v27 = v0;

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);

  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_251B10780(*(v8 + 168), *(v8 + 176), &v26);
    *(v9 + 12) = 2080;
    v11 = [*(v7 + 16) identifier];
    v12 = sub_251C70F14();
    v14 = v13;

    v15 = sub_251B10780(v12, v14, &v26);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    *(v0 + 16) = v6;
    v16 = v6;
    sub_251A82284();
    v17 = sub_251C70F74();
    v19 = sub_251B10780(v17, v18, &v26);

    *(v9 + 24) = v19;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s: activity “%s” failed: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  v20 = *(v0 + 104);
  v21 = *(v0 + 80);
  v22 = *(v0 + 64);
  v23 = *(*(v0 + 48) + 16);
  [v23 setInterval_];
  [v23 setTolerance_];
  v22(1);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_251AF4D14()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_251AF4D94()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251AF4E18(uint64_t a1)
{
  if (!qword_2813E1E00)
  {
    sub_251C71214();
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1E00);
    }
  }
}

uint64_t sub_251AF4E70(uint64_t a1)
{
  v4 = *(v1 + 3);
  v15 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = v1[8];
  v10 = *(v1 + 9);
  v11 = v1[11];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_251AF4F78;

  return sub_251AF461C(v9, v11, a1, v15, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_251AF4F78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_251AF506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getMetatypeMetadata();
  v4[2] = sub_251C70F74();
  v4[3] = v9;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return v4;
}

uint64_t sub_251AF50FC(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_251C70074();
  v2[51] = v3;
  v2[52] = *(v3 - 8);
  v2[53] = swift_task_alloc();
  v4 = sub_251C6FE64();
  v2[54] = v4;
  v2[55] = *(v4 - 8);
  v2[56] = swift_task_alloc();
  sub_251AF3A84(0);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251AF5250, 0, 0);
}

uint64_t sub_251AF5250()
{
  v34 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  v0[59] = __swift_project_value_buffer(v1, qword_2813E8130);

  v2 = sub_251C70744();
  v3 = sub_251C713C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[50];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_251B10780(*(v4 + 16), *(v4 + 24), &v33);
    *(v5 + 12) = 2080;
    v7 = [*(v4 + 32) webURL];
    if (v7)
    {
      v8 = v7;
      sub_251C6FE14();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v11 = v0[57];
    v10 = v0[58];
    v12 = v0[54];
    v13 = v0[55];
    (*(v13 + 56))(v11, v9, 1, v12);
    sub_251AF80B8(v11, v10);
    v14 = (*(v13 + 48))(v10, 1, v12);
    v15 = v0[58];
    if (v14 == 1)
    {
      sub_251AF3ADC(v0[58]);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v18 = v0[54];
      v19 = v0[55];
      v16 = sub_251C6FDA4();
      v17 = v20;
      (*(v19 + 8))(v15, v18);
    }

    v0[45] = v16;
    v0[46] = v17;
    sub_251AD56B0();
    sub_251C719F4();
    v21 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v22 = sub_251C70F74();
    v24 = sub_251B10780(v22, v23, &v33);

    *(v5 + 14) = v24;
    _os_log_impl(&dword_251A6C000, v2, v3, "%s) Calling downloadDocument for %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  v25 = v0[50];
  v27 = v25[6];
  v26 = v25[7];
  v29 = v25[4];
  v28 = v25[5];
  v0[60] = v29;
  v30 = swift_task_alloc();
  v0[61] = v30;
  *v30 = v0;
  v30[1] = sub_251AF5594;
  v31 = v0[56];

  return sub_251B1DB90(v31, v29, 0, v28, v27, v26);
}

uint64_t sub_251AF5594()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_251AF5C98;
  }

  else
  {
    v2 = sub_251AF56A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AF56A8()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  v5 = [*(v0 + 480) identifier];
  sub_251C70054();

  v6 = sub_251C70034();
  *(v0 + 504) = v6;
  (*(v2 + 8))(v1, v3);
  v7 = sub_251C6FDD4();
  *(v0 + 512) = v7;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_251AF5830;
  v8 = swift_continuation_init();
  sub_251AF7F78(0);
  *(v0 + 264) = v9;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_251BB5ED4;
  *(v0 + 232) = &block_descriptor_20;
  *(v0 + 240) = v8;
  [v4 markDownloadCompleteForAttachmentWithIdentifier:v6 fileURL:v7 completion:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_251AF5830()
{
  v1 = *(*v0 + 112);
  *(*v0 + 520) = v1;
  if (v1)
  {
    v2 = sub_251AF5FDC;
  }

  else
  {
    v2 = sub_251AF5940;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AF5940()
{
  v14 = v0;
  v1 = *(v0 + 504);

  v2 = sub_251C70744();
  v3 = sub_251C713C4();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 440);
  v5 = *(v0 + 448);
  v7 = *(v0 + 432);
  if (v4)
  {
    v8 = *(v0 + 400);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_251B10780(*(v8 + 16), *(v8 + 24), &v13);
    _os_log_impl(&dword_251A6C000, v2, v3, "%s Successfully completed downloadDocument", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_251AF5ADC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = sub_251AF6354;
  }

  else
  {
    v2 = sub_251AF5BEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AF5BEC()
{
  v1 = *(v0 + 536);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251AF5C98()
{
  v28 = v0;
  v1 = v0[62];
  v0[66] = v1;

  v2 = v1;
  v3 = sub_251C70744();
  v4 = sub_251C713D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[50];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251B10780(*(v5 + 16), *(v5 + 24), &v27);
    *(v6 + 12) = 2080;
    v0[48] = v1;
    v8 = v1;
    sub_251A82284();
    sub_251C719F4();
    v9 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v10 = sub_251C70F74();
    v12 = sub_251B10780(v10, v11, &v27);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_251A6C000, v3, v4, "%s Error in downloadDocument: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v13 = v0[60];
  v15 = v0[52];
  v14 = v0[53];
  v16 = v0[51];
  v17 = [v13 identifier];
  sub_251C70054();

  v18 = sub_251C70034();
  v0[67] = v18;
  (*(v15 + 8))(v14, v16);
  swift_getErrorValue();
  v19 = sub_251BC0124(v0[43], v0[44]);
  v20 = sub_251C6FD74();
  v0[68] = v20;

  v21 = [v13 retryCount];
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v0[49];
    v0[2] = v0;
    v0[3] = sub_251AF5ADC;
    v24 = swift_continuation_init();
    sub_251AF7F78(0);
    v0[25] = v25;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_251BB5ED4;
    v0[21] = &block_descriptor_16;
    v0[22] = v24;
    [v23 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v18 errorStatus:1 lastError:v20 retryCount:v22 completion:v0 + 18];
    v21 = (v0 + 2);
  }

  return MEMORY[0x282200938](v21);
}

uint64_t sub_251AF5FDC(uint64_t a1, uint64_t a2)
{
  v35 = v2;
  v4 = v2[63];
  v3 = v2[64];
  v6 = v2[55];
  v5 = v2[56];
  v7 = v2[54];
  swift_willThrow();
  (*(v6 + 8))(v5, v7);

  v8 = v2[65];
  v2[66] = v8;

  v9 = v8;
  v10 = sub_251C70744();
  v11 = sub_251C713D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v2[50];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_251B10780(*(v12 + 16), *(v12 + 24), v34);
    *(v13 + 12) = 2080;
    v2[48] = v8;
    v15 = v8;
    sub_251A82284();
    sub_251C719F4();
    v16 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v17 = sub_251C70F74();
    v19 = sub_251B10780(v17, v18, v34);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s Error in downloadDocument: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v14, -1, -1);
    MEMORY[0x25308E2B0](v13, -1, -1);
  }

  v20 = v2[60];
  v22 = v2[52];
  v21 = v2[53];
  v23 = v2[51];
  v24 = [v20 identifier];
  sub_251C70054();

  v25 = sub_251C70034();
  v2[67] = v25;
  (*(v22 + 8))(v21, v23);
  swift_getErrorValue();
  v26 = sub_251BC0124(v2[43], v2[44]);
  v27 = sub_251C6FD74();
  v2[68] = v27;

  v28 = [v20 retryCount];
  v29 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = v2[49];
    v2[2] = v2;
    v2[3] = sub_251AF5ADC;
    v31 = swift_continuation_init();
    sub_251AF7F78(0);
    v2[25] = v32;
    v2[18] = MEMORY[0x277D85DD0];
    v2[19] = 1107296256;
    v2[20] = sub_251BB5ED4;
    v2[21] = &block_descriptor_16;
    v2[22] = v31;
    [v30 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v25 errorStatus:1 lastError:v27 retryCount:v29 completion:v2 + 18];
    v28 = (v2 + 2);
  }

  return MEMORY[0x282200938](v28);
}

uint64_t sub_251AF6354(uint64_t a1, uint64_t a2)
{
  v3 = v2[68];
  v4 = v2[67];
  v5 = v2[66];
  swift_willThrow();

  v6 = v2[1];

  return v6();
}

uint64_t sub_251AF640C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[69] = v3;
  v4[68] = a3;
  v4[67] = a2;
  v4[66] = a1;
  v5 = sub_251C70074();
  v4[70] = v5;
  v4[71] = *(v5 - 8);
  v4[72] = swift_task_alloc();
  sub_251AF3A84(0);
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251AF651C, 0, 0);
}

uint64_t sub_251AF651C()
{
  v31 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  v0[76] = __swift_project_value_buffer(v1, qword_2813E8130);

  v2 = sub_251C70744();
  v3 = sub_251C713C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[69];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_251B10780(*(v4 + 16), *(v4 + 24), &v30);
    *(v5 + 12) = 2080;
    v7 = [*(v4 + 32) webURL];
    if (v7)
    {
      v8 = v7;
      sub_251C6FE14();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = v0[75];
    v11 = v0[74];
    v12 = sub_251C6FE64();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v11, v9, 1, v12);
    sub_251AF80B8(v11, v10);
    v14 = (*(v13 + 48))(v10, 1, v12);
    v15 = v0[75];
    if (v14 == 1)
    {
      sub_251AF3ADC(v0[75]);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v16 = sub_251C6FDA4();
      v17 = v18;
      (*(v13 + 8))(v15, v12);
    }

    v0[61] = v16;
    v0[62] = v17;
    sub_251AD56B0();
    sub_251C719F4();
    v19 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v20 = sub_251C70F74();
    v22 = sub_251B10780(v20, v21, &v30);

    *(v5 + 14) = v22;
    _os_log_impl(&dword_251A6C000, v2, v3, "%s Calling queryFHIRServer for %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  v23 = v0[69];
  v25 = v23[6];
  v24 = v23[7];
  v27 = v23[4];
  v26 = v23[5];
  v0[77] = v27;
  v28 = swift_task_alloc();
  v0[78] = v28;
  *v28 = v0;
  v28[1] = sub_251AF68A8;

  return sub_251B1EE30(v27, 0, v26, v25, v24);
}

uint64_t sub_251AF68A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[79] = a1;
  v4[80] = a2;
  v4[81] = v2;

  if (v2)
  {
    v5 = sub_251AF730C;
  }

  else
  {
    v5 = sub_251AF69C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251AF69C4()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  v4 = sub_251C6FE64();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 1, 1, v4);
  sub_251A858C4(v2, v1);
  v6 = sub_251C6FEC4();
  v7 = 0;
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    v8 = v0[73];
    v7 = sub_251C6FDD4();
    (*(v5 + 8))(v8, v4);
  }

  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[68];
  v12 = [objc_allocWithZone(MEMORY[0x277D12378]) initWithData:v6 sourceURL:v7 FHIRVersion:v0[67]];
  v0[82] = v12;

  sub_251A83028(v10, v9);
  v0[10] = v0;
  v0[15] = v0 + 65;
  v0[11] = sub_251AF6C08;
  v13 = swift_continuation_init();
  sub_251AF7FFC(0);
  v0[41] = v14;
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_251AB5E04;
  v0[37] = &block_descriptor_9;
  v0[38] = v13;
  [v11 extractAttachmentContentFromFHIRResource:v12 completion:v0 + 34];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_251AF6C08()
{
  v1 = *(*v0 + 112);
  *(*v0 + 664) = v1;
  if (v1)
  {
    v2 = sub_251AF7654;
  }

  else
  {
    v2 = sub_251AF6D18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AF6D18()
{
  v1 = v0[77];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[66];
  v6 = v0[65];
  v0[84] = v6;
  v7 = [v1 identifier];
  sub_251C70054();

  v8 = sub_251C70034();
  v0[85] = v8;
  (*(v3 + 8))(v2, v4);
  v0[18] = v0;
  v0[19] = sub_251AF6E9C;
  v9 = swift_continuation_init();
  sub_251AF7F78(0);
  v0[49] = v10;
  v0[42] = MEMORY[0x277D85DD0];
  v0[43] = 1107296256;
  v0[44] = sub_251BB5ED4;
  v0[45] = &block_descriptor_12;
  v0[46] = v9;
  [v5 markDataAvailableForAttachmentWithIdentifier:v8 attachmentContent:v6 completion:v0 + 42];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_251AF6E9C()
{
  v1 = *(*v0 + 176);
  *(*v0 + 688) = v1;
  if (v1)
  {
    v2 = sub_251AF79C0;
  }

  else
  {
    v2 = sub_251AF6FAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AF6FAC()
{
  v14 = v0;

  v1 = sub_251C70744();
  v2 = sub_251C713C4();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 672);
  v5 = *(v0 + 656);
  v6 = *(v0 + 640);
  v7 = *(v0 + 632);
  if (v3)
  {
    v8 = *(v0 + 552);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_251B10780(*(v8 + 16), *(v8 + 24), &v13);
    _os_log_impl(&dword_251A6C000, v1, v2, "%s Successfully completed queryFHIRServer", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  sub_251A83028(v7, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_251AF714C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 720) = v1;
  if (v1)
  {
    v2 = sub_251AF7D3C;
  }

  else
  {
    v2 = sub_251AF725C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AF725C()
{
  v1 = *(v0 + 704);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251AF730C()
{
  v28 = v0;
  v1 = v0[81];
  v0[87] = v1;

  v2 = v1;
  v3 = sub_251C70744();
  v4 = sub_251C713D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[69];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251B10780(*(v5 + 16), *(v5 + 24), &v27);
    *(v6 + 12) = 2080;
    v0[64] = v1;
    v8 = v1;
    sub_251A82284();
    sub_251C719F4();
    v9 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v10 = sub_251C70F74();
    v12 = sub_251B10780(v10, v11, &v27);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_251A6C000, v3, v4, "%s Error in queryFHIRServer: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v13 = v0[77];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v17 = [v13 identifier];
  sub_251C70054();

  v18 = sub_251C70034();
  v0[88] = v18;
  (*(v15 + 8))(v14, v16);
  swift_getErrorValue();
  v19 = sub_251BC0124(v0[59], v0[60]);
  v20 = sub_251C6FD74();
  v0[89] = v20;

  v21 = [v13 retryCount];
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v0[66];
    v0[2] = v0;
    v0[3] = sub_251AF714C;
    v24 = swift_continuation_init();
    sub_251AF7F78(0);
    v0[33] = v25;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_251BB5ED4;
    v0[29] = &block_descriptor_4;
    v0[30] = v24;
    [v23 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v18 errorStatus:1 lastError:v20 retryCount:v22 completion:v0 + 26];
    v21 = (v0 + 2);
  }

  return MEMORY[0x282200938](v21);
}

uint64_t sub_251AF7654(uint64_t a1, uint64_t a2)
{
  v33 = v2;
  v3 = v2[82];
  v4 = v2[80];
  v5 = v2[79];
  swift_willThrow();
  sub_251A83028(v5, v4);

  v6 = v2[83];
  v2[87] = v6;

  v7 = v6;
  v8 = sub_251C70744();
  v9 = sub_251C713D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v2[69];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_251B10780(*(v10 + 16), *(v10 + 24), v32);
    *(v11 + 12) = 2080;
    v2[64] = v6;
    v13 = v6;
    sub_251A82284();
    sub_251C719F4();
    v14 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v15 = sub_251C70F74();
    v17 = sub_251B10780(v15, v16, v32);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_251A6C000, v8, v9, "%s Error in queryFHIRServer: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  v18 = v2[77];
  v19 = v2[72];
  v20 = v2[71];
  v21 = v2[70];
  v22 = [v18 identifier];
  sub_251C70054();

  v23 = sub_251C70034();
  v2[88] = v23;
  (*(v20 + 8))(v19, v21);
  swift_getErrorValue();
  v24 = sub_251BC0124(v2[59], v2[60]);
  v25 = sub_251C6FD74();
  v2[89] = v25;

  v26 = [v18 retryCount];
  v27 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = v2[66];
    v2[2] = v2;
    v2[3] = sub_251AF714C;
    v29 = swift_continuation_init();
    sub_251AF7F78(0);
    v2[33] = v30;
    v2[26] = MEMORY[0x277D85DD0];
    v2[27] = 1107296256;
    v2[28] = sub_251BB5ED4;
    v2[29] = &block_descriptor_4;
    v2[30] = v29;
    [v28 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v23 errorStatus:1 lastError:v25 retryCount:v27 completion:v2 + 26];
    v26 = (v2 + 2);
  }

  return MEMORY[0x282200938](v26);
}

uint64_t sub_251AF79C0(uint64_t a1, uint64_t a2)
{
  v35 = v2;
  v3 = v2[85];
  v4 = v2[84];
  v5 = v2[82];
  v6 = v2[80];
  v7 = v2[79];
  swift_willThrow();
  sub_251A83028(v7, v6);

  v8 = v2[86];
  v2[87] = v8;

  v9 = v8;
  v10 = sub_251C70744();
  v11 = sub_251C713D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v2[69];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_251B10780(*(v12 + 16), *(v12 + 24), v34);
    *(v13 + 12) = 2080;
    v2[64] = v8;
    v15 = v8;
    sub_251A82284();
    sub_251C719F4();
    v16 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v17 = sub_251C70F74();
    v19 = sub_251B10780(v17, v18, v34);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s Error in queryFHIRServer: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v14, -1, -1);
    MEMORY[0x25308E2B0](v13, -1, -1);
  }

  v20 = v2[77];
  v21 = v2[72];
  v22 = v2[71];
  v23 = v2[70];
  v24 = [v20 identifier];
  sub_251C70054();

  v25 = sub_251C70034();
  v2[88] = v25;
  (*(v22 + 8))(v21, v23);
  swift_getErrorValue();
  v26 = sub_251BC0124(v2[59], v2[60]);
  v27 = sub_251C6FD74();
  v2[89] = v27;

  v28 = [v20 retryCount];
  v29 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = v2[66];
    v2[2] = v2;
    v2[3] = sub_251AF714C;
    v31 = swift_continuation_init();
    sub_251AF7F78(0);
    v2[33] = v32;
    v2[26] = MEMORY[0x277D85DD0];
    v2[27] = 1107296256;
    v2[28] = sub_251BB5ED4;
    v2[29] = &block_descriptor_4;
    v2[30] = v31;
    [v30 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v25 errorStatus:1 lastError:v27 retryCount:v29 completion:v2 + 26];
    v28 = (v2 + 2);
  }

  return MEMORY[0x282200938](v28);
}

uint64_t sub_251AF7D3C(uint64_t a1, uint64_t a2)
{
  v3 = v2[89];
  v4 = v2[88];
  v5 = v2[87];
  swift_willThrow();

  v6 = v2[1];

  return v6();
}

uint64_t sub_251AF7DF8()
{

  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t ClinicalDocumentDownloadTaskError.hashValue.getter()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

unint64_t sub_251AF7EF0()
{
  result = qword_27F479B60;
  if (!qword_27F479B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B60);
  }

  return result;
}

void sub_251AF7F78(uint64_t a1)
{
  if (!qword_27F479F40)
  {
    sub_251A82284();
    v1 = sub_251C71224();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479F40);
    }
  }
}

void sub_251AF7FFC(uint64_t a1)
{
  if (!qword_27F479B68)
  {
    sub_251AF806C();
    sub_251A82284();
    v1 = sub_251C71224();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479B68);
    }
  }
}

unint64_t sub_251AF806C()
{
  result = qword_27F479B70;
  if (!qword_27F479B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479B70);
  }

  return result;
}

uint64_t sub_251AF80B8(uint64_t a1, uint64_t a2)
{
  sub_251AF3A84(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AF816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251C719D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251AF8204(uint64_t a1)
{
  v2 = sub_251AF844C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AF8240(uint64_t a1)
{
  v2 = sub_251AF844C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251AF827C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251AF83F0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AF844C();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_251C71874();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

void sub_251AF83F0(uint64_t a1)
{
  if (!qword_27F479B78)
  {
    sub_251AF844C();
    v1 = sub_251C718E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479B78);
    }
  }
}

unint64_t sub_251AF844C()
{
  result = qword_27F479B80;
  if (!qword_27F479B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B80);
  }

  return result;
}

unint64_t sub_251AF84B4()
{
  result = qword_27F479B88;
  if (!qword_27F479B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B88);
  }

  return result;
}

unint64_t sub_251AF850C()
{
  result = qword_27F479B90;
  if (!qword_27F479B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B90);
  }

  return result;
}

unint64_t sub_251AF8564()
{
  result = qword_27F479B98;
  if (!qword_27F479B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B98);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingCloudStandardAPI(uint64_t a1)
{
  result = qword_2813E31F0;
  if (!qword_2813E31F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251AF862C(uint64_t a1)
{
  result = sub_251C6FE64();
  if (v2 <= 0x3F)
  {
    result = sub_251A8223C(319, &qword_2813E1DC0, 0x277CCAD30);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251AF86D4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v26 = a1;
  v4 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v32 = *(v4 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_251C6F9A4();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v31 = type metadata accessor for PBPushBlobsResponse;
  sub_251AFAD78(0, &qword_27F479C00, type metadata accessor for PBPushBlobsResponse);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  sub_251AFAE30(0);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_251AF8B84(a1, a2);
  sub_251AFAF34(0, &qword_27F479BA8, sub_251AF95E4);
  type metadata accessor for PBPushBlobsResponse(0);
  sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
  sub_251C70B54();

  v16 = v29;
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v29);
  v17 = v30;
  sub_251AF9F38(v27, v30);
  v18 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v19 = (v7 + *(v32 + 80) + v18) & ~*(v32 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v28;
  (*(v6 + 32))(v20 + v18, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  sub_251AF9F9C(v17, v20 + v19);
  sub_251AFAF34(0, &qword_27F479C10, type metadata accessor for PBPushBlobsResponse);
  sub_251AF9760(&qword_27F479C18, &qword_27F479C00, v31);
  sub_251AF97B0(&qword_27F479C20, &qword_27F479C10, type metadata accessor for PBPushBlobsResponse);
  v21 = v34;
  sub_251C70BA4();

  (*(v35 + 8))(v11, v21);
  sub_251AFA034(&qword_27F479C28, sub_251AFAE30, MEMORY[0x277CBCD30]);
  v22 = v36;
  v23 = sub_251C70A94();
  (*(v37 + 8))(v15, v22);
  return v23;
}

uint64_t sub_251AF8B84(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v33 = *(v4 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_251C6F9A4();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C712C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AFAAF0(0);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AFAB9C(0);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  MEMORY[0x28223BE20](v17);
  v30 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C712D4();
  sub_251AF95E4(0);
  sub_251AFA034(&qword_27F479BE0, MEMORY[0x277CC9D10], MEMORY[0x277CC9D08]);
  sub_251C70B54();
  (*(v10 + 8))(v12, v9);
  v20 = v31;
  (*(v6 + 16))(v8, a1, v31);
  v21 = v32;
  sub_251AF9F38(v2, v32);
  v22 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v23 = (v7 + *(v33 + 80) + v22) & ~*(v33 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v39;
  (*(v6 + 32))(v24 + v22, v8, v20);
  sub_251AF9F9C(v21, v24 + v23);
  sub_251AFAF34(0, &qword_27F479BA8, sub_251AF95E4);
  sub_251AFA034(&qword_27F479BF0, sub_251AFAAF0, MEMORY[0x277CBCCC0]);
  sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
  v25 = v30;
  v26 = v35;
  sub_251C70BA4();

  (*(v36 + 8))(v16, v26);
  sub_251AFA034(&qword_27F479BF8, sub_251AFAB9C, MEMORY[0x277CBCD30]);
  v27 = v37;
  v28 = sub_251C70A94();
  (*(v38 + 8))(v25, v27);
  return v28;
}

uint64_t sub_251AF90E0(uint64_t a1, uint64_t a2)
{
  v28[0] = a1;
  v4 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v34 = *(v4 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_251C6F9A4();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PBDeleteBlobsResponse;
  sub_251AFAD78(0, &qword_27F479BA0, type metadata accessor for PBDeleteBlobsResponse);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v28 - v10;
  sub_251AF965C(0);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v40 = sub_251AF8B84(a1, a2);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_251AF9800;
  *(v17 + 24) = v16;
  sub_251AFAF34(0, &qword_27F479BA8, sub_251AF95E4);
  type metadata accessor for PBDeleteBlobsResponse(0);
  sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
  sub_251C70B54();

  v19 = v30;
  v18 = v31;
  (*(v6 + 16))(v30, v28[0], v31);
  v20 = v32;
  sub_251AF9F38(v28[1], v32);
  v21 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v22 = (v7 + *(v34 + 80) + v21) & ~*(v34 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  (*(v6 + 32))(v23 + v21, v19, v18);
  sub_251AF9F9C(v20, v23 + v22);
  sub_251AFAF34(0, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
  sub_251AF9760(&qword_27F479BC8, &qword_27F479BA0, v33);
  sub_251AF97B0(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
  v24 = v36;
  sub_251C70BA4();

  (*(v37 + 8))(v11, v24);
  sub_251AFA034(&qword_27F479BD0, sub_251AF965C, MEMORY[0x277CBCD30]);
  v25 = v38;
  v26 = sub_251C70A94();
  (*(v39 + 8))(v15, v25);
  return v26;
}

void sub_251AF95E4(uint64_t a1)
{
  if (!qword_27F479BB0)
  {
    sub_251A8223C(255, &qword_27F479490, 0x277CCAA40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479BB0);
    }
  }
}

void sub_251AF965C(uint64_t a1)
{
  if (!qword_27F479BC0)
  {
    sub_251AFAD78(255, &qword_27F479BA0, type metadata accessor for PBDeleteBlobsResponse);
    sub_251AFAF34(255, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    sub_251AF9760(&qword_27F479BC8, &qword_27F479BA0, type metadata accessor for PBDeleteBlobsResponse);
    sub_251AF97B0(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    v1 = sub_251C70914();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479BC0);
    }
  }
}

uint64_t sub_251AF9760(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AFAD78(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AF97B0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AFAF34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_251AF9874@<X0>(uint64_t (**a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, uint64_t (**a7)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  v67 = a7;
  v68 = a6;
  v65 = a5;
  v66 = a4;
  v10 = sub_251C6F9A4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v69 = &v60 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - v20;
  v22 = *a1;
  if (a2 >= 1)
  {
    v76 = *a1;
    v23 = v22;
    sub_251A82284();
    if (swift_dynamicCast())
    {
      if (v75 == 6 && v71 == 1 && !(v73 | v72 | v74))
      {
        v64 = a2 - 1;
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v24 = sub_251C70764();
        __swift_project_value_buffer(v24, qword_2813E8130);
        v25 = v11;
        v26 = *(v11 + 16);
        v26(v21, a3, v10);
        v27 = sub_251C70744();
        v63 = sub_251C713F4();
        if (os_log_type_enabled(v27, v63))
        {
          v62 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v76 = v61;
          v28 = v62;
          *v62 = 134218242;
          *(v28 + 4) = a2;
          *(v28 + 12) = 2080;
          v60 = v27;
          v26(v19, v21, v10);
          v26(v69, v19, v10);
          sub_251C719F4();
          v29 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_251C715C4();
          swift_unknownObjectRelease();
          v30 = sub_251C70F74();
          v32 = v31;
          v33 = *(v25 + 8);
          v33(v19, v10);
          v33(v21, v10);
          v34 = sub_251B10780(v30, v32, &v76);

          v35 = v62;
          *(v62 + 14) = v34;
          v36 = v60;
          _os_log_impl(&dword_251A6C000, v60, v63, v65, v35, 0x16u);
          v37 = v61;
          __swift_destroy_boxed_opaque_existential_1(v61);
          MEMORY[0x25308E2B0](v37, -1, -1);
          MEMORY[0x25308E2B0](v35, -1, -1);
        }

        else
        {

          (*(v11 + 8))(v21, v10);
        }

        result = v68(a3, v64);
        *v67 = result;
        return result;
      }

      sub_251AFAA84(v71, v72, v73, v74, v75);
    }
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v38 = sub_251C70764();
  __swift_project_value_buffer(v38, qword_2813E8130);
  v39 = v11;
  v40 = *(v11 + 16);
  v40(v14, a3, v10);
  v41 = v22;
  v42 = sub_251C70744();
  v43 = sub_251C713D4();

  v70 = v42;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    LODWORD(v67) = v43;
    v45 = v44;
    v68 = swift_slowAlloc();
    v76 = v68;
    *v45 = 136315394;
    v40(v19, v14, v10);
    v40(v69, v19, v10);
    sub_251C719F4();
    v46 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v47 = sub_251C70F74();
    v49 = v48;
    v50 = *(v39 + 8);
    v50(v19, v10);
    v50(v14, v10);
    v51 = sub_251B10780(v47, v49, &v76);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2080;
    v71 = v22;
    v52 = v22;
    sub_251A82284();
    sub_251C719F4();
    v53 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v54 = sub_251C70F74();
    v56 = sub_251B10780(v54, v55, &v76);

    *(v45 + 14) = v56;
    v57 = v70;
    _os_log_impl(&dword_251A6C000, v70, v67, "Error received for request. Request: %s. Error: %s", v45, 0x16u);
    v58 = v68;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v58, -1, -1);
    MEMORY[0x25308E2B0](v45, -1, -1);
  }

  else
  {

    (*(v39 + 8))(v14, v10);
  }

  swift_willThrow();
  return v22;
}

uint64_t sub_251AF9F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AF9F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AFA034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AFA07C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_251A858C4(*a1, v4);
  v6 = v5;
  sub_251A83028(v3, v4);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    v10 = v6;
    v11 = sub_251C70744();
    v12 = sub_251C713C4();
    v13 = &selRef_dateComponentsValue;
    if (os_log_type_enabled(v11, v12))
    {
      v14 = v10;
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = [v8 statusCode];

      _os_log_impl(&dword_251A6C000, v11, v12, "Received Response from Oslo Cloud: %ld", v15, 0xCu);
      v16 = v15;
      v10 = v14;
      v13 = &selRef_dateComponentsValue;
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    if ([v8 v13[45]] - 200 >= 0x64)
    {
      v18 = [v8 v13[45]] - 500;
      v19 = [v8 v13[45]];
      v20 = v19;
      if (v18 > 0x63)
      {
        v22 = v19 - 400;
        v23 = [v8 v13[45]];
        sub_251AC1148();
        swift_allocError();
        *v24 = v23;
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        if (v22 > 0x63)
        {
          v25 = 3;
        }

        else
        {
          v25 = 1;
        }

        *(v24 + 32) = v25;
      }

      else
      {
        sub_251AC1148();
        swift_allocError();
        *v21 = v20;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 32) = 2;
      }

      swift_willThrow();
    }

    else
    {
      *a2 = v8;
      sub_251A858C4(v3, v4);
      a2[1] = v3;
      a2[2] = v4;
    }
  }

  else
  {

    sub_251AC1148();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 6;
    swift_willThrow();
  }
}

id sub_251AFA338@<X0>(void **a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v73 = a5;
  v72 = a4;
  v8 = sub_251C6F9A4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v75 = &v66 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v66 - v18;
  v20 = *a1;
  if (a2 < 1)
  {
    goto LABEL_12;
  }

  v76 = a3;
  v82 = v20;
  v21 = v20;
  sub_251A82284();
  if (swift_dynamicCast())
  {
    v22 = v81;
    if (v81 != 2)
    {
LABEL_10:
      sub_251AFAA84(v77, v78, v79, v80, v22);
      goto LABEL_11;
    }

    v82 = v20;
    v23 = v20;
    if (swift_dynamicCast())
    {
      v22 = v81;
      if (v81 == 3)
      {
        v71 = a2 - 1;
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v24 = sub_251C70764();
        __swift_project_value_buffer(v24, qword_2813E8130);
        v25 = *(v9 + 16);
        v70 = v8;
        v68 = v25;
        v25(v19, v76, v8);
        v26 = v20;
        v27 = sub_251C70744();
        v28 = sub_251C713F4();

        v69 = v28;
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v66 = v27;
          v30 = v29;
          v67 = swift_slowAlloc();
          v82 = v67;
          *v30 = 136315650;
          v77 = v20;
          v31 = v20;
          v32 = sub_251C70F74();
          v34 = sub_251B10780(v32, v33, &v82);

          *(v30 + 4) = v34;
          *(v30 + 12) = 2048;
          *(v30 + 14) = a2;
          *(v30 + 22) = 2080;
          v35 = v70;
          v36 = v68;
          v68(v17, v19, v70);
          v36(v75, v17, v35);
          sub_251C719F4();
          v37 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_251C715C4();
          swift_unknownObjectRelease();
          v38 = sub_251C70F74();
          v40 = v39;
          v41 = *(v9 + 8);
          v41(v17, v35);
          v41(v19, v35);
          v42 = sub_251B10780(v38, v40, &v82);

          *(v30 + 24) = v42;
          v43 = v66;
          _os_log_impl(&dword_251A6C000, v66, v69, "Server Side Error from Oslo Cloud: %s. Trying again. Retries left: %ld. Request: %s", v30, 0x20u);
          v44 = v67;
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v44, -1, -1);
          MEMORY[0x25308E2B0](v30, -1, -1);
        }

        else
        {

          (*(v9 + 8))(v19, v70);
        }

        result = sub_251AF8B84(v76, v71);
        *v73 = result;
        return result;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  a3 = v76;
LABEL_12:
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v45 = sub_251C70764();
  __swift_project_value_buffer(v45, qword_2813E8130);
  v46 = *(v9 + 16);
  v46(v12, a3, v8);
  v47 = v20;
  v48 = sub_251C70744();
  v49 = sub_251C713D4();

  v76 = v48;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    LODWORD(v73) = v49;
    v51 = v50;
    v74 = swift_slowAlloc();
    v82 = v74;
    *v51 = 136315394;
    v46(v17, v12, v8);
    v46(v75, v17, v8);
    sub_251C719F4();
    v52 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v53 = sub_251C70F74();
    v55 = v54;
    v56 = *(v9 + 8);
    v56(v17, v8);
    v56(v12, v8);
    v57 = sub_251B10780(v53, v55, &v82);

    *(v51 + 4) = v57;
    *(v51 + 12) = 2080;
    v77 = v20;
    v58 = v20;
    sub_251A82284();
    sub_251C719F4();
    v59 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v60 = sub_251C70F74();
    v62 = sub_251B10780(v60, v61, &v82);

    *(v51 + 14) = v62;
    v63 = v76;
    _os_log_impl(&dword_251A6C000, v76, v73, "Error received for request. Request: %s. Error: %s", v51, 0x16u);
    v64 = v74;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v64, -1, -1);
    MEMORY[0x25308E2B0](v51, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  swift_willThrow();
  return v20;
}

void sub_251AFAA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 5)
  {
  }

  else
  {
    if (a5 != 4)
    {
      return;
    }
  }
}

void sub_251AFAAF0(uint64_t a1)
{
  if (!qword_27F479BD8)
  {
    sub_251C712C4();
    sub_251AF95E4(255);
    sub_251AFA034(&qword_27F479BE0, MEMORY[0x277CC9D10], MEMORY[0x277CC9D08]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479BD8);
    }
  }
}

void sub_251AFAB9C(uint64_t a1)
{
  if (!qword_27F479BE8)
  {
    sub_251AFAAF0(255);
    sub_251AFAF34(255, &qword_27F479BA8, sub_251AF95E4);
    sub_251AFA034(&qword_27F479BF0, sub_251AFAAF0, MEMORY[0x277CBCCC0]);
    sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
    v1 = sub_251C70914();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479BE8);
    }
  }
}

id sub_251AFAC94@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_251C6F9A4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ClinicalSharingCloudStandardAPI(0) - 8);
  return sub_251AFA338(a1, *(v2 + 16), (v2 + v6), v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

void sub_251AFAD78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251AFAF34(255, &qword_27F479BA8, sub_251AF95E4);
    a3(255);
    sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
    v5 = sub_251C708B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251AFAE30(uint64_t a1)
{
  if (!qword_27F479C08)
  {
    sub_251AFAD78(255, &qword_27F479C00, type metadata accessor for PBPushBlobsResponse);
    sub_251AFAF34(255, &qword_27F479C10, type metadata accessor for PBPushBlobsResponse);
    sub_251AF9760(&qword_27F479C18, &qword_27F479C00, type metadata accessor for PBPushBlobsResponse);
    sub_251AF97B0(&qword_27F479C20, &qword_27F479C10, type metadata accessor for PBPushBlobsResponse);
    v1 = sub_251C70914();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479C08);
    }
  }
}

void sub_251AFAF34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251A82284();
    v4 = sub_251C70974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ClinicalSharingCloudStandardAPI(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_251C6FE64();
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v8, v11);
  v12(v0 + v8 + v6[7], v11);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t (*sub_251AFB18C@<X0>(uint64_t (**a1)(uint64_t, uint64_t)@<X0>, const char *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (**a4)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  v9 = *(sub_251C6F9A4() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for ClinicalSharingCloudStandardAPI(0) - 8);
  return sub_251AF9874(a1, *(v4 + 16), v4 + v10, v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), a2, a3, a4);
}

uint64_t sub_251AFB288@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a2;
  v106 = a1;
  v102 = a4;
  v5 = sub_251C6FC94();
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  v107 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C70014();
  v125 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v99 = &v92 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v92 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v100 = &v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v118 = &v92 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v119 = &v92 - v20;
  MEMORY[0x28223BE20](v19);
  v95 = &v92 - v21;
  v22 = sub_251C701E4();
  v123 = *(v22 - 8);
  v124 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v122 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v94 = &v92 - v25;
  v26 = sub_251C701C4();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v111 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v92 - v30;
  sub_251AFD258(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v103 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v105 = &v92 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v104 = &v92 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v92 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v92 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v93 = &v92 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v92 - v47;
  v49 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v50 = *MEMORY[0x277CC9988];
  v115 = *(v27 + 104);
  v116 = v27 + 104;
  v115(v31, v50, v26);
  if (__OFSUB__(0, a3))
  {
    __break(1u);
    goto LABEL_29;
  }

  v96 = v10;
  v110 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
  v117 = v49;
  sub_251C70154();
  v51 = *(v27 + 8);
  v97 = v31;
  v112 = v51;
  v113 = v27 + 8;
  v51(v31, v26);
  v120 = v48;
  v114 = v26;
  v31 = a3;
  v52 = v125;
  if (a3 >= 1)
  {
    v53 = v26;
    v54 = v121;
    v55 = v94;
    (*(v123 + 16))(v94, &v121[v117], v124);
    v115(v111, *MEMORY[0x277CC9968], v53);
    sub_251AFD084(v48, v44, &qword_2813E7500, MEMORY[0x277CC9578]);
    v56 = *(v52 + 48);
    if (v56(v44, 1, v7) == 1)
    {
      v57 = v95;
      (*(v52 + 16))(v95, &v54[v110], v7);
      if (v56(v44, 1, v7) != 1)
      {
        sub_251AFD0F0(v44, &qword_2813E7500, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v57 = v95;
      (*(v52 + 32))(v95, v44, v7);
    }

    v58 = v93;
    v59 = v111;
    sub_251C70154();
    (*(v52 + 8))(v57, v7);
    v112(v59, v114);
    (*(v123 + 8))(v55, v124);
    v48 = v120;
    sub_251AFD0F0(v120, &qword_2813E7500, MEMORY[0x277CC9578]);
    sub_251AC55A0(v58, v48);
  }

  v60 = MEMORY[0x277CC9578];
  sub_251AFD084(v48, v41, &qword_2813E7500, MEMORY[0x277CC9578]);
  a3 = *(v52 + 48);
  v61 = (a3)(v41, 1, v7);
  sub_251AFD0F0(v41, &qword_2813E7500, v60);
  v62 = v61 == 1;
  v48 = v121;
  v26 = v117;
  if (v62)
  {
    if (qword_2813E26F8 == -1)
    {
LABEL_11:
      v63 = sub_251C70764();
      __swift_project_value_buffer(v63, qword_2813E8130);

      v64 = sub_251C70744();
      v65 = sub_251C713E4();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v111 = v31;
        v67 = v126;
        *v66 = 136315394;
        sub_251AFD210(&unk_27F47A470, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v68 = sub_251C719A4();
        v70 = a3;
        v71 = sub_251B10780(v68, v69, &v126);

        *(v66 + 4) = v71;
        a3 = v70;
        *(v66 + 12) = 2048;
        *(v66 + 14) = v111;
        _os_log_impl(&dword_251A6C000, v64, v65, "Unable to create end date from %s, offset by %ld years", v66, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x25308E2B0](v67, -1, -1);
        v72 = v66;
        v26 = v117;
        MEMORY[0x25308E2B0](v72, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_29:
    swift_once();
    goto LABEL_11;
  }

LABEL_14:
  (*(v123 + 16))(v122, &v48[v26], v124);
  v73 = v104;
  sub_251AFD084(v120, v104, &qword_2813E7500, MEMORY[0x277CC9578]);
  v74 = (a3)(v73, 1, v7);
  v75 = v105;
  if (v74 == 1)
  {
    (*(v125 + 16))(v119, &v48[v110], v7);
    v76 = (a3)(v73, 1, v7);
    v77 = v97;
    if (v76 != 1)
    {
      sub_251AFD0F0(v73, &qword_2813E7500, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v125 + 32))(v119, v73, v7);
    v77 = v97;
  }

  v121 = sub_251C6FBC4();
  v78 = [v121 hk_negativeComponents];
  v79 = v107;
  sub_251C6FBD4();

  sub_251C70144();
  (*(v108 + 8))(v79, v109);
  result = (a3)(v75, 1, v7);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  v81 = *(v125 + 32);
  v81(v118, v75, v7);
  v82 = v114;
  v115(v77, *MEMORY[0x277CC9968], v114);
  v83 = v103;
  sub_251C70154();
  v112(v77, v82);
  result = (a3)(v83, 1, v7);
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v84 = v100;
  v81(v100, v83, v7);
  v85 = v99;
  if (v98 == 9)
  {
    v86 = v101;
    v89 = v118;
    v88 = v122;
    sub_251B1D048(v118, v101);
    v87 = v121;
  }

  else
  {
    v86 = v101;
    v87 = v121;
    v88 = v122;
    v89 = v118;
    if (v98 == 8)
    {
      sub_251C700C4();
    }

    else if (v98 == 7)
    {
      sub_251C700C4();
      sub_251C6FF74();
      sub_251C6FF84();
      (*(v125 + 8))(v85, v7);
    }

    else
    {
      sub_251B1C960(v98, v118, v101);
    }
  }

  v90 = v125;
  (*(v125 + 16))(v85, v86, v7);
  sub_251C700C4();
  sub_251C6FA94();

  v91 = *(v90 + 8);
  v91(v86, v7);
  v91(v84, v7);
  v91(v89, v7);
  v91(v119, v7);
  (*(v123 + 8))(v88, v124);
  return sub_251AFD0F0(v120, &qword_2813E7500, MEMORY[0x277CC9578]);
}

uint64_t sub_251AFC004()
{
  v0 = sub_251C703E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703D4();
  type metadata accessor for PBTypedData(0);
  sub_251AFD210(&qword_27F478F48, type metadata accessor for PBTypedData, &unk_251C74C6C);
  v4 = sub_251C70574();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_251AFC140()
{
  type metadata accessor for PBTypedData(0);
  sub_251AFD210(&qword_27F478F48, type metadata accessor for PBTypedData, &unk_251C74C6C);
  return sub_251C70594();
}

uint64_t sub_251AFC1C0(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PBTypedData(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD8E14(a1, v12);
  v13 = a2(v12);
  if (v5)
  {
    return sub_251AFD14C(v12, type metadata accessor for PBTypedData);
  }

  v15 = v13;
  v17[0] = sub_251AFC300();
  v17[1] = v16;
  MEMORY[0x25308CDA0](46, 0xE100000000000000);
  MEMORY[0x25308CDA0](a4, a5);
  sub_251AFD14C(v12, type metadata accessor for PBTypedData);
  return v15;
}

uint64_t sub_251AFC300()
{
  sub_251AFD258(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = *(v0 + 8);
  v42 = *v0;
  LOBYTE(v43) = v19;
  v20 = sub_251C70F74();
  v37 = v21;
  v38 = v20;
  v39 = *(type metadata accessor for PBTypedData(0) + 28);
  v40 = v0;
  sub_251AFD084(v0 + v39, v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    *v18 = 0;
    *(v18 + 1) = 0xE000000000000000;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0xE000000000000000;
    *(v18 + 4) = 0;
    v18[40] = 1;
    sub_251C703A4();
    if (v22(v8, 1, v9) != 1)
    {
      sub_251AFD0F0(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }
  }

  else
  {
    sub_251AFD1AC(v8, v18);
  }

  v23 = *(v18 + 4);
  v24 = v18[40];
  sub_251AFD14C(v18, type metadata accessor for PBDateRange);
  v42 = v23;
  LOBYTE(v43) = v24;
  v25 = sub_251C70F74();
  v27 = v26;
  v42 = v38;
  v43 = v37;
  MEMORY[0x25308CDA0](47, 0xE100000000000000);
  MEMORY[0x25308CDA0](v25, v27);

  MEMORY[0x25308CDA0](47, 0xE100000000000000);
  v29 = v39;
  v28 = v40;
  sub_251AFD084(v40 + v39, v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v22(v6, 1, v9) == 1)
  {
    *v16 = 0;
    *(v16 + 1) = 0xE000000000000000;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0xE000000000000000;
    *(v16 + 4) = 0;
    v16[40] = 1;
    sub_251C703A4();
    if (v22(v6, 1, v9) != 1)
    {
      sub_251AFD0F0(v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }
  }

  else
  {
    sub_251AFD1AC(v6, v16);
  }

  v30 = *v16;
  v31 = *(v16 + 1);

  sub_251AFD14C(v16, type metadata accessor for PBDateRange);
  MEMORY[0x25308CDA0](v30, v31);

  MEMORY[0x25308CDA0](95, 0xE100000000000000);
  v32 = v41;
  sub_251AFD084(v28 + v29, v41, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v22(v32, 1, v9) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0xE000000000000000;
    *(v13 + 4) = 0;
    v13[40] = 1;
    sub_251C703A4();
    if (v22(v32, 1, v9) != 1)
    {
      sub_251AFD0F0(v32, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }
  }

  else
  {
    sub_251AFD1AC(v32, v13);
  }

  v33 = *(v13 + 2);
  v34 = *(v13 + 3);

  sub_251AFD14C(v13, type metadata accessor for PBDateRange);
  MEMORY[0x25308CDA0](v33, v34);

  return v42;
}

uint64_t sub_251AFC81C(uint64_t a1, char a2)
{
  sub_251AFD258(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  sub_251AFD258(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  if (a2)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        v10 = sub_251C701E4();
        (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
        v11 = sub_251C70244();
        (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
        sub_251C6FC74();
        return sub_251C6FC14();
      }

      if (a1 == 2)
      {
LABEL_12:
        v17 = sub_251C701E4();
        (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
        v18 = sub_251C70244();
        (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
        sub_251C6FC74();
        return sub_251C6FBE4();
      }
    }

    else
    {
      if (a1 <= 4)
      {
        if (a1 != 3)
        {
          v15 = sub_251C701E4();
          (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
          v16 = sub_251C70244();
          (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
          sub_251C6FC74();
          return sub_251C6FC34();
        }

        goto LABEL_12;
      }

      if (a1 == 6)
      {
        v13 = sub_251C701E4();
        (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
        v14 = sub_251C70244();
        (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
        sub_251C6FC74();
        return sub_251C6FC54();
      }
    }
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_251C716A4();
  MEMORY[0x25308CDA0](0xD000000000000038, 0x8000000251C8AA90);
  v19 = a1;
  v20 = a2 & 1;
  sub_251C717C4();
  result = sub_251C717E4();
  __break(1u);
  return result;
}

uint64_t sub_251AFCF70()
{
  sub_251A82418();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251C76B00;
  sub_251C70F14();
  v1 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v2 = sub_251C70EE4();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  sub_251C70F14();
  v4 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v5 = sub_251C70EE4();

  v6 = [v4 initWithKey:v5 ascending:0];

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_251AFD084(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AFD258(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251AFD0F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AFD258(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AFD14C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AFD1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AFD210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AFD258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_251AFD2AC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v45 = a3;
  sub_251AFD8C8(0, &qword_2813E2368, MEMORY[0x277CBCCD8]);
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v35 - v5;
  sub_251AFD8C8(0, &qword_27F479C30, MEMORY[0x277CBCC38]);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v35 - v7;
  sub_251AB2978(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v46 = *a1;
  v19 = v46;
  v20 = type metadata accessor for ClinicalSharingSyncContext(0);

  v44 = v20;
  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v10 + 8))(v12, v9);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v13, MEMORY[0x277CBCF40]);
  v21 = sub_251C70A94();
  result = (*(v16 + 8))(v18, v15);
  if (!*(v19 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
  {
    v46 = v21;
    v23 = swift_allocObject();
    v24 = v37;
    *(v23 + 16) = v37;
    v36 = v24;
    sub_251C70964();
    v37 = v21;
    v25 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v25, MEMORY[0x277CBCD90]);
    v26 = v38;
    sub_251C70B94();

    sub_251AFDC7C(&qword_2813E2370, &qword_2813E2368, MEMORY[0x277CBCCD8], MEMORY[0x277CBCCE0]);
    v27 = v40;
    v28 = sub_251C70A94();
    v39 = *(v39 + 8);
    (v39)(v26, v27);
    v46 = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = v36;
    *(v29 + 24) = v36;
    v31 = v30;
    sub_251C70964();
    sub_251C70B94();

    v32 = sub_251C70A94();

    (v39)(v26, v27);
    v46 = v32;

    v33 = v41;
    sub_251C70B04();

    sub_251AFDC7C(&qword_27F479C38, &qword_27F479C30, MEMORY[0x277CBCC38], MEMORY[0x277CBCC40]);
    v34 = v43;
    v21 = sub_251C70A94();

    result = (*(v42 + 8))(v33, v34);
  }

  *v45 = v21;
  return result;
}

void sub_251AFD8C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    v10[0] = v7;
    v10[1] = v7;
    v11 = sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v6, MEMORY[0x277CBCD90]);
    v12 = v11;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251AFD990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ClinicalSharingSyncContext(255);
    v7 = sub_251A82284();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251AFDA08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251AFD990(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AFDA4C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[0] = a3;
  sub_251AB2978(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  sub_251B26C14(*a1);
  v18[1] = a2;
  type metadata accessor for ClinicalSharingSyncContext(0);

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v7 + 8))(v9, v6);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v10, MEMORY[0x277CBCF40]);
  v16 = sub_251C70A94();
  result = (*(v13 + 8))(v15, v12);
  *v18[0] = v16;
  return result;
}

uint64_t sub_251AFDC7C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251AFD8C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AFDCC8()
{
  sub_251AFE8D8(0, &qword_2813E1C50, sub_251AFE93C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C747F0;
  *(inited + 32) = sub_251C70F14();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  v5 = v4;
  *(inited + 72) = v4;
  *(inited + 48) = v3;
  *(inited + 80) = sub_251C70F14();
  *(inited + 88) = v6;
  v7 = *v0;
  v8 = v0[1];
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v7;
  *(inited + 104) = v8;
  *(inited + 128) = sub_251C70F14();
  *(inited + 136) = v9;
  v10 = *MEMORY[0x277CDBF18];
  *(inited + 168) = v5;
  *(inited + 144) = v10;
  *(inited + 176) = sub_251C70F14();
  *(inited + 184) = v11;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  *(inited + 224) = sub_251C70F14();
  *(inited + 232) = v12;
  v13 = v3;

  v14 = v10;
  v15 = sub_251C70CB4();
  *(inited + 264) = MEMORY[0x277CC9318];
  *(inited + 240) = v15;
  *(inited + 248) = v16;
  sub_251C4C154(inited);
  swift_setDeallocating();
  sub_251AFE93C();
  swift_arrayDestroy();
  v17 = sub_251C70E44();

  v18 = SecItemAdd(v17, 0);

  if (!v18)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v24 = sub_251C70764();
    __swift_project_value_buffer(v24, qword_2813E8130);
    v20 = sub_251C70744();
    v21 = sub_251C713C4();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_12;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Successfully added the private key to keychain";
    goto LABEL_11;
  }

  if (v18 == -25299)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v19 = sub_251C70764();
    __swift_project_value_buffer(v19, qword_2813E8130);
    v20 = sub_251C70744();
    v21 = sub_251C713C4();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_12;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Private key already exists in keychain";
LABEL_11:
    _os_log_impl(&dword_251A6C000, v20, v21, v23, v22, 2u);
    MEMORY[0x25308E2B0](v22, -1, -1);
LABEL_12:

    return;
  }

  sub_251AFEB90();
  v25 = sub_251C715B4();
  v27 = v26;
  sub_251AFEBE4();
  swift_allocError();
  *v28 = v25;
  *(v28 + 8) = v27;
  *(v28 + 16) = 4;
  swift_willThrow();
}

SecAccessControlRef sub_251AFE074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v65 = a1;
  v73[35] = *MEMORY[0x277D85DE8];
  v3 = sub_251C70014();
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v66 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AFE8D8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  sub_251AFE8D8(0, &qword_2813E1C50, sub_251AFE93C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C747F0;
  *(inited + 32) = sub_251C70F14();
  *(inited + 40) = v13;
  v14 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  *(inited + 72) = v15;
  *(inited + 48) = v14;
  *(inited + 80) = sub_251C70F14();
  *(inited + 88) = v16;
  v17 = *v2;
  v18 = *(v2 + 1);
  v64 = v2;
  v19 = v3;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v17;
  *(inited + 104) = v18;
  *(inited + 128) = sub_251C70F14();
  *(inited + 136) = v20;
  v21 = MEMORY[0x277D839B0];
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  *(inited + 176) = sub_251C70F14();
  *(inited + 184) = v22;
  *(inited + 216) = v21;
  *(inited + 192) = 1;
  *(inited + 224) = sub_251C70F14();
  *(inited + 232) = v23;
  *(inited + 264) = v21;
  *(inited + 240) = 1;
  v24 = v11;
  v25 = v14;

  sub_251C4C154(inited);
  swift_setDeallocating();
  sub_251AFE93C();
  v26 = v67;
  swift_arrayDestroy();
  v73[0] = 0;
  v27 = *(v26 + 56);
  v27(v11, 1, 1, v19);
  v28 = sub_251C70E44();
  v29 = SecItemCopyMatching(v28, v73);

  if (v29)
  {

    if (v29 == -25300)
    {
      sub_251AFEBE4();
      swift_allocError();
      *v30 = 0xD000000000000014;
      *(v30 + 8) = 0x8000000251C8AAD0;
    }

    else
    {
      LODWORD(v72[0]) = v29;
      sub_251AFEB90();
      v36 = sub_251C715B4();
      v38 = v37;
      sub_251AFEBE4();
      swift_allocError();
      *v30 = v36;
      *(v30 + 8) = v38;
    }

    *(v30 + 16) = 5;
    swift_willThrow();
    goto LABEL_11;
  }

  v59 = v19;
  if (!v73[0])
  {

LABEL_14:
    v39 = 0;
    v58 = 0xF000000000000000;
    v40 = v59;
    v41 = v66;
    v42 = v67;
    v43 = v64;
    goto LABEL_20;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v32 = v31;
  result = [v31 __swift_objectForKeyedSubscript_];
  if (!result)
  {
    __break(1u);
    goto LABEL_39;
  }

  sub_251C715C4();
  swift_unknownObjectRelease();
  sub_251ACFB54(&v70, v72);
  swift_dynamicCast();
  v34 = v68;
  v58 = v69;
  v35 = [v32 __swift_objectForKeyedSubscript_];
  v57 = v34;
  if (v35)
  {
    sub_251C715C4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_251AC5608(v24);
  }

  else
  {
    sub_251AC5608(v24);
    swift_unknownObjectRelease();
    v70 = 0u;
    v71 = 0u;
  }

  v41 = v66;
  v42 = v67;
  v72[0] = v70;
  v72[1] = v71;
  v40 = v59;
  v44 = v60;
  if (*(&v71 + 1))
  {
    v45 = swift_dynamicCast() ^ 1;
    v46 = v44;
  }

  else
  {
    sub_251AFEC38(v72);
    v46 = v44;
    v45 = 1;
  }

  v27(v46, v45, 1, v40);
  sub_251AC55A0(v44, v24);
  v43 = v64;
  v39 = v57;
LABEL_20:
  v47 = v63;
  sub_251AC553C(v24, v63);
  if ((*(v42 + 48))(v47, 1, v40) != 1)
  {
    (*(v42 + 32))(v41, v47, v40);
    sub_251C6FF74();
    if (v48 > v43[5])
    {
      (*(v42 + 8))(v41, v40);
      goto LABEL_24;
    }

    if (v58 >> 60 == 15)
    {
      v54 = v62;
      sub_251AFE9A0();
      if (!v54)
      {
        sub_251AFEBE4();
        swift_allocError();
        *v55 = 0xD000000000000021;
        *(v55 + 8) = 0x8000000251C8AAF0;
        *(v55 + 16) = 5;
        swift_willThrow();
        (*(v42 + 8))(v41, v40);
LABEL_11:
        sub_251AC5608(v24);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_251C70CC4();
    }

    (*(v42 + 8))(v41, v40);
    goto LABEL_11;
  }

  sub_251AC5608(v47);
LABEL_24:
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v49 = sub_251C70764();
  __swift_project_value_buffer(v49, qword_2813E8130);
  v50 = sub_251C70744();
  v51 = sub_251C713C4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_251A6C000, v50, v51, "Verification Key expired. Creating and storing a new verification key", v52, 2u);
    MEMORY[0x25308E2B0](v52, -1, -1);
  }

  v53 = v62;
  sub_251AFE9A0();
  if (v53)
  {
    goto LABEL_31;
  }

  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (result)
  {
    sub_251C70CD4();
LABEL_31:
    sub_251AC5608(v24);
    sub_251A8596C(v39, v58);
    return swift_unknownObjectRelease();
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_251AFE8D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251AFE93C()
{
  if (!qword_2813E1F90)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1F90);
    }
  }
}

void sub_251AFE9A0()
{
  sub_251AFE8D8(0, &qword_2813E1C50, sub_251AFE93C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C76AF0;
  *(inited + 32) = sub_251C70F14();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  *(inited + 72) = v4;
  *(inited + 48) = v3;
  *(inited + 80) = sub_251C70F14();
  *(inited + 88) = v5;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  *(inited + 128) = sub_251C70F14();
  *(inited + 136) = v6;
  v7 = *v0;
  v8 = v0[1];
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  v9 = v3;

  sub_251C4C154(inited);
  swift_setDeallocating();
  sub_251AFE93C();
  swift_arrayDestroy();
  v10 = sub_251C70E44();

  v11 = SecItemDelete(v10);

  if (v11)
  {
    if (v11 != -25300)
    {
      sub_251AFEB90();
      v12 = sub_251C715B4();
      v14 = v13;
      sub_251AFEBE4();
      swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v14;
      *(v15 + 16) = 6;
      swift_willThrow();
    }
  }
}

unint64_t sub_251AFEB90()
{
  result = qword_27F479C40;
  if (!qword_27F479C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C40);
  }

  return result;
}

unint64_t sub_251AFEBE4()
{
  result = qword_27F479C48;
  if (!qword_27F479C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C48);
  }

  return result;
}

uint64_t sub_251AFEC38(uint64_t a1)
{
  sub_251AFEC94();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251AFEC94()
{
  if (!qword_2813E1BA0)
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1BA0);
    }
  }
}

uint64_t Error.hdhr_friendlyDescription.getter(uint64_t a1, uint64_t a2)
{
  v26[1] = a2;
  sub_251AFF134(0, &qword_27F479C50, MEMORY[0x277D84198]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = *(a1 - 8);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  v14 = sub_251C71714();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v8 + 16);
  v18(v13, v2, a1);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v7, 0, 1, v14);
    (*(v15 + 32))(v17, v7, v14);
    v21 = DecodingError.hdhr_friendlyDescription.getter();
    (*(v15 + 8))(v17, v14);
    return v21;
  }

  else
  {
    v20(v7, 1, 1, v14);
    sub_251AFF0D8(v7, &qword_27F479C50, MEMORY[0x277D84198]);
    v18(v11, v2, a1);
    sub_251AFF074();
    if (swift_dynamicCast())
    {
      sub_251A7E8D8(v27, v29);
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v23 = sub_251C6FCA4();
      if (v24)
      {
        v25 = v23;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v25 = sub_251C71A44();
      }

      __swift_destroy_boxed_opaque_existential_1(v29);
      return v25;
    }

    else
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      sub_251AFF0D8(v27, &qword_27F4798B0, sub_251AFF074);
      return sub_251C71A44();
    }
  }
}

unint64_t sub_251AFF074()
{
  result = qword_27F4798A8;
  if (!qword_27F4798A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4798A8);
  }

  return result;
}

uint64_t sub_251AFF0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AFF134(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251AFF134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t Error.sensitiveLogString.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_251C719C4();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_251C6FD74();

  v11 = [v10 hrs_safelyLoggableDescription];
  v12 = sub_251C70F14();

  return v12;
}

uint64_t sub_251AFF31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7972746E65 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251C719D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251AFF3A0(uint64_t a1)
{
  v2 = sub_251B00F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AFF3DC(uint64_t a1)
{
  v2 = sub_251B00F90();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_251AFF418@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_251B00DAC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_251AFF444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = *(a3 + 16);
    v6 = a3 + 80;
    v26 = a3 + 80;
    v27 = MEMORY[0x277D84F90];
    v30 = v5;
LABEL_3:
    v7 = (v6 + 56 * v4);
    while (v5 != v4)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_25:
        __break(1u);

        __break(1u);
        return result;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_25;
      }

      v3 = *(v7 - 6);
      v9 = *(v7 - 5);
      v11 = *(v7 - 4);
      v10 = *(v7 - 3);
      v12 = *(v7 - 2);
      v13 = *(v7 - 1);
      v14 = *v7;
      if (v11 == a1 && v10 == a2)
      {
        v11 = a1;
LABEL_14:

        sub_251AFF694(v13, v14);
        v17 = v27;
        v31 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_251C0BA6C(0, *(v27 + 2) + 1, 1);
          v17 = v31;
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_251C0BA6C((v18 > 1), v19 + 1, 1);
          v20 = v19 + 1;
          v17 = v31;
        }

        *(v17 + 2) = v20;
        v27 = v17;
        v21 = &v17[56 * v19];
        *(v21 + 4) = v3;
        *(v21 + 5) = v9;
        *(v21 + 6) = v11;
        *(v21 + 7) = v10;
        *(v21 + 8) = v12;
        *(v21 + 9) = v13;
        *(v21 + 10) = v14;
        v4 = v8;
        v5 = v30;
        v6 = v26;
        goto LABEL_3;
      }

      v16 = sub_251C719D4();
      v5 = v30;
      ++v4;
      v7 += 7;
      if (v16)
      {
        goto LABEL_14;
      }
    }

    v31 = v27;

    sub_251AFF788(&v31);

    if (*(v31 + 2))
    {
      v22 = *(v31 + 4);
      v23 = *(v31 + 9);
      v24 = *(v31 + 10);

      sub_251AFF694(v23, v24);

      sub_251AFF7F4(v23, v24);
      return v22;
    }
  }

  return 0;
}

uint64_t sub_251AFF694(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_251AFF6A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v2 >= 2)
  {

    if (v4 >= 2)
    {
LABEL_3:

      if (v5 != v3)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_251AFF7F4(*(a1 + 40), v2);
    v3 = 0;
    v2 = 0xE000000000000000;
    if (v4 >= 2)
    {
      goto LABEL_3;
    }
  }

  sub_251AFF7F4(v5, v4);
  v4 = 0xE000000000000000;
  if (v3)
  {
LABEL_9:
    v6 = sub_251C719D4();
    goto LABEL_10;
  }

LABEL_7:
  if (v4 != v2)
  {
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6 & 1;
}

uint64_t sub_251AFF788(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251BFAE04(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_251AFF808(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_251AFF7F4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_251AFF808(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251C71994();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_251C71184();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_251AFFBF8(v7, v8, a1, v4);
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
    return sub_251AFF900(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251AFF900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = *a4 + 56 * a3 - 56;
    v5 = result - a3;
LABEL_6:
    v25 = v4;
    v26 = a3;
    v6 = v27 + 56 * a3;
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    v24 = v5;
    v9 = v5;
    while (1)
    {
      v28 = v9;
      v10 = *(v4 + 40);
      v11 = *(v4 + 48);

      sub_251AFF694(v8, v7);

      sub_251AFF694(v10, v11);
      if (v7 >= 2)
      {
        sub_251AFF694(v8, v7);
        v12 = v8;
        v13 = v7;
      }

      else
      {
        sub_251AFF7F4(v8, v7);
        v12 = 0;
        v13 = 0xE000000000000000;
      }

      v29 = v10;
      if (v11 >= 2)
      {

        v15 = v10;
        v14 = v11;
        if (v15 != v12)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_251AFF7F4(v10, v11);
        v14 = 0xE000000000000000;
        if (v12)
        {
          goto LABEL_15;
        }
      }

      if (v14 == v13)
      {

        sub_251AFF7F4(v29, v11);

        result = sub_251AFF7F4(v8, v7);
LABEL_5:
        a3 = v26 + 1;
        v4 = v25 + 56;
        v5 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_15:
      v16 = sub_251C719D4();

      sub_251AFF7F4(v29, v11);

      result = sub_251AFF7F4(v8, v7);
      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v27)
      {
        __break(1u);
        return result;
      }

      v18 = *(v4 + 64);
      v17 = *(v4 + 72);
      v19 = *(v4 + 16);
      v21 = *(v4 + 48);
      v20 = *(v4 + 56);
      *(v4 + 56) = *v4;
      v22 = *(v4 + 80);
      result = *(v4 + 88);
      v8 = *(v4 + 96);
      v7 = *(v4 + 104);
      *(v4 + 72) = v19;
      *(v4 + 88) = *(v4 + 32);
      *(v4 + 104) = v21;
      *v4 = v20;
      *(v4 + 8) = v18;
      *(v4 + 16) = v17;
      *(v4 + 24) = v22;
      *(v4 + 32) = result;
      *(v4 + 40) = v8;
      *(v4 + 48) = v7;
      v4 -= 56;
      v9 = v28 + 1;
      if (v28 == -1)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_251AFFBF8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_107:
    v4 = *v8;
    if (!*v8)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_109:
      v167 = v11;
      v127 = *(v11 + 2);
      if (v127 >= 2)
      {
        while (*v7)
        {
          v128 = *&v11[16 * v127];
          v129 = *&v11[16 * v127 + 24];
          sub_251B00744((*v7 + 56 * v128), (*v7 + 56 * *&v11[16 * v127 + 16]), *v7 + 56 * v129, v4);
          if (v6)
          {
          }

          if (v129 < v128)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_251BFABE4(v11);
          }

          if (v127 - 2 >= *(v11 + 2))
          {
            goto LABEL_134;
          }

          v130 = &v11[16 * v127];
          *v130 = v128;
          *(v130 + 1) = v129;
          v167 = v11;
          result = sub_251BFAB58(v127 - 1);
          v11 = v167;
          v127 = *(v167 + 2);
          if (v127 <= 1)
          {
          }
        }

        goto LABEL_144;
      }
    }

LABEL_140:
    result = sub_251BFABE4(v11);
    v11 = result;
    goto LABEL_109;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v141 = result;
LABEL_4:
  v12 = v10;
  if (v10 + 1 >= v9)
  {
    v36 = v10 + 1;
    goto LABEL_29;
  }

  v148 = v9;
  v139 = v11;
  v142 = v6;
  v13 = *v7;
  v14 = (*v7 + 56 * (v10 + 1));
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v18 = v14[4];
  v19 = v14[5];
  v20 = v14[6];
  v160 = *v14;
  v161 = v15;
  v162 = v16;
  v163 = v17;
  v164 = v18;
  v165 = v19;
  v166 = v20;
  v21 = (v13 + 56 * v10);
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[3];
  v25 = v12;
  v26 = v21[4];
  v27 = v21[5];
  v28 = v21[6];
  v156 = v13;
  v157[0] = *v21;
  v157[1] = v22;
  v157[2] = v23;
  v157[3] = v24;
  v157[4] = v26;
  v158 = v27;
  v159 = v28;

  sub_251AFF694(v19, v20);

  sub_251AFF694(v27, v28);
  v150 = sub_251AFF6A8(&v160, v157);
  if (v142)
  {
    v131 = v158;
    v132 = v159;

    sub_251AFF7F4(v131, v132);
    v133 = v165;
    v134 = v166;

    sub_251AFF7F4(v133, v134);
  }

  v29 = v158;
  v30 = v159;

  sub_251AFF7F4(v29, v30);
  v4 = v161;
  v31 = v165;
  v32 = v166;

  result = sub_251AFF7F4(v31, v32);
  v33 = v25 + 2;
  v137 = v25;
  v146 = 56 * v25;
  v34 = (v156 + 56 * v25 + 160);
  while (1)
  {
    v36 = v148;
    if (v148 == v33)
    {
      break;
    }

    v4 = *(v34 - 1);
    v37 = *v34;
    v38 = *(v34 - 7);
    v152 = *(v34 - 8);
    if (*v34 >= 2)
    {

      sub_251AFF694(v4, v37);

      v39 = v152;
      sub_251AFF694(v152, v38);
      sub_251AFF694(v4, v37);
      v40 = v4;
      v41 = v37;
    }

    else
    {

      sub_251AFF694(v4, v37);

      v39 = v152;
      sub_251AFF694(v152, v38);
      sub_251AFF7F4(v4, v37);
      v40 = 0;
      v41 = 0xE000000000000000;
    }

    v154 = v37;
    if (v38 >= 2)
    {

      v42 = v39;
      v44 = v39;
      v43 = v38;
      if (v44 != v40)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v42 = v39;
      sub_251AFF7F4(v39, v38);
      v43 = 0xE000000000000000;
      if (v40)
      {
        goto LABEL_7;
      }
    }

    if (v43 == v41)
    {
      v35 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v35 = sub_251C719D4();
LABEL_8:

    sub_251AFF7F4(v42, v38);

    result = sub_251AFF7F4(v4, v154);
    ++v33;
    v34 += 7;
    if ((v150 ^ v35))
    {
      v36 = v33 - 1;
      break;
    }
  }

  v8 = v141;
  v6 = 0;
  v12 = v137;
  v11 = v139;
  v7 = a3;
  if ((v150 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v36 < v137)
  {
    goto LABEL_139;
  }

  if (v137 < v36)
  {
    v45 = 56 * v36 - 24;
    v46 = v146 + 48;
    v47 = v36;
    v48 = v137;
    do
    {
      if (v48 != --v47)
      {
        v49 = *a3;
        if (!*a3)
        {
          goto LABEL_143;
        }

        v50 = (v49 + v46);
        v51 = *(v49 + v46 - 48);
        v52 = v49 + v45;
        v53 = *(v50 - 4);
        v54 = *(v50 - 3);
        v55 = *v50;
        v56 = *(v50 - 1);
        v58 = *(v52 - 16);
        v57 = *v52;
        v59 = *(v52 - 32);
        *v50 = *(v52 + 16);
        *(v50 - 2) = v58;
        *(v50 - 1) = v57;
        *(v50 - 3) = v59;
        *(v52 - 32) = v51;
        *(v52 - 16) = v53;
        *(v52 - 8) = v54;
        *v52 = v56;
        *(v52 + 16) = v55;
      }

      ++v48;
      v45 -= 56;
      v46 += 56;
    }

    while (v48 < v47);
  }

LABEL_29:
  v60 = v7[1];
  if (v36 >= v60)
  {
    goto LABEL_38;
  }

  if (__OFSUB__(v36, v12))
  {
    goto LABEL_136;
  }

  if (v36 - v12 >= a4)
  {
LABEL_38:
    v62 = v36;
    if (v36 < v12)
    {
      goto LABEL_135;
    }

    goto LABEL_39;
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_137;
  }

  if (v12 + a4 >= v60)
  {
    v61 = v7[1];
  }

  else
  {
    v61 = v12 + a4;
  }

  if (v61 < v12)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v36 == v61)
  {
    goto LABEL_38;
  }

  v138 = v12;
  v140 = v11;
  v143 = v6;
  v144 = v61;
  v151 = *v7;
  v108 = *v7 + 56 * v36 - 56;
  v109 = v12 - v36;
  while (2)
  {
    v147 = v108;
    v149 = v36;
    v110 = v151 + 56 * v36;
    v4 = *(v110 + 40);
    v111 = *(v110 + 48);
    v145 = v109;
    v112 = v109;
LABEL_92:
    v153 = v112;
    v113 = *(v108 + 40);
    v114 = *(v108 + 48);

    sub_251AFF694(v4, v111);

    sub_251AFF694(v113, v114);
    if (v111 >= 2)
    {
      sub_251AFF694(v4, v111);
      v115 = v4;
      v116 = v111;
    }

    else
    {
      sub_251AFF7F4(v4, v111);
      v115 = 0;
      v116 = 0xE000000000000000;
    }

    v155 = v113;
    if (v114 >= 2)
    {

      v118 = v113;
      v117 = v114;
      if (v118 != v115)
      {
        goto LABEL_100;
      }

LABEL_99:
      if (v117 != v116)
      {
        goto LABEL_100;
      }

      sub_251AFF7F4(v155, v114);

      sub_251AFF7F4(v4, v111);
LABEL_90:
      v36 = v149 + 1;
      v108 = v147 + 56;
      v62 = v144;
      v109 = v145 - 1;
      if (v149 + 1 != v144)
      {
        continue;
      }

      v8 = v141;
      v6 = v143;
      v12 = v138;
      v11 = v140;
      v7 = a3;
      if (v144 < v138)
      {
        goto LABEL_135;
      }

LABEL_39:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_251C38DF0(0, *(v11 + 2) + 1, 1, v11);
        v11 = result;
      }

      v4 = *(v11 + 2);
      v63 = *(v11 + 3);
      v64 = v4 + 1;
      if (v4 >= v63 >> 1)
      {
        result = sub_251C38DF0((v63 > 1), v4 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v64;
      v65 = &v11[16 * v4];
      *(v65 + 4) = v12;
      *(v65 + 5) = v62;
      v66 = *v8;
      if (!v66)
      {
        goto LABEL_145;
      }

      v10 = v62;
      if (v4)
      {
        while (2)
        {
          v67 = v64 - 1;
          if (v64 >= 4)
          {
            v72 = &v11[16 * v64 + 32];
            v73 = *(v72 - 64);
            v74 = *(v72 - 56);
            v78 = __OFSUB__(v74, v73);
            v75 = v74 - v73;
            if (v78)
            {
              goto LABEL_122;
            }

            v77 = *(v72 - 48);
            v76 = *(v72 - 40);
            v78 = __OFSUB__(v76, v77);
            v70 = v76 - v77;
            v71 = v78;
            if (v78)
            {
              goto LABEL_123;
            }

            v79 = &v11[16 * v64];
            v81 = *v79;
            v80 = *(v79 + 1);
            v78 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v78)
            {
              goto LABEL_125;
            }

            v78 = __OFADD__(v70, v82);
            v83 = v70 + v82;
            if (v78)
            {
              goto LABEL_128;
            }

            if (v83 >= v75)
            {
              v101 = &v11[16 * v67 + 32];
              v103 = *v101;
              v102 = *(v101 + 1);
              v78 = __OFSUB__(v102, v103);
              v104 = v102 - v103;
              if (v78)
              {
                goto LABEL_132;
              }

              if (v70 < v104)
              {
                v67 = v64 - 2;
              }
            }

            else
            {
LABEL_58:
              if (v71)
              {
                goto LABEL_124;
              }

              v84 = &v11[16 * v64];
              v86 = *v84;
              v85 = *(v84 + 1);
              v87 = __OFSUB__(v85, v86);
              v88 = v85 - v86;
              v89 = v87;
              if (v87)
              {
                goto LABEL_127;
              }

              v90 = &v11[16 * v67 + 32];
              v92 = *v90;
              v91 = *(v90 + 1);
              v78 = __OFSUB__(v91, v92);
              v93 = v91 - v92;
              if (v78)
              {
                goto LABEL_130;
              }

              if (__OFADD__(v88, v93))
              {
                goto LABEL_131;
              }

              if (v88 + v93 < v70)
              {
                goto LABEL_72;
              }

              if (v70 < v93)
              {
                v67 = v64 - 2;
              }
            }
          }

          else
          {
            if (v64 == 3)
            {
              v68 = *(v11 + 4);
              v69 = *(v11 + 5);
              v78 = __OFSUB__(v69, v68);
              v70 = v69 - v68;
              v71 = v78;
              goto LABEL_58;
            }

            v94 = &v11[16 * v64];
            v96 = *v94;
            v95 = *(v94 + 1);
            v78 = __OFSUB__(v95, v96);
            v88 = v95 - v96;
            v89 = v78;
LABEL_72:
            if (v89)
            {
              goto LABEL_126;
            }

            v97 = &v11[16 * v67];
            v99 = *(v97 + 4);
            v98 = *(v97 + 5);
            v78 = __OFSUB__(v98, v99);
            v100 = v98 - v99;
            if (v78)
            {
              goto LABEL_129;
            }

            if (v100 < v88)
            {
              break;
            }
          }

          v4 = v67 - 1;
          if (v67 - 1 >= v64)
          {
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
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
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
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          if (!*v7)
          {
            goto LABEL_142;
          }

          v105 = *&v11[16 * v4 + 32];
          v106 = *&v11[16 * v67 + 40];
          sub_251B00744((*v7 + 56 * v105), (*v7 + 56 * *&v11[16 * v67 + 32]), *v7 + 56 * v106, v66);
          if (v6)
          {
          }

          if (v106 < v105)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_251BFABE4(v11);
          }

          if (v4 >= *(v11 + 2))
          {
            goto LABEL_121;
          }

          v107 = &v11[16 * v4];
          *(v107 + 4) = v105;
          *(v107 + 5) = v106;
          v167 = v11;
          result = sub_251BFAB58(v67);
          v11 = v167;
          v64 = *(v167 + 2);
          if (v64 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v9 = v7[1];
      v8 = v141;
      if (v10 >= v9)
      {
        goto LABEL_107;
      }

      goto LABEL_4;
    }

    break;
  }

  sub_251AFF7F4(v113, v114);
  v117 = 0xE000000000000000;
  if (!v115)
  {
    goto LABEL_99;
  }

LABEL_100:
  v119 = sub_251C719D4();

  sub_251AFF7F4(v155, v114);

  result = sub_251AFF7F4(v4, v111);
  if ((v119 & 1) == 0)
  {
    goto LABEL_90;
  }

  if (v151)
  {
    v121 = *(v108 + 64);
    v120 = *(v108 + 72);
    v122 = *(v108 + 16);
    v124 = *(v108 + 48);
    v123 = *(v108 + 56);
    *(v108 + 56) = *v108;
    v126 = *(v108 + 80);
    v125 = *(v108 + 88);
    v4 = *(v108 + 96);
    v111 = *(v108 + 104);
    *(v108 + 72) = v122;
    *(v108 + 88) = *(v108 + 32);
    *(v108 + 104) = v124;
    *v108 = v123;
    *(v108 + 8) = v121;
    *(v108 + 16) = v120;
    *(v108 + 24) = v126;
    *(v108 + 32) = v125;
    *(v108 + 40) = v4;
    *(v108 + 48) = v111;
    v108 -= 56;
    v112 = v153 + 1;
    if (v153 == -1)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}