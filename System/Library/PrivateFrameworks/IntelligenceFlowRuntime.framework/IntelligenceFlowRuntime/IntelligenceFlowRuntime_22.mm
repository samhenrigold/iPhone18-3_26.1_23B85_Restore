id sub_22BD8D64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_22BDB4354();
  v13 = 0;
  if (sub_22BB3AA28(a1, 1, v12) != 1)
  {
    v13 = sub_22BDB4314();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_22BB3AA28(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_22BDB4314();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_22BD8D788(void *a1)
{
  v1 = [a1 eventPayload];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22BDB4304();

  return v3;
}

uint64_t sub_22BD8D7EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BD8D83C(uint64_t a1)
{
  sub_22BDB9B14();
  sub_22BB30444();
  v30 = v3;
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v32 = sub_22BBE6DE0(&qword_27D8E6A40, &qword_22BDD0190);
  MEMORY[0x28223BE20](v32);
  v10 = &v28 - v9;
  v11 = sub_22BDB77D4();
  sub_22BB30444();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6344();

  v17 = sub_22BDB77C4();
  v18 = sub_22BDBB104();

  if (os_log_type_enabled(v17, v18))
  {
    v29 = v11;
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v19 = 136315138;
    sub_22BD39594(a1);
    v20 = sub_22BDB9B54();
    if (sub_22BB3AA28(v8, 1, v20) == 1)
    {
      sub_22BD8DD90(v8);
      v21 = 1;
    }

    else
    {
      sub_22BDB9B24();
      (*(*(v20 - 8) + 8))(v8, v20);
      sub_22BDB9AC4();
      (*(v30 + 8))(v5, v31);
      v21 = 0;
    }

    v22 = sub_22BDB9254();
    sub_22BB336D0(v10, v21, 1, v22);
    v23 = sub_22BDBAC14();
    v25 = sub_22BB32EE0(v23, v24, &v33);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_22BB2C000, v17, v18, "TurnManager interestedIn; lastPayload: %s", v19, 0xCu);
    v26 = v28;
    sub_22BB32FA4(v28);
    MEMORY[0x2318A6080](v26, -1, -1);
    MEMORY[0x2318A6080](v19, -1, -1);

    (*(v13 + 8))(v16, v29);
  }

  else
  {

    (*(v13 + 8))(v16, v11);
  }

  return 0;
}

uint64_t TurnManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TurnManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BD8DC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22BB6A0B4;

  return sub_22BD8DDF8(a1, a2, a3, v8);
}

uint64_t sub_22BD8DD90(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BD8DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22BDB77D4();
  v4[2] = v6;
  v4[3] = *(v6 - 8);
  v4[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD8DEB8, a4, 0);
}

uint64_t sub_22BD8DFB8()
{
  result = sub_22BDBABE4();
  qword_28142F260 = result;
  return result;
}

uint64_t static RuntimeNumericError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_22BDBB6D4();
        sub_22BB3AC54();
        sub_22BB2F6B4();
        sub_22BB2F6B4();
        sub_22BD8E170();
        sub_22BB3AC54();
        goto LABEL_16;
      }

      sub_22BB2F6B4();
      sub_22BB2F6B4();
      sub_22BD8E170();
      sub_22BD8E170();
      return 1;
    }

LABEL_9:
    sub_22BB3AC54();
    sub_22BB2F6B4();
    sub_22BB2F6B4();
    sub_22BD8E170();
    sub_22BB3AC54();
    sub_22BD8E170();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v8 = 1;
    sub_22BB38C24();
    sub_22BD8E168();
    sub_22BB38C24();
    sub_22BD8E168();
    sub_22BB38C24();
    sub_22BD8E170();
    sub_22BB38C24();
    sub_22BD8E170();
    return v8;
  }

  v7 = sub_22BDBB6D4();
  sub_22BB3AC54();
  sub_22BD8E168();
  sub_22BB38C24();
  sub_22BD8E168();
  sub_22BB38C24();
  sub_22BD8E170();
  sub_22BB3AC54();
LABEL_16:
  sub_22BD8E170();
  return v7 & 1;
}

Swift::String __swiftcall Float.toString(decimalPlaces:)(Swift::Int decimalPlaces)
{
  v2 = v1;
  sub_22BB94F30();
  v3 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v3);

  MEMORY[0x2318A4C40](102, 0xE100000000000000);
  sub_22BBE6DE0(&qword_27D8E6790, &unk_22BDCEDF0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D83A90];
  *(v4 + 16) = xmmword_22BDBCBD0;
  v6 = MEMORY[0x277D83B08];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_22BDBAC04();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall Double.toString(decimalPlaces:)(Swift::Int decimalPlaces)
{
  v2 = v1;
  sub_22BB94F30();
  v3 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v3);

  MEMORY[0x2318A4C40](102, 0xE100000000000000);
  sub_22BBE6DE0(&qword_27D8E6790, &unk_22BDCEDF0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839F8];
  *(v4 + 16) = xmmword_22BDBCBD0;
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_22BDBAC04();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void Array<A>.dotProduct(with:)()
{
  sub_22BB3886C();
  if (v0)
  {
    sub_22BB53E70();
    sub_22BD8E78C(v1, v3, v2);
  }

  else
  {
    sub_22BDBB334();
    MEMORY[0x2318A4C40](0xD00000000000004DLL, 0x800000022BDD49A0);
    v4 = sub_22BB39294();
    MEMORY[0x2318A4C40](v4);

    sub_22BB3713C();
    v5 = sub_22BB39294();
    MEMORY[0x2318A4C40](v5);

    v6 = sub_22BD8E478();
    v7 = sub_22BB31A08(&type metadata for RuntimeNumericError, v6);
    sub_22BB54328(v7, v8, v9, v10, v11, v12, v13, v14, 0);
  }
}

unint64_t sub_22BD8E478()
{
  result = qword_27D8E6A88;
  if (!qword_27D8E6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6A88);
  }

  return result;
}

void Array<A>.cosineSimilarity(with:)()
{
  __C[2] = *MEMORY[0x277D85DE8];
  sub_22BB3886C();
  if (v4)
  {
    v5 = v3;
    v6 = v2;
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v3 + 32), 1, __C, v0);
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v6 + 32), 1, __C, v0);
    sub_22BB53E70();
    sub_22BD8E78C(v5, v6, v7);
  }

  else
  {
    __C[0] = 0;
    __C[1] = 0xE000000000000000;
    sub_22BDBB334();
    MEMORY[0x2318A4C40](0xD000000000000053, 0x800000022BDD49F0);
    v8 = sub_22BDBB684();
    MEMORY[0x2318A4C40](v8);

    sub_22BB3713C();
    v9 = sub_22BDBB684();
    MEMORY[0x2318A4C40](v9);

    v10 = sub_22BD8E478();
    v11 = sub_22BB31A08(&type metadata for RuntimeNumericError, v10);
    sub_22BB54328(v11, v12, v13, v14, v15, v16, v17, v18, v1);
  }
}

void Array<A>.euclideanDistance(with:)()
{
  sub_22BB3886C();
  if (v2)
  {
    v3 = sub_22BD8E78C(v1, v0, MEMORY[0x277CB8748]);
    sqrtf(v3);
  }

  else
  {
    sub_22BDBB334();
    MEMORY[0x2318A4C40](0xD000000000000054, 0x800000022BDD4A50);
    v4 = sub_22BB39294();
    MEMORY[0x2318A4C40](v4);

    sub_22BB3713C();
    v5 = sub_22BB39294();
    MEMORY[0x2318A4C40](v5);

    v6 = sub_22BD8E478();
    v7 = sub_22BB31A08(&type metadata for RuntimeNumericError, v6);
    sub_22BB54328(v7, v8, v9, v10, v11, v12, v13, v14, 0);
  }
}

float sub_22BD8E78C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, float *))
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) != *(a2 + 16))
  {
    __break(1u);
  }

  v4 = NAN;
  a3(a1 + 32, 1, a2 + 32, 1, &v4);
  return v4;
}

uint64_t Array<A>.padding(totalSize:padValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  v6 = a1 - v5;
  if (a1 <= v5)
  {

    return v4;
  }

  if (a1 - v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }
  }

  sub_22BD916F8();
  v4 = v10;
LABEL_4:
  v7 = *(v4 + 16);
  do
  {
    if (v7 >= *(v4 + 24) >> 1)
    {
      sub_22BD916F8();
      v4 = v8;
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + 8 * v7++ + 32) = v3;
    --v6;
  }

  while (v6);
  return v4;
}

void Array<A>.to2D(numRows:numColumns:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = a2;
  v5 = *(a3 + 16);
  if (v5 != result * a2)
  {
    sub_22BDBB334();

    v20 = sub_22BB52F20();
    MEMORY[0x2318A4C40](v20);

    MEMORY[0x2318A4C40](540877088, 0xE400000000000000);
    v21 = sub_22BB52F20();
    MEMORY[0x2318A4C40](v21);

    MEMORY[0x2318A4C40](2107936, 0xE300000000000000);
    v22 = sub_22BB52F20();
    MEMORY[0x2318A4C40](v22);

    v23 = sub_22BD8E478();
    sub_22BB31A08(&type metadata for RuntimeNumericError, v23);
    *v24 = 0xD000000000000025;
    *(v24 + 8) = 0x800000022BDD4AB0;
    *(v24 + 16) = 0;
    swift_willThrow();
    return;
  }

  if (result < 0)
  {
    goto LABEL_25;
  }

  if (result)
  {
    v30 = MEMORY[0x277D84F90];
    sub_22BD287C8(0, result, 0);
    if (v4 < 0)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = 0;
    v8 = v30;
    v9 = result;
    v10 = MEMORY[0x277D84F90];
    v25 = v4;
    while (!v4)
    {
      v11 = v10;
LABEL_16:
      v31 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = v6;
        sub_22BD287C8(v17 > 1, v18 + 1, 1);
        v6 = v19;
        v10 = MEMORY[0x277D84F90];
        v9 = result;
        v8 = v31;
      }

      ++v7;
      *(v8 + 16) = v18 + 1;
      *(v8 + 8 * v18 + 32) = v11;
      v6 += v4;
      if (v7 == v9)
      {
        return;
      }
    }

    v27 = v8;
    v28 = v6;
    v29 = v10;
    sub_22BD28808(0, v4, 0);
    if ((v7 * v4) >> 64 == (v7 * v4) >> 63)
    {
      v6 = v28;
      v11 = v29;
      v12 = v4;
      v13 = v28;
      v9 = result;
      v8 = v27;
      v10 = MEMORY[0x277D84F90];
      while (v13 < v5)
      {
        v14 = *(a3 + 32 + 4 * v13);
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_22BD28808((v15 > 1), v16 + 1, 1);
          v8 = v27;
          v6 = v28;
          v10 = MEMORY[0x277D84F90];
          v9 = result;
        }

        *(v29 + 16) = v16 + 1;
        *(v29 + 4 * v16 + 32) = v14;
        ++v13;
        if (!--v12)
        {
          v4 = v25;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }
}

void sub_22BD8EBF4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, qword_27D8E2550, &unk_22BDBCC10);
  sub_22BB38F5C();
  sub_22BDBA594();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD272F0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8ECBC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B20, &qword_22BDD03A8);
  sub_22BB38F5C();
  sub_22BDB44A4();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27308(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8ED84()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B18, &qword_22BDD03A0);
  sub_22BB38F5C();
  sub_22BDB4484();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD273DC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8EE4C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B10, &qword_22BDD0398);
  sub_22BB38F5C();
  sub_22BDB4524();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD273F4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8EF14()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B08, &qword_22BDD0390);
  sub_22BB38F5C();
  sub_22BDB4584();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD2740C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8EFDC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B00, &qword_22BDD0388);
  sub_22BB38F5C();
  sub_22BDB44B4();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27444(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F0A4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6AF8, &qword_22BDD0380);
  sub_22BB38F5C();
  sub_22BDB4474();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD2745C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F16C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B28, &qword_22BDD03B0);
  sub_22BB38F5C();
  sub_22BDB4464();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27474(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F234()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E6AE8, &unk_22BDD0368);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD2748C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F300()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B30, &qword_22BDD03B8);
  sub_22BB38F5C();
  sub_22BDB4B34();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD274A0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F3C8()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0 || (sub_22BB3665C(), v5 == v6))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v3)
    {
      sub_22BBE6DE0(&qword_27D8E6A98, &unk_22BDD02C8);
      v7 = swift_allocObject();
      sub_22BB3A7D8(v7);
      sub_22BB37430(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_22BB328BC();
        sub_22BD27424(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v5)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BD8F488()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E6078, &qword_22BDCD5B0);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD274B8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F554()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6AF0, &qword_22BDD0378);
  sub_22BB38F5C();
  sub_22BDB44D4();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD274CC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F61C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6A90, &qword_22BDD02C0);
  sub_22BB38F5C();
  sub_22BDB87F4();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD274E4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F6E4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E5FD0, &unk_22BDCEA40);
  sub_22BB38F5C();
  sub_22BDB9B54();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD274FC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F7AC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6BD0, qword_22BDD04C0);
  sub_22BB38F5C();
  sub_22BDB7444();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27514(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F874()
{
  sub_22BB69BFC();
  if ((v3 & 1) == 0 || (sub_22BB3665C(), v4 == v5))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E3DC0, &qword_22BDC1158);
      v6 = swift_allocObject();
      sub_22BB3A7D8(v6);
      sub_22BB37430(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22BB328BC();
        sub_22BD2752C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v4)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BD8F934()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6BC0, &qword_22BDD04B0);
  sub_22BB38F5C();
  sub_22BDB6984();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD2754C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F9FC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6BC8, &qword_22BDD04B8);
  sub_22BB38F5C();
  sub_22BDB69D4();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27564(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FAC4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E5ED0, &unk_22BDCD5E0);
  sub_22BB38F5C();
  sub_22BDB7B44();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD2757C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FB8C()
{
  sub_22BB69BFC();
  if ((v3 & 1) == 0 || (sub_22BB3665C(), v4 == v5))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v2)
    {
      v6 = sub_22BBE6DE0(&qword_27D8E6BB0, &qword_22BDD04A0);
      v7 = sub_22BB58BA4(v6);
      v8 = j__malloc_size(v7);
      sub_22BB37908(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_22BB328BC();
        sub_22BD2F748(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22BBE6DE0(&qword_27D8E6BB8, &qword_22BDD04A8);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v4)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BD8FC50()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6BA8, &qword_22BDD0498);
  v8 = sub_22BB38F5C();
  type metadata accessor for FeedbackLearning.TypedCandidateInteraction(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD27594(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FD18()
{
  sub_22BB69BFC();
  if ((v3 & 1) == 0 || (sub_22BB3665C(), v4 == v5))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v2)
    {
      v6 = sub_22BBE6DE0(&qword_27D8E6B68, &qword_22BDD0428);
      v7 = sub_22BB58BA4(v6);
      v8 = j__malloc_size(v7);
      sub_22BB37908(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_22BB328BC();
        sub_22BD2F748(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22BBE6DE0(&qword_27D8E3EB0, &qword_22BDC1380);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v4)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BD8FDDC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E3EB8, &unk_22BDC3000);
  v8 = sub_22BB38F5C();
  _s15CandidateResultVMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD275DC(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FEA4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E6180, &unk_22BDCD6F0);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD275F4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FF70()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E3F00, &unk_22BDCD700);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27608(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD9003C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E6BA0, &qword_22BDD0490);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27634(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90108()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B38, &unk_22BDD03C8);
  sub_22BB38F5C();
  sub_22BDB8E14();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27648(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD901D0()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E3E88, &qword_22BDC1358);
  sub_22BB38F5C();
  sub_22BDBA994();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27660(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90298()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6AE0, &unk_22BDD0350);
  v8 = sub_22BB38F5C();
  _s20StatementResultEventVMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD27690(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90360()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B70, &qword_22BDD0458);
  v8 = sub_22BB38F5C();
  _s23StatementStepEvaluationOMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD276A8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90428()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B90, &qword_22BDD0478);
  sub_22BB38F5C();
  sub_22BDB8624();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD276C0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD904F0()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B88, &qword_22BDD0470);
  v8 = sub_22BB38F5C();
  _s19SystemResponseEventVMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD276D8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD905B8()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B80, &qword_22BDD0468);
  v8 = sub_22BB38F5C();
  _s9PlanEventVMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD276F0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90680()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B78, &qword_22BDD0460);
  sub_22BB38F5C();
  sub_22BDB9954();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27720(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90748()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E3F88, &qword_22BDC1790);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27738(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90814()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E61B0, &qword_22BDCD740);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD2774C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD908E0()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6188, &unk_22BDD0440);
  v8 = sub_22BB38F5C();
  _s18ToolStepEvaluationVMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD27760(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD909A8()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6198, &unk_22BDCD720);
  v8 = sub_22BB38F5C();
  _s23ParameterStepEvaluationVMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD275C4(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90A70()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E61A0, &qword_22BDD0450);
  v8 = sub_22BB38F5C();
  _s19ValueStepEvaluationVMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD27678(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90B38()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B98, &unk_22BDD0480);
  v8 = sub_22BB38F5C();
  _s13ValueExecutedVMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD27778(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90C00()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E6158, &qword_22BDD0420);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27790(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90CCC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B48, &qword_22BDD03E0);
  v8 = sub_22BB38F5C();
  type metadata accessor for FeedbackLearning.FlowTask(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD277E4(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90D94()
{
  sub_22BB69BFC();
  if ((v3 & 1) == 0 || (sub_22BB3665C(), v4 == v5))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v2)
    {
      v6 = sub_22BBE6DE0(&qword_27D8E60B8, &qword_22BDCD600);
      v7 = sub_22BB58BA4(v6);
      v8 = j__malloc_size(v7);
      sub_22BB37908(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_22BB328BC();
        sub_22BD2F748(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22BBE6DE0(&qword_27D8E6B40, &qword_22BDD03D8);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v4)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BD90E58()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E60C0, &qword_22BDCD608);
  v8 = sub_22BB38F5C();
  type metadata accessor for FeedbackLearning.FlowExpression(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD277FC(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90F20()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E60A8, &qword_22BDCD5F0);
  v8 = sub_22BB38F5C();
  type metadata accessor for FeedbackLearning.CandidateEvaluation(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD27814(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90FE8()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E4330, &qword_22BDD03C0);
  v8 = sub_22BB38F5C();
  type metadata accessor for FeedbackLearning.TaskEvaluation(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD2782C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD910B0()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E60C8, &qword_22BDCD610);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD277D0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD9117C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6B50, &qword_22BDD03E8);
  v8 = sub_22BB38F5C();
  type metadata accessor for FeedbackLearning.FlowActionEvent(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD27844(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD91244()
{
  sub_22BB69BFC();
  if ((v3 & 1) == 0 || (sub_22BB3665C(), v4 == v5))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v2)
    {
      v6 = sub_22BBE6DE0(&qword_27D8E6B58, &qword_22BDD0400);
      v7 = sub_22BB58BA4(v6);
      v8 = j__malloc_size(v7);
      sub_22BB37908(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_22BB328BC();
        sub_22BD2F748(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22BBE6DE0(&qword_27D8E6B60, &qword_22BDD0408);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v4)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BD91308()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6000, &qword_22BDCD530);
  sub_22BB38F5C();
  sub_22BDB43E4();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD27874(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD913D0()
{
  sub_22BB69BFC();
  if ((v3 & 1) == 0 || (sub_22BB3665C(), v4 == v5))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v2)
    {
      v6 = sub_22BBE6DE0(&qword_27D8E6AC8, &unk_22BDD0320);
      v7 = sub_22BB3A348(v6);
      sub_22BB3A7D8(v7);
      sub_22BB3B4C4(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_22BB328BC();
        sub_22BBE410C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22BBE6DE0(&qword_27D8E6608, &qword_22BDCE580);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v4)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BD91498()
{
  sub_22BB69BFC();
  if ((v3 & 1) == 0 || (sub_22BB3665C(), v4 == v5))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E6AB0, &unk_22BDD02F0);
      v6 = swift_allocObject();
      sub_22BB3A7D8(v6);
      sub_22BB37430(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22BB328BC();
        sub_22BD278BC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22BBE6DE0(&qword_27D8E6578, &qword_22BDCE478);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v4)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BD91568()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6AA8, &unk_22BDD02E0);
  sub_22BB38F5C();
  sub_22BDB52C4();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD279D0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD91630()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E6AD8, &unk_22BDD0340);
  sub_22BB38F5C();
  sub_22BDB58D4();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD279E8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD916F8()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0 || (sub_22BB3665C(), v5 == v6))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v3)
    {
      v7 = sub_22BBE6DE0(&qword_27D8E5FE0, &unk_22BDCD508);
      v8 = sub_22BB58BA4(v7);
      v9 = j__malloc_size(v8);
      sub_22BB37908(v9);
      if (v1)
      {
LABEL_8:
        v10 = sub_22BB328BC();
        sub_22BB8E2F8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v8 + 32), (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v5)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_22BD91824(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BBE6DE0(a3, a4);
  v10 = *(sub_22BBE6DE0(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22BD9194C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BBE6DE0(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD91A54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BD91A94(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VectorSimilarity(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BD91BA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  v7 = sub_22BD92878(v6, a2);
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t PerURLSingletonLockBox.__allocating_init()()
{
  v0 = swift_allocObject();
  PerURLSingletonLockBox.init()();
  return v0;
}

uint64_t *PerURLSingletonLockBox.init()()
{
  sub_22BDB4254();
  swift_getTupleTypeMetadata2();
  sub_22BDBADB4();
  sub_22BD926FC();
  v3 = sub_22BDBAB14();
  v1 = sub_22BDBAB44();
  *(v0 + 16) = sub_22BD91BA0(&v3, v1);
  return v0;
}

uint64_t sub_22BD91D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_22BDBB254();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v19[-v12];
  sub_22BB336D0(&v19[-v12], 1, 1, v6);
  v14 = v5;
  v15 = v2[2];
  v20 = v6;
  v21 = *(v14 + 88);
  v22 = a1;
  v23 = v13;
  sub_22BDB4254();
  sub_22BD926FC();
  v16 = sub_22BDBAB44();
  sub_22BD929BC(sub_22BD92AD0, v19, v15, v16, MEMORY[0x277D84F78] + 8);
  if (v3)
  {
    return (*(v8 + 8))(v13, v7);
  }

  v17 = v24;
  (*(v8 + 16))(v11, v13, v7);
  if (sub_22BB3AA28(v11, 1, v6) != 1)
  {
    (*(*(v6 - 8) + 32))(v17, v11, v6);
    return (*(v8 + 8))(v13, v7);
  }

  (*(v8 + 8))(v11, v7);
  result = sub_22BDBB4D4();
  __break(1u);
  return result;
}

uint64_t sub_22BD9201C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a3;
  v37 = a5;
  v8 = sub_22BDB4254();
  v38 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v43 = sub_22BDBB254();
  v42 = *(v43 - 8);
  v13 = MEMORY[0x28223BE20](v43);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v33 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = *(a4 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v33 = sub_22BD926FC();
  sub_22BDBAB54();
  if (sub_22BB3AA28(v19, 1, a4) == 1)
  {
    v23 = v40;
    (*(v42 + 8))(v19, v43);
    v24 = *(v38 + 16);
    v24(v12, a2, v8);
    v25 = v41;
    result = (*(v37 + 16))(v12, a4);
    if (!v25)
    {
      v27 = v39;
      sub_22BB336D0(v39, 0, 1, a4);
      v28 = v42;
      v29 = v27;
      v30 = v43;
      (*(v42 + 40))(v23, v29, v43);
      v24(v36, a2, v8);
      (*(v28 + 16))(v34, v23, v30);
      sub_22BDBAB44();
      return sub_22BDBAB64();
    }
  }

  else
  {
    v31 = *(v20 + 32);
    v31(v22, v19, a4);
    v32 = v40;
    (*(v42 + 8))(v40, v43);
    v31(v32, v22, a4);
    return sub_22BB336D0(v32, 0, 1, a4);
  }

  return result;
}

void sub_22BD92408(uint64_t a1)
{
  v2 = v1[2];
  v5 = *(*v1 + 80);
  v6 = a1;
  sub_22BDB4254();
  sub_22BD926FC();
  v3 = sub_22BDBAB44();
  sub_22BD929BC(sub_22BD92858, v4, v2, v3, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_22BD924C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22BDBB254();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_22BDB4254();
  sub_22BD926FC();
  sub_22BDBAB44();
  sub_22BDBAB04();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PerURLSingletonLockBox.__deallocating_deinit()
{
  PerURLSingletonLockBox.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t static PerURLSingletonDatabase.sharedDatabase(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_22BB35DF4(a1, a2);
  v6(v5);
  sub_22BD91D88(a1, a3);
}

uint64_t static PerURLSingletonDatabase.deinitDatabase(url:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB35DF4(a1, a2);
  v4(v3);
  sub_22BD92408(a1);
}

unint64_t sub_22BD926FC()
{
  result = qword_27D8E6BD8[0];
  if (!qword_27D8E6BD8[0])
  {
    sub_22BDB4254();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8E6BD8);
  }

  return result;
}

uint64_t sub_22BD92878(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_22BDBB3C4();
  v4 = sub_22BDBB3B4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_22BD92928@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x277D841D0]) - 8) + 16))(a2);
}

void sub_22BD92A48(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_22BD92B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_22BDBA684();
  sub_22BB30444();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v68 - v10;
  v12 = sub_22BDB5194();
  MEMORY[0x28223BE20](v12 - 8);
  sub_22BB30574();
  v68[1] = v14 - v13;
  v69 = sub_22BDB51F4();
  sub_22BB30444();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = v19 - v18;
  v21 = sub_22BDBA694();
  sub_22BB30444();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22BB30574();
  v27 = (v26 - v25);
  (*(v23 + 16))(v26 - v25, v2, v21);
  v28 = sub_22BB31DF8();
  v30 = v29(v28);
  if (v30 == *MEMORY[0x277D72DB8])
  {
    v31 = sub_22BB31DF8();
    v32(v31);
    v33 = *v27;
    v34 = [*v27 viewSnippetOptions];
    if (v34)
    {
      v35 = v34;
      [v34 canReplacePrintableText];
    }

    v48 = sub_22BD9321C(v33);
    if (v49 >> 60 == 15)
    {
      v50 = [v33 viewData];
      sub_22BDB4304();

      sub_22BCA6E3C(v33, &selRef_containerBundleIdentifier);
      sub_22BCA6E3C(v33, &selRef_targetBundleIdentifier);
      sub_22BDB51D4();
      v51 = sub_22BB33EF8();
      v52 = v69;
      v53(v51);
      sub_22BBE6DE0(&qword_27D8E6C60, &qword_22BDD0538);
      sub_22BB32DA8();
      v54 = swift_allocObject();
      v55 = sub_22BB30A54(v54, xmmword_22BDBCBD0);
      v56(v55);
      sub_22BDB5184();
      sub_22BDB51A4();
    }

    else
    {
      v57 = v48;
      v58 = v49;
      v59 = sub_22BCA6E3C(v33, &selRef_snippetModelBundleIdentifier);
      if (v60)
      {
        v61 = v59;
      }

      else
      {
        v61 = 0xD00000000000001ALL;
      }

      if (v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = 0x800000022BDD4B70;
      }

      sub_22BB352C4(v57, v58);
      MEMORY[0x23189F1B0](v57, v58, v61, v62);
      v63 = sub_22BB33EF8();
      v52 = v69;
      v64(v63);
      sub_22BBE6DE0(&qword_27D8E6C60, &qword_22BDD0538);
      sub_22BB32DA8();
      v65 = swift_allocObject();
      v66 = sub_22BB30A54(v65, xmmword_22BDBCBD0);
      v67(v66);
      sub_22BDB5184();
      sub_22BDB51A4();

      sub_22BB94C90(v57, v58);
    }

    return (*(v16 + 8))(v20, v52);
  }

  else if (v30 == *MEMORY[0x277D72DB0])
  {
    v36 = sub_22BB31DF8();
    v37(v36);
    (*(v5 + 32))(v11, v27, v3);
    (*(v5 + 16))(v9, v11, v3);
    sub_22BDB51C4();
    v38 = sub_22BB33EF8();
    v39 = v69;
    v40(v38);
    sub_22BBE6DE0(&qword_27D8E6C60, &qword_22BDD0538);
    sub_22BB32DA8();
    v43 = v42 & ~v41;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_22BDBCBD0;
    (*(v16 + 16))(v44 + v43, v20, v39);
    sub_22BDB51B4();
    (*(v16 + 8))(v20, v39);
    return (*(v5 + 8))(v11, v3);
  }

  else
  {
    sub_22BDB5234();
    v46 = sub_22BB31DF8();
    return v47(v46);
  }
}

uint64_t sub_22BD93114@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22BD9321C(v1);
  if (v5 >> 60 != 15)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_22BCA6E3C(v2, &selRef_snippetModelBundleIdentifier);
    if (v9)
    {
      MEMORY[0x23189F1B0](v6, v7, v8, v9);
      v10 = *MEMORY[0x277D1CA30];
      v11 = sub_22BDB51F4();
      (*(*(v11 - 8) + 104))(a1, v10, v11);
      v12 = a1;
      v13 = 0;
      v14 = v11;
      goto LABEL_6;
    }

    sub_22BB94C90(v6, v7);
  }

  v14 = sub_22BDB51F4();
  v12 = a1;
  v13 = 1;
LABEL_6:

  return sub_22BB336D0(v12, v13, 1, v14);
}

uint64_t sub_22BD9321C(void *a1)
{
  v1 = [a1 snippetModelData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22BDB4304();

  return v3;
}

uint64_t sub_22BD93280(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_22BD9456C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_22BD463E0(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t static TextChunker.getTextChunks(text:chunkTokenSize:maxChunkSizeChars:maxNumChunks:minChunkTokensToEmbed:nonOverlappingChunks:)(unint64_t a1, unint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v167 = a6;
  v161 = a5;
  v178 = a4;
  v171 = a3;
  v10 = sub_22BDB4184();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = a1;
  v182 = a2;
  sub_22BDB4174();
  v173 = sub_22BD94264();
  v14 = sub_22BDBB264();
  v16 = v15;
  v17 = *(v11 + 8);
  v174 = v13;
  v175 = v11 + 8;
  v176 = v10;
  v172 = v17;
  v17(v13, v10);

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v160 = a7;
  v19 = &off_278723000;
  v20 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  sub_22BD94468(a1, a2, v20);
  v159[1] = v20;
  v21 = sub_22BDBB0E4();
  v22 = v21;
  v168 = *(v21 + 16);
  if (!v168)
  {

    v24 = MEMORY[0x277D84F90];
    v179 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  v23 = 0;
  v166 = v21 + 32;
  v24 = MEMORY[0x277D84F90];
  v179 = MEMORY[0x277D84F90];
  v163 = a1;
  v164 = a2;
  v162 = v21;
  do
  {
    if (v23 >= *(v22 + 16))
    {
      goto LABEL_144;
    }

    v170 = v23;
    sub_22BB30E10();
    v25 = sub_22BDBACE4();
    v26 = MEMORY[0x2318A4C00](v25);
    v28 = v27;

    v29 = [objc_allocWithZone(MEMORY[0x277CD89E0]) v19[140]];
    sub_22BD94468(v26, v28, v29);
    v169 = v29;
    v20 = sub_22BDBB0E4();
    v177 = v26;
    if (sub_22BDBAC64() <= v178)
    {
      v62 = v20;

      sub_22BB30E10();
      v63 = sub_22BDBACE4();
      v64 = MEMORY[0x2318A4C00](v63);
      v66 = v65;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BB8C414();
      }

      sub_22BB37920();
      if (v68)
      {
        sub_22BB35E08(v67);
        sub_22BB8C414();
        v180 = v83;
      }

      sub_22BB36778(v180);
      *(v69 + 32) = v64;
      *(v69 + 40) = v66;
      v20 = v62[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD916F8();
        v179 = v70;
      }
    }

    else
    {
      v180 = v24;
      v30 = v20[2];
      v165 = v20;
      if (v30)
      {
        v24 = 0;
        v31 = v20 + 5;
        v32 = MEMORY[0x277D84F90];
        while (1)
        {
          v33 = sub_22BDBACE4();
          v20 = v34;
          v35 = MEMORY[0x2318A4C00](v33);
          v37 = v36;

          sub_22BB30E10();
          v38 = sub_22BDBAC64();
          if (__OFADD__(v38, v24))
          {
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
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
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            swift_unknownObjectRelease();
LABEL_123:
            sub_22BD94398(v20, v24, a2, a1);
            v86 = v154;

            swift_unknownObjectRelease();
            sub_22BB37440();
            goto LABEL_133;
          }

          if (v38 + v24 > v178)
          {
            break;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_23:
          a2 = *(v32 + 16);
          v53 = *(v32 + 24);
          if (a2 >= v53 >> 1)
          {
            sub_22BB2F158(v53);
            sub_22BB8C414();
            v32 = v57;
          }

          *(v32 + 16) = a2 + 1;
          v54 = v32 + 16 * a2;
          *(v54 + 32) = v35;
          *(v54 + 40) = v37;
          sub_22BB30E10();
          v20 = sub_22BDBAC64();

          v55 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_137;
          }

          v56 = __OFADD__(v24, v55);
          v24 += v55;
          if (v56)
          {
            goto LABEL_138;
          }

          v31 += 2;
          if (!--v30)
          {
            goto LABEL_36;
          }
        }

        v181 = v32;

        sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
        sub_22BB8E600();
        sub_22BB3130C();
        v181 = sub_22BDBABC4();
        v182 = v39;
        v40 = v174;
        sub_22BDB4174();
        v41 = sub_22BDBB264();
        a1 = v42;
        v172(v40, v176);

        v43 = v180;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BB305BC();
          sub_22BB8C414();
          v43 = v58;
        }

        v45 = *(v43 + 16);
        v44 = *(v43 + 24);
        v180 = v43;
        if (v45 >= v44 >> 1)
        {
          sub_22BB35E08(v44);
          sub_22BB8C414();
          v180 = v59;
        }

        v46 = v180;
        *(v180 + 16) = v45 + 1;
        v47 = v46 + 16 * v45;
        *(v47 + 32) = v41;
        *(v47 + 40) = a1;

        v48 = *(v32 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BB305BC();
          sub_22BD916F8();
          v179 = v60;
        }

        v50 = *(v179 + 16);
        v49 = *(v179 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_22BB2F158(v49);
          sub_22BD916F8();
          v179 = v61;
        }

        v51 = v179;
        *(v179 + 16) = v50 + 1;
        *(v51 + 8 * v50 + 32) = v48;

        v24 = 0;
LABEL_21:
        sub_22BB305BC();
        sub_22BB8C414();
        v32 = v52;
        goto LABEL_23;
      }

      v32 = MEMORY[0x277D84F90];
LABEL_36:

      if (!*(v32 + 16))
      {

        a1 = v163;
        a2 = v164;
        v19 = &off_278723000;
        v22 = v162;
        v78 = v170;
        goto LABEL_47;
      }

      v181 = v32;

      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      sub_22BB8E600();
      sub_22BB3130C();
      v181 = sub_22BDBABC4();
      v182 = v71;
      v72 = v174;
      sub_22BDB4174();
      v73 = sub_22BDBB264();
      v75 = v74;
      v172(v72, v176);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BB8C414();
      }

      sub_22BB37920();
      if (v68)
      {
        sub_22BB35E08(v76);
        sub_22BB8C414();
        v180 = v84;
      }

      sub_22BB36778(v180);
      *(v77 + 32) = v73;
      *(v77 + 40) = v75;

      v20 = *(v32 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD916F8();
        v179 = v85;
      }

      a1 = v163;
      a2 = v164;
      v19 = &off_278723000;
      v22 = v162;
    }

    v78 = v170;
    v80 = *(v179 + 16);
    v79 = *(v179 + 24);
    if (v80 >= v79 >> 1)
    {
      sub_22BB2F158(v79);
      sub_22BD916F8();
      v179 = v82;
    }

    v81 = v179;
    *(v179 + 16) = v80 + 1;
    *(v81 + 8 * v80 + 32) = v20;
LABEL_47:
    v23 = v78 + 1;
    v24 = v180;
  }

  while (v23 != v168);

LABEL_52:
  v87 = *(v24 + 16);
  if (!v87)
  {
    goto LABEL_149;
  }

  v88 = 0;
  v164 = (v87 - 1);
  v177 = v179 + 32;
  v89 = MEMORY[0x277D84F90];
  v90 = (v24 + 40);
  v86 = MEMORY[0x277D84F90];
  v170 = MEMORY[0x277D84F90];
  v180 = v24;
  v165 = v87;
  do
  {
    v168 = v90;
    v169 = v88;
    if (v88 < v87)
    {
      v163 = v89;
      v166 = v86;
      v91 = 0;
      v92 = 0;
      v93 = v88;
      a2 = MEMORY[0x277D84F90];
      while (v93 < *(v24 + 16))
      {
        if (v93 >= *(v179 + 16))
        {
          goto LABEL_140;
        }

        v94 = *(v90 - 1);
        v20 = *v90;
        a1 = *(v177 + 8 * v93);

        v95 = sub_22BDBAC64();
        v24 = *(a2 + 16);
        if (v24)
        {
          if (__OFADD__(v91, a1))
          {
            goto LABEL_143;
          }

          if ((v91 + a1) > v171)
          {
            goto LABEL_71;
          }
        }

        v56 = __OFADD__(v92, v95);
        v92 += v95;
        if (v56)
        {
          goto LABEL_141;
        }

        if (v92 > v178)
        {
LABEL_71:

          v181 = a2;
          sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
          v101 = sub_22BB8E600();
          v102 = sub_22BB31E7C(v101);
          v104 = v103;

          v181 = v102;
          v182 = v104;
          sub_22BDB4174();
          v20 = &v181;
          sub_22BDBB264();
          v105 = sub_22BB32DB8();
          v106(v105);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BB305BC();
            sub_22BB8C414();
            v170 = v134;
          }

          v89 = v163;
          sub_22BB328CC();
          if (v68)
          {
            sub_22BB35E08(v107);
            sub_22BB8C414();
            v170 = v135;
          }

          sub_22BB36778(v170);
          *(v108 + 32) = a2;
          *(v108 + 40) = &v181;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BB305BC();
            sub_22BD916F8();
            v89 = v136;
          }

          v109 = *(v89 + 16);
          sub_22BB325B4();
          if (v68)
          {
            sub_22BB35E08(v110);
            sub_22BD916F8();
            v89 = v137;
          }

          *(v89 + 16) = v104;
          *(v89 + 8 * v109 + 32) = v93;
          if (v91 <= v167)
          {

            a2 = MEMORY[0x277D84F90];
            v24 = v180;
            v86 = v166;
          }

          else
          {
            v86 = v166;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22BB305BC();
              sub_22BB8C414();
              v86 = v138;
            }

            v111 = *(v86 + 16);
            sub_22BB325B4();
            if (v68)
            {
              sub_22BB35E08(v112);
              sub_22BB8C414();
              v86 = v139;
            }

            *(v86 + 16) = v104;
            v113 = v86 + 16 * v111;
            *(v113 + 32) = a2;
            *(v113 + 40) = &v181;
            a2 = MEMORY[0x277D84F90];
            v24 = v180;
          }

          goto LABEL_86;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BB8C414();
          a2 = v99;
        }

        v96 = *(a2 + 16);
        sub_22BB325B4();
        if (v68)
        {
          sub_22BB35E08(v97);
          sub_22BB8C414();
          a2 = v100;
        }

        *(a2 + 16) = v24;
        v98 = a2 + 16 * v96;
        *(v98 + 32) = v94;
        *(v98 + 40) = v20;
        v56 = __OFADD__(v91, a1);
        v91 += a1;
        if (v56)
        {
          goto LABEL_142;
        }

        ++v93;
        v24 = v180;
        v90 += 2;
        if (v93 >= *(v180 + 16))
        {
          v86 = v166;
          v89 = v163;
          goto LABEL_86;
        }
      }

      goto LABEL_139;
    }

    v91 = 0;
    a2 = MEMORY[0x277D84F90];
LABEL_86:
    if (*(a2 + 16))
    {
      v181 = a2;
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      v114 = sub_22BB8E600();
      v115 = sub_22BB31E7C(v114);
      v117 = v116;

      v181 = v115;
      v182 = v117;
      sub_22BDB4174();
      v20 = &v181;
      sub_22BDBB264();
      v118 = sub_22BB32DB8();
      v119(v118);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BB8C414();
        v170 = v128;
      }

      sub_22BB328CC();
      if (v68)
      {
        sub_22BB35E08(v120);
        sub_22BB8C414();
        v170 = v129;
      }

      sub_22BB36778(v170);
      *(v121 + 32) = a2;
      *(v121 + 40) = &v181;
      v122 = *(v180 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD916F8();
        v89 = v130;
      }

      v123 = *(v89 + 16);
      sub_22BB325B4();
      if (v68)
      {
        sub_22BB35E08(v124);
        sub_22BD916F8();
        v89 = v131;
      }

      *(v89 + 16) = v117;
      *(v89 + 8 * v123 + 32) = v122;
      if (v91 <= v167)
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BB305BC();
          sub_22BB8C414();
          v86 = v132;
        }

        v125 = *(v86 + 16);
        sub_22BB325B4();
        if (v68)
        {
          sub_22BB35E08(v126);
          sub_22BB8C414();
          v86 = v133;
        }

        *(v86 + 16) = v117;
        v127 = v86 + 16 * v125;
        *(v127 + 32) = a2;
        *(v127 + 40) = &v181;
      }

      v24 = v180;
    }

    else
    {
    }

    v90 = v168 + 2;
    v88 = v169 + 1;
    v87 = v165;
  }

  while (v169 != v164);
  if ((v160 & 1) == 0 && *(v86 + 16) <= v161)
  {

    sub_22BB37440();
    v179 = v170;
    goto LABEL_134;
  }

  v140 = *(v24 + 16);
  v166 = v86;
  if (v140)
  {
    v141 = 0;
    v142 = v170 + 32;
    v143 = v89;
    v144 = v89 + 32;
    v20 = MEMORY[0x277D84F90];
    while ((v141 & 0x8000000000000000) == 0)
    {
      if (v141 >= *(v170 + 16))
      {
        goto LABEL_146;
      }

      v145 = (v142 + 16 * v141);
      a2 = v145[1];

      v24 = sub_22BDBAC64();

      if (v24 > v167)
      {
        if (v141 >= *(v170 + 16))
        {
          goto LABEL_148;
        }

        a1 = *v145;
        v24 = v145[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BB305BC();
          sub_22BB8C414();
          v20 = v149;
        }

        v147 = v20[2];
        v146 = v20[3];
        a2 = v147 + 1;
        if (v147 >= v146 >> 1)
        {
          sub_22BB2F158(v146);
          sub_22BB8C414();
          v20 = v150;
        }

        v20[2] = a2;
        v148 = &v20[2 * v147];
        v148[4] = a1;
        v148[5] = v24;
      }

      if (v141 >= *(v143 + 16))
      {
        goto LABEL_147;
      }

      v141 = *(v144 + 8 * v141);
      if (v141 >= v140)
      {
        goto LABEL_122;
      }
    }

    goto LABEL_145;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_122:
  v20 = sub_22BD93280(v161, v20);
  v24 = v151;
  a2 = v152;
  a1 = v153;
  if ((v153 & 1) == 0)
  {
    goto LABEL_123;
  }

  sub_22BDBB6F4();
  swift_unknownObjectRetain_n();
  v155 = swift_dynamicCastClass();
  if (!v155)
  {
    swift_unknownObjectRelease();
    v155 = MEMORY[0x277D84F90];
  }

  v156 = *(v155 + 16);

  if (__OFSUB__(a1 >> 1, a2))
  {
    goto LABEL_150;
  }

  if (v156 != (a1 >> 1) - a2)
  {
    goto LABEL_151;
  }

  v157 = swift_dynamicCastClass();
  if (v157)
  {
    v86 = v157;
    swift_unknownObjectRelease();
    sub_22BB37440();
  }

  else
  {
    sub_22BB37440();
    swift_unknownObjectRelease_n();
    v86 = MEMORY[0x277D84F90];
  }

LABEL_133:

LABEL_134:

  return v86;
}

unint64_t sub_22BD94264()
{
  result = qword_27D8E6C68;
  if (!qword_27D8E6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6C68);
  }

  return result;
}

void sub_22BD942B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_22BD917AC((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_22BDB9B54();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_22BD94398(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22BD94468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22BDBABE4();
  [a3 setString_];
}

_BYTE *storeEnumTagSinglePayload for TextChunker(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BD9456C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

id sub_22BD94600(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22BDB6564();
  v8 = &v3[OBJC_IVAR____TtCC23IntelligenceFlowRuntime24InternalXPCServiceServer6Server_clientApplicationIdentifier];
  *v8 = v7;
  v8[1] = v9;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_init);

  v11 = sub_22BDB6574();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_22BD946F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22BD9473C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22BD945BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD9485C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22BD948A4()
{
  swift_beginAccess();
  v0 = qword_28142F338;
  v1 = qword_28142F338;
  return v0;
}

void sub_22BD948F0(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F338;
  qword_28142F338 = a1;
}

uint64_t sub_22BD949E0(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F340 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BD94A8C()
{
  v1 = sub_22BDB96E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 128);
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_22BDB96A4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_22BD94BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BDB77D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v6 = sub_22BDB77C4();
  v7 = sub_22BDBB134();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22BB2C000, v6, v7, "QueryDecorationXPCServiceServer received SIGTERM.", v8, 2u);
    MEMORY[0x2318A6080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *MEMORY[0x277D41D58];
  v10 = sub_22BDB64B4();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

void sub_22BD94D34()
{
  sub_22BB30F94();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v11);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BBDB97C();
  v14 = sub_22BB2F0C8(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  sub_22BB36AE0();
  sub_22BB30444();
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  *(v17 - v16) = 15;
  (*(v18 + 104))(v17 - v16, *MEMORY[0x277D85188]);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v19 = sub_22BDB6614();
  sub_22BB34ED4(v19);
  sub_22BB3AB50();
  v20 = sub_22BDB65F4();
  v21 = sub_22BDBAEF4();
  sub_22BB588F4(v21);
  sub_22BB322B0();
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = v4;
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v2;
  v23[4] = v10;
  v23[5] = v8;

  v24 = v2;
  sub_22BB352C4(v10, v8);
  sub_22BDBAFA4();

  sub_22BB58780(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD94F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_22BBE6DE0(&qword_27D8E6440, &qword_22BDCE290);
  v5[14] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6CB8, &qword_22BDD0788);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9505C, 0, 0);
}

uint64_t sub_22BD9561C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_22BDB5F24();
  v2[5] = swift_task_alloc();
  v3 = sub_22BDB77D4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_22BDB9774();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD95788, 0, 0);
}

uint64_t sub_22BD95A20()
{
  sub_22BB2F35C();
  v1 = sub_22BD7CA00(v0[3], v0[15], v0[16]);
  v0[18] = v1;

  return MEMORY[0x2822009F8](sub_22BD95AB8, v1, 0);
}

uint64_t sub_22BD95AB8()
{
  sub_22BB2F0D4();
  sub_22BD94A8C();

  v0 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22BD95B20()
{
  v120 = v0;
  (*(v0[12] + 32))(v0[14], v0[13], v0[11]);
  v105 = v0;
  v0[2] = sub_22BDB9744();
  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB8F3FC();
  v1 = sub_22BDB9174();

  v2 = *(v1 + 16);
  if (v2)
  {
    v111 = MEMORY[0x277D84F90];
    sub_22BD28158(0, v2, 0);
    v3 = 0;
    v4 = v111;
    v5 = v111[2];
    v6 = 16 * v5;
    do
    {
      v8 = *(v1 + v3 + 40);
      v7 = *(v1 + v3 + 48);
      v111 = v4;
      v9 = *(v4 + 24);
      v10 = v5 + 1;

      if (v5 >= v9 >> 1)
      {
        sub_22BD28158(v9 > 1, v10, 1);
        v4 = v111;
      }

      *(v4 + 16) = v10;
      v11 = v4 + v6;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 16;
      v3 += 24;
      ++v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

  v12 = sub_22BDB77C4();
  v13 = sub_22BDBB104();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v105[14];
  v16 = v105[11];
  v17 = v105[12];
  v18 = v105[10];
  v20 = v105[6];
  v19 = v105[7];
  if (v14)
  {
    v99 = v105[10];
    v21 = sub_22BB31AD8();
    v93 = v20;
    v22 = sub_22BB314C8();
    v111 = v22;
    *v21 = 136315138;
    v23 = MEMORY[0x2318A4D50](v4, MEMORY[0x277D837D0]);
    v87 = v15;
    v81 = v16;
    v25 = sub_22BB32EE0(v23, v24, &v111);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_22BB2C000, v12, v13, "QueryDecorationXPCServiceServer found previousQueries: %s", v21, 0xCu);
    sub_22BB32FA4(v22);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v19 + 8))(v99, v93);
    (*(v17 + 8))(v15, v81);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    (*(v17 + 8))(v15, v16);
  }

  v33 = v105[13];
  v35 = v105[9];
  v34 = v105[10];
  v36 = v105[8];
  v37 = v105[5];
  v105[14], v26, v27, v28, v29, v30, v31, v32, v75, v81, v87, v93, v99, v105, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121;
  v33, v38, v39, v40, v41, v42, v43, v44, v76, v82, v88, v94, v100, v106, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121;
  v34, v45, v46, v47, v48, v49, v50, v51, v77, v83, v89, v95, v101, v107, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121;
  v35, v52, v53, v54, v55, v56, v57, v58, v78, v84, v90, v96, v102, v108, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121;
  v36, v59, v60, v61, v62, v63, v64, v65, v79, v85, v91, v97, v103, v109, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121;
  v37, v66, v67, v68, v69, v70, v71, v72, v80, v86, v92, v98, v104, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121;
  sub_22BB39738();

  return v73(v4);
}

void sub_22BD95FD0()
{
  sub_22BB30F94();
  sub_22BB52F3C(v7, v8, v9, v10, v11);
  v12 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v12);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BBDB97C();
  v15 = sub_22BB2F0C8(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  sub_22BB36AE0();
  sub_22BB30444();
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  *(v18 - v17) = 15;
  (*(v19 + 104))(v18 - v17, *MEMORY[0x277D85188]);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v20 = sub_22BDB6614();
  sub_22BB34ED4(v20);
  sub_22BB3AB50();
  sub_22BDB65F4();
  v21 = sub_22BDBAEF4();
  sub_22BB588F4(v21);
  sub_22BB322B0();
  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  *(v22 + 24) = v6;
  v23 = swift_allocObject();
  sub_22BB3FD18(v23);

  v24 = v3;
  sub_22BB352C4(v5, v4);
  v25 = sub_22BB352C4(v2, v1);
  sub_22BB3B614(v25, v26, sub_22BD9A95C, v27, &unk_22BDD07D0);

  sub_22BB58780(v0, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD96200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v12 = swift_task_alloc();
  v7[6] = v12;
  *v12 = v7;
  v12[1] = sub_22BD962CC;

  return sub_22BD96524(a4, a5, a6, a7);
}

uint64_t sub_22BD963D0()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v0[2] = v0[7];
  v1 = v0[8];
  sub_22BDB62E4();
  sub_22BB37EB4();
  sub_22BD9A87C(v2, 255, v3, MEMORY[0x277D1F120]);
  v4 = sub_22BDB4144();
  v6 = v0[7];
  if (v1)
  {
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v9 = v0[3];

    *v9 = v7;
    v9[1] = v8;
  }

  sub_22BDB6604();
  sub_22BB2F09C();
  sub_22BB3478C();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_22BD964C8()
{
  sub_22BB2F0D4();
  sub_22BDB6604();
  sub_22BB2F09C();

  return v0();
}

uint64_t sub_22BD96524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  sub_22BDB62C4();
  v5[21] = swift_task_alloc();
  sub_22BDB43E4();
  v5[22] = swift_task_alloc();
  v5[23] = sub_22BDB5F24();
  v5[24] = swift_task_alloc();
  v6 = sub_22BDB9774();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6CB8, &qword_22BDD0788);
  v5[28] = swift_task_alloc();
  v7 = sub_22BDB9C14();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6CC0, &qword_22BDD0790);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6440, &qword_22BDCE290);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v8 = sub_22BDB77D4();
  v5[37] = v8;
  v5[38] = *(v8 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v9 = sub_22BDB5984();
  v5[41] = v9;
  v5[42] = *(v9 - 8);
  v5[43] = swift_task_alloc();
  v10 = sub_22BDB7734();
  v5[44] = v10;
  v5[45] = *(v10 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v11 = sub_22BDB7754();
  v5[48] = v11;
  v5[49] = *(v11 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD96930, 0, 0);
}

uint64_t sub_22BD96930()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[49];
  sub_22BDB60F4();
  sub_22BDB7D84();
  sub_22BDB7D64();
  v4 = sub_22BDB7D74();
  v6 = v5;

  sub_22BDB60F4();
  sub_22BDB7744();
  sub_22BDB7704();
  v7 = *(v3 + 8);
  v7(v1, v2);
  v8 = sub_22BDB7744();
  v9 = sub_22BDBB1D4();
  result = sub_22BDBB244();
  if (result)
  {
    if ((v6 & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = sub_22BDB7714();
        _os_signpost_emit_with_name_impl(&dword_22BB2C000, v8, v9, v12, v4, "", v11, 2u);
        sub_22BB30AF0();
        goto LABEL_10;
      }

      __break(1u);
    }

    if (HIDWORD(v4))
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 15);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v13 = v0[47];
  v14 = v0[45];
  v15 = v7;
  v16 = v0[44];
  (*(v14 + 16))(v0[46], v13, v16);
  v17 = sub_22BDB77A4();
  sub_22BB34ED4(v17);
  v0[52] = sub_22BDB7794();
  (*(v14 + 8))(v13, v16);
  v18 = sub_22BB331D4();
  v15(v18);
  v0[53] = sub_22BDB62B4();
  sub_22BB38F68();
  sub_22BD9A87C(v19, 255, v20, MEMORY[0x277D1F0C8]);
  sub_22BDB4114();
  sub_22BB363D0();
  v23 = sub_22BD9A87C(v21, 255, v22, MEMORY[0x277D1CF70]);
  sub_22BB3AFDC(v23);
  v24 = swift_task_alloc();
  v0[54] = v24;
  *v24 = v0;
  v24[1] = sub_22BD96D60;
  v25 = v0[43];

  return sub_22BD999C0(v25);
}

uint64_t sub_22BD97360()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1 = v0[56];
  v2 = v0[34];
  v3 = v0[29];
  v4 = v0[30];
  v5 = *(*v1 + 200);
  v6 = _s24StandardSessionResourcesVMa(0);
  (*(v4 + 16))(v2, v1 + *(v6 + 32) + v5, v3);

  sub_22BB31C00();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD97410()
{
  sub_22BB2F35C();
  sub_22BB336D0(v0[34], 0, 1, v0[29]);
  v1 = v0[56];

  return MEMORY[0x2822009F8](sub_22BD9749C, v1, 0);
}

uint64_t sub_22BD9749C()
{
  sub_22BB2F0D4();
  sub_22BD794D8();

  v0 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22BD977C4()
{
  sub_22BB2F0D4();
  sub_22BD94A8C();

  v0 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22BD9782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31550();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[27];
  v26 = v22[25];
  v27 = v22[26];
  v28 = sub_22BDB9744();
  (*(v27 + 8))(v25, v26);
  v22[14] = v28;
  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB8F3FC();
  sub_22BDB9134();

  v29 = v22[28];
  v30 = sub_22BDB62F4();
  sub_22BB336D0(v29, 0, 1, v30);
  v31 = sub_22BB2F324();
  sub_22BD9A6C4(v31, v32, v33, v34);
  sub_22BB3A4D4();
  v35 = v22[35];
  if (v36 == 1)
  {
    v37 = (v22 + 13);
    sub_22BB58780(v35, &qword_27D8E6440, &qword_22BDCE290);
    sub_22BB34F80();
    v38 = sub_22BDB77C4();
    v39 = sub_22BDBB104();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v22[38];
    v42 = v22[39];
    v43 = v22[37];
    if (v40)
    {
      v44 = sub_22BB3B778();
      v45 = swift_slowAlloc();
      a10 = v42;
      a11 = sub_22BB314C8();
      v46 = a11;
      *v44 = 136315394;
      sub_22BB3480C();
      *(v44 + 4) = sub_22BB32EE0(0xD000000000000045, v47, &a11);
      *(v44 + 12) = 2112;
      swift_beginAccess();
      v48 = *v37;
      *(v44 + 14) = *v37;
      *v45 = v48;
      v49 = v48;
      _os_log_impl(&dword_22BB2C000, v38, v39, "%s call was made with %@", v44, 0x16u);
      sub_22BB58780(v45, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB30AF0();
      sub_22BB32FA4(v46);
      sub_22BB3A3D8();
      sub_22BB30AF0();

      (*(v41 + 8))(a10, v43);
    }

    else
    {

      (*(v41 + 8))(v42, v43);
    }

    swift_beginAccess();
    sub_22BB3493C();
    v55 = v54;
    v56 = sub_22BB6BEC8();
    v57 = sub_22BB39548(v56);
    *v57 = v58;
    sub_22BB35E1C(v57);
    sub_22BB31534();

    return MEMORY[0x282176840](v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_22BD9A72C(v35, v22[24]);
    v50 = swift_task_alloc();
    v22[59] = v50;
    *v50 = v22;
    sub_22BB30A70(v50);
    sub_22BB31534();

    return sub_22BD9561C(v51);
  }
}

uint64_t sub_22BD97C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = v14;
  if (*(v14 + 480))
  {
    v50 = *(v14 + 424);
    v51 = *(v14 + 192);
    v15 = *(v14 + 168);
    v16 = *(v14 + 104);
    sub_22BDB6264();

    v17 = v16;
    sub_22BDB62A4();

    v18 = v17;
    sub_22BDB6244();

    v19 = v18;
    sub_22BDB6294();

    v20 = v19;
    sub_22BDB6224();

    v21 = v20;
    sub_22BDB6274();

    v22 = v21;
    sub_22BDB6214();

    v23 = v22;
    sub_22BDB6284();

    v24 = v23;
    sub_22BDB6234();

    v25 = objc_allocWithZone(v50);
    v26 = sub_22BDB6254();
    sub_22BD9A5CC(v51);

    *(v14 + 104) = v26;
  }

  else
  {
    sub_22BD9A5CC(*(v14 + 192));
  }

  sub_22BB34F80();
  v27 = sub_22BDB77C4();
  v28 = sub_22BDBB104();
  if (sub_22BB2F2EC(v28))
  {
    sub_22BB3B778();
    v29 = sub_22BB2F340();
    v52 = sub_22BB314C8();
    *v15 = 136315394;
    sub_22BB3480C();
    v31 = sub_22BB32EE0(0xD000000000000045, v30, &v52);
    sub_22BB36784(v31);
    sub_22BB73C1C();
    sub_22BB69380(&dword_22BB2C000, v32, v33, "%s call was made with %@");
    sub_22BB58780(v29, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB3A3D8();
    sub_22BB69C08();
    sub_22BB32238();
  }

  v34 = sub_22BB30C3C();
  v35(v34);
  sub_22BB58BC0();
  sub_22BB3493C();
  v37 = v36;
  v38 = sub_22BB6BEC8();
  v39 = sub_22BB39548(v38);
  *v39 = v40;
  v41 = sub_22BB35E1C(v39);

  return MEMORY[0x282176840](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22BD97FE8()
{
  v1 = v0[61];
  v2 = v0[52];
  v156 = v0[51];
  v174 = v0[50];
  v192 = v0[47];
  v210 = v0[46];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[41];
  v228 = v0[40];
  v246 = v0[39];
  v6 = v0[36];
  v7 = v0[34];
  v264 = v0[35];
  v282 = v0[33];
  v300 = v0[32];
  v318 = v0[31];
  v8 = v0[28];
  v336 = v0[27];
  v354 = v0[24];
  v372 = v0[22];
  v390 = v0[21];

  sub_22BB58780(v8, &qword_27D8E6CB8, &qword_22BDD0788);
  sub_22BB58780((v0 + 2), &unk_27D8E6CC8, &unk_22BDD07A8);
  sub_22BB58780(v7, &qword_27D8E6CC0, &qword_22BDD0790);
  sub_22BB58780(v6, &qword_27D8E6440, &qword_22BDCE290);
  (*(v3 + 8))(v4, v5);

  sub_22BD99650(v2);

  v156, v9, v10, v11, v12, v13, v14, v15, v138, v156, v174, v192, v210, v228, v246, v264, v282, v300, v318, v336, v354, v372, v390, v408, v426;
  v175, v16, v17, v18, v19, v20, v21, v22, v139, v157, v175, v193, v211, v229, v247, v265, v283, v301, v319, v337, v355, v373, v391, v409, v427;
  v194, v23, v24, v25, v26, v27, v28, v29, v140, v158, v176, v194, v212, v230, v248, v266, v284, v302, v320, v338, v356, v374, v392, v410, v428;
  v213, v30, v31, v32, v33, v34, v35, v36, v141, v159, v177, v195, v213, v231, v249, v267, v285, v303, v321, v339, v357, v375, v393, v411, v429;
  v4, v37, v38, v39, v40, v41, v42, v43, v142, v160, v178, v196, v214, v232, v250, v268, v286, v304, v322, v340, v358, v376, v394, v412, v430;
  v233, v44, v45, v46, v47, v48, v49, v50, v143, v161, v179, v197, v215, v233, v251, v269, v287, v305, v323, v341, v359, v377, v395, v413, v431;
  v252, v51, v52, v53, v54, v55, v56, v57, v144, v162, v180, v198, v216, v234, v252, v270, v288, v306, v324, v342, v360, v378, v396, v414, v432;
  v6, v58, v59, v60, v61, v62, v63, v64, v145, v163, v181, v199, v217, v235, v253, v271, v289, v307, v325, v343, v361, v379, v397, v415, v433;
  v272, v65, v66, v67, v68, v69, v70, v71, v146, v164, v182, v200, v218, v236, v254, v272, v290, v308, v326, v344, v362, v380, v398, v416, v434;
  v7, v72, v73, v74, v75, v76, v77, v78, v147, v165, v183, v201, v219, v237, v255, v273, v291, v309, v327, v345, v363, v381, v399, v417, v435;
  v292, v79, v80, v81, v82, v83, v84, v85, v148, v166, v184, v202, v220, v238, v256, v274, v292, v310, v328, v346, v364, v382, v400, v418, v436;
  v311, v86, v87, v88, v89, v90, v91, v92, v149, v167, v185, v203, v221, v239, v257, v275, v293, v311, v329, v347, v365, v383, v401, v419, v437;
  v330, v93, v94, v95, v96, v97, v98, v99, v150, v168, v186, v204, v222, v240, v258, v276, v294, v312, v330, v348, v366, v384, v402, v420, v438;
  v8, v100, v101, v102, v103, v104, v105, v106, v151, v169, v187, v205, v223, v241, v259, v277, v295, v313, v331, v349, v367, v385, v403, v421, v439;
  v350, v107, v108, v109, v110, v111, v112, v113, v152, v170, v188, v206, v224, v242, v260, v278, v296, v314, v332, v350, v368, v386, v404, v422, v440;
  v369, v114, v115, v116, v117, v118, v119, v120, v153, v171, v189, v207, v225, v243, v261, v279, v297, v315, v333, v351, v369, v387, v405, v423, v441;
  v388, v121, v122, v123, v124, v125, v126, v127, v154, v172, v190, v208, v226, v244, v262, v280, v298, v316, v334, v352, v370, v388, v406, v424, v442;
  v407, v128, v129, v130, v131, v132, v133, v134, v155, v173, v191, v209, v227, v245, v263, v281, v299, v317, v335, v353, v371, v389, v407, v425, v443;
  sub_22BB39738();
  v136 = v0[64];

  return v135(v136);
}

uint64_t sub_22BD981E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB345B4();
  a17 = v19;
  a18 = v20;
  sub_22BB34E84();
  a16 = v18;
  sub_22BDB6394();
  v21 = sub_22BDB77C4();
  v22 = sub_22BDBB114();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = sub_22BB31AD8();
    a9 = sub_22BB314C8();
    *v23 = 136315138;
    sub_22BB3480C();
    *(v23 + 4) = sub_22BB32EE0(0xD000000000000045, v24, &a9);
    _os_log_impl(&dword_22BB2C000, v21, v22, "%s unable to get session from crossAPIAssociationKey", v23, 0xCu);
    sub_22BB69C08();
    sub_22BB30AF0();
  }

  v25 = sub_22BB30AE4();
  v26(v25);
  *(v18 + 448) = 0;
  v27 = swift_task_alloc();
  *(v18 + 456) = v27;
  *v27 = v18;
  sub_22BB31320(v27);
  sub_22BB37AC0();

  return sub_22BD99E48(v28, v29);
}

uint64_t sub_22BD98320()
{
  v1 = v0[61];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[28];

  sub_22BB58780(v4, &qword_27D8E6CB8, &qword_22BDD0788);
  sub_22BB58780((v0 + 2), &unk_27D8E6CC8, &unk_22BDD07A8);
  sub_22BB58780(v3, &qword_27D8E6CC0, &qword_22BDD0790);
  sub_22BB58780(v2, &qword_27D8E6440, &qword_22BDCE290);
  v5 = sub_22BB30C3C();
  v6(v5);

  v323 = v0[63];
  v7 = v0[51];
  v8 = v0[50];
  v10 = v0[46];
  v9 = v0[47];
  v11 = v0[43];
  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[36];
  v143 = v0[35];
  v161 = v0[34];
  v179 = v0[33];
  v197 = v0[32];
  v215 = v0[31];
  v233 = v0[28];
  v251 = v0[27];
  v269 = v0[24];
  v287 = v0[22];
  v305 = v0[21];
  sub_22BD99650(v0[52]);

  v7, v15, v16, v17, v18, v19, v20, v21, v143, v161, v179, v197, v215, v233, v251, v269, v287, v305, v323, v341, v359, v377, v395, v413, v431;
  v8, v22, v23, v24, v25, v26, v27, v28, v144, v162, v180, v198, v216, v234, v252, v270, v288, v306, v324, v342, v360, v378, v396, v414, v432;
  v9, v29, v30, v31, v32, v33, v34, v35, v145, v163, v181, v199, v217, v235, v253, v271, v289, v307, v325, v343, v361, v379, v397, v415, v433;
  v10, v36, v37, v38, v39, v40, v41, v42, v146, v164, v182, v200, v218, v236, v254, v272, v290, v308, v326, v344, v362, v380, v398, v416, v434;
  v11, v43, v44, v45, v46, v47, v48, v49, v147, v165, v183, v201, v219, v237, v255, v273, v291, v309, v327, v345, v363, v381, v399, v417, v435;
  v12, v50, v51, v52, v53, v54, v55, v56, v148, v166, v184, v202, v220, v238, v256, v274, v292, v310, v328, v346, v364, v382, v400, v418, v436;
  v13, v57, v58, v59, v60, v61, v62, v63, v149, v167, v185, v203, v221, v239, v257, v275, v293, v311, v329, v347, v365, v383, v401, v419, v437;
  v14, v64, v65, v66, v67, v68, v69, v70, v150, v168, v186, v204, v222, v240, v258, v276, v294, v312, v330, v348, v366, v384, v402, v420, v438;
  v151, v71, v72, v73, v74, v75, v76, v77, v151, v169, v187, v205, v223, v241, v259, v277, v295, v313, v331, v349, v367, v385, v403, v421, v439;
  v170, v78, v79, v80, v81, v82, v83, v84, v152, v170, v188, v206, v224, v242, v260, v278, v296, v314, v332, v350, v368, v386, v404, v422, v440;
  v189, v85, v86, v87, v88, v89, v90, v91, v153, v171, v189, v207, v225, v243, v261, v279, v297, v315, v333, v351, v369, v387, v405, v423, v441;
  v208, v92, v93, v94, v95, v96, v97, v98, v154, v172, v190, v208, v226, v244, v262, v280, v298, v316, v334, v352, v370, v388, v406, v424, v442;
  v227, v99, v100, v101, v102, v103, v104, v105, v155, v173, v191, v209, v227, v245, v263, v281, v299, v317, v335, v353, v371, v389, v407, v425, v443;
  v246, v106, v107, v108, v109, v110, v111, v112, v156, v174, v192, v210, v228, v246, v264, v282, v300, v318, v336, v354, v372, v390, v408, v426, v444;
  v265, v113, v114, v115, v116, v117, v118, v119, v157, v175, v193, v211, v229, v247, v265, v283, v301, v319, v337, v355, v373, v391, v409, v427, v445;
  v284, v120, v121, v122, v123, v124, v125, v126, v158, v176, v194, v212, v230, v248, v266, v284, v302, v320, v338, v356, v374, v392, v410, v428, v446;
  v303, v127, v128, v129, v130, v131, v132, v133, v159, v177, v195, v213, v231, v249, v267, v285, v303, v321, v339, v357, v375, v393, v411, v429, v447;
  v322, v134, v135, v136, v137, v138, v139, v140, v160, v178, v196, v214, v232, v250, v268, v286, v304, v322, v340, v358, v376, v394, v412, v430, v448;
  sub_22BB2F09C();

  return v141();
}

void sub_22BD98554()
{
  sub_22BB30F94();
  sub_22BB52F3C(v7, v8, v9, v10, v11);
  v12 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v12);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BBDB97C();
  v15 = sub_22BB2F0C8(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  sub_22BB36AE0();
  sub_22BB30444();
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  *(v18 - v17) = 15;
  (*(v19 + 104))(v18 - v17, *MEMORY[0x277D85188]);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v20 = sub_22BDB6614();
  sub_22BB34ED4(v20);
  sub_22BDB65F4();
  v21 = sub_22BDBAEF4();
  sub_22BB588F4(v21);
  sub_22BB322B0();
  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  *(v22 + 24) = v6;
  v23 = swift_allocObject();
  sub_22BB3FD18(v23);

  v24 = v3;
  sub_22BB352C4(v5, v4);
  v25 = sub_22BB352C4(v2, v1);
  sub_22BB3B614(v25, v26, sub_22BB953E8, v27, &unk_22BDD0778);

  sub_22BB58780(v0, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD98790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v12 = swift_task_alloc();
  v7[6] = v12;
  *v12 = v7;
  v12[1] = sub_22BD9885C;

  return sub_22BD96524(a4, a5, a6, a7);
}

uint64_t sub_22BD98960()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1 = v0[8];
  v2 = sub_22BDB62D4();
  v3 = v0[7];
  if (v1)
  {
  }

  else
  {
    v4 = v2;

    v0[2] = v4;
    sub_22BDB6314();
    sub_22BB3A7F4();
    sub_22BD9A87C(v5, 255, v6, MEMORY[0x277D1F1C8]);
    v16 = sub_22BDB4144();
    v18 = v17;
    v19 = v0[3];

    *v19 = v16;
    v19[1] = v18;
  }

  sub_22BDB6604();
  sub_22BB2F09C();
  sub_22BB3478C();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

void sub_22BD98AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v35);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = sub_22BDBAEF4();
  sub_22BB369A8(v39);
  sub_22BB322B0();
  v40 = swift_allocObject();
  *(v40 + 16) = v26;
  *(v40 + 24) = v24;
  v41 = swift_allocObject();
  v41[2] = v20;
  v41[3] = v34;
  v41[4] = v32;
  v41[5] = v30;
  v41[6] = v28;

  v42 = v20;
  sub_22BB352C4(v34, v32);
  sub_22BB352C4(v30, v28);
  sub_22BB33F68();
  sub_22BDBAFA4();

  sub_22BB58780(v38, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD98C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  sub_22BBE6DE0(&qword_27D8E6440, &qword_22BDCE290);
  v6[9] = swift_task_alloc();
  v7 = sub_22BDB7FF4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  sub_22BDB43E4();
  v6[13] = swift_task_alloc();
  v6[14] = sub_22BDB5F24();
  v6[15] = swift_task_alloc();
  v8 = sub_22BDB77D4();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = sub_22BDB5984();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD98E20, 0, 0);
}

void sub_22BD99540(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = a3;
  v14 = a4;
  v21 = a1;
  sub_22BDB4304();

  v15 = sub_22BDB4304();
  v17 = v16;

  *(swift_allocObject() + 16) = v12;
  v18 = sub_22BB331D4();
  a8(v18);

  sub_22BB3531C(v15, v17);
  v19 = sub_22BB331D4();
  sub_22BB3531C(v19, v20);
}

uint64_t sub_22BD99650(uint64_t a1)
{
  v2 = sub_22BDB7764();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BDB7734();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB7754();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB60F4();
  sub_22BDB7D84();
  sub_22BDB7D64();
  v12 = sub_22BDB7D74();
  v14 = v13;

  v15 = sub_22BDB7744();
  v29 = a1;
  v16 = v15;
  sub_22BDB7774();
  v28 = sub_22BDBB1C4();
  result = sub_22BDBB244();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  v25 = v9;
  v26 = v5;
  v27 = v4;
  if ((v14 & 1) == 0)
  {
    v18 = v32;
    if (v12)
    {
LABEL_9:

      sub_22BDB77B4();

      v20 = v30;
      v19 = v31;
      if ((*(v30 + 88))(v18, v31) == *MEMORY[0x277D85B00])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v18, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v16, v28, v23, v12, v21, v22, 2u);
      MEMORY[0x2318A6080](v22, -1, -1);
      v5 = v26;
      v4 = v27;
      v9 = v25;
      goto LABEL_13;
    }

    __break(1u);
  }

  v18 = v32;
  if (HIDWORD(v12))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v33;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22BD999C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22BDB77D4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD99A80, 0, 0);
}

uint64_t sub_22BD99E48(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22BDB9774();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22BDB43E4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD99F7C, 0, 0);
}

uint64_t sub_22BD9A044()
{
  sub_22BB2F0D4();
  sub_22BD94A8C();
  v0 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22BD9A348()
{
  swift_beginAccess();
  v0 = qword_28142F310;
  v1 = qword_28142F310;
  return v0;
}

void sub_22BD9A394(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F310;
  qword_28142F310 = a1;
}

uint64_t sub_22BD9A484(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F318 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BD9A52C()
{
  sub_22BB30F5C();
  sub_22BB3B158();
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB33F08(v4);

  return sub_22BD98C0C(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_22BD9A5CC(uint64_t a1)
{
  v2 = sub_22BDB5F24();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BD9A628()
{
  sub_22BB345B4();
  sub_22BB34E84();
  sub_22BB3B158();
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  sub_22BB33F08(v1);
  sub_22BB37AC0();

  return sub_22BD98790(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BD9A6C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BBE6DE0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22BD9A72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5F24();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD9A790()
{

  sub_22BB3531C(*(v0 + 32), *(v0 + 40));
  sub_22BB3531C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BD9A7E0()
{
  sub_22BB345B4();
  sub_22BB34E84();
  sub_22BB3B158();
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  sub_22BB33F08(v1);
  sub_22BB37AC0();

  return sub_22BD96200(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BD9A87C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22BD9A8C4()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  sub_22BB33F08(v1);
  sub_22BB3478C();

  return sub_22BD94F80(v3, v4, v5, v6, v7);
}

void sub_22BD9A968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_22BDB5FC4();
  sub_22BB30444();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22BB30C74();
  v32 = (v30 - v31);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &a9 - v37;
  v39 = *(v28 + 16);
  v39(v36, v23, v26);
  v39(v32, v25, v26);
  sub_22BB39B40(&qword_27D8E6D98, MEMORY[0x277D37028], MEMORY[0x277D37030]);
  sub_22BDBB294();
  sub_22BDBB284();
  (*(v28 + 8))(v38, v26);
  sub_22BB314EC();
}

uint64_t sub_22BD9AB34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_22BD9AB8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_22BD9AC08(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_22BD9AC34(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_22BD9AC64(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  sub_22BB3CB44(a1);
}

uint64_t sub_22BD9AC84(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_22BD9ACCC(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

void sub_22BD9AFEC()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v10);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BB35894();
  sub_22BB363E8(v12);
  v13 = swift_allocObject();
  v13[2] = v0;
  v13[3] = v7;
  v13[4] = v5;
  v13[5] = v3;
  v13[6] = v9;
  v14 = v0;
  sub_22BB352C4(v7, v5);
  sub_22BDB43E4();
  swift_unknownObjectRetain();

  sub_22BB37178();
  sub_22BDBAFB4();

  sub_22BB325EC(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD9B108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  sub_22BDB5F24();
  v6[32] = swift_task_alloc();
  sub_22BDB5664();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v7 = sub_22BDB77D4();
  v6[35] = v7;
  v6[36] = *(v7 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v6[40] = swift_task_alloc();
  v8 = sub_22BDB9B54();
  v6[41] = v8;
  v6[42] = *(v8 - 8);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  sub_22BDB6054();
  v6[45] = swift_task_alloc();
  v9 = sub_22BDB8E84();
  v6[46] = v9;
  v6[47] = *(v9 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v10 = sub_22BDB5864();
  v6[51] = v10;
  v6[52] = *(v10 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9B400, 0, 0);
}

void sub_22BD9B400(uint64_t a1)
{
  v388 = v1;
  sub_22BD9C5C0(a1);
  sub_22BB58BE4();
  sub_22BB39B40(v3, v4, MEMORY[0x277D1CEC0]);
  sub_22BB3134C();
  sub_22BDB4114();
  v5 = v1[30];
  v6 = v1[31];
  v7 = (v1[27] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientIdentityPack);
  v8 = *v7;
  v1[56] = *v7;
  v9 = v7[1];
  v1[57] = v9;
  v221 = v9;
  v237 = v8;
  sub_22BB3E580(v5, v8, v9, v7[2], v7[3]);
  v10 = *(v6 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v1[47];
    v13 = v1[31];
    v367 = MEMORY[0x277D84F90];
    sub_22BD28828(0, v10, 0);
    v14 = v367;
    v2 = (v13 + 40);
    while (1)
    {
      v15 = v1[46];
      v17 = *(v2 - 1);
      v16 = *v2;
      v385 = 0;
      v383 = 0u;
      v384 = 0u;
      sub_22BB352C4(v17, v16);
      sub_22BDB6044();
      sub_22BB6BC3C();
      sub_22BB39B40(&qword_281428A70, v18, MEMORY[0x277D1E140]);
      sub_22BB3B634(v17, v16, &v383);
      if (v15)
      {
        break;
      }

      v367 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_22BB2F158(v19);
        sub_22BB36AFC();
        sub_22BD28828(v22, v23, v24);
      }

      v2 += 16;
      *(v14 + 16) = v20 + 1;
      sub_22BB2F390();
      (*(v12 + 32))(v14 + v21 + *(v12 + 72) * v20);
      if (!--v10)
      {
        v11 = MEMORY[0x277D84F90];
        goto LABEL_10;
      }
    }

    v25 = v15;
    v26 = v1[51];

    v27 = sub_22BB2F324();
    v29 = v28(v27);
LABEL_23:
    sub_22BB8D2AC(v29);
    v57 = v26;
    v58 = v25;
    v59 = sub_22BDB77C4();
    sub_22BDBB114();

    v60 = sub_22BB72E44();
    v62 = v1[36];
    v61 = v1[37];
    v351 = v1[35];
    if (v60)
    {
      v334 = v1[37];
      v63 = sub_22BB3B778();
      swift_slowAlloc();
      *&v383 = sub_22BB3AA0C();
      *v63 = 136315394;
      v64 = sub_22BDB5524();
      v66 = sub_22BB32EE0(v64, v65, &v383);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2112;
      v67 = v25;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v68;
      *v2 = v68;
      sub_22BB335B0();
      _os_log_impl(v69, v70, v71, v72, v73, 0x16u);
      sub_22BB325EC(v2, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB38680();
      sub_22BB30DDC();
      sub_22BB30AF0();

      (*(v62 + 8))(v334, v351);
    }

    else
    {

      (*(v62 + 8))(v61, v351);
    }

    swift_willThrow();
    v74 = v1[54];
    v75 = v1[53];
    v77 = v1[49];
    v76 = v1[50];
    v78 = v1[48];
    v79 = v1[44];
    v80 = v1[45];
    v81 = v1[43];
    v1[55], v82, v83, v84, v85, v86, v87, v88, v221, v237, v1[40], v1[39], v1[38], v1[37], v1[34], v1[33], v1[32], v367, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v74, v89, v90, v91, v92, v93, v94, v95, v222, v238, v253, v269, v284, v300, v317, v335, v352, v368, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v75, v96, v97, v98, v99, v100, v101, v102, v223, v239, v254, v270, v285, v301, v318, v336, v353, v369, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v76, v103, v104, v105, v106, v107, v108, v109, v224, v240, v255, v271, v286, v302, v319, v337, v354, v370, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v77, v110, v111, v112, v113, v114, v115, v116, v225, v241, v256, v272, v287, v303, v320, v338, v355, v371, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v78, v117, v118, v119, v120, v121, v122, v123, v226, v242, v257, v273, v288, v304, v321, v339, v356, v372, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v80, v124, v125, v126, v127, v128, v129, v130, v227, v243, v258, v274, v289, v305, v322, v340, v357, v373, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v79, v131, v132, v133, v134, v135, v136, v137, v228, v244, v259, v275, v290, v306, v323, v341, v358, v374, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v81, v138, v139, v140, v141, v142, v143, v144, v229, v245, v260, v276, v291, v307, v324, v342, v359, v375, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v261, v145, v146, v147, v148, v149, v150, v151, v230, v246, v261, v277, v292, v308, v325, v343, v360, v376, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v278, v152, v153, v154, v155, v156, v157, v158, v231, v247, v262, v278, v293, v309, v326, v344, v361, v377, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v294, v159, v160, v161, v162, v163, v164, v165, v232, v248, v263, v279, v294, v310, v327, v345, v362, v378, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v311, v166, v167, v168, v169, v170, v171, v172, v233, v249, v264, v280, v295, v311, v328, v346, v363, v379, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v329, v173, v174, v175, v176, v177, v178, v179, v234, v250, v265, v281, v296, v312, v329, v347, v364, v380, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v348, v180, v181, v182, v183, v184, v185, v186, v235, v251, v266, v282, v297, v313, v330, v348, v365, v381, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    v366, v187, v188, v189, v190, v191, v192, v193, v236, v252, v267, v283, v298, v314, v331, v349, v366, v382, v383, *(&v383 + 1), v384, *(&v384 + 1), v385, v386, v387;
    sub_22BB2F09C();
    sub_22BB3AAA8();

    __asm { BRAA            X1, X16 }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_10:
  v30 = *(v14 + 16);
  if (!v30)
  {

    v36 = MEMORY[0x277D84F90];
LABEL_18:
    v1[58] = v36;
    if (*(v36 + 16))
    {
      v52 = v1[40];
      v51 = v1[41];
      sub_22BB94F54(v36, v52);
      if (sub_22BB3AA28(v52, 1, v51) != 1)
      {
        v196 = v1[27];
        (*(v1[42] + 32))(v1[43], v1[40], v1[41]);
        _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
        v197 = v196;
        v198 = sub_22BDB77C4();
        v199 = sub_22BDBB0F4();

        if (os_log_type_enabled(v198, v199))
        {
          v200 = v1[55];
          v202 = v1[51];
          v201 = v1[52];
          v299 = v1[54];
          v315 = v1[36];
          v332 = v1[35];
          v350 = v1[39];
          v203 = sub_22BB3B778();
          *&v383 = sub_22BB3E490();
          *v203 = 136315394;
          v204 = sub_22BDB5524();
          v206 = sub_22BB32EE0(v204, v205, &v383);

          *(v203 + 4) = v206;
          *(v203 + 12) = 2080;
          sub_22BB518E8(v200, (v1 + 11));
          (*(v201 + 16))(v299, v200, v202);
          v207 = sub_22BDBAC14();
          v209 = sub_22BB32EE0(v207, v208, &v383);

          *(v203 + 14) = v209;
          _os_log_impl(&dword_22BB2C000, v198, v199, "SessionCoordinator (client: %s) created with config %s", v203, 0x16u);
          swift_arrayDestroy();
          sub_22BB30AF0();
          sub_22BB38680();

          v210 = *(v315 + 8);
          v210(v350, v332);
        }

        else
        {
          v211 = v1[36];

          v210 = *(v211 + 8);
          v212 = sub_22BB2F0E0();
          (v210)(v212);
        }

        v1[59] = v210;
        sub_22BDB9984();
        sub_22BDB5274();
        sub_22BDB9A74();
        sub_22BDB5534();
        sub_22BDB99F4();
        if (v213)
        {
          sub_22BDB4E54();
        }

        v214 = v1[55];
        v215 = v1[52];
        v216 = v1[53];
        v217 = v1[51];
        v218 = v1[27];
        sub_22BDB5A94();
        v1[60] = *(v218 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_transactionHookContainer);
        sub_22BB518E8(v214, (v1 + 8));
        (*(v215 + 16))(v216, v214, v217);

        v219 = swift_task_alloc();
        v1[61] = v219;
        *v219 = v1;
        v219[1] = sub_22BD9BDA0;
        sub_22BB3AAA8();

        sub_22BB3F280();
        return;
      }

      v53 = v1[40];

      sub_22BB325EC(v53, &unk_27D8E69E0, &qword_22BDC1660);
    }

    else
    {
    }

    v26 = v1[51];
    sub_22BD5EA68();
    sub_22BB369E0();
    v25 = swift_allocError();
    *v54 = 1;
    swift_willThrow();
    v55 = sub_22BB2F324();
    v29 = v56(v55);
    goto LABEL_23;
  }

  v31 = v1[47];
  *&v383 = v11;
  v32 = sub_22BB3B700();
  sub_22BB6FF1C(v32, v33, v34);
  v35 = 0;
  sub_22BB2F390();
  v36 = v383;
  v316 = v14 + v37;
  v333 = v31;
  v268 = v30;
  while (v35 < *(v14 + 16))
  {
    v39 = v1[48];
    v38 = v1[49];
    v40 = v1[46];
    v2 = *(v333 + 16);
    (v2)(v38, v316 + *(v333 + 72) * v35, v40);
    (v2)(v39, v38, v40);
    sub_22BDB99A4();
    v41 = sub_22BB37A78();
    v42(v41);
    *&v383 = v36;
    v44 = *(v36 + 16);
    v43 = *(v36 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_22BB2F158(v43);
      sub_22BB36AFC();
      sub_22BB6FF1C(v48, v49, v50);
      v36 = v383;
    }

    ++v35;
    *(v36 + 16) = v44 + 1;
    sub_22BB382D0();
    (*(v47 + 32))(v45 + v46 * v44);
    if (v268 == v35)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_22BD9BFE8(uint64_t a1)
{
  v346 = v1;
  v2 = v1[27];
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  sub_22BB3B4D4();
  v3 = v2;
  v4 = sub_22BDB77C4();
  v5 = sub_22BDBB0F4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[59];
  if (v6)
  {
    v8 = v1[42];
    v307 = v1[41];
    v324 = v1[43];
    v273 = v1[35];
    v290 = v1[38];
    v9 = sub_22BB3B778();
    v341 = sub_22BB3E490();
    *v9 = 136315394;
    sub_22BB2F0E0();
    v10 = sub_22BDB5524();
    v12 = sub_22BB32EE0(v10, v11, &v341);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_22BDB5624();
    v14 = v13;
    sub_22BB35E54();
    sub_22BB346EC();
    v15 = sub_22BB2F0E0();
    v18 = sub_22BB32EE0(v15, v16, v17);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_22BB2C000, v4, v5, "SessionCoordinator (client: %s) created with ID %s", v9, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB38680();

    v7(v290, v273);
    (*(v8 + 8))(v324, v307);
  }

  else
  {
    v20 = v1[42];
    v19 = v1[43];
    v21 = v1[41];
    v14 = v1[38];
    v22 = v1[35];

    sub_22BB35E54();
    sub_22BB346EC();
    v7(v14, v22);
    (*(v20 + 8))(v19, v21);
  }

  v23 = v1[63];
  v24 = v1[54];
  v25 = v1[55];
  v26 = v1[53];
  v27 = v1[51];
  v161 = v1[50];
  v177 = v1[49];
  v193 = v1[48];
  v209 = v1[45];
  v225 = v1[44];
  v241 = v1[43];
  v257 = v1[40];
  v274 = v1[39];
  v291 = v1[38];
  v308 = v1[37];
  v28 = v1[34];
  v325 = v1[33];
  v29 = v1[32];
  sub_22BB36EF4();
  sub_22BB35E54();
  sub_22BB346EC();
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v30 + 32))(v14, v29);
  v23(v25, v27);
  v25, v31, v32, v33, v34, v35, v36, v37, v145, v161, v177, v193, v209, v225, v241, v257, v274, v291, v308, v325, v341, v342, v343, v344, v345;
  v24, v38, v39, v40, v41, v42, v43, v44, v146, v162, v178, v194, v210, v226, v242, v258, v275, v292, v309, v326, v341, v342, v343, v344, v345;
  v26, v45, v46, v47, v48, v49, v50, v51, v147, v163, v179, v195, v211, v227, v243, v259, v276, v293, v310, v327, v341, v342, v343, v344, v345;
  v164, v52, v53, v54, v55, v56, v57, v58, v148, v164, v180, v196, v212, v228, v244, v260, v277, v294, v311, v328, v341, v342, v343, v344, v345;
  v181, v59, v60, v61, v62, v63, v64, v65, v149, v165, v181, v197, v213, v229, v245, v261, v278, v295, v312, v329, v341, v342, v343, v344, v345;
  v198, v66, v67, v68, v69, v70, v71, v72, v150, v166, v182, v198, v214, v230, v246, v262, v279, v296, v313, v330, v341, v342, v343, v344, v345;
  v215, v73, v74, v75, v76, v77, v78, v79, v151, v167, v183, v199, v215, v231, v247, v263, v280, v297, v314, v331, v341, v342, v343, v344, v345;
  v232, v80, v81, v82, v83, v84, v85, v86, v152, v168, v184, v200, v216, v232, v248, v264, v281, v298, v315, v332, v341, v342, v343, v344, v345;
  v249, v87, v88, v89, v90, v91, v92, v93, v153, v169, v185, v201, v217, v233, v249, v265, v282, v299, v316, v333, v341, v342, v343, v344, v345;
  v266, v94, v95, v96, v97, v98, v99, v100, v154, v170, v186, v202, v218, v234, v250, v266, v283, v300, v317, v334, v341, v342, v343, v344, v345;
  v284, v101, v102, v103, v104, v105, v106, v107, v155, v171, v187, v203, v219, v235, v251, v267, v284, v301, v318, v335, v341, v342, v343, v344, v345;
  v302, v108, v109, v110, v111, v112, v113, v114, v156, v172, v188, v204, v220, v236, v252, v268, v285, v302, v319, v336, v341, v342, v343, v344, v345;
  v320, v115, v116, v117, v118, v119, v120, v121, v157, v173, v189, v205, v221, v237, v253, v269, v286, v303, v320, v337, v341, v342, v343, v344, v345;
  v28, v122, v123, v124, v125, v126, v127, v128, v158, v174, v190, v206, v222, v238, v254, v270, v287, v304, v321, v338, v341, v342, v343, v344, v345;
  v339, v129, v130, v131, v132, v133, v134, v135, v159, v175, v191, v207, v223, v239, v255, v271, v288, v305, v322, v339, v341, v342, v343, v344, v345;
  v29, v136, v137, v138, v139, v140, v141, v142, v160, v176, v192, v208, v224, v240, v256, v272, v289, v306, v323, v340, v341, v342, v343, v344, v345;
  sub_22BB360FC();

  return v143();
}

uint64_t sub_22BD9C330()
{
  v266 = v0;
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[51];
  (*(v0[42] + 8))(v0[43], v0[41]);
  v6 = sub_22BB2F324();
  v7 = v4(v6);
  v8 = v0[62];
  sub_22BB8D2AC(v7);
  v9 = v5;
  v10 = sub_22BB3165C();
  v11 = sub_22BDB77C4();
  v12 = sub_22BDBB114();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[36];
  v15 = v0[35];
  if (v13)
  {
    v224 = v0[37];
    v16 = v0[27];
    sub_22BB3B778();
    sub_22BB2F308();
    v256 = sub_22BB3AA0C();
    *v1 = 136315394;
    v17 = sub_22BDB5524();
    sub_22BB32EE0(v17, v18, &v256);
    sub_22BB3165C();

    *(v1 + 4) = v16;
    *(v1 + 12) = 2112;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 14) = v20;
    *v2 = v20;
    sub_22BB89994(&dword_22BB2C000, v21, v22, "SessionCoordinator (client: %s) had error: %@");
    sub_22BB325EC(v2, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB38680();
    sub_22BB30DDC();
    sub_22BB2F194();

    (*(v14 + 8))(v224, v15);
  }

  else
  {

    v23 = sub_22BB2F0E0();
    v25(v23, v24);
  }

  v240 = v8;
  swift_willThrow();
  v26 = v0[54];
  v27 = v0[53];
  v29 = v0[49];
  v28 = v0[50];
  v30 = v0[48];
  v31 = v0[44];
  v32 = v0[45];
  v33 = v0[43];
  v34 = v0[40];
  v0[55], v35, v36, v37, v38, v39, v40, v41, v0[39], v0[38], v0[37], v0[34], v0[33], v0[32], v240, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v26, v42, v43, v44, v45, v46, v47, v48, v149, v164, v179, v194, v209, v225, v241, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v27, v49, v50, v51, v52, v53, v54, v55, v150, v165, v180, v195, v210, v226, v242, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v28, v56, v57, v58, v59, v60, v61, v62, v151, v166, v181, v196, v211, v227, v243, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v29, v63, v64, v65, v66, v67, v68, v69, v152, v167, v182, v197, v212, v228, v244, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v30, v70, v71, v72, v73, v74, v75, v76, v153, v168, v183, v198, v213, v229, v245, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v32, v77, v78, v79, v80, v81, v82, v83, v154, v169, v184, v199, v214, v230, v246, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v31, v84, v85, v86, v87, v88, v89, v90, v155, v170, v185, v200, v215, v231, v247, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v33, v91, v92, v93, v94, v95, v96, v97, v156, v171, v186, v201, v216, v232, v248, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v34, v98, v99, v100, v101, v102, v103, v104, v157, v172, v187, v202, v217, v233, v249, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v158, v105, v106, v107, v108, v109, v110, v111, v158, v173, v188, v203, v218, v234, v250, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v174, v112, v113, v114, v115, v116, v117, v118, v159, v174, v189, v204, v219, v235, v251, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v190, v119, v120, v121, v122, v123, v124, v125, v160, v175, v190, v205, v220, v236, v252, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v206, v126, v127, v128, v129, v130, v131, v132, v161, v176, v191, v206, v221, v237, v253, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v222, v133, v134, v135, v136, v137, v138, v139, v162, v177, v192, v207, v222, v238, v254, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  v239, v140, v141, v142, v143, v144, v145, v146, v163, v178, v193, v208, v223, v239, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265;
  sub_22BB2F09C();

  return v147();
}

uint64_t sub_22BD9C5C0(uint64_t a1)
{
  sub_22BDB5A74();
  v2 = sub_22BDB6634();

  if (v2)
  {
    if ((*(v1 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientCapabilities) & 0x10) != 0)
    {
      return result;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_22BD9FAE8();
  sub_22BB369E0();
  swift_allocError();
  *v5 = v4;
  return swift_willThrow();
}

void sub_22BD9C75C()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v27 = v7;
  v8 = sub_22BDB43E4();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB34948();
  v14 = v12 - v13;
  v15 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v15);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v19 = sub_22BDBAEF4();
  sub_22BB31B08(v18, v20, v21, v19);
  sub_22BB322B0();
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v2;
  (*(v10 + 16))(v14, v27, v8);
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  *(v24 + 24) = v6;
  (*(v10 + 32))(v24 + v23, v14, v8);
  sub_22BB33F68();

  v25 = v0;

  sub_22BDBAFB4();

  sub_22BB325EC(v18, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD9C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB43E4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_22BDB5F24();
  v4[9] = swift_task_alloc();
  v6 = sub_22BDB9B54();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_22BDB6054();
  v4[13] = swift_task_alloc();
  v7 = sub_22BDB8E84();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9CB4C, 0, 0);
}

void sub_22BD9CB4C(uint64_t a1)
{
  v176 = v1;
  sub_22BD9C5C0(a1);
  v2 = v1[4];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v1[15];
    v164 = MEMORY[0x277D84F90];
    sub_22BD28828(0, v3, 0);
    v6 = v164;
    v157 = v5 + 32;
    v7 = (v2 + 40);
    while (1)
    {
      v8 = v1[14];
      v9 = *(v7 - 1);
      v10 = *v7;
      v173 = 0;
      v171 = 0u;
      v172 = 0u;
      sub_22BB352C4(v9, v10);
      sub_22BDB6044();
      sub_22BB6BC3C();
      sub_22BB39B40(&qword_281428A70, v11, MEMORY[0x277D1E140]);
      sub_22BB3B634(v9, v10, &v171);
      if (v8)
      {
        break;
      }

      v164 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22BB2F158(v12);
        sub_22BB36AFC();
        sub_22BD28828(v15, v16, v17);
      }

      v7 += 2;
      *(v6 + 16) = v13 + 1;
      sub_22BB2F390();
      (*(v5 + 32))(v6 + v14 + *(v5 + 72) * v13);
      if (!--v3)
      {
        v4 = MEMORY[0x277D84F90];
        goto LABEL_10;
      }
    }

LABEL_23:
    v51 = v1[17];
    v52 = v1[16];
    v54 = v1[12];
    v53 = v1[13];
    v56 = v1[8];
    v55 = v1[9];
    v1[18], v41, v42, v43, v44, v45, v46, v47, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, v175;
    v51, v57, v58, v59, v60, v61, v62, v63, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, v175;
    v52, v64, v65, v66, v67, v68, v69, v70, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, v175;
    v53, v71, v72, v73, v74, v75, v76, v77, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, v175;
    v54, v78, v79, v80, v81, v82, v83, v84, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, v175;
    v55, v85, v86, v87, v88, v89, v90, v91, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, v175;
    v56, v92, v93, v94, v95, v96, v97, v98, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, v175;
    sub_22BB2F09C();
    sub_22BB3AAA8();

    __asm { BRAA            X1, X16 }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_10:
  v18 = *(v6 + 16);
  if (v18)
  {
    v19 = v1[15];
    v20 = v1[11];
    *&v171 = v4;
    v21 = sub_22BB3B700();
    sub_22BB6FF1C(v21, v22, v23);
    v24 = 0;
    sub_22BB2F390();
    v25 = v171;
    v143 = v6 + v26;
    v150 = v6;
    v157 = v19;
    v129 = v19 + 8;
    v136 = v19 + 16;
    v115 = v18;
    v122 = v20;
    v108 = v20 + 32;
    v27 = v19;
    while (v24 < *(v6 + 16))
    {
      v28 = v25;
      v30 = v1[16];
      v29 = v1[17];
      v31 = v1[14];
      v32 = *(v27 + 16);
      v32(v29, v143 + *(v27 + 72) * v24, v31);
      v32(v30, v29, v31);
      sub_22BDB99A4();
      (*(v27 + 8))(v1[17], v1[14]);
      v25 = v28;
      *&v171 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_22BB2F158(v33);
        sub_22BB36AFC();
        sub_22BB6FF1C(v38, v39, v40);
        v25 = v171;
      }

      ++v24;
      *(v25 + 16) = v34 + 1;
      sub_22BB382D0();
      (*(v37 + 32))(v35 + v36 * v34);
      v6 = v150;
      if (v115 == v24)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
LABEL_18:
    v1[19] = v25;
    if (!*(v25 + 16))
    {

      sub_22BD5EA68();
      sub_22BB369E0();
      swift_allocError();
      *v50 = 1;
      swift_willThrow();
      goto LABEL_23;
    }

    (*(v1[7] + 16))(v1[8], v1[5], v1[6]);
    sub_22BDB5F04();
    v48 = swift_task_alloc();
    v1[20] = v48;
    *v48 = v1;
    v48[1] = sub_22BD9CFC0;
    sub_22BB3487C(v1[9]);
    sub_22BB3AAA8();

    sub_22BD4843C();
  }
}

uint64_t sub_22BD9D4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22BDB43E4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_22BDB5F24();
  v3[8] = swift_task_alloc();
  v5 = sub_22BDB4C34();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9D614, 0, 0);
}

uint64_t sub_22BD9D614()
{
  sub_22BB2F35C();
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  sub_22BDB5F04();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_22BD9D6E8;

  return sub_22BD48824();
}

void sub_22BD9DAAC()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v7);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB3A4F8();
  sub_22BB369A8(v9);
  sub_22BB322B0();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v2;
  sub_22BB322B0();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v6;
  sub_22BB33F68();

  v12 = v0;
  v13 = v6;
  sub_22BDBAFB4();

  sub_22BB39390();
  sub_22BB314EC();
}

uint64_t sub_22BD9DBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22BD9DBF4, 0, 0);
}

uint64_t sub_22BD9DBF4()
{
  sub_22BB2F35C();
  v2 = sub_22BD9C5C0(v1);
  v5 = *(*(v0 + 24) + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_transactionHookContainer);
  *(v0 + 40) = v5;
  if (v5)
  {
    v6 = *(v0 + 32);

    *(v0 + 48) = [v6 BOOLValue];
    v2 = sub_22BD9DCD4;
    v3 = v5;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22BD9DCD4()
{
  sub_22BB2F0D4();
  *(*(v0 + 40) + 112) = *(v0 + 48);

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22BD9DD3C()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 16);
  sub_22BB33F68();
  *v1 = sub_22BBB79E4();
  sub_22BB360FC();

  return v2();
}

uint64_t sub_22BD9DE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22BDB43E4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_22BDB52C4();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9DF30, 0, 0);
}

uint64_t sub_22BD9DF30()
{
  sub_22BB2F0D4();
  if (qword_28142AB50 != -1)
  {
    sub_22BB32DD0(&qword_28142AB50);
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v0[9] = qword_28142F400;
  (*(v3 + 16))(v1, v4, v2);
  sub_22BDB52A4();
  v0[10] = OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionClientId;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324(&qword_28142A928);
  }

  type metadata accessor for SessionControlActor();
  sub_22BB30E70();
  sub_22BB39B40(v5, v6, &unk_22BDCEAB4);
  sub_22BDBAE44();
  sub_22BB39694();
  v7 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD9E050()
{
  sub_22BB2F35C();
  sub_22BB3E25C();
  sub_22BD7A910();
  *(v0 + 88) = v1;
  sub_22BB33F24();
  sub_22BB346EC();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_22BD9E358()
{
  sub_22BB30F94();
  sub_22BB3B168(v2, v3, v4, v5, v6, v7, v8);
  sub_22BB30444();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB34948();
  v14 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v14);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BB89D6C();
  sub_22BB31B08(v1, v17, v18, v16);
  sub_22BB322B0();
  v19 = swift_allocObject();
  v20 = sub_22BB6BDD0(v19);
  v21(v20);
  v22 = (v12 + ((*(v10 + 80) + 16) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = sub_22BB3E514(v23);
  v25(v24);
  *(v23 + v22) = v0;
  sub_22BB33F68();

  v26 = v0;
  sub_22BB3AC10();

  sub_22BB325EC(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD9E4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22BDB43E4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_22BDB52C4();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9E5C8, 0, 0);
}

uint64_t sub_22BD9E5C8()
{
  sub_22BB2F0D4();
  if (qword_28142AB50 != -1)
  {
    sub_22BB32DD0(&qword_28142AB50);
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v0[9] = qword_28142F400;
  (*(v3 + 16))(v1, v4, v2);
  sub_22BDB52A4();
  v0[10] = OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionClientId;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324(&qword_28142A928);
  }

  type metadata accessor for SessionControlActor();
  sub_22BB30E70();
  sub_22BB39B40(v5, v6, &unk_22BDCEAB4);
  sub_22BDBAE44();
  sub_22BB39694();
  v7 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD9E6E8()
{
  sub_22BB2F35C();
  sub_22BB3E25C();
  sub_22BD7B758();
  *(v0 + 88) = v1;
  sub_22BB33F24();
  sub_22BB346EC();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22BD9E8E0()
{
  v2 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v2);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22BB35894();
  sub_22BB363E8(v4);
  sub_22BB366B8();
  *(swift_allocObject() + 16) = v0;
  sub_22BDB43E4();
  v5 = v0;
  sub_22BB37178();
  sub_22BDBAFB4();

  return sub_22BB325EC(v1, &qword_27D8E2978, &qword_22BDBD020);
}

uint64_t sub_22BD9E9CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_22BDB52C4();
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9EA5C, 0, 0);
}

uint64_t type metadata accessor for SessionXPCServiceServer.Server(uint64_t a1)
{
  result = qword_281429F68;
  if (!qword_281429F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BD9EBF8(uint64_t a1)
{
  result = sub_22BDB43E4();
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

uint64_t sub_22BD9ECC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BD9AD98();
  *a1 = result;
  return result;
}

uint64_t (*sub_22BD9ECF0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_22BD9ED58;
}

uint64_t sub_22BD9ED58(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22BB34B4C();
  }

  return result;
}

uint64_t sub_22BD9ED90()
{
  swift_beginAccess();
  v0 = qword_28142F358;
  v1 = qword_28142F358;
  return v0;
}

void sub_22BD9EDDC(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F358;
  qword_28142F358 = a1;
}

uint64_t sub_22BD9EECC(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F360 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BD9EF80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BBE7CE0();
  *a1 = result;
  return result;
}

uint64_t sub_22BD9EFA8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AB1C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22BD9EFD8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9ABF0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22BD9F008@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AC00(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22BD9F040@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AC84(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_22BD9F074@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9ACCC(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_22BD9F0C0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AB2C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22BD9F134@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AB8C(a1);
  *a2 = result;
  return result;
}

void sub_22BD9F280()
{
  v96 = v0;
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_8:

    v41 = v0[7];
    v0[8], v34, v35, v36, v37, v38, v39, v40, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99;
    v41, v42, v43, v44, v45, v46, v47, v48, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101;
    sub_22BB35ED4();

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[6];
  v66 = MEMORY[0x277D84F90];
  sub_22BB6FF1C(0, v2, 0);
  v4 = v66;
  v5 = 0;
  v54 = v3 + 32;
  v57 = v3;
  v6 = v63[13];
  v7 = (v1 + 40);
  v60 = v1;
  while (v5 < *(v1 + 16))
  {
    sub_22BB352C4(*(v7 - 1), *v7);
    sub_22BB392D4();
    sub_22BB39B40(&qword_27D8E65B8, v8, MEMORY[0x277D1E880]);
    sub_22BDB9474();
    if (v6)
    {

      v17 = v63[7];
      v63[8], v18, v19, v20, v21, v22, v23, v24, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99;
      v17, v25, v26, v27, v28, v29, v30, v31, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100;
      sub_22BB3A80C();
      sub_22BB35ED4();

      __asm { BRAA            X1, X16 }
    }

    v66 = v4;
    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22BB2F158(v9);
      sub_22BB36AFC();
      sub_22BB6FF1C(v14, v15, v16);
    }

    ++v5;
    v0 = v63;
    *(v4 + 16) = v10 + 1;
    sub_22BB382D0();
    (*(v13 + 32))(v11 + v12 * v10);
    v6 = 0;
    v7 += 2;
    v1 = v60;
    if (v2 == v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_22BD9F53C()
{
  result = qword_27D8E6CD8;
  if (!qword_27D8E6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6CD8);
  }

  return result;
}

unint64_t sub_22BD9F594()
{
  result = qword_27D8E6CE0;
  if (!qword_27D8E6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6CE0);
  }

  return result;
}

unint64_t sub_22BD9F5EC()
{
  result = qword_27D8E6CE8;
  if (!qword_27D8E6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6CE8);
  }

  return result;
}

unint64_t sub_22BD9F644()
{
  result = qword_27D8E6CF0;
  if (!qword_27D8E6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6CF0);
  }

  return result;
}

uint64_t sub_22BD9F77C()
{
  sub_22BB2F0D4();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v5[1] = sub_22BB3C48C;

  return sub_22BD9E9CC(v2, v3);
}

uint64_t sub_22BD9F810()
{
  sub_22BB2F35C();
  sub_22BB35760();
  v0 = sub_22BDB43E4();
  sub_22BB30434(v0);
  sub_22BB3E44C();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB72150(v2);

  return sub_22BD9E4D8(v4, v5, v6);
}

uint64_t sub_22BD9F8E8()
{
  sub_22BDB43E4();
  sub_22BB31F70();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BD9F978()
{
  sub_22BB2F35C();
  sub_22BB35760();
  v0 = sub_22BDB43E4();
  sub_22BB30434(v0);
  sub_22BB3E44C();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB72150(v2);

  return sub_22BD9DE40(v4, v5, v6);
}

uint64_t sub_22BD9FA50()
{
  sub_22BB2F35C();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  v3[1] = sub_22BB3C48C;
  v5 = sub_22BB2F6E8();

  return sub_22BD9DBD0(v5, v6, v1);
}

unint64_t sub_22BD9FAE8()
{
  result = qword_27D8E6D18;
  if (!qword_27D8E6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6D18);
  }

  return result;
}

uint64_t sub_22BD9FB3C()
{
  sub_22BB2F35C();
  sub_22BB35760();
  v0 = sub_22BDB43E4();
  sub_22BB2F0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BB3C48C;
  v4 = sub_22BB2F6E8();

  return sub_22BD9D4C8(v4, v5, v6);
}

uint64_t sub_22BD9FC04()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB43E4();
  sub_22BB2F0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB3478C();

  return sub_22BD9C960(v4, v5, v6, v7);
}

uint64_t sub_22BD9FCCC()
{
  sub_22BB30F5C();
  sub_22BB35210();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v5[1] = sub_22BB3C48C;
  v7 = sub_22BB37834();

  return sub_22BD9B108(v7, v8, v9, v1, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for TestingAPISecurityError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BD9FE58()
{
  result = qword_27D8E6DA0;
  if (!qword_27D8E6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6DA0);
  }

  return result;
}

uint64_t sub_22BD9FF04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_clientProxy;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_22BD9FFA0(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  v8 = sub_22BB2F0C8(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_decoder;
  sub_22BDB4134();
  swift_allocObject();
  *&v2[v11] = sub_22BDB4124();
  v12 = &v2[OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof];
  v13 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  sub_22BB336D0(v10, 1, 1, v13);
  *v12 = 0;
  v14 = *(sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80) + 28);
  v15 = sub_22BBE6DE0(&qword_27D8E6DD8, &unk_22BDD0E90);
  sub_22BB2F0C8(v15);
  bzero(&v12[v14], *(v16 + 64));
  sub_22BDA1D80(v10, &v12[v14]);
  *&v3[OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_clientProxy] = 0;
  v17 = sub_22BDB65D4();
  v18 = &v3[OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_clientApplicationIdentifier];
  *v18 = v17;
  v18[1] = v19;
  v23.receiver = v3;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, sel_init);

  sub_22BDB65E4();
  sub_22BB2F330();
  (*(v21 + 8))(a1);
  return v20;
}

id sub_22BDA0154()
{
  ObjectType = swift_getObjectType();
  sub_22BDA019C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22BDA019C()
{
  v1 = sub_22BDB5AB4();
  v2 = sub_22BB2F0C8(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v43[5] = v4 - v3;
  sub_22BDB43E4();
  sub_22BB30444();
  v43[7] = v6;
  v43[8] = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v43[6] = v8 - v7;
  sub_22BDB77D4();
  sub_22BB30444();
  v43[9] = v10;
  v43[10] = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v46 = v12 - v11;
  v13 = sub_22BDB59A4();
  sub_22BB30444();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v19 = v18 - v17;
  sub_22BDB59D4();
  sub_22BB30444();
  v44 = v21;
  v45 = v20;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v24 = v23 - v22;
  v25 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v26);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v27);
  v29 = v43 - v28;
  v30 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  v31 = sub_22BB2F0C8(v30);
  MEMORY[0x28223BE20](v31);
  sub_22BB30C74();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v43 - v36;
  v38 = (v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof);
  os_unfair_lock_lock(v38);
  v39 = sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80);
  sub_22BDA1C4C(v38 + *(v39 + 28), v37);
  os_unfair_lock_unlock(v38);
  sub_22BDA1C4C(v37, v34);
  if (sub_22BB3AA28(v34, 1, v25) == 1)
  {
    sub_22BB58728(v37, &qword_27D8E6DC0, &qword_22BDD0D60);
    v40 = v34;
  }

  else
  {
    sub_22BDA1CBC(v34, v29);
    sub_22BDB5994();
    (*(v15 + 104))(v19, *MEMORY[0x277D1CFA0], v13);
    sub_22BDB59B4();
    if (qword_28142A0D8 != -1)
    {
      sub_22BB30AB8();
      swift_once();
    }

    _s23IntelligenceFlowRuntime22SnippetStreamingRouterC13forwardUpdate_4withy0aB00dE6ClientC06StatusH0V_AC12CheckInProofVtAA0dE15ForwardingErrorOYKF(v24, v29, &v47);
    (*(v44 + 8))(v24, v45);
    sub_22BB33F3C();
    sub_22BDA1F78(v29, v41);
    v40 = v37;
  }

  return sub_22BB58728(v40, &qword_27D8E6DC0, &qword_22BDD0D60);
}

uint64_t sub_22BDA0920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB5E54();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_22BDB5AB4();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA0A14, 0, 0);
}

uint64_t sub_22BDA0BB8(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  if (qword_28142A0D8 != -1)
  {
    sub_22BB30AB8();
    swift_once();
  }

  _s23IntelligenceFlowRuntime22SnippetStreamingRouterC16checkIntoContextyAC12CheckInProofV0aB00deI2IDVAA0dejK5ErrorOYKF(a1, &v20, v10);
  if (v3)
  {
    v11 = v20;
    v12 = sub_22BDB5E54();
    sub_22BB2F330();
    v14 = MEMORY[0x277D1D210];
    if (!v11)
    {
      v14 = MEMORY[0x277D1D218];
    }

    (*(v13 + 104))(a2, *v14, v12);
    sub_22BB35E6C();
    sub_22BDA1F30(v15, v16, MEMORY[0x277D1D228]);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v18 = (v2 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof);
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof));
    v19 = *(sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80) + 28);
    sub_22BB58728(v18 + v19, &qword_27D8E6DC0, &qword_22BDD0D60);
    sub_22BDA1D20(v10, v18 + v19, type metadata accessor for SnippetStreamingRouter.CheckInProof);
    sub_22BB336D0(v18 + v19, 0, 1, v6);
    os_unfair_lock_unlock(v18);
    return sub_22BDA1F78(v10, type metadata accessor for SnippetStreamingRouter.CheckInProof);
  }
}

uint64_t sub_22BDA0EB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v14 = sub_22BB2F0C8(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = sub_22BDBAEF4();
  sub_22BB336D0(v16, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = swift_allocObject();
  v19[2] = v8;
  v19[3] = a1;
  v19[4] = a2;

  v20 = v8;
  sub_22BB352C4(a1, a2);
  sub_22BB33F68();
  sub_22BDBAFB4();

  return sub_22BB58728(v16, &qword_27D8E2978, &qword_22BDBD020);
}

uint64_t sub_22BDA1018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB5E54();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_22BDB59D4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA1138, 0, 0);
}

uint64_t sub_22BDA1300(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  v12 = sub_22BB2F0C8(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BB30C74();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v19 = (v2 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof);
  os_unfair_lock_lock(v19);
  v20 = sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80);
  sub_22BDA1C4C(v19 + *(v20 + 28), v18);
  os_unfair_lock_unlock(v19);
  sub_22BDA1C4C(v18, v15);
  if (sub_22BB3AA28(v15, 1, v6) == 1)
  {
    sub_22BB58728(v15, &qword_27D8E6DC0, &qword_22BDD0D60);
    v21 = *MEMORY[0x277D1D208];
    v22 = sub_22BDB5E54();
    sub_22BB2F330();
    (*(v23 + 104))(a2, v21, v22);
    sub_22BB35E6C();
    sub_22BDA1F30(v24, v25, MEMORY[0x277D1D228]);
    swift_willThrowTypedImpl();
    return sub_22BB58728(v18, &qword_27D8E6DC0, &qword_22BDD0D60);
  }

  sub_22BDA1CBC(v15, v10);
  if (qword_28142A0D8 != -1)
  {
    sub_22BB30AB8();
    swift_once();
  }

  _s23IntelligenceFlowRuntime22SnippetStreamingRouterC13forwardUpdate_4withy0aB00dE6ClientC06StatusH0V_AC12CheckInProofVtAA0dE15ForwardingErrorOYKF(a1, v10, &v35);
  if (v3)
  {
    v26 = *MEMORY[0x277D1D218];
    v27 = sub_22BDB5E54();
    sub_22BB2F330();
    (*(v28 + 104))(a2, v26, v27);
    sub_22BB35E6C();
    sub_22BDA1F30(v29, v30, MEMORY[0x277D1D228]);
    swift_willThrowTypedImpl();
    sub_22BB33F3C();
    sub_22BDA1F78(v10, v31);
    return sub_22BB58728(v18, &qword_27D8E6DC0, &qword_22BDD0D60);
  }

  sub_22BB33F3C();
  sub_22BDA1F78(v10, v33);
  return sub_22BB58728(v18, &qword_27D8E6DC0, &qword_22BDD0D60);
}

id sub_22BDA1724@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22BD9FF5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BDA174C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BD9FEBC();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for SnippetStreamingXPCServiceServer.Server(uint64_t a1)
{
  result = qword_281428FF0;
  if (!qword_281428FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22BDA187C(uint64_t a1)
{
  sub_22BDA192C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22BDA192C(uint64_t a1)
{
  if (!qword_28142DD28)
  {
    sub_22BBEB2E0(&qword_27D8E6DC0, &qword_22BDD0D60);
    v1 = sub_22BDB4B44();
    if (!v2)
    {
      atomic_store(v1, &qword_28142DD28);
    }
  }
}

uint64_t sub_22BDA1A68()
{
  swift_beginAccess();
  v0 = qword_28142F2B8;
  v1 = qword_28142F2B8;
  return v0;
}

void sub_22BDA1AB4(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F2B8;
  qword_28142F2B8 = a1;
}

uint64_t sub_22BDA1BA4(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F2C0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BDA1C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BDA1CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BDA1D20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BDA1D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BDA1DF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_22BB37934(v1);

  return sub_22BDA1018(v2, v3, v4, v5);
}

uint64_t sub_22BDA1E90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_22BB37934(v1);

  return sub_22BDA0920(v2, v3, v4, v5);
}

uint64_t sub_22BDA1F30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BDA1F78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22BDA1FD4()
{
  sub_22BB31014();
  v2 = v1;
  v79 = sub_22BDBA5C4();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v78 = v6;
  sub_22BB2F120();
  v77 = sub_22BDB4C64();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v76 = v10;
  sub_22BB2F120();
  sub_22BDBA014();
  sub_22BB30444();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = *(v2 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v64 = v0;
    v86 = MEMORY[0x277D84F90];
    v19 = sub_22BBBDEC8();
    sub_22BB69CB4(v19, v20, v21);
    v85 = v86;
    v24 = sub_22BDB16C8();
    v25 = 0;
    v84 = v2 + 56;
    v74 = *MEMORY[0x277D72D50];
    v72 = (v8 + 8);
    v73 = (v4 + 104);
    v71 = *MEMORY[0x277D72AD0];
    v66 = v2 + 64;
    v68 = v17;
    v70 = v2;
    v75 = v12;
    if ((v24 & 0x8000000000000000) == 0)
    {
      while (v24 < 1 << *(v2 + 32))
      {
        if ((*(v84 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v22)
        {
          goto LABEL_25;
        }

        v81 = v24 >> 6;
        v83 = v23;
        v80 = v25;
        v82 = v22;
        v26 = v16;
        v27 = sub_22BDBA634();
        v35 = v18;
        v36 = swift_allocBox(v27, v28, v29, v30, v31, v32, v33, v34, v64, v66, v68);
        v38 = v37;
        v39 = sub_22BDBA604();
        v47 = swift_allocBox(v39, v40, v41, v42, v43, v44, v45, v46, v65, v67, v69);
        sub_22BB30474();
        (*(v48 + 104))();
        *v38 = v47;
        sub_22BB30474();
        v50 = v27;
        v16 = v26;
        (*(v49 + 104))(v38, v74, v50);
        *v78 = v36;
        v18 = v35;
        (*v73)(v78, v71, v79);
        swift_bridgeObjectRetain_n();
        sub_22BDB4C54();
        sub_22BDB4C44();
        (*v72)(v76, v77);

        v51 = v85;
        v53 = *(v85 + 16);
        v52 = *(v85 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_22BB69CB4(v52 > 1, v53 + 1, 1);
          v51 = v85;
        }

        *(v51 + 16) = v53 + 1;
        sub_22BB2F390();
        v85 = v54;
        (*(v75 + 32))(v54 + v55 + *(v75 + 72) * v53, v26);
        if (v83)
        {
          goto LABEL_29;
        }

        v2 = v70;
        v56 = 1 << *(v70 + 32);
        if (v24 >= v56)
        {
          goto LABEL_26;
        }

        v57 = *(v84 + 8 * v81);
        if ((v57 & (1 << v24)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v70 + 36) != v82)
        {
          goto LABEL_28;
        }

        v58 = v57 & (-2 << (v24 & 0x3F));
        if (v58)
        {
          v56 = __clz(__rbit64(v58)) | v24 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v59 = v81 << 6;
          v60 = v81 + 1;
          v61 = (v66 + 8 * v81);
          while (v60 < (v56 + 63) >> 6)
          {
            v63 = *v61++;
            v62 = v63;
            v59 += 64;
            ++v60;
            if (v63)
            {
              sub_22BBBFEB0(v24, v82, 0);
              v56 = __clz(__rbit64(v62)) + v59;
              goto LABEL_19;
            }
          }

          sub_22BBBFEB0(v24, v82, 0);
        }

LABEL_19:
        v25 = v80 + 1;
        if (v80 + 1 == v68)
        {
          goto LABEL_22;
        }

        v23 = 0;
        v22 = *(v70 + 36);
        v24 = v56;
        if (v56 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_22BB376A8();
  }
}

void sub_22BDA25D0()
{
  sub_22BB31014();
  v2 = v1;
  v28 = v3;
  v29 = v4;
  v5 = &qword_27D8E3F08;
  v6 = sub_22BBE6DE0(&qword_27D8E3F08, &unk_22BDD0430);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22BB30560();
  v26 = v8;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = 0;
  v30 = *(v2 + 16);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v30 == v12)
    {

LABEL_14:
      sub_22BB38D50();
      sub_22BB376A8();
      return;
    }

    if (v12 >= *(v2 + 16))
    {
      break;
    }

    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = v5;
    sub_22BC7E3C4(v2 + v13 + v14 * v12, v11, v5, &unk_22BDD0430);
    v5 = v29;
    v16 = v28(v11);
    if (v0)
    {
      sub_22BB58728(v11, &qword_27D8E3F08, &unk_22BDD0430);
      sub_22BB77E8C();

      goto LABEL_14;
    }

    if (v16)
    {
      sub_22BDB1B84(v11, v26);
      sub_22BB77E8C();
      v31 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22BB314A4();
        sub_22BD27E10(v17, v18, v19);
      }

      sub_22BB8AD84();
      if (v24)
      {
        v27 = v23;
        v25 = v22;
        sub_22BD27E10(v20 > 1, v23, 1);
        v23 = v27;
        v22 = v25;
        v5 = v15;
        v21 = v31;
      }

      ++v12;
      v21[2] = v23;
      v27 = v21;
      sub_22BDB1B84(v26, v21 + v13 + v22 * v14);
    }

    else
    {
      v5 = v15;
      sub_22BB58728(v11, v15, &unk_22BDD0430);
      ++v12;
    }
  }

  __break(1u);
}

void sub_22BDA2860()
{
  sub_22BB31014();
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v29 = v6;
  v30 = v7;
  v9 = v8(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22BB30560();
  v27 = v11;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = 0;
  v31 = *(v5 + 16);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v31 == v15)
    {

LABEL_14:
      sub_22BB38D50();
      sub_22BB376A8();
      return;
    }

    if (v15 >= *(v5 + 16))
    {
      break;
    }

    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = *(v10 + 72);
    sub_22BDB1BF4(v5 + v16 + v17 * v15, v14, v3);
    v18 = v30;
    v19 = v29(v14);
    if (v0)
    {
      sub_22BDB1C50();
      sub_22BB77E8C();

      goto LABEL_14;
    }

    if (v19)
    {
      sub_22BDB1CA4(v14, v27, v3);
      sub_22BB77E8C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22BB314A4();
        v26(v20);
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v28 = v22 + 1;
        v25 = v22;
        (v26)(v21 > 1, v22 + 1, 1);
        v23 = v28;
        v22 = v25;
      }

      ++v15;
      *(v18 + 16) = v23;
      v28 = v18;
      sub_22BDB1CA4(v27, v18 + v16 + v22 * v17, v3);
    }

    else
    {
      sub_22BDB1C50();
      ++v15;
    }
  }

  __break(1u);
}

void sub_22BDA2B30()
{
  sub_22BB31014();
  v29 = v1;
  v3 = v2;
  v34 = v4;
  v35 = v5;
  v37 = v6(0);
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30560();
  v31 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = 0;
  v36 = *(v3 + 16);
  v33 = v8 + 16;
  v15 = (v8 + 8);
  v30 = (v8 + 32);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v36 == v14)
    {

LABEL_14:
      sub_22BB38D50();
      sub_22BB376A8();
      return;
    }

    if (v14 >= *(v3 + 16))
    {
      break;
    }

    v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v17 = *(v8 + 72);
    v18 = v3;
    (*(v8 + 16))(v13, v3 + v16 + v17 * v14, v37);
    v19 = v34(v13);
    if (v0)
    {
      (*v15)(v13, v37);

      goto LABEL_14;
    }

    if (v19)
    {
      v28 = *v30;
      v28(v31, v13, v37);
      v3 = v32;
      v38 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22BB314A4();
        v29(v20);
      }

      sub_22BB8AD84();
      if (v25)
      {
        v32 = v24;
        v27 = v23;
        (v29)(v21 > 1, v24, 1);
        v24 = v32;
        v23 = v27;
        v3 = v18;
        v22 = v38;
      }

      ++v14;
      *(v22 + 16) = v24;
      v32 = v22;
      v28((v22 + v16 + v23 * v17), v31, v37);
    }

    else
    {
      (*v15)(v13, v37);
      ++v14;
    }
  }

  __break(1u);
}

id sub_22BDA2DBC()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_22BB3182C();
  return sub_22BDA2DFC(v2, v3);
}

id sub_22BDA2DFC(uint64_t a1, void *a2)
{
  sub_22BB371E4();
  ObjectType = swift_getObjectType();
  v5 = sub_22BDB6564();
  v6 = &v2[OBJC_IVAR____TtCC23IntelligenceFlowRuntime23ToolboxXPCServiceServer6Server_clientApplicationIdentifier];
  *v6 = v5;
  v6[1] = v7;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_init);

  sub_22BDB6574();
  sub_22BB2F330();
  (*(v9 + 8))(v2);
  return v8;
}

void sub_22BDA2EA0()
{
  sub_22BB3B094();
  sub_22BB89E30();
  v4 = sub_22BB31F54();
  v6 = sub_22BBE6DE0(v4, v5);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BB3A4F8();
  sub_22BB369A8(v8);
  sub_22BB322B0();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  sub_22BB322B0();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v0;
  sub_22BDB5ED4();

  sub_22BDB1DF4();
  sub_22BDBAFB4();

  v11 = sub_22BB3182C();
  sub_22BB58728(v11, v12, &qword_22BDBD020);
  sub_22BB36A24();
}

uint64_t sub_22BDA2FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[30] = a2;
  v3[31] = a3;
  v3[29] = a1;
  v3[32] = sub_22BBE6DE0(&qword_27D8E6E68, &qword_22BDD1100);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v4 = sub_22BDBA814();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v5 = sub_22BDBA9B4();
  v3[40] = v5;
  v3[41] = *(v5 - 8);
  v3[42] = swift_task_alloc();
  v6 = sub_22BDBA994();
  v3[43] = v6;
  v3[44] = *(v6 - 8);
  v3[45] = swift_task_alloc();
  v7 = sub_22BDB9F84();
  v3[46] = v7;
  v3[47] = *(v7 - 8);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v8 = sub_22BDB9C14();
  v3[50] = v8;
  v3[51] = *(v8 - 8);
  v3[52] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6E70, &qword_22BDD1108);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v3[55] = swift_task_alloc();
  v9 = sub_22BDB57A4();
  v3[56] = v9;
  v3[57] = *(v9 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v10 = sub_22BDB77D4();
  v3[60] = v10;
  v3[61] = *(v10 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA33B0, 0, 0);
}

void sub_22BDA42F8()
{
  v1044 = v0;
  v1 = 0;
  v2 = v0[47];
  v926 = v0[80];
  v963 = *(v926 + 16);
  v1001 = (v0[44] + 8);
  LODWORD(v889) = *MEMORY[0x277D720F0];
  v999 = (v0[38] + 8);
  v782 = v0[41] + 8;
  v672 = (v2 + 32);
  v1009 = v2;
  v1004 = (v2 + 8);
  v1040 = v0[81];
  v459 = MEMORY[0x277D84F90];
  while (v963 != v1)
  {
    if (v1 >= *(v926 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v3 = (*(v1009 + 80) + 32) & ~*(v1009 + 80);
    v4 = *(v1009 + 72);
    (*(v1009 + 16))(v0[49], v0[80] + v3 + v4 * v1, v0[46]);
    sub_22BDBA2D4();
    if (v1040)
    {

      v63 = v0[71];
      v64 = v0[70];
      v65 = v0[59];
      v66 = v0;
      v69 = v0 + 56;
      v67 = v0[56];
      v68 = v69[1];
      v1027 = v66[54];
      v1032 = v65;
      v70 = v66[49];
      v71 = v66[46];

      sub_22BB94C90(v63, v64);
      v72 = sub_22BB3182C();
      sub_22BB94C90(v72, v73);
      (*v1004)(v70, v71);
      sub_22BB58728(v1027, &qword_27D8E6E70, &qword_22BDD1108);
      (*(v68 + 8))(v1032, v67);

      sub_22BD5F4C0((v66 + 2));
      _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

      v74 = v1040;
      v75 = sub_22BDB77C4();
      v76 = sub_22BDBB114();

      v77 = sub_22BB72E44();
      v78 = v66[65];
      v79 = v66[62];
      v80 = v66[60];
      if (v77)
      {
        v1037 = v66[65];
        v82 = v66[30];
        v81 = v66[31];
        v83 = sub_22BB3B778();
        swift_slowAlloc();
        v1033 = v79;
        v84 = sub_22BB6B650();
        v1043[0] = v84;
        *v83 = 136315394;
        *(v83 + 4) = sub_22BB32EE0(v82, v81, v1043);
        *(v83 + 12) = 2112;
        v85 = v1040;
        v86 = _swift_stdlib_bridgeErrorToNSError();
        *(v83 + 14) = v86;
        *v70 = v86;
        _os_log_impl(&dword_22BB2C000, v75, v76, "Could not determine readiness of %s's toolbox. Error: %@", v83, 0x16u);
        sub_22BB58728(v70, &unk_27D8E6A70, &unk_22BDBCDB0);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        sub_22BB32FA4(v84);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        v66 = v637;
        sub_22BB2F368();
        MEMORY[0x2318A6080]();

        v1037(v1033, v80);
      }

      else
      {

        v87 = sub_22BB30AE4();
        v78(v87);
      }

      v89 = v66[63];
      v88 = v66[64];
      v90 = v66[62];
      v91 = v66[58];
      v92 = v66[59];
      v93 = v66;
      v96 = v66 + 54;
      v95 = v66[54];
      v94 = v96[1];
      v1002 = v93[53];
      v1005 = v93[52];
      v1007 = v93[49];
      v1010 = v93[48];
      v1014 = v93[45];
      v1016 = v93[42];
      v1020 = v93[39];
      v1024 = v93[36];
      v1028 = v93[35];
      v1034 = v93[34];
      v1038 = v93[33];
      swift_willThrow();
      v88, v97, v98, v99, v100, v101, v102, v103, v387, v423, v459, v494, v529, v564, v600, v637, v672, v708, v745, v782, 1, 2, v889, v926, v963;
      v89, v104, v105, v106, v107, v108, v109, v110, v389, v425, v460, v495, v530, v565, v602, v638, v673, v710, v747, v784, v820, v855, v891, v928, v964;
      v90, v111, v112, v113, v114, v115, v116, v117, v390, v426, v461, v496, v531, v566, v603, v639, v674, v711, v748, v785, v821, v856, v892, v929, v965;
      v92, v118, v119, v120, v121, v122, v123, v124, v391, v427, v462, v497, v532, v567, v604, v640, v675, v712, v749, v786, v822, v857, v893, v930, v966;
      v91, v125, v126, v127, v128, v129, v130, v131, v392, v428, v463, v498, v533, v568, v605, v641, v676, v713, v750, v787, v823, v858, v894, v931, v967;
      v94, v132, v133, v134, v135, v136, v137, v138, v393, v429, v464, v499, v534, v569, v606, v642, v677, v714, v751, v788, v824, v859, v895, v932, v968;
      v95, v139, v140, v141, v142, v143, v144, v145, v394, v430, v465, v500, v535, v570, v607, v643, v678, v715, v752, v789, v825, v860, v896, v933, v969;
      v1002, v146, v147, v148, v149, v150, v151, v152, v395, v431, v466, v501, v536, v571, v608, v644, v679, v716, v753, v790, v826, v861, v897, v934, v970;
      v1005, v153, v154, v155, v156, v157, v158, v159, v396, v432, v467, v502, v537, v572, v609, v645, v680, v717, v754, v791, v827, v862, v898, v935, v971;
      v1007, v160, v161, v162, v163, v164, v165, v166, v397, v433, v468, v503, v538, v573, v610, v646, v681, v718, v755, v792, v828, v863, v899, v936, v972;
      v1010, v167, v168, v169, v170, v171, v172, v173, v398, v434, v469, v504, v539, v574, v611, v647, v682, v719, v756, v793, v829, v864, v900, v937, v973;
      v1014, v174, v175, v176, v177, v178, v179, v180, v399, v435, v470, v505, v540, v575, v612, v648, v683, v720, v757, v794, v830, v865, v901, v938, v974;
      v1016, v181, v182, v183, v184, v185, v186, v187, v400, v436, v471, v506, v541, v576, v613, v649, v684, v721, v758, v795, v831, v866, v902, v939, v975;
      v1020, v188, v189, v190, v191, v192, v193, v194, v401, v437, v472, v507, v542, v577, v614, v650, v685, v722, v759, v796, v832, v867, v903, v940, v976;
      v1024, v195, v196, v197, v198, v199, v200, v201, v402, v438, v473, v508, v543, v578, v615, v651, v686, v723, v760, v797, v833, v868, v904, v941, v977;
      v1028, v202, v203, v204, v205, v206, v207, v208, v403, v439, v474, v509, v544, v579, v616, v652, v687, v724, v761, v798, v834, v869, v905, v942, v978;
      v1034, v209, v210, v211, v212, v213, v214, v215, v404, v440, v475, v510, v545, v580, v617, v653, v688, v725, v762, v799, v835, v870, v906, v943, v979;
      v1038, v216, v217, v218, v219, v220, v221, v222, v405, v441, v476, v511, v546, v581, v618, v654, v689, v726, v763, v800, v836, v871, v907, v944, v980;
      sub_22BB2F09C();
      goto LABEL_26;
    }

    v708 = v4;
    v745 = v3;
    v1012 = v1;
    v5 = v0[45];
    v6 = v0[43];
    v1022 = v0[39];
    v1030 = v0[37];
    sub_22BBE6DE0(&qword_27D8E6E80, qword_22BDD1110);
    sub_22BB35760();
    v7 = v0;
    v1018 = sub_22BDB9F54();
    sub_22BB30444();
    v9 = v8;
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22BDBCBD0;
    v12 = (v11 + v10);
    sub_22BDB9F74();
    v13 = sub_22BDBA974();
    v15 = v14;
    v16 = *v1001;
    (*v1001)(v5, v6);
    *v12 = v13;
    v12[1] = v15;
    (*(v9 + 104))(v12, v889, v1018);
    sub_22BDB9F74();
    sub_22BDBA984();
    v16(v5, v6);
    sub_22BDBA9A4();
    (*v999)(v1022, v1030);
    v17 = sub_22BDBA2A4();
    v18 = sub_22BBBFF70();
    v19(v18);

    v20 = *(v17 + 16);

    v0 = v7;
    if (v20)
    {
      v21 = *v672;
      (*v672)(v7[48], v7[49], v7[46]);
      v22 = v459;
      v1043[0] = v459;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD28880(0, *(v459 + 16) + 1, 1);
        v22 = v1043[0];
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22BB2F158(v23);
        sub_22BB3AB64();
        sub_22BD28880(v27, v28, v29);
        v22 = v1043[0];
      }

      v1 = v1012 + 1;
      v25 = v7[48];
      v26 = v7[46];
      *(v22 + 16) = v24 + 1;
      v459 = v22;
      v21(v22 + v745 + v24 * v708, v25, v26);
      v1040 = 0;
    }

    else
    {
      (*v1004)(v7[49], v7[46]);
      v1040 = 0;
      v1 = v1012 + 1;
    }
  }

  v388 = sub_22BDB8A24();
  v424 = v30;
  sub_22BDB9394();
  sub_22BDB9384();
  v31 = sub_22BDB9374();

  v32 = *(v31 + 16);
  if (!v32)
  {

    v34 = MEMORY[0x277D84F90];
LABEL_30:
    v1043[0] = v34;

    sub_22BDB08A8(v1043);
    if (v1040)
    {

      return;
    }

    v0[28] = v1043[0];
    sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
    sub_22BB8E600();
    v224 = sub_22BDBABC4();

    sub_22BB2F324();
    sub_22BDB8644();
    sub_22BB371E4();

    v225 = sub_22BDB4304();
    v227 = v226;

    if (v424 >> 60 == 15)
    {
      if (v227 >> 60 == 15)
      {
        v228 = sub_22BB89D18();
        sub_22BB352C4(v228, v229);
        v230 = sub_22BB3627C();
        sub_22BDB1A9C(v230, v231);
        v232 = sub_22BB3627C();
        sub_22BB94C90(v232, v233);
LABEL_40:
        v250 = v637;
        v251 = v637[76];

        v252 = objc_allocWithZone(v251);
        sub_22BDB58A4();
        sub_22BDB8A44();
        v1025 = v637[70];
        v1029 = v637[71];
        v1035 = v637[67];
        v1039 = v637[68];
        v727 = v637[64];
        v764 = v637[63];
        v690 = v637[59];
        v801 = v637[62];
        v837 = v637[58];
        v253 = v637[57];
        v619 = v637[56];
        v254 = v637[54];
        v908 = v637[55];
        v981 = v637[53];
        v1000 = v637[52];
        v1003 = v637[49];
        v1006 = v637[48];
        v1008 = v637[45];
        v1011 = v637[42];
        v1015 = v637[39];
        v1017 = v637[36];
        v1021 = v637[35];
        v1041 = v637[34];
        v945 = v637[33];
        v582 = v637[29];
        sub_22BDB8A94();
        v255 = objc_allocWithZone(sub_22BDB5ED4());
        sub_22BB6B114();
        v256 = sub_22BDB5EC4();

        sub_22BB94C90(v388, v424);
        v257 = sub_22BB89D18();
        sub_22BB3531C(v257, v258);
        sub_22BB94C90(v1029, v1025);
        sub_22BB94C90(v1035, v1039);
        v259 = v254;
        sub_22BB58728(v254, &qword_27D8E6E70, &qword_22BDD1108);
        v260 = v690;
        (*(v253 + 8))(v690, v619);
        *v582 = v256;
        sub_22BD5F4C0((v637 + 2));
        v727, v261, v262, v263, v264, v265, v266, v267, v388, v424, v459, v494, v529, v582, v619, v637, v690, v727, v764, v801, v837, 2, v908, v945, v981;
        v765, v268, v269, v270, v271, v272, v273, v274, v406, v442, v477, v512, v547, v583, v620, v655, v691, v728, v765, v802, v838, v872, v909, v946, v982;
        v803, v275, v276, v277, v278, v279, v280, v281, v407, v443, v478, v513, v548, v584, v621, v656, v692, v729, v766, v803, v839, v873, v910, v947, v983;
        v260, v282, v283, v284, v285, v286, v287, v288, v408, v444, v479, v514, v549, v585, v622, v657, v693, v730, v767, v804, v840, v874, v911, v948, v984;
        v841, v289, v290, v291, v292, v293, v294, v295, v409, v445, v480, v515, v550, v586, v623, v658, v694, v731, v768, v805, v841, v875, v912, v949, v985;
        v913, v296, v297, v298, v299, v300, v301, v302, v410, v446, v481, v516, v551, v587, v624, v659, v695, v732, v769, v806, v842, v876, v913, v950, v986;
        v259, v303, v304, v305, v306, v307, v308, v309, v411, v447, v482, v517, v552, v588, v625, v660, v696, v733, v770, v807, v843, v877, v914, v951, v987;
        v988, v310, v311, v312, v313, v314, v315, v316, v412, v448, v483, v518, v553, v589, v626, v661, v697, v734, v771, v808, v844, v878, v915, v952, v988;
        v1000, v317, v318, v319, v320, v321, v322, v323, v413, v449, v484, v519, v554, v590, v627, v662, v698, v735, v772, v809, v845, v879, v916, v953, v989;
        v1003, v324, v325, v326, v327, v328, v329, v330, v414, v450, v485, v520, v555, v591, v628, v663, v699, v736, v773, v810, v846, v880, v917, v954, v990;
        v1006, v331, v332, v333, v334, v335, v336, v337, v415, v451, v486, v521, v556, v592, v629, v664, v700, v737, v774, v811, v847, v881, v918, v955, v991;
        v1008, v338, v339, v340, v341, v342, v343, v344, v416, v452, v487, v522, v557, v593, v630, v665, v701, v738, v775, v812, v848, v882, v919, v956, v992;
        v1011, v345, v346, v347, v348, v349, v350, v351, v417, v453, v488, v523, v558, v594, v631, v666, v702, v739, v776, v813, v849, v883, v920, v957, v993;
        v1015, v352, v353, v354, v355, v356, v357, v358, v418, v454, v489, v524, v559, v595, v632, v667, v703, v740, v777, v814, v850, v884, v921, v958, v994;
        v1017, v359, v360, v361, v362, v363, v364, v365, v419, v455, v490, v525, v560, v596, v633, v668, v704, v741, v778, v815, v851, v885, v922, v959, v995;
        v1021, v366, v367, v368, v369, v370, v371, v372, v420, v456, v491, v526, v561, v597, v634, v669, v705, v742, v779, v816, v852, v886, v923, v960, v996;
        v1041, v373, v374, v375, v376, v377, v378, v379, v421, v457, v492, v527, v562, v598, v635, v670, v706, v743, v780, v817, v853, v887, v924, v961, v997;
        v962, v380, v381, v382, v383, v384, v385, v386, v422, v458, v493, v528, v563, v599, v636, v671, v707, v744, v781, v818, v854, v888, v925, v962, v998;
        v223 = v250[1];
LABEL_26:

        v223();
        return;
      }
    }

    else if (v227 >> 60 != 15)
    {
      v242 = sub_22BB89D18();
      sub_22BB352C4(v242, v243);
      v244 = sub_22BB89D18();
      sub_22BB352C4(v244, v245);
      sub_22BDB1A9C(v388, v424);
      MEMORY[0x23189E2C0](v388, v424, v225, v227);
      v246 = sub_22BB89D18();
      sub_22BB94C90(v246, v247);
      v248 = sub_22BB89D18();
      sub_22BB3531C(v248, v249);
      sub_22BB94C90(v388, v424);
      goto LABEL_40;
    }

    v234 = sub_22BB89D18();
    sub_22BB352C4(v234, v235);
    v236 = sub_22BB3627C();
    sub_22BDB1A9C(v236, v237);
    v238 = sub_22BB3627C();
    sub_22BB94C90(v238, v239);
    v240 = sub_22BB89D18();
    sub_22BB94C90(v240, v241);
    goto LABEL_40;
  }

  v33 = v0[44];
  v601 = v0[32];
  v1042 = MEMORY[0x277D84F90];
  sub_22BD28158(0, v32, 0);
  v34 = v1042;
  v35 = sub_22BDB1B50();
  LODWORD(v37) = v36;
  v39 = v38;
  v709 = v33;
  v746 = v31 + 64;
  v529 = v33 + 32;
  v494 = v31;
  while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << *(v31 + 32))
  {
    if (((*(v746 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_43;
    }

    if (*(v31 + 36) != v37)
    {
      goto LABEL_44;
    }

    v1023 = v39;
    v1026 = v37;
    v1031 = v32;
    v40 = *(v601 + 48);
    v41 = v0[46];
    v42 = v0[43];
    v927 = v0[39];
    v1019 = v0[37];
    v1036 = v34;
    v44 = v0[35];
    v43 = v0[36];
    v45 = v0[34];
    v890 = v0[33];
    (*(v709 + 16))(v43, *(v31 + 48) + *(v709 + 72) * v35, v42);
    (*(v1009 + 16))(v43 + v40, *(v31 + 56) + *(v1009 + 72) * v35, v41);
    (*(v709 + 32))(v44, v43, v42);
    (*(v1009 + 32))(v44 + *(v601 + 48), v43 + v40, v41);
    v46 = sub_22BB35464();
    sub_22BC7E3C4(v46, v47, &qword_27D8E6E68, &qword_22BDD1100);
    v1013 = *(v601 + 48);
    v783 = sub_22BDBA974();
    v49 = v48;
    v50 = *v1001;
    (*v1001)(v45, v42);
    sub_22BC7E3C4(v44, v890, &qword_27D8E6E68, &qword_22BDD1100);
    v819 = *(v601 + 48);
    sub_22BDBA984();
    v50(v890, v42);
    v51 = sub_22BDBA804();
    v53 = v52;
    (*v999)(v927, v1019);
    v1043[0] = v783;
    v1043[1] = v49;

    MEMORY[0x2318A4C40](v51, v53);

    sub_22BB58728(v44, &qword_27D8E6E68, &qword_22BDD1100);
    v54 = *(v1009 + 8);
    v54(v890 + v819, v41);
    v54(v45 + v1013, v41);
    v34 = v1036;
    v56 = *(v1036 + 16);
    v55 = *(v1036 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_22BB2F158(v55);
      sub_22BB3AB64();
      sub_22BD28158(v60, v61, v62);
      v34 = v1036;
    }

    *(v34 + 16) = v56 + 1;
    v57 = v34 + 16 * v56;
    *(v57 + 32) = v783;
    *(v57 + 40) = v49;
    v31 = v494;
    v35 = sub_22BDB1AD0(v35, v1026, v1023 & 1, v494);
    v37 = v58;
    v39 = v59;
    v32 = v1031 - 1;
    v0 = v637;
    if (v1031 == 1)
    {

      sub_22BBBFEB0(v35, v37, v39 & 1);
      goto LABEL_30;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_22BDA5714(uint64_t a1, void *a2)
{
  v4 = sub_22BDB9F64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  sub_22BB69FEC(a2, a2[3]);
  if ((sub_22BDB8824() & 1) == 0)
  {
    return 0;
  }

  v16[1] = v2;
  result = sub_22BDB9FB4();
  v12 = result;
  v13 = 0;
  v17 = *(result + 16);
  v16[2] = v5 + 32;
  v16[3] = v5 + 16;
  v14 = *MEMORY[0x277D72148];
  while (1)
  {
    if (v17 == v13)
    {

      return 1;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    (*(v5 + 16))(v10, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4);
    (*(v5 + 32))(v8, v10, v4);
    if ((*(v5 + 88))(v8, v4) == v14)
    {

      (*(v5 + 96))(v8, v4);
      v15 = sub_22BDBA994();
      (*(*(v15 - 8) + 8))(v8, v15);
      return 0;
    }

    ++v13;
    result = (*(v5 + 8))(v8, v4);
  }

  __break(1u);
  return result;
}

void sub_22BDA59C0()
{
  sub_22BB3B094();
  sub_22BB89E30();
  v4 = sub_22BB31F54();
  v6 = sub_22BBE6DE0(v4, v5);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BB3A4F8();
  sub_22BB369A8(v8);
  sub_22BB322B0();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  sub_22BB322B0();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v0;
  sub_22BB33F68();

  sub_22BDB1DF4();
  sub_22BDBAFB4();

  v11 = sub_22BB3182C();
  sub_22BB58728(v11, v12, &qword_22BDBD020);
  sub_22BB36A24();
}

uint64_t sub_22BDA5AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v3[26] = swift_task_alloc();
  v4 = sub_22BDB57A4();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v5 = sub_22BDB77D4();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA5C54, 0, 0);
}

uint64_t sub_22BDA6644()
{
  sub_22BB3B094();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = _Block_copy(v6);
  v8 = sub_22BDBABF4();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = v5;
  v1(v8, v10, v3, v11);

  sub_22BB36A24();
}

void sub_22BDA66F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB3B094();
  v19 = v18;
  v21 = v20;
  v22 = sub_22BB31F54();
  v24 = sub_22BBE6DE0(v22, v23);
  sub_22BB2F0C8(v24);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v26, v27, v28, v29);
  sub_22BB322B0();
  v30 = swift_allocObject();
  *(v30 + 16) = v21;
  *(v30 + 24) = v19;
  sub_22BDB4254();

  sub_22BDBAFB4();

  v31 = sub_22BB30428();
  sub_22BB58728(v31, v32, &qword_22BDBD020);
  sub_22BB36A24();
}

uint64_t sub_22BDA6808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  sub_22BBE6DE0(&qword_27D8E6E60, &qword_22BDD10D8);
  v3[26] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v3[27] = swift_task_alloc();
  v4 = sub_22BDB57A4();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v5 = sub_22BDB77D4();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA69BC, 0, 0);
}

void sub_22BDA7040(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_22BC7E3C4(a1, &v11 - v7, &qword_27D8E2E00, &qword_22BDBD450);
  v9 = sub_22BDB4254();
  v10 = 0;
  if (sub_22BB3AA28(v8, 1, v9) != 1)
  {
    v10 = sub_22BDB4244();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (a2)
  {
    a2 = sub_22BDB4234();
  }

  (*(a3 + 16))(a3, v10, a2);
}

void sub_22BDA7178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB30F94();
  v25 = v24;
  v43 = v26;
  v44 = v27;
  v29 = v28;
  v31 = v30;
  v42 = v32;
  v34 = v33;
  v36 = v35;
  v37 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v37);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  v39 = sub_22BB3A4F8();
  sub_22BB369A8(v39);
  sub_22BB322B0();
  v40 = swift_allocObject();
  *(v40 + 16) = a22;
  *(v40 + 24) = a23;
  v41 = swift_allocObject();
  v41[2] = v36;
  v41[3] = v34;
  v41[4] = a21;
  v41[5] = v42;
  v41[6] = v31;
  v41[7] = v43;
  v41[8] = v29;
  v41[9] = v44;
  v41[10] = v25;

  sub_22BBE6DE0(&qword_27D8E6E38, &qword_22BDD1070);
  sub_22BDBAFB4();

  sub_22BB58728(v23, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDA7308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = v13;
  v8[32] = v14;
  v8[29] = a7;
  v8[30] = a8;
  v8[27] = a5;
  v8[28] = a6;
  v8[25] = a3;
  v8[26] = a4;
  v8[23] = a1;
  v8[24] = a2;
  sub_22BDB9C14();
  v8[33] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  v8[34] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v8[35] = swift_task_alloc();
  v9 = sub_22BDB57A4();
  v8[36] = v9;
  v8[37] = *(v9 - 8);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v10 = sub_22BDB77D4();
  v8[40] = v10;
  v8[41] = *(v10 - 8);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA74FC, 0, 0);
}

uint64_t sub_22BDA74FC(uint64_t a1)
{
  v597 = v1;
  sub_22BDB1DCC(a1);

  v5 = sub_22BDB77C4();
  sub_22BDBB0F4();
  sub_22BBCC16C();
  v6 = sub_22BB72E44();
  v7 = v1[40];
  v8 = v1[41];
  if (v6)
  {
    sub_22BB72168();
    v4 = sub_22BB6B650();
    v596[0] = v4;
    *v3 = 136315138;
    v9 = sub_22BB31528();
    *(v3 + 4) = sub_22BB32EE0(v9, v10, v11);
    sub_22BB36F24(&dword_22BB2C000, v12, v13, "Querying%s's toolbox.");
    sub_22BB35808();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v16 = *(v8 + 8);
  v15 = v8 + 8;
  v14 = v16;
  v17 = sub_22BB30AE4();
  v16(v17);
  v18 = v1[35];
  v19 = v1[36];
  sub_22BB97740();
  sub_22BB37458();
  sub_22BDB5784();
  v443 = v16;
  if (sub_22BB3759C() == 1)
  {
    v20 = sub_22BDB1E14();
    sub_22BB58728(v20, &qword_27D8E6438, &qword_22BDD0FE0);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v2 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BDB2004();
    if (os_log_type_enabled(v2, v15))
    {
      sub_22BB36C64();
      v402 = sub_22BB3869C();
      v524 = v402;
      *v7 = 136315394;
      v21 = sub_22BB31F54();
      v24 = sub_22BB32EE0(v21, v22, v23);
      sub_22BB39448(v24, v25, v26, v27, v28, v29, v30, v31, v259);
      sub_22BB393AC();
      if (v4)
      {
        LODWORD(v361) = v15;
        v381 = v2;
        v596[0] = MEMORY[0x277D84F90];
        sub_22BB9287C();
        v32 = v596[0];
        sub_22BB31EA0();
        sub_22BDB1DB0();
        do
        {
          v19 = v1[38];
          v33 = sub_22BB3A81C();
          v34(v33);
          sub_22BDB5794();
          v35 = sub_22BB325C0();
          v36(v35);
          v596[0] = v32;
          sub_22BB392EC();
          if (v38)
          {
            sub_22BB2F158(v37);
            v19 = v596;
            sub_22BB3AB64();
            sub_22BD28158(v40, v41, v42);
            v32 = v596[0];
          }

          sub_22BB6BC54();
          sub_22BB51900();
        }

        while (!v39);

        v15 = v15;
      }

      else
      {
      }

      sub_22BB69588();
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      v81 = sub_22BB8E600();
      sub_22BB37950(v81);
      sub_22BB36070();
      v82 = sub_22BB2F324();
      sub_22BB32EE0(v82, v83, v84);
      sub_22BB371E4();

      v18 = v423;
      *(v423 + 14) = v19;
      sub_22BBBD2C4(&dword_22BB2C000, v2, v15, "Invalid planner type (%s while querying toolbox. Possible values: [%s]");
      sub_22BB34F98(v85, v86, v87, v88, v89, v90, v91, v92, v260, v281, v301, v321, v341, v361, v381, v402);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v58 = sub_22BB3A368();
      v14 = v443;
    }

    else
    {
      v18 = v1[40];

      v58 = sub_22BB2F324();
    }

    v14(v58);
    v93 = sub_22BDB017C();
    v94 = sub_22BB31A08(&type metadata for ToolboxXPCServiceServer.ToolboxServerError, v93);
    sub_22BB9231C(v94, v95);
    sub_22BB38500(v96, v97, v98, v99, v100, v101, v102, v103, v259);

    goto LABEL_19;
  }

  v43 = sub_22BB36B08();
  v44(v43);
  v45 = static ToolboxManager.toolboxes()();
  sub_22BB69C3C(v45);

  if (!v1[15])
  {
    sub_22BB58728((v1 + 12), &qword_27D8E6E08, &qword_22BDD0FE8);
    v59 = sub_22BDB017C();
    v60 = sub_22BB31A08(&type metadata for ToolboxXPCServiceServer.ToolboxServerError, v59);
    sub_22BB34468(v60, v61, v62, v63, v64, v65, v66, v67, v259);
    v68 = sub_22BB38F80();
    v70 = v69(v68);
LABEL_19:
    sub_22BB3CF68(v70);

    v118 = v18;
    v119 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB899B4();

    v120 = sub_22BB71F98();
    v121 = v1[42];
    v122 = v1[40];
    if (v120)
    {
      v506 = v1[42];
      sub_22BB693A0();
      sub_22BB2F308();
      v483 = v122;
      v122 = sub_22BB3AA0C();
      v596[0] = v122;
      *v14 = 136315394;
      v124 = sub_22BB957A4(v122, v123, v596);
      sub_22BB328F8(v124);
      v125 = v121;
      v126 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v126);
      sub_22BB367C8();
      _os_log_impl(v127, v128, v129, v130, v131, 0x16u);
      sub_22BB58728(v4, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (v443)(v506, v483);
    }

    else
    {

      (v14)(v121, v122);
    }

    sub_22BB3E068();
    v507 = v1[33];
    swift_willThrow();
    v119, v132, v133, v134, v135, v136, v137, v138, v261, v281, v301, v321, v341, v361, v381, v401, v423, v443, v463, v483, v507, v524, v542, v560, v578;
    v121, v139, v140, v141, v142, v143, v144, v145, v265, v285, v305, v325, v345, v365, v385, v407, v427, v447, v467, v487, v508, v526, v544, v562, v580;
    v2, v146, v147, v148, v149, v150, v151, v152, v266, v286, v306, v326, v346, v366, v386, v408, v428, v448, v468, v488, v509, v527, v545, v563, v581;
    v14, v153, v154, v155, v156, v157, v158, v159, v267, v287, v307, v327, v347, v367, v387, v409, v429, v449, v469, v489, v510, v528, v546, v564, v582;
    v122, v160, v161, v162, v163, v164, v165, v166, v268, v288, v308, v328, v348, v368, v388, v410, v430, v450, v470, v490, v511, v529, v547, v565, v583;
    v4, v167, v168, v169, v170, v171, v172, v173, v269, v289, v309, v329, v349, v369, v389, v411, v431, v451, v471, v491, v512, v530, v548, v566, v584;
    v15, v174, v175, v176, v177, v178, v179, v180, v270, v290, v310, v330, v350, v370, v390, v412, v432, v452, v472, v492, v513, v531, v549, v567, v585;
    v514, v181, v182, v183, v184, v185, v186, v187, v271, v291, v311, v331, v351, v371, v391, v413, v433, v453, v473, v493, v514, v532, v550, v568, v586;
    sub_22BB31368();
    goto LABEL_23;
  }

  sub_22BDB1FC4();
  sub_22BDA1FD4();
  v464 = v1[6];
  v484 = v46;
  v47 = sub_22BB3ACBC();
  sub_22BB69FEC(v47, v48);
  v49 = v1[10];
  v50 = sub_22BB97780();
  sub_22BB69FEC(v50, v49);
  sub_22BB30418();
  sub_22BB30ACC();
  sub_22BB8B75C();
  v51();
  sub_22BB30418();
  sub_22BB30ACC();
  sub_22BB8AD34();
  v52();
  sub_22BDB4254();
  v53 = sub_22BB34170();
  sub_22BB336D0(v53, v54, v55, v56);
  v57 = sub_22BDBA2E4();
  v71 = sub_22BDBA2D4();
  v403 = sub_22BDB8AF4();
  sub_22BDB9394();
  v72 = sub_22BDB9384();
  v73 = sub_22BB69778(v72, MEMORY[0x277D1E488], v259, v281, v301, v321, v341, v361, v381, v403, v423, v443, v464, v484, v1);
  sub_22BB3CB50(v73, v74, v75, v76, v77, v78, v79, v80, v262, v282, v302, v322, v342, v362, v382, v404, v424, v444, v465, v485, v503);
  v49, v104, v105, v106, v107, v108, v109, v110, v263, v283, v303, v323, v343, v363, v383, v405, v425, v445, v1[31], v1[32], v504, v71, v542, v560, v57;
  v71, v111, v112, v113, v114, v115, v116, v117, v264, v284, v304, v324, v344, v364, v384, v406, v426, v446, v466, v486, v505, v525, v543, v561, v579;
  v189 = sub_22BDB8A64();
  v392 = v1[44];
  v414 = v1[43];
  v190 = v1[39];
  v434 = v1[42];
  v454 = v1[38];
  v191 = v1[37];
  v372 = v1[36];
  v474 = v1[35];
  v494 = v1[34];
  v515 = v1[33];
  v192 = v1[23];
  v193 = swift_task_alloc();
  *(v193 + 16) = v1 + 2;
  v194 = sub_22BCA9168(sub_22BDB1D4C, v193, v189);

  v193, v195, v196, v197, v198, v199, v200, v201, v272, v292, v312, v332, v352, v372, v392, v414, v434, v454, v474, v494, v515, v533, v551, v569, v587;
  (*(v191 + 8))(v190, v373);
  *v192 = v194;
  sub_22BD5F4C0((v1 + 2));
  v393, v202, v203, v204, v205, v206, v207, v208, v273, v293, v313, v333, v353, v373, v393, v415, v435, v455, v475, v495, v516, v534, v552, v570, v588;
  v416, v209, v210, v211, v212, v213, v214, v215, v274, v294, v314, v334, v354, v374, v394, v416, v436, v456, v476, v496, v517, v535, v553, v571, v589;
  v437, v216, v217, v218, v219, v220, v221, v222, v275, v295, v315, v335, v355, v375, v395, v417, v437, v457, v477, v497, v518, v536, v554, v572, v590;
  v190, v223, v224, v225, v226, v227, v228, v229, v276, v296, v316, v336, v356, v376, v396, v418, v438, v458, v478, v498, v519, v537, v555, v573, v591;
  v459, v230, v231, v232, v233, v234, v235, v236, v277, v297, v317, v337, v357, v377, v397, v419, v439, v459, v479, v499, v520, v538, v556, v574, v592;
  v480, v237, v238, v239, v240, v241, v242, v243, v278, v298, v318, v338, v358, v378, v398, v420, v440, v460, v480, v500, v521, v539, v557, v575, v593;
  v501, v244, v245, v246, v247, v248, v249, v250, v279, v299, v319, v339, v359, v379, v399, v421, v441, v461, v481, v501, v522, v540, v558, v576, v594;
  v523, v251, v252, v253, v254, v255, v256, v257, v280, v300, v320, v340, v360, v380, v400, v422, v442, v462, v482, v502, v523, v541, v559, v577, v595;
  sub_22BB360FC();
LABEL_23:

  return v258();
}

void sub_22BDA7F4C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22BDB56D4();
    v5 = sub_22BDBAD54();
  }

  if (a2)
  {
    v6 = sub_22BDB4234();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22BDA7FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB30F94();
  v24 = v23;
  v26 = v25;
  v42 = v27;
  v43 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v37);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  v39 = sub_22BB3A4F8();
  sub_22BB369A8(v39);
  sub_22BB322B0();
  v40 = swift_allocObject();
  *(v40 + 16) = a21;
  *(v40 + 24) = a22;
  v41 = swift_allocObject();
  v41[2] = v36;
  v41[3] = v34;
  v41[4] = v24;
  v41[5] = v32;
  v41[6] = v30;
  v41[7] = v42;
  v41[8] = v43;
  v41[9] = v26;

  sub_22BBE6DE0(&qword_27D8E6E38, &qword_22BDD1070);
  sub_22BDBAFB4();

  sub_22BB58728(v22, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDA8164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a8;
  v8[31] = v13;
  v8[28] = a6;
  v8[29] = a7;
  v8[26] = a4;
  v8[27] = a5;
  v8[24] = a2;
  v8[25] = a3;
  v8[23] = a1;
  sub_22BDB9C14();
  v8[32] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  v8[33] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v8[34] = swift_task_alloc();
  v9 = sub_22BDB57A4();
  v8[35] = v9;
  v8[36] = *(v9 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v10 = sub_22BDB77D4();
  v8[39] = v10;
  v8[40] = *(v10 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA8358, 0, 0);
}

uint64_t sub_22BDA8358(uint64_t a1)
{
  v605 = v1;
  sub_22BDB1DCC(a1);

  v4 = sub_22BDB77C4();
  sub_22BDBB0F4();
  sub_22BBCC16C();
  v5 = sub_22BB72E44();
  v6 = v1[39];
  v7 = v1[40];
  if (v5)
  {
    sub_22BB72168();
    v3 = sub_22BB6B650();
    v604[0] = v3;
    *v2 = 136315138;
    v8 = sub_22BB31528();
    *(v2 + 4) = sub_22BB32EE0(v8, v9, v10);
    sub_22BB36F24(&dword_22BB2C000, v11, v12, "Querying%s's toolbox.");
    sub_22BB35808();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v13 = v15;
  v16 = sub_22BB30AE4();
  v15(v16);
  v17 = v1[34];
  sub_22BB97740();
  sub_22BB37458();
  sub_22BDB5784();
  v450 = v15;
  if (sub_22BB3759C() == 1)
  {
    v18 = v1[42];
    sub_22BB58728(v1[34], &qword_27D8E6438, &qword_22BDD0FE0);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v19 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BDB2004();
    if (os_log_type_enabled(v19, v14))
    {
      sub_22BB36C64();
      v409 = sub_22BB3869C();
      v532 = v409;
      *v6 = 136315394;
      v20 = sub_22BB31F54();
      v23 = sub_22BB32EE0(v20, v21, v22);
      sub_22BB39448(v23, v24, v25, v26, v27, v28, v29, v30, v266);
      sub_22BB393AC();
      if (v3)
      {
        LODWORD(v368) = v14;
        v388 = v19;
        v604[0] = MEMORY[0x277D84F90];
        sub_22BB9287C();
        v31 = v604[0];
        sub_22BB31EA0();
        sub_22BDB1DB0();
        do
        {
          v18 = v1[37];
          v32 = sub_22BB3A81C();
          v33(v32);
          sub_22BDB5794();
          v34 = sub_22BB325C0();
          v35(v34);
          v604[0] = v31;
          sub_22BB392EC();
          if (v37)
          {
            sub_22BB2F158(v36);
            v18 = v604;
            sub_22BB3AB64();
            sub_22BD28158(v39, v40, v41);
            v31 = v604[0];
          }

          sub_22BB6BC54();
          sub_22BB51900();
        }

        while (!v38);
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      v3 = v1[39];
      v1[22] = v31;
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      v80 = sub_22BB8E600();
      sub_22BB37950(v80);
      sub_22BB36070();
      v81 = sub_22BB2F324();
      sub_22BB32EE0(v81, v82, v83);
      sub_22BB371E4();

      v17 = v430;
      *(v430 + 14) = v18;
      sub_22BBBD2C4(&dword_22BB2C000, v19, v14, "Invalid planner type (%s while querying toolbox. Possible values: [%s]");
      sub_22BB34F98(v84, v85, v86, v87, v88, v89, v90, v91, v267, v288, v308, v328, v348, v368, v388, v409);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v57 = sub_22BB3A368();
      v13 = v450;
    }

    else
    {
      v17 = v1[39];

      v57 = sub_22BB2F324();
    }

    v13(v57);
    v92 = sub_22BDB017C();
    v93 = sub_22BB31A08(&type metadata for ToolboxXPCServiceServer.ToolboxServerError, v92);
    sub_22BB9231C(v93, v94);
    sub_22BB38500(v95, v96, v97, v98, v99, v100, v101, v102, v266);

    goto LABEL_19;
  }

  v42 = sub_22BB3463C();
  v43(v42);
  v44 = static ToolboxManager.toolboxes()();
  sub_22BB69C3C(v44);

  if (!v1[15])
  {
    sub_22BB58728((v1 + 12), &qword_27D8E6E08, &qword_22BDD0FE8);
    v58 = sub_22BDB017C();
    v59 = sub_22BB31A08(&type metadata for ToolboxXPCServiceServer.ToolboxServerError, v58);
    sub_22BB34468(v59, v60, v61, v62, v63, v64, v65, v66, v266);
    v67 = sub_22BB38F80();
    v69 = v68(v67);
LABEL_19:
    sub_22BB3CF68(v69);

    v117 = v17;
    v118 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB899B4();

    v119 = sub_22BB71F98();
    v120 = v1[41];
    v121 = v1[39];
    if (v119)
    {
      v514 = v1[41];
      sub_22BB693A0();
      sub_22BB2F308();
      v122 = sub_22BB3AA0C();
      v491 = v121;
      v604[0] = v122;
      *v13 = 136315394;
      v124 = sub_22BB957A4(v122, v123, v604);
      sub_22BB328F8(v124);
      v125 = v120;
      v126 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v126);
      sub_22BB367C8();
      _os_log_impl(v127, v128, v129, v130, v131, 0x16u);
      sub_22BB58728(v3, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (v450)(v514, v121);
    }

    else
    {

      (v13)(v120, v121);
    }

    v133 = v1[42];
    v132 = v1[43];
    v134 = v1[41];
    v136 = v1[37];
    v135 = v1[38];
    v138 = v1[33];
    v137 = v1[34];
    v515 = v1[32];
    swift_willThrow();
    v132, v139, v140, v141, v142, v143, v144, v145, v268, v288, v308, v328, v348, v368, v388, v408, v430, v450, v470, v491, v515, v532, v550, v568, v586;
    v133, v146, v147, v148, v149, v150, v151, v152, v272, v292, v312, v332, v352, v372, v392, v414, v434, v454, v475, v495, v516, v534, v552, v570, v588;
    v134, v153, v154, v155, v156, v157, v158, v159, v273, v293, v313, v333, v353, v373, v393, v415, v435, v455, v476, v496, v517, v535, v553, v571, v589;
    v135, v160, v161, v162, v163, v164, v165, v166, v274, v294, v314, v334, v354, v374, v394, v416, v436, v456, v477, v497, v518, v536, v554, v572, v590;
    v136, v167, v168, v169, v170, v171, v172, v173, v275, v295, v315, v335, v355, v375, v395, v417, v437, v457, v478, v498, v519, v537, v555, v573, v591;
    v137, v174, v175, v176, v177, v178, v179, v180, v276, v296, v316, v336, v356, v376, v396, v418, v438, v458, v479, v499, v520, v538, v556, v574, v592;
    v138, v181, v182, v183, v184, v185, v186, v187, v277, v297, v317, v337, v357, v377, v397, v419, v439, v459, v480, v500, v521, v539, v557, v575, v593;
    v522, v188, v189, v190, v191, v192, v193, v194, v278, v298, v318, v338, v358, v378, v398, v420, v440, v460, v481, v501, v522, v540, v558, v576, v594;
    sub_22BB31368();
    goto LABEL_23;
  }

  sub_22BDB1FC4();
  sub_22BDA1FD4();
  v471 = v1[6];
  v492 = v45;
  v46 = sub_22BB3ACBC();
  sub_22BB69FEC(v46, v47);
  v48 = v1[10];
  v49 = sub_22BB97780();
  sub_22BB69FEC(v49, v48);
  sub_22BB30418();
  sub_22BB30ACC();
  sub_22BB8B75C();
  v50();
  sub_22BB30418();
  sub_22BB30ACC();
  sub_22BB8AD34();
  v51();
  sub_22BDB4254();
  v52 = sub_22BB34170();
  sub_22BB336D0(v52, v53, v54, v55);
  v56 = sub_22BDBA2E4();
  v70 = sub_22BDBA2D4();
  v410 = sub_22BDB8AF4();
  sub_22BDB9394();
  v71 = sub_22BDB9384();
  v72 = sub_22BB69778(v71, MEMORY[0x277D1E488], v266, v288, v308, v328, v348, v368, v388, v410, v430, v450, v471, v492, v1);
  sub_22BB3CB50(v72, v73, v74, v75, v76, v77, v78, v79, v269, v289, v309, v329, v349, v369, v389, v411, v431, v451, v472, v493, v511);
  v48, v103, v104, v105, v106, v107, v108, v109, v270, v290, v310, v330, v350, v370, v390, v412, v432, v452, v473, v1[31], v512, v70, v550, v568, v56;
  v70, v110, v111, v112, v113, v114, v115, v116, v271, v291, v311, v331, v351, v371, v391, v413, v433, v453, v474, v494, v513, v533, v551, v569, v587;
  v196 = sub_22BDB8A54();
  v399 = v1[43];
  v421 = v1[42];
  v197 = v1[38];
  v441 = v1[41];
  v461 = v1[37];
  v198 = v1[36];
  v379 = v1[35];
  v482 = v1[34];
  v502 = v1[33];
  v523 = v1[32];
  v199 = v1[23];
  v200 = swift_task_alloc();
  *(v200 + 16) = v1 + 2;
  v201 = sub_22BCA9168(sub_22BDB088C, v200, v196);

  v200, v202, v203, v204, v205, v206, v207, v208, v279, v299, v319, v339, v359, v379, v399, v421, v441, v461, v482, v502, v523, v541, v559, v577, v595;
  (*(v198 + 8))(v197, v380);
  *v199 = v201;
  sub_22BD5F4C0((v1 + 2));
  v400, v209, v210, v211, v212, v213, v214, v215, v280, v300, v320, v340, v360, v380, v400, v422, v442, v462, v483, v503, v524, v542, v560, v578, v596;
  v423, v216, v217, v218, v219, v220, v221, v222, v281, v301, v321, v341, v361, v381, v401, v423, v443, v463, v484, v504, v525, v543, v561, v579, v597;
  v444, v223, v224, v225, v226, v227, v228, v229, v282, v302, v322, v342, v362, v382, v402, v424, v444, v464, v485, v505, v526, v544, v562, v580, v598;
  v197, v230, v231, v232, v233, v234, v235, v236, v283, v303, v323, v343, v363, v383, v403, v425, v445, v465, v486, v506, v527, v545, v563, v581, v599;
  v466, v237, v238, v239, v240, v241, v242, v243, v284, v304, v324, v344, v364, v384, v404, v426, v446, v466, v487, v507, v528, v546, v564, v582, v600;
  v488, v244, v245, v246, v247, v248, v249, v250, v285, v305, v325, v345, v365, v385, v405, v427, v447, v467, v488, v508, v529, v547, v565, v583, v601;
  v509, v251, v252, v253, v254, v255, v256, v257, v286, v306, v326, v346, v366, v386, v406, v428, v448, v468, v489, v509, v530, v548, v566, v584, v602;
  v531, v258, v259, v260, v261, v262, v263, v264, v287, v307, v327, v347, v367, v387, v407, v429, v449, v469, v490, v510, v531, v549, v567, v585, v603;
  sub_22BB360FC();
LABEL_23:

  return v265();
}

uint64_t sub_22BDA8C5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v82 = a3;
  v78 = a2;
  sub_22BDB77D4();
  sub_22BB30444();
  v70 = v5;
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v69 = v6;
  sub_22BB2F120();
  sub_22BDBA994();
  sub_22BB30444();
  v76 = v8;
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v75 = v9;
  v10 = sub_22BBE6DE0(&qword_27D8E6E40, &qword_22BDD1098);
  sub_22BB2F0C8(v10);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v74 = &v66 - v12;
  sub_22BB2F120();
  v79 = sub_22BDB93D4();
  sub_22BB30444();
  v68 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BB305A8();
  v67 = v15;
  sub_22BB2F120();
  sub_22BDBA014();
  sub_22BB30444();
  v80 = v16;
  v81 = v17;
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v20 = v19 - v18;
  v21 = sub_22BBE6DE0(&qword_27D8E6E48, &qword_22BDD10A0);
  sub_22BB2F0C8(v21);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v25 = sub_22BDB9424();
  sub_22BB30444();
  v73 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22BB305A8();
  v72 = v28;
  v29 = sub_22BBE6DE0(&qword_27D8E6E50, &qword_22BDD10A8);
  sub_22BB2F0C8(v29);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  v32 = &v66 - v31;
  v33 = sub_22BDB8044();
  sub_22BB30444();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  v39 = v38 - v37;
  sub_22BB69088(a1, v83);
  sub_22BBE6DE0(&qword_27D8E6E58, &qword_22BDD10B0);
  if (swift_dynamicCast())
  {
    sub_22BB336D0(v32, 0, 1, v33);
    (*(v35 + 32))(v39, v32, v33);
    sub_22BDB8034();
    sub_22BDB1F78();
    sub_22BDB8024();
    sub_22BDB9FE4();
    (*(v81 + 8))(v20, v80);
    v40 = objc_allocWithZone(sub_22BDB56D4());
    sub_22BB6FEF4();
    sub_22BB31F54();
    v41 = sub_22BDB56C4();
    result = (*(v35 + 8))(v39, v33);
  }

  else
  {
    v43 = v81;
    sub_22BB30B28();
    sub_22BB336D0(v44, v45, v46, v33);
    sub_22BB58728(v32, &qword_27D8E6E50, &qword_22BDD10A8);
    sub_22BB69088(a1, v83);
    if (swift_dynamicCast())
    {
      sub_22BB336D0(v24, 0, 1, v25);
      v48 = v72;
      v47 = v73;
      (*(v73 + 32))(v72, v24, v25);
      sub_22BDB9414();
      sub_22BB69FEC(v78, v78[3]);
      v49 = v75;
      sub_22BDB9404();
      sub_22BDB8834();
      (*(v76 + 8))(v49, v77);
      v50 = objc_allocWithZone(sub_22BDB56D4());
      sub_22BB6FEF4();
      v41 = sub_22BDB56C4();
      result = (*(v47 + 8))(v48, v25);
    }

    else
    {
      v51 = sub_22BB34170();
      sub_22BB336D0(v51, v52, v53, v25);
      sub_22BB58728(v24, &qword_27D8E6E48, &qword_22BDD10A0);
      sub_22BB69088(a1, v83);
      v54 = v74;
      v55 = v79;
      if (swift_dynamicCast())
      {
        sub_22BB336D0(v54, 0, 1, v55);
        v56 = v68;
        v57 = v67;
        (*(v68 + 32))(v67, v54, v55);
        sub_22BDB93C4();
        sub_22BDB1F78();
        sub_22BDB8024();
        sub_22BDB9FE4();
        (*(v43 + 8))(v20, v80);
        v58 = objc_allocWithZone(sub_22BDB56D4());
        sub_22BB6FEF4();
        sub_22BB31F54();
        v41 = sub_22BDB56C4();
        result = (*(v56 + 8))(v57, v55);
      }

      else
      {
        sub_22BB30B28();
        sub_22BB336D0(v59, v60, v61, v55);
        sub_22BB58728(v54, &qword_27D8E6E40, &qword_22BDD1098);
        v62 = v69;
        sub_22BDB6374();
        v63 = sub_22BDB77C4();
        v64 = sub_22BDBB114();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_22BB2C000, v63, v64, "Incorrect ToolBoxResult", v65, 2u);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        result = (*(v70 + 8))(v62, v71);
        v41 = 0;
      }
    }
  }

  *v82 = v41;
  return result;
}

uint64_t sub_22BDA94F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  v7 = sub_22BDBA014();
  v6[29] = v7;
  v6[30] = *(v7 - 8);
  v6[31] = swift_task_alloc();
  v8 = sub_22BDB8044();
  v6[32] = v8;
  v6[33] = *(v8 - 8);
  v6[34] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v6[35] = swift_task_alloc();
  v9 = sub_22BDB57A4();
  v6[36] = v9;
  v6[37] = *(v9 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v10 = sub_22BDB77D4();
  v6[40] = v10;
  v6[41] = *(v10 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA972C, 0, 0);
}

uint64_t sub_22BDA972C()
{
  sub_22BB348A0();
  v433 = v0;
  sub_22BDB1DCC(v5);

  v6 = sub_22BDB77C4();
  sub_22BDBB0F4();
  sub_22BBCC16C();
  v7 = sub_22BB72E44();
  v8 = v0[40];
  v9 = v0[41];
  if (v7)
  {
    sub_22BB72168();
    v4 = sub_22BB6B650();
    v426 = v4;
    *v3 = 136315138;
    v10 = sub_22BB31528();
    *(v3 + 4) = sub_22BB32EE0(v10, v11, v12);
    sub_22BB36F24(&dword_22BB2C000, v13, v14, "Querying%s's toolbox.");
    sub_22BB35808();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v15 = *(v9 + 8);
  v16 = sub_22BB30AE4();
  v15(v16);
  v17 = v0[35];
  v18 = v0[36];
  sub_22BB97740();
  sub_22BB37458();
  sub_22BDB5784();
  v19 = &loc_22BDBC000;
  v394 = v0;
  if (sub_22BB3759C() == 1)
  {
    v20 = sub_22BDB1E14();
    sub_22BB58728(v20, &qword_27D8E6438, &qword_22BDD0FE0);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v21 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB371E4();

    if (os_log_type_enabled(v21, v18))
    {
      LODWORD(v328) = v18;
      v344 = v15;
      sub_22BB36C64();
      v312 = sub_22BB3E030();
      v411 = v312;
      *v2 = 136315394;
      v22 = sub_22BB31F54();
      v25 = sub_22BB32EE0(v22, v23, v24);
      sub_22BDB1D78(v25, v26, v27, v28, v29, v30, v31, v32, v263);
      sub_22BB393AC();
      if (v4)
      {
        v280 = v2;
        v296 = v21;
        sub_22BDB1F98();
        sub_22BB9287C();
        v33 = v426;
        sub_22BB31EA0();
        sub_22BBCBFC0();
        do
        {
          v18 = v0[38];
          v34 = sub_22BB3A81C();
          v35(v34);
          sub_22BDB5794();
          v36 = sub_22BB325C0();
          v37(v36);
          v426 = v33;
          sub_22BB392EC();
          if (v39)
          {
            sub_22BB2F158(v38);
            v18 = &v426;
            sub_22BB3AB64();
            sub_22BD28158(v41, v42, v43);
            v33 = v426;
          }

          sub_22BB37ECC();
        }

        while (!v40);

        v19 = &loc_22BDBC000;
      }

      else
      {
      }

      sub_22BB69588();
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      v77 = sub_22BB8E600();
      sub_22BB37950(v77);
      sub_22BB36070();
      v78 = sub_22BB2F324();
      sub_22BB32EE0(v78, v79, v80);
      sub_22BB371E4();

      *(v2 + 14) = v18;
      sub_22BB8DD0C(&dword_22BB2C000, v81, v328, "Invalid planner type (%s while querying toolbox. Possible values: [%s]");
      sub_22BB385DC(v82, v83, MEMORY[0x277D84F70] + 8);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v57 = sub_22BB3A368();
      v15 = v344;
    }

    else
    {
      sub_22BB75614();
      v57 = sub_22BB2F324();
    }

    v15(v57);
    v0 = v0[24];
    v84 = sub_22BDB017C();
    v17 = sub_22BB31A08(&type metadata for ToolboxXPCServiceServer.ToolboxServerError, v84);
    sub_22BBB79FC(v17, v85, v86, v87, v88, v89, v90, v91);

    goto LABEL_21;
  }

  v44 = sub_22BB36B08();
  v45(v44);
  v46 = static ToolboxManager.toolboxes()();
  sub_22BB69C3C(v46);

  if (!v0[15])
  {
    sub_22BB6F978();
    sub_22BDB201C(v58, &qword_27D8E6E08, &qword_22BDD0FE8, v59, v60, v61, v62, v63, v263, v280, v296, v312, v328, v344, v360, v377, v0);
    v64 = sub_22BDB017C();
    v65 = sub_22BB31A08(&type metadata for ToolboxXPCServiceServer.ToolboxServerError, v64);
    sub_22BB34468(v65, v66, v67, v68, v69, v70, v71, v72, v264);
    v73 = sub_22BB38F80();
    v76 = v74(v73);
    v0 = v395;
    goto LABEL_21;
  }

  sub_22BB330F0();
  v47 = sub_22BB35E84();
  static StandardToolboxConfiguration.makeQueryableToolboxWithNoClientActions<A, B>(delegate:planGenerationDelegate:)(v47, v48, v49, v50, v51, v52, v53, v54);
  v17 = v8;
  if (v8)
  {
    v55 = sub_22BB58BFC();
    v56(v55);
    v76 = sub_22BD5F4C0((v0 + 2));
LABEL_21:
    sub_22BB3CF68(v76);

    v92 = v17;
    v93 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB899B4();

    v94 = sub_22BB71F98();
    v96 = v0[41];
    v95 = v0[42];
    v97 = v17;
    v98 = v0[40];
    if (v94)
    {
      v378 = v0[42];
      v95 = v0[25];
      sub_22BB3B778();
      sub_22BB2F308();
      v361 = v96;
      v96 = sub_22BB3AA0C();
      v426 = v96;
      v106 = sub_22BDB1EA0(COERCE_FLOAT(v19[509]), v96, v99, v100, v101, v102, v103, v104, v105, v263, v280, v296, v312, v328, v15, v361, v378, v98, v411);
      sub_22BB328F8(v106);
      v107 = v97;
      v108 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v108);
      sub_22BB367C8();
      _os_log_impl(v109, v110, v111, v112, v113, 0x16u);
      sub_22BB58728(v4, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v122 = sub_22BB697B4(v114, v115, v116, v117, v118, v119, v120, v121, v265, v281, v297, v313, v329, v345, v362, v379);
      v123(v122);
    }

    else
    {

      v124 = sub_22BB30428();
      v15(v124);
    }

    sub_22BB3E068();
    v396 = v0[31];
    swift_willThrow();
    v93, v125, v126, v127, v128, v129, v130, v131, v263, v280, v296, v312, v328, v344, v360, v377, v396, v411, v426, v427, v428, v429, v430, v431, v432;
    v95, v132, v133, v134, v135, v136, v137, v138, v266, v282, v298, v314, v330, v346, v363, v380, v397, v412, v426, v427, v428, v429, v430, v431, v432;
    v2, v139, v140, v141, v142, v143, v144, v145, v267, v283, v299, v315, v331, v347, v364, v381, v398, v413, v426, v427, v428, v429, v430, v431, v432;
    v15, v146, v147, v148, v149, v150, v151, v152, v268, v284, v300, v316, v332, v348, v365, v382, v399, v414, v426, v427, v428, v429, v430, v431, v432;
    v96, v153, v154, v155, v156, v157, v158, v159, v269, v285, v301, v317, v333, v349, v366, v383, v400, v415, v426, v427, v428, v429, v430, v431, v432;
    v4, v160, v161, v162, v163, v164, v165, v166, v270, v286, v302, v318, v334, v350, v367, v384, v401, v416, v426, v427, v428, v429, v430, v431, v432;
    v19, v167, v168, v169, v170, v171, v172, v173, v271, v287, v303, v319, v335, v351, v368, v385, v402, v417, v426, v427, v428, v429, v430, v431, v432;
    v403, v174, v175, v176, v177, v178, v179, v180, v272, v288, v304, v320, v336, v352, v369, v386, v403, v418, v426, v427, v428, v429, v430, v431, v432;
    sub_22BB31368();
    goto LABEL_25;
  }

  sub_22BB396A0();
  v75 = sub_22BDB8A84();
  v183 = v75;
  v184 = *(v75 + 16);
  if (v184)
  {
    sub_22BBC029C();
    sub_22BDB1F98();
    sub_22BDBB414();
    v1 += 16;
    sub_22BB2F390();
    sub_22BB3E528();
    do
    {
      v185 = sub_22BB3E32C();
      v186(v185);
      sub_22BDB8034();
      sub_22BDB1F78();
      sub_22BDB8024();
      sub_22BDB9FE4();
      v187 = sub_22BB3FC30();
      v188(v187);
      v189 = objc_allocWithZone(sub_22BDB56D4());
      sub_22BB6FEF4();
      sub_22BB393C4();
      v183 = sub_22BDB56C4();
      v190 = sub_22BB35464();
      v191(v190);
      v192 = sub_22BDBB3F4();
      sub_22BDB1FE4(v192, v193, v194, v195, v196, v197, v198, v199, v263, v280, v296, v312, v328, v344, v360, v377, v394, v411, v426);
      sub_22BB31528();
      sub_22BDBB434();
      v200 = &v426;
      sub_22BDBB404();
      v8 += v344;
      --v184;
    }

    while (v184);
    v201 = sub_22BB58BFC();
    v202(v201);

    v203 = v426;
  }

  else
  {
    v200 = v0[39];
    v184 = v0[36];
    v204 = v0[37];

    v8 = v204 + 8;
    v205 = sub_22BB2F324();
    v206(v205);
    v203 = MEMORY[0x277D84F90];
  }

  sub_22BB6C73C();
  loc_22BDBC000 = v203;
  v200, v207, v208, v209, v210, v211, v212, v213, v263, v280, v296, v312, v328, v344, v360, v377, v394, v411, v426, v427, v428, v429, v430, v431, v432;
  v184, v214, v215, v216, v217, v218, v219, v220, v273, v289, v305, v321, v337, v353, v370, v387, v404, v419, v426, v427, v428, v429, v430, v431, v432;
  v8, v221, v222, v223, v224, v225, v226, v227, v274, v290, v306, v322, v338, v354, v371, v388, v405, v420, v426, v427, v428, v429, v430, v431, v432;
  v1, v228, v229, v230, v231, v232, v233, v234, v275, v291, v307, v323, v339, v355, v372, v389, v406, v421, v426, v427, v428, v429, v430, v431, v432;
  v183, v235, v236, v237, v238, v239, v240, v241, v276, v292, v308, v324, v340, v356, v373, v390, v407, v422, v426, v427, v428, v429, v430, v431, v432;
  v15, v242, v243, v244, v245, v246, v247, v248, v277, v293, v309, v325, v341, v357, v374, v391, v408, v423, v426, v427, v428, v429, v430, v431, v432;
  v3, v249, v250, v251, v252, v253, v254, v255, v278, v294, v310, v326, v342, v358, v375, v392, v409, v424, v426, v427, v428, v429, v430, v431, v432;
  v410, v256, v257, v258, v259, v260, v261, v262, v279, v295, v311, v327, v343, v359, v376, v393, v410, v425, v426, v427, v428, v429, v430, v431, v432;
  sub_22BB360FC();
LABEL_25:

  return v181();
}

void sub_22BDA9F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB30F94();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v47[0] = a22;
  v47[1] = a23;
  v37 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v37);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  v40 = v47 - v39;
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v41, v42, v43, v44);
  sub_22BB322B0();
  v45 = swift_allocObject();
  *(v45 + 16) = v26;
  *(v45 + 24) = v24;
  v46 = swift_allocObject();
  v46[2] = v36;
  v46[3] = v34;
  v46[4] = v32;
  v46[5] = v30;
  v46[6] = v28;

  sub_22BBE6DE0(&qword_27D8E6E38, &qword_22BDD1070);
  sub_22BDBAFB4();

  sub_22BB58728(v40, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDAA0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  v7 = sub_22BDBA014();
  v6[29] = v7;
  v6[30] = *(v7 - 8);
  v6[31] = swift_task_alloc();
  v8 = sub_22BDB8044();
  v6[32] = v8;
  v6[33] = *(v8 - 8);
  v6[34] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v6[35] = swift_task_alloc();
  v9 = sub_22BDB57A4();
  v6[36] = v9;
  v6[37] = *(v9 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v10 = sub_22BDB77D4();
  v6[40] = v10;
  v6[41] = *(v10 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDAA308, 0, 0);
}

uint64_t sub_22BDAA308()
{
  sub_22BB348A0();
  v433 = v0;
  sub_22BDB1DCC(v5);

  v6 = sub_22BDB77C4();
  sub_22BDBB0F4();
  sub_22BBCC16C();
  v7 = sub_22BB72E44();
  v8 = v0[40];
  v9 = v0[41];
  if (v7)
  {
    sub_22BB72168();
    v4 = sub_22BB6B650();
    v426 = v4;
    *v3 = 136315138;
    v10 = sub_22BB31528();
    *(v3 + 4) = sub_22BB32EE0(v10, v11, v12);
    sub_22BB36F24(&dword_22BB2C000, v13, v14, "Querying%s's toolbox.");
    sub_22BB35808();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v15 = *(v9 + 8);
  v16 = sub_22BB30AE4();
  v15(v16);
  v17 = v0[35];
  v18 = v0[36];
  sub_22BB97740();
  sub_22BB37458();
  sub_22BDB5784();
  v19 = &loc_22BDBC000;
  v394 = v0;
  if (sub_22BB3759C() == 1)
  {
    v20 = sub_22BDB1E14();
    sub_22BB58728(v20, &qword_27D8E6438, &qword_22BDD0FE0);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v21 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB371E4();

    if (os_log_type_enabled(v21, v18))
    {
      LODWORD(v328) = v18;
      v344 = v15;
      sub_22BB36C64();
      v312 = sub_22BB3E030();
      v411 = v312;
      *v2 = 136315394;
      v22 = sub_22BB31F54();
      v25 = sub_22BB32EE0(v22, v23, v24);
      sub_22BDB1D78(v25, v26, v27, v28, v29, v30, v31, v32, v263);
      sub_22BB393AC();
      if (v4)
      {
        v280 = v2;
        v296 = v21;
        sub_22BDB1F98();
        sub_22BB9287C();
        v33 = v426;
        sub_22BB31EA0();
        sub_22BBCBFC0();
        do
        {
          v18 = v0[38];
          v34 = sub_22BB3A81C();
          v35(v34);
          sub_22BDB5794();
          v36 = sub_22BB325C0();
          v37(v36);
          v426 = v33;
          sub_22BB392EC();
          if (v39)
          {
            sub_22BB2F158(v38);
            v18 = &v426;
            sub_22BB3AB64();
            sub_22BD28158(v41, v42, v43);
            v33 = v426;
          }

          sub_22BB37ECC();
        }

        while (!v40);

        v19 = &loc_22BDBC000;
      }

      else
      {
      }

      sub_22BB69588();
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      v77 = sub_22BB8E600();
      sub_22BB37950(v77);
      sub_22BB36070();
      v78 = sub_22BB2F324();
      sub_22BB32EE0(v78, v79, v80);
      sub_22BB371E4();

      *(v2 + 14) = v18;
      sub_22BB8DD0C(&dword_22BB2C000, v81, v328, "Invalid planner type (%s while querying toolbox. Possible values: [%s]");
      sub_22BB385DC(v82, v83, MEMORY[0x277D84F70] + 8);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v57 = sub_22BB3A368();
      v15 = v344;
    }

    else
    {
      sub_22BB75614();
      v57 = sub_22BB2F324();
    }

    v15(v57);
    v0 = v0[24];
    v84 = sub_22BDB017C();
    v17 = sub_22BB31A08(&type metadata for ToolboxXPCServiceServer.ToolboxServerError, v84);
    sub_22BBB79FC(v17, v85, v86, v87, v88, v89, v90, v91);

    goto LABEL_21;
  }

  v44 = sub_22BB36B08();
  v45(v44);
  v46 = static ToolboxManager.toolboxes()();
  sub_22BB69C3C(v46);

  if (!v0[15])
  {
    sub_22BB6F978();
    sub_22BDB201C(v58, &qword_27D8E6E08, &qword_22BDD0FE8, v59, v60, v61, v62, v63, v263, v280, v296, v312, v328, v344, v360, v377, v0);
    v64 = sub_22BDB017C();
    v65 = sub_22BB31A08(&type metadata for ToolboxXPCServiceServer.ToolboxServerError, v64);
    sub_22BB34468(v65, v66, v67, v68, v69, v70, v71, v72, v264);
    v73 = sub_22BB38F80();
    v76 = v74(v73);
    v0 = v395;
    goto LABEL_21;
  }

  sub_22BB330F0();
  v47 = sub_22BB35E84();
  static StandardToolboxConfiguration.makeQueryableToolboxWithNoClientActions<A, B>(delegate:planGenerationDelegate:)(v47, v48, v49, v50, v51, v52, v53, v54);
  v17 = v8;
  if (v8)
  {
    v55 = sub_22BB58BFC();
    v56(v55);
    v76 = sub_22BD5F4C0((v0 + 2));
LABEL_21:
    sub_22BB3CF68(v76);

    v92 = v17;
    v93 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB899B4();

    v94 = sub_22BB71F98();
    v96 = v0[41];
    v95 = v0[42];
    v97 = v17;
    v98 = v0[40];
    if (v94)
    {
      v378 = v0[42];
      v95 = v0[25];
      sub_22BB3B778();
      sub_22BB2F308();
      v361 = v96;
      v96 = sub_22BB3AA0C();
      v426 = v96;
      v106 = sub_22BDB1EA0(COERCE_FLOAT(v19[509]), v96, v99, v100, v101, v102, v103, v104, v105, v263, v280, v296, v312, v328, v15, v361, v378, v98, v411);
      sub_22BB328F8(v106);
      v107 = v97;
      v108 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v108);
      sub_22BB367C8();
      _os_log_impl(v109, v110, v111, v112, v113, 0x16u);
      sub_22BB58728(v4, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v122 = sub_22BB697B4(v114, v115, v116, v117, v118, v119, v120, v121, v265, v281, v297, v313, v329, v345, v362, v379);
      v123(v122);
    }

    else
    {

      v124 = sub_22BB30428();
      v15(v124);
    }

    sub_22BB3E068();
    v396 = v0[31];
    swift_willThrow();
    v93, v125, v126, v127, v128, v129, v130, v131, v263, v280, v296, v312, v328, v344, v360, v377, v396, v411, v426, v427, v428, v429, v430, v431, v432;
    v95, v132, v133, v134, v135, v136, v137, v138, v266, v282, v298, v314, v330, v346, v363, v380, v397, v412, v426, v427, v428, v429, v430, v431, v432;
    v2, v139, v140, v141, v142, v143, v144, v145, v267, v283, v299, v315, v331, v347, v364, v381, v398, v413, v426, v427, v428, v429, v430, v431, v432;
    v15, v146, v147, v148, v149, v150, v151, v152, v268, v284, v300, v316, v332, v348, v365, v382, v399, v414, v426, v427, v428, v429, v430, v431, v432;
    v96, v153, v154, v155, v156, v157, v158, v159, v269, v285, v301, v317, v333, v349, v366, v383, v400, v415, v426, v427, v428, v429, v430, v431, v432;
    v4, v160, v161, v162, v163, v164, v165, v166, v270, v286, v302, v318, v334, v350, v367, v384, v401, v416, v426, v427, v428, v429, v430, v431, v432;
    v19, v167, v168, v169, v170, v171, v172, v173, v271, v287, v303, v319, v335, v351, v368, v385, v402, v417, v426, v427, v428, v429, v430, v431, v432;
    v403, v174, v175, v176, v177, v178, v179, v180, v272, v288, v304, v320, v336, v352, v369, v386, v403, v418, v426, v427, v428, v429, v430, v431, v432;
    sub_22BB31368();
    goto LABEL_25;
  }

  sub_22BB396A0();
  v75 = sub_22BDB8A74();
  v183 = v75;
  v184 = *(v75 + 16);
  if (v184)
  {
    sub_22BBC029C();
    sub_22BDB1F98();
    sub_22BDBB414();
    v1 += 16;
    sub_22BB2F390();
    sub_22BB3E528();
    do
    {
      v185 = sub_22BB3E32C();
      v186(v185);
      sub_22BDB8034();
      sub_22BDB1F78();
      sub_22BDB8024();
      sub_22BDB9FE4();
      v187 = sub_22BB3FC30();
      v188(v187);
      v189 = objc_allocWithZone(sub_22BDB56D4());
      sub_22BB6FEF4();
      sub_22BB393C4();
      v183 = sub_22BDB56C4();
      v190 = sub_22BB35464();
      v191(v190);
      v192 = sub_22BDBB3F4();
      sub_22BDB1FE4(v192, v193, v194, v195, v196, v197, v198, v199, v263, v280, v296, v312, v328, v344, v360, v377, v394, v411, v426);
      sub_22BB31528();
      sub_22BDBB434();
      v200 = &v426;
      sub_22BDBB404();
      v8 += v344;
      --v184;
    }

    while (v184);
    v201 = sub_22BB58BFC();
    v202(v201);

    v203 = v426;
  }

  else
  {
    v200 = v0[39];
    v184 = v0[36];
    v204 = v0[37];

    v8 = v204 + 8;
    v205 = sub_22BB2F324();
    v206(v205);
    v203 = MEMORY[0x277D84F90];
  }

  sub_22BB6C73C();
  loc_22BDBC000 = v203;
  v200, v207, v208, v209, v210, v211, v212, v213, v263, v280, v296, v312, v328, v344, v360, v377, v394, v411, v426, v427, v428, v429, v430, v431, v432;
  v184, v214, v215, v216, v217, v218, v219, v220, v273, v289, v305, v321, v337, v353, v370, v387, v404, v419, v426, v427, v428, v429, v430, v431, v432;
  v8, v221, v222, v223, v224, v225, v226, v227, v274, v290, v306, v322, v338, v354, v371, v388, v405, v420, v426, v427, v428, v429, v430, v431, v432;
  v1, v228, v229, v230, v231, v232, v233, v234, v275, v291, v307, v323, v339, v355, v372, v389, v406, v421, v426, v427, v428, v429, v430, v431, v432;
  v183, v235, v236, v237, v238, v239, v240, v241, v276, v292, v308, v324, v340, v356, v373, v390, v407, v422, v426, v427, v428, v429, v430, v431, v432;
  v15, v242, v243, v244, v245, v246, v247, v248, v277, v293, v309, v325, v341, v357, v374, v391, v408, v423, v426, v427, v428, v429, v430, v431, v432;
  v3, v249, v250, v251, v252, v253, v254, v255, v278, v294, v310, v326, v342, v358, v375, v392, v409, v424, v426, v427, v428, v429, v430, v431, v432;
  v410, v256, v257, v258, v259, v260, v261, v262, v279, v295, v311, v327, v343, v359, v376, v393, v410, v425, v426, v427, v428, v429, v430, v431, v432;
  sub_22BB360FC();
LABEL_25:

  return v181();
}

void sub_22BDAAB44()
{
  sub_22BB3B094();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BB31F54();
  v10 = sub_22BBE6DE0(v8, v9);
  sub_22BB2F0C8(v10);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BB3A4F8();
  sub_22BB369A8(v12);
  sub_22BB322B0();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v1;
  sub_22BB322B0();
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v5;

  sub_22BBE6DE0(&qword_27D8E6E30, &unk_22BDD1050);
  sub_22BDB1DF4();
  sub_22BDBAFB4();

  v15 = sub_22BB3182C();
  sub_22BB58728(v15, v16, &qword_22BDBD020);
  sub_22BB36A24();
}

uint64_t sub_22BDAAC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  sub_22BDB9C14();
  v3[26] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  v3[27] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v3[28] = swift_task_alloc();
  v4 = sub_22BDB57A4();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v5 = sub_22BDB77D4();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDAAE50, 0, 0);
}

uint64_t sub_22BDAB740()
{
  v237 = v0;
  v3 = v0[41];
  v4 = sub_22BDB8504();
  if (v3)
  {
    (*(v0[30] + 8))(v0[32], v0[29]);

    v5 = sub_22BD5F4C0((v0 + 2));
    sub_22BDB1DCC(v5);

    v6 = v3;
    v7 = sub_22BDB77C4();
    v8 = sub_22BDBB114();

    v9 = sub_22BB71F98();
    v10 = v0[38];
    v11 = v0[35];
    v12 = v0[33];
    if (v9)
    {
      v210 = v0[38];
      sub_22BB693A0();
      v194 = v11;
      sub_22BB2F308();
      v178 = v12;
      v12 = sub_22BB3AA0C();
      v227 = v12;
      *v11 = 136315394;
      v14 = sub_22BB957A4(v12, v13, &v227);
      sub_22BB328F8(v14);
      v15 = v10;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v16);
      sub_22BB367C8();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      sub_22BB58728(v1, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v210(v11, v178);
    }

    else
    {

      v87 = sub_22BB94F44();
      (v10)(v87);
    }

    sub_22BB3B85C();
    v219 = v88;
    swift_willThrow();
    v7, v89, v90, v91, v92, v93, v94, v95, v146, v162, v178, v194, v219, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v10, v96, v97, v98, v99, v100, v101, v102, v155, v171, v187, v203, v220, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v8, v103, v104, v105, v106, v107, v108, v109, v156, v172, v188, v204, v221, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v11, v110, v111, v112, v113, v114, v115, v116, v157, v173, v189, v205, v222, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v12, v117, v118, v119, v120, v121, v122, v123, v158, v174, v190, v206, v223, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v1, v124, v125, v126, v127, v128, v129, v130, v159, v175, v191, v207, v224, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v2, v131, v132, v133, v134, v135, v136, v137, v160, v176, v192, v208, v225, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v226, v138, v139, v140, v141, v142, v143, v144, v161, v177, v193, v209, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    sub_22BB31368();
  }

  else
  {
    v22 = v4;
    v24 = v0[36];
    v23 = v0[37];
    v25 = v0[32];
    v147 = v0[35];
    v163 = v0[31];
    v26 = v0[29];
    v27 = v0[30];
    v179 = v0[28];
    v195 = v0[27];
    v211 = v0[26];
    v28 = v0[23];
    sub_22BBE6DE0(&qword_27D8E5FE0, &unk_22BDCD508);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_22BDBCBD0;
    *(v29 + 32) = v22;

    (*(v27 + 8))(v25, v26);
    sub_22BD5F4C0((v0 + 2));
    *v28 = v29;
    v23, v30, v31, v32, v33, v34, v35, v36, v147, v163, v179, v195, v211, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v24, v37, v38, v39, v40, v41, v42, v43, v148, v164, v180, v196, v212, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v149, v44, v45, v46, v47, v48, v49, v50, v149, v165, v181, v197, v213, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v25, v51, v52, v53, v54, v55, v56, v57, v150, v166, v182, v198, v214, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v167, v58, v59, v60, v61, v62, v63, v64, v151, v167, v183, v199, v215, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v184, v65, v66, v67, v68, v69, v70, v71, v152, v168, v184, v200, v216, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v201, v72, v73, v74, v75, v76, v77, v78, v153, v169, v185, v201, v217, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v218, v79, v80, v81, v82, v83, v84, v85, v154, v170, v186, v202, v218, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    sub_22BB360FC();
  }

  return v86();
}

void sub_22BDABCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_22BDBAD54();
    if (a2)
    {
LABEL_3:
      v6 = sub_22BDB4234();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22BDABD88()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v17);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BB3A4F8();
  sub_22BB369A8(v19);
  sub_22BB322B0();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;
  sub_22BDB1E34();
  v21 = swift_allocObject();
  v21[2] = v16;
  v21[3] = v14;
  v21[4] = v12;
  v21[5] = v10;
  v21[6] = v8;
  v21[7] = v6;
  sub_22BB33F68();

  sub_22BDBAFB4();

  sub_22BB58728(v0, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDABEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[29] = a6;
  v7[30] = a7;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  sub_22BBE6DE0(&qword_27D8E6E18, &qword_22BDD1008);
  v7[31] = swift_task_alloc();
  v8 = sub_22BDB8074();
  v7[32] = v8;
  v7[33] = *(v8 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v7[36] = swift_task_alloc();
  v9 = sub_22BDB57A4();
  v7[37] = v9;
  v7[38] = *(v9 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v10 = sub_22BDB77D4();
  v7[41] = v10;
  v7[42] = *(v10 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDAC108, 0, 0);
}

void sub_22BDACA50()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_22BB31F54();
  v14 = sub_22BBE6DE0(v12, v13);
  sub_22BB2F0C8(v14);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BB3A4F8();
  sub_22BB369A8(v16);
  sub_22BB322B0();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v9;
  v18[4] = v7;
  v18[5] = v5;

  sub_22BDBAFB4();

  v19 = sub_22BB3182C();
  sub_22BB58728(v19, v20, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDACB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_22BDBA014();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v7 = sub_22BDBA994();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v8 = sub_22BDB9224();
  v5[34] = v8;
  v5[35] = *(v8 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v9 = sub_22BDB47C4();
  v5[38] = v9;
  v5[39] = *(v9 - 8);
  v5[40] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6E28, &qword_22BDD1028);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v5[43] = swift_task_alloc();
  v10 = sub_22BDB57A4();
  v5[44] = v10;
  v5[45] = *(v10 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v11 = sub_22BDB77D4();
  v5[48] = v11;
  v5[49] = *(v11 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDACED8, 0, 0);
}

void sub_22BDADB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_22BDBABE4();
    if (a3)
    {
LABEL_3:
      v7 = sub_22BDB4234();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_22BDADBE4()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v17);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BB3A4F8();
  sub_22BB369A8(v19);
  sub_22BB322B0();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;
  sub_22BDB1E34();
  v21 = swift_allocObject();
  v21[2] = v16;
  v21[3] = v14;
  v21[4] = v12;
  v21[5] = v10;
  v21[6] = v8;
  v21[7] = v6;

  sub_22BBE6DE0(&qword_27D8E6E10, &qword_22BDD1000);
  sub_22BDBAFB4();

  sub_22BB58728(v0, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDADD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[29] = a6;
  v7[30] = a7;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  sub_22BBE6DE0(&qword_27D8E6E18, &qword_22BDD1008);
  v7[31] = swift_task_alloc();
  v8 = sub_22BDB8074();
  v7[32] = v8;
  v7[33] = *(v8 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  v7[36] = swift_task_alloc();
  v9 = sub_22BDB57A4();
  v7[37] = v9;
  v7[38] = *(v9 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v10 = sub_22BDB77D4();
  v7[41] = v10;
  v7[42] = *(v10 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDADF6C, 0, 0);
}

uint64_t sub_22BDAE8A4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = sub_22BDBABF4();
  v14 = v13;
  v15 = sub_22BDBABF4();
  v17 = v16;
  if (a5)
  {
    v18 = sub_22BDBABF4();
    a5 = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  v21 = a1;
  a9(v12, v14, v15, v17, v18, a5, a8, v20);
}

void sub_22BDAE9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_22BDBB084();
    if (a2)
    {
LABEL_3:
      v6 = sub_22BDB4234();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22BDAEA64()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BB31F54();
  v12 = sub_22BBE6DE0(v10, v11);
  sub_22BB2F0C8(v12);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BB3A4F8();
  sub_22BB369A8(v14);
  sub_22BB322B0();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v1;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v7;
  *(v16 + 32) = v5;
  sub_22BDB56B4();

  sub_22BDBAFB4();

  v17 = sub_22BB3182C();
  sub_22BB58728(v17, v18, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDAEB9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 376) = a4;
  *(v4 + 192) = a2;
  *(v4 + 200) = a3;
  *(v4 + 184) = a1;
  v5 = sub_22BDB8894();
  *(v4 + 208) = v5;
  *(v4 + 216) = *(v5 - 8);
  *(v4 + 224) = swift_task_alloc();
  sub_22BDB9C14();
  *(v4 + 232) = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  *(v4 + 240) = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0);
  *(v4 + 248) = swift_task_alloc();
  v6 = sub_22BDB57A4();
  *(v4 + 256) = v6;
  *(v4 + 264) = *(v6 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  v7 = sub_22BDB77D4();
  *(v4 + 288) = v7;
  *(v4 + 296) = *(v7 - 8);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDAEDDC, 0, 0);
}

void sub_22BDAFD4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22BDB4234();
  }

  v2 = sub_22BB31F54();
  v5 = v3;
  v4(v2);
}

id sub_22BDAFDDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BDA2DBC();
  *a1 = result;
  return result;
}

uint64_t sub_22BDAFEE0()
{
  swift_beginAccess();
  v0 = qword_28142F348;
  v1 = qword_28142F348;
  return v0;
}

void sub_22BDAFF2C(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F348;
  qword_28142F348 = a1;
}

uint64_t sub_22BDB001C(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F350 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BDB00E0()
{
  sub_22BB2F35C();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB33F54(v4);

  return sub_22BDAEB9C(v6, v7, v1, v2);
}

unint64_t sub_22BDB017C()
{
  result = qword_27D8E6E00;
  if (!qword_27D8E6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6E00);
  }

  return result;
}

uint64_t sub_22BDB0204()
{
  sub_22BB3B158();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  sub_22BB33F54(v4);
  sub_22BB58914();

  return sub_22BDADD48(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22BDB02F0()
{
  sub_22BB30F5C();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v7 = sub_22BB33F54(v5);

  return sub_22BDACB8C(v7, v8, v1, v3, v2);
}

uint64_t sub_22BDB047C()
{

  sub_22BDB1E34();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BDB04C0()
{
  sub_22BB3B158();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  sub_22BB33F54(v4);
  sub_22BB58914();

  return sub_22BDABEE4(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22BDB0578()
{
  sub_22BB2F35C();
  sub_22BBC05CC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB33F54(v2);

  return sub_22BDAAC70(v4, v5, v0);
}

uint64_t sub_22BDB063C()
{
  sub_22BB30F5C();
  sub_22BB3B158();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  sub_22BB33F54(v3);
  sub_22BB58914();

  return sub_22BDAA0D0(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_22BDB06DC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BDB0724()
{
  sub_22BB30F5C();
  sub_22BB3B158();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  sub_22BB33F54(v3);
  sub_22BB58914();

  return sub_22BDA94F4(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_22BDB07C4()
{
  sub_22BB3B158();
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  v1[1] = sub_22BDB1D6C;
  sub_22BB58914();
  sub_22BB33430();

  return sub_22BDA8164(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22BDB08A8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB16B4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22BDB0914(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22BDB0914(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22BDBB674();
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
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22BDB0AD0(v7, v8, a1, v4);
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
    return sub_22BDB0A08(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BDB0A08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_22BDBB6D4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BDB0AD0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_22BDBB6D4();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_22BDBB6D4()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_22BDBB6D4() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD8F3C8();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_22BD8F3C8();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_22BDB1104((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_22BDB0FD8(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_22BDB0FD8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22BDB12A8(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_22BDB1104((*a3 + 16 * *v12), (*a3 + 16 * *v14), (*a3 + 16 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22BDB1104(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22BD27424(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_22BDBB6D4() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_22BD27424(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_22BDBB6D4() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_22BDB12C0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_22BDB12EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E6A98, &unk_22BDD02C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_22BDB13EC()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BB35760();
  v8(v7);
  sub_22BB30444();
  v42 = v9;
  v43 = v10;
  MEMORY[0x28223BE20](v9);
  sub_22BB30560();
  v41 = v11;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v12);
  v40 = &v33 - v13;
  v15 = v2 + 64;
  v14 = *(v2 + 64);
  v39 = -1 << *(v2 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!v6)
  {
    v20 = 0;
LABEL_22:
    v32 = ~v39;
    *v0 = v2;
    v0[1] = v15;
    v0[2] = v32;
    v0[3] = v20;
    v0[4] = v17;
    sub_22BB314EC();
    return;
  }

  v18 = v4;
  if (!v4)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v34 = v0;
    v35 = v2 + 64;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = v18;
    while (v19 < v18)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            v0 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v2;
      v25 = *(v2 + 56);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v29 = *(v26 + 32);
      v30 = v40;
      v31 = sub_22BB3A84C();
      v29(v31);
      (v29)(v6, v30, v27);
      v18 = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        v0 = v34;
        v15 = v35;
        v2 = v24;
        goto LABEL_22;
      }

      v6 += v28;
      v20 = v22;
      v2 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22BDB16FC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {

    return sub_22BB31F54();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BDB1774(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BDB17C4()
{
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  v1[1] = sub_22BDB1D6C;
  sub_22BB58914();
  sub_22BB33430();

  return sub_22BDA7308(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22BDB18A4()
{
  sub_22BB2F35C();
  sub_22BBC05CC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB33F54(v2);

  return sub_22BDA6808(v4, v5, v0);
}

uint64_t sub_22BDB1934()
{
  sub_22BB2F35C();
  sub_22BBC05CC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB33F54(v2);

  return sub_22BDA5AD8(v4, v5, v0);
}

uint64_t sub_22BDB19C4()
{
  sub_22BB2F35C();
  sub_22BBC05CC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB33F54(v2);

  return sub_22BDA2FB8(v4, v5, v0);
}

uint64_t sub_22BDB1A54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22BDB1A9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22BB352C4(result, a2);
  }

  return result;
}

uint64_t sub_22BDB1AD0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_22BDBB2E4();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BDB1B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3F08, &unk_22BDD0430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BDB1BF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BDB1C50()
{
  v1 = sub_22BB35760();
  v2(v1);
  sub_22BB2F330();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22BDB1CA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BDB1D00(uint64_t a1)
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

uint64_t sub_22BDB1D1C(uint64_t result, unsigned int a2)
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

uint64_t sub_22BDB1D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 4) = a1;
  *(v9 + 12) = 2080;

  return sub_22BDB5774();
}

uint64_t sub_22BDB1DCC(uint64_t a1)
{

  return _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
}

uint64_t sub_22BDB1DE4(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_22BDB1E7C(uint64_t a1)
{

  return sub_22BDBABC4();
}

unint64_t sub_22BDB1EA0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  *v21 = a1;

  return sub_22BB32EE0(v19, v20, va);
}

uint64_t sub_22BDB1EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_22BDB1EE8()
{

  return swift_arrayDestroy();
}

void sub_22BDB1F04()
{

  JUMPOUT(0x2318A4C40);
}

unint64_t sub_22BDB1FA4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  *v19 = a1;

  return sub_22BB32EE0(v18, v20, va);
}

void *sub_22BDB1FC4()
{

  return memcpy(v1, (v0 + 96), 0x50uLL);
}

uint64_t sub_22BDB1FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_22BDBB424();
}

uint64_t sub_22BDB2004()
{
}

uint64_t sub_22BDB201C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_22BB58728(a17 + 96, a2, a3);
}

uint64_t sub_22BDB2090(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_clientProxy;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_22BDB212C()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v6 = sub_22BDB65E4();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  sub_22BDB77D4();
  sub_22BB30444();
  v47 = v14;
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v17 = v16 - v15;
  *&v0[OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_clientProxy] = 0;
  v18 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_jsonEncoder;
  sub_22BDB4164();
  swift_allocObject();
  *&v0[v18] = sub_22BDB4154();
  v19 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_jsonDecoder;
  sub_22BDB4134();
  swift_allocObject();
  *&v0[v19] = sub_22BDB4124();
  v20 = sub_22BDBABE4();
  v49 = v3;
  v21 = [v3 valueForEntitlement_];

  if (v21)
  {
    sub_22BDBB274();
    v22 = swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  if (*(&v55 + 1))
  {
    if (sub_22BB3A378(v22, v23, v24, MEMORY[0x277D837D0]))
    {
      v25 = v5;
      v26 = v52;
      v27 = v53;
      v28 = sub_22BDBABE4();
      v29 = [v49 valueForEntitlement_];

      if (v29)
      {
        sub_22BDBB274();
        v30 = swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      v56 = v54;
      v57 = v55;
      if (*(&v55 + 1))
      {
        if (sub_22BB3A378(v30, v31, v32, MEMORY[0x277D839B0]))
        {
          v44 = v52;
          v1[OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_allGroupQueryingAllowed] = v52;
          if (v44)
          {

            v26 = 0;
            v27 = 0;
          }

          goto LABEL_26;
        }
      }

      else
      {
        sub_22BB58728(&v56, &qword_27D8E6D10, &unk_22BDBD9A0);
      }

      v1[OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_allGroupQueryingAllowed] = 0;
LABEL_26:
      type metadata accessor for TranscriptEntityQueryingService();
      swift_allocObject();
      *&v1[OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_transcriptQueryingService] = sub_22BD8B9D4(v26, v27);
      v51.receiver = v1;
      v51.super_class = ObjectType;
      objc_msgSendSuper2(&v51, sel_init);

      (*(v8 + 8))(v25, v6);
      goto LABEL_27;
    }
  }

  else
  {
    sub_22BB58728(&v56, &qword_27D8E6D10, &unk_22BDBD9A0);
  }

  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  (*(v8 + 16))(v12, v5, v6);
  v33 = sub_22BDB77C4();
  v34 = sub_22BDBB114();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v46 = v17;
    v36 = swift_slowAlloc();
    *&v56 = v36;
    *v35 = 136315138;
    v37 = sub_22BDB65D4();
    if (v38)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0x6E776F6E6B6E75;
    }

    v45 = v5;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0xE700000000000000;
    }

    v41 = *(v8 + 8);
    v41(v12, v6);
    v42 = sub_22BB32EE0(v39, v40, &v56);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_22BB2C000, v33, v34, "SessionXPCServiceServer: client %s is missing group-identifier entitlement.", v35, 0xCu);
    sub_22BB32FA4(v36);
    MEMORY[0x2318A6080](v36, -1, -1);
    MEMORY[0x2318A6080](v35, -1, -1);

    v41(v45, v6);
    (*(v47 + 8))(v46, v48);
  }

  else
  {

    v43 = *(v8 + 8);
    v43(v5, v6);
    v43(v12, v6);
    (*(v47 + 8))(v17, v48);
  }

  swift_deallocPartialClassInstance();
LABEL_27:
  sub_22BB314EC();
}

void sub_22BDB26A4()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BB35894();
  sub_22BB363E8(v8);
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v5;
  v9[4] = v3;
  v10 = v0;
  sub_22BB352C4(v5, v3);
  sub_22BDB43E4();
  sub_22BDBAFB4();

  sub_22BB58728(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDB27AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB5EA4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDB2870, 0, 0);
}

uint64_t sub_22BDB29A8()
{
  sub_22BB2F35C();
  v1 = v0[9];
  sub_22BD8BA68(v0[8], v0[2]);
  v0[11] = v1;
  if (v1)
  {
    v2 = sub_22BDB2AAC;
  }

  else
  {
    v2 = sub_22BDB2A34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22BDB2BF8()
{
  sub_22BB30F94();
  sub_22BB54390();
  sub_22BB30444();
  MEMORY[0x28223BE20](v2);
  sub_22BB369C8();
  v3 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BB35894();
  sub_22BB363E8(v5);
  v6 = swift_allocObject();
  v7 = sub_22BB3448C(v6);
  v8(v7);
  v9 = swift_allocObject();
  v10 = sub_22BB38F90(v9);
  v11(v10);

  v12 = v0;
  sub_22BDBAFB4();

  sub_22BB58728(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDB2D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22BDB2DB0, 0, 0);
}

uint64_t sub_22BDB2DB0(uint64_t a1)
{
  v2 = v1[4];
  v1[6] = *(v2 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_jsonEncoder);
  v3 = *(v2 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_transcriptQueryingService);
  v1[7] = v3;
  return sub_22BB367D8(a1, v3);
}

uint64_t sub_22BDB2DE4()
{
  sub_22BB2F35C();
  v0[8] = sub_22BD8BDF0(v0[5]);
  v0[9] = 0;

  return MEMORY[0x2822009F8](sub_22BDB2E94, 0, 0);
}

uint64_t sub_22BDB2E94()
{
  v0[2] = v0[8];
  v1 = v0[9];
  sub_22BBE6DE0(&unk_27D8E6EB0, &qword_22BDD1358);
  sub_22BDB3F78();
  v3 = sub_22BDB4144();
  if (v1)
  {
  }

  else
  {
    v5 = v2;
    v6 = v0[3];

    *v6 = v3;
    v6[1] = v5;
  }

  sub_22BB2F09C();

  return v4();
}

void sub_22BDB2F9C()
{
  sub_22BB30F94();
  sub_22BB54390();
  sub_22BB30444();
  MEMORY[0x28223BE20](v2);
  sub_22BB369C8();
  v3 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BB35894();
  sub_22BB363E8(v5);
  v6 = swift_allocObject();
  v7 = sub_22BB3448C(v6);
  v8(v7);
  v9 = swift_allocObject();
  v10 = sub_22BB38F90(v9);
  v11(v10);
  sub_22BB33F68();

  v12 = v0;
  sub_22BDBAFB4();

  sub_22BB58728(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDB3138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22BDB315C, 0, 0);
}

uint64_t sub_22BDB315C(uint64_t a1)
{
  v2 = *(*(v1 + 48) + OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_transcriptQueryingService);
  *(v1 + 64) = v2;
  return sub_22BB367D8(a1, v2);
}

uint64_t sub_22BDB3180()
{
  sub_22BB2F0D4();
  swift_beginAccess();
  sub_22BDB3C7C();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22BDB3214, 0, 0);
}

uint64_t sub_22BDB3214()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 40);
  sub_22BB33F68();
  *v1 = sub_22BDBB214();
  sub_22BB2F09C();

  return v2();
}

void sub_22BDB32B8()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BDB43E4();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = _Block_copy(v5);
  sub_22BDB43C4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = v7;
  v1(v14, v3, v16);

  (*(v10 + 8))(v14, v8);
  sub_22BB314EC();
}

uint64_t sub_22BDB34FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BDB2048();
  *a1 = result;
  return result;
}

uint64_t sub_22BDB3648()
{
  swift_beginAccess();
  v0 = qword_28142F288;
  v1 = qword_28142F288;
  return v0;
}

void sub_22BDB3694(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F288;
  qword_28142F288 = a1;
}

uint64_t sub_22BDB3784(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F290 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BDB382C()
{
  sub_22BB2F35C();
  v0 = sub_22BDB43E4();
  sub_22BB2F0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BDB40D0;
  v4 = sub_22BB2F6E8();

  return sub_22BDB3138(v4, v5, v6);
}

uint64_t sub_22BDB38F8()
{
  sub_22BB31378();
  sub_22BD844E0(v4);
  if (v5)
  {
    sub_22BB6BC64();
    sub_22BB325D8();
    v6 = sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
    sub_22BB2F694(v6);
    sub_22BB37974();
    sub_22BDB5AB4();
    sub_22BB2F330();
    sub_22BB34504(v3 + *(v7 + 72) * v2, MEMORY[0x277D1D080]);
    v8 = *(v1 + 56);
    v9 = type metadata accessor for SnippetStreamingRouter.Entry(0);
    sub_22BB2F330();
    sub_22BB52B00(v8 + *(v10 + 72) * v2, v0, type metadata accessor for SnippetStreamingRouter.Entry);
    v11 = sub_22BB754D8(&qword_28142DC58, 255, MEMORY[0x277D1D080], MEMORY[0x277D1D088]);
    sub_22BB30EB4(v11);
    v12 = sub_22BB32DF0();
    v15 = v9;
  }

  else
  {
    type metadata accessor for SnippetStreamingRouter.Entry(0);
    v12 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v12, v13, v14, v15);
}

uint64_t sub_22BDB3A3C()
{
  sub_22BB31378();
  sub_22BD8446C(v2, v3);
  if (v4)
  {
    sub_22BB6BC64();
    sub_22BB325D8();
    v5 = sub_22BBE6DE0(&qword_27D8E6900, &unk_22BDCFC30);
    sub_22BB2F694(v5);

    v6 = *(v14 + 56);
    v7 = sub_22BDB9504();
    sub_22BB2F330();
    (*(v8 + 32))(v0, v6 + *(v8 + 72) * v1, v7);
    sub_22BDBB4C4();
    v9 = sub_22BB32DF0();
    v12 = v7;
  }

  else
  {
    sub_22BDB9504();
    v9 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v9, v10, v11, v12);
}

uint64_t sub_22BDB3B38()
{
  sub_22BB31378();
  sub_22BD84660();
  if (v4)
  {
    sub_22BB6BC64();
    sub_22BB325D8();
    v5 = sub_22BBE6DE0(&qword_27D8E68F0, &unk_22BDCFC10);
    sub_22BB2F694(v5);
    sub_22BB37974();
    v6 = sub_22BDB43E4();
    sub_22BB2F330();
    (*(v7 + 8))(v3 + *(v7 + 72) * v2, v6);
    v8 = *(v1 + 56);
    v9 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
    sub_22BB2F330();
    sub_22BB52B00(v8 + *(v10 + 72) * v2, v0, type metadata accessor for SessionCoordinatorInjectionRequest);
    v11 = sub_22BB754D8(&qword_28142DD50, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_22BB30EB4(v11);
    v12 = sub_22BB32DF0();
    v15 = v9;
  }

  else
  {
    type metadata accessor for SessionCoordinatorInjectionRequest(0);
    v12 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v12, v13, v14, v15);
}

uint64_t sub_22BDB3C7C()
{
  v1 = v0;
  sub_22BD84660();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  sub_22BBE6DE0(&qword_27D8E68F8, &unk_22BDCFC20);
  sub_22BDBB4A4();
  v5 = *(v9 + 48);
  v6 = sub_22BDB43E4();
  (*(*(v6 - 8) + 8))(v5 + *(*(v6 - 8) + 72) * v4, v6);
  v7 = *(*(v9 + 56) + 8 * v4);
  type metadata accessor for TranscriptEntityQueryingService.ActiveQueryState(0);
  sub_22BB754D8(&qword_28142DD50, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22BDBB4C4();
  *v1 = v9;
  return v7;
}

uint64_t sub_22BDB3DC0()
{
  sub_22BB2F35C();
  v0 = sub_22BDB43E4();
  sub_22BB2F0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BDB3E8C;
  v4 = sub_22BB2F6E8();

  return sub_22BDB2D8C(v4, v5, v6);
}

unint64_t sub_22BDB3F78()
{
  result = qword_281428898;
  if (!qword_281428898)
  {
    sub_22BBEB2E0(&unk_27D8E6EB0, &qword_22BDD1358);
    sub_22BB754D8(&unk_28142DC98, 255, MEMORY[0x277D1CF00], MEMORY[0x277D1CF08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428898);
  }

  return result;
}

uint64_t sub_22BDB4030()
{
  sub_22BB2F35C();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v4[1] = sub_22BDB40D0;
  v6 = sub_22BB2F6E8();

  return sub_22BDB27AC(v6, v7, v1, v2);
}