unint64_t sub_1C48111E0()
{
  result = qword_1EC0BDAC0;
  if (!qword_1EC0BDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDAC0);
  }

  return result;
}

unint64_t sub_1C481123C()
{
  result = qword_1EDDFD850;
  if (!qword_1EDDFD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD850);
  }

  return result;
}

unint64_t sub_1C4811294()
{
  result = qword_1EDDFD848;
  if (!qword_1EDDFD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD848);
  }

  return result;
}

unint64_t sub_1C48112EC()
{
  result = qword_1EDDFD858;
  if (!qword_1EDDFD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD858);
  }

  return result;
}

void sub_1C4811368()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459CFD0();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EC0BDAF8, 0x1E69634B8);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459CFD0();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      MEMORY[0x1EEE9AC00](v6);
      v8 = sub_1C43FD7EC(v7, v17);
      v9(v8);
      v10 = sub_1C4433410();
      sub_1C4813D24(v10, v11, v12, v13, v14, v15);
      sub_1C440962C(&v17);
      sub_1C44160C0();
    }

    while (!v16);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C48114B8()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459D010();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EDDDB868, 0x1E69B8A20);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459D010();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      MEMORY[0x1EEE9AC00](v6);
      v8 = sub_1C43FD7EC(v7, v17);
      v9(v8);
      v10 = sub_1C4433410();
      sub_1C4813D24(v10, v11, v12, v13, v14, v15);
      sub_1C440962C(&v17);
      sub_1C44160C0();
    }

    while (!v16);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1C4811608(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C43FED38();
    sub_1C459D088(v4, v5, v6);
    v2 = v12;
    v7 = a1 + 32;
    do
    {
      v7 += 8;
      swift_dynamicCast();
      v12 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C459D088((v8 > 1), v9 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v9 + 1;
      sub_1C44482AC(&v11, (v2 + 32 * v9 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C48116F8()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  type metadata accessor for GraphTriple(v2);
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C459D6F8();
    sub_1C4411D48();
    do
    {
      v4 = sub_1C44057DC();
      sub_1C4471874(v4, v5);
      sub_1C440D464();
      if (v6)
      {
        sub_1C4404F04();
        sub_1C459D6F8();
      }

      sub_1C4436548();
      v8 = sub_1C445E5E8(&qword_1EC0BAA28, v7, &protocol conformance descriptor for GraphTriple);
      sub_1C4414204(v8);
      sub_1C445E81C();
      sub_1C4471874(v0, v9);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v10);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4811820()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  type metadata accessor for EventTriple(v2);
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C459D6F8();
    sub_1C4411D48();
    do
    {
      v4 = sub_1C44057DC();
      sub_1C4471874(v4, v5);
      sub_1C440D464();
      if (v6)
      {
        sub_1C4404F04();
        sub_1C459D6F8();
      }

      sub_1C4441074();
      v8 = sub_1C445E5E8(&qword_1EDDEBC08, v7, &protocol conformance descriptor for EventTriple);
      sub_1C4414204(v8);
      sub_1C4418AAC();
      sub_1C4471874(v0, v9);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v10);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4811948(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C43FED38();
    sub_1C459D088(v4, v5, v6);
    v2 = v13;
    v7 = a1 + 32;
    do
    {
      sub_1C442E860(v7, &v11);
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      swift_dynamicCast();
      v13 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C459D088((v8 > 1), v9 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v9 + 1;
      sub_1C44482AC(&v12, (v2 + 32 * v9 + 32));
      v7 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C4811A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1C4404B14();
  a30 = v31;
  a31 = v33;
  v34 = *(v32 + 16);
  if (v34)
  {
    v35 = v32;
    a19 = MEMORY[0x1E69E7CC0];
    v36 = sub_1C43FED38();
    sub_1C459D788(v36, v37, v38);
    v39 = v35 + 48;
    v40 = a19;
    do
    {
      v41 = *(v39 - 8);
      v42 = *(v39 - 16);
      v43 = v41;
      sub_1C456902C(&qword_1EC0B8848, &qword_1C4F40C80);
      v44 = sub_1C456902C(&qword_1EC0B8898, &unk_1C4F30C50);
      sub_1C44017A8(&a15, v45, v46, v44, v47, v48, v49);
      v50 = a15;
      v51 = a16;
      v52 = a17;
      a19 = v40;
      v54 = *(v40 + 16);
      v53 = *(v40 + 24);
      if (v54 >= v53 >> 1)
      {
        v56 = a15;
        sub_1C459D788((v53 > 1), v54 + 1, 1);
        v50 = v56;
        v40 = a19;
      }

      *(v40 + 16) = v54 + 1;
      v55 = v40 + 32 * v54;
      *(v55 + 32) = v50;
      *(v55 + 48) = v51;
      *(v55 + 56) = v52;
      v39 += 24;
      --v34;
    }

    while (v34);
  }

  sub_1C440576C();
}

void sub_1C4811B78()
{
  sub_1C43FBD3C();
  v2 = v1;
  v16 = sub_1C456902C(&qword_1EC0B8830, &unk_1C4F0DC20);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  sub_1C456902C(&qword_1EC0B8F18, &unk_1C4F0E9D0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C448F128();
  if (v0)
  {
    sub_1C4405C20();
    sub_1C459D850();
    v9 = v17;
    sub_1C43FC354();
    v11 = v2 + v10;
    v12 = *(v4 + 72);
    do
    {
      sub_1C4460108(v11, v7, &qword_1EC0B8830, &unk_1C4F0DC20);
      sub_1C4459B80();
      sub_1C44512F0();
      if (v13)
      {
        sub_1C459D850();
        v9 = v17;
      }

      *(v9 + 16) = v4;
      sub_1C43FC354();
      v14 = sub_1C446240C();
      sub_1C44CDA30(v14, v15, &qword_1EC0B8F18, &unk_1C4F0E9D0);
      v11 += v12;
      --v0;
    }

    while (v0);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4811D34(void *a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (a1[2])
  {
    sub_1C4405C20();
    sub_1C442EB40();
    sub_1C459D810();
    v1 = v35;
    v3 = (a1 + 8);
    do
    {
      v4 = *v3;
      v29 = a1[4];
      v30 = a1[5];
      v31 = a1[6];
      v32 = a1[7];
      v33 = *v3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v5 = v4;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C456902C(&qword_1EC0B8828, &qword_1C4F0E9C0);
      v6 = sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
      v12 = sub_1C44017A8(v34, v7, v8, v6, v9, v10, v11);
      v22 = sub_1C44414A4(v12, v13, v14, v15, v16, v17, v18, v19, v20, v27.n128_i64[0], v27.n128_i64[1], v28, v29, v30, v31, v32, v33, v34[0], v34[1], v21);
      if (v23)
      {
        sub_1C4404F04();
        v27 = v25;
        sub_1C459D810();
        v22 = v27;
        v1 = v35;
      }

      sub_1C4423B94(v22);
    }

    while (!v24);
  }

  return v1;
}

uint64_t sub_1C4811E40(void *a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (a1[2])
  {
    sub_1C4405C20();
    sub_1C442EB40();
    sub_1C459D810();
    v1 = v35;
    v3 = (a1 + 8);
    do
    {
      v4 = *v3;
      v29 = a1[4];
      v30 = a1[5];
      v31 = a1[6];
      v32 = a1[7];
      v33 = *v3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v5 = v4;
      sub_1C456902C(&qword_1EC0BDAD8, &unk_1C4F30C60);
      v6 = sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
      v12 = sub_1C44017A8(v34, v7, v8, v6, v9, v10, v11);
      v22 = sub_1C44414A4(v12, v13, v14, v15, v16, v17, v18, v19, v20, v27.n128_i64[0], v27.n128_i64[1], v28, v29, v30, v31, v32, v33, v34[0], v34[1], v21);
      if (v23)
      {
        sub_1C4404F04();
        v27 = v25;
        sub_1C459D810();
        v22 = v27;
        v1 = v35;
      }

      sub_1C4423B94(v22);
    }

    while (!v24);
  }

  return v1;
}

uint64_t sub_1C4811F4C(uint64_t a1)
{
  v2 = type metadata accessor for StandardEntityFusion(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C459DD18();
    v7 = v16;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1C4471874(v8, v5);
      v16 = v7;
      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_1C459DD18();
        v7 = v16;
      }

      v14 = v2;
      v15 = sub_1C445E5E8(&qword_1EDDF4658, type metadata accessor for StandardEntityFusion, &protocol conformance descriptor for StandardEntityFusion);
      v11 = sub_1C4422F90(&v13);
      sub_1C4471874(v5, v11);
      *(v7 + 16) = v10 + 1;
      sub_1C441D670(&v13, v7 + 40 * v10 + 32);
      sub_1C4485404(v5, type metadata accessor for StandardEntityFusion);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void sub_1C4812140()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  type metadata accessor for EntityTriple(v2);
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C459DD58();
    sub_1C4411D48();
    do
    {
      v4 = sub_1C44057DC();
      sub_1C4471874(v4, v5);
      sub_1C440D464();
      if (v6)
      {
        sub_1C4404F04();
        sub_1C459DD58();
      }

      sub_1C4433CF0();
      v8 = sub_1C445E5E8(&qword_1EDDF8D78, v7, &protocol conformance descriptor for EntityTriple);
      sub_1C4414204(v8);
      sub_1C444B150();
      sub_1C4471874(v0, v9);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v10);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4812268(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C43FED38();
    sub_1C459DE30(v4, v5, v6);
    v2 = v13;
    v7 = a1 + 32;
    do
    {
      sub_1C4460108(v7, &v11, &qword_1EC0B90A0, &unk_1C4F10E30);
      sub_1C456902C(&qword_1EC0B90A0, &unk_1C4F10E30);
      sub_1C442F680();
      swift_dynamicCast();
      v13 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C459DE30(v8 > 1, v9 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v9 + 1;
      memcpy((v2 + 80 * v9 + 32), __src, 0x49uLL);
      v7 += 80;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C4812398()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459DF08();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &unk_1EDDDBAF0, 0x1E6966A80);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459DF08();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      MEMORY[0x1EEE9AC00](v6);
      v8 = sub_1C43FD7EC(v7, v16);
      v9(v8);
      v10 = sub_1C4433410();
      sub_1C44FDC24(v10, v11, v12, v13, v14);
      sub_1C440962C(&v16);
      sub_1C44160C0();
    }

    while (!v15);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C48124D4()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  type metadata accessor for StaticKnowledgeTriple(v2);
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v4 = sub_1C44057DC();
      sub_1C4471874(v4, v5);
      sub_1C440D464();
      if (v6)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      v7 = sub_1C445E5E8(&qword_1EC0BDB00, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55090);
      v8 = sub_1C4414204(v7);
      sub_1C4471874(v0, v8);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v9);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812624()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  type metadata accessor for LiveGlobalKnowledgeTriple(v2);
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v4 = sub_1C44057DC();
      sub_1C4471874(v4, v5);
      sub_1C440D464();
      if (v6)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      v7 = sub_1C445E5E8(&qword_1EC0BDB08, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
      v8 = sub_1C4414204(v7);
      sub_1C4471874(v0, v8);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v9);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812774()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v1 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v1)
  {
LABEL_14:
    sub_1C43FE9F0();
    return;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1C441CA38();
  sub_1C459E8F8();
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v19;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        sub_1C444192C();
        v6 = v5;
      }

      else
      {
        v6 = *(v0 + 8 * v3 + 32);
      }

      v7 = type metadata accessor for EntityRelevanceEvaluationTaskManager(0);
      v17 = v7;
      v18 = &off_1F43E9010;
      v16[0] = v6;
      v19 = v4;
      v8 = *(v4 + 16);
      if (v8 >= *(v4 + 24) >> 1)
      {
        sub_1C459E8F8();
        v9 = v17;
        v10 = v18;
      }

      else
      {
        v9 = v7;
        v10 = &off_1F43E9010;
      }

      ++v3;
      sub_1C4418280(v16, v9);
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v11);
      sub_1C43FBCC4();
      v14 = v13 - v12;
      (*(v15 + 16))(v13 - v12);
      sub_1C4813D24(v8, v14, &v19, v9, v10, sub_1C443FA18);
      sub_1C440962C(v16);
      v4 = v19;
    }

    while (v1 != v3);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1C4812934()
{
  sub_1C43FBD3C();
  v2 = v1;
  v16 = sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C448F128();
  if (v0)
  {
    sub_1C4405C20();
    sub_1C459E938();
    v9 = v17;
    sub_1C43FC354();
    v11 = v2 + v10;
    v12 = *(v4 + 72);
    do
    {
      sub_1C4460108(v11, v7, &qword_1EC0B9078, &unk_1C4F30C70);
      sub_1C4459B80();
      sub_1C44512F0();
      if (v13)
      {
        sub_1C459E938();
        v9 = v17;
      }

      *(v9 + 16) = v4;
      sub_1C43FC354();
      v14 = sub_1C446240C();
      sub_1C44CDA30(v14, v15, &qword_1EC0B89E8, &unk_1C4F3E630);
      v11 += v12;
      --v0;
    }

    while (v0);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812AF0()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  type metadata accessor for ConstructionGraphTriple(v2);
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v4 = sub_1C44057DC();
      sub_1C4471874(v4, v5);
      sub_1C440D464();
      if (v6)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      v7 = sub_1C445E5E8(&qword_1EDDE2668, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
      v8 = sub_1C4414204(v7);
      sub_1C4471874(v0, v8);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v9);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812C40()
{
  sub_1C43FBD3C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    sub_1C4405C20();
    sub_1C442EB40();
    sub_1C44F4214();
    v3 = v2 + 32;
    v4 = v17;
    do
    {
      sub_1C442E860(v3, &v13);
      sub_1C456902C(&qword_1EC0B9248, &unk_1C4F30C80);
      sub_1C442F680();
      swift_dynamicCast();
      v17 = v4;
      v5 = *(v4 + 16);
      if (v5 >= *(v4 + 24) >> 1)
      {
        sub_1C44F4214();
      }

      v6 = v15;
      v7 = v16;
      sub_1C4418280(v14, v15);
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v8);
      sub_1C43FBCC4();
      v11 = v10 - v9;
      (*(v12 + 16))(v10 - v9);
      sub_1C44FDC24(v5, v11, &v17, v6, v7);
      sub_1C440962C(v14);
      v4 = v17;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4812DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_1C4404B14();
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = v29;
    v39 = MEMORY[0x1E69E7CC0];
    v32 = sub_1C43FED38();
    sub_1C459EB08(v32, v33, v34);
    v35 = v31 + 56;
    do
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C456902C(&qword_1EC0B8B10, &qword_1C4F0EF40);
      sub_1C456902C(&qword_1EC0B9278, &unk_1C4F0EDA0);
      swift_dynamicCast();
      v37 = *(v39 + 16);
      v36 = *(v39 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1C459EB08((v36 > 1), v37 + 1, 1);
      }

      *(v39 + 16) = v37 + 1;
      v38 = (v39 + 48 * v37);
      v38[3] = a15;
      v38[4] = a16;
      v38[2] = a14;
      v35 += 32;
      --v30;
    }

    while (v30);
  }

  sub_1C440576C();
}

uint64_t sub_1C4812F0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    sub_1C4405C20();
    sub_1C442EB40();
    sub_1C459EB28();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1C4813DCC(__dst, &v7);
      v11 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1C459EB28();
        v2 = v11;
      }

      v8 = &type metadata for PersonalKnowledgeResult;
      v9 = sub_1C4813E28();
      sub_1C442A404();
      *&v7 = swift_allocObject();
      memcpy((v7 + 16), __dst, 0xB0uLL);
      *(v2 + 16) = v5 + 1;
      sub_1C441D670(&v7, v2 + 40 * v5 + 32);
      v4 += 176;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C4813030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1C4404B14();
  a29 = v30;
  a30 = v32;
  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = v31;
    a18 = MEMORY[0x1E69E7CC0];
    sub_1C43FED38();
    sub_1C459DFC8();
    v35 = a18;
    v36 = v34 + 32;
    do
    {
      sub_1C442E860(v36, &a10);
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      sub_1C442F680();
      swift_dynamicCast();
      a18 = v35;
      v37 = *(v35 + 16);
      if (v37 >= *(v35 + 24) >> 1)
      {
        sub_1C459DFC8();
        v35 = a18;
      }

      *(v35 + 16) = v37 + 1;
      v38 = v35 + 40 * v37;
      v39 = a15;
      v40 = a16;
      *(v38 + 64) = a17;
      *(v38 + 32) = v39;
      *(v38 + 48) = v40;
      v36 += 40;
      --v33;
    }

    while (v33);
  }

  sub_1C440576C();
}

void sub_1C4813140()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459EC70();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EC0BDAE8, 0x1E6999048);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459EC70();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      MEMORY[0x1EEE9AC00](v6);
      v8 = sub_1C43FD7EC(v7, v17);
      v9(v8);
      v10 = sub_1C4433410();
      sub_1C4813D24(v10, v11, v12, v13, v14, v15);
      sub_1C440962C(&v17);
      sub_1C44160C0();
    }

    while (!v16);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C4813290()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459ECB0();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EC0BDAE0, 0x1E6999060);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459ECB0();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      MEMORY[0x1EEE9AC00](v6);
      v8 = sub_1C43FD7EC(v7, v17);
      v9(v8);
      v10 = sub_1C4433410();
      sub_1C4813D24(v10, v11, v12, v13, v14, v15);
      sub_1C440962C(&v17);
      sub_1C44160C0();
    }

    while (!v16);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C48133E0()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v0 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v0)
  {
LABEL_15:
    sub_1C44085C4();
    sub_1C43FE9F0();
    return;
  }

  sub_1C443506C();
  sub_1C459EEB0();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1C4410378();
    do
    {
      if (v1)
      {
        sub_1C444192C();
      }

      else
      {
        sub_1C442A93C();
      }

      v3 = sub_1C441B3D8();
      v4 = sub_1C4461BB8(v3, &qword_1EDDF0378, 0x1E69990C0);
      sub_1C442FDC0(v4);
      if (v5)
      {
        sub_1C441B964();
        sub_1C459EEB0();
      }

      else
      {
        sub_1C4430654();
      }

      sub_1C44345DC();
      sub_1C440F6F0();
      MEMORY[0x1EEE9AC00](v6);
      v8 = sub_1C43FD7EC(v7, v17);
      v9(v8);
      v10 = sub_1C4433410();
      sub_1C4813D24(v10, v11, v12, v13, v14, v15);
      sub_1C440962C(&v17);
      sub_1C44160C0();
    }

    while (!v16);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C4813530()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  type metadata accessor for EventTriple(v2);
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v4 = sub_1C44057DC();
      sub_1C4471874(v4, v5);
      sub_1C440D464();
      if (v6)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      sub_1C4441074();
      v8 = sub_1C445E5E8(&qword_1EDDFE2F0, v7, &protocol conformance descriptor for EventTriple);
      sub_1C4414204(v8);
      sub_1C4418AAC();
      sub_1C4471874(v0, v9);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v10);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t Fuser.source.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Fuser(0);
  sub_1C4408A90();
  return sub_1C4471874(v1 + v3, a1);
}

uint64_t Fuser.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Fuser(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1C4813710(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = *a3;
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && ((*(off_1EDDFF3D0 + 1))(), LOBYTE(v29) = v12, (v14 = (*(v13 + 32))(a1, a2, &v29)) != 0))
  {
    v15 = v14;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    sub_1C4471874(a1, v11);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 134218242;
      *(v19 + 4) = *(v15 + 16);

      *(v19 + 12) = 2080;
      sub_1C4485614(v11, v8);
      v21 = *v8;
      v22 = v8[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4485404(v8, type metadata accessor for Source);
      v23 = sub_1C441D828(v21, v22, &v29);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_1C43F8000, v17, v18, "InternalPlugin: Fuser: loadInternalSourceChildren: loaded %ld children for %s", v19, 0x16u);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    else
    {

      sub_1C4485404(v11, type metadata accessor for Source);
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDDFECB8);
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C43F8000, v25, v26, "InternalPlugin: Fuser: loadInternalSourceChildren: failed to load internal source children", v27, 2u);
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    return 0;
  }

  return v15;
}

uint64_t sub_1C4813B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return Fuser.execute()();
}

uint64_t sub_1C4813B9C(uint64_t a1)
{
  result = sub_1C445E5E8(&qword_1EC0BDAD0, type metadata accessor for Fuser, &protocol conformance descriptor for Fuser);
  *(a1 + 8) = result;
  return result;
}

void sub_1C4813C1C(uint64_t a1)
{
  type metadata accessor for PhaseStores(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Source(319);
    if (v2 <= 0x3F)
    {
      sub_1C4813CC0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4813CC0(uint64_t a1)
{
  if (!qword_1EDDF0688)
  {
    sub_1C4572308(&qword_1EC0B8CF0, &unk_1C4F30C40);
    v1 = sub_1C4F017A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDF0688);
    }
  }
}

uint64_t sub_1C4813D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  v11 = sub_1C4422F90(v14);
  (*(*(a4 - 8) + 32))(v11, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

unint64_t sub_1C4813E28()
{
  result = qword_1EC0BDAF0;
  if (!qword_1EC0BDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDAF0);
  }

  return result;
}

uint64_t sub_1C4813E7C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for Source(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v8 = type metadata accessor for PhaseStores(0);
  *(v3 + 72) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v9 = type metadata accessor for FutureLifeEventDeltaSourceIngestor(0);
  *(v3 + 96) = v9;
  sub_1C43FBD18(v9);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v10 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v10);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 145) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C481400C, 0, 0);
}

uint64_t sub_1C481400C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
  sub_1C4430C4C(v4, v1, type metadata accessor for Configuration);
  v5 = *(v4 + *(v3 + 24));
  type metadata accessor for FutureLifeEventProvider();
  swift_allocObject();

  v18 = sub_1C4814724(v1, v5, 0);
  sub_1C4419780();
  sub_1C4430C4C(v4, v2 + v6, v7);
  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 145);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v19 = *(v0 + 80);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 16);
  v15 = sub_1C442B738(*(v0 + 48), qword_1EDDFD2A8);
  *(v0 + 128) = v15;
  sub_1C4430C4C(v15, v8, type metadata accessor for Source);
  *(v8 + *(v10 + 20)) = 2;
  *(v8 + *(v10 + 28)) = v18;
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4430C4C(v14, v11, type metadata accessor for PhaseStores);
  sub_1C4430C4C(v15, v12, type metadata accessor for Source);
  sub_1C4430C4C(v8, v9, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
  sub_1C4430C4C(v15, v13, type metadata accessor for Source);
  sub_1C4430C4C(v14, v19, type metadata accessor for PhaseStores);
  *(v0 + 144) = v20;
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  v16[1] = sub_1C4814280;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4814280()
{

  return MEMORY[0x1EEE6DFA0](sub_1C481437C, 0, 0);
}

uint64_t sub_1C481437C()
{
  v1 = *(v0 + 145);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v24 = *(v0 + 88);
  v5 = *(v0 + 80);
  v23 = *(v0 + 64);
  v6 = *(v0 + 32);
  v25 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_1C4430C4C(*(v0 + 128), *(v0 + 56), type metadata accessor for Source);
  sub_1C4419780();
  sub_1C4430C4C(v8, v5, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C448545C(v8, type metadata accessor for PhaseStores);
  sub_1C448545C(v2, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
  v10 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C481466C();
  v11 = sub_1C4422F90(v10);
  sub_1C48146C4(v3, v11, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
  sub_1C441FAC0();
  sub_1C48146C4(v23, v12, v13);
  sub_1C441FAC0();
  sub_1C48146C4(v24, v14, v15);
  sub_1C441FAC0();
  sub_1C48146C4(v25, v16, v17);
  sub_1C441FAC0();
  sub_1C48146C4(v6, v18, v19);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = v1;

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);

  return v20(v21);
}

uint64_t type metadata accessor for FutureLifeEventPhase(uint64_t a1)
{
  result = qword_1EDDE4630;
  if (!qword_1EDDE4630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C481466C()
{
  result = qword_1EDDDD2C0;
  if (!qword_1EDDDD2C0)
  {
    type metadata accessor for FutureLifeEventDeltaSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDD2C0);
  }

  return result;
}

uint64_t sub_1C48146C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4814724(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (!a3)
  {
    a3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4815FA8(a1, type metadata accessor for Configuration);
  *(v3 + 16) = a3;
  return v3;
}

uint64_t sub_1C481478C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  sub_1C456902C(&qword_1EC0BDB38, &qword_1C4F30E08);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v2 + 16);
  v23 = a1;
  v12 = sub_1C49C2D4C(sub_1C4815E20, v22, v11);
  v27 = v3;
  v26[0] = v12;
  v26[1] = sub_1C4814C88;
  v26[2] = 0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C456902C(&qword_1EC0BDB40, &unk_1C4F30E20);
  sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  sub_1C4401CBC(qword_1EDDF3168, &qword_1EC0BDB40, &unk_1C4F30E20, &protocol conformance descriptor for OrderedMergeAsyncSequence<A>);
  sub_1C4F02848();
  sub_1C4815EE4(v10, v7);
  sub_1C456902C(&qword_1EC0BDB48, &unk_1C4F30E30);
  if (swift_dynamicCast())
  {
    sub_1C441D670(&v24, v26);
    sub_1C442E860(v26, &v24);
    v13 = sub_1C4409678(&v24, v25);
    MEMORY[0x1EEE9AC00](v13);
    sub_1C43FBCC4();
    (*(v16 + 16))(v15 - v14);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v18 = v21;
    v21[3] = AssociatedTypeWitness;
    v18[4] = swift_getAssociatedConformanceWitness();
    sub_1C4422F90(v18);
    sub_1C4F019A8();

    sub_1C440962C(v26);
    sub_1C4420C3C(v10, &qword_1EC0BDB38, &qword_1C4F30E08);
    return sub_1C440962C(&v24);
  }

  else
  {
    sub_1C4815F54();
    swift_allocError();
    swift_willThrow();

    return sub_1C4420C3C(v10, &qword_1EC0BDB38, &qword_1C4F30E08);
  }
}

void sub_1C4814B0C(void *a1@<X0>, void *a3@<X8>)
{
  sub_1C4409678(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  sub_1C4AFCE44();
  if (v3)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    AsyncSequence.toAnySessionAsyncSequence()(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), &v10);
    *a3 = v10;
    (*(v6 + 8))(v8, AssociatedTypeWitness);
  }
}

uint64_t sub_1C4814C88(void *a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1C4409678(a1, v11);
  (*(v12 + 16))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  sub_1C4409678(a2, v13);
  (*(v14 + 16))(v13, v14);
  LOBYTE(a1) = sub_1C4EF9C18();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_1C4814E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4814E2C, 0, 0);
}

uint64_t sub_1C4814E2C()
{
  sub_1C43FBCD4();
  sub_1C4814E84(*(v0 + 24), *(v0 + 16));
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4814E84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v63 = type metadata accessor for FutureActivityEventWithLocations(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v65 = (v5 - v4);
  v62 = type metadata accessor for ActivityEventContent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v64 = v8 - v7;
  v9 = sub_1C456902C(&qword_1EC0BDB30, &unk_1C4F30DF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for CommuteInference(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = a1[3];
  v20 = a1[4];
  sub_1C4409678(a1, v19);
  v21 = *(v20 + 32);
  v68[3] = swift_getAssociatedTypeWitness();
  sub_1C4422F90(v68);
  v21(v19, v20);
  sub_1C442B870(v68, v67);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  sub_1C4406F30();
  sub_1C4815FA8(v18, v22);
  sub_1C442B870(v68, v67);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C440BAA8(v11, 1, 1, v12);
    sub_1C4420C3C(v11, &qword_1EC0BDB30, &unk_1C4F30DF8);
LABEL_7:
    v55 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
    v53 = v66;
    v54 = 1;
    goto LABEL_8;
  }

  sub_1C440BAA8(v11, 0, 1, v12);
  sub_1C4815DC0(v11, v15, type metadata accessor for CommuteInference);
  v23 = *v15;
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v24 = sub_1C4EFF0C8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C4F0CE60;
  v61 = v28;
  v29 = v28 + v27;
  v30 = *(v25 + 16);
  v30(v29, v15 + v12[5], v24);
  v30(v29 + v26, v15 + v12[6], v24);
  v31 = (v15 + v12[7]);
  v32 = *v31;
  v33 = v31[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4406F30();
  sub_1C4815FA8(v15, v34);
  if (qword_1EDDE9268 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for SourceIdPrefix(0);
  v60 = sub_1C442B738(v35, qword_1EDE2CF78);
  v36 = *(v62 + 8);
  v62 = type metadata accessor for SourceIdPrefix;
  v37 = v64;
  sub_1C44EE4B4(v60, v64 + v36, type metadata accessor for SourceIdPrefix);
  memset(v67, 0, sizeof(v67));
  *(v37 + 40) = 0u;
  *(v37 + 24) = 0u;
  *v37 = -102;
  *(v37 + 8) = v23;
  *(v37 + 16) = 0;
  sub_1C4815D50(v67, v37 + 24);
  *(v37 + 56) = MEMORY[0x1E69E7CC0];
  *&v67[0] = v32;
  *(&v67[0] + 1) = v33;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x6E6974756D6D6F63, 0xE900000000000067);

  v58 = *(&v67[0] + 1);
  v59 = *&v67[0];
  sub_1C4400434();
  v38 = v63;
  v39 = v65 + *(v63 + 24);
  v40 = sub_1C4402B58();
  v41(v40);
  sub_1C4400434();
  v42 = *(v23 + 24);
  v43 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  v44 = sub_1C4402B58();
  v42(v44);
  sub_1C44EE4B4(v37, &v39[*(v43 + 32)], type metadata accessor for ActivityEventContent);
  v45 = v65;
  sub_1C44EE4B4(v60, v65 + *(v38 + 28), v62);
  v46 = v58;
  *v45 = v59;
  v45[1] = v46;
  v45[2] = v61;
  sub_1C4400434();
  v47 = v66;
  v48 = sub_1C4402B58();
  v49(v48);
  sub_1C4400434();
  v50 = *(v23 + 24);
  v51 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  v52 = sub_1C4402B58();
  v50(v52);
  sub_1C4815FA8(v37, type metadata accessor for ActivityEventContent);
  sub_1C4815DC0(v45, v47 + *(v51 + 32), type metadata accessor for FutureActivityEventWithLocations);
  v53 = v47;
  v54 = 0;
  v55 = v51;
LABEL_8:
  sub_1C440BAA8(v53, v54, 1, v55);
  return sub_1C440962C(v68);
}

unint64_t sub_1C48154D8()
{
  result = qword_1EC0BDB10;
  if (!qword_1EC0BDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB10);
  }

  return result;
}

unint64_t sub_1C4815550(uint64_t a1)
{
  result = sub_1C4815578();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4815578()
{
  result = qword_1EC0BDB20;
  if (!qword_1EC0BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB20);
  }

  return result;
}

unint64_t sub_1C48155D0()
{
  result = qword_1EC0BDB28;
  if (!qword_1EC0BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB28);
  }

  return result;
}

uint64_t sub_1C4815630(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4815650, 0, 0);
}

uint64_t sub_1C4815650()
{
  sub_1C43FCF70();
  sub_1C4418280(v0[7], *(v0[7] + 24));
  v0[8] = swift_getAssociatedTypeWitness();
  v1 = sub_1C4F01F48();
  v0[9] = v1;
  v0[10] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1C4815790;

  return MEMORY[0x1EEE6D8C8](v2);
}

uint64_t sub_1C4815790()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_1C48159F0;
  }

  else
  {
    v5 = sub_1C4815894;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4815894()
{
  sub_1C43FCF70();
  v1 = v0[11];
  v2 = v0[8];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    (*(v0[10] + 8))(v1, v0[9]);

    v4 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
    v5 = v3;
    v6 = 1;
  }

  else
  {
    v7 = v0[6];
    v0[5] = v2;
    v8 = sub_1C4422F90(v0 + 2);
    (*(*(v2 - 8) + 32))(v8, v1, v2);

    v9 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
    v6 = swift_dynamicCast() ^ 1;
    v5 = v7;
    v4 = v9;
  }

  sub_1C440BAA8(v5, v6, 1, v4);
  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C48159F0()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4815A4C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4815624(a1);

  return sub_1C4815CE8(v1);
}

uint64_t sub_1C4815A78()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C442E8C4;

  return sub_1C4815630(v2);
}

uint64_t sub_1C4815B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C4815BD8;

  return (sub_1C4981D60)(a1, a2, a3);
}

uint64_t sub_1C4815BD8()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1C4815D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4815DC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4815E3C()
{
  sub_1C43FCF70();
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C442E8C4;

  return sub_1C4814E08(v5, v3, v0);
}

uint64_t sub_1C4815EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDB38, &qword_1C4F30E08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4815F54()
{
  result = qword_1EC0BDB50;
  if (!qword_1EC0BDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB50);
  }

  return result;
}

uint64_t sub_1C4815FA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FutureLifeEventProvider.FutureLifeEventProviderError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C48160BC(uint64_t a1)
{
  result = sub_1C48155D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C48160E8()
{
  result = qword_1EC0BDB58;
  if (!qword_1EC0BDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB58);
  }

  return result;
}

uint64_t type metadata accessor for FutureLifeEventDeltaSourceIngestor(uint64_t a1)
{
  result = qword_1EDDDD2A0;
  if (!qword_1EDDDD2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C48161B4(uint64_t a1)
{
  result = type metadata accessor for Source(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FutureLifeEventProvider();
      if (v4 <= 0x3F)
      {
        result = sub_1C4EFD548();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4816270()
{
  sub_1C43FBCD4();
  v1[27] = v0;
  v2 = sub_1C4F00978();
  v1[28] = v2;
  sub_1C43FCF7C(v2);
  v1[29] = v3;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BDB60, &unk_1C4F31028);
  v1[33] = sub_1C43FBE7C();
  v4 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  v1[34] = v4;
  sub_1C43FCF7C(v4);
  v1[35] = v5;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BDB68, &unk_1C4F31038);
  v1[39] = sub_1C43FBE7C();
  v6 = sub_1C4EF9CD8();
  v1[40] = v6;
  sub_1C43FCF7C(v6);
  v1[41] = v7;
  v1[42] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C4816460, 0, 0);
}

uint64_t sub_1C4816460(uint64_t a1)
{
  v1[22] = 0;
  v1[23] = 0;
  v3 = v1[41];
  v2 = v1[42];
  v5 = v1[39];
  v4 = v1[40];
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v1[43] = v6;
  (*(v3 + 8))(v2, v4);
  v1[44] = type metadata accessor for FutureLifeEventDeltaSourceIngestor(0);
  v7 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C440BAA8(v5, 1, 1, v7);
  sub_1C481478C(v5, v1 + 2);
  sub_1C4420C3C(v1[39], &qword_1EC0BDB68, &unk_1C4F31038);
  sub_1C4815D18((v1 + 2), (v1 + 7));
  v1[45] = MEMORY[0x1E69E7CC0];
  sub_1C4418280((v1 + 7), v1[10]);
  v1[46] = swift_getAssociatedTypeWitness();
  v8 = sub_1C4F01F48();
  v1[47] = v8;
  sub_1C43FCF7C(v8);
  v1[48] = v9;
  v1[49] = sub_1C43FBE7C();
  v10 = swift_task_alloc();
  v1[50] = v10;
  *v10 = v1;
  v11 = sub_1C4419798(v10);

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1C4816850()
{
  sub_1C43FBCD4();
  *(*v1 + 408) = v0;

  if (v0)
  {

    v2 = sub_1C4817200;
  }

  else
  {
    v2 = sub_1C4816968;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C4816968()
{
  v65 = v0;
  v1 = v0[49];
  v2 = v0[46];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v4 = v0[33];
    v3 = v0[34];
    (*(v0[48] + 8))(v1, v0[47]);

    v5 = v4;
    v6 = 1;
    v7 = v3;
  }

  else
  {
    v9 = v0[33];
    v8 = v0[34];
    v0[15] = v2;
    v10 = sub_1C4422F90(v0 + 12);
    (*(*(v2 - 8) + 32))(v10, v1, v2);

    v6 = swift_dynamicCast() ^ 1;
    v5 = v9;
    v7 = v8;
  }

  sub_1C440BAA8(v5, v6, 1, v7);
  v11 = v0[33];
  if (sub_1C44157D4(v11, 1, v0[34]) == 1)
  {
    v12 = v0[51];
    sub_1C4815CE8((v0 + 2));
    sub_1C4815CE8((v0 + 7));
    sub_1C4420C3C(v11, &qword_1EC0BDB60, &unk_1C4F31028);
    v13 = sub_1C48176EC(100);
    if (v12)
    {
      sub_1C4F00198();
      v14 = v12;
      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CD8();

      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[29];
      v19 = v0[30];
      v20 = v0[28];
      if (v17)
      {
        v62 = v0[30];
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v64[0] = v22;
        *v21 = 136315138;
        v0[26] = v12;
        v23 = v12;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v24 = sub_1C4F01198();
        v26 = sub_1C441D828(v24, v25, v64);

        *(v21 + 4) = v26;
        sub_1C4403218(&dword_1C43F8000, v27, v28, "Error getting future life events due to: %s");
        sub_1C440962C(v22);
        sub_1C43FBE2C();
        sub_1C43FBE2C();

        (*(v18 + 8))(v62, v20);
      }

      else
      {

        (*(v18 + 8))(v19, v20);
      }
    }

    else
    {
      v40 = *(v13 + 16);
      v0[22] = v40;
      sub_1C49CCBC0(v13);

      v0[23] = v40;
      sub_1C4F00198();
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CC8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 134218240;
        *(v43 + 4) = v40;
        *(v43 + 12) = 2048;
        *(v43 + 14) = v40;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Need to delete %ld, deleted %ld future life events", v43, 0x16u);
        sub_1C43FBE2C();
      }

      v44 = v0[32];
      v45 = v0[28];
      v46 = v0[29];

      (*(v46 + 8))(v44, v45);
    }

    v47 = v0[44];
    v48 = v0[45];
    v49 = v0[27];
    swift_beginAccess();
    v0[22] = 0;
    swift_beginAccess();
    v0[23] = 0;
    v50 = v49 + *(v47 + 24);
    v61 = *(v50 + *(type metadata accessor for PhaseStores(0) + 24));
    v63 = sub_1C4817AA8(v61);
    v51 = 0;
    v52 = 0;
    v53 = v48;
    v54 = *(v48 + 16);
    while (v54 != v51)
    {
      if (v51 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_1C48188E4(v0[45] + ((*(v0[35] + 80) + 32) & ~*(v0[35] + 80)) + *(v0[35] + 72) * v51, v0[36]);
      sub_1C4ACF19C();
      v0[22] = v51 + 1;
      LOBYTE(v64[0]) = 2;
      sub_1C4B04B28(v64, v63);
      v55 = v0[36];
      sub_1C4B46D4C();

      v39 = sub_1C4420C3C(v55, &qword_1EC0B8D48, &qword_1C4F0E190);
      if (__OFADD__(v52++, 1))
      {
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v39);
      }

      ++v51;
      v0[23] = v52;
    }

    sub_1C464927C();
    sub_1C4400450();

    sub_1C43FC1B0();

    return v57();
  }

  else
  {
    v30 = v0[37];
    v29 = v0[38];
    sub_1C4818954(v11, v29);
    sub_1C48188E4(v29, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v0[45];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_27:
      sub_1C458C854();
      v32 = v59;
    }

    v33 = *(v32 + 16);
    if (v33 >= *(v32 + 24) >> 1)
    {
      sub_1C458C854();
      v32 = v60;
    }

    v34 = v0[37];
    v35 = v0[35];
    sub_1C4420C3C(v0[38], &qword_1EC0B8D48, &qword_1C4F0E190);
    *(v32 + 16) = v33 + 1;
    sub_1C4818954(v34, v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33);
    v0[45] = v32;
    sub_1C4418280((v0 + 7), v0[10]);
    v0[46] = swift_getAssociatedTypeWitness();
    v36 = sub_1C4F01F48();
    v0[47] = v36;
    sub_1C43FCF7C(v36);
    v0[48] = v37;
    v0[49] = sub_1C43FBE7C();
    v38 = swift_task_alloc();
    v0[50] = v38;
    *v38 = v0;
    v39 = sub_1C4419798(v38);

    return MEMORY[0x1EEE6D8C8](v39);
  }
}

uint64_t sub_1C4817200()
{
  v22 = v0;

  sub_1C4815CE8((v0 + 7));
  sub_1C4815CE8((v0 + 2));
  v1 = v0[51];
  sub_1C4F00198();
  v2 = v1;
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CD8();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v0[31];
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v0[24] = v1;
    v9 = v1;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v10 = sub_1C4F01198();
    v12 = sub_1C441D828(v10, v11, &v21);

    *(v7 + 4) = v12;
    sub_1C4403218(&dword_1C43F8000, v13, v14, "Error getting delta future life events due to: %s");
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    (*(v5 + 8))(v20, v6);
  }

  else
  {
    v15 = v0[31];
    v16 = v0[28];
    v17 = v0[29];

    (*(v17 + 8))(v15, v16);
  }

  sub_1C4400450();

  sub_1C43FC1B0();

  return v18();
}

uint64_t sub_1C4817420(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FutureLifeEventDeltaSourceIngestor(0);
  sub_1C449EE88(a1 + *(v10 + 24), v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C449F1D4(v9, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v13 = *a3;
  swift_beginAccess();
  result = v13 - *a2;
  if (__OFSUB__(v13, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C48176EC(uint64_t a1)
{
  v3 = sub_1C4EFD548();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C467C860();
  if (v38)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v35[1] = v1;
  v8 = v37;
  sub_1C4EFCF18();
  v39 = sub_1C4EFD2F8();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v11 = swift_allocObject();
  v36 = xmmword_1C4F0D130;
  *(v11 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDFED40 != -1)
  {
LABEL_25:
    swift_once();
  }

  v12 = type metadata accessor for Source(0);
  v13 = sub_1C442B738(v12, qword_1EDDFD2A8);
  v15 = *v13;
  v14 = v13[1];
  *(v11 + 32) = v15;
  *(v11 + 40) = v14;
  v37 = MEMORY[0x1E69E7CD0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v17 = v16;
  type metadata accessor for FutureLifeEventDeltaSourceIngestor(0);
  type metadata accessor for PhaseStores(0);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1C456902C(&qword_1EC0BDB70, qword_1C4F31048);
    inited = swift_initStackObject();
    *(inited + 16) = v36;
    *(inited + 32) = v39;
    *(inited + 40) = v10;
    *(inited + 48) = 1;
    *(inited + 56) = 0;
    *(inited + 64) = v11;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4D522D0(&unk_1F43D6E88);
    v20 = sub_1C48770F0(inited, v19, a1, &v37, v8, v17);
    v8 = v21;
    v22 = v20;

    swift_setDeallocating();
    sub_1C49E1700();
    v23 = *(v22 + 16);
    v24 = *(v7 + 16);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 > *(v7 + 24) >> 1)
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      sub_1C44D45E4(isUniquelyReferenced_nonNull_native, v27, 1, v7);
      v7 = v28;
    }

    if (*(v22 + 16))
    {
      v29 = (*(v7 + 24) >> 1) - *(v7 + 16);
      sub_1C4EFF0C8();
      if (v29 < v23)
      {
        goto LABEL_23;
      }

      swift_arrayInitWithCopy();

      if (v23)
      {
        v30 = *(v7 + 16);
        v31 = __OFADD__(v30, v23);
        v32 = v30 + v23;
        if (v31)
        {
          goto LABEL_24;
        }

        *(v7 + 16) = v32;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_22;
      }
    }

    v33 = *(v22 + 16);
  }

  while (v33 >= a1);

  swift_bridgeObjectRelease_n();

  return v7;
}

uint64_t sub_1C4817AA8(uint64_t a1)
{
  v2 = type metadata accessor for GraphTriple(0);
  v82 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4EFF0C8();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v78 = &v63 - v7;
  v8 = sub_1C4EFDE88();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v63 - v17;
  v18 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v63 - v19;
  v21 = sub_1C4EFD548();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C4EFDE98();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFDCC8();
  (*(v22 + 8))(v24, v21);
  v29 = sub_1C4EFF8F8();
  sub_1C440BAA8(v20, 1, 1, v29);
  v30 = sub_1C498DB80();
  sub_1C4420C3C(v20, &qword_1EC0BAA00, &unk_1C4F17400);
  v31 = *(v26 + 8);
  v69 = v28;
  v70 = v26 + 8;
  v71 = v25;
  v68 = v31;
  v31(v28, v25);
  v32 = *(v30 + 16);
  v79 = a1;
  if (v32)
  {
    v83 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v33 = v83;
    v34 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v63 = v30;
    v35 = v30 + v34;
    v36 = *(v82 + 72);
    v38 = v64;
    v37 = v65;
    v39 = (v64 + 16);
    v81 = v64 + 32;
    v82 = v36;
    v41 = v66;
    v40 = v67;
    do
    {
      sub_1C449EE88(v35, v40, type metadata accessor for GraphTriple);
      (*v39)(v41, v40, v37);
      sub_1C449F1D4(v40, type metadata accessor for GraphTriple);
      v83 = v33;
      v42 = *(v33 + 16);
      if (v42 >= *(v33 + 24) >> 1)
      {
        sub_1C459D178();
        v40 = v67;
        v33 = v83;
      }

      *(v33 + 16) = v42 + 1;
      (*(v38 + 32))(v33 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v42, v41, v37);
      v35 += v82;
      --v32;
    }

    while (v32);
  }

  v83 = MEMORY[0x1E69E7CC8];
  sub_1C45972E0();
  v82 = v43;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE558();
  sub_1C4D504A4();
  v45 = v44;
  v46 = *MEMORY[0x1E69A95C0];
  v48 = v76;
  v47 = v77;
  v49 = *(v76 + 104);
  v49(v80, v46, v77);
  v50 = v72;
  v49(v72, v46, v47);
  v51 = v73;
  v49(v73, v46, v47);
  v52 = v74;
  v49(v74, v46, v47);
  v53 = v75;
  v49(v75, v46, v47);
  v61 = v53;
  v62 = v45;
  v54 = v69;
  v55 = v80;
  sub_1C4EFDCD8();

  v56 = *(v48 + 8);
  v56(v53, v47);
  v56(v52, v47);
  v56(v51, v47);
  v56(v50, v47);
  v56(v55, v47);
  v57 = sub_1C4EFD678();
  v58 = v78;
  v59 = sub_1C440BAA8(v78, 1, 1, v57);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C48687D0(v54, v58, sub_1C48189C4, (&v63 - 4));
  sub_1C4420C3C(v58, &unk_1EC0C07E0, &unk_1C4F168F0);
  v68(v54, v71);
  return v83;
}

uint64_t sub_1C481830C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFF0C8();
  v25[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EF9D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  v25[1] = a2;
  v20 = *a2;
  if (*(v20 + 16) && (sub_1C44E3664(), (v22 & 1) != 0))
  {
    (*(v8 + 16))(v19, *(v20 + 56) + *(v8 + 72) * v21, v7);
    sub_1C440BAA8(v19, 0, 1, v7);
    v23 = v19;
  }

  else
  {
    sub_1C440BAA8(v19, 1, 1, v7);
    sub_1C4420C3C(v19, &qword_1EC0B9DC8, &unk_1C4F124A0);
    type metadata accessor for GraphTriple(0);
    sub_1C4EF9CE8();
    if (sub_1C44157D4(v16, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v16, v7);
      (*(v25[0] + 16))(v6, a1, v4);
      (*(v8 + 16))(v13, v10, v7);
      sub_1C440BAA8(v13, 0, 1, v7);
      sub_1C4C80CE8();
      (*(v8 + 8))(v10, v7);
      return 1;
    }

    v23 = v16;
  }

  sub_1C4420C3C(v23, &qword_1EC0B9DC8, &unk_1C4F124A0);
  return 1;
}

uint64_t sub_1C4818660()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C480BB30;

  return sub_1C4816270();
}

uint64_t sub_1C48186E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1C48187D4(uint64_t a1)
{
  result = sub_1C48188A0(qword_1EDDDD2C8, &unk_1C4F30F94);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4818818(uint64_t a1)
{
  result = sub_1C48188A0(&qword_1EDDDD2B0, &unk_1C4F30FBC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C481885C(uint64_t a1)
{
  result = sub_1C48188A0(&qword_1EDDDD2B8, &unk_1C4F30FD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48188A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FutureLifeEventDeltaSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C48188E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4818954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C48189CC(uint64_t a1)
{
  sub_1C443E52C(a1, v6);
  if (!v7)
  {
    return sub_1C4448244(v6);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = sub_1C4818A70(v4, v5);

    if (!v1)
    {
      return sub_1C4DDF8C4(v3);
    }
  }

  return result;
}

uint64_t type metadata accessor for GamingActivityEvent(uint64_t a1)
{
  result = qword_1EDDE5130;
  if (!qword_1EDDE5130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4818C28(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1C4818CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = sub_1C4F02938();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_1C4818CF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4818DC8(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1C4818E04(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_1C456902C(&qword_1EC0BDBA0, &qword_1C4F311B8);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13[-v10];
  sub_1C4409678(a1, a1[3]);
  sub_1C4819B80();
  sub_1C4F02BF8();
  v13[15] = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v13[14] = 1;
    sub_1C4F027B8();
  }

  return (*(v8 + 8))(v11, v6);
}

double sub_1C4818F74(void *a1)
{
  sub_1C456902C(&qword_1EC0BDB78, &qword_1C4F311A8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4409678(a1, a1[3]);
  sub_1C4819B80();
  sub_1C4F02BC8();
  if (!v1)
  {
    sub_1C4F02678();
    v2 = sub_1C4F02698();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v2;
}

uint64_t sub_1C4819130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4818CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4819158(uint64_t a1)
{
  v2 = sub_1C4819B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4819194(uint64_t a1)
{
  v2 = sub_1C4819B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C48191EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1C4818F74(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

BOOL sub_1C481923C(uint64_t a1, uint64_t a2)
{
  if (sub_1C4EF9C68() & 1) != 0 && (v4 = type metadata accessor for GamingActivityEvent(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && ((v6 = *(v4 + 24), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = *(a1 + v6 + 16), v10 = a2 + v6, v11 = *(v10 + 16), v7 == *v10) ? (v12 = v8 == *(v10 + 8)) : (v12 = 0), v12 || (sub_1C4F02938()))
  {
    return v9 == v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C48192D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974726174537369 && a2 == 0xEA0000000000676ELL;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C48193F0(char a1)
{
  if (!a1)
  {
    return 0x6D617473656D6974;
  }

  if (a1 == 1)
  {
    return 0x6974726174537369;
  }

  return 0x746E65746E6F63;
}

uint64_t sub_1C4819450(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BDB88, &qword_1C4F311B0);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4819BD4();
  sub_1C4F02BF8();
  LOBYTE(v17) = 0;
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80, MEMORY[0x1E6969538]);
  sub_1C4F027E8();
  if (!v2)
  {
    v11 = type metadata accessor for GamingActivityEvent(0);
    LOBYTE(v17) = 1;
    sub_1C4F027A8();
    v12 = (v3 + *(v11 + 24));
    v13 = v12[1];
    v14 = v12[2];
    v17 = *v12;
    v18 = v13;
    v19 = v14;
    v16[7] = 2;
    sub_1C4819C28();
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4819638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v23 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0BDBA8, &unk_1C4F311C0);
  sub_1C43FCDF8();
  v24 = v9;
  v25 = v8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for GamingActivityEvent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678(a1, a1[3]);
  sub_1C4819BD4();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v15 = v23;
  LOBYTE(v27) = 0;
  sub_1C4498DE4(&unk_1EDDFCD60, MEMORY[0x1E6969558]);
  sub_1C4F026C8();
  (*(v15 + 32))(v14, v26, v4);
  LOBYTE(v27) = 1;
  v14[*(v11 + 20)] = sub_1C4F02688() & 1;
  v30 = 2;
  sub_1C4819C7C();
  sub_1C4F026C8();
  v16 = sub_1C4400480();
  v17(v16);
  v18 = v28;
  v19 = v29;
  v20 = &v14[*(v11 + 24)];
  *v20 = v27;
  *(v20 + 1) = v18;
  *(v20 + 2) = v19;
  sub_1C4819CD0(v14, v22);
  sub_1C440962C(a1);
  return sub_1C4819D34(v14);
}

uint64_t sub_1C4819978@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v12 + 32))(a5, a1);
  result = type metadata accessor for GamingActivityEvent(0);
  *(a5 + *(result + 20)) = a2;
  v14 = a5 + *(result + 24);
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = a6;
  return result;
}

uint64_t sub_1C4819A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C48192D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4819A48(uint64_t a1)
{
  v2 = sub_1C4819BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4819A84(uint64_t a1)
{
  v2 = sub_1C4819BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4819AC0@<X0>(uint64_t a1@<X8>)
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t sub_1C4819B20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4819B80()
{
  result = qword_1EC0BDB80;
  if (!qword_1EC0BDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB80);
  }

  return result;
}

unint64_t sub_1C4819BD4()
{
  result = qword_1EC0BDB90;
  if (!qword_1EC0BDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB90);
  }

  return result;
}

unint64_t sub_1C4819C28()
{
  result = qword_1EC0BDB98;
  if (!qword_1EC0BDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDB98);
  }

  return result;
}

unint64_t sub_1C4819C7C()
{
  result = qword_1EC0BDBB0;
  if (!qword_1EC0BDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBB0);
  }

  return result;
}

uint64_t sub_1C4819CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamingActivityEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4819D34(uint64_t a1)
{
  v2 = type metadata accessor for GamingActivityEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C4819D90(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v28 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C456902C(&qword_1EC0BDBB8, &unk_1C4F311D0);
  sub_1C43FCDF8();
  v26 = v7;
  v27 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v19 = *(v18 + 16);
  v19(v16, a1, v17);
  sub_1C440BAA8(v16, 0, 1, v17);
  v20 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v19(v13, a1 + *(v20 + 36), v17);
  sub_1C440BAA8(v13, 0, 1, v17);
  v21 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v22 = sub_1C457A86C(v16, v13, 0, 0, 0);
  v23 = [a2 publisherWithOptions_];

  v24 = v23;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v25 = v30;
  sub_1C4EFFC38();
  if (v25)
  {
  }

  else
  {
    type metadata accessor for GamingActivityEvent(0);
    sub_1C481A478();
    sub_1C4F02848();

    (*(v26 + 32))(v29, v10, v27);
  }
}

uint64_t sub_1C481A090(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0);
  v2[3] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *a2;
  v2[4] = v4;
  v2[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C481A140, 0, 0);
}

uint64_t sub_1C481A140()
{
  v1 = [*(v0 + 40) eventBody];
  if (!v1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDDFECB8);
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CF8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C43F8000, v23, v24, "Unable to parse eventBody from read event in gaming activity model", v25, 2u);
      MEMORY[0x1C6942830](v25, -1, -1);
    }

    v26 = *(v0 + 16);

    v27 = type metadata accessor for GamingActivityEvent(0);
    v28 = v26;
    v29 = 1;
    v30 = 1;
    goto LABEL_15;
  }

  v2 = v1;
  v3 = type metadata accessor for GamingActivityEvent(0);
  v4 = sub_1C440AB8C();
  sub_1C440BAA8(v4, v5, v6, v7);
  v8 = sub_1C4632064(v2);
  if (!v9)
  {
    sub_1C481A4DC(*(v0 + 32));

    v28 = sub_1C440AB8C();
LABEL_15:
    sub_1C440BAA8(v28, v29, v30, v27);
    goto LABEL_19;
  }

  v10 = v8;
  v11 = v9;
  v12 = objc_opt_self();
  v13 = sub_1C4F01108();
  v14 = [v12 categoryForBundleId_];

  v15 = [v14 identifier];
  v16 = sub_1C4F01138();
  v18 = v17;
  if (v16 == sub_1C4F01138() && v18 == v19)
  {

    goto LABEL_17;
  }

  v21 = sub_1C4F02938();

  if (v21)
  {
LABEL_17:
    v31 = *(v0 + 32);
    v32 = *(v0 + 24);
    [*(v0 + 40) timestamp];
    sub_1C4EF9AC8();
    v33 = [v2 starting];

    sub_1C481A4DC(v31);
    *(v32 + *(v3 + 20)) = v33;
    v34 = (v32 + *(v3 + 24));
    *v34 = v10;
    v34[1] = v11;
    v34[2] = 0x3FF0000000000000;
    sub_1C440BAA8(v32, 0, 1, v3);
    sub_1C481A544(v32, v31);
    goto LABEL_18;
  }

LABEL_18:
  sub_1C481A544(*(v0 + 32), *(v0 + 16));
LABEL_19:

  v35 = *(v0 + 8);

  return v35();
}

unint64_t sub_1C481A478()
{
  result = qword_1EDDEFF30;
  if (!qword_1EDDEFF30)
  {
    sub_1C4572308(&qword_1EC0B8600, &unk_1C4F0D4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFF30);
  }

  return result;
}

uint64_t sub_1C481A4DC(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C481A544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for GamingActivityEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for GamingActivityContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C481A770()
{
  result = qword_1EC0BDBC8;
  if (!qword_1EC0BDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBC8);
  }

  return result;
}

unint64_t sub_1C481A7C8()
{
  result = qword_1EC0BDBD0;
  if (!qword_1EC0BDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBD0);
  }

  return result;
}

unint64_t sub_1C481A820()
{
  result = qword_1EC0BDBD8;
  if (!qword_1EC0BDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBD8);
  }

  return result;
}

unint64_t sub_1C481A878()
{
  result = qword_1EC0BDBE0;
  if (!qword_1EC0BDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBE0);
  }

  return result;
}

unint64_t sub_1C481A8D0()
{
  result = qword_1EC0BDBE8;
  if (!qword_1EC0BDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBE8);
  }

  return result;
}

unint64_t sub_1C481A928()
{
  result = qword_1EC0BDBF0;
  if (!qword_1EC0BDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDBF0);
  }

  return result;
}

void sub_1C481A97C(char *a1)
{
  v98 = a1;
  v88 = type metadata accessor for VirtualInteraction(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v85 - v6;
  v7 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - v11;
  v92 = type metadata accessor for VirtualInteractionContact(0);
  v13 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v15 = (&v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1C456902C(&qword_1EC0BDC00, &qword_1C4F31410);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v85 - v20;
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v93 = v1;
  v94 = &v85 - v23;
  v24 = [v1 recipients];
  sub_1C481B61C();
  v25 = sub_1C4F01678();

  v26 = sub_1C4428DA0(v25);
  v89 = v4;
  v90 = v12;
  v86 = v18;
  v87 = v9;
  if (v26)
  {
    v27 = v26;
    v101 = MEMORY[0x1E69E7CC0];
    sub_1C459D608();
    if ((v27 & 0x8000000000000000) == 0)
    {
      v28 = 0;
      v29 = v101;
      v96 = v25;
      v97 = v25 & 0xC000000000000001;
      v95 = v25 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v30 = v27;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v97)
        {
          v32 = MEMORY[0x1C6940F90](v28, v25);
        }

        else
        {
          if (v28 >= *(v95 + 16))
          {
            goto LABEL_28;
          }

          v32 = *(v25 + 8 * v28 + 32);
        }

        v33 = v32;
        v100 = v32;
        sub_1C481B21C(&v100, v98, v15);

        v101 = v29;
        v35 = *(v29 + 16);
        if (v35 >= *(v29 + 24) >> 1)
        {
          sub_1C459D608();
          v29 = v101;
        }

        *(v29 + 16) = v35 + 1;
        sub_1C481B660(v15, v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35, v34);
        ++v28;
        v36 = v31 == v30;
        v27 = v30;
        v25 = v96;
        if (v36)
        {

          v12 = v90;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v37 = v93;
    v38 = [v93 sender];
    if (!v38 || (v39 = v38, v40 = [v38 handle], v39, sub_1C4F01138(), v40, v41 = String.normalizedContactHandle()(), countAndFlagsBits = v41.value._countAndFlagsBits, object = v41.value._object, , !v41.value._object))
    {

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    v44 = v94;
    sub_1C465C894(countAndFlagsBits, object, v98);

    sub_1C440BAA8(v12, 1, 1, v92);
    v45 = [v37 sender];
    v46 = v12;
    if (v45)
    {
      v47 = v45;
      v48 = sub_1C481B784(v45);
      v97 = v49;
      v98 = v48;
      v50 = [v47 handle];
      v51 = sub_1C4F01138();
      v53 = v52;

      v54 = [v47 contactType];
      v55 = v85;
      sub_1C4460050(v44, v85, &qword_1EC0BDC00, &qword_1C4F31410);
      v56 = v44;
      v57 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
      if (sub_1C44157D4(v55, 1, v57) == 1)
      {
        sub_1C4420C3C(v55, &qword_1EC0BDC00, &qword_1C4F31410);
        v58 = sub_1C4EFF0C8();
        v59 = v91;
        v60 = 1;
      }

      else
      {
        v61 = sub_1C4EFF0C8();
        sub_1C43FBCE0();
        v63 = v91;
        (*(v62 + 32))(v91, v55, v61);
        v59 = v63;
        v60 = 0;
        v58 = v61;
      }

      sub_1C440BAA8(v59, v60, 1, v58);
      v64 = v86;
      sub_1C4460050(v56, v86, &qword_1EC0BDC00, &qword_1C4F31410);
      if (sub_1C44157D4(v64, 1, v57) == 1)
      {
        sub_1C4420C3C(v64, &qword_1EC0BDC00, &qword_1C4F31410);
        v65 = 2;
      }

      else
      {
        v65 = *(v64 + *(v57 + 48));
        sub_1C4EFF0C8();
        sub_1C43FBCE0();
        (*(v66 + 8))(v64);
      }

      v67 = [v47 participantStatus];

      v46 = v90;
      sub_1C4420C3C(v90, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      v68 = v97;
      v69 = v87;
      *v87 = v98;
      v69[1] = v68;
      v69[2] = v51;
      v69[3] = v53;
      v69[4] = v54;
      v70 = v92;
      sub_1C44CD9E0(v91, v69 + *(v92 + 28), &unk_1EC0BA0E0, &qword_1C4F105A0);
      *(v69 + *(v70 + 32)) = v65;
      *(v69 + *(v70 + 36)) = v67;
      sub_1C440BAA8(v69, 0, 1, v70);
      sub_1C44CD9E0(v69, v46, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      v37 = v93;
    }

    v71 = [v37 startDate];
    v72 = v89;
    sub_1C4EF9C78();

    v73 = [v37 endDate];
    v74 = v88;
    sub_1C4EF9C78();

    v75 = [v37 mechanism];
    v76 = [v37 bundleId];
    v77 = sub_1C4F01138();
    v79 = v78;

    v80 = [v37 direction];
    sub_1C4460050(v46, v72 + v74[9], &qword_1EC0BDBF8, &unk_1C4F6DE80);
    v81 = [v37 selfParticipantStatus];
    *(v72 + v74[6]) = v75;
    v82 = (v72 + v74[7]);
    *v82 = v77;
    v82[1] = v79;
    *(v72 + v74[8]) = v80;
    *(v72 + v74[10]) = v29;
    *(v72 + v74[11]) = v81;
    v83 = type metadata accessor for VirtualInteractionEvent(0);
    v84 = objc_allocWithZone(v83);
    sub_1C481B6C4(v72, v84 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction);
    v99.receiver = v84;
    v99.super_class = v83;
    objc_msgSendSuper2(&v99, sel_init);
    sub_1C481B728(v72);
    sub_1C4420C3C(v46, &qword_1EC0BDBF8, &unk_1C4F6DE80);
    sub_1C4420C3C(v94, &qword_1EC0BDC00, &qword_1C4F31410);
  }
}

uint64_t sub_1C481B21C@<X0>(void **a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v5 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_1C456902C(&qword_1EC0BDC00, &qword_1C4F31410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v41 - v16;
  v18 = *a1;
  v19 = [v18 handle];
  sub_1C4F01138();

  v20 = String.normalizedContactHandle()();

  if (v20.value._object)
  {
    countAndFlagsBits = v20.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v20.value._object)
  {
    object = v20.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_1C465C894(countAndFlagsBits, object, v44);

  v44 = v17;
  sub_1C4460050(v17, v13, &qword_1EC0BDC00, &qword_1C4F31410);
  v23 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  if (sub_1C44157D4(v13, 1, v23) == 1)
  {
    sub_1C4420C3C(v13, &qword_1EC0BDC00, &qword_1C4F31410);
    v24 = sub_1C4EFF0C8();
    v25 = v7;
    v26 = 1;
  }

  else
  {
    v27 = sub_1C4EFF0C8();
    (*(*(v27 - 8) + 32))(v7, v13, v27);
    v25 = v7;
    v26 = 0;
    v24 = v27;
  }

  sub_1C440BAA8(v25, v26, 1, v24);
  v28 = v7;
  sub_1C4460050(v44, v10, &qword_1EC0BDC00, &qword_1C4F31410);
  if (sub_1C44157D4(v10, 1, v23) == 1)
  {
    sub_1C4420C3C(v10, &qword_1EC0BDC00, &qword_1C4F31410);
    v43 = 2;
  }

  else
  {
    v43 = v10[*(v23 + 48)];
    v29 = sub_1C4EFF0C8();
    (*(*(v29 - 8) + 8))(v10, v29);
  }

  v30 = sub_1C481B784(v18);
  v41 = v31;
  v42 = v30;
  v32 = [v18 handle];
  v33 = sub_1C4F01138();
  v35 = v34;

  v36 = [v18 contactType];
  v37 = type metadata accessor for VirtualInteractionContact(0);
  sub_1C4460050(v28, a3 + v37[7], &unk_1EC0BA0E0, &qword_1C4F105A0);
  v38 = [v18 participantStatus];
  sub_1C4420C3C(v28, &unk_1EC0BA0E0, &qword_1C4F105A0);
  result = sub_1C4420C3C(v44, &qword_1EC0BDC00, &qword_1C4F31410);
  v40 = v41;
  *a3 = v42;
  a3[1] = v40;
  a3[2] = v33;
  a3[3] = v35;
  a3[4] = v36;
  *(a3 + v37[8]) = v43;
  *(a3 + v37[9]) = v38;
  return result;
}

unint64_t sub_1C481B61C()
{
  result = qword_1EDDF0360;
  if (!qword_1EDDF0360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF0360);
  }

  return result;
}

uint64_t sub_1C481B660(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for VirtualInteractionContact(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C481B6C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualInteraction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C481B728(uint64_t a1)
{
  v2 = type metadata accessor for VirtualInteraction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C481B784(void *a1)
{
  v1 = [a1 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t GDInteractionEnumeration.makeIterator()()
{
  v1 = v0;

  return sub_1C4EF97F8();
}

void __swiftcall GDInteractionEnumeration.GDInteractionIterator.next()(GDInteraction_optional *__return_ptr retstr)
{
  sub_1C4EF97D8(v1);
  if (v1[3])
  {
    sub_1C4461BB8(0, &qword_1EDDF0578, off_1E81EC5C8);
    swift_dynamicCast();
  }

  else
  {
    sub_1C4448244(v1);
  }
}

unint64_t sub_1C481B8CC()
{
  result = qword_1EC0BDC08;
  if (!qword_1EC0BDC08)
  {
    type metadata accessor for GDInteractionEnumeration.GDInteractionIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC08);
  }

  return result;
}

uint64_t type metadata accessor for GDInteractionEnumeration.GDInteractionIterator(uint64_t a1)
{
  result = qword_1EDDFCE30;
  if (!qword_1EDDFCE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C481B970()
{
  v1 = *v0;
  GDInteractionEnumeration.makeIterator()();
}

uint64_t sub_1C481BAA8(uint64_t a1)
{
  result = sub_1C4EF97E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t GDTimeZone.identifier.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t GDTimeZone.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static GDTimeZone.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7138 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0C3900;
  *a1 = qword_1EC0C38E8;
  *(a1 + 8) = unk_1EC0C38F0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t GDTimeZone.mapLocation.getter()
{
  v1 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t GDTimeZone.basicProperties.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall GDTimeZone.init(mapLocation:name:secondsFromGMT:abbreviation:)(IntelligencePlatformCore::GDTimeZone *__return_ptr retstr, Swift::String mapLocation, Swift::String name, Swift::String secondsFromGMT, Swift::String_optional abbreviation)
{
  object = abbreviation.value._object;
  countAndFlagsBits = abbreviation.value._countAndFlagsBits;
  v7 = secondsFromGMT._object;
  v8 = secondsFromGMT._countAndFlagsBits;
  v9 = name._object;
  v10 = name._countAndFlagsBits;
  v11 = mapLocation._object;
  v12 = mapLocation._countAndFlagsBits;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0CE60;
  *(v14 + 32) = 1701667182;
  *(v14 + 40) = 0xE400000000000000;
  *(v14 + 48) = v10;
  *(v14 + 56) = v9;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 64) = 0;
  *(v14 + 88) = 1;
  strcpy((v14 + 96), "secondsFromGMT");
  *(v14 + 111) = -18;
  *(v14 + 112) = v8;
  *(v14 + 120) = v7;
  *(v14 + 136) = 0;
  *(v14 + 144) = 0;
  *(v14 + 128) = 0;
  *(v14 + 152) = 1;
  if (object)
  {
    sub_1C458A900();
    v14 = v15;
    *(v15 + 16) = 3;
    strcpy((v15 + 160), "abbreviation");
    *(v15 + 173) = 0;
    *(v15 + 174) = -5120;
    *(v15 + 176) = countAndFlagsBits;
    *(v15 + 184) = object;
    *(v15 + 200) = 0;
    *(v15 + 208) = 0;
    *(v15 + 192) = 0;
    *(v15 + 216) = 1;
  }

  retstr->identifier.value._countAndFlagsBits = 0;
  retstr->identifier.value._object = 0;
  retstr->mapLocation._countAndFlagsBits = v12;
  retstr->mapLocation._object = v11;
  retstr->basicProperties._rawValue = v14;
}

uint64_t sub_1C481BDE8(uint64_t a1)
{
  v2 = sub_1C481C33C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C481BE24(uint64_t a1)
{
  v2 = sub_1C481C33C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GDTimeZone.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BDC18, &unk_1C4F31508);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = v1[2];
  v15 = v1[3];
  v16 = v9;
  v14 = v1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C481C33C();
  sub_1C4F02BF8();
  v21 = 0;
  v10 = v17;
  sub_1C4F02738();
  if (!v10)
  {
    v11 = v14;
    v20 = 1;
    sub_1C4F02798();
    v18 = v11;
    v19 = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t GDTimeZone.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BDC28, &qword_1C4F31518);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C481C33C();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
  }

  else
  {
    v6 = sub_1C4F02618();
    v9 = v8;
    v16 = v6;
    v10 = sub_1C4F02678();
    v12 = v11;
    v15 = v10;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v13 = sub_1C43FBF04();
    v14(v13);
    *a2 = v16;
    a2[1] = v9;
    a2[2] = v15;
    a2[3] = v12;
    a2[4] = v17;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(a1);
  }
}

unint64_t sub_1C481C33C()
{
  result = qword_1EC0BDC20;
  if (!qword_1EC0BDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC20);
  }

  return result;
}

unint64_t sub_1C481C390(uint64_t a1)
{
  result = sub_1C481C3B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C481C3B8()
{
  result = qword_1EC0BDC30;
  if (!qword_1EC0BDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC30);
  }

  return result;
}

unint64_t sub_1C481C40C(uint64_t a1)
{
  *(a1 + 8) = sub_1C481C43C();
  result = sub_1C481C490();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C481C43C()
{
  result = qword_1EC0BDC38;
  if (!qword_1EC0BDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC38);
  }

  return result;
}

unint64_t sub_1C481C490()
{
  result = qword_1EC0BDC40;
  if (!qword_1EC0BDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GDTimeZone.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C481C5D4()
{
  result = qword_1EC0BDC48;
  if (!qword_1EC0BDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC48);
  }

  return result;
}

unint64_t sub_1C481C62C()
{
  result = qword_1EC0BDC50;
  if (!qword_1EC0BDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC50);
  }

  return result;
}

unint64_t sub_1C481C684()
{
  result = qword_1EC0BDC58;
  if (!qword_1EC0BDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDC58);
  }

  return result;
}

uint64_t sub_1C481C6D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0BDC60, &qword_1C4F16C68);
    v3 = sub_1C4F02558();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C481D978(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1C481C784()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_1C456902C(&qword_1EC0BDC70, &qword_1C4F31790);
  *v3 = v0;
  v3[1] = sub_1C481C88C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001BLL, 0x80000001C4F9C410, sub_1C481DBB4, v2, v4);
}

uint64_t sub_1C481C88C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v3 + 48) = v0;

  if (v0)
  {
    v6 = sub_1C481C9BC;
  }

  else
  {

    v6 = sub_1C481C998;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C481C9BC()
{

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 48);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "geoMapItems is not an array of GEOMapItem", v6, 2u);
    sub_1C43FBE2C();
  }

  sub_1C43FBCF0();

  return v7(0);
}

void sub_1C481CAD0(uint64_t a1, void *a2)
{
  v18 = a2;
  v16 = a1;
  v3 = sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *(v4 + 16);
  v8(&v15 - v6, a1, v3, v5);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v11 = *(v4 + 32);
  v11(v10 + v9, v7, v3);
  v23 = sub_1C481DBBC;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1C481CFD4;
  v22 = &unk_1F43EDBC8;
  v17 = _Block_copy(&aBlock);

  (v8)(v7, v16, v3);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v3);
  v23 = sub_1C481DCDC;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1C481D184;
  v22 = &unk_1F43EDC18;
  v13 = _Block_copy(&aBlock);

  v14 = v17;
  [v18 submitWithHandler:v17 networkActivity:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1C481CD48(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a2;
    sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
    sub_1C4F01808();
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = a2;
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1C43F8000, v7, v8, "Encountered an error when fetching geoMapItems %@", v9, 0xCu);
      sub_1C45B4B90(v10);
      MEMORY[0x1C6942830](v10, -1, -1);
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (a1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v13 = sub_1C4F00978();
      sub_1C442B738(v13, qword_1EDDFECB8);
      v14 = sub_1C4F00968();
      v15 = sub_1C4F01CF8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C43F8000, v14, v15, "geoMapItems is not an array of GEOMapItem", v16, 2u);
        MEMORY[0x1C6942830](v16, -1, -1);
      }
    }

    sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
    sub_1C4F01818();
  }
}

uint64_t sub_1C481CFD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1C456902C(&qword_1EC0BDC80, &qword_1C4F317A0);
    v4 = sub_1C4F01678();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1C481D074(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDDFECB8);
    v2 = sub_1C4F00968();
    v3 = sub_1C4F01CF8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C43F8000, v2, v3, "No network activity when retrieving GEOMapItem", v4, 2u);
      MEMORY[0x1C6942830](v4, -1, -1);
    }
  }

  sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
  return sub_1C4F01818();
}

uint64_t sub_1C481D184(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1C481D1D8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1C43FEB04();
}

uint64_t sub_1C481D1EC()
{
  v1 = v0[4];
  v2 = sub_1C4811608(v0[3]);
  v3 = [v1 defaultTraits];
  v4 = sub_1C481DB3C(v2, v3, v1);
  v0[5] = v4;

  if (v4)
  {
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_1C481D300;

    return sub_1C481C770(v4);
  }

  else
  {
    sub_1C43FBCF0();

    return v7(0);
  }
}

uint64_t sub_1C481D300()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  *(v1 + 56) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C481D3F8, 0, 0);
}

uint64_t sub_1C481D3F8()
{
  v41 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = sub_1C4428DA0(*(v0 + 56));
    v3 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    v4 = &off_1E81F1000;
    v38 = v0;
    while (v2 != v3)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6940F90](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v5 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
      }

      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        sub_1C44064A8();
        swift_once();
        goto LABEL_23;
      }

      v7 = [v5 v4[422]];
      if (v7)
      {
        v8 = v7;
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v9 = sub_1C4F00978();
        sub_1C442B738(v9, qword_1EDDFECB8);
        v10 = v8;
        v11 = sub_1C4F00968();
        v12 = sub_1C4F01CF8();
        v37 = v10;

        v36 = v12;
        if (os_log_type_enabled(v11, v12))
        {
          log = v11;
          v13 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v40 = v34;
          *v13 = 136315138;
          v14 = sub_1C4F01138();
          v16 = sub_1C441D828(v14, v15, &v40);

          *(v13 + 4) = v16;
          v17 = v38;
          _os_log_impl(&dword_1C43F8000, log, v36, "Merchant POI = %s", v13, 0xCu);
          sub_1C440962C(v34);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {

          v17 = v38;
        }

        *(v17 + 16) = [v5 _muid];
        v18 = sub_1C4F02858();
        v20 = v19;
        swift_unknownObjectRelease();
        v21 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458A708();
          v21 = v24;
        }

        v22 = *(v21 + 16);
        if (v22 >= *(v21 + 24) >> 1)
        {
          sub_1C458A708();
          v21 = v25;
        }

        *(v21 + 16) = v22 + 1;
        v39 = v21;
        v23 = (v21 + 24 * v22);
        v23[4] = v18;
        v23[5] = v20;
        v23[6] = v37;
        v3 = v6;
        v4 = &off_1E81F1000;
      }

      else
      {
        swift_unknownObjectRelease();
        ++v3;
      }
    }

    v2 = sub_1C481C6D8(v39);
    v26 = *(v2 + 16);
    v27 = sub_1C4428DA0(v1);

    if (v26 >= v27)
    {
      goto LABEL_26;
    }

    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_33;
    }

LABEL_23:
    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDDFECB8);
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CF8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C43F8000, v29, v30, "GEOMapService.poisForMUIDs: detected duplicate muid to poi category mapping.", v31, 2u);
      sub_1C43FBE2C();
    }

LABEL_26:
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = 0;
  }

  sub_1C43FBCF0();

  return v32(v2);
}

uint64_t sub_1C481D7F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C481D890;

  return sub_1C481D1D8(a1);
}

uint64_t sub_1C481D890()
{
  sub_1C43FBCD4();
  v2 = v1;
  sub_1C43FBDE4();
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBCF0();

  return v5(v2);
}

uint64_t sub_1C481D978(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v35 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v35 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = v8;
    v18 = sub_1C445FAA8(v7, v6);
    v19 = v9[2];
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_17;
    }

    v22 = v11;
    if (v9[3] >= v21)
    {
      if ((a2 & 1) == 0)
      {
        sub_1C456902C(&qword_1EC0BDC68, &unk_1C4F31780);
        sub_1C4F02468();
      }
    }

    else
    {
      sub_1C4679474(v21, a2 & 1, v12, v13, v14, v15, v16, v17, v33, v34, v35, SBYTE4(v35));
      v23 = sub_1C445FAA8(v7, v6);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    v25 = *a3;
    if (v22)
    {

      v26 = v25[7];
      v27 = *(v26 + 8 * v18);
      *(v26 + 8 * v18) = v10;
    }

    else
    {
      v25[(v18 >> 6) + 8] |= 1 << v18;
      v28 = (v25[6] + 16 * v18);
      *v28 = v7;
      v28[1] = v6;
      *(v25[7] + 8 * v18) = v10;
      v29 = v25[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v25[2] = v31;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

id sub_1C481DB3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C4F01658();

  v6 = [a3 ticketForMUIDs:v5 traits:a2];

  return v6;
}

void sub_1C481DBBC(void *a1, void *a2)
{
  sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);

  sub_1C481CD48(a1, a2);
}

uint64_t sub_1C481DC48()
{
  v1 = sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C481DCDC(char a1)
{
  sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);

  return sub_1C481D074(a1);
}

uint64_t sub_1C481DD60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v25 = a4;
  v22 = a3;
  v21 = sub_1C4EFFC28();
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v20[1] = v8 + 32;
  for (i = a1 + 40; v11; --v11)
  {
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFFBB8();
    v13 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458DA58(0, *(v13 + 16) + 1, 1, v13);
      v13 = v17;
      *a2 = v17;
    }

    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1C458DA58(v15 > 1, v16 + 1, 1, v13);
      v13 = v18;
      *a2 = v18;
    }

    *(v13 + 16) = v16 + 1;
    (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v10, v21);

    i += 16;
  }
}

uint64_t sub_1C481DF78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v26 = a4;
  v24 = a3;
  v23 = sub_1C4EFEEF8();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C4EFFC28();
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v27 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = (v5 + 8);
  v21[2] = v8 + 32;
  for (i = a1 + 40; v10; --v10)
  {
    swift_bridgeObjectRetain_n();
    sub_1C4EFECB8();
    sub_1C4EFEB68();
    (*v11)(v7, v23);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFFBB8();
    v13 = v25;
    v14 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458DA58(0, *(v14 + 16) + 1, 1, v14);
      v14 = v18;
      *v25 = v18;
    }

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1C458DA58(v16 > 1, v17 + 1, 1, v14);
      v14 = v19;
      *v25 = v19;
    }

    *(v14 + 16) = v17 + 1;
    (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v27, v22);

    i += 16;
  }
}

uint64_t sub_1C481E22C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x737465737361 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C481E2B4(void *a1, uint64_t a2)
{
  sub_1C456902C(&qword_1EC0BDC98, &unk_1C4F31960);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4409678(a1, a1[3]);
  sub_1C4826968();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0BDC90, &qword_1C4F31958);
  sub_1C48269BC(&qword_1EC0BDCA0, &qword_1EC0BDCA8, &unk_1C4F5497C, MEMORY[0x1E69E6300]);
  sub_1C4F027E8();
  v4 = sub_1C43FE99C();
  return v5(v4);
}

void *sub_1C481E434(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BDC88, &qword_1C4F31950);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = sub_1C4409678(a1, a1[3]);
  sub_1C4826968();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C456902C(&qword_1EC0BDC90, &qword_1C4F31958);
    sub_1C48269BC(&qword_1EDDDBC38, &qword_1EDDDC430, &unk_1C4F549A4, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    sub_1C440962C(a1);
  }

  return v9;
}

uint64_t sub_1C481E5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C481E22C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C481E610(uint64_t a1)
{
  v2 = sub_1C4826968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C481E64C(uint64_t a1)
{
  v2 = sub_1C4826968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C481E688@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C481E434(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GlobalKnowledgeDatabase.checkAndLoadAssets()()
{
  sub_1C43FE96C();
  v158 = v1;
  v2 = *v0;
  v146 = v0;
  v152 = v2;
  v147 = sub_1C4F00978();
  sub_1C43FCDF8();
  v155 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v153 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD230();
  sub_1C43FCE30(v7);
  v8 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  sub_1C43FCE30(v11);
  v12 = type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
  v13 = sub_1C43FCF7C(v12);
  v154 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v148 = (&v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FCE30(v17);
  *&v139 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v145 = v20;
  sub_1C43FBE44();
  v144 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v143 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  sub_1C43FCE30(v24 - v23);
  v25 = sub_1C456902C(&qword_1EC0BBC78, &unk_1C4F228F0);
  sub_1C43FBD18(v25);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v156 = v27;
  sub_1C43FBE44();
  v149 = sub_1C4EFCD88();
  sub_1C43FCDF8();
  v151 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  v150 = v31 - v30;
  sub_1C43FBE44();
  v157 = sub_1C4EFF288();
  sub_1C43FCDF8();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v37 = v36 - v35;
  v38 = sub_1C4EFDED8();
  sub_1C43FCDF8();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  v44 = v43 - v42;
  v45 = sub_1C4EFF968();
  sub_1C43FCDF8();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBCC4();
  v51 = v50 - v49;
  os_transaction_create();
  sub_1C4EFDF58();
  sub_1C4EFF908();
  (*(v47 + 104))(v51, *MEMORY[0x1E69A9A20], v45);
  (*(v33 + 104))(v37, *MEMORY[0x1E69A9888], v157);
  sub_1C4EFDEC8();
  (*(v40 + 104))(v44, *MEMORY[0x1E69A95D8], v38);
  v52 = v158;
  v53 = sub_1C4EFDEE8();
  if (v52)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v54 = v53;
  v55 = v154;
  v56 = v155;
  sub_1C4EFDEB8();
  v57 = sub_1C4EFCD98();
  if (sub_1C44157D4(v156, 1, v57) == 1)
  {
    sub_1C4420C3C(v156, &qword_1EC0BBC78, &unk_1C4F228F0);
LABEL_8:
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000064, 0x80000001C4F9C490);
    MEMORY[0x1C6940010](0x74736566696E616DLL, 0xE800000000000000);
    MEMORY[0x1C6940010](0x203A6E69202CLL, 0xE600000000000000);
    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4F8F660);
    MEMORY[0x1C6940010](41, 0xE100000000000000);
    v61 = v163;
    v62 = v164;
    v63 = sub_1C4826750();
    sub_1C43FFB2C(&unk_1F43EDD38, v63);
    *v64 = v61;
    *(v64 + 8) = v62;
    *(v64 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_9;
  }

  v58 = *(v57 - 8);
  if ((*(v58 + 88))(v156, v57) != *MEMORY[0x1E69A9198])
  {
    (*(v58 + 8))(v156, v57);
    goto LABEL_8;
  }

  v157 = v54;
  v59 = v156;
  (*(v58 + 96))(v156, v57);
  (*(v151 + 32))(v150, v59, v149);
  sub_1C4EFCD38();
  v60 = objc_autoreleasePoolPush();
  sub_1C4EF9938();
  v158 = v60;
  sub_1C4EF96B8();
  swift_allocObject();
  sub_1C4EF96A8();
  sub_1C48267A4();
  sub_1C4EF9698();
  v135 = 0;
  v67 = sub_1C4402E08();
  sub_1C4434000(v67, v68);

  v69 = v163;
  objc_autoreleasePoolPop(v158);
  v71 = *(v69 + 16);
  if (!v71)
  {
    v112 = v150;
    v111 = v151;
LABEL_35:
    swift_unknownObjectRelease();

    sub_1C43FFB20();
    v130(v142, v144);
    (*(v111 + 8))(v112, v149);
    goto LABEL_9;
  }

  v72 = 0;
  v73 = v146;
  v137 = *(v146 + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);
  v134 = *(v55 + 80);
  v131 = v69;
  v136 = (v56 + 8);
  v133 = (v134 + 32) & ~v134;
  v155 = v55[9];
  v132 = (v139 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  *&v70 = 136315394;
  v139 = v70;
  v74 = v147;
  v75 = v152;
  v76 = v145;
  v77 = v135;
  do
  {
    sub_1C44131E4();
    v158 = v78;
    v79 = sub_1C4826A58();
    v163 = 0;
    v164 = 0;
    MEMORY[0x1EEE9AC00](v79);
    *(&v131 - 6) = v157;
    *(&v131 - 5) = v76;
    *(&v131 - 4) = &v163;
    *(&v131 - 3) = v73;
    *(&v131 - 2) = v75;
    v80 = v77;
    sub_1C445C448();
    if (v77)
    {
      v156 = v71;

      sub_1C4F00148();
      sub_1C44131E4();
      v82 = v148;
      sub_1C4826A58();
      v83 = v80;
      v84 = sub_1C4F00968();
      v85 = sub_1C4F01CD8();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = sub_1C440F274();
        swift_slowAlloc();
        sub_1C440D148();
        v154 = swift_slowAlloc();
        v163 = v154;
        *v86 = v139;
        v87 = *v82;
        v88 = v82[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C442CAD8();
        sub_1C4826CC8(v82, v89);
        v90 = sub_1C441D828(v87, v88, &v163);
        v76 = v145;

        *(v86 + 4) = v90;
        v73 = v146;
        *(v86 + 12) = 2112;
        v91 = v80;
        v92 = _swift_stdlib_bridgeErrorToNSError();
        *(v86 + 14) = v92;
        *v74 = v92;
        _os_log_impl(&dword_1C43F8000, v84, v85, "GlobalKnowledgeDatabase: checkAndLoadAssets: %s failed to load: %@", v86, 0x16u);
        sub_1C4420C3C(v74, &qword_1EC0BDA00, &qword_1C4F10D30);
        v74 = v147;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C440962C(v154);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        sub_1C442CAD8();
        sub_1C4826CC8(v82, v102);
      }

      (*v136)(v153, v74);
      v72 = v80;
      v77 = 0;
      v75 = v152;
      v71 = v156;
    }

    else
    {
      v93 = v164;
      if ((v81 & 1) != 0 && v164)
      {
        v156 = v71;
        v135 = 0;
        v94 = v163;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v95 = v141;
        sub_1C4F01898();
        v96 = sub_1C4F018C8();
        sub_1C440BAA8(v95, 0, 1, v96);
        sub_1C4826A58();
        v97 = v132;
        v98 = swift_allocObject();
        *(v98 + 16) = 0;
        *(v98 + 24) = 0;
        sub_1C4826B04();
        v99 = (v98 + v97);
        *v99 = v94;
        v99[1] = v93;
        v100 = v140;
        sub_1C44DDE2C();
        v101 = sub_1C44157D4(v100, 1, v96);

        if (v101 == 1)
        {
          sub_1C4420C3C(v100, &qword_1EC0BC660, &qword_1C4F29150);
        }

        else
        {
          sub_1C4F018B8();
          v103 = sub_1C43FE99C();
          v104(v103);
        }

        v105 = *(v98 + 16);
        swift_unknownObjectRetain();

        v76 = v145;
        v77 = v135;
        v74 = v147;
        if (v105)
        {
          swift_getObjectType();
          v106 = sub_1C4F017F8();
          v108 = v107;
          swift_unknownObjectRelease();
        }

        else
        {
          v106 = 0;
          v108 = 0;
        }

        v73 = v146;
        sub_1C4420C3C(v141, &qword_1EC0BC660, &qword_1C4F29150);
        v109 = swift_allocObject();
        *(v109 + 16) = &unk_1C4F317C0;
        *(v109 + 24) = v98;
        if (v108 | v106)
        {
          v159 = 0;
          v160 = 0;
          v161 = v106;
          v162 = v108;
        }

        v71 = v156;
        swift_task_create();

        v75 = v152;
      }
    }

    sub_1C442CAD8();
    sub_1C4826CC8(v76, v110);
    --v71;
  }

  while (v71);
  v112 = v150;
  v111 = v151;
  if (!v72)
  {
    goto LABEL_35;
  }

  v113 = v138;
  sub_1C4F00148();
  v114 = v72;
  v115 = sub_1C4F00968();
  v116 = sub_1C4F01CD8();

  v117 = os_log_type_enabled(v115, v116);
  v118 = v142;
  if (v117)
  {
    sub_1C43FECF0();
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *v119 = 138412290;
    v121 = v72;
    v122 = _swift_stdlib_bridgeErrorToNSError();
    *(v119 + 4) = v122;
    *v120 = v122;
    sub_1C4414B20();
    _os_log_impl(v123, v124, v125, v126, v127, 0xCu);
    sub_1C4420C3C(v120, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*v136)(v113, v74);
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1C43FFB20();
  v128(v118, v144);
  v129 = sub_1C43FE99C();
  v66(v129, v65);
LABEL_9:
  sub_1C43FBC80();
}

uint64_t sub_1C481F660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v54 = a4;
  v55 = a5;
  v52 = a3;
  v53 = a1;
  v48 = a6;
  v50 = type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
  MEMORY[0x1EEE9AC00](v50);
  v58 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1C4EF98F8();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0BBC78, &unk_1C4F228F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_1C4EFCD88();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v19 = a2[1];
  v21 = v61;
  result = sub_1C4EFDEB8();
  if (!v21)
  {
    v61 = v19;
    v44 = 0;
    v45 = v18;
    v23 = v58;
    v46 = v16;
    v47 = v15;
    v24 = sub_1C4EFCD98();
    if (sub_1C44157D4(v14, 1, v24) == 1)
    {
      sub_1C4420C3C(v14, &qword_1EC0BBC78, &unk_1C4F228F0);
LABEL_8:
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000004DLL, 0x80000001C4F9C500);
      MEMORY[0x1C6940010](v20, v61);
      v32 = v59;
      v33 = v60;
      sub_1C4826750();
      swift_allocError();
      *v34 = v32;
      *(v34 + 8) = v33;
      *(v34 + 16) = 0;
      return swift_willThrow();
    }

    v25 = *(v24 - 8);
    if ((*(v25 + 88))(v14, v24) != *MEMORY[0x1E69A9198])
    {
      (*(v25 + 8))(v14, v24);
      goto LABEL_8;
    }

    (*(v25 + 96))(v14, v24);
    v27 = v45;
    v26 = v46;
    v28 = v47;
    (*(v46 + 32))(v45, v14, v47);
    v29 = v11;
    sub_1C4EFCD38();
    v30 = v44;
    v31 = sub_1C481FC48();
    if (v30)
    {
      (*(v56 + 8))(v11, v57);
      return (*(v26 + 8))(v27, v28);
    }

    else
    {
      v35 = v31;
      sub_1C4826A58();
      v36 = v51;
      *v51 = 0;
      *(v36 + 8) = 1;
      v37 = *v23;
      v38 = *(v23 + 8);
      *(v36 + 16) = *v23;
      *(v36 + 24) = v38;
      *(v36 + 40) = *(v23 + 16);
      sub_1C44DDE2C();
      swift_bridgeObjectRetain_n();
      sub_1C4826CC8(v23, type metadata accessor for StaticKnowledgeAssetMetadataInManifest);
      *(v36 + 32) = v35;
      v39 = v52;
      *v52 = v37;
      v39[1] = v38;

      sub_1C48202DC();
      v41 = v56;
      v40 = v57;
      LOBYTE(v37) = v42;
      sub_1C4826CC8(v36, type metadata accessor for StaticKnowledgeAssetMetadata);
      (*(v41 + 8))(v29, v40);
      result = (*(v46 + 8))(v45, v47);
      *v48 = v37 & 1;
    }
  }

  return result;
}

uint64_t sub_1C481FC48()
{
  v0 = sub_1C4EFCD58();
  v50 = *(v0 - 8);
  v51 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v49 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1C4EFCD68();
  v52 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFCDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFCD28();
  v9 = sub_1C4EFCDC8();
  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    goto LABEL_66;
  }

  v10 = sub_1C44735D4(0x6E6F6973726576, 0xE700000000000000, v9);
  v12 = v11;

  if (!v12)
  {
    goto LABEL_66;
  }

  v13 = HIBYTE(v12) & 0xF;
  v14 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_65:

LABEL_66:
    sub_1C4826D68();
    swift_allocError();
    swift_willThrow();
    return v9;
  }

  if ((v12 & 0x1000000000000000) == 0)
  {
    if ((v12 & 0x2000000000000000) != 0)
    {
      v53[0] = v10;
      v53[1] = v12 & 0xFFFFFFFFFFFFFFLL;
      if (v10 == 43)
      {
        if (v13)
        {
          if (--v13)
          {
            v9 = 0;
            v27 = v53 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v13)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v10 != 45)
      {
        if (v13)
        {
          v9 = 0;
          v32 = v53;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v13)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v13)
      {
        if (--v13)
        {
          v9 = 0;
          v21 = v53 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v13)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v16 = sub_1C4F022F8();
      }

      v17 = *v16;
      if (v17 == 43)
      {
        if (v14 >= 1)
        {
          v13 = v14 - 1;
          if (v14 != 1)
          {
            v9 = 0;
            if (v16)
            {
              v24 = v16 + 1;
              while (1)
              {
                v25 = *v24 - 48;
                if (v25 > 9)
                {
                  goto LABEL_63;
                }

                v26 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v26 + v25;
                if (__OFADD__(v26, v25))
                {
                  goto LABEL_63;
                }

                ++v24;
                if (!--v13)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_80;
      }

      if (v17 != 45)
      {
        if (v14)
        {
          v9 = 0;
          if (v16)
          {
            while (1)
            {
              v30 = *v16 - 48;
              if (v30 > 9)
              {
                goto LABEL_63;
              }

              v31 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_63;
              }

              ++v16;
              if (!--v14)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v9 = 0;
        LOBYTE(v13) = 1;
LABEL_64:
        v54 = v13;
        if (v13)
        {
          goto LABEL_65;
        }

        goto LABEL_69;
      }

      if (v14 >= 1)
      {
        v13 = v14 - 1;
        if (v14 != 1)
        {
          v9 = 0;
          if (v16)
          {
            v18 = v16 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_63;
              }

              v20 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v20 - v19;
              if (__OFSUB__(v20, v19))
              {
                goto LABEL_63;
              }

              ++v18;
              if (!--v13)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v13) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4AA1330();
  v37 = v36;

  if (v37)
  {
    goto LABEL_65;
  }

LABEL_69:
  sub_1C4EFCD78();
  v38 = v52;
  v39 = (*(v52 + 88))(v4, v2);
  if (v39 == *MEMORY[0x1E69A9190])
  {

    (*(v38 + 96))(v4, v2);
    v41 = v49;
    v40 = v50;
    v42 = v51;
    (*(v50 + 32))(v49, v4, v51);
    v43 = sub_1C4EFCD48();
    sub_1C44735D4(0x6E6F6973726576, 0xE700000000000000, v43);
    v45 = v44;

    if (v45)
    {
      v46 = sub_1C4AA1304();
      v48 = v47;
      (*(v40 + 8))(v41, v42);
      if ((v48 & 1) == 0)
      {
        return v46;
      }
    }

    else
    {
      (*(v40 + 8))(v41, v42);
    }

    return v9;
  }

  if (v39 == *MEMORY[0x1E69A9188])
  {

    return v9;
  }

LABEL_82:
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

void sub_1C48202DC()
{
  sub_1C43FE96C();
  v2 = v1;
  v174 = v0;
  v4 = v3;
  v160 = v5;
  v180 = v6;
  v7 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v157 - v9;
  v166 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  sub_1C43FCDF8();
  v165 = v11;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  sub_1C43FCE30(v13);
  v14 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  sub_1C43FCE30(v16);
  v184 = sub_1C456902C(&qword_1EC0BDCC0, &unk_1C4F32020);
  sub_1C43FCDF8();
  v176 = v17;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v181 = v19;
  v20 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  sub_1C43FBD18(v20);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  sub_1C43FCE30(v22);
  sub_1C4F001E8();
  sub_1C43FCDF8();
  v182 = v24;
  v183 = v23;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  sub_1C43FCE30(v26);
  v199 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v157 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v157 - v37;
  v39 = sub_1C4F00978();
  sub_1C43FCDF8();
  v185 = v40;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v157 - v46;
  sub_1C4F00148();
  sub_1C4826A58();
  v186 = v4;
  sub_1C4826A58();
  v48 = sub_1C4F00968();
  v49 = sub_1C4F01CF8();
  v50 = os_log_type_enabled(v48, v49);
  v179 = v39;
  v159 = v10;
  if (v50)
  {
    sub_1C440F274();
    v171 = v1;
    sub_1C440D148();
    v158 = swift_slowAlloc();
    v195 = v158;
    *v1 = 136315394;
    v52 = *(v38 + 2);
    v51 = *(v38 + 3);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440F70C();
    sub_1C4826CC8(v38, v53);
    v54 = sub_1C441D828(v52, v51, &v195);

    *(v1 + 4) = v54;
    *(v1 + 12) = 2048;
    v55 = *(v35 + 4);
    v56 = sub_1C4402E08();
    sub_1C4826CC8(v56, v57);
    *(v1 + 14) = v55;
    _os_log_impl(&dword_1C43F8000, v48, v49, "GlobalKnowledgeDatabase: checkAndLoadAssets: checking %s (manifestAsset.version %ld)", v1, 0x16u);
    sub_1C440962C(v158);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v2 = v171;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v58 = *(v185 + 8);
    sub_1C443F1F0();
  }

  else
  {
    sub_1C440F70C();
    sub_1C4826CC8(v35, v61);

    v62 = sub_1C442BB94();
    sub_1C4826CC8(v62, v63);
    v58 = *(v185 + 8);
    v59 = v47;
    v60 = v39;
  }

  (v58)(v59, v60);
  v64 = v186;
  v65 = v177;
  sub_1C44DDE2C();
  v66 = v183;
  v67 = sub_1C44157D4(v65, 1, v183);
  v68 = v180;
  if (v67 == 1)
  {
    sub_1C4420C3C(v65, &qword_1EC0BDCB0, &unk_1C4F54830);
    goto LABEL_9;
  }

  v69 = v2;
  v171 = v58;
  v70 = v180;
  v71 = v182;
  v72 = v65;
  v73 = v178;
  (*(v182 + 32))(v178, v72, v66);
  v74 = OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_config;
  v75 = v173;
  (*(v71 + 16))(v173, v73, v66);
  v76 = (v174 + *(type metadata accessor for Configuration(0) + 20) + v74);
  v77 = v66;
  v79 = *v76;
  v78 = v76[1];
  Features.FeatureFlag.asOption()();
  v80 = *(v71 + 8);
  v182 = v71 + 8;
  v80(v75, v77);
  if ((v195 & ~v79) == 0 && (v196 & v78) == v196)
  {
    v80(v178, v183);
    v64 = v186;
    v68 = v70;
    v58 = v171;
    v2 = v69;
LABEL_9:
    v193 = &type metadata for StaticKnowledgeAssetMetadataColumn;
    v194 = sub_1C4826AB0();
    LOBYTE(v192[0]) = 1;
    v81 = *(v64 + 16);
    v82 = *(v64 + 24);
    v190 = MEMORY[0x1E69E6158];
    v191 = MEMORY[0x1E69A0130];
    v187 = v81;
    v188 = v82;
    v83 = sub_1C4EFB298();
    v197 = v83;
    v198 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v195);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4420C3C(&v187, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v192);
    sub_1C4826D20(&qword_1EDDFAA88, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54DE0);
    sub_1C4EFAE28();
    sub_1C440962C(&v195);
    sub_1C4401CBC(&qword_1EDDFCCF8, &qword_1EC0BDCC0, &unk_1C4F32020, MEMORY[0x1E699FF60]);
    sub_1C4826D20(&qword_1EDDFAA80, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54D98);
    v84 = v175;
    sub_1C4EFAFF8();
    if (!v2)
    {
      if (sub_1C44157D4(v84, 1, v199) == 1)
      {
        sub_1C4420C3C(v84, &qword_1EC0BD2F8, &qword_1C4F31970);
        sub_1C4F00148();
        v85 = sub_1C4F00968();
        v86 = sub_1C4F01CF8();
        if (os_log_type_enabled(v85, v86))
        {
          *swift_slowAlloc() = 0;
          sub_1C4414B20();
          _os_log_impl(v87, v88, v89, v90, v91, 2u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C441B974();
        sub_1C443F1F0();
        v58();
        sub_1C4406F48();
        v92 = v169;
        sub_1C4826A58();
        sub_1C4826D20(&qword_1EDDDFB18, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54CE0);
        sub_1C43FE99C();
        sub_1C4EFBAB8();
        v131 = v68;
        v132 = v160;
        goto LABEL_23;
      }

      v171 = 0;
      sub_1C4406F48();
      v107 = v172;
      sub_1C4826B04();
      if (*(v107 + 32) == *(v186 + 32))
      {
        sub_1C4F00148();
        sub_1C4406F48();
        v108 = v162;
        sub_1C4826A58();
        v109 = sub_1C4F00968();
        v110 = sub_1C4F01CF8();
        v111 = os_log_type_enabled(v109, v110);
        v112 = v179;
        if (v111)
        {
          sub_1C43FECF0();
          v113 = swift_slowAlloc();
          *v113 = 134217984;
          v114 = *(v108 + 32);
          sub_1C44197C8();
          sub_1C4826CC8(v108, v115);
          *(v113 + 4) = v114;
          sub_1C4414B20();
          _os_log_impl(v116, v117, v118, v119, v120, 0xCu);
          v107 = v172;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44197C8();
          sub_1C4826CC8(v108, v136);
        }

        sub_1C441B974();
        (v58)(v168, v112);
        sub_1C44197C8();
        sub_1C4826CC8(v107, v137);
        v138 = sub_1C4403238();
        v139(v138);
        goto LABEL_34;
      }

      v201 = *(v186 + 32);
      sub_1C4F00148();
      v122 = v161;
      sub_1C4826A58();
      v123 = v163;
      sub_1C4826A58();
      v124 = sub_1C4F00968();
      v125 = sub_1C4F01CF8();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = sub_1C440F274();
        *v126 = 134218240;
        v127 = *(v122 + 32);
        sub_1C4826CC8(v122, type metadata accessor for StaticKnowledgeAssetMetadata);
        *(v126 + 4) = v127;
        *(v126 + 12) = 2048;
        v128 = *(v123 + 32);
        v129 = sub_1C43FE990();
        sub_1C4826CC8(v129, v130);
        *(v126 + 14) = v128;
        _os_log_impl(&dword_1C43F8000, v124, v125, "GlobalKnowledgeDatabase: checkAndLoadAssets: replacing version %ld with %ld", v126, 0x16u);
        v68 = v180;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
        sub_1C4826CC8(v123, type metadata accessor for StaticKnowledgeAssetMetadata);
        sub_1C4826CC8(v122, type metadata accessor for StaticKnowledgeAssetMetadata);
      }

      v140 = MEMORY[0x1E699FE60];

      sub_1C441B974();
      sub_1C443F1F0();
      v58();
      v193 = &type metadata for StaticGlobalKnowledgeTripleColumn;
      v194 = sub_1C4826B5C();
      LOBYTE(v192[0]) = 0;
      if (v172[1])
      {
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v188 = 0;
        v189 = 0;
      }

      else
      {
        v141 = *v172;
        v143 = MEMORY[0x1E69A01C8];
        v142 = MEMORY[0x1E69E7360];
      }

      v187 = v141;
      v190 = v142;
      v191 = v143;
      type metadata accessor for StaticKnowledgeTriple(0);
      v197 = v83;
      v198 = v140;
      sub_1C4422F90(&v195);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v187, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v192);
      sub_1C440E2E8();
      sub_1C4826D20(v144, v145, &unk_1C4F55330);
      sub_1C4EFAE28();
      sub_1C440962C(&v195);
      v146 = v171;
      sub_1C4EFB898();
      if (!v146)
      {
        sub_1C43FFB20();
        v149 = sub_1C442BB94();
        v150(v149);
        v151 = sub_1C4EFBF38();
        v152 = v159;
        sub_1C440BAA8(v159, 1, 1, v151);
        sub_1C456902C(&qword_1EC0BDCC8, &qword_1C4F31978);
        v153 = sub_1C4EFB4E8();
        sub_1C43FCF7C(v153);
        *(swift_allocObject() + 16) = xmmword_1C4F0D130;
        LOBYTE(v192[0]) = 2;
        v197 = MEMORY[0x1E69E6530];
        v198 = MEMORY[0x1E69A0178];
        v195 = v201;
        sub_1C4826BB0();
        sub_1C4EFB568();
        sub_1C4420C3C(&v195, &qword_1EC0C5040, &qword_1C4F0F950);
        sub_1C4EFB8A8();
        sub_1C4420C3C(v152, &unk_1EC0BCAB0, &unk_1C4F111A0);

        v131 = v68;
        v132 = v160;
        v92 = v172;
LABEL_23:
        sub_1C48218E4(v131, v132, v92, v93, v94, v95, v96, v97, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
        sub_1C44197C8();
        sub_1C4826CC8(v92, v133);
        v134 = sub_1C4403238();
        v135(v134);
        goto LABEL_34;
      }

      sub_1C43FFB20();
      v147 = sub_1C442BB94();
      v148(v147);
      sub_1C44197C8();
      sub_1C4826CC8(v172, v154);
    }

    v155 = sub_1C4403238();
    v156(v155);
    goto LABEL_34;
  }

  v200 = v80;
  sub_1C4F00148();
  sub_1C4406F48();
  v98 = v170;
  sub_1C4826A58();
  v99 = sub_1C4F00968();
  v100 = sub_1C4F01CB8();
  if (os_log_type_enabled(v99, v100))
  {
    sub_1C43FECF0();
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v195 = v102;
    *v101 = 136315138;
    v103 = *(v98 + 16);
    v104 = *(v98 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44197C8();
    sub_1C4826CC8(v98, v105);
    v106 = sub_1C441D828(v103, v104, &v195);

    *(v101 + 4) = v106;
    _os_log_impl(&dword_1C43F8000, v99, v100, "GlobalKnowledgeDatabase: checkAndLoadAssets: skipping %s due to feature flag being disabled.", v101, 0xCu);
    sub_1C440962C(v102);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    sub_1C44197C8();
    sub_1C4826CC8(v98, v121);
  }

  sub_1C441B974();
  sub_1C443F1F0();
  v171();
  v200(v178, v183);
LABEL_34:
  sub_1C43FBC80();
}

uint64_t sub_1C4821434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
  v6[6] = swift_task_alloc();
  v7 = sub_1C4F00978();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4821550, 0, 0);
}

uint64_t sub_1C4821550(uint64_t a1)
{
  v34 = v1;
  v33[1] = *MEMORY[0x1E69E9840];
  sub_1C4F00148();
  sub_1C44131E4();
  sub_1C4826A58();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[8];
  v6 = v1[9];
  v7 = &unk_1C4F0C000;
  v9 = v1[6];
  v8 = v1[7];
  if (v4)
  {
    sub_1C43FECF0();
    v32 = v6;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 136315138;
    v12 = *v9;
    v13 = *(v9 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C442CAD8();
    sub_1C4826CC8(v9, v14);
    v15 = v12;
    v7 = &unk_1C4F0C000;
    v9 = sub_1C441D828(v15, v13, v33);

    *(v10 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v2, v3, "GlobalKnowledgeDatabase: checkAndLoadAssets: Calling sourceUpdated for %s", v10, 0xCu);
    sub_1C440962C(v11);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    (*(v5 + 8))(v32, v8);
  }

  else
  {

    sub_1C442CAD8();
    sub_1C4826CC8(v9, v16);
    (*(v5 + 8))(v6, v8);
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
  v18 = sub_1C4F01108();
  sub_1C43FBC98();
  v19 = sub_1C4F01108();
  v1[2] = 0;
  v20 = [v17 sourceUpdatedWithSourceType:v18 sourceIdentifier:v19 error:v1 + 2];

  v21 = v1[2];
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v23 = v21;
    v24 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v1[7], qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CE8();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v1[4];
      v27 = v1[5];
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440D148();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v9 = v7[458];
      *(v9 + 4) = sub_1C441D828(v28, v27, v33);
      _os_log_impl(&dword_1C43F8000, v25, v26, "GlobalKnowledgeDatabase: checkAndLoadAssets: Could not update state in view database for global Knowledge graph: %s", v9, 0xCu);
      sub_1C440962C(v29);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  sub_1C43FBDA0();

  return v30();
}

void sub_1C48218E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v90 = v20;
  v25 = v24;
  v87 = v26;
  type metadata accessor for StaticKnowledgeAssetMetadata(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v83 = sub_1C4EFFC28();
  sub_1C43FCDF8();
  v88 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  sub_1C4EFF548();
  sub_1C43FCDF8();
  v85 = v34;
  v86 = v33;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v89 = (v36 - v35);
  v37 = sub_1C456902C(&qword_1EC0BDCD0, &qword_1C4F31980);
  v38 = sub_1C43FBD18(v37);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v80 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v80 - v45;
  MEMORY[0x1EEE9AC00](v47);
  if ((*(v25 + 8) & 1) != 0 || *v25 < 1)
  {
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4F9C550);
    sub_1C4406F48();
    sub_1C4826A58();
    v53 = sub_1C4F01198();
    MEMORY[0x1C6940010](v53);

    v54 = v92;
    v55 = v93;
    v56 = sub_1C4826750();
    sub_1C43FFB2C(&unk_1F43EDD38, v56);
    *v57 = v54;
    *(v57 + 8) = v55;
    *(v57 + 16) = 0;
    swift_willThrow();
LABEL_11:
    sub_1C43FBC80();
    return;
  }

  v84 = *v25;
  v82 = &v80 - v48;
  v49 = v86;
  sub_1C440BAA8(&v80 - v48, 1, 1, v86);
  v81 = objc_autoreleasePoolPush();
  sub_1C4EF9938();
  if (v21)
  {
    objc_autoreleasePoolPop(v81);
LABEL_9:
    v60 = &qword_1EC0BDCD0;
    v61 = v82;
    goto LABEL_10;
  }

  v80 = v50;
  if (*(v25 + 40))
  {
    sub_1C4EF96B8();
    swift_allocObject();
    sub_1C4EF96A8();
    sub_1C4408AA8();
    sub_1C4826D20(v51, v52, MEMORY[0x1E69A9928]);
    sub_1C4405C4C();
    sub_1C4EF9698();
    v46 = v43;
  }

  else
  {
    sub_1C4EF9348();
    swift_allocObject();
    sub_1C4EF9338();
    sub_1C4408AA8();
    sub_1C4826D20(v58, v59, MEMORY[0x1E69A9928]);
    sub_1C4405C4C();
    sub_1C4EF9328();
  }

  v62 = sub_1C442BB94();
  sub_1C4434000(v62, v63);

  sub_1C440BAA8(v46, 0, 1, v49);
  sub_1C4826C04(v46, v82);
  objc_autoreleasePoolPop(v81);
  sub_1C44DDE2C();
  if (sub_1C44157D4(v40, 1, v49) == 1)
  {
    sub_1C4420C3C(v40, &qword_1EC0BDCD0, &qword_1C4F31980);
    v64 = sub_1C4826750();
    sub_1C43FFB2C(&unk_1F43EDD38, v64);
    *v65 = 0xD000000000000043;
    *(v65 + 8) = 0x80000001C4F9C5B0;
    *(v65 + 16) = 0;
    swift_willThrow();
    v61 = sub_1C4402E08();
LABEL_10:
    sub_1C4420C3C(v61, v60, &qword_1C4F31980);
    goto LABEL_11;
  }

  (*(v85 + 32))(v89, v40, v49);
  v91 = MEMORY[0x1E69E7CC8];
  v92 = MEMORY[0x1E69E7CC8];
  a10 = MEMORY[0x1E69E7CC8];
  v66 = sub_1C4EFF538();
  v67 = sub_1C4EFF4F8();
  v68 = sub_1C4821FAC(v66, v67);

  v69 = 0;
  v70 = *(v68 + 16);
  v71 = (v88 + 8);
  for (i = v83; ; (*v71)(v32, i))
  {
    if (v70 == v69)
    {

      v75 = v92;
      v76 = v87;
      v77 = v84;
      sub_1C4822EC4(v91, v87, v84, v92, a10);

      sub_1C482377C(v76, v75, v77);
      v78 = sub_1C4404388();
      v79(v78);

      goto LABEL_9;
    }

    if (v69 >= *(v68 + 16))
    {
      break;
    }

    sub_1C441C290();
    (*(v74 + 16))(v32, v68 + v73 + *(v74 + 72) * v69, i);
    sub_1C48220F8(v87, v89, v84, v32, &v92, &a10, &v91);
    ++v69;
  }

  __break(1u);
}

uint64_t sub_1C4821FAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v18 = v2;
  if (a2)
  {
    v4 = a2 + 64;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; v7; result = )
    {
      v11 = i;
LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(a2 + 56) + 8 * v13);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C48242D0(v15, v16, v17, &v18);
    }

    while (1)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return v18;
      }

      v7 = *(v4 + 8 * v11);
      ++i;
      if (v7)
      {
        i = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return v2;
  }

  return result;
}

uint64_t sub_1C48220F8(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, char **a7)
{
  v152 = a5;
  v145 = a7;
  v150 = a6;
  v136 = a1;
  v137 = a3;
  v149 = sub_1C4EFFC28();
  v146 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v142 = &v121 - v11;
  v139 = sub_1C4EFF548();
  v132 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v131 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4F00978();
  v134 = *(v13 - 8);
  v135 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1C4EFF8A8();
  v141 = *(v143 - 1);
  MEMORY[0x1EEE9AC00](v143);
  v133 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v140 = &v121 - v17;
  v147 = sub_1C4EFF0C8();
  v144 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v19 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v121 - v21;
  v23 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = (&v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v121 - v27;
  v29 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = (&v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v121 - v33;
  v151 = a2;
  v35 = v153;
  result = sub_1C4824A20(a2, a4, v152, &v121 - v33);
  if (v35)
  {
    return result;
  }

  v152 = v31;
  v128 = v25;
  v129 = v19;
  v130 = v22;
  v153 = v34;
  v37 = sub_1C4EFFC08();
  v39 = v38;
  v40 = sub_1C4EFFBD8();
  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  sub_1C4825258(v151, a4, v37, v39, v42, v43, v150, v28);
  v127 = v42;
  v150 = v37;
  v44 = v152;
  sub_1C44DDE2C();
  v45 = v147;
  v46 = sub_1C44157D4(v44, 1, v147);
  v126 = v28;
  v125 = 0;
  if (v46 == 1)
  {
    v47 = v43;
    v48 = v39;
    sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v123 = a4;
    v124 = v43;
    v49 = v144;
    v50 = v130;
    (*(v144 + 32))(v130, v44, v45);
    v51 = v128;
    sub_1C44DDE2C();
    v28 = v143;
    v52 = sub_1C44157D4(v51, 1, v143);
    v53 = v45;
    if (v52 != 1)
    {
      v152 = v39;
      v74 = v140;
      v75 = v141;
      v76 = v53;
      (*(v141 + 32))(v140, v51, v28);
      v77 = v138;
      sub_1C4F00148();
      v78 = v132;
      v79 = v131;
      (*(v132 + 16))(v131, v151, v139);
      (*(v49 + 16))(v129, v50, v76);
      v80 = v133;
      (*(v75 + 16))(v133, v74, v28);
      v81 = sub_1C4F00968();
      v82 = sub_1C4F01CC8();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v154 = v148;
        *v83 = 136315650;
        v128 = v81;
        HIDWORD(v122) = v82;
        v84 = sub_1C4EFF528();
        v85 = v79;
        v87 = v86;
        (*(v78 + 8))(v85, v139);
        v88 = v28;
        v89 = sub_1C441D828(v84, v87, &v154);

        *(v83 + 4) = v89;
        *(v83 + 12) = 2080;
        sub_1C4826D20(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
        v90 = v129;
        v91 = v147;
        v92 = sub_1C4F02858();
        v94 = v93;
        v151 = *(v144 + 8);
        v151(v90, v91);
        v95 = sub_1C441D828(v92, v94, &v154);

        *(v83 + 14) = v95;
        *(v83 + 22) = 2080;
        sub_1C4826D20(&qword_1EC0BDAB8, MEMORY[0x1E69A99E8], MEMORY[0x1E69A9A18]);
        v96 = sub_1C4F02858();
        v98 = v97;
        v44 = *(v75 + 8);
        (v44)(v80, v88);
        v99 = sub_1C441D828(v96, v98, &v154);

        *(v83 + 24) = v99;
        v100 = v128;
        _os_log_impl(&dword_1C43F8000, v128, BYTE4(v122), "GlobalKnowledgeDatabase %s: flushing triples for %s : %s to database", v83, 0x20u);
        v101 = v148;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v101, -1, -1);
        MEMORY[0x1C6942830](v83, -1, -1);

        (*(v134 + 8))(v138, v135);
        v61 = v149;
        v48 = v91;
      }

      else
      {

        v102 = v79;
        v44 = *(v75 + 8);
        (v44)(v80, v28);
        v48 = v147;
        v151 = *(v144 + 8);
        v151(v129, v147);
        (*(v78 + 8))(v102, v139);
        (*(v134 + 8))(v77, v135);
        v61 = v149;
      }

      v54 = v150;
      v47 = v146;
      v103 = *v145;
      v104 = v123;
      if (*(*v145 + 2) && (v105 = sub_1C457EB3C(), (v106 & 1) != 0))
      {
        v28 = *(*(v103 + 7) + 8 * v105);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      (*(v47 + 16))(v142, v104, v61);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }

    v47 = v124;
    v48 = v39;
    (*(v49 + 8))(v50, v53);
    sub_1C4420C3C(v51, &qword_1EC0B9A10, &qword_1C4F107C0);
    a4 = v123;
  }

  v54 = v146;
  (*(v146 + 16))(v148, a4, v149);
  v55 = v145;
  swift_isUniquelyReferenced_nonNull_native();
  v154 = *v55;
  v56 = v154;
  v57 = sub_1C457EB3C();
  v59 = *(v56 + 16);
  v60 = (v58 & 1) == 0;
  v61 = v59 + v60;
  if (__OFADD__(v59, v60))
  {
    __break(1u);
LABEL_36:
    sub_1C458DA58(0, *(v28 + 2) + 1, 1, v28);
    v28 = v119;
LABEL_29:
    v108 = *(v28 + 2);
    v107 = *(v28 + 3);
    if (v108 >= v107 >> 1)
    {
      sub_1C458DA58(v107 > 1, v108 + 1, 1, v28);
      v28 = v120;
    }

    *(v28 + 2) = v108 + 1;
    (*(v47 + 32))(&v28[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v108], v142, v61);
    v109 = v130;
    v110 = v140;
    v111 = v125;
    sub_1C4825E78(v136, v137, v130, v140, v28, v112, v113, v114, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
    if (!v111)
    {

      sub_1C45926FC(v54, v152, v127, v124, v115, v116, v117, v118, v121, v122);
    }

    (v44)(v110, v143);
    v151(v109, v48);
    sub_1C4420C3C(v126, &qword_1EC0B9A10, &qword_1C4F107C0);
    return sub_1C4420C3C(v153, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v62 = v57;
  v63 = v58;
  sub_1C456902C(&qword_1EC0B8DC0, &qword_1C4F0E358);
  if (sub_1C4F02458())
  {
    v64 = v127;
    v65 = sub_1C457EB3C();
    if ((v63 & 1) != (v66 & 1))
    {
      result = sub_1C4F029F8();
      __break(1u);
      return result;
    }

    v62 = v65;
  }

  else
  {
    v64 = v127;
  }

  v67 = v154;
  *v55 = v154;
  if (v63)
  {
  }

  else
  {
    sub_1C457E444(v62, v150, v48, v64, v47, MEMORY[0x1E69E7CC0], v67);
  }

  v68 = v153;
  v69 = v148;
  v70 = v149;
  v71 = *(v67 + 56) + 8 * v62;
  sub_1C4589324();
  v72 = *(*v71 + 16);
  sub_1C4589EBC();
  sub_1C4420C3C(v126, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v68, &unk_1EC0BA0E0, &qword_1C4F105A0);
  v73 = *v71;
  *(v73 + 16) = v72 + 1;
  return (v54[4])(v73 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v54[9] * v72, v69, v70);
}

uint64_t sub_1C4822EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v81 = a4;
  v73 = a3;
  v72 = a2;
  v6 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v67 - v7;
  v74 = sub_1C4EFF8A8();
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v67 - v12;
  v13 = sub_1C4EFF0C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&qword_1EC0BDCF8, &qword_1C4F319A8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v78 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v67 - v20;
  v21 = (a1 + 64);
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 64);
  v82 = (v22 + 63) >> 6;
  v77 = (v14 + 32);
  v69 = (v8 + 32);
  v70 = (v8 + 8);
  v79 = (v14 + 8);
  v84 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = 0;
  v68 = (a1 + 64);
  v89 = v16;
  v90 = v13;
  v71 = v10;
  while (v24)
  {
    v27 = v26;
    v28 = v83;
LABEL_10:
    v29 = __clz(__rbit64(v24)) | (v27 << 6);
    v30 = *(v84 + 48) + 32 * v29;
    v31 = *(v30 + 8);
    v32 = *(v30 + 24);
    v33 = *(*(v84 + 56) + 8 * v29);
    sub_1C48685BC(v33, v28);
    v34 = sub_1C4EFFC28();
    v35 = sub_1C44157D4(v28, 1, v34);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v35 == 1)
    {
      sub_1C4420C3C(v28, &qword_1EC0BDCF8, &qword_1C4F319A8);
      sub_1C4826750();
      swift_allocError();
      *v58 = 0xD000000000000040;
      *(v58 + 8) = 0x80000001C4F9C600;
      *(v58 + 16) = 0;
      swift_willThrow();

      goto LABEL_23;
    }

    v86 = v31;
    v36 = v28;
    v94 = v33;
    v88 = v32;
    v37 = sub_1C4EFFC08();
    v39 = v38;
    v40 = *(*(v34 - 8) + 8);
    v40(v36, v34);
    v41 = v80;
    v85 = v37;
    v87 = v39;
    v42 = v39;
    v43 = v90;
    sub_1C465C294(v37, v42, v81);
    if (sub_1C44157D4(v41, 1, v43) == 1)
    {
      sub_1C4420C3C(v41, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000040, 0x80000001C4F9C650);
      MEMORY[0x1C6940010](v85, v87);

      v59 = v92;
      v60 = v93;
      sub_1C4826750();
      swift_allocError();
      *v61 = v59;
      *(v61 + 8) = v60;
      *(v61 + 16) = 0;
      swift_willThrow();
      goto LABEL_27;
    }

    (*v77)(v89, v41, v43);
    v44 = v78;
    sub_1C48685BC(v94, v78);
    if (sub_1C44157D4(v44, 1, v34) == 1)
    {

      sub_1C4420C3C(v44, &qword_1EC0BDCF8, &qword_1C4F319A8);
      v62 = v89;
LABEL_22:
      sub_1C4826750();
      swift_allocError();
      *v63 = 0xD000000000000048;
      *(v63 + 8) = 0x80000001C4F9C6A0;
      *(v63 + 16) = 0;
      swift_willThrow();
      (*v79)(v62, v43);

LABEL_23:

      goto LABEL_28;
    }

    v45 = v91;
    sub_1C4EFFBD8();
    v47 = v46;
    v40(v44, v34);
    if (!v47)
    {

      v62 = v89;
      v43 = v90;
      goto LABEL_22;
    }

    v48 = v87;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = v75;
    v50 = v85;
    sub_1C465C8A8(v76, v75);

    v51 = v74;
    v52 = sub_1C44157D4(v49, 1, v74);
    v53 = v89;
    if (v52 == 1)
    {
      sub_1C4420C3C(v49, &qword_1EC0B9A10, &qword_1C4F107C0);
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000045, 0x80000001C4F9C6F0);
      MEMORY[0x1C6940010](v50, v48);

      v64 = v92;
      v65 = v93;
      sub_1C4826750();
      swift_allocError();
      *v66 = v64;
      *(v66 + 8) = v65;
      *(v66 + 16) = 0;
      swift_willThrow();
      (*v79)(v53, v90);
LABEL_27:

LABEL_28:
    }

    v54 = v71;
    (*v69)(v71, v49, v51);
    sub_1C4825E78(v72, v73, v53, v54, v94, v55, v56, v57, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
    if (v45)
    {
      (*v70)(v54, v51);
      (*v79)(v53, v90);
      goto LABEL_27;
    }

    v91 = 0;
    v24 &= v24 - 1;
    (*v70)(v54, v51);
    (*v79)(v53, v90);

    v26 = v27;
    v21 = v68;
  }

  v28 = v83;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v82)
    {
    }

    v24 = v21[v27];
    ++v26;
    if (v24)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C482377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v70 = a1;
  v4 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = v61 - v5;
  v94 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v6 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v69 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = v61 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v78 = v61 - v11;
  v12 = sub_1C4EFF0C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v81 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = v61 - v16;
  v17 = sub_1C456902C(&qword_1EC0BDCD8, &qword_1C4F31988);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v73 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = v61 - v20;
  v21 = a2 + 64;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a2 + 64);
  v61[0] = (v22 + 63) >> 6;
  v61[1] = v13 + 16;
  v74 = (v13 + 32);
  v77 = (v6 + 8);
  v63 = v13;
  v68 = (v13 + 8);
  v64 = a2;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = 0;
  v67 = xmmword_1C4F0CE60;
  v66 = xmmword_1C4F0D130;
  v79 = v12;
  v65 = a2 + 64;
  if (v24)
  {
    while (1)
    {
      v27 = v26;
LABEL_10:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = v29 | (v27 << 6);
      v31 = (*(v64 + 48) + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = v63;
      v35 = v62;
      (*(v63 + 16))(v62, *(v64 + 56) + *(v63 + 72) * v30, v12);
      v36 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
      v37 = v12;
      v38 = v36;
      v39 = *(v36 + 48);
      v40 = v73;
      *v73 = v32;
      *(v40 + 1) = v33;
      v41 = v40;
      (*(v34 + 32))(&v40[v39], v35, v37);
      sub_1C440BAA8(v41, 0, 1, v38);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_11:
      v42 = v72;
      sub_1C44CDA7C();
      v43 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
      if (sub_1C44157D4(v42, 1, v43) == 1)
      {
      }

      v44 = *(v42 + 1);
      v84 = *v42;
      v76 = v44;
      (*v74)(v81, &v42[*(v43 + 48)], v79);
      type metadata accessor for StaticKnowledgeTriple(0);
      v89 = &type metadata for StaticGlobalKnowledgeTripleColumn;
      v45 = sub_1C4826B5C();
      v90 = v45;
      LOBYTE(v88) = 0;
      v87 = MEMORY[0x1E69A01C8];
      v86 = MEMORY[0x1E69E7360];
      v85[0] = v71;
      v46 = sub_1C4EFB298();
      v92 = v46;
      v75 = v46;
      v47 = MEMORY[0x1E699FE60];
      v93 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v91);
      sub_1C4EFBB28();
      sub_1C4420C3C(v85, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(&v88);
      sub_1C4826D20(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55330);
      v48 = v69;
      sub_1C4EFAE28();
      sub_1C440962C(v91);
      v89 = &type metadata for StaticGlobalKnowledgeTripleColumn;
      v90 = v45;
      LOBYTE(v88) = 5;
      v86 = MEMORY[0x1E69E6158];
      v87 = MEMORY[0x1E69A0130];
      v85[0] = v84;
      v85[1] = v76;
      v92 = v46;
      v93 = v47;
      sub_1C4422F90(v91);
      sub_1C4EFBB28();
      sub_1C4420C3C(v85, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(&v88);
      v76 = sub_1C4401CBC(&qword_1EC0BDCE8, &qword_1EC0BDCB8, &qword_1C4F3F1C0, MEMORY[0x1E699FF70]);
      v49 = v94;
      sub_1C4EFB438();
      v84 = *v77;
      v84(v48, v49);
      sub_1C440962C(v91);
      sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      sub_1C4EFEEF8();
      v50 = swift_allocObject();
      *(v50 + 16) = v67;
      sub_1C4EFEBF8();
      sub_1C4EFECB8();
      v85[0] = v50;
      v92 = &type metadata for StaticGlobalKnowledgeTripleColumn;
      v93 = v45;
      LOBYTE(v91[0]) = 2;
      v51 = v75;
      v89 = v75;
      v90 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v88);
      sub_1C456902C(&qword_1EC0BDCF0, &qword_1C4F319A0);
      sub_1C4401CBC(&qword_1EDDDBD48, &qword_1EC0BDCF0, &qword_1C4F319A0, MEMORY[0x1E69E6328]);
      sub_1C4826D20(&unk_1EDDFA1D8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9690]);
      v52 = v80;
      sub_1C4F01458();
      v53 = v94;

      sub_1C440962C(v91);
      v92 = v51;
      v93 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v91);
      sub_1C4EFB828();
      sub_1C440962C(&v88);
      v54 = v82;
      sub_1C4EFB438();
      v84(v54, v53);
      sub_1C440962C(v91);
      v55 = sub_1C4EFBF38();
      sub_1C440BAA8(v52, 1, 1, v55);
      sub_1C456902C(&qword_1EC0BDCC8, &qword_1C4F31978);
      sub_1C4EFB4E8();
      v56 = v81;
      *(swift_allocObject() + 16) = v66;
      LOBYTE(v88) = 5;
      v57 = sub_1C4EFF048();
      v92 = MEMORY[0x1E69E6158];
      v93 = MEMORY[0x1E69A0130];
      v91[0] = v57;
      v91[1] = v58;
      sub_1C4826C74();
      sub_1C4EFB568();
      sub_1C4420C3C(v91, &qword_1EC0C5040, &qword_1C4F0F950);
      v59 = v83;
      sub_1C4EFB8A8();
      v83 = v59;
      if (v59)
      {
        break;
      }

      sub_1C4420C3C(v80, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v84(v78, v94);
      v12 = v79;
      result = (*v68)(v56, v79);
      v21 = v65;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    sub_1C4420C3C(v80, &unk_1EC0BCAB0, &unk_1C4F111A0);
    v84(v78, v94);
    return (*v68)(v56, v79);
  }

  else
  {
LABEL_5:
    v28 = v73;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v61[0])
      {
        v60 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
        sub_1C440BAA8(v28, 1, 1, v60);
        v24 = 0;
        goto LABEL_11;
      }

      v24 = *(v21 + 8 * v27);
      ++v26;
      if (v24)
      {
        v26 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C48242D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(a3 + 48) + 16 * (v13 | (v12 << 6)));
      v15 = *v14;
      v16 = v14[1];
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C481DD60(v17, a4, v15, v16, a1, a2);

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C48244D0(a1, a2);
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    sub_1C443D664();
    inited = v23;
    v23[2] = 2;
    v23[6] = v21;
    v23[7] = v22;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C481DF78(inited, a4, a1, a2);
}

void sub_1C48244D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F00DD8();
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4F00DC8();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = sub_1C4F01188();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F01178();
  v14 = sub_1C4F01148();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  if (v16 >> 60 != 15)
  {
    sub_1C4826D20(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    sub_1C44344B8(v14, v16);
    sub_1C4498FD8(v14, v16, v4);
    v37 = v16;
    v38 = v14;
    sub_1C441DFEC(v14, v16);
    sub_1C4F00DA8();
    (*(v43 + 8))(v4, v2);
    v17 = v39;
    (*(v39 + 16))(v42, v9, v5);
    sub_1C4826D20(&qword_1EC0BDD00, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
    sub_1C4F01478();
    v18 = v45;
    v43 = v44;
    v42 = *(v44 + 16);
    v19 = v5;
    v20 = v17;
    v21 = v9;
    v22 = MEMORY[0x1E69E7CC0];
    if (v45 == v42)
    {
LABEL_3:
      (*(v20 + 8))(v21, v19);

      v44 = v22;
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
      v23 = sub_1C4F01048();
      v25 = v24;

      v44 = 3826291;
      v45 = 0xE300000000000000;
      MEMORY[0x1C6940010](v23, v25);

      sub_1C441DFEC(v38, v37);
    }

    else
    {
      v41 = v43 + 32;
      v40 = xmmword_1C4F0D130;
      v26 = v45;
      while ((v18 & 0x8000000000000000) == 0)
      {
        if (v26 >= *(v43 + 16))
        {
          goto LABEL_15;
        }

        v27 = v26[v41];
        sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
        v28 = swift_allocObject();
        *(v28 + 16) = v40;
        *(v28 + 56) = MEMORY[0x1E69E7508];
        *(v28 + 64) = MEMORY[0x1E69E7558];
        *(v28 + 32) = v27;
        v29 = sub_1C4F01168();
        v31 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C443D664();
          v22 = v34;
        }

        v32 = *(v22 + 16);
        if (v32 >= *(v22 + 24) >> 1)
        {
          sub_1C443D664();
          v22 = v35;
        }

        ++v26;
        *(v22 + 16) = v32 + 1;
        v33 = v22 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v31;
        if (v42 == v26)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }
}

uint64_t sub_1C4824A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v73 = a1;
  v6 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v68 - v7;
  v81 = sub_1C4EFD548();
  v74 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFFC28();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4F00978();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v68 - v14;
  v16 = sub_1C4EFEEF8();
  v85 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v83 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v68 - v19;
  v20 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  v26 = sub_1C4EFF0C8();
  v27 = a4;
  sub_1C440BAA8(a4, 1, 1, v26);
  v28 = a2;
  v29 = sub_1C4EFFC08();
  v30 = *v86;
  sub_1C465C294(v29, v31, *v86);

  LODWORD(a4) = sub_1C44157D4(v25, 1, v26);
  sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
  if (a4 == 1)
  {
    v70 = v27;
    v71 = v22;
    v32 = sub_1C4EFFC18();
    MEMORY[0x1C693D840](v32);
    if (sub_1C44157D4(v15, 1, v16) == 1)
    {
      return sub_1C4420C3C(v15, &qword_1EC0B9A08, &unk_1C4F107B0);
    }

    else
    {
      v36 = v28;
      v38 = v84;
      v37 = v85;
      (*(v85 + 32))(v84, v15, v16);
      v39 = v83;
      sub_1C4EFEBB8();
      v40 = sub_1C44DBB50(v38, v39);
      v43 = *(v37 + 8);
      v41 = v37 + 8;
      v42 = v43;
      (v43)(v39, v16);
      if (v40)
      {
        v83 = v42;
        v44 = v82;
        sub_1C4F00148();
        v46 = v75;
        v45 = v76;
        v47 = v77;
        (*(v76 + 16))(v75, v36, v77);
        v48 = sub_1C4F00968();
        v49 = sub_1C4F01CC8();
        v50 = os_log_type_enabled(v48, v49);
        v69 = v16;
        v85 = v41;
        if (v50)
        {
          v51 = v47;
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v87 = v53;
          *v52 = 136315138;
          v54 = sub_1C4EFFC08();
          v55 = v45;
          v57 = v56;
          (*(v55 + 8))(v46, v51);
          v58 = sub_1C441D828(v54, v57, &v87);

          *(v52 + 4) = v58;
          _os_log_impl(&dword_1C43F8000, v48, v49, "GlobalKnowledgeDatabase: found isA triple for %s", v52, 0xCu);
          sub_1C440962C(v53);
          MEMORY[0x1C6942830](v53, -1, -1);
          MEMORY[0x1C6942830](v52, -1, -1);

          (*(v78 + 8))(v82, v79);
        }

        else
        {

          (*(v45 + 8))(v46, v47);
          (*(v78 + 8))(v44, v79);
        }

        v59 = v70;
        sub_1C4EFFBF8();
        v60 = v80;
        sub_1C4EFD2E8();
        v61 = v81;
        if (sub_1C44157D4(v60, 1, v81) == 1)
        {
          sub_1C4420C3C(v60, &qword_1EC0B8568, &unk_1C4F319B0);
          v62 = sub_1C4EFFBF8();
          v64 = v63;
          sub_1C4826750();
          swift_allocError();
          *v65 = v62;
          *(v65 + 8) = v64;
          *(v65 + 16) = 2;
          swift_willThrow();
          v83(v84, v69);
          return sub_1C4420C3C(v59, &unk_1EC0BA0E0, &qword_1C4F105A0);
        }

        else
        {
          v66 = v74;
          v67 = v72;
          (*(v74 + 32))(v72, v60, v61);
          sub_1C4EFFC08();
          sub_1C4EFF508();

          sub_1C4420C3C(v59, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C44CDA7C();
          sub_1C4EFFC08();
          sub_1C44DDE2C();
          sub_1C4C80730();
          (*(v66 + 8))(v67, v61);
          return (v83)(v84, v69);
        }
      }

      else
      {
        return (v42)(v38, v16);
      }
    }
  }

  else
  {
    v34 = sub_1C4EFFC08();
    sub_1C465C294(v34, v35, v30);

    sub_1C4420C3C(v27, &unk_1EC0BA0E0, &qword_1C4F105A0);
    return sub_1C44CDA7C();
  }
}

uint64_t sub_1C4825258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v127 = a5;
  v128 = a6;
  v125 = a2;
  v105 = a1;
  v12 = sub_1C4EFF8A8();
  v122 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v110 = &v99 - v15;
  v111 = sub_1C4EFD548();
  v104 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v103 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1C4EFFC28();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v115 = (&v99 - v19);
  v20 = sub_1C4EFEEF8();
  v116 = *(v20 - 8);
  v117 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v99 - v23;
  v24 = sub_1C4F00978();
  v119 = *(v24 - 8);
  v120 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v113 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v99 - v27;
  v28 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v124 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v99 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v99 - v34;
  v36 = a8;
  sub_1C440BAA8(a8, 1, 1, v12);
  v123 = a7;
  v37 = *a7;
  v38 = a3;
  v39 = a4;
  v40 = v127;
  v41 = v128;
  sub_1C465C8A8(v37, v35);
  v126 = v12;
  LODWORD(v12) = sub_1C44157D4(v35, 1, v12);
  sub_1C4420C3C(v35, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (v12 != 1)
  {
    sub_1C465C8A8(v37, v32);
    sub_1C4420C3C(v36, &qword_1EC0B9A10, &qword_1C4F107C0);
    return sub_1C44CDA7C();
  }

  v101 = v32;
  v106 = v38;
  v102 = v39;
  v42 = v41;
  v43 = v36;
  sub_1C4EFFBD8();
  if (v44)
  {

    v45 = sub_1C4EFFBD8();
    v47 = v40;
    v48 = v102;
    v49 = v106;
    if (v46)
    {
      v50 = v45;
      v51 = v46;
      v52 = sub_1C4EFFBE8();
      if (v53)
      {
        v118 = v51;
        v54 = v115;
        MEMORY[0x1C693D840](v52);
        v55 = v117;
        if (sub_1C44157D4(v54, 1, v117) == 1)
        {

          sub_1C4420C3C(v54, &qword_1EC0B9A08, &unk_1C4F107B0);
        }

        else
        {
          v100 = v50;
          v62 = v116;
          v63 = v114;
          (*(v116 + 32))(v114, v54, v55);
          v64 = v112;
          sub_1C4EFEBB8();
          v65 = v55;
          v66 = sub_1C44DBB50(v63, v64);
          v69 = *(v62 + 8);
          v68 = v62 + 8;
          v67 = v69;
          (v69)(v64, v65);
          if (v66)
          {
            v115 = v67;
            v116 = v68;
            sub_1C4F00148();
            v70 = v108;
            v71 = v107;
            v72 = v109;
            (*(v108 + 16))(v107, v125, v109);
            v73 = v118;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v74 = sub_1C4F00968();
            v75 = sub_1C4F01CC8();

            LODWORD(v112) = v75;
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v129 = v77;
              *v76 = 136315394;
              v99 = v74;
              v78 = sub_1C4EFFC08();
              v80 = v79;
              (*(v70 + 8))(v71, v72);
              v81 = sub_1C441D828(v78, v80, &v129);

              *(v76 + 4) = v81;
              *(v76 + 12) = 2080;
              *(v76 + 14) = sub_1C441D828(v100, v73, &v129);
              v82 = v99;
              _os_log_impl(&dword_1C43F8000, v99, v112, "GlobalKnowledgeDatabase: found relationship isA triple for %s : %s", v76, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1C6942830](v77, -1, -1);
              v83 = v76;
              v48 = v102;
              MEMORY[0x1C6942830](v83, -1, -1);
            }

            else
            {

              (*(v70 + 8))(v71, v72);
            }

            (*(v119 + 8))(v113, v120);
            v42 = v128;
            sub_1C4EFFBF8();
            v84 = v110;
            sub_1C4EFD2E8();
            v85 = v111;
            v86 = sub_1C44157D4(v84, 1, v111);
            v49 = v106;
            if (v86 == 1)
            {

              sub_1C4420C3C(v84, &qword_1EC0B8568, &unk_1C4F319B0);
              v87 = sub_1C4EFFBF8();
              v89 = v88;
              sub_1C4826750();
              swift_allocError();
              *v90 = v87;
              *(v90 + 8) = v89;
              *(v90 + 16) = 2;
              swift_willThrow();
              v115(v114, v117);
              return sub_1C4420C3C(v43, &qword_1EC0B9A10, &qword_1C4F107C0);
            }

            v91 = v84;
            v92 = v104;
            v93 = v103;
            (*(v104 + 32))(v103, v91, v85);
            sub_1C4EFFC08();
            sub_1C4EFF518();

            (*(v92 + 8))(v93, v111);
            v115(v114, v117);
            sub_1C4420C3C(v43, &qword_1EC0B9A10, &qword_1C4F107C0);
            sub_1C44CDA7C();
            v47 = v127;
          }

          else
          {
            (v67)(v63, v65);

            v47 = v127;
            v42 = v128;
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v57 = v118;
    sub_1C4F00148();
    v58 = sub_1C4F00968();
    v59 = sub_1C4F01CC8();
    v47 = v40;
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1C43F8000, v58, v59, "GlobalKnowledgeDatabase: relationship identifier is null", v60, 2u);
      MEMORY[0x1C6942830](v60, -1, -1);
    }

    (*(v119 + 8))(v57, v120);
    v61 = v101;
    sub_1C4EFF888();
    sub_1C4420C3C(v43, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C440BAA8(v61, 0, 1, v126);
    sub_1C44CDA7C();
    v48 = v102;
    v49 = v106;
  }

  v94 = v124;
  sub_1C44DDE2C();
  v95 = v126;
  if (sub_1C44157D4(v94, 1, v126) == 1)
  {
    return sub_1C4420C3C(v94, &qword_1EC0B9A10, &qword_1C4F107C0);
  }

  v97 = v121;
  v96 = v122;
  (*(v122 + 32))(v121, v94, v95);
  v98 = v101;
  (*(v96 + 16))(v101, v97, v95);
  sub_1C440BAA8(v98, 0, 1, v95);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C80EAC(v98, v49, v48, v47, v42);
  return (*(v96 + 8))(v97, v95);
}

void sub_1C4825E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v126 = v23;
  v118 = v24;
  v26 = v25;
  v116 = v27;
  v115 = type metadata accessor for StaticKnowledgeTriple(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v130 = (v30 - v29);
  v31 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v32 = sub_1C43FBD18(v31);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v121 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  v123 = v35;
  sub_1C43FBE44();
  v36 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v127 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  v114 = v39;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  sub_1C43FCE30(v41);
  v129 = sub_1C4EFFC28();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  v45 = v44 - v43;
  v46 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBCC4();
  v52 = v51 - v50;
  v124 = sub_1C4F00978();
  sub_1C43FCDF8();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBCC4();
  v58 = v57 - v56;
  sub_1C4F00148();
  v59 = v52;
  v117 = v26;
  v113 = *(v48 + 16);
  v113(v52, v26, v46);
  v60 = v126;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v122 = v58;
  v61 = sub_1C4F00968();
  v62 = sub_1C4F01CC8();
  if (os_log_type_enabled(v61, v62))
  {
    sub_1C440F274();
    sub_1C440D148();
    v119 = swift_slowAlloc();
    a10 = v119;
    *v62 = 134218243;
    *(v62 + 4) = *(v126 + 16);

    *(v62 + 12) = 2081;
    sub_1C4826D20(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
    v111 = v61;
    v109 = sub_1C4F02858();
    v64 = v63;
    (*(v48 + 8))(v59, v46);
    v65 = sub_1C441D828(v109, v64, &a10);

    *(v62 + 14) = v65;
    _os_log_impl(&dword_1C43F8000, v111, v62, "GlobalKnowledgeDatabase: insertTriples: %ld triples for %{private}s", v62, 0x16u);
    sub_1C440962C(v119);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    (*(v48 + 8))(v59, v46);
  }

  (*(v54 + 8))(v122, v124);
  v66 = 0;
  v125 = *(v126 + 16);
  v67 = (v127 + 32);
  v112 = (v127 + 16);
  v120 = (v127 + 8);
  v110 = (v127 + 32);
  while (v125 != v66)
  {
    sub_1C441C290();
    (*(v69 + 16))(v45, v60 + v68 + *(v69 + 72) * v66, v129);
    v70 = sub_1C4EFFC18();
    MEMORY[0x1C693D840](v70);
    if (sub_1C44157D4(v123, 1, v36) == 1)
    {
      sub_1C4420C3C(v123, &qword_1EC0B9A08, &unk_1C4F107B0);
      v89 = sub_1C4EFFC18();
      v91 = v90;
      v92 = sub_1C4826750();
      v93 = sub_1C43FFB2C(&unk_1F43EDD38, v92);
      *v94 = v89;
      v94[1] = v91;
      sub_1C447F0D0(v93, v94);
LABEL_21:
      v106 = sub_1C4426B60();
      v107(v106);
      break;
    }

    v128 = v66;
    v71 = *v67;
    v72 = sub_1C442BB94();
    v71(v72);
    v73 = sub_1C4EFFBE8();
    if (!v74)
    {
      v73 = 0;
      v74 = 0xE000000000000000;
    }

    MEMORY[0x1C693D840](v73, v74);
    if (sub_1C44157D4(v121, 1, v36) == 1)
    {
      sub_1C4420C3C(v121, &qword_1EC0B9A08, &unk_1C4F107B0);
      v95 = sub_1C4EFFBE8();
      if (v96)
      {
        v97 = v95;
      }

      else
      {
        v97 = 0;
      }

      if (v96)
      {
        v98 = v96;
      }

      else
      {
        v98 = 0xE000000000000000;
      }

      v99 = sub_1C4826750();
      v100 = sub_1C43FFB2C(&unk_1F43EDD38, v99);
      *v101 = v97;
      v101[1] = v98;
      sub_1C447F0D0(v100, v101);
      v102 = sub_1C43FE990();
      v103(v102);
      goto LABEL_21;
    }

    v75 = sub_1C442BB94();
    v71(v75);
    v113(&v130[v115[5]], v117, v46);
    v76 = *v112;
    (*v112)(&v130[v115[6]], v108, v36);
    v77 = v115[7];
    sub_1C4EFF8A8();
    sub_1C43FBCE0();
    (*(v78 + 16))(&v130[v77], v118);
    v76(&v130[v115[8]], v114, v36);
    v79 = sub_1C4EFFBF8();
    v81 = v80;
    sub_1C4EFFBC8();
    *v130 = v116;
    v82 = &v130[v115[9]];
    *v82 = v79;
    v82[1] = v81;
    *&v130[v115[10]] = v83;
    sub_1C440E2E8();
    sub_1C4826D20(&qword_1EDDE3258, v84, &unk_1C4F55278);
    sub_1C4EFB6C8();
    if (v20)
    {
      sub_1C43FF03C();
      v104 = *v120;
      (*v120)(v114, v36);
      v105 = sub_1C43FE990();
      (v104)(v105);
      goto LABEL_21;
    }

    sub_1C43FF03C();
    v85 = *v120;
    (*v120)(v114, v36);
    v86 = sub_1C43FE990();
    (v85)(v86);
    v87 = sub_1C4426B60();
    v88(v87);
    v66 = v128 + 1;
    v60 = v126;
    v67 = v110;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4826670(uint64_t a1)
{
  v2 = sub_1C4EFF288();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFF2A8();
  (*(v3 + 16))(v5, a1, v2);
  return sub_1C4EFF298();
}

unint64_t sub_1C4826750()
{
  result = qword_1EDDE2028[0];
  if (!qword_1EDDE2028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE2028);
  }

  return result;
}

unint64_t sub_1C48267A4()
{
  result = qword_1EDDE2008;
  if (!qword_1EDDE2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2008);
  }

  return result;
}

uint64_t sub_1C482681C(uint64_t a1)
{
  v3 = type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
  sub_1C43FCF7C(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  v13 = sub_1C43FCF54(v12);
  *v13 = v14;
  v13[1] = sub_1C46A1150;

  return sub_1C4821434(a1, v7, v8, v1 + v5, v10, v11);
}

unint64_t sub_1C4826968()
{
  result = qword_1EDDE2020;
  if (!qword_1EDDE2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2020);
  }

  return result;
}

uint64_t sub_1C48269BC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BDC90, &qword_1C4F31958);
    sub_1C4826D20(a2, type metadata accessor for StaticKnowledgeAssetMetadataInManifest, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4826A58()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

unint64_t sub_1C4826AB0()
{
  result = qword_1EDDFA9A8;
  if (!qword_1EDDFA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9A8);
  }

  return result;
}

uint64_t sub_1C4826B04()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

unint64_t sub_1C4826B5C()
{
  result = qword_1EDDF1430;
  if (!qword_1EDDF1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1430);
  }

  return result;
}

unint64_t sub_1C4826BB0()
{
  result = qword_1EDDFA9C8;
  if (!qword_1EDDFA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9C8);
  }

  return result;
}

uint64_t sub_1C4826C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDCD0, &qword_1C4F31980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4826C74()
{
  result = qword_1EDDF1450;
  if (!qword_1EDDF1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1450);
  }

  return result;
}

uint64_t sub_1C4826CC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4826D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C4826D68()
{
  result = qword_1EC0BDD08;
  if (!qword_1EC0BDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD08);
  }

  return result;
}

_BYTE *sub_1C4826DD8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C4826E88()
{
  result = qword_1EC0BDD10;
  if (!qword_1EC0BDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD10);
  }

  return result;
}

unint64_t sub_1C4826EE0()
{
  result = qword_1EC0BDD18;
  if (!qword_1EC0BDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD18);
  }

  return result;
}

unint64_t sub_1C4826F38()
{
  result = qword_1EDDE1FF8;
  if (!qword_1EDDE1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1FF8);
  }

  return result;
}

unint64_t sub_1C4826F90()
{
  result = qword_1EDDE2010;
  if (!qword_1EDDE2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2010);
  }

  return result;
}

unint64_t sub_1C4826FE8()
{
  result = qword_1EDDE2018;
  if (!qword_1EDDE2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2018);
  }

  return result;
}

uint64_t sub_1C482707C(void *a1, uint64_t a2, void *a3)
{
  v16 = 0;
  v15[2] = &v16;
  v15[3] = &v17;

  sub_1C4418704(a2, v15, v7, v8, v9, v10, v11, v12, v15[0], v15[1]);

  if (!v4 && v16 == 1)
  {
    sub_1C4B6E134((v3 + *a3), 1);
    sub_1C4778114();
    swift_allocError();
    *v14 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C4827160()
{
  sub_1C456902C(&qword_1EC0BDD20, qword_1C4F31D00);
  swift_allocObject();
  result = sub_1C4CE5338();
  qword_1EDE2DFB0 = result;
  return result;
}

unint64_t GlobalKnowledgeDatabase.description.getter()
{
  sub_1C4F02248();

  v0 = sub_1C4EF98E8();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t GlobalKnowledgeDatabase.__allocating_init(config:)(uint64_t a1)
{
  v1 = swift_allocObject();
  GlobalKnowledgeDatabase.init(config:)();
  return v1;
}

void GlobalKnowledgeDatabase.init(config:)()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v45 = *v2;
  v46 = v1;
  sub_1C4F00978();
  sub_1C43FCDF8();
  v40 = v6;
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v42 = v8 - v7;
  v9 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  sub_1C4EF9888();
  v18 = OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_url;
  (*(v11 + 32))(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_url], v17, v9);
  v44 = OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_config;
  sub_1C44098F0(v4, &v2[OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_config]);
  v47 = v4;
  v19 = (v4 + *(type metadata accessor for Configuration(0) + 20));
  v21 = *v19;
  v20 = v19[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  sub_1C43FF064();
  v23 = 2 * (v22 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C43FF064();
  v43 = v20;
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = v23 | 4;
  }

  sub_1C44F920C();
  v26 = static NSUserDefaults.globalKnowledgeDatabaseLoggingEnabled.getter() & 1;
  (*(v11 + 16))(v14, &v2[v18], v9);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  swift_allocObject();
  v27 = v46;
  v28 = sub_1C44F999C(v14, v25 | v26);
  if (v27)
  {
    sub_1C4467948(v47);
    (*(v11 + 8))(&v2[v18], v9);
    sub_1C4467948(&v2[v44]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v21;
    v30 = v43;
    *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool] = v28;
    sub_1C482707C(&OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool, sub_1C4829C34, &OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_url);
    if (qword_1EDDFEBB8 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEBC0 & ~v29) == 0 && (*(&xmmword_1EDDFEBC0 + 1) & v30) == *(&xmmword_1EDDFEBC0 + 1) && (GlobalKnowledgeDatabase.checkAndLoadAssets()(), v31))
    {
      sub_1C4F00148();
      v32 = v31;
      v33 = sub_1C4F00968();
      v34 = sub_1C4F01CE8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = sub_1C43FD084();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        v37 = v31;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v38;
        *v36 = v38;
        _os_log_impl(&dword_1C43F8000, v33, v34, "GlobalKnowledgeDatabase: one or more assets failed to be processed: %@", v35, 0xCu);
        sub_1C446F170(v36, &qword_1EC0BDA00, &qword_1C4F10D30);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      sub_1C4467948(v47);
      (*(v40 + 8))(v42, v41);
    }

    else
    {
      sub_1C4467948(v47);
    }
  }

  sub_1C43FBC80();
}

uint64_t GlobalKnowledgeDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_url;
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_config);
  return v0;
}

uint64_t GlobalKnowledgeDatabase.__deallocating_deinit()
{
  GlobalKnowledgeDatabase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C48278BC()
{
  if (qword_1EDDFEE20[0] != -1)
  {
    swift_once();
  }
}

void sub_1C4827954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v47 = *v23;
  v27 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v28 = sub_1C43FBD18(v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v47 - v29;
  v31 = sub_1C4EFAD98();
  v32 = sub_1C43FBD18(v31);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  sub_1C4827CC0();
  if (v20)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128(&qword_1EDDFFAF0);
    }

    v34 = sub_1C4F00978();
    sub_1C43FCEE8(v34, qword_1EDE2E088);

    v35 = v20;
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CE8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v38 = 136315394;
      v48 = v24;

      v39 = sub_1C4F01198();
      v41 = sub_1C441D828(v39, v40, &a10);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v48 = v20;
      v42 = v20;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v43 = sub_1C4F01198();
      v45 = sub_1C441D828(v43, v44, &a10);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_1C43F8000, v36, v37, "StaticSchemaDatabaseProtocol<%s>: check schema error. Database is considered corrupt. Error: %s", v38, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C4EFA878();
    v46 = sub_1C4EFB768();
    sub_1C440BAA8(v30, 1, 1, v46);
    sub_1C4EFB1E8();
    sub_1C4829B88(&qword_1EC0BC530, MEMORY[0x1E699FE10], MEMORY[0x1E699FE18]);
    swift_allocError();
    sub_1C4EFB158();
    swift_willThrow();
  }

  else
  {
    *v26 = v33 & 1;
  }

  sub_1C43FBC80();
}

void sub_1C4827CC0()
{
  sub_1C43FE96C();
  v81 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v11 = v10;
  v74 = *v9;
  v12 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C440ABA0();
  v19 = sub_1C4EFBE58();
  if (v1)
  {
    goto LABEL_2;
  }

  v70 = v12;
  v71 = v14;
  v72 = v4;
  v73 = v11;
  if (v19)
  {
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C4F0D130;
    sub_1C441FB00(v20, MEMORY[0x1E69E6158]);
    sub_1C4EFB728();
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    sub_1C4EFB998();
    sub_1C446F170(&v75, &unk_1EC0BC770, &qword_1C4F10DC0);
    v34 = (*(v14 + 8))(v18, v12);
    if (v80 >> 60 != 15)
    {
      (v8)(v34);
      v36 = v35;
      v37 = sub_1C43FE990();
      sub_1C4431E64(v37, v38);
      if (v36 >> 60 == 15)
      {
        v39 = sub_1C43FE990();
        sub_1C441DFEC(v39, v40);
        v41 = sub_1C44333A0();
        sub_1C441DFEC(v41, v42);
      }

      else
      {
        v43 = sub_1C44333A0();
        sub_1C4431E64(v43, v44);
        v45 = sub_1C43FE990();
        v8 = MEMORY[0x1C6938740](v45);
        v46 = sub_1C44333A0();
        sub_1C441DFEC(v46, v47);
        v48 = sub_1C44333A0();
        sub_1C441DFEC(v48, v49);
        v50 = sub_1C43FE990();
        sub_1C441DFEC(v50, v51);
        if (v8)
        {
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C43FFB88(&qword_1EDDFECB0);
          }

          v52 = sub_1C4F00978();
          sub_1C43FCEE8(v52, qword_1EDDFECB8);

          v53 = sub_1C4F00968();
          v54 = sub_1C4F01CF8();

          if (sub_1C442FAFC())
          {
            sub_1C43FD084();
            v55 = sub_1C4432358();
            *&v75 = v55;
            *v8 = 136315138;
            v79 = v9;

            v56 = sub_1C4F01198();
            v58 = sub_1C441D828(v56, v57, &v75);

            *(v8 + 4) = v58;
            sub_1C4417228(&dword_1C43F8000, v59, v54, "StaticSchemaDatabaseProtocol<%s>: checkSchema: schema is okay");
            sub_1C440962C(v55);
            sub_1C43FBE2C();
            sub_1C43FBE2C();
          }

          goto LABEL_26;
        }
      }
    }

    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128(&qword_1EDDFFAF0);
    }

    v60 = sub_1C4F00978();
    sub_1C43FCEE8(v60, qword_1EDE2E088);

    v53 = sub_1C4F00968();
    v61 = sub_1C4F01CF8();

    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v62 = sub_1C4432358();
      *&v75 = v62;
      *v8 = 136315138;
      v79 = v9;

      v63 = sub_1C4F01198();
      v65 = sub_1C441D828(v63, v64, &v75);

      *(v8 + 4) = v65;
      sub_1C4417228(&dword_1C43F8000, v66, v61, "StaticSchemaDatabaseProtocol<%s>: checkSchema: schema mismatch, need to reset");
      sub_1C440962C(v62);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

LABEL_26:
    v67 = sub_1C43FE990();
    sub_1C441DFEC(v67, v68);

    goto LABEL_2;
  }

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v21 = sub_1C4F00978();
  sub_1C43FCEE8(v21, qword_1EDE2E088);

  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v24 = sub_1C43FD084();
    v25 = swift_slowAlloc();
    *&v75 = v25;
    *v24 = 136315138;
    v79 = v9;

    v26 = sub_1C4F01198();
    v28 = sub_1C441D828(v26, v27, &v75);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1C43F8000, v22, v23, "StaticSchemaDatabaseProtocol<%s>: checkSchema: metadata table is missing", v24, 0xCu);
    sub_1C440962C(v25);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (!sub_1C48282A0(v73))
  {
    sub_1C4828758(v73, v6, v72, v81, v30, v31, v32, v33, v69, v70, v71, v72, v73, v74, v75, *(&v75 + 1), v76, *(&v76 + 1), v77, v78);
  }

LABEL_2:
  sub_1C43FBC80();
}

BOOL sub_1C48282A0(_BOOL8 a1)
{
  v5 = sub_1C46A9F90(0, 0, 0x656C626174, 0xE500000000000000);
  if (v1)
  {
    return a1;
  }

  v6 = v5;
  v7 = 0;
  v8 = v5 + 64;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v7;
    if (!v11)
    {
      break;
    }

LABEL_9:
    v14 = (*(v6 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v11)))));
    v2 = *v14;
    v3 = v14[1];
    v11 &= v11 - 1;
    v43[0] = *v14;
    v43[1] = v3;
    sub_1C4415EA8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (sub_1C4F02048())
    {
    }

    else
    {
      v15 = v41;
      v44 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44CD9C0(0, *(v41 + 16) + 1, 1);
        v15 = v44;
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v42 = v17 + 1;
        v40 = *(v15 + 16);
        sub_1C44CD9C0(v16 > 1, v17 + 1, 1);
        v18 = v42;
        v17 = v40;
        v15 = v44;
      }

      *(v15 + 16) = v18;
      v41 = v15;
      v19 = v15 + 16 * v17;
      *(v19 + 32) = v2;
      *(v19 + 40) = v3;
    }
  }

  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_36:
      sub_1C443D664();
      v41 = v38;
      goto LABEL_20;
    }

    if (v7 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v7);
    ++v13;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  v2 = 0xEF736E6F69746172;
  v3 = 0x67696D5F62647267;

  v20 = sub_1C4EFBE58();
  if ((v20 & 1) == 0)
  {
    a1 = *(v41 + 16) != 0;
    goto LABEL_24;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  v22 = v41;
  v23 = *(v41 + 16);
  if (v23 >= *(v41 + 24) >> 1)
  {
    sub_1C443D664();
    v22 = v39;
  }

  *(v22 + 16) = v23 + 1;
  v24 = v22 + 16 * v23;
  *(v24 + 32) = v3;
  *(v24 + 40) = v2;
  a1 = 1;
LABEL_24:

  if (a1)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128(&qword_1EDDFFAF0);
    }

    v25 = sub_1C4F00978();
    sub_1C43FCEE8(v25, qword_1EDE2E088);

    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CF8();

    if (os_log_type_enabled(v26, v27))
    {
      sub_1C43FD084();
      v28 = sub_1C4432358();
      v43[0] = v28;
      *v8 = 136315138;

      v29 = sub_1C4F01198();
      v31 = sub_1C441D828(v29, v30, v43);

      *(v8 + 4) = v31;
      v33 = "StaticSchemaDatabaseProtocol<%s>: _performExistingSchemaCheck: need to reset";
      goto LABEL_33;
    }
  }

  else
  {
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128(&qword_1EDDFFAF0);
    }

    v34 = sub_1C4F00978();
    sub_1C43FCEE8(v34, qword_1EDE2E088);

    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CF8();

    if (os_log_type_enabled(v26, v27))
    {
      sub_1C43FD084();
      v28 = sub_1C4432358();
      v43[0] = v28;
      *v8 = 136315138;

      v35 = sub_1C4F01198();
      v37 = sub_1C441D828(v35, v36, v43);

      *(v8 + 4) = v37;
      v33 = "StaticSchemaDatabaseProtocol<%s>: _performExistingSchemaCheck: no existing schema";
LABEL_33:
      sub_1C4417228(&dword_1C43F8000, v32, v27, v33);
      sub_1C440962C(v28);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  return a1;
}

void sub_1C4828758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v59 = v25;
  v27 = v26;
  v28 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v34 = v33 - v32;
  sub_1C4EFB0B8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v36 = sub_1C4F00978();
  sub_1C43FCEE8(v36, qword_1EDDFECB8);

  v37 = sub_1C4F00968();
  v38 = sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v58 = v28;
    v39 = sub_1C43FD084();
    v57 = swift_slowAlloc();
    a10 = v57;
    *v39 = 136315138;

    v40 = sub_1C4F01198();
    v42 = v24;
    v43 = v34;
    v44 = v27;
    v45 = v30;
    v46 = sub_1C441D828(v40, v41, &a10);

    *(v39 + 4) = v46;
    v30 = v45;
    v27 = v44;
    v34 = v43;
    v24 = v42;
    _os_log_impl(&dword_1C43F8000, v37, v38, "StaticSchemaDatabaseProtocol<%s>: creating schema", v39, 0xCu);
    sub_1C440962C(v57);
    sub_1C43FBE2C();
    v28 = v58;
    sub_1C43FBE2C();
  }

  a10 = MEMORY[0x1E69E7CC0];
  sub_1C4829B88(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4829BD0();
  sub_1C4F020C8();
  sub_1C440ABA0();
  sub_1C4EFBFC8();
  if (v20)
  {
    v47 = sub_1C440D478();
    v48(v47);
  }

  else
  {
    v49 = sub_1C440D478();
    v50(v49);
    v59(v27);
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1C4F0CE60;
    v52 = sub_1C441FB00(v51, MEMORY[0x1E69E6158]);
    v53 = v24(v52);
    if (v54 >> 60 == 15)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(v51 + 88) = 0;
    }

    else
    {
      v56 = MEMORY[0x1E699FD70];
      v55 = MEMORY[0x1E6969080];
    }

    *(v51 + 72) = v53;
    *(v51 + 80) = v54;
    *(v51 + 96) = v55;
    *(v51 + 104) = v56;
    sub_1C4EFB728();
    sub_1C4EFBFF8();
    (*(v30 + 8))(v34, v28);
  }

  sub_1C43FBC80();
}