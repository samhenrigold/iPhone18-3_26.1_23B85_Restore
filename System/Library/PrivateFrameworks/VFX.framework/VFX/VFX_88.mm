uint64_t sub_1AF7D87E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AF7D8870(0, a2, a3, a4, type metadata accessor for Query1);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AF7D8870(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1AF7D88C4(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

void sub_1AF7D8944(uint64_t a1)
{
  if (!qword_1EB63D268)
  {
    type metadata accessor for GraphScriptingConfig.ScriptInfo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63D268);
    }
  }
}

uint64_t sub_1AF7D89B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v27 = a1;
    v28 = sub_1AFDFE108();
    v29 = v27;
    v1 = v28;
    a1 = v29;
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v34 = MEMORY[0x1E69E7CC0];
    v3 = a1;
    sub_1AFC076C8(0, v1 & ~(v1 >> 63), 0);
    v4 = v3;
    v2 = v34;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v32 = v1;
      do
      {
        v6 = MEMORY[0x1B2719C70](v5, v4);
        v7 = v6[6];
        v30 = v6[5];
        v8 = v6[7];
        v9 = v6[8];
        v10 = v6[9];
        v11 = v6[10];
        v12 = v6[11];

        sub_1AF687F90(v8, v9, v10, v11, v12);
        swift_unknownObjectRelease();
        v14 = *(v34 + 16);
        v13 = *(v34 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1AFC076C8(v13 > 1, v14 + 1, 1);
        }

        ++v5;
        *(v34 + 16) = v14 + 1;
        v15 = (v34 + 56 * v14);
        v15[4] = v30;
        v15[5] = v7;
        v15[6] = v8;
        v15[7] = v9;
        v15[8] = v10;
        v15[9] = v11;
        v15[10] = v12;
        v4 = v3;
      }

      while (v32 != v5);
    }

    else
    {
      v16 = v3 + 32;
      do
      {
        v17 = *(*v16 + 48);
        v31 = *(*v16 + 40);
        v33 = v1;
        v18 = *(*v16 + 56);
        v19 = *(*v16 + 64);
        v20 = *(*v16 + 72);
        v21 = *(*v16 + 80);
        v22 = *(*v16 + 88);

        sub_1AF687F90(v18, v19, v20, v21, v22);
        v24 = *(v34 + 16);
        v23 = *(v34 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1AFC076C8(v23 > 1, v24 + 1, 1);
        }

        *(v34 + 16) = v24 + 1;
        v25 = (v34 + 56 * v24);
        v25[4] = v31;
        v25[5] = v17;
        v25[6] = v18;
        v25[7] = v19;
        v25[8] = v20;
        v25[9] = v21;
        v25[10] = v22;
        v16 += 8;
        v1 = v33 - 1;
      }

      while (v33 != 1);
    }
  }

  return v2;
}

void sub_1AF7D8BC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF7D8C3C(uint64_t a1)
{
  if (!qword_1EB634060)
  {
    type metadata accessor for GraphScriptingConfig.ScriptInfo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB634060);
    }
  }
}

unint64_t destroy for GraphScriptingConfig.ScriptArg(void *a1)
{

  result = a1[3];
  if (result >= 0x3B)
  {
  }

  return result;
}

void *initializeWithCopy for GraphScriptingConfig.ScriptArg(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];

  if (v5 >= 0x3B)
  {
    a1[2] = a2[2];
    a1[3] = v5;
    v7 = a2[5];
    a1[4] = a2[4];
    a1[5] = v7;
    a1[6] = a2[6];
  }

  else
  {
    v6 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v6;
    a1[6] = a2[6];
  }

  return a1;
}

void *assignWithCopy for GraphScriptingConfig.ScriptArg(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[3];
  if (a1[3] >= 0x3BuLL)
  {
    if (v4 >= 0x3B)
    {
      a1[2] = a2[2];
      a1[3] = a2[3];

      a1[4] = a2[4];
      a1[5] = a2[5];

      a1[6] = a2[6];
    }

    else
    {
      sub_1AF7D8EC4((a1 + 2));
      v7 = a2[6];
      v8 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v8;
      a1[6] = v7;
    }
  }

  else if (v4 >= 0x3B)
  {
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
    a1[5] = a2[5];
    a1[6] = a2[6];
  }

  else
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    a1[6] = a2[6];
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
  }

  return a1;
}

void *assignWithTake for GraphScriptingConfig.ScriptArg(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  if (a1[3] >= 0x3BuLL)
  {
    v5 = a2[3];
    if (v5 >= 0x3B)
    {
      a1[2] = a2[2];
      a1[3] = v5;

      v7 = a2[5];
      a1[4] = a2[4];
      a1[5] = v7;

      a1[6] = a2[6];

      return a1;
    }

    sub_1AF7D8EC4((a1 + 2));
  }

  v6 = *(a2 + 2);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = v6;
  a1[6] = a2[6];
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphEntityComponentPropertyReferences.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphEntityComponentPropertyReferences.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleSortMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleSortMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_1AF7D9290(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    v8 = a2[3];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v8;
    *(a1 + 32) = a2[4];
    *(a1 + 40) = *(a2 + 20);
    v17 = a3[10];
    v9 = sub_1AFDFC318();
    v10 = *(v9 - 8);
    v18 = *(v10 + 48);

    if (v18(a2 + v17, 1, v9))
    {
      sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      memcpy(&v4[v17], a2 + v17, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v17], a2 + v17, v9);
      (*(v10 + 56))(&v4[v17], 0, 1, v9);
    }

    v13 = a3[12];
    *&v4[a3[11]] = *(a2 + a3[11]);
    v14 = &v4[v13];
    v15 = a2 + v13;
    *v14 = *v15;
    v14[8] = v15[8];
  }

  return v4;
}

uint64_t sub_1AF7D9488(char *a1, uint64_t a2)
{

  v4 = *(a2 + 40);
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&a1[v4], 1, v5))
  {
    (*(v6 + 8))(&a1[v4], v5);
  }
}

uint64_t sub_1AF7D9568(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = a3[10];
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  v15 = *(v9 + 48);

  if (v15(a2 + v7, 1, v8))
  {
    sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v11 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v12 = a1 + v11;
  v13 = a2 + v11;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);

  return a1;
}

uint64_t sub_1AF7D9714(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v6 = a3[10];
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  *(a1 + a3[11]) = *(a2 + a3[11]);

  v13 = a3[12];
  v14 = a1 + v13;
  v15 = (a2 + v13);
  v16 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *v14 = v16;
  return a1;
}

uint64_t sub_1AF7D9950(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = a3[10];
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v11 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v12 = a1 + v11;
  v13 = a2 + v11;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  return a1;
}

uint64_t sub_1AF7D9AAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v7 = a3[10];
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  *(a1 + a3[11]) = *(a2 + a3[11]);

  v14 = a3[12];
  v15 = a1 + v14;
  v16 = a2 + v14;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  return a1;
}

void sub_1AF7D9CE0(uint64_t a1)
{
  sub_1AF7D4B8C(319, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeWithCopy for GraphScriptingConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);

  return a1;
}

uint64_t assignWithCopy for GraphScriptingConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  return a1;
}

__n128 initializeWithTake for GraphScriptingConfig(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for GraphScriptingConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphScriptingConfig(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t storeEnumTagSinglePayload for GraphScriptingConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for EntityComponentPropertyLite(uint64_t a1)
{
}

uint64_t initializeWithCopy for EntityComponentPropertyLite(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  return a1;
}

uint64_t assignWithCopy for EntityComponentPropertyLite(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for EntityComponentPropertyLite(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void *sub_1AF7DA144(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithCopy for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_1AF7DA24C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  (a3)(*(a1 + 8), a2);
}

uint64_t destroy for GraphScriptGroup.Reference(uint64_t a1)
{
}

uint64_t initializeWithCopy for GraphScriptGroup.Reference(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);

  return a1;
}

uint64_t assignWithCopy for GraphScriptGroup.Reference(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t assignWithTake for GraphScriptGroup.Reference(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphScriptGroup.Reference(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphScriptGroup.Reference(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for GraphDebuggingComponent.DebugValuesKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = v7;

  return a1;
}

uint64_t assignWithCopy for GraphDebuggingComponent.DebugValuesKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v4 = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = v4;
  return a1;
}

__n128 initializeWithTake for GraphDebuggingComponent.DebugValuesKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for GraphDebuggingComponent.DebugValuesKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphDebuggingComponent.DebugValuesKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
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

uint64_t storeEnumTagSinglePayload for GraphDebuggingComponent.DebugValuesKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF7DA744()
{
  result = qword_1EB63EC18;
  if (!qword_1EB63EC18)
  {
    result = swift_getWitnessTable(a5_17, &type metadata for GraphDebuggingComponent.DebugValuesKey, v0, v1);
    atomic_store(result, &qword_1EB63EC18);
  }

  return result;
}

unint64_t sub_1AF7DA79C()
{
  result = qword_1EB63EC20;
  if (!qword_1EB63EC20)
  {
    sub_1AF7DB7D4(255, &qword_1EB63EC28, &type metadata for GraphScriptingConfig.Mode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB63EC20);
  }

  return result;
}

unint64_t sub_1AF7DA81C()
{
  result = qword_1EB63EC30;
  if (!qword_1EB63EC30)
  {
    result = swift_getWitnessTable(aM_33, &type metadata for GraphScriptingConfig.Mode, v0, v1);
    atomic_store(result, &qword_1EB63EC30);
  }

  return result;
}

unint64_t sub_1AF7DA874()
{
  result = qword_1EB63EC38;
  if (!qword_1EB63EC38)
  {
    result = swift_getWitnessTable(byte_1AFE77C8C, &type metadata for GraphEntityComponentPropertyReferences.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63EC38);
  }

  return result;
}

unint64_t sub_1AF7DA8CC()
{
  result = qword_1EB633D28;
  if (!qword_1EB633D28)
  {
    result = swift_getWitnessTable(asc_1AFE77BC4, &type metadata for GraphEntityComponentPropertyReferences.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633D28);
  }

  return result;
}

unint64_t sub_1AF7DA924()
{
  result = qword_1EB633D30;
  if (!qword_1EB633D30)
  {
    result = swift_getWitnessTable(aE_38, &type metadata for GraphEntityComponentPropertyReferences.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633D30);
  }

  return result;
}

unint64_t sub_1AF7DA97C()
{
  result = qword_1EB634070;
  if (!qword_1EB634070)
  {
    result = swift_getWitnessTable(byte_1AFE77964, &type metadata for GraphScriptingConfig.EvaluationMode, v0, v1);
    atomic_store(result, &qword_1EB634070);
  }

  return result;
}

unint64_t sub_1AF7DA9D0()
{
  result = qword_1EB63EC48;
  if (!qword_1EB63EC48)
  {
    result = swift_getWitnessTable(asc_1AFE7867C, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63EC48);
  }

  return result;
}

unint64_t sub_1AF7DAA24()
{
  result = qword_1EB633D60;
  if (!qword_1EB633D60)
  {
    result = swift_getWitnessTable(byte_1AFE7862C, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633D60);
  }

  return result;
}

unint64_t sub_1AF7DAA78()
{
  result = qword_1EB633C58;
  if (!qword_1EB633C58)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7DB7D4(255, &qword_1EB633C60, &type metadata for EntityComponentProperty, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF47F798();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v4, v5);
    atomic_store(result, &qword_1EB633C58);
  }

  return result;
}

unint64_t sub_1AF7DAB14()
{
  result = qword_1EB63EC58;
  if (!qword_1EB63EC58)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7DB7D4(255, &qword_1EB633C60, &type metadata for EntityComponentProperty, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF47F894();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v4, v5);
    atomic_store(result, &qword_1EB63EC58);
  }

  return result;
}

uint64_t sub_1AF7DABB0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7DB7D4(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF7DAC34()
{
  result = qword_1EB634040;
  if (!qword_1EB634040)
  {
    result = swift_getWitnessTable(byte_1AFE785DC, &type metadata for GraphScriptingConfig.ScriptArg.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB634040);
  }

  return result;
}

unint64_t sub_1AF7DAC88()
{
  result = qword_1EB63EC70;
  if (!qword_1EB63EC70)
  {
    result = swift_getWitnessTable(asc_1AFE7858C, &type metadata for CodeGenerationComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63EC70);
  }

  return result;
}

unint64_t sub_1AF7DACDC()
{
  result = qword_1EB63EC88;
  if (!qword_1EB63EC88)
  {
    result = swift_getWitnessTable(asc_1AFE7853C, &type metadata for CodeGenerationInitialized.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63EC88);
  }

  return result;
}

unint64_t sub_1AF7DAD30(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF7DAD7C()
{
  result = qword_1EB634050;
  if (!qword_1EB634050)
  {
    result = swift_getWitnessTable(byte_1AFE77A64, &type metadata for GraphScriptingConfig.Mode, v0, v1);
    atomic_store(result, &qword_1EB634050);
  }

  return result;
}

unint64_t sub_1AF7DADD0()
{
  result = qword_1EB6340D0;
  if (!qword_1EB6340D0)
  {
    result = swift_getWitnessTable(byte_1AFE784EC, &type metadata for GraphScriptingConfig.ScriptInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6340D0);
  }

  return result;
}

unint64_t sub_1AF7DAE24()
{
  result = qword_1EB633C68;
  if (!qword_1EB633C68)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7DB7D4(255, &unk_1EB633C70, &type metadata for GraphScriptingConfig.ScriptArg, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF7DAEC0();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v4, v5);
    atomic_store(result, &qword_1EB633C68);
  }

  return result;
}

unint64_t sub_1AF7DAEC0()
{
  result = qword_1EB634028;
  if (!qword_1EB634028)
  {
    result = swift_getWitnessTable(byte_1AFE77D04, &type metadata for GraphScriptingConfig.ScriptArg, v0, v1);
    atomic_store(result, &qword_1EB634028);
  }

  return result;
}

void sub_1AF7DAF14(uint64_t a1)
{
  if (!qword_1EB6342D0)
  {
    v2 = _s11MetadataSetCMa();
    v3 = sub_1AF7D5048(&qword_1EB633E60, _s11MetadataSetCMa, byte_1AFE794E4);
    v4 = sub_1AF7D5048(&unk_1EB633E68, _s11MetadataSetCMa, byte_1AFE794BC);
    v7[0] = MEMORY[0x1E69E6158];
    v7[1] = v2;
    v7[2] = MEMORY[0x1E69E6190];
    v7[3] = MEMORY[0x1E69E6160];
    v7[4] = MEMORY[0x1E69E6168];
    v7[5] = v3;
    v7[6] = v4;
    v5 = type metadata accessor for FastDictCoder(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB6342D0);
    }
  }
}

void sub_1AF7DB010(uint64_t a1)
{
  if (!qword_1EB63E988)
  {
    _s11MetadataSetCMa();
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63E988);
    }
  }
}

unint64_t sub_1AF7DB078()
{
  result = qword_1EB63ECA8;
  if (!qword_1EB63ECA8)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7D5120(255, &qword_1EB63ECA0, &unk_1EB633C70, &type metadata for GraphScriptingConfig.ScriptArg, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF7DB11C();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v4, v5);
    atomic_store(result, &qword_1EB63ECA8);
  }

  return result;
}

unint64_t sub_1AF7DB11C()
{
  result = qword_1EB63ECB0;
  if (!qword_1EB63ECB0)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7DB7D4(255, &unk_1EB633C70, &type metadata for GraphScriptingConfig.ScriptArg, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF7DB1B8();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v4, v5);
    atomic_store(result, &qword_1EB63ECB0);
  }

  return result;
}

unint64_t sub_1AF7DB1B8()
{
  result = qword_1EB63ECB8;
  if (!qword_1EB63ECB8)
  {
    result = swift_getWitnessTable(asc_1AFE77CDC, &type metadata for GraphScriptingConfig.ScriptArg, v0, v1);
    atomic_store(result, &qword_1EB63ECB8);
  }

  return result;
}

unint64_t sub_1AF7DB20C()
{
  result = qword_1EB6340E8;
  if (!qword_1EB6340E8)
  {
    result = swift_getWitnessTable(byte_1AFE7849C, &type metadata for GraphScriptingConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6340E8);
  }

  return result;
}

unint64_t sub_1AF7DB260()
{
  result = qword_1EB634048;
  if (!qword_1EB634048)
  {
    result = swift_getWitnessTable(aM_31, &type metadata for GraphScriptingConfig.Mode, v0, v1);
    atomic_store(result, &qword_1EB634048);
  }

  return result;
}

void sub_1AF7DB2B4(uint64_t a1)
{
  if (!qword_1EB634300)
  {
    v4[0] = &type metadata for GraphScriptingConfig.EvaluationMode;
    v4[1] = type metadata accessor for GraphScriptingConfig.ScriptInfo(255);
    v4[2] = sub_1AF7DB3C0();
    v4[3] = sub_1AF7DB414();
    v4[4] = sub_1AF4499B0();
    v4[5] = sub_1AF7D5048(&qword_1EB6340B0, type metadata accessor for GraphScriptingConfig.ScriptInfo, aM_32);
    v4[6] = sub_1AF7D5048(&qword_1EB6340B8, type metadata accessor for GraphScriptingConfig.ScriptInfo, aE_36);
    v2 = type metadata accessor for FastDictCoder(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB634300);
    }
  }
}

unint64_t sub_1AF7DB3C0()
{
  result = qword_1EB634068;
  if (!qword_1EB634068)
  {
    result = swift_getWitnessTable(byte_1AFE779B4, &type metadata for GraphScriptingConfig.EvaluationMode, v0, v1);
    atomic_store(result, &qword_1EB634068);
  }

  return result;
}

unint64_t sub_1AF7DB414()
{
  result = qword_1EB634088;
  if (!qword_1EB634088)
  {
    result = swift_getWitnessTable(byte_1AFE7798C, &type metadata for GraphScriptingConfig.EvaluationMode, v0, v1);
    atomic_store(result, &qword_1EB634088);
  }

  return result;
}

unint64_t sub_1AF7DB468()
{
  result = qword_1EB6342C8;
  if (!qword_1EB6342C8)
  {
    sub_1AF7D5530(255, &qword_1EB6342C0, sub_1AF47F798, sub_1AF47F894, &type metadata for EntityComponentProperty);
    result = swift_getWitnessTable(aM_13, v3, v0, v1);
    atomic_store(result, &qword_1EB6342C8);
  }

  return result;
}

unint64_t sub_1AF7DB4F8()
{
  result = qword_1ED723330[0];
  if (!qword_1ED723330[0])
  {
    result = swift_getWitnessTable(byte_1AFE504A8, &type metadata for Language, v0, v1);
    atomic_store(result, qword_1ED723330);
  }

  return result;
}

void sub_1AF7DB54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for GraphScriptingConfig.ScriptInfo(255);
    v7 = sub_1AF4499B0();
    v8 = a3(a1, &type metadata for GraphScriptingConfig.EvaluationMode, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1AF7DB5C0()
{
  result = qword_1EB63ECC8;
  if (!qword_1EB63ECC8)
  {
    v5[4] = v0;
    v5[5] = v1;
    sub_1AF7DB54C(255, &qword_1EB63ECC0, MEMORY[0x1E69E5E28]);
    v4 = v3;
    v5[0] = sub_1AF7DB3C0();
    v5[1] = sub_1AF7D5048(&qword_1EB6340B0, type metadata accessor for GraphScriptingConfig.ScriptInfo, aM_32);
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v4, v5);
    atomic_store(result, &qword_1EB63ECC8);
  }

  return result;
}

void sub_1AF7DB68C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF7DB6F4()
{
  result = qword_1EB63ECD8;
  if (!qword_1EB63ECD8)
  {
    result = swift_getWitnessTable(aE_37, &type metadata for GraphScriptingConfig.Mode, v0, v1);
    atomic_store(result, &qword_1EB63ECD8);
  }

  return result;
}

unint64_t sub_1AF7DB748()
{
  result = qword_1EB63ECE0;
  if (!qword_1EB63ECE0)
  {
    result = swift_getWitnessTable(aN_2, &type metadata for Language, v0, v1);
    atomic_store(result, &qword_1EB63ECE0);
  }

  return result;
}

uint64_t sub_1AF7DB79C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF52DD74(a1, a2, v3);
  *a3 = result;
  return result;
}

void sub_1AF7DB7D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF7DB8A0()
{
  result = qword_1EB63ECF0;
  if (!qword_1EB63ECF0)
  {
    result = swift_getWitnessTable(byte_1AFE77FAC, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ECF0);
  }

  return result;
}

unint64_t sub_1AF7DB8F8()
{
  result = qword_1EB63ECF8;
  if (!qword_1EB63ECF8)
  {
    result = swift_getWitnessTable(byte_1AFE78064, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ECF8);
  }

  return result;
}

unint64_t sub_1AF7DB950()
{
  result = qword_1EB63ED00;
  if (!qword_1EB63ED00)
  {
    result = swift_getWitnessTable(byte_1AFE78154, &type metadata for GraphScriptingConfig.ScriptArg.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED00);
  }

  return result;
}

unint64_t sub_1AF7DB9A8()
{
  result = qword_1EB63ED08;
  if (!qword_1EB63ED08)
  {
    result = swift_getWitnessTable(byte_1AFE78244, &type metadata for CodeGenerationComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED08);
  }

  return result;
}

unint64_t sub_1AF7DBA00()
{
  result = qword_1EB63ED10;
  if (!qword_1EB63ED10)
  {
    result = swift_getWitnessTable(byte_1AFE78384, &type metadata for GraphScriptingConfig.ScriptInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED10);
  }

  return result;
}

unint64_t sub_1AF7DBA58()
{
  result = qword_1EB63ED18;
  if (!qword_1EB63ED18)
  {
    result = swift_getWitnessTable(byte_1AFE78474, &type metadata for GraphScriptingConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED18);
  }

  return result;
}

unint64_t sub_1AF7DBAB0()
{
  result = qword_1EB6340D8;
  if (!qword_1EB6340D8)
  {
    result = swift_getWitnessTable(aE_39, &type metadata for GraphScriptingConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6340D8);
  }

  return result;
}

unint64_t sub_1AF7DBB08()
{
  result = qword_1EB6340E0;
  if (!qword_1EB6340E0)
  {
    result = swift_getWitnessTable(asc_1AFE783D4, &type metadata for GraphScriptingConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6340E0);
  }

  return result;
}

unint64_t sub_1AF7DBB60()
{
  result = qword_1EB6340C0;
  if (!qword_1EB6340C0)
  {
    result = swift_getWitnessTable(a5_18, &type metadata for GraphScriptingConfig.ScriptInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6340C0);
  }

  return result;
}

unint64_t sub_1AF7DBBB8()
{
  result = qword_1EB6340C8;
  if (!qword_1EB6340C8)
  {
    result = swift_getWitnessTable(aM_34, &type metadata for GraphScriptingConfig.ScriptInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6340C8);
  }

  return result;
}

unint64_t sub_1AF7DBC10()
{
  result = qword_1EB63ED20;
  if (!qword_1EB63ED20)
  {
    result = swift_getWitnessTable(byte_1AFE7826C, &type metadata for CodeGenerationInitialized.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED20);
  }

  return result;
}

unint64_t sub_1AF7DBC68()
{
  result = qword_1EB63ED28;
  if (!qword_1EB63ED28)
  {
    result = swift_getWitnessTable(byte_1AFE78294, &type metadata for CodeGenerationInitialized.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED28);
  }

  return result;
}

unint64_t sub_1AF7DBCC0()
{
  result = qword_1EB63ED30;
  if (!qword_1EB63ED30)
  {
    result = swift_getWitnessTable(aU_36, &type metadata for CodeGenerationComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED30);
  }

  return result;
}

unint64_t sub_1AF7DBD18()
{
  result = qword_1EB63ED38;
  if (!qword_1EB63ED38)
  {
    result = swift_getWitnessTable(byte_1AFE781A4, &type metadata for CodeGenerationComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED38);
  }

  return result;
}

unint64_t sub_1AF7DBD70()
{
  result = qword_1EB634030;
  if (!qword_1EB634030)
  {
    result = swift_getWitnessTable(aE_40, &type metadata for GraphScriptingConfig.ScriptArg.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB634030);
  }

  return result;
}

unint64_t sub_1AF7DBDC8()
{
  result = qword_1EB634038;
  if (!qword_1EB634038)
  {
    result = swift_getWitnessTable(asc_1AFE780B4, &type metadata for GraphScriptingConfig.ScriptArg.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB634038);
  }

  return result;
}

unint64_t sub_1AF7DBE20()
{
  result = qword_1EB633D50;
  if (!qword_1EB633D50)
  {
    result = swift_getWitnessTable(byte_1AFE77FD4, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633D50);
  }

  return result;
}

unint64_t sub_1AF7DBE78()
{
  result = qword_1EB633D58;
  if (!qword_1EB633D58)
  {
    result = swift_getWitnessTable(a5_19, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633D58);
  }

  return result;
}

unint64_t sub_1AF7DBED0()
{
  result = qword_1EB63ED40;
  if (!qword_1EB63ED40)
  {
    result = swift_getWitnessTable(byte_1AFE77F1C, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED40);
  }

  return result;
}

unint64_t sub_1AF7DBF28()
{
  result = qword_1EB63ED48;
  if (!qword_1EB63ED48)
  {
    result = swift_getWitnessTable(byte_1AFE77F44, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63ED48);
  }

  return result;
}

uint64_t sub_1AF7DBFF8(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v7 = 36;
  }

  else
  {
    v7 = 0;
  }

  if (a4)
  {
    v8 = 0xE100000000000000;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  if (a5 == 3)
  {
    v13 = 544499052;
    MEMORY[0x1B2718AE0](v7, v8);

    MEMORY[0x1B2718AE0](a2, a3);
    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v10 = sub_1AF7DCE50(a1, 3);
    MEMORY[0x1B2718AE0](v10);
  }

  else
  {
    v13 = 0x2074736E6F63;
    v11 = sub_1AF7DCE50(a1, a5);
    MEMORY[0x1B2718AE0](v11);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v7, v8);

    MEMORY[0x1B2718AE0](a2, a3);
  }

  return v13;
}

unint64_t sub_1AF7DC134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, unint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 2u)
  {
    if (a9 >= 2u)
    {
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_1AF7FE2EC(v77);
      sub_1AF7FCDD4(v77, 1, v74);
      sub_1AF444FBC(v77);
      v15 = sub_1AF7E5CBC(v74, a8);
      v17 = v16;

      sub_1AF761390(v74);
      if (a4 <= 0)
      {
        v18 = MEMORY[0x1E69E7CC0];
        if (!a4)
        {
          goto LABEL_37;
        }

        *(MEMORY[0x1E69E7CC0] + 32) = v15;
        v19 = v18 + 4;
        v18[5] = v17;
      }

      else
      {
        v18 = sub_1AFDFD488();
        v18[2] = a4;
        v18[4] = v15;
        v19 = v18 + 4;
        v18[5] = v17;
        if (a4 == 1)
        {
LABEL_36:

LABEL_37:
          v51 = a2;

          if (a7)
          {

            v52 = a6;
          }

          else
          {
            v74[0].n128_u64[0] = 123;
            v74[0].n128_u64[1] = 0xE100000000000000;
            v78[0] = v18;
            sub_1AF7E5BA0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            sub_1AF488088();
            v53 = sub_1AFDFCD98();
            v55 = v54;

            MEMORY[0x1B2718AE0](v53, v55);

            MEMORY[0x1B2718AE0](125, 0xE100000000000000);
            a7 = v74[0].n128_u64[1];
            v52 = v74[0].n128_u64[0];
          }

          v74[0].n128_u64[0] = 0;
          v74[0].n128_u64[1] = 0xE000000000000000;
          sub_1AFDFE218();

          v74[0].n128_u64[0] = 0x6461657268742009;
          v74[0].n128_u64[1] = 0xE900000000000020;
          sub_1AF7FE2EC(v78);
          v56 = sub_1AF7DCE50(v78, 2);
          v58 = v57;
          sub_1AF444FBC(v78);
          MEMORY[0x1B2718AE0](v56, v58);

          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v59 = v51;
          MEMORY[0x1B2718AE0](v51, a3);
          MEMORY[0x1B2718AE0](0x205D5B706D65545FLL, 0xEA0000000000203DLL);
          MEMORY[0x1B2718AE0](v52, a7);

          MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
          MEMORY[0x1B2718AE0](v74[0].n128_u64[0], v74[0].n128_u64[1]);

          v74[0].n128_u64[0] = 0;
          v74[0].n128_u64[1] = 0xE000000000000000;
          sub_1AFDFE218();

          v72 = 0x6461657268742009;
          v73 = 0xE900000000000020;
          sub_1AF7FE2EC(v74);
          v60 = sub_1AF7DCE50(v74, 2);
          v62 = v61;
          sub_1AF444FBC(v74);
          MEMORY[0x1B2718AE0](v60, v62);

          MEMORY[0x1B2718AE0](8234, 0xE200000000000000);
          MEMORY[0x1B2718AE0](v59, a3);
          MEMORY[0x1B2718AE0](639647008, 0xE400000000000000);
          MEMORY[0x1B2718AE0](v59, a3);
LABEL_41:
          MEMORY[0x1B2718AE0](0x5D305B706D65545FLL, 0xE90000000000003BLL);
          MEMORY[0x1B2718AE0](v72, v73);

          return v75;
        }
      }

      v49 = a4 - 1;
      v50 = v19 + 3;
      do
      {
        *(v50 - 1) = v15;
        *v50 = v17;

        v50 += 2;
        --v49;
      }

      while (v49);
      goto LABEL_36;
    }

LABEL_9:
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1AF7FE2EC(v77);
    sub_1AF7FCDD4(v77, 1, v74);
    sub_1AF444FBC(v77);
    v70 = a3;
    if (a9 > 2u)
    {
      if (a9 == 3)
      {
        v23 = sub_1AF7DD4B4(v74, a8, 0, 0, 3);
        goto LABEL_15;
      }
    }

    else if (a9 >= 2u)
    {
      v23 = sub_1AF7E5CBC(v74, a8);
      goto LABEL_15;
    }

    v23 = sub_1AF7E0118(v74, a8, 0, 0, a9);
LABEL_15:
    v25 = v23;
    v26 = v24;

    sub_1AF761390(v74);
    if (a4 <= 0)
    {
      v27 = MEMORY[0x1E69E7CC0];
      if (!a4)
      {
        goto LABEL_23;
      }

      *(MEMORY[0x1E69E7CC0] + 32) = v25;
      v28 = v27 + 4;
      v27[5] = v26;
    }

    else
    {
      v27 = sub_1AFDFD488();
      v27[2] = a4;
      v27[4] = v25;
      v28 = v27 + 4;
      v27[5] = v26;
      if (a4 == 1)
      {
LABEL_22:

LABEL_23:
        v31 = a2;

        if (a7)
        {

          v32 = a6;
        }

        else
        {
          v74[0].n128_u64[0] = 123;
          v74[0].n128_u64[1] = 0xE100000000000000;
          v78[0] = v27;
          sub_1AF7E5BA0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_1AF488088();
          v33 = sub_1AFDFCD98();
          v35 = v34;

          MEMORY[0x1B2718AE0](v33, v35);

          MEMORY[0x1B2718AE0](125, 0xE100000000000000);
          a7 = v74[0].n128_u64[1];
          v32 = v74[0].n128_u64[0];
        }

        v74[0].n128_u64[0] = 0;
        v74[0].n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();

        v74[0].n128_u64[0] = 8201;
        v74[0].n128_u64[1] = 0xE200000000000000;
        sub_1AF7FE2EC(v78);
        v36 = sub_1AF7DCE50(v78, a9);
        v38 = v37;
        sub_1AF444FBC(v78);
        MEMORY[0x1B2718AE0](v36, v38);

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        v39 = v31;
        MEMORY[0x1B2718AE0](v31, v70);
        MEMORY[0x1B2718AE0](0x205D5B706D65545FLL, 0xEA0000000000203DLL);
        MEMORY[0x1B2718AE0](v32, a7);

        MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v74[0].n128_u64[0], v74[0].n128_u64[1]);

        v74[0].n128_u64[0] = 0;
        v74[0].n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();

        v72 = 8201;
        v73 = 0xE200000000000000;
        sub_1AF7FE2EC(v74);
        v40 = sub_1AF7DCE50(v74, a9);
        v42 = v41;
        sub_1AF444FBC(v74);
        MEMORY[0x1B2718AE0](v40, v42);

        MEMORY[0x1B2718AE0](8234, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v39, v70);
        MEMORY[0x1B2718AE0](639647008, 0xE400000000000000);
        MEMORY[0x1B2718AE0](v39, v70);
        goto LABEL_41;
      }
    }

    v29 = a4 - 1;
    v30 = v28 + 3;
    do
    {
      *(v30 - 1) = v25;
      *v30 = v26;

      v30 += 2;
      --v29;
    }

    while (v29);
    goto LABEL_22;
  }

  if (a9 != 3)
  {
    goto LABEL_9;
  }

  if (a5)
  {
    v20 = sub_1AF7DBFF8(a1, a2, a3, 0, 3);
    v22 = v21;
  }

  else
  {
    v74[0].n128_u64[0] = 544366966;
    v74[0].n128_u64[1] = 0xE400000000000000;
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](a2, a3);
    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v43 = sub_1AF7DCE50(a1, 3);
    MEMORY[0x1B2718AE0](v43);

    v20 = 544366966;
    v22 = 0xE400000000000000;
  }

  sub_1AF7FE2EC(v78);
  sub_1AF7FCDD4(v78, 1, v74);
  sub_1AF444FBC(v78);
  v44 = sub_1AF7DD4B4(v74, a8, 0, 0, 3);
  v46 = v45;

  sub_1AF761390(v74);
  if (a4 > 0)
  {
    v47 = sub_1AFDFD488();
    v47[2] = a4;
    v47[4] = v44;
    v48 = v47 + 4;
    v47[5] = v46;
    if (a4 == 1)
    {
LABEL_46:

      goto LABEL_47;
    }

LABEL_44:
    v64 = a4 - 1;
    v65 = v48 + 3;
    do
    {
      *(v65 - 1) = v44;
      *v65 = v46;

      v65 += 2;
      --v64;
    }

    while (v64);
    goto LABEL_46;
  }

  v47 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    *(MEMORY[0x1E69E7CC0] + 32) = v44;
    v48 = v47 + 4;
    v47[5] = v46;
    goto LABEL_44;
  }

LABEL_47:

  if (a7)
  {

    v66 = a6;
  }

  else
  {
    v74[0].n128_u64[0] = 91;
    v74[0].n128_u64[1] = 0xE100000000000000;
    v77[0] = v47;
    sub_1AF7E5BA0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF488088();
    v67 = sub_1AFDFCD98();
    v69 = v68;

    MEMORY[0x1B2718AE0](v67, v69);

    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    a7 = v74[0].n128_u64[1];
    v66 = v74[0].n128_u64[0];
  }

  v74[0].n128_u64[0] = 8201;
  v74[0].n128_u64[1] = 0xE200000000000000;
  MEMORY[0x1B2718AE0](v20, v22);

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](v66, a7);

  return v74[0].n128_u64[0];
}

uint64_t sub_1AF7DCB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 3)
  {
    sub_1AFDFE218();

    v16 = 544370534;
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](544106784, 0xE400000000000000);
    MEMORY[0x1B2718AE0](a3, a4);
    MEMORY[0x1B2718AE0](3943982, 0xE300000000000000);
    MEMORY[0x1B2718AE0](a5, a6);
    v13 = 31520;
    v14 = 0xE200000000000000;
  }

  else
  {
    sub_1AFDFE218();

    v16 = 0x20746E6928726F66;
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](61, 0xE100000000000000);
    MEMORY[0x1B2718AE0](a3, a4);
    MEMORY[0x1B2718AE0](8251, 0xE200000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](2112544, 0xE300000000000000);
    MEMORY[0x1B2718AE0](a5, a6);
    MEMORY[0x1B2718AE0](724246587, 0xE400000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    v13 = 8069161;
    v14 = 0xE300000000000000;
  }

  MEMORY[0x1B2718AE0](v13, v14);
  return v16;
}

uint64_t sub_1AF7DCD08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 3)
  {

LABEL_4:

    return a1;
  }

  v5 = sub_1AFDFEE28();

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = a3 == 3;
  if (a3 == 3)
  {
    v7 = 46;
  }

  else
  {
    v7 = 14906;
  }

  if (v6)
  {
    v8 = 0xE100000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  MEMORY[0x1B2718AE0](v7, v8);

  MEMORY[0x1B2718AE0](6516326, 0xE300000000000000);
  return a1;
}

uint64_t sub_1AF7DCE50(void *a1, uint64_t a2)
{
  v2 = a2;
  if (a1[1] >= 0x3BuLL)
  {
    v4 = a1[2];
    v5 = a1[3];
    v6 = a1[4];
    if (*(v6 + 16) && (v7 = sub_1AF41A220(a2), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 16 * v7);

      return v9;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      sub_1AFDFE218();

      v19 = 0xD00000000000001BLL;
      v20 = 0x80000001AFF33DF0;
      MEMORY[0x1B2718AE0](v4, v5);
      MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF33E10);
      v10 = 0xEE00297963616765;
      v11 = 0x4C28207466697753;
      if (v2 != 3)
      {
        v11 = 0x697263536176614ALL;
        v10 = 0xEA00000000007470;
      }

      if (v2 == 2)
      {
        v11 = 0x6C6174654DLL;
        v10 = 0xE500000000000000;
      }

      v12 = 0xE100000000000000;
      v13 = 67;
      if (v2)
      {
        v13 = 0x7070436A624FLL;
        v12 = 0xE600000000000000;
      }

      if (v2 <= 1u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      if (v2 <= 1u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v10;
      }

      MEMORY[0x1B2718AE0](v14, v15);

      v16 = v19;
      v17 = sub_1AFDFDA18();
      if (qword_1ED731058 != -1)
      {
        v18 = v17;
        swift_once();
        v17 = v18;
      }

      v19 = 0;
      sub_1AF0D4F18(v17, &v19, v16, v20);

      return 0;
    }
  }

  else
  {
    if (a2 > 2u)
    {
      if (a2 == 3)
      {
        return sub_1AF7E4930(a1);
      }
    }

    else if (a2 >= 2u)
    {
      return sub_1AF7E4F70(a1);
    }

    return sub_1AF7E54DC(a1);
  }
}

uint64_t sub_1AF7DD0AC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 >= 2u)
    {
      sub_1AF7FE65C();
      v2 = sub_1AFDFD188();
LABEL_4:
      v3 = v2;

      return v3 & 1;
    }

LABEL_12:
    if (sub_1AF7FE65C() != 0x6D6152726F6C6F43 || v9 != 0xE900000000000070)
    {
      v10 = sub_1AFDFEE28();

      if (v10)
      {
        return 1;
      }

      if (sub_1AF7FE65C() != 0x466576727543 || v11 != 0xE600000000000000)
      {
        v12 = sub_1AFDFEE28();

        if (v12)
        {
          return 1;
        }

        sub_1AF7FE65C();
        v13 = sub_1AFDFD188();

        if (v13)
        {
          return 1;
        }

        if (sub_1AF7FE65C() != 0x676E69727453 || v14 != 0xE600000000000000)
        {
          v15 = sub_1AFDFEE28();

          if (v15)
          {
            return 1;
          }

          if (sub_1AF7FE65C() != 5001813 || v16 != 0xE300000000000000)
          {
            v2 = sub_1AFDFEE28();
            goto LABEL_4;
          }
        }
      }
    }

    goto LABEL_14;
  }

  if (a2 != 3)
  {
    goto LABEL_12;
  }

  if (sub_1AF7FE65C() == 0x6D6152726F6C6F43 && v5 == 0xE900000000000070)
  {
LABEL_14:

    return 1;
  }

  v6 = sub_1AFDFEE28();

  if ((v6 & 1) == 0)
  {
    if (sub_1AF7FE65C() != 0x466576727543 || v7 != 0xE600000000000000)
    {
      v8 = sub_1AFDFEE28();

      return v8 & 1;
    }

    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_1AF7DD328(__int128 *a1, uint64_t a2)
{
  if (*(a1 + 1) < 0x3BuLL)
  {
    if (a2 > 2u)
    {
      if (a2 == 3)
      {
        v7 = a1[1];
        v12 = *a1;
        v13 = v7;
        v14 = *(a1 + 4);
        MEMORY[0x1EEE9AC00](a1);
        v11 = &v12;
        v3 = &unk_1F24F5FC0;
        v4 = sub_1AF7EAA4C;
        goto LABEL_10;
      }
    }

    else if (a2 >= 2u)
    {
      v2 = a1[1];
      v12 = *a1;
      v13 = v2;
      v14 = *(a1 + 4);
      MEMORY[0x1EEE9AC00](a1);
      v11 = &v12;
      v3 = &unk_1F24F68C8;
      v4 = sub_1AF7EAA4C;
LABEL_10:
      v6 = sub_1AF7B95C0(v4, &v10, v3);
      return v6 & 1;
    }

    v8 = a1[1];
    v12 = *a1;
    v13 = v8;
    v14 = *(a1 + 4);
    MEMORY[0x1EEE9AC00](a1);
    v11 = &v12;
    v3 = &unk_1F24F70B8;
    v4 = sub_1AF7E5B0C;
    goto LABEL_10;
  }

  if (*(*(a1 + 4) + 16))
  {
    sub_1AF41A220(a2);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1AF7DD4B4(__n128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF44CBE4(&a1[3].n128_i64[1], &v140);
  if (v141.n128_u64[1])
  {
    sub_1AF449D40(&v140, v148);
    v14 = a1[2];
    v149 = a1[1];
    v150 = v14;
    v151 = a1[3].n128_u64[0];
    switch(v149.n128_u64[1])
    {
      case 0uLL:
        v144.n128_u64[0] = 0;
        v144.n128_u64[1] = 0xE000000000000000;
        sub_1AF0D5A54(v148, &v140);
        swift_dynamicCast();
        if (v146)
        {
          v90 = 1702195828;
        }

        else
        {
          v90 = 0x65736C6166;
        }

        if (v146)
        {
          v91 = 0xE400000000000000;
        }

        else
        {
          v91 = 0xE500000000000000;
        }

        MEMORY[0x1B2718AE0](v90, v91);

        goto LABEL_114;
      case 1uLL:
      case 5uLL:
        sub_1AF0D5A54(v148, &v140);
        swift_dynamicCast();
        LOBYTE(v146) = v144.n128_u8[0];
        goto LABEL_70;
      case 2uLL:
      case 6uLL:
        sub_1AF0D5A54(v148, &v140);
        swift_dynamicCast();
        LOWORD(v146) = v144.n128_u16[0];
        goto LABEL_70;
      case 3uLL:
      case 7uLL:
        sub_1AF0D5A54(v148, &v140);
        swift_dynamicCast();
        LODWORD(v146) = v144.n128_u32[0];
        goto LABEL_70;
      case 4uLL:
      case 8uLL:
      case 9uLL:
        sub_1AF0D5A54(v148, &v140);
        swift_dynamicCast();
        v146 = v144.n128_u64[0];
LABEL_70:
        v16 = sub_1AFDFEA08();
        goto LABEL_115;
      case 0xAuLL:
        sub_1AF0D5A54(v148, &v140);
        sub_1AF7E5BF0(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        v57.n128_u64[0] = v144.n128_u64[0];
        v139 = v57;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        v58 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v58);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        v144.n128_u32[0] = v139.n128_u32[0];
        v59 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v59);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u32[0] = v139.n128_u32[1];
        goto LABEL_90;
      case 0xBuLL:
        sub_1AF0D5A54(v148, &v140);
        sub_1AF7E5BF0(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v139 = v144;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        v83 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v83);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        v144.n128_u32[0] = v139.n128_u32[0];
        v84 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v84);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u32[0] = v139.n128_u32[1];
        v85 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v85);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u32[0] = v139.n128_u32[2];
        goto LABEL_90;
      case 0xCuLL:
        sub_1AF0D5A54(v148, &v140);
        sub_1AF7E5BF0(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v139 = v144;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v75 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v75);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        v144.n128_u32[0] = v139.n128_u32[0];
        v76 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v76);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u32[0] = v139.n128_u32[1];
        v77 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v77);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u32[0] = v139.n128_u32[2];
        v78 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v78);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u32[0] = v139.n128_u32[3];
        goto LABEL_90;
      case 0xDuLL:
        sub_1AF0D5A54(v148, &v140);
        if (swift_dynamicCast())
        {
          v140.n128_u64[0] = 0;
          v140.n128_u64[1] = 0xE000000000000000;
          sub_1AFDFD748();
LABEL_93:
          v16 = v140.n128_u64[0];
        }

        else
        {
          v144.n128_u64[0] = 0;
          v144.n128_u64[1] = 0xE000000000000000;
          sub_1AF0D5A54(v148, &v140);
          swift_dynamicCast();
          sub_1AFDFD748();
LABEL_114:
          v16 = v144.n128_u64[0];
        }

        goto LABEL_115;
      case 0xEuLL:
        sub_1AF0D5A54(v148, &v140);
        sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        v92.n128_u64[0] = v144.n128_u64[0];
        v139 = v92;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        v93 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v93);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        goto LABEL_75;
      case 0xFuLL:
        sub_1AF0D5A54(v148, &v140);
        sub_1AF7E5BF0(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v139 = v144;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        v94 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v94);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        goto LABEL_75;
      case 0x10uLL:
        sub_1AF0D5A54(v148, &v140);
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v139 = v144;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v102 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v102);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        v81 = 8236;
        v82 = 0xE200000000000000;
        goto LABEL_74;
      case 0x11uLL:
        sub_1AF0D5A54(v148, &v140);
        type metadata accessor for simd_float2x2(0);
        swift_dynamicCast();
        v98 = v144;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v99 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v99);

        MEMORY[0x1B2718AE0](0x736E6D756C6F6328, 0xEB0000000028203ALL);
        v144.n128_u64[0] = v98.n128_u64[0];
        v100 = MEMORY[0x1E69E7428];
        sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        sub_1AF7E5C58(&qword_1EB63ED98, &unk_1ED72F770, v100, MEMORY[0x1E69E7448]);
        v101 = sub_1AFDFF178();
        MEMORY[0x1B2718AE0](v101);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u64[0] = v98.n128_u64[1];
        goto LABEL_79;
      case 0x12uLL:
        sub_1AF0D5A54(v148, &v140);
        type metadata accessor for simd_float2x3(0);
        swift_dynamicCast();
        v138 = v144;
        v139 = v145;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v36 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v36);

        MEMORY[0x1B2718AE0](0x736E6D756C6F6328, 0xEB0000000028203ALL);
        v144 = v138;
        v37 = &qword_1ED72F740;
        v38 = MEMORY[0x1E69E7450];
        sub_1AF7E5BF0(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v39 = &unk_1EB63ED90;
        v40 = MEMORY[0x1E69E7470];
        goto LABEL_46;
      case 0x13uLL:
        sub_1AF0D5A54(v148, &v140);
        type metadata accessor for simd_float2x4(0);
        swift_dynamicCast();
        v138 = v144;
        v139 = v145;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v79 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v79);

        MEMORY[0x1B2718AE0](0x736E6D756C6F6328, 0xEB0000000028203ALL);
        v144 = v138;
        v37 = &qword_1ED72F6E0;
        v38 = MEMORY[0x1E69E74A8];
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v39 = &unk_1EB63ED88;
        v40 = MEMORY[0x1E69E74C8];
LABEL_46:
        sub_1AF7E5C58(v39, v37, v38, v40);
        v80 = sub_1AFDFF178();
        MEMORY[0x1B2718AE0](v80);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144 = v139;
        goto LABEL_79;
      case 0x14uLL:
        sub_1AF0D5A54(v148, &v140);
        type metadata accessor for simd_float3x2(0);
        swift_dynamicCast();
        v53 = v144.n128_u64[1];
        v103 = v144.n128_u64[0];
        v52 = v145.n128_u64[0];
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v104 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v104);

        MEMORY[0x1B2718AE0](0x736E6D756C6F6328, 0xEB0000000028203ALL);
        v144.n128_u64[0] = v103;
        v105 = MEMORY[0x1E69E7428];
        sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        sub_1AF7E5C58(&qword_1EB63ED98, &unk_1ED72F770, v105, MEMORY[0x1E69E7448]);
        goto LABEL_78;
      case 0x15uLL:
        sub_1AF0D5A54(v148, &v144);
        type metadata accessor for simd_float3x3(0);
        swift_dynamicCast();
        v137 = v140;
        v138 = v141;
        v139 = v142;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v41 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v41);

        MEMORY[0x1B2718AE0](0x736E6D756C6F6328, 0xEB0000000028203ALL);
        v144 = v137;
        v42 = &qword_1ED72F740;
        v43 = MEMORY[0x1E69E7450];
        sub_1AF7E5BF0(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v44 = &unk_1EB63ED90;
        v45 = MEMORY[0x1E69E7470];
        goto LABEL_43;
      case 0x16uLL:
        sub_1AF0D5A54(v148, &v144);
        type metadata accessor for simd_float3x4(0);
        swift_dynamicCast();
        v137 = v140;
        v138 = v141;
        v139 = v142;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v74 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v74);

        MEMORY[0x1B2718AE0](0x736E6D756C6F6328, 0xEB0000000028203ALL);
        v144 = v137;
        v42 = &qword_1ED72F6E0;
        v43 = MEMORY[0x1E69E74A8];
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v44 = &unk_1EB63ED88;
        v45 = MEMORY[0x1E69E74C8];
LABEL_43:
        sub_1AF7E5C58(v44, v42, v43, v45);
        goto LABEL_53;
      case 0x17uLL:
        sub_1AF0D5A54(v148, &v140);
        type metadata accessor for simd_float4x2(0);
        swift_dynamicCast();
        v51 = v144;
        v52 = v145.n128_u64[1];
        v53 = v145.n128_u64[0];
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v54 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v54);

        MEMORY[0x1B2718AE0](0x736E6D756C6F6328, 0xEB0000000028203ALL);
        v144.n128_u64[0] = v51.n128_u64[0];
        v55 = MEMORY[0x1E69E7428];
        sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        sub_1AF7E5C58(&qword_1EB63ED98, &unk_1ED72F770, v55, MEMORY[0x1E69E7448]);
        v56 = sub_1AFDFF178();
        MEMORY[0x1B2718AE0](v56);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u64[0] = v51.n128_u64[1];
LABEL_78:
        v106 = sub_1AFDFF178();
        MEMORY[0x1B2718AE0](v106);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u64[0] = v53;
        v107 = sub_1AFDFF178();
        MEMORY[0x1B2718AE0](v107);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u64[0] = v52;
        goto LABEL_79;
      case 0x18uLL:
        sub_1AF0D5A54(v148, &v144);
        type metadata accessor for simd_float4x3(0);
        swift_dynamicCast();
        v136 = v140;
        v137 = v141;
        v138 = v142;
        v139 = v143;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v86 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v86);

        MEMORY[0x1B2718AE0](0x736E6D756C6F6328, 0xEB0000000028203ALL);
        v144 = v136;
        v47 = &qword_1ED72F740;
        v48 = MEMORY[0x1E69E7450];
        sub_1AF7E5BF0(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v49 = &unk_1EB63ED90;
        v50 = MEMORY[0x1E69E7470];
        goto LABEL_52;
      case 0x19uLL:
        sub_1AF0D5A54(v148, &v144);
        type metadata accessor for simd_float4x4(0);
        swift_dynamicCast();
        v136 = v140;
        v137 = v141;
        v138 = v142;
        v139 = v143;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v46 = sub_1AF7E4930(&v149);
        MEMORY[0x1B2718AE0](v46);

        MEMORY[0x1B2718AE0](0x736E6D756C6F6328, 0xEB0000000028203ALL);
        v144 = v136;
        v47 = &qword_1ED72F6E0;
        v48 = MEMORY[0x1E69E74A8];
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v49 = &unk_1EB63ED88;
        v50 = MEMORY[0x1E69E74C8];
LABEL_52:
        sub_1AF7E5C58(v49, v47, v48, v50);
        v87 = sub_1AFDFF178();
        MEMORY[0x1B2718AE0](v87);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144 = v137;
LABEL_53:
        v88 = sub_1AFDFF178();
        MEMORY[0x1B2718AE0](v88);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144 = v138;
        v89 = sub_1AFDFF178();
        MEMORY[0x1B2718AE0](v89);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144 = v139;
LABEL_79:
        v62 = sub_1AFDFF178();
        goto LABEL_80;
      case 0x1AuLL:
        v144.n128_u64[0] = 0;
        v144.n128_u64[1] = 0xE000000000000000;
        sub_1AF0D5A54(v148, &v140);
        swift_dynamicCast();
        sub_1AFDFD6F8();
        goto LABEL_114;
      case 0x1BuLL:
        sub_1AF0D5A54(v148, &v140);
        swift_dynamicCast();
        v112 = v144.n128_u32[0];
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();

        v140.n128_u64[0] = 0x283855726F6C6F43;
        v140.n128_u64[1] = 0xE800000000000000;
        v144.n128_u8[0] = v112;
        v113 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v113);

        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        v144.n128_u8[0] = BYTE1(v112);
        v114 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v114);

        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        v144.n128_u8[0] = BYTE2(v112);
        v115 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v115);

        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        v144.n128_u8[0] = HIBYTE(v112);
LABEL_90:
        v116 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v116);

        goto LABEL_91;
      case 0x1CuLL:
        sub_1AF0D5A54(v148, &v140);
        swift_dynamicCast();
        v64 = v144.n128_u64[1];
        v63 = v144.n128_u64[0];
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF35290);
        v65 = MEMORY[0x1E69E6448];
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v67 = MEMORY[0x1B2718E40](v63, v66);
        MEMORY[0x1B2718AE0](v67);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v68 = MEMORY[0x1B2718E40](v64, v65);
        MEMORY[0x1B2718AE0](v68);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v69 = *(v64 + 16);

        v144.n128_u64[0] = v69;
        v70 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v70);

        MEMORY[0x1B2718AE0](691085356, 0xE400000000000000);
        v16 = v140.n128_u64[0];
        if (!a4)
        {
          goto LABEL_115;
        }

        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002FLL, 0x80000001AFF352C0);
        v71 = sub_1AF76ED08(a3, a4);
        MEMORY[0x1B2718AE0](v71);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        if (a5 == 3)
        {
          v72 = 0;
        }

        else
        {
          v72 = 59;
        }

        if (a5 == 3)
        {
          v73 = 0xE000000000000000;
        }

        else
        {
          v73 = 0xE100000000000000;
        }

        goto LABEL_105;
      case 0x22uLL:
      case 0x23uLL:
        v144.n128_u64[0] = 34;
        v144.n128_u64[1] = 0xE100000000000000;
        sub_1AF0D5A54(v148, &v140);
        swift_dynamicCast();
        MEMORY[0x1B2718AE0](v146, v147);

        MEMORY[0x1B2718AE0](34, 0xE100000000000000);
        goto LABEL_114;
      case 0x24uLL:
        sub_1AF0D5A54(v148, &v140);
        type metadata accessor for simd_quatf(0);
        swift_dynamicCast();
        v139 = v144;
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x6175715F646D6973, 0xEF203A7869286674);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](0x203A7969202CLL, 0xE600000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](0x203A7A69202CLL, 0xE600000000000000);
        sub_1AFDFD748();
        v81 = 0x203A72202CLL;
        v82 = 0xE500000000000000;
LABEL_74:
        MEMORY[0x1B2718AE0](v81, v82);
LABEL_75:
        sub_1AFDFD748();
LABEL_91:
        v108 = 41;
        v109 = 0xE100000000000000;
        goto LABEL_92;
      case 0x25uLL:
        sub_1AF0D5A54(v148, &v140);
        v117 = MEMORY[0x1E69E6448];
        sub_1AF67C9FC(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
        swift_dynamicCast();
        v118 = v144.n128_u64[1];
        v140.n128_u64[0] = 0xD000000000000027;
        v140.n128_u64[1] = 0x80000001AFF35230;
        v119 = MEMORY[0x1B2718E40](v144.n128_u64[0], v117);
        MEMORY[0x1B2718AE0](v119);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v120 = MEMORY[0x1B2718E40](v118, v117);
        MEMORY[0x1B2718AE0](v120);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v121 = *(v118 + 16);

        v144.n128_u64[0] = v121;
        v122 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v122);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v16 = v140.n128_u64[0];
        if (!a4)
        {
          goto LABEL_115;
        }

        v140.n128_u64[0] = 0xD00000000000002ALL;
        v140.n128_u64[1] = 0x80000001AFF35260;
        v123 = sub_1AF76ED08(a3, a4);
        MEMORY[0x1B2718AE0](v123);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        if (a5 == 3)
        {
          v72 = 0;
        }

        else
        {
          v72 = 59;
        }

        if (a5 == 3)
        {
          v73 = 0xE000000000000000;
        }

        else
        {
          v73 = 0xE100000000000000;
        }

LABEL_105:
        MEMORY[0x1B2718AE0](v72, v73);

        v124 = v140;
        v125 = *(a2 + 168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 168) = v125;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v125 = sub_1AF420554(0, *(v125 + 2) + 1, 1, v125);
          *(a2 + 168) = v125;
        }

        v128 = *(v125 + 2);
        v127 = *(v125 + 3);
        if (v128 >= v127 >> 1)
        {
          *(a2 + 168) = sub_1AF420554(v127 > 1, v128 + 1, 1, v125);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
        v129 = *(a2 + 168);
        *(v129 + 16) = v128 + 1;
        *(v129 + 16 * v128 + 32) = v124;
        *(a2 + 168) = v129;
        return v16;
      case 0x27uLL:
        sub_1AF0D5A54(v148, &v140);
        sub_1AF67C9FC(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
        swift_dynamicCast();
        v60 = v144.n128_u64[1];
        v140.n128_u64[0] = 0xD00000000000001DLL;
        v140.n128_u64[1] = 0x80000001AFF35210;
        v61 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v61);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v144.n128_u64[0] = v60;
        v62 = sub_1AFDFEA08();
LABEL_80:
        MEMORY[0x1B2718AE0](v62);

        goto LABEL_81;
      case 0x28uLL:
        sub_1AF0D5A54(v148, &v140);
        sub_1AF67C9FC(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
        swift_dynamicCast();
        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF351F0);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
LABEL_81:
        v108 = 10537;
        v109 = 0xE200000000000000;
LABEL_92:
        MEMORY[0x1B2718AE0](v108, v109);
        goto LABEL_93;
      case 0x2BuLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1EB63ED80;
        v21 = MEMORY[0x1E69E6370];
        goto LABEL_96;
      case 0x2CuLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &unk_1ED726C20;
        v21 = MEMORY[0x1E69E7508];
        goto LABEL_96;
      case 0x2DuLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1EB6332D0;
        v21 = MEMORY[0x1E69E75F8];
        goto LABEL_96;
      case 0x2EuLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1EB63ED78;
        v21 = MEMORY[0x1E69E7668];
        goto LABEL_96;
      case 0x2FuLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1EB63ED70;
        v21 = MEMORY[0x1E69E76D8];
        goto LABEL_96;
      case 0x30uLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1EB63ED68;
        v21 = MEMORY[0x1E69E7230];
        goto LABEL_96;
      case 0x31uLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1EB63ED60;
        v21 = MEMORY[0x1E69E7290];
        goto LABEL_96;
      case 0x32uLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1EB63ED58;
        v21 = MEMORY[0x1E69E72F0];
        goto LABEL_96;
      case 0x33uLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1EB63ED50;
        v21 = MEMORY[0x1E69E7360];
        goto LABEL_96;
      case 0x34uLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1ED726C50;
        v21 = MEMORY[0x1E69E6530];
        goto LABEL_96;
      case 0x35uLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1ED723210;
        v21 = MEMORY[0x1E69E6448];
        goto LABEL_96;
      case 0x36uLL:
        sub_1AF0D5A54(v148, &v140);
        v95 = &qword_1EB63F3E0;
        v96 = &unk_1ED72F770;
        v97 = MEMORY[0x1E69E7428];
        goto LABEL_111;
      case 0x37uLL:
        sub_1AF0D5A54(v148, &v140);
        v95 = &qword_1EB6383B0;
        v96 = &qword_1ED72F740;
        v97 = MEMORY[0x1E69E7450];
        goto LABEL_111;
      case 0x38uLL:
        sub_1AF0D5A54(v148, &v140);
        v95 = &qword_1ED7231E0;
        v96 = &qword_1ED72F6E0;
        v97 = MEMORY[0x1E69E74A8];
LABEL_111:
        v130 = v97;
        sub_1AF7E5B2C(0, v95, v96, v97);
        swift_dynamicCast();
        v131 = v144.n128_u64[0];
        sub_1AF7E5BF0(0, v96, sub_1AF43A0C8, MEMORY[0x1E69E6448], v130);
        v16 = MEMORY[0x1B2718E40](v131, v132);
        goto LABEL_97;
      case 0x39uLL:
        sub_1AF0D5A54(v148, &v140);
        v20 = &qword_1ED726C70;
        v21 = MEMORY[0x1E69E6158];
LABEL_96:
        sub_1AF7E5BA0(0, v20, v21, MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        v16 = MEMORY[0x1B2718E40](v144.n128_u64[0], v21);
        goto LABEL_97;
      case 0x3AuLL:
        sub_1AF0D5A54(v148, &v140);
        sub_1AF5877E4(0);
        swift_dynamicCast();
        v22 = v144.n128_u64[0];
        v23 = *(v144.n128_u64[0] + 16);
        if (v23)
        {
          v140.n128_u64[0] = MEMORY[0x1E69E7CC0];
          sub_1AFC05CE4(0, v23, 0);
          v24 = v140.n128_u64[0];
          v26 = *(v11 + 16);
          v25 = v11 + 16;
          v139.n128_u64[0] = v26;
          v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
          v136.n128_u64[0] = v22;
          v28 = v22 + v27;
          v138.n128_u64[0] = *(v25 + 56);
          v137.n128_u64[0] = v25 - 8;
          do
          {
            (v139.n128_u64[0])(v13, v28, v10);
            v29 = sub_1AFDFBFF8();
            v31 = v30;
            (*v137.n128_u64[0])(v13, v10);
            v140.n128_u64[0] = v24;
            v33 = *(v24 + 16);
            v32 = *(v24 + 24);
            v34 = v33 + 1;
            if (v33 >= v32 >> 1)
            {
              sub_1AFC05CE4(v32 > 1, v33 + 1, 1);
              v34 = v33 + 1;
              v24 = v140.n128_u64[0];
            }

            *(v24 + 16) = v34;
            v35 = v24 + 16 * v33;
            *(v35 + 32) = v29;
            *(v35 + 40) = v31;
            v28 += v138.n128_u64[0];
            --v23;
          }

          while (v23);
        }

        else
        {

          v24 = MEMORY[0x1E69E7CC0];
        }

        v16 = MEMORY[0x1B2718E40](v24, MEMORY[0x1E69E6158]);
LABEL_97:

LABEL_115:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
        break;
      default:
        if (*(a2 + 64) == 1)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v140.n128_u64[0] = 0;
          v140.n128_u64[1] = 0xE000000000000000;
          sub_1AFDFE218();
          v144 = v140;
          MEMORY[0x1B2718AE0](0xD000000000000049, 0x80000001AFF35160);
          v140 = v149;
          v141 = v150;
          v142.n128_u64[0] = v151;
          sub_1AFDFE458();
          v110 = v144;
          v111 = sub_1AFDFDA18();
          if (qword_1ED731058 != -1)
          {
            v135 = v111;
            swift_once();
            v111 = v135;
          }

          v140.n128_u64[0] = 0;
          sub_1AF0D4F18(v111, &v140, v110.n128_i64[0], v110.n128_i64[1]);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
        v16 = 0x3E524F5252453CLL;
        break;
    }
  }

  else
  {
    sub_1AF44CB60(&v140);
    v15 = a1[1].n128_u64[1];
    if (v15 > 0x3A)
    {
      return 0xD00000000000001FLL;
    }

    else if (((1 << v15) & 0x7FFFFBC5FFFFFFFLL) != 0)
    {
      v16 = 0x3E524F5252453CLL;
      if (*(a2 + 64) == 1)
      {
        v139 = a1[1];
        v138 = a1[2];
        v17 = a1[3].n128_u64[0];
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v140.n128_u64[0] = 0;
        v140.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v149 = v140;
        MEMORY[0x1B2718AE0](0xD000000000000049, 0x80000001AFF35160);
        v141 = v138;
        v140 = v139;
        v142.n128_u64[0] = v17;
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x6F6E206874697720, 0xEE0065756C617620);
        v18 = v149;
        v19 = sub_1AFDFDA18();
        if (qword_1ED731058 != -1)
        {
          v134 = v19;
          swift_once();
          v19 = v134;
        }

        v140.n128_u64[0] = 0;
        sub_1AF0D4F18(v19, &v140, v18.n128_i64[0], v18.n128_i64[1]);
      }
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  return v16;
}

uint64_t sub_1AF7E0118(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_1AF44CBE4(a1 + 56, &v263);
  if (*(&v264 + 1))
  {
    sub_1AF449D40(&v263, v269);
    v10 = *(a1 + 32);
    v270 = *(a1 + 16);
    v271 = v10;
    v272 = *(a1 + 48);
    switch(*(&v270 + 1))
    {
      case 0:
        *&v261 = 0;
        *(&v261 + 1) = 0xE000000000000000;
        sub_1AF0D5A54(v269, &v263);
        swift_dynamicCast();
        if (v268)
        {
          v97 = 1702195828;
        }

        else
        {
          v97 = 0x65736C6166;
        }

        if (v268)
        {
          v98 = 0xE400000000000000;
        }

        else
        {
          v98 = 0xE500000000000000;
        }

        MEMORY[0x1B2718AE0](v97, v98);

        goto LABEL_116;
      case 1:
      case 5:
        sub_1AF0D5A54(v269, &v263);
        swift_dynamicCast();
        LOBYTE(v268) = v261;
        goto LABEL_76;
      case 2:
      case 6:
        sub_1AF0D5A54(v269, &v263);
        swift_dynamicCast();
        LOWORD(v268) = v261;
        goto LABEL_76;
      case 3:
      case 7:
        sub_1AF0D5A54(v269, &v263);
        swift_dynamicCast();
        LODWORD(v268) = v261;
        goto LABEL_76;
      case 4:
      case 8:
      case 9:
        sub_1AF0D5A54(v269, &v263);
        swift_dynamicCast();
        v268 = v261;
LABEL_76:
        v11 = sub_1AFDFEA08();
        goto LABEL_117;
      case 0xALL:
        sub_1AF0D5A54(v269, &v263);
        sub_1AF7E5BF0(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        *&v52 = v261;
        v260 = v52;
        *&v263 = 40;
        *(&v263 + 1) = 0xE100000000000000;
        v53 = sub_1AF7E54DC(&v270);
        MEMORY[0x1B2718AE0](v53);

        MEMORY[0x1B2718AE0](8069161, 0xE300000000000000);
        v54 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v54);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LODWORD(v261) = DWORD1(v260);
        goto LABEL_107;
      case 0xBLL:
        sub_1AF0D5A54(v269, &v263);
        sub_1AF7E5BF0(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v260 = v261;
        *&v263 = 40;
        *(&v263 + 1) = 0xE100000000000000;
        v99 = sub_1AF7E54DC(&v270);
        MEMORY[0x1B2718AE0](v99);

        MEMORY[0x1B2718AE0](8069161, 0xE300000000000000);
        v100 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v100);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v101 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v101);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LODWORD(v261) = DWORD2(v261);
        goto LABEL_107;
      case 0xCLL:
        sub_1AF0D5A54(v269, &v263);
        sub_1AF7E5BF0(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v260 = v261;
        *&v263 = 40;
        *(&v263 + 1) = 0xE100000000000000;
        v89 = sub_1AF7E54DC(&v270);
        MEMORY[0x1B2718AE0](v89);

        MEMORY[0x1B2718AE0](8069161, 0xE300000000000000);
        v90 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v90);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v91 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v91);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v92 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v92);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LODWORD(v261) = HIDWORD(v261);
        goto LABEL_107;
      case 0xDLL:
        sub_1AF0D5A54(v269, &v263);
        if (swift_dynamicCast())
        {
          *&v263 = 0;
          *(&v263 + 1) = 0xE000000000000000;
          sub_1AFDFD748();
          v35 = 102;
LABEL_108:
          v36 = 0xE100000000000000;
LABEL_109:
          MEMORY[0x1B2718AE0](v35, v36);
          v11 = v263;
        }

        else
        {
          *&v261 = 0;
          *(&v261 + 1) = 0xE000000000000000;
          sub_1AF0D5A54(v269, &v263);
          swift_dynamicCast();
          sub_1AFDFD748();
          v247 = 102;
LABEL_115:
          MEMORY[0x1B2718AE0](v247, 0xE100000000000000);
LABEL_116:
          v11 = v261;
        }

LABEL_117:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v269);
        break;
      case 0xELL:
        sub_1AF0D5A54(v269, &v263);
        sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        *&v130 = v261;
        v260 = v130;
        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x656B616D5F786676, 0xE800000000000000);
        v131 = sub_1AF7E54DC(&v270);
        v133 = v132;
        if (sub_1AFDFD178())
        {
          v134 = sub_1AFDFD048();
          v135 = sub_1AF701628(v134, v131, v133);
          v137 = v136;
          v139 = v138;
          v141 = v140;

          v131 = MEMORY[0x1B27189E0](v135, v137, v139, v141);
          v133 = v142;
        }

        MEMORY[0x1B2718AE0](v131, v133);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](2108518, 0xE300000000000000);
        goto LABEL_86;
      case 0xFLL:
        sub_1AF0D5A54(v269, &v263);
        sub_1AF7E5BF0(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v260 = v261;
        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x656B616D5F786676, 0xE800000000000000);
        v143 = sub_1AF7E54DC(&v270);
        v145 = v144;
        if (sub_1AFDFD178())
        {
          v146 = sub_1AFDFD048();
          v147 = sub_1AF701628(v146, v143, v145);
          v149 = v148;
          v151 = v150;
          v153 = v152;

          v143 = MEMORY[0x1B27189E0](v147, v149, v151, v153);
          v145 = v154;
        }

        MEMORY[0x1B2718AE0](v143, v145);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](2108518, 0xE300000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](2108518, 0xE300000000000000);
        goto LABEL_86;
      case 0x10:
        sub_1AF0D5A54(v269, &v263);
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v260 = v261;
        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x656B616D5F786676, 0xE800000000000000);
        v174 = sub_1AF7E54DC(&v270);
        v176 = v175;
        if (sub_1AFDFD178())
        {
          v177 = sub_1AFDFD048();
          v178 = sub_1AF701628(v177, v174, v176);
          v180 = v179;
          v182 = v181;
          v184 = v183;

          v174 = MEMORY[0x1B27189E0](v178, v180, v182, v184);
          v176 = v185;
        }

        MEMORY[0x1B2718AE0](v174, v176);

        v121 = 40;
        v122 = 0xE100000000000000;
        goto LABEL_85;
      case 0x11:
        sub_1AF0D5A54(v269, &v263);
        type metadata accessor for simd_float2x2(0);
        swift_dynamicCast();
        v157 = *(&v261 + 1);
        sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        v159 = v158;
        *(&v262 + 1) = v158;
        v267 = 0u;
        *&v263 = 812412771;
        *(&v263 + 1) = 0xE400000000000000;
        v260 = xmmword_1AFE76110;
        v264 = xmmword_1AFE76110;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        v94 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v96 = v160;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v159;
        *&v261 = v157;
        v267 = 0u;
        *&v263 = 829189987;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = xmmword_1AFE76110;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        goto LABEL_79;
      case 0x12:
        sub_1AF0D5A54(v269, &v263);
        type metadata accessor for simd_float2x3(0);
        swift_dynamicCast();
        v259 = v261;
        v260 = v262;
        sub_1AF7E5BF0(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v30 = v29;
        *(&v262 + 1) = v29;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v259;
        *&v266[8] = 0u;
        v267 = 0u;
        *&v263 = 812412771;
        *(&v263 + 1) = 0xE400000000000000;
        v31 = xmmword_1AFE78720;
        goto LABEL_49;
      case 0x13:
        sub_1AF0D5A54(v269, &v263);
        type metadata accessor for simd_float2x4(0);
        swift_dynamicCast();
        v259 = v261;
        v260 = v262;
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v30 = v93;
        *(&v262 + 1) = v93;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v259;
        *&v266[8] = 0u;
        v267 = 0u;
        *&v263 = 812412771;
        *(&v263 + 1) = 0xE400000000000000;
        v31 = xmmword_1AFE78710;
LABEL_49:
        v259 = v31;
        v264 = v31;
        *v266 = 0;
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        v94 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v96 = v95;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v30;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v260;
        v267 = 0u;
        *&v263 = 829189987;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = v259;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
LABEL_79:
        sub_1AF7E8BCC(&v261, &v266[8]);
        v73 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v75 = v161;
        sub_1AF761390(&v263);

        *&v263 = 7890550;
        *(&v263 + 1) = 0xE300000000000000;
        v162 = sub_1AF7E54DC(&v270);
        v164 = v163;
        if (sub_1AFDFD178())
        {
          v165 = sub_1AFDFD048();
          v166 = sub_1AF701628(v165, v162, v164);
          v168 = v167;
          v170 = v169;
          v172 = v171;

          v162 = MEMORY[0x1B27189E0](v166, v168, v170, v172);
          v164 = v173;
        }

        MEMORY[0x1B2718AE0](v162, v164);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v94, v96);
        goto LABEL_92;
      case 0x14:
        sub_1AF0D5A54(v269, &v263);
        type metadata accessor for simd_float3x2(0);
        swift_dynamicCast();
        v188 = *(&v261 + 1);
        v189 = v262;
        sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        v191 = v190;
        *(&v262 + 1) = v190;
        v267 = 0u;
        *&v263 = 812412771;
        *(&v263 + 1) = 0xE400000000000000;
        v260 = xmmword_1AFE76110;
        v264 = xmmword_1AFE76110;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        v192 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v69 = v193;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v191;
        *&v261 = v188;
        v267 = 0u;
        *&v263 = 829189987;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = xmmword_1AFE76110;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        v70 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v72 = v194;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v191;
        *&v261 = v189;
        v267 = 0u;
        *&v263 = 845967203;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = xmmword_1AFE76110;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        v73 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v75 = v195;
        sub_1AF761390(&v263);

        *&v263 = 7890550;
        *(&v263 + 1) = 0xE300000000000000;
        v196 = sub_1AF7E54DC(&v270);
        v198 = v197;
        if (sub_1AFDFD178())
        {
          v199 = sub_1AFDFD048();
          v200 = sub_1AF701628(v199, v196, v198);
          v202 = v201;
          *&v260 = v75;
          v203 = v72;
          v204 = v69;
          v205 = v73;
          v206 = v70;
          v207 = v192;
          v209 = v208;
          v211 = v210;

          v212 = v209;
          v192 = v207;
          v70 = v206;
          v73 = v205;
          v69 = v204;
          v72 = v203;
          v75 = v260;
          v196 = MEMORY[0x1B27189E0](v200, v202, v212, v211);
          v198 = v213;
        }

        MEMORY[0x1B2718AE0](v196, v198);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        v88 = v192;
        goto LABEL_91;
      case 0x15:
        sub_1AF0D5A54(v269, &v261);
        type metadata accessor for simd_float3x3(0);
        swift_dynamicCast();
        v260 = v263;
        v257 = v264;
        v258 = v265;
        sub_1AF7E5BF0(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v33 = v32;
        *(&v262 + 1) = v32;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v260;
        *&v266[8] = 0u;
        v267 = 0u;
        *&v263 = 812412771;
        *(&v263 + 1) = 0xE400000000000000;
        v34 = xmmword_1AFE78720;
        goto LABEL_44;
      case 0x16:
        sub_1AF0D5A54(v269, &v261);
        type metadata accessor for simd_float3x4(0);
        swift_dynamicCast();
        v260 = v263;
        v257 = v264;
        v258 = v265;
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v33 = v67;
        *(&v262 + 1) = v67;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v260;
        *&v266[8] = 0u;
        v267 = 0u;
        *&v263 = 812412771;
        *(&v263 + 1) = 0xE400000000000000;
        v34 = xmmword_1AFE78710;
LABEL_44:
        v260 = v34;
        v264 = v34;
        *v266 = 0;
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        *&v259 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v69 = v68;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v33;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v257;
        v267 = 0u;
        *&v263 = 829189987;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = v260;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        v70 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v72 = v71;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v33;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v258;
        v267 = 0u;
        *&v263 = 845967203;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = v260;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        v73 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v75 = v74;
        sub_1AF761390(&v263);

        *&v263 = 7890550;
        *(&v263 + 1) = 0xE300000000000000;
        v76 = sub_1AF7E54DC(&v270);
        v78 = v77;
        if (sub_1AFDFD178())
        {
          v79 = sub_1AFDFD048();
          v80 = sub_1AF701628(v79, v76, v78);
          v82 = v81;
          v84 = v83;
          v86 = v85;

          v76 = MEMORY[0x1B27189E0](v80, v82, v84, v86);
          v78 = v87;
        }

        MEMORY[0x1B2718AE0](v76, v78);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        v88 = v259;
LABEL_91:
        MEMORY[0x1B2718AE0](v88, v69);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v70, v72);
        goto LABEL_92;
      case 0x17:
        sub_1AF0D5A54(v269, &v263);
        type metadata accessor for simd_float4x2(0);
        swift_dynamicCast();
        v40 = *(&v261 + 1);
        v41 = v262;
        sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        v43 = v42;
        *(&v262 + 1) = v42;
        v267 = 0u;
        *&v263 = 812412771;
        *(&v263 + 1) = 0xE400000000000000;
        v260 = xmmword_1AFE76110;
        v264 = xmmword_1AFE76110;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        *&v259 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v45 = v44;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v43;
        *&v261 = v40;
        v267 = 0u;
        *&v263 = 829189987;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = xmmword_1AFE76110;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        *&v258 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v47 = v46;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v43;
        *&v261 = v41;
        v267 = 0u;
        *&v263 = 845967203;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = xmmword_1AFE76110;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        *&v257 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v49 = v48;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v43;
        *&v261 = *(&v41 + 1);
        goto LABEL_62;
      case 0x18:
        sub_1AF0D5A54(v269, &v261);
        type metadata accessor for simd_float4x3(0);
        swift_dynamicCast();
        v260 = v263;
        v258 = v264;
        v257 = v265;
        v256 = *v266;
        sub_1AF7E5BF0(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v38 = v104;
        *(&v262 + 1) = v104;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v260;
        *&v266[8] = 0u;
        v267 = 0u;
        *&v263 = 812412771;
        *(&v263 + 1) = 0xE400000000000000;
        v39 = xmmword_1AFE78720;
        goto LABEL_61;
      case 0x19:
        sub_1AF0D5A54(v269, &v261);
        type metadata accessor for simd_float4x4(0);
        swift_dynamicCast();
        v260 = v263;
        v258 = v264;
        v257 = v265;
        v256 = *v266;
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v38 = v37;
        *(&v262 + 1) = v37;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v260;
        *&v266[8] = 0u;
        v267 = 0u;
        *&v263 = 812412771;
        *(&v263 + 1) = 0xE400000000000000;
        v39 = xmmword_1AFE78710;
LABEL_61:
        v260 = v39;
        v264 = v39;
        *v266 = 0;
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        *&v259 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v45 = v105;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v38;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v258;
        v267 = 0u;
        *&v263 = 829189987;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = v260;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        *&v258 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v47 = v106;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v38;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v257;
        v267 = 0u;
        *&v263 = 845967203;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = v260;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        *&v257 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v49 = v107;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v38;
        *&v261 = swift_allocObject();
        *(v261 + 16) = v256;
LABEL_62:
        v267 = 0u;
        *&v263 = 862744419;
        *(&v263 + 1) = 0xE400000000000000;
        v264 = v260;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;
        sub_1AF7E8BCC(&v261, &v266[8]);
        v73 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v75 = v108;
        sub_1AF761390(&v263);

        *&v263 = 7890550;
        *(&v263 + 1) = 0xE300000000000000;
        v109 = sub_1AF7E54DC(&v270);
        v111 = v110;
        if (sub_1AFDFD178())
        {
          v112 = sub_1AFDFD048();
          v113 = sub_1AF701628(v112, v109, v111);
          v115 = v114;
          v117 = v116;
          v119 = v118;

          v109 = MEMORY[0x1B27189E0](v113, v115, v117, v119);
          v111 = v120;
        }

        MEMORY[0x1B2718AE0](v109, v111);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v259, v45);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v258, v47);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v257, v49);
LABEL_92:

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v73, v75);

        v35 = 41;
        goto LABEL_108;
      case 0x1ALL:
        *&v261 = 0;
        *(&v261 + 1) = 0xE000000000000000;
        sub_1AF0D5A54(v269, &v263);
        swift_dynamicCast();
        sub_1AFDFD6F8();
        goto LABEL_116;
      case 0x1CLL:
        sub_1AF0D5A54(v269, &v263);
        swift_dynamicCast();
        v214 = *(&v261 + 1);
        sub_1AF7E5B2C(0, &qword_1ED7231E0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        *(&v262 + 1) = v215;
        v267 = 0u;
        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        v264 = xmmword_1AFE78700;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;

        sub_1AF7E8BCC(&v261, &v266[8]);
        *&v260 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v217 = v216;
        sub_1AF761390(&v263);

        sub_1AF7E5BA0(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
        *(&v262 + 1) = v218;
        *&v261 = v214;
        v267 = 0u;
        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        v264 = xmmword_1AFE786F0;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;

        sub_1AF7E8BCC(&v261, &v266[8]);
        v219 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v221 = v220;
        sub_1AF761390(&v263);

        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000003CLL, 0x80000001AFF35470);
        MEMORY[0x1B2718AE0](v260, v217);

        MEMORY[0x1B2718AE0](0x74616F6C6628202CLL, 0xEC00000020295D5BLL);
        MEMORY[0x1B2718AE0](v219, v221);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v222 = *(v214 + 16);

        *&v261 = v222;
        v223 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v223);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LOBYTE(v261) = 1;
        v224 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v224);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v11 = v263;
        if (!a4)
        {
          goto LABEL_117;
        }

        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002FLL, 0x80000001AFF352C0);
        v225 = sub_1AF76ED08(a3, a4);
        MEMORY[0x1B2718AE0](v225);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        if (a5 == 3)
        {
          v13 = 0;
        }

        else
        {
          v13 = 59;
        }

        if (a5 == 3)
        {
          v14 = 0xE000000000000000;
        }

        else
        {
          v14 = 0xE100000000000000;
        }

        goto LABEL_100;
      case 0x22:
      case 0x23:
        sub_1AF0D5A54(v269, &v263);
        swift_dynamicCast();
        *&v263 = 0xD000000000000029;
        *(&v263 + 1) = 0x80000001AFF353D0;
        MEMORY[0x1B2718AE0](v261, *(&v261 + 1));

        MEMORY[0x1B2718AE0](10530, 0xE200000000000000);
        v11 = v263;
        if (!a4)
        {
          goto LABEL_117;
        }

        *&v263 = 0xD00000000000002BLL;
        *(&v263 + 1) = 0x80000001AFF35400;
        v12 = sub_1AF76ED08(a3, a4);
        MEMORY[0x1B2718AE0](v12);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        if (a5 == 3)
        {
          v13 = 0;
        }

        else
        {
          v13 = 59;
        }

        if (a5 == 3)
        {
          v14 = 0xE000000000000000;
        }

        else
        {
          v14 = 0xE100000000000000;
        }

        goto LABEL_100;
      case 0x24:
        sub_1AF0D5A54(v269, &v263);
        type metadata accessor for simd_quatf(0);
        swift_dynamicCast();
        v260 = v261;
        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v121 = 0xD000000000000010;
        v122 = 0x80000001AFF354B0;
LABEL_85:
        MEMORY[0x1B2718AE0](v121, v122);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](2108518, 0xE300000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](2108518, 0xE300000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](2108518, 0xE300000000000000);
LABEL_86:
        sub_1AFDFD748();
        v35 = 10598;
        v36 = 0xE200000000000000;
        goto LABEL_109;
      case 0x25:
        sub_1AF0D5A54(v269, &v263);
        v55 = MEMORY[0x1E69E6448];
        sub_1AF67C9FC(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
        swift_dynamicCast();
        v56 = *(&v261 + 1);
        *&v260 = v262;
        sub_1AF7E5BA0(0, &qword_1ED723210, v55, MEMORY[0x1E69E62F8]);
        v58 = v57;
        *(&v262 + 1) = v57;
        v267 = 0u;
        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        v258 = xmmword_1AFE786F0;
        v264 = xmmword_1AFE786F0;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;

        sub_1AF7E8BCC(&v261, &v266[8]);
        *&v259 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v60 = v59;
        sub_1AF761390(&v263);

        *(&v262 + 1) = v58;
        *&v261 = v56;
        v267 = 0u;
        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        v264 = xmmword_1AFE786F0;
        memset(v266, 0, sizeof(v266));
        v265 = 0uLL;

        sub_1AF7E8BCC(&v261, &v266[8]);
        v61 = sub_1AF7E0118(&v263, a2, 0, 0, a5);
        v63 = v62;
        sub_1AF761390(&v263);

        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000031, 0x80000001AFF35430);
        MEMORY[0x1B2718AE0](v259, v60);

        MEMORY[0x1B2718AE0](0x74616F6C6628202CLL, 0xEC00000020295D5BLL);
        MEMORY[0x1B2718AE0](v61, v63);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v64 = *(v56 + 16);

        *&v261 = v64;
        v65 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v65);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v11 = v263;
        if (!a4)
        {
          goto LABEL_117;
        }

        *&v263 = 0xD00000000000002ALL;
        *(&v263 + 1) = 0x80000001AFF35260;
        v66 = sub_1AF76ED08(a3, a4);
        MEMORY[0x1B2718AE0](v66);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        if (a5 == 3)
        {
          v13 = 0;
        }

        else
        {
          v13 = 59;
        }

        if (a5 == 3)
        {
          v14 = 0xE000000000000000;
        }

        else
        {
          v14 = 0xE100000000000000;
        }

LABEL_100:
        MEMORY[0x1B2718AE0](v13, v14);

        v226 = v263;
        v227 = *(a2 + 168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 168) = v227;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v227 = sub_1AF420554(0, *(v227 + 2) + 1, 1, v227);
          *(a2 + 168) = v227;
        }

        v230 = *(v227 + 2);
        v229 = *(v227 + 3);
        if (v230 >= v229 >> 1)
        {
          *(a2 + 168) = sub_1AF420554(v229 > 1, v230 + 1, 1, v227);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v269);
        v231 = *(a2 + 168);
        *(v231 + 16) = v230 + 1;
        *(v231 + 16 * v230 + 32) = v226;
        *(a2 + 168) = v231;
        return v11;
      case 0x27:
        sub_1AF0D5A54(v269, &v263);
        sub_1AF67C9FC(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
        swift_dynamicCast();
        *&v263 = 0xD000000000000011;
        *(&v263 + 1) = 0x80000001AFF35360;
        v234 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v234);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        *&v261 = *(&v261 + 1);
LABEL_107:
        v235 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v235);

        v35 = 125;
        goto LABEL_108;
      case 0x28:
        sub_1AF0D5A54(v269, &v263);
        sub_1AF67C9FC(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
        swift_dynamicCast();
        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF35340);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](2108518, 0xE300000000000000);
        sub_1AFDFD748();
        v35 = 32102;
        v36 = 0xE200000000000000;
        goto LABEL_109;
      case 0x2BLL:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
        v155 = swift_dynamicCast();
        v156 = v268;
        MEMORY[0x1EEE9AC00](v155);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFBFC034(sub_1AF7E8BA8, v252, v156);
        goto LABEL_113;
      case 0x2CLL:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
        v232 = swift_dynamicCast();
        v233 = v268;
        MEMORY[0x1EEE9AC00](v232);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFC287F4(sub_1AF7E8B7C, v252, v233);
        goto LABEL_113;
      case 0x2DLL:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
        v25 = swift_dynamicCast();
        v26 = v268;
        MEMORY[0x1EEE9AC00](v25);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFC2880C(sub_1AF7E8B50, v252, v26);
        goto LABEL_113;
      case 0x2ELL:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
        v126 = swift_dynamicCast();
        v127 = v268;
        MEMORY[0x1EEE9AC00](v126);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFC28824(sub_1AF7E8B24, v252, v127);
        goto LABEL_113;
      case 0x2FLL:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
        v23 = swift_dynamicCast();
        v24 = v268;
        MEMORY[0x1EEE9AC00](v23);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFC287DC(sub_1AF7E8AF8, v252, v24);
        goto LABEL_113;
      case 0x30:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
        v20 = swift_dynamicCast();
        v21 = v268;
        MEMORY[0x1EEE9AC00](v20);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFC287F4(sub_1AF7E8ACC, v252, v21);
        goto LABEL_113;
      case 0x31:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
        v50 = swift_dynamicCast();
        v51 = v268;
        MEMORY[0x1EEE9AC00](v50);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFC2880C(sub_1AF7E8AA0, v252, v51);
        goto LABEL_113;
      case 0x32:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
        v102 = swift_dynamicCast();
        v103 = v268;
        MEMORY[0x1EEE9AC00](v102);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFC28824(sub_1AF7E8A74, v252, v103);
        goto LABEL_113;
      case 0x33:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
        v186 = swift_dynamicCast();
        v187 = v268;
        MEMORY[0x1EEE9AC00](v186);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFC287DC(sub_1AF7E8A48, v252, v187);
        goto LABEL_113;
      case 0x34:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        v241 = swift_dynamicCast();
        v242 = v268;
        MEMORY[0x1EEE9AC00](v241);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFC287DC(sub_1AF7E8A1C, v252, v242);
        goto LABEL_113;
      case 0x35:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        v19 = MEMORY[0x1E69E62F8];
        sub_1AF7E5BA0(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
        v27 = swift_dynamicCast();
        v28 = v268;
        MEMORY[0x1EEE9AC00](v27);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v22 = sub_1AFBFC588(sub_1AF7E89F8, v252, v28);
LABEL_113:
        v243 = v22;

        *&v263 = v243;
        v239 = MEMORY[0x1E69E6158];
        v240 = v19;
        goto LABEL_114;
      case 0x36:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        sub_1AF7E5B2C(0, &qword_1EB63F3E0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
        v123 = swift_dynamicCast();
        v124 = v268;
        MEMORY[0x1EEE9AC00](v123);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v125 = sub_1AFBFC69C(sub_1AF7E89D4, v252, v124);
        goto LABEL_111;
      case 0x37:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        sub_1AF7E5B2C(0, &qword_1EB6383B0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
        v128 = swift_dynamicCast();
        v129 = v268;
        MEMORY[0x1EEE9AC00](v128);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v125 = sub_1AFC2883C(sub_1AF7E8994, v252, v129);
        goto LABEL_111;
      case 0x38:
        *&v261 = 123;
        *(&v261 + 1) = 0xE100000000000000;
        sub_1AF0D5A54(v269, &v263);
        sub_1AF7E5B2C(0, &qword_1ED7231E0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        v236 = swift_dynamicCast();
        v237 = v268;
        MEMORY[0x1EEE9AC00](v236);
        v253 = a5;
        v254 = a1;
        v255 = a2;
        v125 = sub_1AFC2883C(sub_1AF7E8954, v252, v237);
LABEL_111:
        v238 = v125;

        *&v263 = v238;
        v239 = MEMORY[0x1E69E6158];
        v240 = MEMORY[0x1E69E62F8];
LABEL_114:
        sub_1AF7E5BA0(0, &qword_1ED726C70, v239, v240);
        sub_1AF488088();
        v244 = sub_1AFDFCD98();
        v246 = v245;

        MEMORY[0x1B2718AE0](v244, v246);

        v247 = 125;
        goto LABEL_115;
      default:
        if (*(a2 + 64) == 1)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          *&v263 = 0;
          *(&v263 + 1) = 0xE000000000000000;
          sub_1AFDFE218();
          v261 = v263;
          MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF35380);
          v263 = v270;
          v264 = v271;
          *&v265 = v272;
          sub_1AFDFE458();
          v249 = sub_1AFDFDA18();
          if (qword_1ED731058 != -1)
          {
            v251 = v249;
            swift_once();
            v249 = v251;
          }

          *&v263 = 0;
          sub_1AF0D4F18(v249, &v263, v261, *(&v261 + 1));
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v269);
        return 0x3E524F5252453CLL;
    }
  }

  else
  {
    sub_1AF44CB60(&v263);
    v15 = *(a1 + 24);
    if (v15 > 0x3A)
    {
      return 0xD00000000000001FLL;
    }

    else if (((1 << v15) & 0x7FFFFBC5FFFFFFFLL) != 0)
    {
      v11 = 0x3E524F5252453CLL;
      if (*(a2 + 64) == 1)
      {
        v260 = *(a1 + 16);
        v259 = *(a1 + 32);
        v16 = *(a1 + 48);
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v263 = 0;
        *(&v263 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v270 = v263;
        MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF35380);
        v264 = v259;
        v263 = v260;
        *&v265 = v16;
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x6F6E206874697720, 0xEE0065756C617620);
        v17 = v270;
        v18 = sub_1AFDFDA18();
        if (qword_1ED731058 != -1)
        {
          v250 = v18;
          swift_once();
          v18 = v250;
        }

        *&v263 = 0;
        sub_1AF0D4F18(v18, &v263, v17, *(&v17 + 1));
      }
    }

    else
    {
      return 48;
    }
  }

  return v11;
}

uint64_t sub_1AF7E4244@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v15 = MEMORY[0x1E69E6370];
  v14[0] = v8;
  v9 = *(a3 + 32);
  v18[2] = *(a3 + 16);
  v18[3] = v9;
  v19 = *(a3 + 48);
  sub_1AF7FE2EC(v17);
  memset(v18, 0, 32);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1AF7E8BCC(v14, v18);
  v10 = sub_1AF7E0118(v16, a4, 0, 0, a2);
  v12 = v11;
  sub_1AF761390(v16);

  *a5 = v10;
  a5[1] = v12;
  return result;
}

uint64_t sub_1AF7E4314@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v9 = *a1;
  v16 = a5;
  v15[0] = v9;
  v10 = *(a3 + 32);
  v19[2] = *(a3 + 16);
  v19[3] = v10;
  v20 = *(a3 + 48);
  sub_1AF7FE2EC(v18);
  memset(v19, 0, 32);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1AF7E8BCC(v15, v19);
  v11 = sub_1AF7E0118(v17, a4, 0, 0, a2);
  v13 = v12;
  sub_1AF761390(v17);

  *a6 = v11;
  a6[1] = v13;
  return result;
}

uint64_t sub_1AF7E43DC@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v9 = *a1;
  v16 = a5;
  v15[0] = v9;
  v10 = *(a3 + 32);
  v19[2] = *(a3 + 16);
  v19[3] = v10;
  v20 = *(a3 + 48);
  sub_1AF7FE2EC(v18);
  memset(v19, 0, 32);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1AF7E8BCC(v15, v19);
  v11 = sub_1AF7E0118(v17, a4, 0, 0, a2);
  v13 = v12;
  sub_1AF761390(v17);

  *a6 = v11;
  a6[1] = v13;
  return result;
}

uint64_t sub_1AF7E44A4@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v9 = *a1;
  v16 = a5;
  v15[0] = v9;
  v10 = *(a3 + 32);
  v19[2] = *(a3 + 16);
  v19[3] = v10;
  v20 = *(a3 + 48);
  sub_1AF7FE2EC(v18);
  memset(v19, 0, 32);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1AF7E8BCC(v15, v19);
  v11 = sub_1AF7E0118(v17, a4, 0, 0, a2);
  v13 = v12;
  sub_1AF761390(v17);

  *a6 = v11;
  a6[1] = v13;
  return result;
}

uint64_t sub_1AF7E456C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v9 = *a1;
  v15[3] = a5;
  v15[0] = v9;
  v10 = *(a3 + 32);
  v18[2] = *(a3 + 16);
  v18[3] = v10;
  v19 = *(a3 + 48);
  sub_1AF7FE2EC(v17);
  memset(v18, 0, 32);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1AF7E8BCC(v15, v18);
  v11 = sub_1AF7E0118(v16, a4, 0, 0, a2);
  v13 = v12;
  sub_1AF761390(v16);

  *a6 = v11;
  a6[1] = v13;
  return result;
}

uint64_t sub_1AF7E4634@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v15 = MEMORY[0x1E69E6448];
  v14[0] = v8;
  v9 = *(a3 + 32);
  v18[2] = *(a3 + 16);
  v18[3] = v9;
  v19 = *(a3 + 48);
  sub_1AF7FE2EC(v17);
  memset(v18, 0, 32);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1AF7E8BCC(v14, v18);
  v10 = sub_1AF7E0118(v16, a4, 0, 0, a2);
  v12 = v11;
  sub_1AF761390(v16);

  *a5 = v10;
  a5[1] = v12;
  return result;
}

uint64_t sub_1AF7E4704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v17 = v10;
  v16[0] = v9;
  v11 = *(a3 + 32);
  v20[2] = *(a3 + 16);
  v20[3] = v11;
  v21 = *(a3 + 48);
  sub_1AF7FE2EC(v19);
  memset(v20, 0, 32);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1AF7E8BCC(v16, v20);
  v12 = sub_1AF7E0118(v18, a4, 0, 0, a2);
  v14 = v13;
  sub_1AF761390(v18);

  *a5 = v12;
  a5[1] = v14;
  return result;
}

uint64_t sub_1AF7E4818@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X5>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t *a7@<X8>)
{
  v17 = *a1;
  sub_1AF7E5BF0(0, a5, sub_1AF43A0C8, MEMORY[0x1E69E6448], a6);
  v18[3] = v11;
  v18[0] = swift_allocObject();
  *(v18[0] + 16) = v17;
  v12 = *(a3 + 32);
  v21[2] = *(a3 + 16);
  v21[3] = v12;
  v22 = *(a3 + 48);
  sub_1AF7FE2EC(v20);
  memset(v21, 0, 32);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1AF7E8BCC(v18, v21);
  v13 = sub_1AF7E0118(v19, a4, 0, 0, a2);
  v15 = v14;
  sub_1AF761390(v19);

  *a7 = v13;
  a7[1] = v15;
  return result;
}

uint64_t sub_1AF7E4930(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = 1819242306;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      return 0x38746E4955;
    case 2:
      return 0x3631746E4955;
    case 3:
      return 0x3233746E4955;
    case 4:
      return 0x3436746E4955;
    case 5:
      return 947154505;
    case 6:
      return 0x3631746E49;
    case 7:
      return 0x3233746E49;
    case 8:
    case 41:
      return 0x3436746E49;
    case 9:
      return 7630409;
    case 10:
      return 0x6E69755F646D6973;
    case 11:
      return 0x6E69755F646D6973;
    case 12:
      return 0x6E69755F646D6973;
    case 13:
      return 0x74616F6C46;
    case 14:
      return 0x6F6C665F646D6973;
    case 15:
      return 0x6F6C665F646D6973;
    case 16:
      return 0x6F6C665F646D6973;
    case 17:
      return 0x6F6C665F646D6973;
    case 18:
      return 0x6F6C665F646D6973;
    case 19:
      return 0x6F6C665F646D6973;
    case 20:
      return 0x6F6C665F646D6973;
    case 21:
      return 0x6F6C665F646D6973;
    case 22:
      return 0x6F6C665F646D6973;
    case 23:
      return 0x6F6C665F646D6973;
    case 24:
      return 0x6F6C665F646D6973;
    case 25:
      return 0x6F6C665F646D6973;
    case 26:
      return 0x656C62756F44;
    case 27:
      return 0x3855726F6C6F43;
    case 28:
    case 29:
    case 31:
    case 32:
    case 33:
    case 37:
    case 38:
      return 0xD000000000000010;
    case 34:
    case 35:
      return 0x676E69727453;
    case 36:
      return 0x6175715F646D6973;
    case 39:
      return 0x6E493C65676E6152;
    case 40:
      return 0x6C463C65676E6152;
    case 43:
      return 0x5D6C6F6F425BLL;
    case 44:
      v4 = 0x38746E49555BLL;
      goto LABEL_54;
    case 45:
      return 0x5D3631746E49555BLL;
    case 46:
      return 0x5D3233746E49555BLL;
    case 47:
      return 0x5D3436746E49555BLL;
    case 48:
      return 0x5D38746E495BLL;
    case 49:
      v4 = 0x3631746E495BLL;
      goto LABEL_54;
    case 50:
      v4 = 0x3233746E495BLL;
      goto LABEL_54;
    case 51:
      v4 = 0x3436746E495BLL;
      goto LABEL_54;
    case 52:
      return 0x5D746E495BLL;
    case 53:
      v4 = 0x74616F6C465BLL;
LABEL_54:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x5D000000000000;
      break;
    case 54:
    case 55:
    case 56:
      result = 0x6C665F646D69735BLL;
      break;
    case 57:
    case 58:
      result = 0x5D676E697274535BLL;
      break;
    default:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v8[0] = 0;
      *(&v8[0] + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v10 = v8[0];
      MEMORY[0x1B2718AE0](0xD000000000000036, 0x80000001AFF350A0);
      v5 = *(a1 + 16);
      v8[0] = *a1;
      v8[1] = v5;
      v9 = *(a1 + 32);
      sub_1AFDFE458();
      v6 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v7 = v6;
        swift_once();
        v6 = v7;
      }

      *&v8[0] = 0;
      sub_1AF0D4F18(v6, v8, v10, *(&v10 + 1));

      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1AF7E4F70(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = 1819242338;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      return 0x745F38746E6975;
    case 2:
      return 0x745F3631746E6975;
    case 3:
      return 0x745F3233746E6975;
    case 4:
      return 0x745F3436746E6975;
    case 5:
      return 0x745F38746E69;
    case 6:
      return 0x745F3631746E69;
    case 7:
      return 0x745F3233746E69;
    case 8:
    case 9:
    case 41:
      return 0x745F3436746E69;
    case 10:
      return 0x32746E6975;
    case 11:
      return 0x33746E6975;
    case 12:
      return 0x34746E6975;
    case 13:
    case 26:
      return 0x74616F6C66;
    case 14:
      return 0x3274616F6C66;
    case 15:
      return 0x3374616F6C66;
    case 16:
    case 36:
      return 0x3474616F6C66;
    case 17:
      return 0x32783274616F6C66;
    case 18:
      return 0x33783274616F6C66;
    case 19:
      return 0x34783274616F6C66;
    case 20:
      return 0x32783374616F6C66;
    case 21:
      return 0x33783374616F6C66;
    case 22:
      return 0x34783374616F6C66;
    case 23:
      return 0x32783474616F6C66;
    case 24:
      return 0x33783474616F6C66;
    case 25:
      return 0x34783474616F6C66;
    case 29:
    case 31:
    case 38:
      return 0x706D61735F786676;
    case 32:
    case 33:
      return 0x706D61735F786676;
    case 39:
      return 0x5F746E695F786676;
    case 40:
      return 0x616F6C665F786676;
    case 43:
      return 0x2A6C6F6F62;
    case 44:
      return 0x2A745F38746E6975;
    case 45:
      v4 = 0x3631746E6975;
      goto LABEL_18;
    case 46:
      v4 = 0x3233746E6975;
      goto LABEL_18;
    case 47:
      v4 = 0x3436746E6975;
LABEL_18:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      break;
    case 48:
      result = 0x2A745F38746E69;
      break;
    case 49:
      result = 0x2A745F3631746E69;
      break;
    case 50:
      result = 0x2A745F3233746E69;
      break;
    case 51:
    case 52:
      result = 0x2A745F3436746E69;
      break;
    case 53:
      result = 0x2A74616F6C66;
      break;
    case 54:
      result = 0x2A3274616F6C66;
      break;
    case 55:
      result = 0x2A3374616F6C66;
      break;
    case 56:
      result = 0x2A3474616F6C66;
      break;
    default:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v8[0] = 0;
      *(&v8[0] + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v10 = v8[0];
      MEMORY[0x1B2718AE0](0xD000000000000036, 0x80000001AFF35040);
      v5 = *(a1 + 16);
      v8[0] = *a1;
      v8[1] = v5;
      v9 = *(a1 + 32);
      sub_1AFDFE458();
      v6 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v7 = v6;
        swift_once();
        v6 = v7;
      }

      *&v8[0] = 0;
      sub_1AF0D4F18(v6, v8, v10, *(&v10 + 1));

      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1AF7E54DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = 1819242338;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      return 0x745F38746E6975;
    case 2:
      return 0x745F3631746E6975;
    case 3:
      return 0x745F3233746E6975;
    case 4:
      return 0x745F3436746E6975;
    case 5:
      return 0x745F38746E69;
    case 6:
      return 0x745F3631746E69;
    case 7:
      return 0x745F3233746E69;
    case 8:
    case 9:
    case 41:
      return 0x745F3436746E69;
    case 10:
      return 0x6E69755F646D6973;
    case 11:
      return 0x6E69755F646D6973;
    case 12:
      return 0x6E69755F646D6973;
    case 13:
      return 0x74616F6C66;
    case 14:
      return 0x6F6C665F646D6973;
    case 15:
      return 0x6F6C665F646D6973;
    case 16:
      return 0x6F6C665F646D6973;
    case 17:
      return 0x6F6C665F646D6973;
    case 18:
      return 0x6F6C665F646D6973;
    case 19:
      return 0x6F6C665F646D6973;
    case 20:
      return 0x6F6C665F646D6973;
    case 21:
      return 0x6F6C665F646D6973;
    case 22:
      return 0x6F6C665F646D6973;
    case 23:
      return 0x6F6C665F646D6973;
    case 24:
      return 0x6F6C665F646D6973;
    case 25:
      return 0x6F6C665F646D6973;
    case 26:
      return 0x656C62756F64;
    case 28:
    case 29:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
      return 0x2A64696F76;
    case 36:
      return 0x6175715F646D6973;
    case 39:
      return 0x5F746E695F786676;
    case 40:
      return 0x616F6C665F786676;
    case 43:
      return 0x2A6C6F6F62;
    case 44:
      return 0x2A745F38746E6975;
    case 45:
      v4 = 0x3631746E6975;
      goto LABEL_42;
    case 46:
      v4 = 0x3233746E6975;
      goto LABEL_42;
    case 47:
      v4 = 0x3436746E6975;
LABEL_42:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      break;
    case 48:
      result = 0x2A745F38746E69;
      break;
    case 49:
      result = 0x2A745F3631746E69;
      break;
    case 50:
      result = 0x2A745F3233746E69;
      break;
    case 51:
    case 52:
      result = 0x2A745F3436746E69;
      break;
    case 53:
      result = 0x2A74616F6C66;
      break;
    case 54:
      result = 0x6F6C665F646D6973;
      break;
    case 55:
      result = 0x6F6C665F646D6973;
      break;
    case 56:
      result = 0x6F6C665F646D6973;
      break;
    default:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v8[0] = 0;
      *(&v8[0] + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v10 = v8[0];
      MEMORY[0x1B2718AE0](0xD000000000000032, 0x80000001AFF35120);
      v5 = *(a1 + 16);
      v8[0] = *a1;
      v8[1] = v5;
      v9 = *(a1 + 32);
      sub_1AFDFE458();
      v6 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v7 = v6;
        swift_once();
        v6 = v7;
      }

      *&v8[0] = 0;
      sub_1AF0D4F18(v6, v8, v10, *(&v10 + 1));

      result = 0x5F4E574F4E4B4E55;
      break;
  }

  return result;
}

void sub_1AF7E5B2C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AF7E5BF0(255, a3, sub_1AF43A0C8, MEMORY[0x1E69E6448], a4);
    v5 = sub_1AFDFD538();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF7E5BA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF7E5BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF7E5C58(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7E5BF0(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF7E5CBC(uint64_t a1, uint64_t a2)
{
  sub_1AF44CBE4(a1 + 56, &v83);
  if (*(&v84 + 1))
  {
    sub_1AF449D40(&v83, v90);
    v4 = *(a1 + 32);
    v91 = *(a1 + 16);
    v92 = v4;
    v93 = *(a1 + 48);
    switch(*(&v91 + 1))
    {
      case 0:
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        sub_1AF0D5A54(v90, &v83);
        swift_dynamicCast();
        if (v94)
        {
          v5 = 1702195828;
        }

        else
        {
          v5 = 0x65736C6166;
        }

        if (v94)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE500000000000000;
        }

        MEMORY[0x1B2718AE0](v5, v6);

        goto LABEL_79;
      case 1:
      case 5:
        sub_1AF0D5A54(v90, &v83);
        swift_dynamicCast();
        LOBYTE(v94) = v86;
        goto LABEL_44;
      case 2:
      case 6:
        sub_1AF0D5A54(v90, &v83);
        swift_dynamicCast();
        LOWORD(v94) = v86;
        goto LABEL_44;
      case 3:
      case 7:
        sub_1AF0D5A54(v90, &v83);
        swift_dynamicCast();
        LODWORD(v94) = v86;
        goto LABEL_44;
      case 4:
      case 8:
      case 9:
        sub_1AF0D5A54(v90, &v83);
        swift_dynamicCast();
        *&v94 = v86;
LABEL_44:
        v7 = sub_1AFDFEA08();
        goto LABEL_68;
      case 0xALL:
        sub_1AF0D5A54(v90, &v83);
        sub_1AF7E5BF0(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        v80 = v86;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        v32 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v32);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        LODWORD(v86) = v80;
        v33 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v33);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LODWORD(v86) = HIDWORD(v80);
        goto LABEL_40;
      case 0xBLL:
        sub_1AF0D5A54(v90, &v83);
        sub_1AF7E5BF0(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v82 = v86;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        v46 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v46);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        LODWORD(v86) = v82;
        v47 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v47);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LODWORD(v86) = DWORD1(v82);
        v48 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v48);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LODWORD(v86) = DWORD2(v82);
        goto LABEL_40;
      case 0xCLL:
        sub_1AF0D5A54(v90, &v83);
        sub_1AF7E5BF0(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v81 = v86;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v39 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v39);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        LODWORD(v86) = v81;
        v40 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v40);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LODWORD(v86) = DWORD1(v81);
        v41 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v41);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LODWORD(v86) = DWORD2(v81);
        v42 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v42);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        LODWORD(v86) = HIDWORD(v81);
LABEL_40:
        v44 = sub_1AFDFEA08();
        goto LABEL_41;
      case 0xDLL:
        sub_1AF0D5A54(v90, &v83);
        if (!swift_dynamicCast())
        {
          goto LABEL_78;
        }

        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFD748();
        goto LABEL_64;
      case 0xELL:
        sub_1AF0D5A54(v90, &v83);
        sub_1AF7E5BF0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        v52 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v52);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        goto LABEL_61;
      case 0xFLL:
        sub_1AF0D5A54(v90, &v83);
        sub_1AF7E5BF0(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        v53 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v53);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        goto LABEL_61;
      case 0x10:
        sub_1AF0D5A54(v90, &v83);
        sub_1AF7E5BF0(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v56 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v56);

        v57 = 40;
        v58 = 0xE100000000000000;
        goto LABEL_60;
      case 0x11:
        sub_1AF0D5A54(v90, &v83);
        type metadata accessor for simd_float2x2(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3274616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v54 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3274616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v29 = *(&v83 + 1);
        v30 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        v55 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v55);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v54, *(&v54 + 1));
        goto LABEL_57;
      case 0x12:
        sub_1AF0D5A54(v90, &v83);
        type metadata accessor for simd_float2x3(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3374616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v13 = *(&v83 + 1);
        v14 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3374616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        goto LABEL_37;
      case 0x13:
        sub_1AF0D5A54(v90, &v83);
        type metadata accessor for simd_float2x4(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x3474616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v13 = *(&v83 + 1);
        v14 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x3474616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
LABEL_37:
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v22 = *(&v83 + 1);
        v23 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        v43 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v43);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v14, v13);
        goto LABEL_38;
      case 0x14:
        sub_1AF0D5A54(v90, &v83);
        type metadata accessor for simd_float3x2(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3274616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v65 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3274616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v66 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3274616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v29 = *(&v83 + 1);
        v30 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        v67 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v67);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v65, *(&v65 + 1));

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v66, *(&v66 + 1));
        goto LABEL_57;
      case 0x15:
        sub_1AF0D5A54(v90, &v86);
        type metadata accessor for simd_float3x3(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3374616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v15 = *(&v83 + 1);
        v16 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3374616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v17 = *(&v83 + 1);
        v18 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3374616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        goto LABEL_33;
      case 0x16:
        sub_1AF0D5A54(v90, &v86);
        type metadata accessor for simd_float3x4(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x3474616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v15 = *(&v83 + 1);
        v16 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x3474616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v17 = *(&v83 + 1);
        v18 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x3474616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
LABEL_33:
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v22 = *(&v83 + 1);
        v23 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        v38 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v38);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v16, v15);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v18, v17);
        goto LABEL_38;
      case 0x17:
        sub_1AF0D5A54(v90, &v83);
        type metadata accessor for simd_float4x2(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3274616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v25 = *(&v83 + 1);
        v78 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3274616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v26 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3274616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v27 = *(&v83 + 1);
        v28 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3274616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v29 = *(&v83 + 1);
        v30 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v31 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v31);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v78, v25);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v26, *(&v26 + 1));
        goto LABEL_46;
      case 0x18:
        sub_1AF0D5A54(v90, &v86);
        type metadata accessor for simd_float4x3(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3374616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v49 = *(&v83 + 1);
        v79 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3374616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v50 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3374616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v27 = *(&v83 + 1);
        v28 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        MEMORY[0x1B2718AE0](0x3374616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v29 = *(&v83 + 1);
        v30 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v51 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v51);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v79, v49);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v50, *(&v50 + 1));
LABEL_46:

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v28, v27);
LABEL_57:

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v30, v29);
        goto LABEL_58;
      case 0x19:
        sub_1AF0D5A54(v90, &v86);
        type metadata accessor for simd_float4x4(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x3474616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v19 = *(&v83 + 1);
        v77 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x3474616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v20 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x3474616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v21 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x3474616F6C66, 0xE600000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v22 = *(&v83 + 1);
        v23 = v83;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v24 = sub_1AF7E4F70(&v91);
        MEMORY[0x1B2718AE0](v24);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v77, v19);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v20, *(&v20 + 1));

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v21, *(&v21 + 1));
LABEL_38:

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v44 = v23;
        v45 = v22;
LABEL_41:
        MEMORY[0x1B2718AE0](v44, v45);
LABEL_58:

        goto LABEL_62;
      case 0x1ALL:
LABEL_78:
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        sub_1AF0D5A54(v90, &v83);
        swift_dynamicCast();
        sub_1AFDFD748();
LABEL_79:
        v7 = v86;
        goto LABEL_68;
      case 0x24:
        sub_1AF0D5A54(v90, &v83);
        type metadata accessor for simd_quatf(0);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v57 = 0x283474616F6C66;
        v58 = 0xE700000000000000;
LABEL_60:
        MEMORY[0x1B2718AE0](v57, v58);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
LABEL_61:
        sub_1AFDFD748();
LABEL_62:
        v37 = 41;
        goto LABEL_63;
      case 0x27:
        sub_1AF0D5A54(v90, &v83);
        sub_1AF67C9FC(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
        swift_dynamicCast();
        v34 = *(&v86 + 1);
        *&v83 = 0xD000000000000011;
        *(&v83 + 1) = 0x80000001AFF35360;
        v35 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v35);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        *&v86 = v34;
        v36 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v36);

        goto LABEL_30;
      case 0x28:
        sub_1AF0D5A54(v90, &v83);
        sub_1AF67C9FC(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
        swift_dynamicCast();
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF35340);
        sub_1AFDFD748();
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        sub_1AFDFD748();
LABEL_30:
        v37 = 125;
LABEL_63:
        MEMORY[0x1B2718AE0](v37, 0xE100000000000000);
LABEL_64:
        v7 = v83;
        goto LABEL_68;
      case 0x2BLL:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1EB63ED80;
        v12 = MEMORY[0x1E69E6370];
        goto LABEL_66;
      case 0x2CLL:
        sub_1AF0D5A54(v90, &v83);
        v11 = &unk_1ED726C20;
        v12 = MEMORY[0x1E69E7508];
        goto LABEL_66;
      case 0x2DLL:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1EB6332D0;
        v12 = MEMORY[0x1E69E75F8];
        goto LABEL_66;
      case 0x2ELL:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1EB63ED78;
        v12 = MEMORY[0x1E69E7668];
        goto LABEL_66;
      case 0x2FLL:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1EB63ED70;
        v12 = MEMORY[0x1E69E76D8];
        goto LABEL_66;
      case 0x30:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1EB63ED68;
        v12 = MEMORY[0x1E69E7230];
        goto LABEL_66;
      case 0x31:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1EB63ED60;
        v12 = MEMORY[0x1E69E7290];
        goto LABEL_66;
      case 0x32:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1EB63ED58;
        v12 = MEMORY[0x1E69E72F0];
        goto LABEL_66;
      case 0x33:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1EB63ED50;
        v12 = MEMORY[0x1E69E7360];
        goto LABEL_66;
      case 0x34:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1ED726C50;
        v12 = MEMORY[0x1E69E6530];
        goto LABEL_66;
      case 0x35:
        sub_1AF0D5A54(v90, &v83);
        v11 = &qword_1ED723210;
        v12 = MEMORY[0x1E69E6448];
LABEL_66:
        sub_1AF7E5BA0(0, v11, v12, MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        v62 = MEMORY[0x1B2718E40](v89, v12);
        v64 = v68;
        goto LABEL_67;
      case 0x36:
        sub_1AF0D5A54(v90, &v83);
        v8 = &qword_1EB63F3E0;
        v9 = &unk_1ED72F770;
        v10 = MEMORY[0x1E69E7428];
        goto LABEL_55;
      case 0x37:
        sub_1AF0D5A54(v90, &v83);
        v8 = &qword_1EB6383B0;
        v9 = &qword_1ED72F740;
        v10 = MEMORY[0x1E69E7450];
        goto LABEL_55;
      case 0x38:
        sub_1AF0D5A54(v90, &v83);
        v8 = &qword_1ED7231E0;
        v9 = &qword_1ED72F6E0;
        v10 = MEMORY[0x1E69E74A8];
LABEL_55:
        v59 = v10;
        sub_1AF7E5B2C(0, v8, v9, v10);
        swift_dynamicCast();
        v60 = v89;
        sub_1AF7E5BF0(0, v9, sub_1AF43A0C8, MEMORY[0x1E69E6448], v59);
        v62 = MEMORY[0x1B2718E40](v60, v61);
        v64 = v63;
LABEL_67:

        *&v86 = v62;
        *(&v86 + 1) = v64;
        *&v94 = 91;
        *(&v94 + 1) = 0xE100000000000000;
        v87 = 123;
        v88 = 0xE100000000000000;
        sub_1AF4486E4();
        v69 = sub_1AFDFDEB8();
        v71 = v70;

        *&v86 = v69;
        *(&v86 + 1) = v71;
        *&v94 = 93;
        *(&v94 + 1) = 0xE100000000000000;
        v87 = 125;
        v88 = 0xE100000000000000;
        v7 = sub_1AFDFDEB8();

LABEL_68:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v90);
        return v7;
      default:
        if (*(&v91 + 1) >= 0x3BuLL)
        {
          v75 = v93;
          v94 = *(a1 + 32);
          v86 = v91;

          sub_1AF585778(&v86);
          v83 = v94;
          sub_1AF585778(&v83);
          v87 = v75;
          sub_1AF7E8894(&v87);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v90);
          return 0xD00000000000001FLL;
        }

        if (*(a2 + 64) == 1)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          *&v83 = 0;
          *(&v83 + 1) = 0xE000000000000000;
          sub_1AFDFE218();
          v86 = v83;
          MEMORY[0x1B2718AE0](0xD000000000000049, 0x80000001AFF352F0);
          v83 = v91;
          v84 = v92;
          *&v85 = v93;
          sub_1AFDFE458();
          v73 = v86;
          v74 = sub_1AFDFDA18();
          if (qword_1ED731058 != -1)
          {
            v76 = v74;
            swift_once();
            v74 = v76;
          }

          *&v83 = 0;
          sub_1AF0D4F18(v74, &v83, v73, *(&v73 + 1));
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v90);
        break;
    }
  }

  else
  {
    sub_1AF44CB60(&v83);
  }

  return 0x3E524F5252453CLL;
}

uint64_t sub_1AF7E8894(uint64_t a1)
{
  sub_1AF7E88F0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF7E88F0(uint64_t a1)
{
  if (!qword_1EB63EDA0)
  {
    sub_1AF445200();
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63EDA0);
    }
  }
}

uint64_t sub_1AF7E8BCC(uint64_t a1, uint64_t a2)
{
  sub_1AF7E5BA0(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF7E8C58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 <= 2u)
  {
    if (a4 >= 2u)
    {
      v8 = sub_1AF7DD0AC(a3, 2u);
      if (v8)
      {
        v9 = 0xE000000000000000;
      }

      else
      {
        v9 = 0xE100000000000000;
      }

      if ((v9 & 0x100000000000000) != 0)
      {
        v20 = (v8 & 1) == 0;
        v29 = 38;
        if (!v20)
        {
          v29 = 0;
        }

        v37 = v29;
        v39 = v9;
        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        v10 = v37;
        v11 = v39;
      }

      else
      {

        v10 = 0;
        v11 = 0xE000000000000000;
      }

      v35 = 0x20646165726874;
      v30 = sub_1AF7DCE50(a3, 2);
      MEMORY[0x1B2718AE0](v30);

      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v10, v11);
      goto LABEL_39;
    }

LABEL_16:
    v16 = sub_1AF7DD0AC(a3, a4);
    if (v16)
    {
      v17 = 0xE000000000000000;
    }

    else
    {
      v17 = 0xE100000000000000;
    }

    if ((v17 & 0x100000000000000) != 0)
    {
      v20 = (v16 & 1) == 0;
      v21 = 38;
      if (!v20)
      {
        v21 = 0;
      }

      v36 = v21;
      v38 = v17;
      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      v18 = v36;
      v19 = v38;
    }

    else
    {

      v18 = 0;
      v19 = 0xE000000000000000;
    }

    v22 = 0x2074736E6F63;
    if (sub_1AF7FE65C() == 0x6D6152726F6C6F43 && v23 == 0xE900000000000070)
    {
      goto LABEL_34;
    }

    v24 = sub_1AFDFEE28();

    if ((v24 & 1) == 0)
    {
      if (sub_1AF7FE65C() == 0x466576727543 && v26 == 0xE600000000000000)
      {
LABEL_34:

        goto LABEL_28;
      }

      v27 = sub_1AFDFEE28();

      if ((v27 & 1) == 0)
      {
        if (sub_1AF7FE65C() != 0x676E69727453 || v28 != 0xE600000000000000)
        {
          v32 = sub_1AFDFEE28();

          if (v32)
          {
            goto LABEL_28;
          }

          if (sub_1AF7FE65C() != 5001813 || v33 != 0xE300000000000000)
          {
            v34 = sub_1AFDFEE28();

            if ((v34 & 1) == 0)
            {
              v22 = 0;
            }

            goto LABEL_28;
          }
        }

        goto LABEL_34;
      }
    }

LABEL_28:
    v35 = v22;
    v25 = sub_1AF7DCE50(a3, a4);
    MEMORY[0x1B2718AE0](v25);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v18, v19);
LABEL_39:

    MEMORY[0x1B2718AE0](a1, a2);
    return v35;
  }

  if (a4 != 3)
  {
    goto LABEL_16;
  }

  v12 = sub_1AF7DD0AC(a3, 3u);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0x2074756F6E69;
  }

  if (v12)
  {
    v14 = 0xE000000000000000;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  v35 = 8287;
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
  MEMORY[0x1B2718AE0](v13, v14);

  v15 = sub_1AF7DCE50(a3, 3);
  MEMORY[0x1B2718AE0](v15);

  return v35;
}

uint64_t sub_1AF7E9044(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 <= 2u)
  {
    if (a4 >= 2u)
    {
      v7 = a3[1];
      v8 = v7 > 0x26;
      v9 = (1 << v7) & 0x43A0000000;
      v10 = v8 || v9 == 0;
      v11 = 0x20646165726874;
      if (v10)
      {
        v11 = 0;
      }

      v17 = v11;
      v12 = a3;
      v13 = 2;
      goto LABEL_13;
    }

LABEL_12:
    v17 = 0x2074736E6F63;
    v12 = a3;
    v13 = a4;
LABEL_13:
    v15 = sub_1AF7DCE50(v12, v13);
    MEMORY[0x1B2718AE0](v15);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    return v17;
  }

  if (a4 != 3)
  {
    goto LABEL_12;
  }

  v17 = 8287;
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
  v14 = sub_1AF7DCE50(a3, 3);
  MEMORY[0x1B2718AE0](v14);

  return v17;
}

uint64_t sub_1AF7E918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 <= 2u)
  {
    if (a11 >= 2u)
    {
      v59.n128_u64[1] = 0xE200000000000000;
      v57 = a1;
      v58 = a2;

      MEMORY[0x1B2718AE0](6121819, 0xE300000000000000);
      sub_1AF4486E4();
      v48 = sub_1AFDFDEB8();
      v15 = v14;

      sub_1AFDFE218();

      v53.n128_u64[0] = 544501353;
      v53.n128_u64[1] = 0xE400000000000000;
      MEMORY[0x1B2718AE0](a4, a5);
      MEMORY[0x1B2718AE0](0x3D20746E756F635FLL, 0xE900000000000020);
      v59.n128_u64[0] = a9;
      v16 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v16);

      MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
      v56 = v53;
      if ((a8 & 1) == 0)
      {
LABEL_34:
        sub_1AFDFE218();

        MEMORY[0x1B2718AE0](a4, a5);
        MEMORY[0x1B2718AE0](0x203B746E756F635FLL, 0xEF0A7B2029692B2BLL);
        MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF346D0);

        MEMORY[0x1B2718AE0](a4, a5);
        MEMORY[0x1B2718AE0](0x203D205D695BLL, 0xE600000000000000);
        MEMORY[0x1B2718AE0](v48, v15);

        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        MEMORY[0x1B2718AE0](2099465, 0xE300000000000000);

        MEMORY[0x1B2718AE0](8200201, 0xE300000000000000);
        return v56.n128_u64[0];
      }

      sub_1AF7FE2EC(&v57);
      sub_1AF7FCDD4(&v57, 1, &v53);
      sub_1AF444FBC(&v57);
      v17 = sub_1AF7E5CBC(&v53, a10);
      v19 = v18;

      sub_1AF761390(&v53);
      if (a9 <= 0)
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (!a9)
        {
LABEL_33:

          v53.n128_u64[0] = 0;
          v53.n128_u64[1] = 0xE000000000000000;
          sub_1AFDFE218();
          v50 = v53;
          MEMORY[0x1B2718AE0](0x6461657268742009, 0xE900000000000020);
          sub_1AF7FE2EC(&v59);
          v53 = v59;
          v54 = v60;
          v55 = v61;
          sub_1AFDFE458();
          sub_1AF444FBC(&v59);
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          MEMORY[0x1B2718AE0](a4, a5);
          MEMORY[0x1B2718AE0](0x205D5B706D65545FLL, 0xEB000000007B203DLL);
          v53.n128_u64[0] = v20;
          sub_1AF7E5BA0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_1AF488088();
          v45 = sub_1AFDFCD98();
          v47 = v46;

          MEMORY[0x1B2718AE0](v45, v47);

          MEMORY[0x1B2718AE0](670589, 0xE300000000000000);
          MEMORY[0x1B2718AE0](v50.n128_u64[0], v50.n128_u64[1]);

          v53.n128_u64[0] = 0;
          v53.n128_u64[1] = 0xE000000000000000;
          sub_1AFDFE218();
          v52 = v53;
          MEMORY[0x1B2718AE0](0x6461657268742009, 0xE900000000000020);
          sub_1AF7FE2EC(&v53);
          sub_1AFDFE458();
          sub_1AF444FBC(&v53);
          MEMORY[0x1B2718AE0](8234, 0xE200000000000000);
          MEMORY[0x1B2718AE0](a4, a5);
          MEMORY[0x1B2718AE0](639647008, 0xE400000000000000);
          MEMORY[0x1B2718AE0](a4, a5);
          MEMORY[0x1B2718AE0](0x5D305B706D65545FLL, 0xEA00000000000A3BLL);
          MEMORY[0x1B2718AE0](v52.n128_u64[0], v52.n128_u64[1]);

          goto LABEL_34;
        }

        *(MEMORY[0x1E69E7CC0] + 32) = v17;
        v21 = v20 + 4;
        v20[5] = v19;
      }

      else
      {
        v20 = sub_1AFDFD488();
        v20[2] = a9;
        v20[4] = v17;
        v21 = v20 + 4;
        v20[5] = v19;
        if (a9 == 1)
        {
LABEL_32:

          goto LABEL_33;
        }
      }

      v43 = a9 - 1;
      v44 = v21 + 3;
      do
      {
        *(v44 - 1) = v17;
        *v44 = v19;

        v44 += 2;
        --v43;
      }

      while (v43);
      goto LABEL_32;
    }

LABEL_10:
    v59.n128_u64[1] = 0xE200000000000000;
    v57 = a1;
    v58 = a2;

    MEMORY[0x1B2718AE0](6121819, 0xE300000000000000);
    sub_1AF4486E4();
    v48 = sub_1AFDFDEB8();
    v15 = v30;

    sub_1AFDFE218();

    v53.n128_u64[0] = 544501353;
    v53.n128_u64[1] = 0xE400000000000000;
    MEMORY[0x1B2718AE0](a4, a5);
    MEMORY[0x1B2718AE0](0x3D20746E756F635FLL, 0xE900000000000020);
    v59.n128_u64[0] = a9;
    v31 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v31);

    MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
    v56 = v53;
    if ((a8 & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_1AF7FE2EC(&v57);
    sub_1AF7FCDD4(&v57, 1, &v53);
    sub_1AF444FBC(&v57);
    if (a11 > 2u)
    {
      if (a11 == 3)
      {
        v32 = sub_1AF7DD4B4(&v53, a10, 0, 0, 3);
        goto LABEL_17;
      }
    }

    else if (a11 >= 2u)
    {
      v32 = sub_1AF7E5CBC(&v53, a10);
      goto LABEL_17;
    }

    v32 = sub_1AF7E0118(&v53, a10, 0, 0, a11);
LABEL_17:
    v34 = v32;
    v35 = v33;

    sub_1AF761390(&v53);
    if (a9 <= 0)
    {
      v36 = MEMORY[0x1E69E7CC0];
      if (!a9)
      {
LABEL_25:

        v53.n128_u64[0] = 0;
        v53.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v49 = v53;
        MEMORY[0x1B2718AE0](8201, 0xE200000000000000);
        sub_1AF7FE2EC(&v59);
        v53 = v59;
        v54 = v60;
        v55 = v61;
        sub_1AFDFE458();
        sub_1AF444FBC(&v59);
        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](a4, a5);
        MEMORY[0x1B2718AE0](0x205D5B706D65545FLL, 0xEB000000007B203DLL);
        v53.n128_u64[0] = v36;
        sub_1AF7E5BA0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1AF488088();
        v40 = sub_1AFDFCD98();
        v42 = v41;

        MEMORY[0x1B2718AE0](v40, v42);

        MEMORY[0x1B2718AE0](670589, 0xE300000000000000);
        MEMORY[0x1B2718AE0](v49.n128_u64[0], v49.n128_u64[1]);

        v53.n128_u64[0] = 0;
        v53.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v51 = v53;
        MEMORY[0x1B2718AE0](8201, 0xE200000000000000);
        sub_1AF7FE2EC(&v53);
        sub_1AFDFE458();
        sub_1AF444FBC(&v53);
        MEMORY[0x1B2718AE0](8234, 0xE200000000000000);
        MEMORY[0x1B2718AE0](a4, a5);
        MEMORY[0x1B2718AE0](639647008, 0xE400000000000000);
        MEMORY[0x1B2718AE0](a4, a5);
        MEMORY[0x1B2718AE0](0x5D305B706D65545FLL, 0xEA00000000000A3BLL);
        MEMORY[0x1B2718AE0](v51.n128_u64[0], v51.n128_u64[1]);

        goto LABEL_34;
      }

      *(MEMORY[0x1E69E7CC0] + 32) = v34;
      v37 = v36 + 4;
      v36[5] = v35;
    }

    else
    {
      v36 = sub_1AFDFD488();
      v36[2] = a9;
      v36[4] = v34;
      v37 = v36 + 4;
      v36[5] = v35;
      if (a9 == 1)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v38 = a9 - 1;
    v39 = v37 + 3;
    do
    {
      *(v39 - 1) = v34;
      *v39 = v35;

      v39 += 2;
      --v38;
    }

    while (v38);
    goto LABEL_24;
  }

  if (a11 != 3)
  {
    goto LABEL_10;
  }

  if (a8)
  {
    v53.n128_u64[0] = 0;
    v53.n128_u64[1] = 0xE000000000000000;
    sub_1AFDFE218();

    v59.n128_u64[0] = 544499052;
    v59.n128_u64[1] = 0xE400000000000000;
    MEMORY[0x1B2718AE0](a4, a5);
    MEMORY[0x1B2718AE0](5972026, 0xE300000000000000);
    sub_1AF7FE2EC(&v53);
    v26 = sub_1AF7DCE50(&v53, 3);
    v28 = v27;
    sub_1AF444FBC(&v53);
    MEMORY[0x1B2718AE0](v26, v28);

    MEMORY[0x1B2718AE0](540876893, 0xE400000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x207B2070616D2ELL, 0xE700000000000000);
    MEMORY[0x1B2718AE0](a6, a7);
    MEMORY[0x1B2718AE0](32032, 0xE200000000000000);
    return v59.n128_u64[0];
  }

  else
  {
    sub_1AFDFE218();

    v53.n128_u64[1] = a5;
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x207B2070616D2ELL, 0xE700000000000000);
    MEMORY[0x1B2718AE0](a6, a7);
    MEMORY[0x1B2718AE0](32032, 0xE200000000000000);
    return a4;
  }
}

uint64_t sub_1AF7E9E28(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, char a9, unsigned __int8 a10)
{
  if (a9)
  {
    v18 = sub_1AF7DBFF8(a4, a5, a6, 0, a10);
  }

  else
  {
    sub_1AF687F90(*a4, a4[1], a4[2], a4[3], a4[4]);

    sub_1AF444FBC(a4);
    v18 = a5;
    v19 = a6;
  }

  if (a10 > 2u)
  {
    if (a10 == 3)
    {
      v20 = *(a1 + 1);
      if (v20 == 37)
      {
        v21 = v18;
        v22 = v19;
        v42 = HIBYTE(a8) & 0xF;
        if ((a8 & 0x2000000000000000) == 0)
        {
          v42 = a7 & 0xFFFFFFFFFFFFLL;
        }

        if (v42)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          *&v52 = 0;
          *(&v52 + 1) = 0xE000000000000000;
          sub_1AFDFE218();
          v59 = v52;
          MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF35530);
          v43 = a1[1];
          v52 = *a1;
          v53 = v43;
          v54 = *(a1 + 4);
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](0xD000000000000027, 0x80000001AFF35560);
          MEMORY[0x1B2718AE0](a7, a8);
          v44 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v49 = v44;
            swift_once();
            v44 = v49;
          }

          *&v52 = 0;
          sub_1AF0D4F18(v44, &v52, v59, *(&v59 + 1));
        }

        *&v52 = 0;
        *(&v52 + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        v26 = 0x80000001AFF354F0;
        v27 = 0xD000000000000016;
      }

      else
      {
        if (v20 != 28)
        {
          goto LABEL_20;
        }

        v21 = v18;
        v22 = v19;
        v23 = HIBYTE(a8) & 0xF;
        if ((a8 & 0x2000000000000000) == 0)
        {
          v23 = a7 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          *&v52 = 0;
          *(&v52 + 1) = 0xE000000000000000;
          sub_1AFDFE218();
          v59 = v52;
          MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF35530);
          v24 = a1[1];
          v52 = *a1;
          v53 = v24;
          v54 = *(a1 + 4);
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](0xD000000000000027, 0x80000001AFF35560);
          MEMORY[0x1B2718AE0](a7, a8);
          v25 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v48 = v25;
            swift_once();
            v25 = v48;
          }

          *&v52 = 0;
          sub_1AF0D4F18(v25, &v52, v59, *(&v59 + 1));
        }

        *&v52 = 0;
        *(&v52 + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        v26 = 0x80000001AFF35510;
        v27 = 0xD00000000000001BLL;
      }

      *&v52 = v27;
      *(&v52 + 1) = v26;
      MEMORY[0x1B2718AE0](v21, v22);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      MEMORY[0x1B2718AE0](a2, a3);
      v29 = 41;
      v30 = 0xE100000000000000;
      goto LABEL_21;
    }
  }

  else if (a10 >= 2u)
  {
    goto LABEL_20;
  }

  v28 = *(a1 + 1);
  if (v28 < 0x1C || v28 - 29 < 3)
  {
    goto LABEL_20;
  }

  if (v28 == 28)
  {
    v32 = v18;
    v33 = v19;
    v34 = HIBYTE(a8) & 0xF;
    if ((a8 & 0x2000000000000000) == 0)
    {
      v34 = a7 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v59 = v52;
      MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF35530);
      v35 = a1[1];
      v52 = *a1;
      v53 = v35;
      v54 = *(a1 + 4);
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0xD000000000000027, 0x80000001AFF35560);
      MEMORY[0x1B2718AE0](a7, a8);
      v36 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v50 = v36;
        swift_once();
        v36 = v50;
      }

      *&v52 = 0;
      sub_1AF0D4F18(v36, &v52, v59, *(&v59 + 1));
    }

    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    v37 = 0x80000001AFF35510;
    v38 = 0xD00000000000001BLL;
LABEL_34:
    *&v52 = v38;
    *(&v52 + 1) = v37;
    MEMORY[0x1B2718AE0](v32, v33);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    MEMORY[0x1B2718AE0](a2, a3);
    v39 = 0xE100000000000000;
    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    if (a10 == 3)
    {
      v40 = 0;
    }

    else
    {
      v40 = 59;
    }

    if (a10 == 3)
    {
      v39 = 0xE000000000000000;
    }

    v41 = v39;
    goto LABEL_52;
  }

  if (v28 - 34 < 2)
  {
    *&v52 = v18;
    *(&v52 + 1) = v19;
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    *&v59 = a7;
    *(&v59 + 1) = a8;
    v57 = 1953853220;
    v58 = 0xE400000000000000;
    v55 = a5;
    v56 = a6;
    sub_1AF4486E4();
    v40 = sub_1AFDFDEB8();
LABEL_52:
    MEMORY[0x1B2718AE0](v40, v41);

    return v52;
  }

  if (v28 == 37)
  {
    v32 = v18;
    v33 = v19;
    v45 = HIBYTE(a8) & 0xF;
    if ((a8 & 0x2000000000000000) == 0)
    {
      v45 = a7 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v59 = v52;
      MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF35530);
      v46 = a1[1];
      v52 = *a1;
      v53 = v46;
      v54 = *(a1 + 4);
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0xD000000000000027, 0x80000001AFF35560);
      MEMORY[0x1B2718AE0](a7, a8);
      v47 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v51 = v47;
        swift_once();
        v47 = v51;
      }

      *&v52 = 0;
      sub_1AF0D4F18(v47, &v52, v59, *(&v59 + 1));
    }

    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    v37 = 0x80000001AFF354F0;
    v38 = 0xD000000000000016;
    goto LABEL_34;
  }

LABEL_20:
  *&v52 = v18;
  *(&v52 + 1) = v19;
  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  v29 = a7;
  v30 = a8;
LABEL_21:
  MEMORY[0x1B2718AE0](v29, v30);
  return v52;
}

unint64_t sub_1AF7EA6B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v8 = a8;
  if (a7)
  {
    v16 = sub_1AF7DBFF8(a4, a5, a6, 0, a8);
  }

  else
  {
    sub_1AF687F90(*a4, a4[1], a4[2], a4[3], a4[4]);

    sub_1AF444FBC(a4);
    v16 = a5;
  }

  if (v8 > 2u)
  {
    if (v8 != 3)
    {
      goto LABEL_12;
    }

    if ((a7 & 1) == 0)
    {
      v18 = *(a1 + 8);
      if (v18 == 37)
      {

        sub_1AFDFE218();

        v19 = 0xD000000000000016;
        goto LABEL_33;
      }

      if (v18 == 28)
      {

        sub_1AFDFE218();

        v19 = 0xD00000000000001BLL;
LABEL_33:
        v26 = v19;
        MEMORY[0x1B2718AE0](a5, a6);
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        MEMORY[0x1B2718AE0](a2, a3);
        v17 = 41;
        goto LABEL_34;
      }
    }

    v26 = v16;
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    v17 = a2;
    v24 = a3;
LABEL_35:
    MEMORY[0x1B2718AE0](v17, v24);
    return v26;
  }

  if (v8 >= 2u)
  {
    v26 = v16;
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    MEMORY[0x1B2718AE0](a2, a3);
    v17 = 59;
LABEL_34:
    v24 = 0xE100000000000000;
    goto LABEL_35;
  }

LABEL_12:
  if ((a7 & 1) == 0)
  {
    v22 = *(a1 + 8);
    if ((v22 - 34) < 2)
    {

      sub_1AFDFE218();

      v23 = 0xD000000000000017;
    }

    else if (v22 == 37)
    {

      sub_1AFDFE218();

      v23 = 0xD000000000000016;
    }

    else
    {
      if (v22 != 28)
      {
        goto LABEL_13;
      }

      sub_1AFDFE218();

      v23 = 0xD00000000000001BLL;
    }

    v26 = v23;
    MEMORY[0x1B2718AE0](a5, a6);
    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    MEMORY[0x1B2718AE0](a2, a3);
    v21 = 0xE100000000000000;
    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    if (v8 == 3)
    {
      v20 = 0;
    }

    else
    {
      v20 = 59;
    }

    if (v8 == 3)
    {
      v21 = 0xE000000000000000;
    }

    goto LABEL_31;
  }

LABEL_13:
  v26 = v16;
  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](a2, a3);
  if (v8 == 3)
  {
    v20 = 0;
  }

  else
  {
    v20 = 59;
  }

  if (v8 == 3)
  {
    v21 = 0xE000000000000000;
  }

  else
  {
    v21 = 0xE100000000000000;
  }

LABEL_31:
  MEMORY[0x1B2718AE0](v20, v21);

  return v26;
}

uint64_t sub_1AF7EAA68(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AFDFE368();
    v4 = 0;
    v5 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    v7 = (v6 + 63) >> 6;
    v8 = (a1 + 64);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (v10)
      {
        break;
      }

      v4 -= 64;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v6 = __clz(__rbit64(v9)) - v4;
LABEL_7:
    for (i = 0; i != v2; ++i)
    {
      v13 = *(a1 + 36);

      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      v14 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (-2 << v6)) != 0)
      {
        v12 = __clz(__rbit64(*(v5 + 8 * (v6 >> 6)) & (-2 << v6))) | v6 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 1 << *(a1 + 32);
        v15 = v14 << 6;
        v16 = v14 + 1;
        v17 = (a1 + 72 + 8 * v14);
        while (v16 < (v12 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1AF0FBAE8(v6, v13, 0);
            v12 = __clz(__rbit64(v18)) + v15;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v6, v13, 0);
      }

LABEL_9:
      v6 = v12;
    }

    return v20;
  }

  return result;
}

unint64_t sub_1AF7EAC20(unint64_t result, uint64_t *a2)
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v25 = v3 & 0xC000000000000001;
      v20 = v4;
      v21 = v3;
      do
      {
        if (v25)
        {
          v7 = MEMORY[0x1B2719C70](v5, v3);
        }

        else
        {
          v7 = *(v3 + 8 * v5 + 32);
        }

        v22 = *(v7 + 16);
        v24 = *(v7 + 24);

        MEMORY[0x1B2718AE0](58, 0xE100000000000000);
        v8 = sub_1AF776F1C();
        MEMORY[0x1B2718AE0](v8);

        v9 = v22;
        if (*(*a2 + 16))
        {
          sub_1AF419914(v22, v24);
          if (v10)
          {

            sub_1AF7774DC(v7);

            goto LABEL_6;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *a2;
        v23 = *a2;
        *a2 = 0x8000000000000000;
        v14 = sub_1AF419914(v9, v24);
        v15 = v13;
        v16 = *(v12 + 16) + ((v13 & 1) == 0);
        if (*(v12 + 24) >= v16)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v19 = v23;
            if (v13)
            {
              goto LABEL_18;
            }
          }

          else
          {
            sub_1AF84C5F4();
            v19 = v23;
            if (v15)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          sub_1AF83B2B8(v16, isUniquelyReferenced_nonNull_native);
          v17 = sub_1AF419914(v9, v24);
          if ((v15 & 1) != (v18 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v14 = v17;
          v19 = v23;
          if (v15)
          {
LABEL_18:
            *(v19[7] + 8 * v14) = v7;

            goto LABEL_5;
          }
        }

        v19[(v14 >> 6) + 8] |= 1 << v14;
        v6 = (v19[6] + 16 * v14);
        *v6 = v9;
        v6[1] = v24;
        *(v19[7] + 8 * v14) = v7;
        ++v19[2];
LABEL_5:
        *a2 = v19;

        v4 = v20;
        v3 = v21;
LABEL_6:
        ++v5;
      }

      while (v4 != v5);
    }
  }

  return result;
}

uint64_t sub_1AF7EAEA8(void *a1, void *a2, unint64_t a3, void *a4, unint64_t a5, uint64_t *a6, _BYTE *a7, uint64_t *a8)
{
  v99 = a7;
  v110 = sub_1AFDFBCE8();
  v97 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v104 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1B27189E0](*a1, a1[1], a1[2], a1[3], v15);
  v19 = v18;
  v108 = v17;
  v109 = v18;
  v100 = a2;
  v101 = a3;
  v106 = a2;
  v107 = a3;
  sub_1AF770DF0();
  sub_1AF770E44();
  if ((sub_1AFDFCD68() & 1) == 0)
  {
    v108 = v17;
    v109 = v19;
    v106 = 12079;
    v107 = 0xE200000000000000;
    if (sub_1AFDFCD68())
    {
    }
  }

  v98 = a6;
  v108 = v17;
  v109 = v19;
  v106 = v100;
  v107 = v101;
  if ((sub_1AFDFCD68() & 1) == 0)
  {
    v47 = v98[1];
    if (v47)
    {
      v48 = *v98;
      v108 = v17;
      v109 = v19;
      v106 = 8995;
      v107 = 0xE200000000000000;
      sub_1AF4486E4();

      *v99 = (*v99 | sub_1AFDFDF18()) & 1;
      v108 = v17;
      v109 = v19;
      v96 = v19;
      v106 = 8995;
      v107 = 0xE200000000000000;
      strcpy(v105, "_%SCRIPT_ID%");
      BYTE5(v105[1]) = 0;
      HIWORD(v105[1]) = -5120;
      v108 = sub_1AFDFDEB8();
      v109 = v49;
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v51 = v108;
      v50 = v109;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = a8;
      v54 = isUniquelyReferenced_nonNull_native;
      v106 = *v53;
      v55 = v106;
      v56 = v53;
      *v53 = 0x8000000000000000;
      v58 = sub_1AF419914(v48, v47);
      v59 = v57;
      v60 = *(v55 + 16) + ((v57 & 1) == 0);
      if (*(v55 + 24) < v60)
      {
        sub_1AF8357A0(v60, v54);
        v61 = sub_1AF419914(v48, v47);
        if ((v59 & 1) != (v62 & 1))
        {
LABEL_43:
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

        v58 = v61;
        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_20:
        v64 = (*(v106 + 56) + 16 * v58);
        v65 = *v64;
        v66 = v64[1];
LABEL_34:
        v108 = v65;
        v109 = v66;
        MEMORY[0x1B2718AE0](v51, v50);

        v88 = v109;
        if (v109)
        {
          v89 = v108;
          if (v59)
          {

            v90 = (*(v106 + 56) + 16 * v58);
            *v90 = v89;
            v90[1] = v88;
          }

          else
          {
            sub_1AF8438B8(v58, v48, v47, v108, v109, v106);
          }
        }

        else
        {

          if (v59)
          {
            v91 = v106;
            sub_1AF585778(*(v106 + 48) + 16 * v58);
            sub_1AF6B3DD8(v58, v91);
          }
        }

        *v56 = v106;
        return result;
      }

      if (v54)
      {
        if (v57)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1AF849704();
        if (v59)
        {
          goto LABEL_20;
        }
      }

LABEL_33:
      v65 = 0;
      v66 = 0;
      goto LABEL_34;
    }
  }

  v108 = v17;
  v109 = v19;
  v106 = a4;
  v107 = a5;
  v20 = sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
    v108 = v17;
    v109 = v19;
    v106 = a4;
    v107 = a5;
    v21 = sub_1AFDFDE98();
    v22 = v21[5];
    v108 = v21[4];
    v109 = v22;

    v95 = sub_1AFDFD1E8();
    v24 = v23;

    v96 = v24;
    v26 = v21[6];
    v25 = v21[7];

    v108 = v26;
    v109 = v25;
    v108 = sub_1AFDFD1E8();
    v109 = v27;
    v103 = v20;
    v28 = sub_1AFDFDF28();

    v29 = *(v28 + 16);
    if (v29)
    {
      v94 = a8;
      v106 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v29, 0);
      v30 = v106;
      v102 = (v97 + 8);
      v93[1] = v28;
      v31 = (v28 + 56);
      do
      {
        v33 = *(v31 - 3);
        v32 = *(v31 - 2);
        v34 = *(v31 - 1);
        v35 = *v31;

        v108 = MEMORY[0x1B27189E0](v33, v32, v34, v35);
        v109 = v36;
        v105[0] = &unk_1F24F7AB8;
        sub_1AF7EF6A8(&qword_1EB63EDE0, 255, MEMORY[0x1E69680B8], MEMORY[0x1E69680D0]);
        sub_1AF7EFA10(0, &qword_1EB63EDE8, MEMORY[0x1E69E7B10], MEMORY[0x1E69E62F8]);
        sub_1AF7EFA60();
        v37 = v30;
        v38 = v104;
        v39 = v110;
        sub_1AFDFE058();
        v40 = sub_1AFDFDEA8();
        v42 = v41;

        v43 = v38;
        v30 = v37;
        (*v102)(v43, v39);

        v106 = v37;
        v45 = v37[2];
        v44 = v37[3];
        if (v45 >= v44 >> 1)
        {
          sub_1AFC05CE4(v44 > 1, v45 + 1, 1);
          v30 = v106;
        }

        *(v30 + 16) = v45 + 1;
        v46 = v30 + 16 * v45;
        *(v46 + 32) = v40;
        *(v46 + 40) = v42;
        v31 += 4;
        --v29;
      }

      while (v29);

      a8 = v94;
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    v17 = v95;
    v19 = v96;
  }

  else
  {
    v30 = 0;
  }

  v103 = v30;
  v67 = v98[1];
  if (v67 && (*v99 & 1) == 0)
  {
    v92 = *v98;
    v108 = 0;
    v109 = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF35730);
    MEMORY[0x1B2718AE0](v92, v67);
    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF35760);
    goto LABEL_42;
  }

  v108 = v17;
  v109 = v19;
  v106 = v100;
  v107 = v101;
  v68 = sub_1AFDFDE98();
  v70 = *(v68 + 48);
  v69 = *(v68 + 56);

  v108 = v70;
  v109 = v69;
  v108 = sub_1AFDFD1E8();
  v109 = v71;
  v106 = &unk_1F24F7AE0;
  sub_1AF7EF6A8(&qword_1EB63EDE0, 255, MEMORY[0x1E69680B8], MEMORY[0x1E69680D0]);
  sub_1AF7EFA10(0, &qword_1EB63EDE8, MEMORY[0x1E69E7B10], MEMORY[0x1E69E62F8]);
  sub_1AF7EFA60();
  v72 = v104;
  v73 = v110;
  sub_1AFDFE058();
  v74 = sub_1AFDFDEA8();
  v76 = v75;
  (*(v97 + 8))(v72, v73);

  v77 = v98;
  *v98 = v74;
  v77[1] = v76;

  if (*(*a8 + 16))
  {

    sub_1AF419914(v74, v76);
    v79 = v78;

    v80 = v103;
    if (v79)
    {
      v108 = 0;
      v109 = 0xE000000000000000;
      sub_1AFDFE218();

      v108 = 0xD000000000000020;
      v109 = 0x80000001AFF35780;
      v82 = *v77;
      v81 = v77[1];

      MEMORY[0x1B2718AE0](v82, v81);

LABEL_42:
      sub_1AFDFE518();
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {

    v80 = v103;
  }

  v83 = *v77;
  v84 = v77[1];

  v85 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *a8;
  *a8 = 0x8000000000000000;
  sub_1AF854CE8(0, 0xE000000000000000, v83, v84, v85);

  *a8 = v108;
  if (v80)
  {
    v87 = *v77;
    v86 = v77[1];

    sub_1AF826060(v80, v87, v86);
  }

  *v99 = 0;
  return result;
}

uint64_t sub_1AF7EB91C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7374657070696E73;
  }

  else
  {
    v3 = 0x726F6C6F63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7374657070696E73;
  }

  else
  {
    v5 = 0x726F6C6F63;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF7EB9C0()
{
  if (*v0)
  {
    return 0x7374657070696E73;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_1AF7EB9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7374657070696E73 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF7EBAD0(uint64_t a1)
{
  v2 = sub_1AF7EF4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7EBB0C(uint64_t a1)
{
  v2 = sub_1AF7EF4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF7EBB48(uint64_t a1)
{
  v2 = v1;
  v30[1] = *v1;
  v4 = sub_1AFDFCF78();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1AFDFC128();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  v2[3] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v2[4] = &unk_1F24F5638;
  v2[5] = v12;
  v2[6] = sub_1AF432AA0(v12);
  v2[7] = 0;
  v13 = *(v9 + 16);
  v32 = v8;
  v13(v11, a1, v8);
  sub_1AFDFC058();
  v38 = sub_1AFDFC028();
  v39 = v14;
  v36 = 1600285036;
  v37 = 0xE400000000000000;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1AF4486E4();
  v15 = sub_1AFDFDEB8();
  v17 = v16;

  v2[2] = v15;
  v2[3] = v17;

  sub_1AFDFCF58();
  v33 = a1;
  sub_1AFDFCE98();
  sub_1AFDFCF58();
  v18 = sub_1AFDFCF08();
  v19 = v6;
  v21 = v20;
  (*(v31 + 8))(v19, v4);
  sub_1AFDFBBB8();
  swift_allocObject();
  sub_1AFDFBBA8();
  if (v21 >> 60 == 15)
  {

    v23 = v32;
    v25 = *(v9 + 8);
    v25(v33, v32);
    v25(v11, v23);
    *(v2 + 1) = xmmword_1AFE78730;
  }

  else
  {
    sub_1AF7EF6A8(&qword_1EB63EDD8, v22, _s7LibraryCMa, byte_1AFE787A4);
    sub_1AFDFBB88();
    v24 = v32;
    v31 = 0;

    sub_1AF587E7C(v18, v21);
    v27 = *(v9 + 8);
    v27(v33, v24);
    v27(v11, v24);
    v28 = v38;
    v2[4] = *(v38 + 32);

    v29 = *(v28 + 40);

    v2[5] = v29;
  }

  return v2;
}

uint64_t sub_1AF7EC200()
{
  sub_1AF7EC370();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    v2 = sub_1AFDFE108();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2719C70](i, v1);
    }

    else
    {
    }

    sub_1AF77957C();
  }

LABEL_9:
  sub_1AF7EC824(sub_1AF78037C);
  sub_1AF7EC4C8();
  v6 = MEMORY[0x1E69E7CC8];

  sub_1AF7EAC20(v4, &v6);

  *(v0 + 40) = sub_1AF7EAA68(v6);

  sub_1AF7EC824(sub_1AF777D78);
  return sub_1AF7EC824(sub_1AF77E684);
}

void sub_1AF7EC370()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
    v2 = sub_1AFDFE108();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = 0;
    do
    {
      v4 = MEMORY[0x1B2719C70](v3++, v1);
      v5 = v0[3];
      v4[42] = v0[2];
      v4[43] = v5;

      v4[44] = v0[4];

      swift_unknownObjectRelease();
    }

    while (v2 != v3);
  }

  else
  {

    v6 = 32;
    do
    {
      v7 = *(v1 + v6);
      v8 = v0[3];
      v7[42] = v0[2];
      v7[43] = v8;

      v7[44] = v0[4];

      v6 += 8;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1AF7EC4C8()
{
  v1 = v0;
  _s7ContextCMa(0);
  swift_allocObject();
  v2 = sub_1AF795D38(0);
  v3 = *(v0 + 40);
  v23[0] = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    v4 = sub_1AFDFE108();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        if (!*(MEMORY[0x1B2719C70](v6, v3) + 144))
        {
LABEL_9:

          goto LABEL_6;
        }
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);

        if (!*(v7 + 144))
        {
          goto LABEL_9;
        }
      }

      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
LABEL_6:
      if (v4 == ++v6)
      {
        v8 = v23[0];
        goto LABEL_14;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_14:

  v9 = *(v0 + 40);
  v23[0] = v5;
  if (v9 >> 62)
  {
    v10 = sub_1AFDFE108();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v8;
  if (!v10)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (*(MEMORY[0x1B2719C70](i, v9) + 144))
      {
LABEL_18:

        continue;
      }
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);

      if (*(v12 + 144))
      {
        goto LABEL_18;
      }
    }

    sub_1AFDFE328();
    sub_1AFDFE398();
    sub_1AFDFE3A8();
    sub_1AFDFE348();
  }

  v13 = v23[0];
LABEL_27:

  *(v1 + 40) = v13;

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v14 = sub_1AFDFE108();
    if (!v14)
    {
      goto LABEL_44;
    }

LABEL_30:
    v15 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B2719C70](v15, v22);
        v17 = *(v16 + 144);
        if (v17)
        {
LABEL_35:
          v18 = *(v17 + 16);

          if (v18)
          {
            v19 = (v17 + 40);
            do
            {
              v20 = *v19;
              v23[0] = *(v19 - 1);
              v23[1] = v20;

              sub_1AF7ED298(v23, v16, v2, v1);

              v19 += 2;
              --v18;
            }

            while (v18);
          }

          goto LABEL_32;
        }
      }

      else
      {
        v16 = *(v22 + 32 + 8 * v15);

        v17 = *(v16 + 144);
        if (v17)
        {
          goto LABEL_35;
        }
      }

LABEL_32:
      if (++v15 == v14)
      {
        goto LABEL_44;
      }
    }
  }

  v14 = *(v8 + 16);
  if (v14)
  {
    goto LABEL_30;
  }

LABEL_44:
}

uint64_t sub_1AF7EC824(void (*a1)(uint64_t))
{
  v3 = *(v1 + 40);
  if (v3 >> 62)
  {
    v4 = sub_1AFDFE108();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2719C70](i, v3);
      }

      else
      {
      }

      a1(v6);
    }
  }
}

uint64_t sub_1AF7EC8F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 48);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  while (v7)
  {
LABEL_9:
    v12 = *(v22 + 16);
    v11 = *(v22 + 24);

    v13 = sub_1AF7F9D38(a1, a2, a3, v12, v11);
    v15 = v14;
    v17 = v16;

    if (v17)
    {
      sub_1AF7EF6F0(v25, v24, v23);
      v24 = v15;
      v25 = v13;
      v23 = v17;
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9++ + 72);
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  return v25;
}

uint64_t sub_1AF7ECA60(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(v2 + 48);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(v5 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v5 + 56) + 8 * v13);

    sub_1AF7ECB94(v15, v16, v17, a1, v2, v3);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10++ + 72);
    if (v8)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF7ECB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6)
{
  v70 = a6;
  v69 = a5;
  v56 = a4;
  v67 = a1;
  v68 = a2;
  sub_1AF0D4E74(0);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1AFDFC298();
  v9 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1AF432800(MEMORY[0x1E69E7CC0]);
  v54 = a3;
  v11 = *(a3 + 40);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  v60 = "s.initialize: for ";
  v61 = "includeFunctionsMapByLanguage";
  v58 = (v9 + 32);
  v59 = ") ignoring template ";
  v16 = swift_bridgeObjectRetain_n();
  v17 = 0;
  v72 = 0;
  v57 = xmmword_1AFE431C0;
  v62 = v11;
  v71 = v15;
  while (v14)
  {
LABEL_8:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v17 << 6);
    v21 = (*(v11 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v11 + 56) + 8 * v20);
    v25 = *(v24 + 24);
    v26 = *(v24 + 32);
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v74 = &v53;
      v75 = v23;
      v28 = *v56;
      v76 = v25;
      v77 = v26;
      MEMORY[0x1EEE9AC00](v16);
      *(&v53 - 2) = &v76;
      v29 = v22;

      v30 = v72;
      v31 = sub_1AF7B9518(sub_1AF771190, (&v53 - 4), v28);
      v72 = v30;

      if (v31)
      {
        v22 = v29;
        v23 = v75;
        goto LABEL_14;
      }

      v48 = *(v24 + 24);
      v49 = *(v24 + 32);

      sub_1AF6B0504(v48, v49);

      v50 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v50;
      sub_1AF856D3C(v24, v75, v29, isUniquelyReferenced_nonNull_native);

      v16 = swift_bridgeObjectRelease_n();
      v55 = v76;
      v15 = v71;
    }

    else
    {

LABEL_14:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v76 = 0;
      v77 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000022, v61 | 0x8000000000000000);
      v32 = *(v69 + 16);
      v33 = *(v69 + 24);

      MEMORY[0x1B2718AE0](v32, v33);

      MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
      if (v70)
      {
        if (v70 == 1)
        {
          v34 = 0x6E69746C697542;
        }

        else
        {
          v34 = 1919251285;
        }

        if (v70 == 1)
        {
          v35 = 0xE700000000000000;
        }

        else
        {
          v35 = 0xE400000000000000;
        }
      }

      else
      {
        v35 = 0xE500000000000000;
        v34 = 0x6C61636F4CLL;
      }

      MEMORY[0x1B2718AE0](v34, v35);

      MEMORY[0x1B2718AE0](0xD000000000000014, v60 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](v67, v68);
      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v23, v22);
      MEMORY[0x1B2718AE0](0xD000000000000024, v59 | 0x8000000000000000);
      v36 = *(v24 + 24);
      v37 = *(v24 + 32);
      v74 = v24;

      MEMORY[0x1B2718AE0](v36, v37);

      MEMORY[0x1B2718AE0](11815, 0xE200000000000000);
      v38 = v76;
      v39 = v77;
      v40 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v75 = v22;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v41 = qword_1ED73B890;
      sub_1AF7EF734(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
      v42 = swift_allocObject();
      *(v42 + 16) = v57;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1AF0D544C();
      *(v42 + 32) = v38;
      *(v42 + 40) = v39;

      sub_1AFDFC4C8(v40, &dword_1AF0CE000, v41, "%{public}s", 10, 2, v42);

      v43 = v63;
      sub_1AFDFC288();
      v44 = v65;
      v73 = v66[12];
      v45 = v66[16];
      v46 = v38;
      v47 = &v65[v66[20]];
      (*v58)(v65, v43, v64);
      *(v44 + v73) = v40;
      *(v44 + v45) = 0;
      *v47 = v46;
      *(v47 + 1) = v39;

      sub_1AFDFC608();

      sub_1AF0D54A0(v44);

      v11 = v62;
      v15 = v71;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (v17 + 1 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17++ + 72);
    if (v14)
    {
      v17 = v18;
      goto LABEL_8;
    }
  }

  *(v54 + 40) = v55;
}

uint64_t sub_1AF7ED298(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v174 = a4;
  v7 = a1[1];
  v180 = *a1;
  v179 = v7;
  v8 = MEMORY[0x1E69E7CC0];
  v189 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  v177 = sub_1AF432980(v8);
  v178 = a2;
  v9 = *(a2 + 216);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  while (v12)
  {
    v15 = v14;
LABEL_8:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = (v15 << 10) | (16 * v16);
    v18 = (*(v9 + 48) + v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = (*(v9 + 56) + v17);
    v22 = *v21;
    v23 = v21[1];

    sub_1AF7EE478(v19, v20, v22, v23, v180, v179, &v189, a3);
  }

  while (1)
  {
    v15 = v14 + 1;
    if (v14 + 1 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14++ + 72);
    if (v12)
    {
      v14 = v15;
      goto LABEL_8;
    }
  }

  v24 = v178;
  v25 = *(v178 + 224);
  if (v25)
  {
    v26 = 1 << *(v25 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v25 + 64);
    v29 = (v26 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v30 = 0;
    if (!v28)
    {
LABEL_19:
      while (1)
      {
        v35 = v30 + 1;
        if (v30 + 1 >= v29)
        {
          break;
        }

        v28 = *(v25 + 8 * v30++ + 72);
        if (v28)
        {
          v30 = v35;
          goto LABEL_22;
        }
      }

      goto LABEL_35;
    }

    while (1)
    {
      while (1)
      {
LABEL_22:
        v36 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v37 = (v30 << 10) | (16 * v36);
        v38 = (*(v25 + 48) + v37);
        v39 = *v38;
        v40 = v38[1];
        v41 = (*(v25 + 56) + v37);
        v42 = v41[1];
        v176 = *v41;

        v43 = v42;

        v44 = v179;

        sub_1AF809DF8(v180, v44, v190);
        v45 = *(&v190[0] + 1);
        if (*(&v190[0] + 1) == 59)
        {
          goto LABEL_18;
        }

        v192 = v190[0];
        v193 = v190[1];
        v194 = v191;

        v173 = v39;
        v46 = sub_1AF4564D0(v39, v40);
        if (v46 != 5)
        {
          break;
        }

LABEL_17:
        sub_1AF7EF798(v190, &qword_1EB63E690, &_s12MetadataTypeON);
LABEL_18:

        if (!v28)
        {
          goto LABEL_19;
        }
      }

      if (v45 >= 0x3B)
      {
        if (!*(v194 + 16))
        {
          goto LABEL_17;
        }

        v47 = v46;
        sub_1AF41A220(v46);
        if ((v48 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_30;
      }

      v47 = v46;
      if (v46 > 2u)
      {
        if (v46 != 3)
        {
LABEL_15:
          v186 = v192;
          v187 = v193;
          v188 = v194;
          MEMORY[0x1EEE9AC00](v46);
          v149 = &v186;
          v31 = sub_1AF7E5B0C;
          v32 = &unk_1F24F70B8;
          goto LABEL_16;
        }

        v186 = v192;
        v187 = v193;
        v188 = v194;
        MEMORY[0x1EEE9AC00](v46);
        v149 = &v186;
        v31 = sub_1AF7EAA4C;
        v32 = &unk_1F24F5FC0;
      }

      else
      {
        if (v46 < 2u)
        {
          goto LABEL_15;
        }

        v186 = v192;
        v187 = v193;
        v188 = v194;
        MEMORY[0x1EEE9AC00](v46);
        v149 = &v186;
        v31 = sub_1AF7EAA4C;
        v32 = &unk_1F24F68C8;
      }

LABEL_16:
      v33 = v175;
      v34 = sub_1AF7B95C0(v31, &v147, v32);
      v175 = v33;
      if ((v34 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_30:
      v49 = sub_1AF7DCE50(&v192, v47);
      v172 = v49;
      v51 = v50;
      sub_1AF7EF798(v190, &qword_1EB63E690, &_s12MetadataTypeON);
      *&v186 = v176;
      *(&v186 + 1) = v43;
      v170 = v43;
      v183 = v51;
      v184 = 0x28254550595425;
      v185 = 0xE700000000000000;
      v182 = v49;
      v171 = v51;

      MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      v169 = v183;
      v52 = sub_1AF4486E4();
      v149 = v52;
      v150 = v52;
      v148 = v52;
      v147 = MEMORY[0x1E69E6158];
      v53 = sub_1AFDFDEB8();
      v55 = v54;
      v176 = v54;

      *&v186 = v53;
      *(&v186 + 1) = v55;
      v184 = 0x2E254550595425;
      v185 = 0xE700000000000000;
      v182 = v172;
      v183 = v171;

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v168 = v183;
      v149 = v52;
      v150 = v52;
      v148 = v52;
      v147 = MEMORY[0x1E69E6158];
      v56 = sub_1AFDFDEB8();
      v58 = v57;
      v169 = v57;

      *&v186 = v56;
      *(&v186 + 1) = v58;
      v184 = 0x254550595425;
      v185 = 0xE600000000000000;
      v182 = v172;
      v183 = v171;
      v149 = v52;
      v150 = v52;
      v148 = v52;
      v147 = MEMORY[0x1E69E6158];
      v59 = sub_1AFDFDEB8();
      v176 = v60;

      v61 = v177;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v186 = v61;
      sub_1AF854CE8(v59, v176, v173, v40, isUniquelyReferenced_nonNull_native);

      swift_bridgeObjectRelease_n();
      v177 = v186;
      if (!v28)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_35:
  v63 = *(v24 + 24);
  *&v186 = *(v24 + 16);
  *(&v186 + 1) = v63;
  v184 = 0x254550595425;
  v185 = 0xE600000000000000;
  v64 = v180;
  v65 = v179;
  v182 = v180;
  v183 = v179;
  v66 = sub_1AF4486E4();
  v149 = v66;
  v150 = v66;
  v148 = v66;
  v67 = MEMORY[0x1E69E6158];
  v147 = MEMORY[0x1E69E6158];
  v176 = sub_1AFDFDEB8();
  v173 = v68;
  v69 = *(v24 + 32);
  v70 = *(v24 + 40);
  if (v70)
  {
    *&v186 = *(v24 + 32);
    *(&v186 + 1) = v70;
    v184 = 0x254550595425;
    v185 = 0xE600000000000000;
    v182 = v64;
    v183 = v65;
    v149 = v66;
    v150 = v66;
    v147 = v67;
    v148 = v66;
    v69 = sub_1AFDFDEB8();
    v167 = v71;
  }

  else
  {
    v167 = 0;
  }

  v172 = v69;
  v72 = *(v24 + 72);
  v166 = *(v24 + 64);
  v4.i32[0] = *(v24 + 105);
  LODWORD(v169) = *(v24 + 109);
  LODWORD(v168) = *(v24 + 110);
  v73 = *(v24 + 120);
  v171 = *(v24 + 112);
  v75 = *(v24 + 128);
  v74 = *(v24 + 136);
  v170 = v73;
  v165 = v72;
  if (v74)
  {
    *&v186 = v75;
    *(&v186 + 1) = v74;
    v184 = 0x254550595425;
    v185 = 0xE600000000000000;
    v182 = v64;
    v183 = v65;

    v149 = v66;
    v150 = v66;
    v147 = v67;
    v148 = v66;
    v164 = sub_1AFDFDEB8();
    v160 = v76;
  }

  else
  {
    v164 = v75;

    v160 = 0;
  }

  v78 = *(v24 + 184);
  v77 = *(v24 + 192);
  v79 = *(v24 + 152);
  v80 = *(v24 + 168);
  v163 = *(v24 + 160);
  v162 = v77;
  v161 = v78;
  v159 = v79;
  if (v80)
  {
    v81 = *(v80 + 16);
    if (v81)
    {
      v181 = MEMORY[0x1E69E7CC0];

      sub_1AFC05CE4(0, v81, 0);
      v82 = v181;
      v83 = (v80 + 40);
      do
      {
        v84 = *v83;
        *&v186 = *(v83 - 1);
        *(&v186 + 1) = v84;
        v184 = 0x254550595425;
        v185 = 0xE600000000000000;
        v182 = v180;
        v183 = v179;
        v149 = v66;
        v150 = v66;
        v148 = v66;
        v147 = MEMORY[0x1E69E6158];
        v85 = sub_1AFDFDEB8();
        v181 = v82;
        v88 = *(v82 + 16);
        v87 = *(v82 + 24);
        if (v88 >= v87 >> 1)
        {
          v158 = v85;
          v90 = v86;
          sub_1AFC05CE4(v87 > 1, v88 + 1, 1);
          v86 = v90;
          v85 = v158;
          v82 = v181;
        }

        *(v82 + 16) = v88 + 1;
        v89 = v82 + 16 * v88;
        *(v89 + 32) = v85;
        *(v89 + 40) = v86;
        v83 += 2;
        --v81;
      }

      while (v81);

      v91 = v177;
      v24 = v178;
    }

    else
    {

      v91 = v177;
      v82 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v91 = v177;
    v82 = 0;
  }

  v92 = *(v24 + 208);
  v158 = *(v24 + 200);
  if (v92)
  {
    v93 = *(v92 + 16);
    if (v93)
    {
      v181 = MEMORY[0x1E69E7CC0];

      sub_1AFC05CE4(0, v93, 0);
      v94 = v181;
      v157 = v92;
      v95 = (v92 + 40);
      do
      {
        v96 = *v95;
        *&v186 = *(v95 - 1);
        *(&v186 + 1) = v96;
        v184 = 0x254550595425;
        v185 = 0xE600000000000000;
        v182 = v180;
        v183 = v179;
        v149 = v66;
        v150 = v66;
        v148 = v66;
        v147 = MEMORY[0x1E69E6158];
        v97 = sub_1AFDFDEB8();
        v181 = v94;
        v100 = *(v94 + 16);
        v99 = *(v94 + 24);
        if (v100 >= v99 >> 1)
        {
          v156 = v97;
          v102 = v98;
          sub_1AFC05CE4(v99 > 1, v100 + 1, 1);
          v98 = v102;
          v97 = v156;
          v94 = v181;
        }

        *(v94 + 16) = v100 + 1;
        v101 = v94 + 16 * v100;
        *(v101 + 32) = v97;
        *(v101 + 40) = v98;
        v95 += 2;
        --v93;
      }

      while (v93);

      v103 = v177;
      v24 = v178;
    }

    else
    {
      v105 = v91;

      v103 = v105;
      v94 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v104 = v91;

    v103 = v104;
    v94 = 0;
  }

  v155 = vmovl_u8(v4);
  v106 = v189;
  if (v103[2])
  {
  }

  else
  {
    v156 = 0;
  }

  v107 = *(v24 + 88);
  v157 = v106;
  if (v107)
  {
    v108 = *(v107 + 16);
    if (v108)
    {
      v181 = MEMORY[0x1E69E7CC0];

      sub_1AFC05CE4(0, v108, 0);
      v109 = v181;
      v154 = v107;
      v110 = (v107 + 40);
      do
      {
        v111 = *v110;
        *&v186 = *(v110 - 1);
        *(&v186 + 1) = v111;
        v184 = 0x254550595425;
        v185 = 0xE600000000000000;
        v182 = v180;
        v183 = v179;
        v149 = v66;
        v150 = v66;
        v148 = v66;
        v147 = MEMORY[0x1E69E6158];
        v112 = sub_1AFDFDEB8();
        v181 = v109;
        v115 = *(v109 + 16);
        v114 = *(v109 + 24);
        if (v115 >= v114 >> 1)
        {
          v153 = v112;
          v117 = v113;
          sub_1AFC05CE4(v114 > 1, v115 + 1, 1);
          v113 = v117;
          v112 = v153;
          v109 = v181;
        }

        *(v109 + 16) = v115 + 1;
        v116 = v109 + 16 * v115;
        *(v116 + 32) = v112;
        *(v116 + 40) = v113;
        v110 += 2;
        --v108;
      }

      while (v108);

      v24 = v178;
    }

    else
    {

      v109 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v109 = 0;
  }

  v118 = *(v24 + 96);
  v120 = *(v24 + 248);
  v121 = v24;
  v154 = *(v24 + 256);
  v119 = v154;
  v153 = *(v24 + 264);
  v122 = v153;
  v123 = *(v24 + 280);
  v152 = *(v24 + 272);
  v151 = v123;
  v124 = *(v24 + 288);
  v125 = *(v24 + 296);
  v179 = v124;
  LODWORD(v180) = *(v121 + 304);
  _s17CodeSourceSnippetCMa();
  v126 = swift_allocObject();
  *(v126 + 32) = 0u;
  *(v126 + 48) = 0u;
  *(v126 + 64) = 0u;
  *(v126 + 80) = 2;
  *(v126 + 88) = 0;
  *(v126 + 96) = 0;
  *(v126 + 104) = 33686018;
  *(v126 + 107) = 33686018;
  *(v126 + 112) = 0u;
  *(v126 + 128) = 0u;
  *(v126 + 144) = 0u;
  *(v126 + 160) = 0u;
  *(v126 + 176) = 0u;
  *(v126 + 192) = 0u;
  *(v126 + 208) = 0;

  v127 = v119;
  v128 = v122;
  v129 = v152;
  v130 = v151;
  sub_1AF775B94(v120, v127, v128, v152, v151);

  v131 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  *(v126 + 224) = 0;
  *(v126 + 232) = 0;
  *(v126 + 216) = v131;
  *(v126 + 240) = 0;
  *(v126 + 248) = xmmword_1AFE76620;
  *(v126 + 264) = 0u;
  *(v126 + 280) = 0u;
  *(v126 + 296) = 0;
  *(v126 + 304) = 2;
  *(v126 + 312) = 0u;
  *(v126 + 328) = 0u;
  *(v126 + 344) = 0xE000000000000000;
  *(v126 + 352) = &unk_1F24F7948;
  *(v126 + 360) = 0;
  v132 = v173;
  *(v126 + 16) = v176;
  *(v126 + 24) = v132;
  v133 = v167;
  *(v126 + 32) = v172;
  *(v126 + 40) = v133;

  v134 = v165;
  *(v126 + 64) = v166;
  *(v126 + 72) = v134;

  *(v126 + 105) = vuzp1_s8(*v155.i8, *v155.i8).u32[0];
  *(v126 + 109) = v169;
  *(v126 + 110) = v168;
  v135 = v170;
  *(v126 + 112) = v171;
  *(v126 + 120) = v135;

  v136 = v160;
  *(v126 + 128) = v164;
  *(v126 + 136) = v136;

  *(v126 + 152) = v159;

  *(v126 + 184) = v161;

  *(v126 + 192) = v162;

  *(v126 + 160) = v163;

  *(v126 + 168) = v82;

  *(v126 + 200) = v158;

  *(v126 + 208) = v94;

  *(v126 + 216) = v157;

  *(v126 + 224) = v156;

  *(v126 + 88) = v109;

  *(v126 + 96) = v118;

  v137 = *(v126 + 248);
  v138 = *(v126 + 256);
  v139 = *(v126 + 264);
  v140 = *(v126 + 272);
  v141 = *(v126 + 280);
  v142 = v154;
  *(v126 + 248) = v120;
  *(v126 + 256) = v142;
  *(v126 + 264) = v153;
  *(v126 + 272) = v129;
  *(v126 + 280) = v130;
  sub_1AF771214(v137, v138, v139, v140, v141);
  *(v126 + 288) = v179;
  *(v126 + 296) = v125;

  *(v126 + 304) = v180;
  *(v126 + 176) = *(v178 + 176);

  v143 = v174;
  v144 = *(v174 + 24);
  *(v126 + 336) = *(v174 + 16);
  *(v126 + 344) = v144;

  *(v126 + 352) = *(v143 + 32);

  MEMORY[0x1B2718E00](v145);
  if (*((*(v143 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v143 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  sub_1AFDFD4B8();
}

void *sub_1AF7EE478(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t *a7, uint64_t a8)
{

  result = sub_1AF809DF8(a5, a6, v68);
  if (*(&v68[0] + 1) == 59)
  {
    return result;
  }

  v70[0] = v68[0];
  v70[1] = v68[1];
  v71 = v69;

  v17 = sub_1AF4564D0(a1, a2);
  if (v17 == 5)
  {
    return sub_1AF7EF798(v68, &qword_1EB63E690, &_s12MetadataTypeON);
  }

  v18 = v17;
  if ((sub_1AF7DD328(v70, v17) & 1) == 0)
  {
    return sub_1AF7EF798(v68, &qword_1EB63E690, &_s12MetadataTypeON);
  }

  v58 = a8;
  v19 = sub_1AF7DCE50(v70, v18);
  v61 = a3;
  v21 = v20;
  v59 = a4;

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  sub_1AF4486E4();
  sub_1AFDFDEB8();

  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v22 = sub_1AFDFDEB8();
  v24 = v23;

  v64[0].n128_u64[0] = v22;
  v64[0].n128_u64[1] = v24;
  *&v62[0] = 0x254550595425;
  *(&v62[0] + 1) = 0xE600000000000000;
  v66 = v19;
  v67 = v21;
  v25 = sub_1AFDFDEB8();
  v27 = v26;
  v28 = v61;

  v29 = v59;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64[0].n128_u64[0] = *a7;
  *a7 = 0x8000000000000000;
  sub_1AF854CE8(v25, v27, a1, a2, isUniquelyReferenced_nonNull_native);

  v60 = a7;
  *a7 = v64[0].n128_u64[0];
  v64[0].n128_u64[0] = v61;
  v64[0].n128_u64[1] = v59;
  *&v62[0] = 0xD000000000000014;
  *(&v62[0] + 1) = 0x80000001AFF35670;
  if (sub_1AFDFDF18())
  {
    sub_1AF7FCDD4(v70, 1, v62);
    if (!*(&v62[0] + 1))
    {
      sub_1AF7EF798(v62, &qword_1EB6335B0, &_s8MetadataVN);
      goto LABEL_19;
    }

    v64[3] = v62[3];
    v64[4] = v62[4];
    v65 = v63;
    v64[0] = v62[0];
    v64[1] = v62[1];
    v64[2] = v62[2];
    v31 = MEMORY[0x1E69E7CC0];
    v32 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
    _s7ContextC14GenerationDataCMa();
    v33 = swift_allocObject();
    *(v33 + 104) = v31;
    *(v33 + 112) = v31;
    *(v33 + 120) = v31;
    *(v33 + 128) = v31;
    *(v33 + 136) = v31;
    *(v33 + 144) = v31;
    sub_1AF432980(v31);
    *(v33 + 168) = v31;
    *(v33 + 176) = v31;
    *(v33 + 16) = v58;
    *(v33 + 24) = v18;
    *(v33 + 25) = 1;
    *(v33 + 27) = 0;
    *(v33 + 32) = v31;
    *(v33 + 40) = 1;
    *(v33 + 48) = v31;
    *(v33 + 56) = v31;
    *(v33 + 64) = 257;
    *(v33 + 72) = 0;
    *(v33 + 80) = 0;
    *(v33 + 88) = 0;
    *(v33 + 96) = 0xE000000000000000;
    *(v33 + 152) = v32;

    *(v33 + 160) = 0;
    v34 = *a7;
    if (*(*a7 + 16))
    {
      v35 = sub_1AF419914(a1, a2);
      if (v36)
      {
        v37 = (*(v34 + 56) + 16 * v35);
        v38 = *v37;
        v39 = v37[1];
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v66 = v38;
    v67 = v39;
    if (v18 > 2u)
    {
      if (v18 == 3)
      {
        sub_1AF7DD4B4(v64, v33, 0, 0, 3);
        goto LABEL_18;
      }
    }

    else if (v18 >= 2u)
    {
      sub_1AF7E5CBC(v64, v33);
LABEL_18:

      v40 = sub_1AFDFDEB8();
      v42 = v41;

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v66 = *a7;
      *a7 = 0x8000000000000000;
      sub_1AF854CE8(v40, v42, a1, a2, v43);

      *a7 = v66;

      sub_1AF761390(v64);
      v29 = v59;
      v28 = v61;
      goto LABEL_19;
    }

    sub_1AF7E0118(v64, v33, 0, 0, v18);
    goto LABEL_18;
  }

LABEL_19:
  v64[0].n128_u64[0] = v28;
  v64[0].n128_u64[1] = v29;
  strcpy(v62, "%TYPE_INDEX%");
  BYTE13(v62[0]) = 0;
  HIWORD(v62[0]) = -5120;
  if ((sub_1AFDFDF18() & 1) == 0)
  {
    return sub_1AF7EF798(v68, &qword_1EB63E690, &_s12MetadataTypeON);
  }

  v44 = sub_1AF7FE430();
  v46 = v45;
  result = sub_1AF7EF798(v68, &qword_1EB63E690, &_s12MetadataTypeON);
  if ((v46 & 1) == 0)
  {
    v47 = *a7;
    if (*(*a7 + 16) && (v48 = sub_1AF419914(a1, a2), (v49 & 1) != 0))
    {
      v50 = (*(v47 + 56) + 16 * v48);
      v51 = *v50;
      v52 = v50[1];
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v64[0].n128_u64[0] = v51;
    v64[0].n128_u64[1] = v52;
    strcpy(v62, "%TYPE_INDEX%");
    BYTE13(v62[0]) = 0;
    HIWORD(v62[0]) = -5120;
    v66 = v44;
    v66 = sub_1AFDFEA08();
    v67 = v53;
    v54 = sub_1AFDFDEB8();
    v56 = v55;

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v64[0].n128_u64[0] = *v60;
    *v60 = 0x8000000000000000;
    sub_1AF854CE8(v54, v56, a1, a2, v57);

    *v60 = v64[0].n128_u64[0];
  }

  return result;
}