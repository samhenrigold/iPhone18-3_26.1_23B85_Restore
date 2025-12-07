uint64_t _outDoStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v5 = result;
    v6 = *(v3 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v5 + 32) = result;
    if (*(v5 + 24))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v5 + 32) + 8 * v8) = v10;
        result = _outNode_0(*(*(v5 + 32) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v5 + 24) > v8);
    }
  }

  return result;
}

const char *_outRenameStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  v7 = *(a2 + 8);
  if (v7 < 0x32)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = -1;
  }

  *(a1 + 28) = v8;
  if (*(a2 + 16))
  {
    v9 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v9);
    _outRangeVar_0(v9, *(a2 + 16), range_var__init);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 24))
  {
    v11 = palloc(0x28uLL, a3);
    pg_query__node__init(v11);
    *(a1 + 40) = v11;
    _outNode_0(v11, *(a2 + 24));
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    *(a1 + 48) = pstrdup(v12, a3);
  }

  result = *(a2 + 40);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 56) = result;
  }

  v14 = *(a2 + 48);
  if (v14 == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = -1;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  *(a1 + 64) = v16;
  *(a1 + 68) = *(a2 + 52);
  return result;
}

const char *_outRuleStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(a1 + 24) = v5;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  if (*(a2 + 24))
  {
    v8 = palloc(0x28uLL, a3);
    pg_query__node__init(v8);
    *(a1 + 40) = v8;
    result = _outNode_0(v8, *(a2 + 24));
  }

  v9 = *(a2 + 32);
  if (v9 < 7)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = -1;
  }

  *(a1 + 48) = v10;
  *(a1 + 52) = *(a2 + 36);
  v11 = *(a2 + 40);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 56) = v12;
    result = palloc(8 * v12, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, v13);
        pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 40) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  *(a1 + 72) = *(a2 + 48);
  return result;
}

const char *_outNotifyStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  return result;
}

const char *_outTransactionStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 0xA)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 32) = v8;
    *(a1 + 40) = palloc(8 * v8, a3);
    if (*(a1 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(a1 + 40) + 8 * v9) = v11;
        _outNode_0(*(*(a1 + 40) + 8 * v9), *(*(*(a2 + 8) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    *(a1 + 48) = pstrdup(v12, a3);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 56) = result;
  }

  *(a1 + 64) = *(a2 + 32);
  return result;
}

uint64_t _outViewStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(v4 + 24) = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(v4 + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(v4 + 40) + 8 * v9) = v11;
        result = _outNode_0(*(*(v4 + 40) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(v4 + 32) > v9);
    }
  }

  if (*(a2 + 24))
  {
    v12 = palloc(0x28uLL, a3);
    pg_query__node__init(v12);
    *(v4 + 48) = v12;
    result = _outNode_0(v12, *(a2 + 24));
  }

  *(v4 + 56) = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v13)
  {
    v14 = *(v13 + 4);
    *(v4 + 64) = v14;
    result = palloc(8 * v14, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL, v15);
        pg_query__node__init(v18);
        *(*(v4 + 72) + 8 * v16) = v18;
        result = _outNode_0(*(*(v4 + 72) + 8 * v16), *(*(*(a2 + 40) + 16) + 8 * v16));
        v16 = v17++;
      }

      while (*(v4 + 64) > v16);
    }
  }

  v19 = *(a2 + 48);
  if (v19 < 3)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = -1;
  }

  *(v4 + 80) = v20;
  return result;
}

void *_outCreateDomainStmt_0(void *result, void *a2, double a3)
{
  v4 = result;
  v5 = a2[1];
  if (v5)
  {
    v6 = *(v5 + 4);
    result[3] = v6;
    result = palloc(8 * v6, a3);
    v4[4] = result;
    if (v4[3])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(v4[4] + 8 * v7) = v9;
        result = _outNode_0(*(v4[4] + 8 * v7), *(*(a2[1] + 16) + 8 * v7));
        v7 = v8++;
      }

      while (v4[3] > v7);
    }
  }

  if (a2[2])
  {
    v10 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v10);
    result = _outTypeName_0(v10, a2[2], type_name__init);
    v4[5] = v10;
  }

  if (a2[3])
  {
    v12 = palloc(0x38uLL, a3);
    collate_clause__init = pg_query__collate_clause__init(v12);
    result = _outCollateClause_0(v12, a2[3], collate_clause__init);
    v4[6] = v12;
  }

  v14 = a2[4];
  if (v14)
  {
    v15 = *(v14 + 4);
    v4[7] = v15;
    result = palloc(8 * v15, a3);
    v4[8] = result;
    if (v4[7])
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL, v16);
        pg_query__node__init(v19);
        *(v4[8] + 8 * v17) = v19;
        result = _outNode_0(*(v4[8] + 8 * v17), *(*(a2[4] + 16) + 8 * v17));
        v17 = v18++;
      }

      while (v4[7] > v17);
    }
  }

  return result;
}

const char *_outDropdbStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 40) = v7;
    result = palloc(8 * v7, a3);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, v8);
        pg_query__node__init(v11);
        *(*(a1 + 48) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 48) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  return result;
}

uint64_t _outVacuumStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 32) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 24) > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v4 + 40) = v11;
    result = palloc(8 * v11, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL, v12);
        pg_query__node__init(v15);
        *(*(v4 + 48) + 8 * v13) = v15;
        result = _outNode_0(*(*(v4 + 48) + 8 * v13), *(*(*(a2 + 16) + 16) + 8 * v13));
        v13 = v14++;
      }

      while (*(v4 + 40) > v13);
    }
  }

  *(v4 + 56) = *(a2 + 24);
  return result;
}

void *_outExplainStmt_0(void *result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    v4[3] = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    v4[4] = v7;
    result = palloc(8 * v7, a3);
    v4[5] = result;
    if (v4[4])
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, v8);
        pg_query__node__init(v11);
        *(v4[5] + 8 * v9) = v11;
        result = _outNode_0(*(v4[5] + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (v4[4] > v9);
    }
  }

  return result;
}

uint64_t _outCreateTableAsStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 24) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x68uLL, a3);
    into_clause__init = pg_query__into_clause__init(v6);
    result = _outIntoClause_0(v6, *(a2 + 16), into_clause__init);
    *(v4 + 32) = v6;
  }

  v8 = *(a2 + 24);
  if (v8 < 0x32)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -1;
  }

  *(v4 + 40) = v9;
  *(v4 + 44) = *(a2 + 28);
  *(v4 + 48) = *(a2 + 29);
  return result;
}

uint64_t _outCreateSeqStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(v4 + 24) = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(v4 + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(*(v4 + 40) + 8 * v10) = v12;
        result = _outNode_0(*(*(v4 + 40) + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(v4 + 32) > v10);
    }
  }

  *(v4 + 48) = *(a2 + 24);
  *(v4 + 52) = *(a2 + 28);
  *(v4 + 56) = *(a2 + 29);
  return result;
}

uint64_t _outAlterSeqStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(v4 + 24) = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(v4 + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(*(v4 + 40) + 8 * v10) = v12;
        result = _outNode_0(*(*(v4 + 40) + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(v4 + 32) > v10);
    }
  }

  *(v4 + 48) = *(a2 + 24);
  *(v4 + 52) = *(a2 + 25);
  return result;
}

const char *_outVariableSetStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 6)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 40) = v9;
    result = palloc(8 * v9, a3);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL, v10);
        pg_query__node__init(v13);
        *(*(a1 + 48) + 8 * v11) = v13;
        result = _outNode_0(*(*(a1 + 48) + 8 * v11), *(*(*(a2 + 16) + 16) + 8 * v11));
        v11 = v12++;
      }

      while (*(a1 + 40) > v11);
    }
  }

  *(a1 + 56) = *(a2 + 24);
  return result;
}

const char *_outCreateTrigStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v6);
    result = _outRangeVar_0(v6, *(a2 + 16), range_var__init);
    *(a1 + 32) = v6;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 40) = v9;
    result = palloc(8 * v9, a3);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, a3);
        pg_query__node__init(v12);
        *(*(a1 + 48) + 8 * v10) = v12;
        result = _outNode_0(*(*(a1 + 48) + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = *(v13 + 4);
    *(a1 + 56) = v14;
    result = palloc(8 * v14, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, a3);
        pg_query__node__init(v17);
        *(*(a1 + 64) + 8 * v15) = v17;
        result = _outNode_0(*(*(a1 + 64) + 8 * v15), *(*(*(a2 + 32) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  *(a1 + 76) = *(a2 + 42);
  *(a1 + 80) = *(a2 + 44);
  v18 = *(a2 + 48);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(a1 + 88) = v19;
    result = palloc(8 * v19, a3);
    *(a1 + 96) = result;
    if (*(a1 + 88))
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL, a3);
        pg_query__node__init(v22);
        *(*(a1 + 96) + 8 * v20) = v22;
        result = _outNode_0(*(*(a1 + 96) + 8 * v20), *(*(*(a2 + 48) + 16) + 8 * v20));
        v20 = v21++;
      }

      while (*(a1 + 88) > v20);
    }
  }

  if (*(a2 + 56))
  {
    v23 = palloc(0x28uLL, a3);
    pg_query__node__init(v23);
    *(a1 + 104) = v23;
    result = _outNode_0(v23, *(a2 + 56));
  }

  *(a1 + 112) = *(a2 + 64);
  v24 = *(a2 + 72);
  if (v24)
  {
    v25 = *(v24 + 4);
    *(a1 + 120) = v25;
    result = palloc(8 * v25, a3);
    *(a1 + 128) = result;
    if (*(a1 + 120))
    {
      v26 = 0;
      v27 = 1;
      do
      {
        v28 = palloc(0x28uLL, a3);
        pg_query__node__init(v28);
        *(*(a1 + 128) + 8 * v26) = v28;
        result = _outNode_0(*(*(a1 + 128) + 8 * v26), *(*(*(a2 + 72) + 16) + 8 * v26));
        v26 = v27++;
      }

      while (*(a1 + 120) > v26);
    }
  }

  *(a1 + 136) = *(a2 + 80);
  *(a1 + 140) = *(a2 + 81);
  if (*(a2 + 88))
  {
    v29 = palloc(0x50uLL, a3);
    v30 = pg_query__range_var__init(v29);
    result = _outRangeVar_0(v29, *(a2 + 88), v30);
    *(a1 + 144) = v29;
  }

  return result;
}

const char *_outCreatePLangStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 24) = *(a2 + 4);
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 40) = v7;
    result = palloc(8 * v7, a3);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(a1 + 48) + 8 * v8) = v10;
        result = _outNode_0(*(*(a1 + 48) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(a1 + 40) > v8);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 56) = v12;
    result = palloc(8 * v12, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL, a3);
        pg_query__node__init(v15);
        *(*(a1 + 64) + 8 * v13) = v15;
        result = _outNode_0(*(*(a1 + 64) + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13));
        v13 = v14++;
      }

      while (*(a1 + 56) > v13);
    }
  }

  v16 = *(a2 + 32);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(a1 + 72) = v17;
    result = palloc(8 * v17, a3);
    *(a1 + 80) = result;
    if (*(a1 + 72))
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = palloc(0x28uLL, v18);
        pg_query__node__init(v21);
        *(*(a1 + 80) + 8 * v19) = v21;
        result = _outNode_0(*(*(a1 + 80) + 8 * v19), *(*(*(a2 + 32) + 16) + 8 * v19));
        v19 = v20++;
      }

      while (*(a1 + 72) > v19);
    }
  }

  *(a1 + 88) = *(a2 + 40);
  return result;
}

const char *_outCreateRoleStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 40) = v9;
    result = palloc(8 * v9, a3);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL, v10);
        pg_query__node__init(v13);
        *(*(a1 + 48) + 8 * v11) = v13;
        result = _outNode_0(*(*(a1 + 48) + 8 * v11), *(*(*(a2 + 16) + 16) + 8 * v11));
        v11 = v12++;
      }

      while (*(a1 + 40) > v11);
    }
  }

  return result;
}

const char *_outAlterRoleStmt_0(const char *result, uint64_t a2, double role_spec__init)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x30uLL, role_spec__init);
    role_spec__init = pg_query__role_spec__init(v5);
    v6 = *(a2 + 8);
    v7 = *(v6 + 4);
    if (v7 < 4)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = -1;
    }

    *(v5 + 24) = v8;
    result = *(v6 + 8);
    if (result)
    {
      result = pstrdup(result, role_spec__init);
      *(v5 + 32) = result;
    }

    *(v5 + 40) = *(v6 + 16);
    *(v4 + 3) = v5;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(v9 + 4);
    *(v4 + 4) = v10;
    result = palloc(8 * v10, role_spec__init);
    *(v4 + 5) = result;
    if (*(v4 + 4))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, v11);
        pg_query__node__init(v14);
        *(*(v4 + 5) + 8 * v12) = v14;
        result = _outNode_0(*(*(v4 + 5) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(v4 + 4) > v12);
    }
  }

  *(v4 + 12) = *(a2 + 24);
  return result;
}

uint64_t _outDropRoleStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 32) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 32) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 24) > v8);
    }
  }

  *(v4 + 40) = *(a2 + 16);
  return result;
}

uint64_t _outLockStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 32) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 32) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 24) > v8);
    }
  }

  *(v4 + 40) = *(a2 + 16);
  *(v4 + 44) = *(a2 + 20);
  return result;
}

const char *_outReindexStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 5)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v7);
    _outRangeVar_0(v7, *(a2 + 8), range_var__init);
    *(a1 + 32) = v7;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 24);
  *(a1 + 52) = *(a2 + 28);
  return result;
}

const char *_outCreateSchemaStmt_0(uint64_t a1, uint64_t a2, double role_spec__init)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, role_spec__init);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x30uLL, role_spec__init);
    role_spec__init = pg_query__role_spec__init(v6);
    v7 = *(a2 + 16);
    v8 = *(v7 + 4);
    if (v8 < 4)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = -1;
    }

    *(v6 + 24) = v9;
    result = *(v7 + 8);
    if (result)
    {
      result = pstrdup(result, role_spec__init);
      *(v6 + 32) = result;
    }

    *(v6 + 40) = *(v7 + 16);
    *(a1 + 32) = v6;
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 40) = v11;
    result = palloc(8 * v11, role_spec__init);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL, v12);
        pg_query__node__init(v15);
        *(*(a1 + 48) + 8 * v13) = v15;
        result = _outNode_0(*(*(a1 + 48) + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13));
        v13 = v14++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

const char *_outAlterDatabaseSetStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x40uLL, a3);
    variable_set_stmt__init = pg_query__variable_set_stmt__init(v6);
    result = _outVariableSetStmt_0(v6, *(a2 + 16), variable_set_stmt__init);
    *(a1 + 32) = v6;
  }

  return result;
}

const char *_outAlterRoleSetStmt_0(void *a1, void *a2, double role_spec__init)
{
  if (a2[1])
  {
    v5 = palloc(0x30uLL, role_spec__init);
    role_spec__init = pg_query__role_spec__init(v5);
    v6 = a2[1];
    v7 = *(v6 + 4);
    if (v7 < 4)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = -1;
    }

    *(v5 + 24) = v8;
    v9 = *(v6 + 8);
    if (v9)
    {
      *(v5 + 32) = pstrdup(v9, role_spec__init);
    }

    *(v5 + 40) = *(v6 + 16);
    a1[3] = v5;
  }

  result = a2[2];
  if (result)
  {
    result = pstrdup(result, role_spec__init);
    a1[4] = result;
  }

  if (a2[3])
  {
    v11 = palloc(0x40uLL, role_spec__init);
    variable_set_stmt__init = pg_query__variable_set_stmt__init(v11);
    result = _outVariableSetStmt_0(v11, a2[3], variable_set_stmt__init);
    a1[5] = v11;
  }

  return result;
}

const char *_outCreateConversionStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 24) = v6;
    *(a1 + 32) = palloc(8 * v6, a3);
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(a1 + 32) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(a1 + 24) > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    *(a1 + 40) = pstrdup(v10, a3);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 48) = result;
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    result = palloc(8 * v13, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, v14);
        pg_query__node__init(v17);
        *(*(a1 + 64) + 8 * v15) = v17;
        result = _outNode_0(*(*(a1 + 64) + 8 * v15), *(*(*(a2 + 32) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  return result;
}

uint64_t _outCreateCastStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v5);
    result = _outTypeName_0(v5, *(a2 + 8), type_name__init);
    *(v4 + 24) = v5;
  }

  if (*(a2 + 16))
  {
    v7 = palloc(0x68uLL, a3);
    v8 = pg_query__type_name__init(v7);
    result = _outTypeName_0(v7, *(a2 + 16), v8);
    *(v4 + 32) = v7;
  }

  if (*(a2 + 24))
  {
    v9 = palloc(0x40uLL, a3);
    object_with_args__init = pg_query__object_with_args__init(v9);
    result = _outVacuumStmt_0(v9, *(a2 + 24), object_with_args__init);
    *(v4 + 40) = v9;
  }

  v11 = *(a2 + 32);
  if (v11 < 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = -1;
  }

  *(v4 + 48) = v12;
  *(v4 + 52) = *(a2 + 36);
  return result;
}

const char *_outCreateOpClassStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 24) = v6;
    *(a1 + 32) = palloc(8 * v6, a3);
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(a1 + 32) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(a1 + 24) > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 40) = v11;
    *(a1 + 48) = palloc(8 * v11, a3);
    if (*(a1 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(a1 + 48) + 8 * v12) = v14;
        _outNode_0(*(*(a1 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 56) = result;
  }

  if (*(a2 + 32))
  {
    v16 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v16);
    result = _outTypeName_0(v16, *(a2 + 32), type_name__init);
    *(a1 + 64) = v16;
  }

  v18 = *(a2 + 40);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(a1 + 72) = v19;
    result = palloc(8 * v19, a3);
    *(a1 + 80) = result;
    if (*(a1 + 72))
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = palloc(0x28uLL, v20);
        pg_query__node__init(v23);
        *(*(a1 + 80) + 8 * v21) = v23;
        result = _outNode_0(*(*(a1 + 80) + 8 * v21), *(*(*(a2 + 40) + 16) + 8 * v21));
        v21 = v22++;
      }

      while (*(a1 + 72) > v21);
    }
  }

  *(a1 + 88) = *(a2 + 48);
  return result;
}

const char *_outCreateOpFamilyStmt_0(void *a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    a1[3] = v6;
    a1[4] = palloc(8 * v6, a3);
    if (a1[3])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(a1[4] + 8 * v7) = v9;
        _outNode_0(*(a1[4] + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (a1[3] > v7);
    }
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    a1[5] = result;
  }

  return result;
}

const char *_outAlterOpFamilyStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 24) = v6;
    *(a1 + 32) = palloc(8 * v6, a3);
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(a1 + 32) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(a1 + 24) > v7);
    }
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 56) = v12;
    result = palloc(8 * v12, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, v13);
        pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  return result;
}

const char *_outPrepareStmt_0(void *a1, void *a2, double a3)
{
  result = a2[1];
  if (result)
  {
    result = pstrdup(result, a3);
    a1[3] = result;
  }

  v6 = a2[2];
  if (v6)
  {
    v7 = *(v6 + 4);
    a1[4] = v7;
    result = palloc(8 * v7, a3);
    a1[5] = result;
    if (a1[4])
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(a1[5] + 8 * v8) = v10;
        result = _outNode_0(*(a1[5] + 8 * v8), *(*(a2[2] + 16) + 8 * v8));
        v8 = v9++;
      }

      while (a1[4] > v8);
    }
  }

  if (a2[3])
  {
    v11 = palloc(0x28uLL, a3);
    pg_query__node__init(v11);
    a1[6] = v11;
    v12 = a2[3];

    return _outNode_0(v11, v12);
  }

  return result;
}

const char *_outDeclareCursorStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  if (*(a2 + 24))
  {
    v6 = palloc(0x28uLL, a3);
    pg_query__node__init(v6);
    *(a1 + 40) = v6;
    v7 = *(a2 + 24);

    return _outNode_0(v6, v7);
  }

  return result;
}

const char *_outCreateTableSpaceStmt_0(void *a1, void *a2, double role_spec__init)
{
  v5 = a2[1];
  if (v5)
  {
    a1[3] = pstrdup(v5, role_spec__init);
  }

  if (a2[2])
  {
    v6 = palloc(0x30uLL, role_spec__init);
    role_spec__init = pg_query__role_spec__init(v6);
    v7 = a2[2];
    v8 = *(v7 + 4);
    if (v8 < 4)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = -1;
    }

    *(v6 + 24) = v9;
    v10 = *(v7 + 8);
    if (v10)
    {
      *(v6 + 32) = pstrdup(v10, role_spec__init);
    }

    *(v6 + 40) = *(v7 + 16);
    a1[4] = v6;
  }

  result = a2[3];
  if (result)
  {
    result = pstrdup(result, role_spec__init);
    a1[5] = result;
  }

  v12 = a2[4];
  if (v12)
  {
    v13 = *(v12 + 4);
    a1[6] = v13;
    result = palloc(8 * v13, role_spec__init);
    a1[7] = result;
    if (a1[6])
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, v14);
        pg_query__node__init(v17);
        *(a1[7] + 8 * v15) = v17;
        result = _outNode_0(*(a1[7] + 8 * v15), *(*(a2[4] + 16) + 8 * v15));
        v15 = v16++;
      }

      while (a1[6] > v15);
    }
  }

  return result;
}

uint64_t _outAlterObjectDependsStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v7);
    result = _outRangeVar_0(v7, *(a2 + 8), range_var__init);
    *(v4 + 32) = v7;
  }

  if (*(a2 + 16))
  {
    v9 = palloc(0x28uLL, a3);
    pg_query__node__init(v9);
    *(v4 + 40) = v9;
    result = _outNode_0(v9, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    v10 = palloc(0x28uLL, a3);
    pg_query__node__init(v10);
    *(v4 + 48) = v10;
    result = _outNode_0(v10, *(a2 + 24));
  }

  *(v4 + 56) = *(a2 + 32);
  return result;
}

const char *_outAlterObjectSchemaStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v7);
    _outRangeVar_0(v7, *(a2 + 8), range_var__init);
    *(a1 + 32) = v7;
  }

  if (*(a2 + 16))
  {
    v9 = palloc(0x28uLL, a3);
    pg_query__node__init(v9);
    *(a1 + 40) = v9;
    _outNode_0(v9, *(a2 + 16));
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 48) = result;
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

uint64_t _outAlterOwnerStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v7);
    result = _outRangeVar_0(v7, *(a2 + 8), range_var__init);
    v4[4] = v7;
  }

  if (*(a2 + 16))
  {
    v9 = palloc(0x28uLL, a3);
    pg_query__node__init(v9);
    v4[5] = v9;
    result = _outNode_0(v9, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    v10 = palloc(0x30uLL, a3);
    role_spec__init = pg_query__role_spec__init(v10);
    v12 = *(a2 + 24);
    v13 = *(v12 + 4);
    if (v13 < 4)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = -1;
    }

    *(v10 + 24) = v14;
    result = *(v12 + 8);
    if (result)
    {
      result = pstrdup(result, role_spec__init);
      *(v10 + 32) = result;
    }

    *(v10 + 40) = *(v12 + 16);
    v4[6] = v10;
  }

  return result;
}

void *_outAlterOperatorStmt_0(void *result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x40uLL, a3);
    object_with_args__init = pg_query__object_with_args__init(v5);
    result = _outVacuumStmt_0(v5, *(a2 + 8), object_with_args__init);
    v4[3] = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    v4[4] = v8;
    result = palloc(8 * v8, a3);
    v4[5] = result;
    if (v4[4])
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(v4[5] + 8 * v10) = v12;
        result = _outNode_0(*(v4[5] + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (v4[4] > v10);
    }
  }

  return result;
}

void *_outAlterTypeStmt_0(void *result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    result[3] = v6;
    result = palloc(8 * v6, a3);
    v4[4] = result;
    if (v4[3])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(v4[4] + 8 * v7) = v9;
        result = _outNode_0(*(v4[4] + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (v4[3] > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    v4[5] = v11;
    result = palloc(8 * v11, a3);
    v4[6] = result;
    if (v4[5])
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL, v12);
        pg_query__node__init(v15);
        *(v4[6] + 8 * v13) = v15;
        result = _outNode_0(*(v4[6] + 8 * v13), *(*(*(a2 + 16) + 16) + 8 * v13));
        v13 = v14++;
      }

      while (v4[5] > v13);
    }
  }

  return result;
}

uint64_t _outDropOwnedStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 32) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 32) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 24) > v8);
    }
  }

  v11 = *(a2 + 16);
  if (v11 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = -1;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  *(v4 + 40) = v13;
  return result;
}

void *_outReassignOwnedStmt_0(void *result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    result[3] = v6;
    result = palloc(8 * v6, a3);
    v4[4] = result;
    if (v4[3])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(v4[4] + 8 * v7) = v9;
        result = _outNode_0(*(v4[4] + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (v4[3] > v7);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x30uLL, a3);
    role_spec__init = pg_query__role_spec__init(v10);
    v12 = *(a2 + 16);
    v13 = *(v12 + 4);
    if (v13 < 4)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = -1;
    }

    *(v10 + 24) = v14;
    result = *(v12 + 8);
    if (result)
    {
      result = pstrdup(result, role_spec__init);
      *(v10 + 32) = result;
    }

    *(v10 + 40) = *(v12 + 16);
    v4[5] = v10;
  }

  return result;
}

void *_outCompositeTypeStmt_0(void *result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    v4[3] = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    v4[4] = v8;
    result = palloc(8 * v8, a3);
    v4[5] = result;
    if (v4[4])
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(v4[5] + 8 * v10) = v12;
        result = _outNode_0(*(v4[5] + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (v4[4] > v10);
    }
  }

  return result;
}

const char *_outAlterEnumStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 24) = v6;
    *(a1 + 32) = palloc(8 * v6, a3);
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(a1 + 32) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(a1 + 24) > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    *(a1 + 40) = pstrdup(v10, a3);
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    *(a1 + 48) = pstrdup(v11, a3);
  }

  result = *(a2 + 32);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 56) = result;
  }

  *(a1 + 64) = *(a2 + 40);
  *(a1 + 68) = *(a2 + 41);
  return result;
}

uint64_t _outAlterTSConfigurationStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 5)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(result + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(v4 + 40) + 8 * v9) = v11;
        result = _outNode_0(*(*(v4 + 40) + 8 * v9), *(*(*(a2 + 8) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(v4 + 32) > v9);
    }
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v4 + 48) = v13;
    result = palloc(8 * v13, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, a3);
        pg_query__node__init(v16);
        *(*(v4 + 56) + 8 * v14) = v16;
        result = _outNode_0(*(*(v4 + 56) + 8 * v14), *(*(*(a2 + 16) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(v4 + 48) > v14);
    }
  }

  v17 = *(a2 + 24);
  if (v17)
  {
    v18 = *(v17 + 4);
    *(v4 + 64) = v18;
    result = palloc(8 * v18, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL, v19);
        pg_query__node__init(v22);
        *(*(v4 + 72) + 8 * v20) = v22;
        result = _outNode_0(*(*(v4 + 72) + 8 * v20), *(*(*(a2 + 24) + 16) + 8 * v20));
        v20 = v21++;
      }

      while (*(v4 + 64) > v20);
    }
  }

  *(v4 + 80) = *(a2 + 32);
  *(v4 + 84) = *(a2 + 33);
  *(v4 + 88) = *(a2 + 34);
  return result;
}

const char *_outCreateFdwStmt_0(void *a1, void *a2, double a3)
{
  result = a2[1];
  if (result)
  {
    result = pstrdup(result, a3);
    a1[3] = result;
  }

  v6 = a2[2];
  if (v6)
  {
    v7 = *(v6 + 4);
    a1[4] = v7;
    result = palloc(8 * v7, a3);
    a1[5] = result;
    if (a1[4])
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(a1[5] + 8 * v8) = v10;
        result = _outNode_0(*(a1[5] + 8 * v8), *(*(a2[2] + 16) + 8 * v8));
        v8 = v9++;
      }

      while (a1[4] > v8);
    }
  }

  v11 = a2[3];
  if (v11)
  {
    v12 = *(v11 + 4);
    a1[6] = v12;
    result = palloc(8 * v12, a3);
    a1[7] = result;
    if (a1[6])
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, v13);
        pg_query__node__init(v16);
        *(a1[7] + 8 * v14) = v16;
        result = _outNode_0(*(a1[7] + 8 * v14), *(*(a2[3] + 16) + 8 * v14));
        v14 = v15++;
      }

      while (a1[6] > v14);
    }
  }

  return result;
}

const char *_outCreateForeignServerStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    *(a1 + 32) = pstrdup(v6, a3);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    *(a1 + 40) = pstrdup(v7, a3);
  }

  result = *(a2 + 32);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 48) = result;
  }

  *(a1 + 56) = *(a2 + 40);
  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(v9 + 4);
    *(a1 + 64) = v10;
    result = palloc(8 * v10, a3);
    *(a1 + 72) = result;
    if (*(a1 + 64))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, v11);
        pg_query__node__init(v14);
        *(*(a1 + 72) + 8 * v12) = v14;
        result = _outNode_0(*(*(a1 + 72) + 8 * v12), *(*(*(a2 + 48) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(a1 + 64) > v12);
    }
  }

  return result;
}

const char *_outAlterForeignServerStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 40) = v8;
    result = palloc(8 * v8, a3);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(*(a1 + 48) + 8 * v10) = v12;
        result = _outNode_0(*(*(a1 + 48) + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

const char *_outCreateUserMappingStmt_0(uint64_t a1, uint64_t a2, double role_spec__init)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x30uLL, role_spec__init);
    role_spec__init = pg_query__role_spec__init(v5);
    v6 = *(a2 + 8);
    v7 = *(v6 + 4);
    if (v7 < 4)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = -1;
    }

    *(v5 + 24) = v8;
    v9 = *(v6 + 8);
    if (v9)
    {
      *(v5 + 32) = pstrdup(v9, role_spec__init);
    }

    *(v5 + 40) = *(v6 + 16);
    *(a1 + 24) = v5;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, role_spec__init);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 48) = v12;
    result = palloc(8 * v12, role_spec__init);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, v13);
        pg_query__node__init(v16);
        *(*(a1 + 56) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 56) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  return result;
}

const char *_outAlterUserMappingStmt_0(void *a1, void *a2, double role_spec__init)
{
  if (a2[1])
  {
    v5 = palloc(0x30uLL, role_spec__init);
    role_spec__init = pg_query__role_spec__init(v5);
    v6 = a2[1];
    v7 = *(v6 + 4);
    if (v7 < 4)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = -1;
    }

    *(v5 + 24) = v8;
    v9 = *(v6 + 8);
    if (v9)
    {
      *(v5 + 32) = pstrdup(v9, role_spec__init);
    }

    *(v5 + 40) = *(v6 + 16);
    a1[3] = v5;
  }

  result = a2[2];
  if (result)
  {
    result = pstrdup(result, role_spec__init);
    a1[4] = result;
  }

  v11 = a2[3];
  if (v11)
  {
    v12 = *(v11 + 4);
    a1[5] = v12;
    result = palloc(8 * v12, role_spec__init);
    a1[6] = result;
    if (a1[5])
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, v13);
        pg_query__node__init(v16);
        *(a1[6] + 8 * v14) = v16;
        result = _outNode_0(*(a1[6] + 8 * v14), *(*(a2[3] + 16) + 8 * v14));
        v14 = v15++;
      }

      while (a1[5] > v14);
    }
  }

  return result;
}

const char *_outDropUserMappingStmt_0(uint64_t a1, uint64_t a2, double role_spec__init)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x30uLL, role_spec__init);
    role_spec__init = pg_query__role_spec__init(v5);
    v6 = *(a2 + 8);
    v7 = *(v6 + 4);
    if (v7 < 4)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = -1;
    }

    *(v5 + 24) = v8;
    v9 = *(v6 + 8);
    if (v9)
    {
      *(v5 + 32) = pstrdup(v9, role_spec__init);
    }

    *(v5 + 40) = *(v6 + 16);
    *(a1 + 24) = v5;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, role_spec__init);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 24);
  return result;
}

const char *_outAlterTableSpaceOptionsStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 32) = v7;
    result = palloc(8 * v7, a3);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, v8);
        pg_query__node__init(v11);
        *(*(a1 + 40) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 40) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  *(a1 + 48) = *(a2 + 24);
  return result;
}

const char *_outAlterTableMoveAllStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  v6 = *(a2 + 16);
  if (v6 < 0x32)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(a1 + 32) = v7;
  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 40) = v9;
    *(a1 + 48) = palloc(8 * v9, a3);
    if (*(a1 + 40))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, a3);
        pg_query__node__init(v12);
        *(*(a1 + 48) + 8 * v10) = v12;
        _outNode_0(*(*(a1 + 48) + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  result = *(a2 + 32);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 56) = result;
  }

  *(a1 + 64) = *(a2 + 40);
  return result;
}

const char *_outSecLabelStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x28uLL, a3);
    pg_query__node__init(v7);
    *(a1 + 32) = v7;
    _outNode_0(v7, *(a2 + 8));
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    *(a1 + 40) = pstrdup(v8, a3);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 48) = result;
  }

  return result;
}

const char *_outCreateForeignTableStmt_0(void *a1, uint64_t a2, double a3)
{
  v5 = palloc(0x98uLL, a3);
  stmt__init = pg_query__create_stmt__init(v5);
  _outCreateStmt_0(v5, a2, stmt__init);
  a1[3] = v5;
  result = *(a2 + 104);
  if (result)
  {
    result = pstrdup(result, v7);
    a1[4] = result;
  }

  v9 = *(a2 + 112);
  if (v9)
  {
    v10 = *(v9 + 4);
    a1[5] = v10;
    result = palloc(8 * v10, v7);
    a1[6] = result;
    if (a1[5])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, v11);
        pg_query__node__init(v14);
        *(a1[6] + 8 * v12) = v14;
        result = _outNode_0(*(a1[6] + 8 * v12), *(*(*(a2 + 112) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (a1[5] > v12);
    }
  }

  return result;
}

const char *_outImportForeignSchemaStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    *(a1 + 32) = pstrdup(v6, a3);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  v8 = *(a2 + 32);
  if (v8 < 3)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -1;
  }

  *(a1 + 48) = v9;
  v10 = *(a2 + 40);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 56) = v11;
    result = palloc(8 * v11, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(a1 + 64) + 8 * v12) = v14;
        result = _outNode_0(*(*(a1 + 64) + 8 * v12), *(*(*(a2 + 40) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(a1 + 56) > v12);
    }
  }

  v15 = *(a2 + 48);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(a1 + 72) = v16;
    result = palloc(8 * v16, a3);
    *(a1 + 80) = result;
    if (*(a1 + 72))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL, v17);
        pg_query__node__init(v20);
        *(*(a1 + 80) + 8 * v18) = v20;
        result = _outNode_0(*(*(a1 + 80) + 8 * v18), *(*(*(a2 + 48) + 16) + 8 * v18));
        v18 = v19++;
      }

      while (*(a1 + 72) > v18);
    }
  }

  return result;
}

const char *_outAlterExtensionContentsStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  v6 = *(a2 + 20);
  if (v6 < 0x32)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(a1 + 36) = v7;
  if (*(a2 + 24))
  {
    v8 = palloc(0x28uLL, a3);
    pg_query__node__init(v8);
    *(a1 + 40) = v8;
    v9 = *(a2 + 24);

    return _outNode_0(v8, v9);
  }

  return result;
}

const char *_outCreateEventTrigStmt_0(void *a1, void *a2, double a3)
{
  v5 = a2[1];
  if (v5)
  {
    a1[3] = pstrdup(v5, a3);
  }

  result = a2[2];
  if (result)
  {
    result = pstrdup(result, a3);
    a1[4] = result;
  }

  v7 = a2[3];
  if (v7)
  {
    v8 = *(v7 + 4);
    a1[5] = v8;
    result = palloc(8 * v8, a3);
    a1[6] = result;
    if (a1[5])
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(a1[6] + 8 * v9) = v11;
        result = _outNode_0(*(a1[6] + 8 * v9), *(*(a2[3] + 16) + 8 * v9));
        v9 = v10++;
      }

      while (a1[5] > v9);
    }
  }

  v12 = a2[4];
  if (v12)
  {
    v13 = *(v12 + 4);
    a1[7] = v13;
    result = palloc(8 * v13, a3);
    a1[8] = result;
    if (a1[7])
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, v14);
        pg_query__node__init(v17);
        *(a1[8] + 8 * v15) = v17;
        result = _outNode_0(*(a1[8] + 8 * v15), *(*(a2[4] + 16) + 8 * v15));
        v15 = v16++;
      }

      while (a1[7] > v15);
    }
  }

  return result;
}

char *_outAlterEventTrigStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    result = palloc(2uLL, a3);
    *(a1 + 32) = result;
    *result = *(a2 + 16);
    *(*(a1 + 32) + 1) = 0;
  }

  return result;
}

char *_outRefreshMatViewStmt_0(char *result, uint64_t a2, double a3)
{
  *(result + 6) = *(a2 + 4);
  *(result + 7) = *(a2 + 5);
  if (*(a2 + 8))
  {
    v4 = result;
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(v4 + 4) = v5;
  }

  return result;
}

const char *_outReplicaIdentityStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 4))
  {
    v5 = palloc(2uLL, a3);
    *(a1 + 24) = v5;
    *v5 = *(a2 + 4);
    *(*(a1 + 24) + 1) = 0;
  }

  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  return result;
}

const char *_outAlterSystemStmt_0(const char *result, uint64_t a2, double a3)
{
  if (*(a2 + 8))
  {
    v4 = result;
    v5 = palloc(0x40uLL, a3);
    variable_set_stmt__init = pg_query__variable_set_stmt__init(v5);
    result = _outVariableSetStmt_0(v5, *(a2 + 8), variable_set_stmt__init);
    *(v4 + 24) = v5;
  }

  return result;
}

const char *_outCreatePolicyStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v6);
    _outRangeVar_0(v6, *(a2 + 16), range_var__init);
    *(a1 + 32) = v6;
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 32);
  v9 = *(a2 + 40);
  if (v9)
  {
    v10 = *(v9 + 4);
    *(a1 + 56) = v10;
    result = palloc(8 * v10, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL, a3);
        pg_query__node__init(v13);
        *(*(a1 + 64) + 8 * v11) = v13;
        result = _outNode_0(*(*(a1 + 64) + 8 * v11), *(*(*(a2 + 40) + 16) + 8 * v11));
        v11 = v12++;
      }

      while (*(a1 + 56) > v11);
    }
  }

  if (*(a2 + 48))
  {
    v14 = palloc(0x28uLL, a3);
    pg_query__node__init(v14);
    *(a1 + 72) = v14;
    result = _outNode_0(v14, *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    v15 = palloc(0x28uLL, a3);
    pg_query__node__init(v15);
    *(a1 + 80) = v15;
    v16 = *(a2 + 56);

    return _outNode_0(v15, v16);
  }

  return result;
}

const char *_outAlterPolicyStmt_0(void *a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    a1[3] = result;
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v6);
    result = _outRangeVar_0(v6, *(a2 + 16), range_var__init);
    a1[4] = v6;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 + 4);
    a1[5] = v9;
    result = palloc(8 * v9, a3);
    a1[6] = result;
    if (a1[5])
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, a3);
        pg_query__node__init(v12);
        *(a1[6] + 8 * v10) = v12;
        result = _outNode_0(*(a1[6] + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (a1[5] > v10);
    }
  }

  if (*(a2 + 32))
  {
    v13 = palloc(0x28uLL, a3);
    pg_query__node__init(v13);
    a1[7] = v13;
    result = _outNode_0(v13, *(a2 + 32));
  }

  if (*(a2 + 40))
  {
    v14 = palloc(0x28uLL, a3);
    pg_query__node__init(v14);
    a1[8] = v14;
    v15 = *(a2 + 40);

    return _outNode_0(v14, v15);
  }

  return result;
}

const char *_outCreateTransformStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 24) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v5 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v5);
    _outTypeName_0(v5, *(a2 + 8), type_name__init);
    *(a1 + 32) = v5;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  if (*(a2 + 24))
  {
    v8 = palloc(0x40uLL, a3);
    object_with_args__init = pg_query__object_with_args__init(v8);
    result = _outVacuumStmt_0(v8, *(a2 + 24), object_with_args__init);
    *(a1 + 48) = v8;
  }

  if (*(a2 + 32))
  {
    v10 = palloc(0x40uLL, a3);
    v11 = pg_query__object_with_args__init(v10);
    result = _outVacuumStmt_0(v10, *(a2 + 32), v11);
    *(a1 + 56) = v10;
  }

  return result;
}

char *_outCreateAmStmt_0(void *a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    a1[3] = result;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    a1[4] = v7;
    result = palloc(8 * v7, a3);
    a1[5] = result;
    if (a1[4])
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(a1[5] + 8 * v8) = v10;
        result = _outNode_0(*(a1[5] + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (a1[4] > v8);
    }
  }

  if (*(a2 + 24))
  {
    result = palloc(2uLL, a3);
    a1[6] = result;
    *result = *(a2 + 24);
    *(a1[6] + 1) = 0;
  }

  return result;
}

const char *_outCreatePublicationStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 32) = v7;
    result = palloc(8 * v7, a3);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(a1 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(a1 + 40) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 48) = v12;
    result = palloc(8 * v12, a3);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, v13);
        pg_query__node__init(v16);
        *(*(a1 + 56) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 56) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  *(a1 + 64) = *(a2 + 32);
  return result;
}

const char *_outAlterPublicationStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 32) = v7;
    result = palloc(8 * v7, a3);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(a1 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(a1 + 40) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 48) = v12;
    result = palloc(8 * v12, a3);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, v13);
        pg_query__node__init(v16);
        *(*(a1 + 56) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 56) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  *(a1 + 64) = *(a2 + 32);
  v17 = *(a2 + 36);
  if (v17 < 4)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = -1;
  }

  *(a1 + 68) = v18;
  return result;
}

const char *_outAlterSubscriptionStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 5)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    *(a1 + 32) = pstrdup(v7, a3);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    v10 = *(v9 + 4);
    *(a1 + 48) = v10;
    result = palloc(8 * v10, a3);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL, a3);
        pg_query__node__init(v13);
        *(*(a1 + 56) + 8 * v11) = v13;
        result = _outNode_0(*(*(a1 + 56) + 8 * v11), *(*(*(a2 + 24) + 16) + 8 * v11));
        v11 = v12++;
      }

      while (*(a1 + 48) > v11);
    }
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 64) = v15;
    result = palloc(8 * v15, a3);
    *(a1 + 72) = result;
    if (*(a1 + 64))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL, v16);
        pg_query__node__init(v19);
        *(*(a1 + 72) + 8 * v17) = v19;
        result = _outNode_0(*(*(a1 + 72) + 8 * v17), *(*(*(a2 + 32) + 16) + 8 * v17));
        v17 = v18++;
      }

      while (*(a1 + 64) > v17);
    }
  }

  return result;
}

const char *_outDropSubscriptionStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  v6 = *(a2 + 20);
  if (v6 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = -1;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  *(a1 + 36) = v8;
  return result;
}

const char *_outCreateStatsStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 24) = v6;
    *(a1 + 32) = palloc(8 * v6, a3);
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(a1 + 32) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(a1 + 24) > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 40) = v11;
    *(a1 + 48) = palloc(8 * v11, a3);
    if (*(a1 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(a1 + 48) + 8 * v12) = v14;
        _outNode_0(*(*(a1 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  v15 = *(a2 + 24);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(a1 + 56) = v16;
    *(a1 + 64) = palloc(8 * v16, a3);
    if (*(a1 + 56))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL, a3);
        pg_query__node__init(v19);
        *(*(a1 + 64) + 8 * v17) = v19;
        _outNode_0(*(*(a1 + 64) + 8 * v17), *(*(*(a2 + 24) + 16) + 8 * v17));
        v17 = v18++;
      }

      while (*(a1 + 56) > v17);
    }
  }

  v20 = *(a2 + 32);
  if (v20)
  {
    v21 = *(v20 + 4);
    *(a1 + 72) = v21;
    *(a1 + 80) = palloc(8 * v21, a3);
    if (*(a1 + 72))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL, a3);
        pg_query__node__init(v24);
        *(*(a1 + 80) + 8 * v22) = v24;
        _outNode_0(*(*(a1 + 80) + 8 * v22), *(*(*(a2 + 32) + 16) + 8 * v22));
        v22 = v23++;
      }

      while (*(a1 + 72) > v22);
    }
  }

  result = *(a2 + 40);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 88) = result;
  }

  *(a1 + 96) = *(a2 + 48);
  return result;
}

uint64_t _outCallStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x70uLL, a3);
    v6 = pg_query__func_call__init(v5);
    result = _outFuncCall_0(v5, *(a2 + 8), v6);
    *(v4 + 24) = v5;
  }

  if (*(a2 + 16))
  {
    v7 = palloc(0x58uLL, a3);
    func_expr__init = pg_query__func_expr__init(v7);
    result = _outFuncExpr_0(v7, *(a2 + 16), func_expr__init);
    *(v4 + 32) = v7;
  }

  return result;
}

uint64_t _outAExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 0x10)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(result + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(v4 + 40) + 8 * v9) = v11;
        result = _outNode_0(*(*(v4 + 40) + 8 * v9), *(*(*(a2 + 8) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(v4 + 32) > v9);
    }
  }

  if (*(a2 + 16))
  {
    v12 = palloc(0x28uLL, a3);
    pg_query__node__init(v12);
    *(v4 + 48) = v12;
    result = _outNode_0(v12, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    v13 = palloc(0x28uLL, a3);
    pg_query__node__init(v13);
    *(v4 + 56) = v13;
    result = _outNode_0(v13, *(a2 + 24));
  }

  *(v4 + 64) = *(a2 + 32);
  return result;
}

uint64_t _outColumnRef_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 32) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 32) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 24) > v8);
    }
  }

  *(v4 + 40) = *(a2 + 16);
  return result;
}

uint64_t _outAConst_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = palloc(0x28uLL, a3);
  pg_query__node__init(v5);
  *(a1 + 24) = v5;
  result = _outNode_0(v5, (a2 + 8));
  *(a1 + 32) = *(a2 + 24);
  return result;
}

uint64_t _outFuncCall_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 32) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 24) > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v4 + 40) = v11;
    result = palloc(8 * v11, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(v4 + 48) + 8 * v12) = v14;
        result = _outNode_0(*(*(v4 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(v4 + 40) > v12);
    }
  }

  v15 = *(a2 + 24);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(v4 + 56) = v16;
    result = palloc(8 * v16, a3);
    *(v4 + 64) = result;
    if (*(v4 + 56))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL, a3);
        pg_query__node__init(v19);
        *(*(v4 + 64) + 8 * v17) = v19;
        result = _outNode_0(*(*(v4 + 64) + 8 * v17), *(*(*(a2 + 24) + 16) + 8 * v17));
        v17 = v18++;
      }

      while (*(v4 + 56) > v17);
    }
  }

  if (*(a2 + 32))
  {
    v20 = palloc(0x28uLL, a3);
    pg_query__node__init(v20);
    *(v4 + 72) = v20;
    result = _outNode_0(v20, *(a2 + 32));
  }

  *(v4 + 80) = *(a2 + 40);
  *(v4 + 84) = *(a2 + 41);
  *(v4 + 88) = *(a2 + 42);
  *(v4 + 92) = *(a2 + 43);
  if (*(a2 + 48))
  {
    v21 = palloc(0x68uLL, a3);
    window_def__init = pg_query__window_def__init(v21);
    result = _outWindowDef_0(v21, *(a2 + 48), window_def__init);
    *(v4 + 96) = v21;
  }

  *(v4 + 104) = *(a2 + 56);
  return result;
}

uint64_t _outAIndices_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 24) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL, a3);
    pg_query__node__init(v6);
    *(v4 + 40) = v6;
    v7 = *(a2 + 16);

    return _outNode_0(v6, v7);
  }

  return result;
}

const char *_outResTarget_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 32) = v7;
    result = palloc(8 * v7, a3);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(a1 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(a1 + 40) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  if (*(a2 + 24))
  {
    v11 = palloc(0x28uLL, a3);
    pg_query__node__init(v11);
    *(a1 + 48) = v11;
    result = _outNode_0(v11, *(a2 + 24));
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

uint64_t _outTypeCast_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 24) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v6);
    result = _outTypeName_0(v6, *(a2 + 16), type_name__init);
    *(v4 + 32) = v6;
  }

  *(v4 + 40) = *(a2 + 24);
  return result;
}

uint64_t _outCollateClause_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 24) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(v4 + 32) = v7;
    result = palloc(8 * v7, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, v8);
        pg_query__node__init(v11);
        *(*(v4 + 40) + 8 * v9) = v11;
        result = _outNode_0(*(*(v4 + 40) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(v4 + 32) > v9);
    }
  }

  *(v4 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outSortBy_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 24) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  v6 = *(a2 + 16);
  if (v6 < 4)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v4 + 32) = v7;
  v8 = *(a2 + 20);
  if (v8 < 3)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -1;
  }

  *(v4 + 36) = v9;
  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v4 + 40) = v11;
    result = palloc(8 * v11, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL, v12);
        pg_query__node__init(v15);
        *(*(v4 + 48) + 8 * v13) = v15;
        result = _outNode_0(*(*(v4 + 48) + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13));
        v13 = v14++;
      }

      while (*(v4 + 40) > v13);
    }
  }

  *(v4 + 56) = *(a2 + 32);
  return result;
}

const char *_outWindowDef_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 40) = v8;
    result = palloc(8 * v8, a3);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(a1 + 48) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 48) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    result = palloc(8 * v13, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, a3);
        pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  if (*(a2 + 48))
  {
    v17 = palloc(0x28uLL, a3);
    pg_query__node__init(v17);
    *(a1 + 80) = v17;
    result = _outNode_0(v17, *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    v18 = palloc(0x28uLL, a3);
    pg_query__node__init(v18);
    *(a1 + 88) = v18;
    result = _outNode_0(v18, *(a2 + 56));
  }

  *(a1 + 96) = *(a2 + 64);
  return result;
}

uint64_t _outRangeSubselect_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 24) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x30uLL, a3);
    alias__init = pg_query__alias__init(v6);
    result = _outAlias_0(v6, *(a2 + 16), alias__init);
    *(v4 + 40) = v6;
  }

  return result;
}

uint64_t _outRangeFunction_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 24) = *(a2 + 4);
  *(result + 28) = *(a2 + 5);
  *(result + 32) = *(a2 + 6);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 40) = v6;
    result = palloc(8 * v6, a3);
    v4[6] = result;
    if (v4[5])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(v4[6] + 8 * v7) = v9;
        result = _outNode_0(*(v4[6] + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (v4[5] > v7);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x30uLL, a3);
    alias__init = pg_query__alias__init(v10);
    result = _outAlias_0(v10, *(a2 + 16), alias__init);
    v4[7] = v10;
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(v12 + 4);
    v4[8] = v13;
    result = palloc(8 * v13, a3);
    v4[9] = result;
    if (v4[8])
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, v14);
        pg_query__node__init(v17);
        *(v4[9] + 8 * v15) = v17;
        result = _outNode_0(*(v4[9] + 8 * v15), *(*(*(a2 + 24) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (v4[8] > v15);
    }
  }

  return result;
}

uint64_t _outRangeTableSample_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 24) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(v4 + 32) = v7;
    result = palloc(8 * v7, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(v4 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 40) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 32) > v8);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(v4 + 48) = v12;
    result = palloc(8 * v12, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL, a3);
        pg_query__node__init(v15);
        *(*(v4 + 56) + 8 * v13) = v15;
        result = _outNode_0(*(*(v4 + 56) + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13));
        v13 = v14++;
      }

      while (*(v4 + 48) > v13);
    }
  }

  if (*(a2 + 32))
  {
    v16 = palloc(0x28uLL, a3);
    pg_query__node__init(v16);
    *(v4 + 64) = v16;
    result = _outNode_0(v16, *(a2 + 32));
  }

  *(v4 + 72) = *(a2 + 40);
  return result;
}

uint64_t _outRangeTableFunc_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 24) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL, a3);
    pg_query__node__init(v6);
    *(v4 + 40) = v6;
    result = _outNode_0(v6, *(a2 + 16));
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(v4 + 48) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(v4 + 56) + 8 * v9) = v11;
        result = _outNode_0(*(*(v4 + 56) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(v4 + 48) > v9);
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v4 + 64) = v13;
    result = palloc(8 * v13, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, a3);
        pg_query__node__init(v16);
        *(*(v4 + 72) + 8 * v14) = v16;
        result = _outNode_0(*(*(v4 + 72) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(v4 + 64) > v14);
    }
  }

  if (*(a2 + 40))
  {
    v17 = palloc(0x30uLL, a3);
    alias__init = pg_query__alias__init(v17);
    result = _outAlias_0(v17, *(a2 + 40), alias__init);
    *(v4 + 80) = v17;
  }

  *(v4 + 88) = *(a2 + 48);
  return result;
}

const char *_outRangeTableFuncCol_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v6);
    result = _outTypeName_0(v6, *(a2 + 16), type_name__init);
    *(a1 + 32) = v6;
  }

  *(a1 + 40) = *(a2 + 24);
  *(a1 + 44) = *(a2 + 25);
  if (*(a2 + 32))
  {
    v8 = palloc(0x28uLL, a3);
    pg_query__node__init(v8);
    *(a1 + 48) = v8;
    result = _outNode_0(v8, *(a2 + 32));
  }

  if (*(a2 + 40))
  {
    v9 = palloc(0x28uLL, a3);
    pg_query__node__init(v9);
    *(a1 + 56) = v9;
    result = _outNode_0(v9, *(a2 + 40));
  }

  *(a1 + 64) = *(a2 + 48);
  return result;
}

uint64_t _outTypeName_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 32) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 24) > v7);
    }
  }

  *(v4 + 40) = *(a2 + 16);
  *(v4 + 44) = *(a2 + 20);
  *(v4 + 48) = *(a2 + 21);
  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v4 + 56) = v11;
    result = palloc(8 * v11, a3);
    *(v4 + 64) = result;
    if (*(v4 + 56))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(v4 + 64) + 8 * v12) = v14;
        result = _outNode_0(*(*(v4 + 64) + 8 * v12), *(*(*(a2 + 24) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(v4 + 56) > v12);
    }
  }

  *(v4 + 72) = *(a2 + 32);
  v15 = *(a2 + 40);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(v4 + 80) = v16;
    result = palloc(8 * v16, a3);
    *(v4 + 88) = result;
    if (*(v4 + 80))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL, v17);
        pg_query__node__init(v20);
        *(*(v4 + 88) + 8 * v18) = v20;
        result = _outNode_0(*(*(v4 + 88) + 8 * v18), *(*(*(a2 + 40) + 16) + 8 * v18));
        v18 = v19++;
      }

      while (*(v4 + 80) > v18);
    }
  }

  *(v4 + 96) = *(a2 + 48);
  return result;
}

char *_outColumnDef_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v6);
    result = _outTypeName_0(v6, *(a2 + 16), type_name__init);
    *(a1 + 32) = v6;
  }

  *(a1 + 40) = *(a2 + 24);
  *(a1 + 44) = *(a2 + 28);
  *(a1 + 48) = *(a2 + 29);
  *(a1 + 52) = *(a2 + 30);
  if (*(a2 + 31))
  {
    result = palloc(2uLL, a3);
    *(a1 + 56) = result;
    *result = *(a2 + 31);
    *(*(a1 + 56) + 1) = 0;
  }

  if (*(a2 + 32))
  {
    v8 = palloc(0x28uLL, a3);
    pg_query__node__init(v8);
    *(a1 + 64) = v8;
    result = _outNode_0(v8, *(a2 + 32));
  }

  if (*(a2 + 40))
  {
    v9 = palloc(0x28uLL, a3);
    pg_query__node__init(v9);
    *(a1 + 72) = v9;
    result = _outNode_0(v9, *(a2 + 40));
  }

  if (*(a2 + 48))
  {
    result = palloc(2uLL, a3);
    *(a1 + 80) = result;
    *result = *(a2 + 48);
    *(*(a1 + 80) + 1) = 0;
  }

  if (*(a2 + 56))
  {
    v10 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v10);
    result = _outRangeVar_0(v10, *(a2 + 56), range_var__init);
    *(a1 + 88) = v10;
  }

  if (*(a2 + 64))
  {
    result = palloc(2uLL, a3);
    *(a1 + 96) = result;
    *result = *(a2 + 64);
    *(*(a1 + 96) + 1) = 0;
  }

  if (*(a2 + 72))
  {
    v12 = palloc(0x38uLL, a3);
    collate_clause__init = pg_query__collate_clause__init(v12);
    result = _outCollateClause_0(v12, *(a2 + 72), collate_clause__init);
    *(a1 + 104) = v12;
  }

  *(a1 + 112) = *(a2 + 80);
  v14 = *(a2 + 88);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 120) = v15;
    result = palloc(8 * v15, a3);
    *(a1 + 128) = result;
    if (*(a1 + 120))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL, a3);
        pg_query__node__init(v18);
        *(*(a1 + 128) + 8 * v16) = v18;
        result = _outNode_0(*(*(a1 + 128) + 8 * v16), *(*(*(a2 + 88) + 16) + 8 * v16));
        v16 = v17++;
      }

      while (*(a1 + 120) > v16);
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(v19 + 4);
    *(a1 + 136) = v20;
    result = palloc(8 * v20, a3);
    *(a1 + 144) = result;
    if (*(a1 + 136))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL, v21);
        pg_query__node__init(v24);
        *(*(a1 + 144) + 8 * v22) = v24;
        result = _outNode_0(*(*(a1 + 144) + 8 * v22), *(*(*(a2 + 96) + 16) + 8 * v22));
        v22 = v23++;
      }

      while (*(a1 + 136) > v22);
    }
  }

  *(a1 + 152) = *(a2 + 104);
  return result;
}

const char *_outIndexElem_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL, a3);
    pg_query__node__init(v6);
    *(a1 + 32) = v6;
    _outNode_0(v6, *(a2 + 16));
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 48) = v9;
    result = palloc(8 * v9, a3);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, a3);
        pg_query__node__init(v12);
        *(*(a1 + 56) + 8 * v10) = v12;
        result = _outNode_0(*(*(a1 + 56) + 8 * v10), *(*(*(a2 + 32) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  v13 = *(a2 + 40);
  if (v13)
  {
    v14 = *(v13 + 4);
    *(a1 + 64) = v14;
    result = palloc(8 * v14, a3);
    *(a1 + 72) = result;
    if (*(a1 + 64))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, a3);
        pg_query__node__init(v17);
        *(*(a1 + 72) + 8 * v15) = v17;
        result = _outNode_0(*(*(a1 + 72) + 8 * v15), *(*(*(a2 + 40) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (*(a1 + 64) > v15);
    }
  }

  v18 = *(a2 + 48);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(a1 + 80) = v19;
    result = palloc(8 * v19, a3);
    *(a1 + 88) = result;
    if (*(a1 + 80))
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = palloc(0x28uLL, v20);
        pg_query__node__init(v23);
        *(*(a1 + 88) + 8 * v21) = v23;
        result = _outNode_0(*(*(a1 + 88) + 8 * v21), *(*(*(a2 + 48) + 16) + 8 * v21));
        v21 = v22++;
      }

      while (*(a1 + 80) > v21);
    }
  }

  v24 = *(a2 + 56);
  if (v24 < 4)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = -1;
  }

  *(a1 + 96) = v25;
  v26 = *(a2 + 60);
  if (v26 < 3)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = -1;
  }

  *(a1 + 100) = v27;
  return result;
}

char *_outConstraint_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 0xE)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    *(a1 + 32) = pstrdup(v7, a3);
  }

  *(a1 + 40) = *(a2 + 16);
  *(a1 + 44) = *(a2 + 17);
  *(a1 + 48) = *(a2 + 20);
  *(a1 + 52) = *(a2 + 24);
  if (*(a2 + 32))
  {
    v8 = palloc(0x28uLL, a3);
    pg_query__node__init(v8);
    *(a1 + 56) = v8;
    _outNode_0(v8, *(a2 + 32));
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    *(a1 + 64) = pstrdup(v9, a3);
  }

  if (*(a2 + 48))
  {
    v10 = palloc(2uLL, a3);
    *(a1 + 72) = v10;
    *v10 = *(a2 + 48);
    *(*(a1 + 72) + 1) = 0;
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 80) = v12;
    *(a1 + 88) = palloc(8 * v12, a3);
    if (*(a1 + 80))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL, a3);
        pg_query__node__init(v15);
        *(*(a1 + 88) + 8 * v13) = v15;
        _outNode_0(*(*(a1 + 88) + 8 * v13), *(*(*(a2 + 56) + 16) + 8 * v13));
        v13 = v14++;
      }

      while (*(a1 + 80) > v13);
    }
  }

  v16 = *(a2 + 64);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(a1 + 96) = v17;
    *(a1 + 104) = palloc(8 * v17, a3);
    if (*(a1 + 96))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL, a3);
        pg_query__node__init(v20);
        *(*(a1 + 104) + 8 * v18) = v20;
        _outNode_0(*(*(a1 + 104) + 8 * v18), *(*(*(a2 + 64) + 16) + 8 * v18));
        v18 = v19++;
      }

      while (*(a1 + 96) > v18);
    }
  }

  v21 = *(a2 + 72);
  if (v21)
  {
    v22 = *(v21 + 4);
    *(a1 + 112) = v22;
    *(a1 + 120) = palloc(8 * v22, a3);
    if (*(a1 + 112))
    {
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = palloc(0x28uLL, a3);
        pg_query__node__init(v25);
        *(*(a1 + 120) + 8 * v23) = v25;
        _outNode_0(*(*(a1 + 120) + 8 * v23), *(*(*(a2 + 72) + 16) + 8 * v23));
        v23 = v24++;
      }

      while (*(a1 + 112) > v23);
    }
  }

  v26 = *(a2 + 80);
  if (v26)
  {
    v27 = *(v26 + 4);
    *(a1 + 128) = v27;
    *(a1 + 136) = palloc(8 * v27, a3);
    if (*(a1 + 128))
    {
      v28 = 0;
      v29 = 1;
      do
      {
        v30 = palloc(0x28uLL, a3);
        pg_query__node__init(v30);
        *(*(a1 + 136) + 8 * v28) = v30;
        _outNode_0(*(*(a1 + 136) + 8 * v28), *(*(*(a2 + 80) + 16) + 8 * v28));
        v28 = v29++;
      }

      while (*(a1 + 128) > v28);
    }
  }

  v31 = *(a2 + 88);
  if (v31)
  {
    *(a1 + 144) = pstrdup(v31, a3);
  }

  v32 = *(a2 + 96);
  if (v32)
  {
    *(a1 + 152) = pstrdup(v32, a3);
  }

  *(a1 + 160) = *(a2 + 104);
  result = *(a2 + 112);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 168) = result;
  }

  if (*(a2 + 120))
  {
    v34 = palloc(0x28uLL, a3);
    pg_query__node__init(v34);
    *(a1 + 176) = v34;
    result = _outNode_0(v34, *(a2 + 120));
  }

  if (*(a2 + 128))
  {
    v35 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v35);
    result = _outRangeVar_0(v35, *(a2 + 128), range_var__init);
    *(a1 + 184) = v35;
  }

  v37 = *(a2 + 136);
  if (v37)
  {
    v38 = *(v37 + 4);
    *(a1 + 192) = v38;
    result = palloc(8 * v38, a3);
    *(a1 + 200) = result;
    if (*(a1 + 192))
    {
      v39 = 0;
      v40 = 1;
      do
      {
        v41 = palloc(0x28uLL, a3);
        pg_query__node__init(v41);
        *(*(a1 + 200) + 8 * v39) = v41;
        result = _outNode_0(*(*(a1 + 200) + 8 * v39), *(*(*(a2 + 136) + 16) + 8 * v39));
        v39 = v40++;
      }

      while (*(a1 + 192) > v39);
    }
  }

  v42 = *(a2 + 144);
  if (v42)
  {
    v43 = *(v42 + 4);
    *(a1 + 208) = v43;
    result = palloc(8 * v43, a3);
    *(a1 + 216) = result;
    if (*(a1 + 208))
    {
      v44 = 0;
      v45 = 1;
      do
      {
        v46 = palloc(0x28uLL, a3);
        pg_query__node__init(v46);
        *(*(a1 + 216) + 8 * v44) = v46;
        result = _outNode_0(*(*(a1 + 216) + 8 * v44), *(*(*(a2 + 144) + 16) + 8 * v44));
        v44 = v45++;
      }

      while (*(a1 + 208) > v44);
    }
  }

  if (*(a2 + 152))
  {
    result = palloc(2uLL, a3);
    *(a1 + 224) = result;
    *result = *(a2 + 152);
    *(*(a1 + 224) + 1) = 0;
  }

  if (*(a2 + 153))
  {
    result = palloc(2uLL, a3);
    *(a1 + 232) = result;
    *result = *(a2 + 153);
    *(*(a1 + 232) + 1) = 0;
  }

  if (*(a2 + 154))
  {
    result = palloc(2uLL, a3);
    *(a1 + 240) = result;
    *result = *(a2 + 154);
    *(*(a1 + 240) + 1) = 0;
  }

  v47 = *(a2 + 160);
  if (v47)
  {
    v48 = *(v47 + 4);
    *(a1 + 248) = v48;
    result = palloc(8 * v48, a3);
    *(a1 + 256) = result;
    if (*(a1 + 248))
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = palloc(0x28uLL, v49);
        pg_query__node__init(v52);
        *(*(a1 + 256) + 8 * v50) = v52;
        result = _outNode_0(*(*(a1 + 256) + 8 * v50), *(*(*(a2 + 160) + 16) + 8 * v50));
        v50 = v51++;
      }

      while (*(a1 + 248) > v50);
    }
  }

  *(a1 + 264) = *(a2 + 168);
  *(a1 + 268) = *(a2 + 172);
  *(a1 + 272) = *(a2 + 173);
  return result;
}

const char *_outDefElem_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  if (*(a2 + 24))
  {
    v7 = palloc(0x28uLL, a3);
    pg_query__node__init(v7);
    *(a1 + 40) = v7;
    result = _outNode_0(v7, *(a2 + 24));
  }

  v8 = *(a2 + 32);
  if (v8 < 4)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -1;
  }

  *(a1 + 48) = v9;
  *(a1 + 52) = *(a2 + 36);
  return result;
}

uint64_t _outRangeTblEntry_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 9)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  *(a1 + 28) = *(a2 + 8);
  if (*(a2 + 12))
  {
    v7 = palloc(2uLL, a3);
    *(a1 + 32) = v7;
    *v7 = *(a2 + 12);
    *(*(a1 + 32) + 1) = 0;
  }

  *(a1 + 40) = *(a2 + 16);
  if (*(a2 + 24))
  {
    v8 = palloc(0x38uLL, a3);
    table_sample_clause__init = pg_query__table_sample_clause__init(v8);
    _outTableSampleClause_0(v8, *(a2 + 24), table_sample_clause__init);
    *(a1 + 48) = v8;
  }

  if (*(a2 + 32))
  {
    v10 = palloc(0x160uLL, a3);
    pg_query__query__init(v10);
    _outQuery_0(v10, *(a2 + 32), v11);
    *(a1 + 56) = v10;
  }

  *(a1 + 64) = *(a2 + 40);
  v12 = *(a2 + 44);
  if (v12 < 8)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = -1;
  }

  *(a1 + 68) = v13;
  *(a1 + 72) = *(a2 + 48);
  v14 = *(a2 + 56);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 80) = v15;
    *(a1 + 88) = palloc(8 * v15, a3);
    if (*(a1 + 80))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL, a3);
        pg_query__node__init(v18);
        *(*(a1 + 88) + 8 * v16) = v18;
        _outNode_0(*(*(a1 + 88) + 8 * v16), *(*(*(a2 + 56) + 16) + 8 * v16));
        v16 = v17++;
      }

      while (*(a1 + 80) > v16);
    }
  }

  v19 = *(a2 + 64);
  if (v19)
  {
    v20 = *(v19 + 4);
    *(a1 + 96) = v20;
    *(a1 + 104) = palloc(8 * v20, a3);
    if (*(a1 + 96))
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = palloc(0x28uLL, a3);
        pg_query__node__init(v23);
        *(*(a1 + 104) + 8 * v21) = v23;
        _outNode_0(*(*(a1 + 104) + 8 * v21), *(*(*(a2 + 64) + 16) + 8 * v21));
        v21 = v22++;
      }

      while (*(a1 + 96) > v21);
    }
  }

  v24 = *(a2 + 72);
  if (v24)
  {
    v25 = *(v24 + 4);
    *(a1 + 112) = v25;
    *(a1 + 120) = palloc(8 * v25, a3);
    if (*(a1 + 112))
    {
      v26 = 0;
      v27 = 1;
      do
      {
        v28 = palloc(0x28uLL, a3);
        pg_query__node__init(v28);
        *(*(a1 + 120) + 8 * v26) = v28;
        _outNode_0(*(*(a1 + 120) + 8 * v26), *(*(*(a2 + 72) + 16) + 8 * v26));
        v26 = v27++;
      }

      while (*(a1 + 112) > v26);
    }
  }

  v29 = *(a2 + 80);
  if (v29)
  {
    v30 = *(v29 + 4);
    *(a1 + 128) = v30;
    *(a1 + 136) = palloc(8 * v30, a3);
    if (*(a1 + 128))
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = palloc(0x28uLL, a3);
        pg_query__node__init(v33);
        *(*(a1 + 136) + 8 * v31) = v33;
        _outNode_0(*(*(a1 + 136) + 8 * v31), *(*(*(a2 + 80) + 16) + 8 * v31));
        v31 = v32++;
      }

      while (*(a1 + 128) > v31);
    }
  }

  *(a1 + 144) = *(a2 + 88);
  if (*(a2 + 96))
  {
    v34 = palloc(0xC0uLL, a3);
    table_func__init = pg_query__table_func__init(v34);
    _outTableFunc_0(v34, *(a2 + 96), table_func__init);
    *(a1 + 152) = v34;
  }

  v36 = *(a2 + 104);
  if (v36)
  {
    v37 = *(v36 + 4);
    *(a1 + 160) = v37;
    *(a1 + 168) = palloc(8 * v37, a3);
    if (*(a1 + 160))
    {
      v38 = 0;
      v39 = 1;
      do
      {
        v40 = palloc(0x28uLL, a3);
        pg_query__node__init(v40);
        *(*(a1 + 168) + 8 * v38) = v40;
        _outNode_0(*(*(a1 + 168) + 8 * v38), *(*(*(a2 + 104) + 16) + 8 * v38));
        v38 = v39++;
      }

      while (*(a1 + 160) > v38);
    }
  }

  v41 = *(a2 + 112);
  if (v41)
  {
    *(a1 + 176) = pstrdup(v41, a3);
  }

  *(a1 + 184) = *(a2 + 120);
  *(a1 + 188) = *(a2 + 124);
  v42 = *(a2 + 128);
  if (v42)
  {
    v43 = *(v42 + 4);
    *(a1 + 192) = v43;
    *(a1 + 200) = palloc(8 * v43, a3);
    if (*(a1 + 192))
    {
      v44 = 0;
      v45 = 1;
      do
      {
        v46 = palloc(0x28uLL, a3);
        pg_query__node__init(v46);
        *(*(a1 + 200) + 8 * v44) = v46;
        _outNode_0(*(*(a1 + 200) + 8 * v44), *(*(*(a2 + 128) + 16) + 8 * v44));
        v44 = v45++;
      }

      while (*(a1 + 192) > v44);
    }
  }

  v47 = *(a2 + 136);
  if (v47)
  {
    v48 = *(v47 + 4);
    *(a1 + 208) = v48;
    *(a1 + 216) = palloc(8 * v48, a3);
    if (*(a1 + 208))
    {
      v49 = 0;
      v50 = 1;
      do
      {
        v51 = palloc(0x28uLL, a3);
        pg_query__node__init(v51);
        *(*(a1 + 216) + 8 * v49) = v51;
        _outNode_0(*(*(a1 + 216) + 8 * v49), *(*(*(a2 + 136) + 16) + 8 * v49));
        v49 = v50++;
      }

      while (*(a1 + 208) > v49);
    }
  }

  v52 = *(a2 + 144);
  if (v52)
  {
    v53 = *(v52 + 4);
    *(a1 + 224) = v53;
    *(a1 + 232) = palloc(8 * v53, a3);
    if (*(a1 + 224))
    {
      v54 = 0;
      v55 = 1;
      do
      {
        v56 = palloc(0x28uLL, a3);
        pg_query__node__init(v56);
        *(*(a1 + 232) + 8 * v54) = v56;
        _outNode_0(*(*(a1 + 232) + 8 * v54), *(*(*(a2 + 144) + 16) + 8 * v54));
        v54 = v55++;
      }

      while (*(a1 + 224) > v54);
    }
  }

  v57 = *(a2 + 152);
  if (v57)
  {
    *(a1 + 240) = pstrdup(v57, a3);
  }

  v58 = *(a2 + 160);
  *(a1 + 248) = v58;
  if (*(a2 + 168))
  {
    v59 = palloc(0x30uLL, v58);
    alias__init = pg_query__alias__init(v59);
    _outAlias_0(v59, *(a2 + 168), alias__init);
    *(a1 + 256) = v59;
  }

  if (*(a2 + 176))
  {
    v61 = palloc(0x30uLL, v58);
    v62 = pg_query__alias__init(v61);
    _outAlias_0(v61, *(a2 + 176), v62);
    *(a1 + 264) = v61;
  }

  *(a1 + 272) = *(a2 + 184);
  *(a1 + 276) = *(a2 + 185);
  *(a1 + 280) = *(a2 + 186);
  *(a1 + 284) = *(a2 + 188);
  *(a1 + 288) = *(a2 + 192);
  if (!bms_is_empty(*(a2 + 200)))
  {
    v63 = bms_num_members(*(a2 + 200));
    *(a1 + 296) = v63;
    *(a1 + 304) = palloc(8 * v63, v64);
    member = bms_first_member(*(a2 + 200));
    if ((member & 0x80000000) == 0)
    {
      v66 = 0;
      do
      {
        v67 = v66 + 1;
        *(*(a1 + 304) + 8 * v66) = member;
        member = bms_first_member(*(a2 + 200));
        v66 = v67;
      }

      while ((member & 0x80000000) == 0);
    }
  }

  if (!bms_is_empty(*(a2 + 208)))
  {
    v68 = bms_num_members(*(a2 + 208));
    *(a1 + 312) = v68;
    *(a1 + 320) = palloc(8 * v68, v69);
    v70 = bms_first_member(*(a2 + 208));
    if ((v70 & 0x80000000) == 0)
    {
      v71 = 0;
      do
      {
        v72 = v71 + 1;
        *(*(a1 + 320) + 8 * v71) = v70;
        v70 = bms_first_member(*(a2 + 208));
        v71 = v72;
      }

      while ((v70 & 0x80000000) == 0);
    }
  }

  if (!bms_is_empty(*(a2 + 216)))
  {
    v73 = bms_num_members(*(a2 + 216));
    *(a1 + 328) = v73;
    *(a1 + 336) = palloc(8 * v73, v74);
    v75 = bms_first_member(*(a2 + 216));
    if ((v75 & 0x80000000) == 0)
    {
      v76 = 0;
      do
      {
        v77 = v76 + 1;
        *(*(a1 + 336) + 8 * v76) = v75;
        v75 = bms_first_member(*(a2 + 216));
        v76 = v77;
      }

      while ((v75 & 0x80000000) == 0);
    }
  }

  result = bms_is_empty(*(a2 + 224));
  if ((result & 1) == 0)
  {
    v80 = bms_num_members(*(a2 + 224));
    *(a1 + 344) = v80;
    *(a1 + 352) = palloc(8 * v80, v81);
    result = bms_first_member(*(a2 + 224));
    if ((result & 0x80000000) == 0)
    {
      v82 = 0;
      do
      {
        v83 = v82 + 1;
        *(*(a1 + 352) + 8 * v82) = result;
        result = bms_first_member(*(a2 + 224));
        v82 = v83;
      }

      while ((result & 0x80000000) == 0);
    }
  }

  v84 = *(a2 + 232);
  if (v84)
  {
    v85 = *(v84 + 4);
    *(a1 + 360) = v85;
    result = palloc(8 * v85, v79);
    *(a1 + 368) = result;
    if (*(a1 + 360))
    {
      v87 = 0;
      v88 = 1;
      do
      {
        v89 = palloc(0x28uLL, v86);
        pg_query__node__init(v89);
        *(*(a1 + 368) + 8 * v87) = v89;
        result = _outNode_0(*(*(a1 + 368) + 8 * v87), *(*(*(a2 + 232) + 16) + 8 * v87));
        v87 = v88++;
      }

      while (*(a1 + 360) > v87);
    }
  }

  return result;
}

uint64_t _outRangeTblFunction_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(a1 + 24) = v5;
    _outNode_0(v5, *(a2 + 8));
  }

  *(a1 + 32) = *(a2 + 16);
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 40) = v7;
    *(a1 + 48) = palloc(8 * v7, a3);
    if (*(a1 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(a1 + 48) + 8 * v8) = v10;
        _outNode_0(*(*(a1 + 48) + 8 * v8), *(*(*(a2 + 24) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(a1 + 40) > v8);
    }
  }

  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 56) = v12;
    *(a1 + 64) = palloc(8 * v12, a3);
    if (*(a1 + 56))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL, a3);
        pg_query__node__init(v15);
        *(*(a1 + 64) + 8 * v13) = v15;
        _outNode_0(*(*(a1 + 64) + 8 * v13), *(*(*(a2 + 32) + 16) + 8 * v13));
        v13 = v14++;
      }

      while (*(a1 + 56) > v13);
    }
  }

  v16 = *(a2 + 40);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(a1 + 72) = v17;
    *(a1 + 80) = palloc(8 * v17, a3);
    if (*(a1 + 72))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL, a3);
        pg_query__node__init(v20);
        *(*(a1 + 80) + 8 * v18) = v20;
        _outNode_0(*(*(a1 + 80) + 8 * v18), *(*(*(a2 + 40) + 16) + 8 * v18));
        v18 = v19++;
      }

      while (*(a1 + 72) > v18);
    }
  }

  v21 = *(a2 + 48);
  if (v21)
  {
    v22 = *(v21 + 4);
    *(a1 + 88) = v22;
    *(a1 + 96) = palloc(8 * v22, a3);
    if (*(a1 + 88))
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = palloc(0x28uLL, v23);
        pg_query__node__init(v26);
        *(*(a1 + 96) + 8 * v24) = v26;
        _outNode_0(*(*(a1 + 96) + 8 * v24), *(*(*(a2 + 48) + 16) + 8 * v24));
        v24 = v25++;
      }

      while (*(a1 + 88) > v24);
    }
  }

  result = bms_is_empty(*(a2 + 56));
  if ((result & 1) == 0)
  {
    v28 = bms_num_members(*(a2 + 56));
    *(a1 + 104) = v28;
    *(a1 + 112) = palloc(8 * v28, v29);
    result = bms_first_member(*(a2 + 56));
    if ((result & 0x80000000) == 0)
    {
      v30 = 0;
      do
      {
        v31 = v30 + 1;
        *(*(a1 + 112) + 8 * v30) = result;
        result = bms_first_member(*(a2 + 56));
        v30 = v31;
      }

      while ((result & 0x80000000) == 0);
    }
  }

  return result;
}

uint64_t _outTableSampleClause_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 24) = *(a2 + 4);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 32) = v6;
    result = palloc(8 * v6, a3);
    v4[5] = result;
    if (v4[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(v4[5] + 8 * v7) = v9;
        result = _outNode_0(*(v4[5] + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (v4[4] > v7);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x28uLL, a3);
    pg_query__node__init(v10);
    v4[6] = v10;
    v11 = *(a2 + 16);

    return _outNode_0(v10, v11);
  }

  return result;
}

const char *_outWithCheckOption_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    *(a1 + 32) = pstrdup(v7, a3);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  if (*(a2 + 24))
  {
    v9 = palloc(0x28uLL, a3);
    pg_query__node__init(v9);
    *(a1 + 48) = v9;
    result = _outNode_0(v9, *(a2 + 24));
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

uint64_t _outGroupingSet_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 5)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(result + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(*(v4 + 40) + 8 * v10) = v12;
        result = _outNode_0(*(*(v4 + 40) + 8 * v10), *(*(*(a2 + 8) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(v4 + 32) > v10);
    }
  }

  *(v4 + 48) = *(a2 + 16);
  return result;
}

const char *_outWindowClause_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 40) = v8;
    result = palloc(8 * v8, a3);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(a1 + 48) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 48) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    result = palloc(8 * v13, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, a3);
        pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  if (*(a2 + 48))
  {
    v17 = palloc(0x28uLL, a3);
    pg_query__node__init(v17);
    *(a1 + 80) = v17;
    result = _outNode_0(v17, *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    v18 = palloc(0x28uLL, a3);
    pg_query__node__init(v18);
    *(a1 + 88) = v18;
    result = _outNode_0(v18, *(a2 + 56));
  }

  *(a1 + 96) = *(a2 + 64);
  *(a1 + 100) = *(a2 + 68);
  *(a1 + 104) = *(a2 + 72);
  *(a1 + 108) = *(a2 + 76);
  *(a1 + 112) = *(a2 + 77);
  *(a1 + 116) = *(a2 + 80);
  *(a1 + 120) = *(a2 + 84);
  return result;
}

uint64_t _outCreateOpClassItem_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 24) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v5 = palloc(0x40uLL, a3);
    object_with_args__init = pg_query__object_with_args__init(v5);
    result = _outVacuumStmt_0(v5, *(a2 + 8), object_with_args__init);
    *(v4 + 32) = v5;
  }

  *(v4 + 40) = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(v4 + 48) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(v4 + 56) + 8 * v9) = v11;
        result = _outNode_0(*(*(v4 + 56) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(v4 + 48) > v9);
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v4 + 64) = v13;
    result = palloc(8 * v13, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, a3);
        pg_query__node__init(v16);
        *(*(v4 + 72) + 8 * v14) = v16;
        result = _outNode_0(*(*(v4 + 72) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(v4 + 64) > v14);
    }
  }

  if (*(a2 + 40))
  {
    v17 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v17);
    result = _outTypeName_0(v17, *(a2 + 40), type_name__init);
    *(v4 + 80) = v17;
  }

  return result;
}

char *_outTableLikeClause_0(char *result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(v4 + 3) = v5;
  }

  *(v4 + 8) = *(a2 + 16);
  *(v4 + 9) = *(a2 + 20);
  return result;
}

const char *_outFunctionParameter_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v6);
    result = _outTypeName_0(v6, *(a2 + 16), type_name__init);
    *(a1 + 32) = v6;
  }

  v8 = *(a2 + 24);
  if (v8 > 110)
  {
    switch(v8)
    {
      case 'v':
        *(a1 + 40) = 4;
        if (!*(a2 + 32))
        {
          return result;
        }

        goto LABEL_20;
      case 't':
        *(a1 + 40) = 5;
        if (!*(a2 + 32))
        {
          return result;
        }

        goto LABEL_20;
      case 'o':
        *(a1 + 40) = 2;
        if (!*(a2 + 32))
        {
          return result;
        }

        goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v8 != 98)
  {
    if (v8 == 105)
    {
      *(a1 + 40) = 1;
      if (!*(a2 + 32))
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_23:
    *(a1 + 40) = -1;
    if (!*(a2 + 32))
    {
      return result;
    }

    goto LABEL_20;
  }

  *(a1 + 40) = 3;
  if (!*(a2 + 32))
  {
    return result;
  }

LABEL_20:
  v9 = palloc(0x28uLL, a3);
  pg_query__node__init(v9);
  *(a1 + 48) = v9;
  v10 = *(a2 + 32);

  return _outNode_0(v9, v10);
}

uint64_t _outLockingClause_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 32) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 32) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 24) > v8);
    }
  }

  v11 = *(a2 + 16);
  if (v11 < 5)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = -1;
  }

  *(v4 + 40) = v12;
  v13 = *(a2 + 20);
  if (v13 < 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = -1;
  }

  *(v4 + 44) = v14;
  return result;
}

_DWORD *_outRowMarkClause_0(_DWORD *result, uint64_t a2)
{
  result[6] = *(a2 + 4);
  v2 = *(a2 + 8);
  if (v2 < 5)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = -1;
  }

  result[7] = v3;
  v4 = *(a2 + 12);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  result[8] = v5;
  result[9] = *(a2 + 16);
  return result;
}

uint64_t _outXmlSerialize_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  *(result + 24) = v7;
  if (*(a2 + 8))
  {
    v8 = palloc(0x28uLL, a3);
    pg_query__node__init(v8);
    *(v4 + 32) = v8;
    result = _outNode_0(v8, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    v9 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v9);
    result = _outTypeName_0(v9, *(a2 + 16), type_name__init);
    *(v4 + 40) = v9;
  }

  *(v4 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outWithClause_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 32) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 32) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 24) > v8);
    }
  }

  *(v4 + 40) = *(a2 + 16);
  *(v4 + 44) = *(a2 + 20);
  return result;
}

const char *_outInferClause_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 24) = v6;
    *(a1 + 32) = palloc(8 * v6, a3);
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(a1 + 32) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(a1 + 24) > v7);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x28uLL, a3);
    pg_query__node__init(v10);
    *(a1 + 40) = v10;
    _outNode_0(v10, *(a2 + 16));
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 48) = result;
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

uint64_t _outOnConflictClause_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x40uLL, a3);
    infer_clause__init = pg_query__infer_clause__init(v7);
    result = _outInferClause_0(v7, *(a2 + 8), infer_clause__init);
    *(v4 + 32) = v7;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(v9 + 4);
    *(v4 + 40) = v10;
    result = palloc(8 * v10, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL, a3);
        pg_query__node__init(v13);
        *(*(v4 + 48) + 8 * v11) = v13;
        result = _outNode_0(*(*(v4 + 48) + 8 * v11), *(*(*(a2 + 16) + 16) + 8 * v11));
        v11 = v12++;
      }

      while (*(v4 + 40) > v11);
    }
  }

  if (*(a2 + 24))
  {
    v14 = palloc(0x28uLL, a3);
    pg_query__node__init(v14);
    *(v4 + 56) = v14;
    result = _outNode_0(v14, *(a2 + 24));
  }

  *(v4 + 64) = *(a2 + 32);
  return result;
}

const char *_outCommonTableExpr_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 32) = v7;
    result = palloc(8 * v7, a3);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(a1 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(a1 + 40) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  v11 = *(a2 + 24);
  if (v11 < 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = -1;
  }

  *(a1 + 48) = v12;
  if (*(a2 + 32))
  {
    v13 = palloc(0x28uLL, a3);
    pg_query__node__init(v13);
    *(a1 + 56) = v13;
    result = _outNode_0(v13, *(a2 + 32));
  }

  *(a1 + 64) = *(a2 + 40);
  *(a1 + 68) = *(a2 + 44);
  *(a1 + 72) = *(a2 + 48);
  v14 = *(a2 + 56);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 80) = v15;
    result = palloc(8 * v15, a3);
    *(a1 + 88) = result;
    if (*(a1 + 80))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL, a3);
        pg_query__node__init(v18);
        *(*(a1 + 88) + 8 * v16) = v18;
        result = _outNode_0(*(*(a1 + 88) + 8 * v16), *(*(*(a2 + 56) + 16) + 8 * v16));
        v16 = v17++;
      }

      while (*(a1 + 80) > v16);
    }
  }

  v19 = *(a2 + 64);
  if (v19)
  {
    v20 = *(v19 + 4);
    *(a1 + 96) = v20;
    result = palloc(8 * v20, a3);
    *(a1 + 104) = result;
    if (*(a1 + 96))
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = palloc(0x28uLL, a3);
        pg_query__node__init(v23);
        *(*(a1 + 104) + 8 * v21) = v23;
        result = _outNode_0(*(*(a1 + 104) + 8 * v21), *(*(*(a2 + 64) + 16) + 8 * v21));
        v21 = v22++;
      }

      while (*(a1 + 96) > v21);
    }
  }

  v24 = *(a2 + 72);
  if (v24)
  {
    v25 = *(v24 + 4);
    *(a1 + 112) = v25;
    result = palloc(8 * v25, a3);
    *(a1 + 120) = result;
    if (*(a1 + 112))
    {
      v26 = 0;
      v27 = 1;
      do
      {
        v28 = palloc(0x28uLL, a3);
        pg_query__node__init(v28);
        *(*(a1 + 120) + 8 * v26) = v28;
        result = _outNode_0(*(*(a1 + 120) + 8 * v26), *(*(*(a2 + 72) + 16) + 8 * v26));
        v26 = v27++;
      }

      while (*(a1 + 112) > v26);
    }
  }

  v29 = *(a2 + 80);
  if (v29)
  {
    v30 = *(v29 + 4);
    *(a1 + 128) = v30;
    result = palloc(8 * v30, a3);
    *(a1 + 136) = result;
    if (*(a1 + 128))
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = palloc(0x28uLL, v31);
        pg_query__node__init(v34);
        *(*(a1 + 136) + 8 * v32) = v34;
        result = _outNode_0(*(*(a1 + 136) + 8 * v32), *(*(*(a2 + 80) + 16) + 8 * v32));
        v32 = v33++;
      }

      while (*(a1 + 128) > v32);
    }
  }

  return result;
}

const char *_outRoleSpec_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 16);
  return result;
}

const char *_outPartitionElem_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL, a3);
    pg_query__node__init(v6);
    *(a1 + 32) = v6;
    result = _outNode_0(v6, *(a2 + 16));
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 40) = v8;
    result = palloc(8 * v8, a3);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(a1 + 48) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 48) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    result = palloc(8 * v13, a3);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, v14);
        pg_query__node__init(v17);
        *(*(a1 + 64) + 8 * v15) = v17;
        result = _outNode_0(*(*(a1 + 64) + 8 * v15), *(*(*(a2 + 32) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  return result;
}

const char *_outPartitionSpec_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 32) = v7;
    result = palloc(8 * v7, a3);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, v8);
        pg_query__node__init(v11);
        *(*(a1 + 40) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 40) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  *(a1 + 48) = *(a2 + 24);
  return result;
}

_BYTE *_outPartitionBoundSpec_0(_BYTE *result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 4))
  {
    result = palloc(2uLL, a3);
    *(v4 + 3) = result;
    *result = *(a2 + 4);
    *(*(v4 + 3) + 1) = 0;
  }

  *(v4 + 8) = *(a2 + 5);
  *(v4 + 9) = *(a2 + 8);
  *(v4 + 10) = *(a2 + 12);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(v4 + 6) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 7) = result;
    if (*(v4 + 6))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 7) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 7) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 6) > v7);
    }
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v4 + 8) = v11;
    result = palloc(8 * v11, a3);
    *(v4 + 9) = result;
    if (*(v4 + 8))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(v4 + 9) + 8 * v12) = v14;
        result = _outNode_0(*(*(v4 + 9) + 8 * v12), *(*(*(a2 + 24) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(v4 + 8) > v12);
    }
  }

  v15 = *(a2 + 32);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(v4 + 10) = v16;
    result = palloc(8 * v16, a3);
    *(v4 + 11) = result;
    if (*(v4 + 10))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL, v17);
        pg_query__node__init(v20);
        *(*(v4 + 11) + 8 * v18) = v20;
        result = _outNode_0(*(*(v4 + 11) + 8 * v18), *(*(*(a2 + 32) + 16) + 8 * v18));
        v18 = v19++;
      }

      while (*(v4 + 10) > v18);
    }
  }

  *(v4 + 24) = *(a2 + 40);
  return result;
}

uint64_t _outPartitionRangeDatum_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  v6 = v5 + 1;
  v7 = v5 + 2;
  if (v6 >= 3)
  {
    v7 = -1;
  }

  *(result + 24) = v7;
  if (*(a2 + 8))
  {
    v8 = palloc(0x28uLL, a3);
    pg_query__node__init(v8);
    *(v4 + 32) = v8;
    result = _outNode_0(v8, *(a2 + 8));
  }

  *(v4 + 40) = *(a2 + 16);
  return result;
}

char *_outPartitionCmd_0(char *result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(v4 + 3) = v5;
  }

  if (*(a2 + 16))
  {
    v7 = palloc(0x68uLL, a3);
    partition_bound_spec__init = pg_query__partition_bound_spec__init(v7);
    result = _outPartitionBoundSpec_0(v7, *(a2 + 16), partition_bound_spec__init);
    *(v4 + 4) = v7;
  }

  return result;
}

uint64_t _outVacuumRelation_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(v4 + 24) = v5;
  }

  *(v4 + 32) = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(v4 + 40) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(*(v4 + 48) + 8 * v10) = v12;
        result = _outNode_0(*(*(v4 + 48) + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(v4 + 40) > v10);
    }
  }

  return result;
}

const char *_outInlineCodeBlock_0(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 20);
  *(a1 + 40) = *(a2 + 21);
  return result;
}

char *pg_query_raw_parse(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v19 = *MEMORY[0x277D85DE8];
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v5 = CurrentMemoryContext(v4);
  v6 = *v5;
  bzero(__s1, 0x1001uLL);
  v7 = PG_exception_stack();
  v8 = *v7;
  v9 = v7;
  v10 = error_context_stack();
  v11 = *v10;
  v12 = v10;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  if (sigsetjmp(v16, 0))
  {
    *v9 = v8;
    *v12 = v11;
    *v5 = v6;
    v13 = CopyErrorData();
    v14 = malloc_type_malloc(0x28uLL, 0x1010040E871EB1AuLL);
    *v14 = strdup(*(v13 + 64));
    v14[2] = strdup(*(v13 + 16));
    v14[1] = strdup(*(v13 + 32));
    v14[4] = 0;
    *(v14 + 6) = *(v13 + 24);
    *(v14 + 7) = *(v13 + 160);
    v3[2] = v14;
    result = FlushErrorState();
  }

  else
  {
    *v9 = v16;
    *v3 = raw_parser(v1);
    result = strdup(__s1);
    v3[1] = result;
  }

  *v9 = v8;
  *v12 = v11;
  return result;
}

uint64_t pg_query_parse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pg_query_enter_memory_context();
  pg_query_raw_parse(a1);
  *(a2 + 8) = v7;
  nodes_to_json = pg_query_nodes_to_json(v6, *&v7);
  *a2 = strdup(nodes_to_json);
  pfree(nodes_to_json);

  return pg_query_exit_memory_context();
}

uint64_t pg_query_parse_protobuf@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pg_query_enter_memory_context();
  pg_query_raw_parse(a1);
  *(a2 + 16) = v8;
  *a2 = pg_query_nodes_to_protobuf(v7, v4);
  *(a2 + 8) = v5;

  return pg_query_exit_memory_context();
}

void pg_query_free_parse_result(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    pg_query_free_error(v2);
  }

  free(*a1);
  v3 = *(a1 + 8);

  free(v3);
}

void pg_query_free_protobuf_parse_result(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    pg_query_free_error(v2);
  }

  free(*(a1 + 8));
  v3 = *(a1 + 16);

  free(v3);
}

uint64_t pg_query_protobuf_to_nodes(unsigned int a1, unsigned __int8 *a2)
{
  parse_result__unpack = pg_query__parse_result__unpack(0, a1, a2);
  v4 = parse_result__unpack;
  if (*(parse_result__unpack + 4))
  {
    v5 = **(parse_result__unpack + 5);
    v6 = CurrentMemoryContext(v3);
    v7 = MemoryContextAllocZeroAligned(*v6, 0x18uLL);
    *v7 = 230;
    v9 = *(v5 + 24);
    if (v9)
    {
      *(v7 + 8) = _readNode(v9, v8);
    }

    *(v7 + 16) = *(v5 + 32);
    *(v7 + 20) = *(v5 + 36);
    list_make1_impl(226, v7, v8);
    v11 = v10;
    if (*(v4 + 4) >= 2uLL)
    {
      v12 = 1;
      do
      {
        v13 = *(*(v4 + 5) + 8 * v12);
        v14 = MemoryContextAllocZeroAligned(*v6, 0x18uLL);
        *v14 = 230;
        v16 = *(v13 + 24);
        if (v16)
        {
          *(v14 + 8) = _readNode(v16, v15);
        }

        *(v14 + 16) = *(v13 + 32);
        *(v14 + 20) = *(v13 + 36);
        v11 = lappend(v11, v14, v15);
        ++v12;
      }

      while (v12 < *(v4 + 4));
    }
  }

  else
  {
    v11 = 0;
  }

  pg_query__parse_result__free_unpacked(v4, 0);
  return v11;
}

_DWORD *_readRawStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 230;
  if (*(a1 + 24))
  {
    v5 = result;
    Node = _readNode(*(a1 + 24));
    result = v5;
    *(v5 + 1) = Node;
  }

  result[4] = *(a1 + 32);
  result[5] = *(a1 + 36);
  return result;
}

int *_readNode(uint64_t a1, double a2)
{
  v2 = 0;
  switch(*(a1 + 24))
  {
    case 0:
      goto LABEL_499;
    case 1:
      v3 = *(a1 + 32);

      return _readAlias(v3, a2);
    case 2:
      v25 = *(a1 + 32);

      return _readRangeVar(v25, a2);
    case 3:
      v8 = *(a1 + 32);

      return _readTableFunc(v8, a2);
    case 4:
      v5 = CurrentMemoryContext(a2);
      v6 = MemoryContextAllocZero(*v5, 4uLL);
      v2 = v6;
      v7 = 105;
      goto LABEL_498;
    case 5:
      v27 = *(a1 + 32);

      return _readVar(v27, a2);
    case 6:
      v9 = *(a1 + 32);

      return _readParam(v9, a2);
    case 7:
      v231 = *(a1 + 32);

      return _readAggref(v231, a2);
    case 8:
      v237 = *(a1 + 32);

      return _readGroupingFunc(v237, a2);
    case 9:
      v238 = *(a1 + 32);

      return _readWindowFunc(v238, a2);
    case 0xA:
      v118 = *(a1 + 32);

      return _readSubscriptingRef(v118, a2);
    case 0xB:
      v67 = *(a1 + 32);

      return _readFuncExpr(v67, a2);
    case 0xC:
      v155 = *(a1 + 32);

      return _readNamedArgExpr(v155, a2);
    case 0xD:
      v229 = *(a1 + 32);

      return _readOpExpr(v229, a2);
    case 0xE:
      v48 = *(a1 + 32);

      return _readDistinctExpr(v48, a2);
    case 0xF:
      v46 = *(a1 + 32);

      return _readNullIfExpr(v46, a2);
    case 0x10:
      v13 = *(a1 + 32);

      return _readScalarArrayOpExpr(v13, a2);
    case 0x11:
      v12 = *(a1 + 32);

      return _readBoolExpr(v12, a2);
    case 0x12:
      v234 = *(a1 + 32);

      return _readSubLink(v234, a2);
    case 0x13:
      v14 = *(a1 + 32);

      return _readSubPlan(v14, a2);
    case 0x14:
      v201 = *(a1 + 32);

      return _readAlternativeSubPlan(v201, a2);
    case 0x15:
      v64 = *(a1 + 32);

      return _readFieldSelect(v64, a2);
    case 0x16:
      v101 = *(a1 + 32);

      return _readFieldStore(v101, a2);
    case 0x17:
      v16 = *(a1 + 32);

      return _readRelabelType(v16, a2);
    case 0x18:
      v207 = *(a1 + 32);

      return _readCoerceViaIO(v207, a2);
    case 0x19:
      v205 = *(a1 + 32);

      return _readArrayCoerceExpr(v205, a2);
    case 0x1A:
      v219 = *(a1 + 32);

      return _readConvertRowtypeExpr(v219, a2);
    case 0x1B:
      v216 = *(a1 + 32);

      return _readCollateExpr(v216, a2);
    case 0x1C:
      v187 = *(a1 + 32);

      return _readCaseExpr(v187, a2);
    case 0x1D:
      v120 = *(a1 + 32);

      return _readCaseWhen(v120, a2);
    case 0x1E:
      v213 = *(a1 + 32);

      return _readCaseTestExpr(v213, a2);
    case 0x1F:
      v212 = *(a1 + 32);

      return _readArrayExpr(v212, a2);
    case 0x20:
      v17 = *(a1 + 32);

      return _readRowExpr(v17, a2);
    case 0x21:
      v227 = *(a1 + 32);

      return _readRowCompareExpr(v227, a2);
    case 0x22:
      v222 = *(a1 + 32);

      return _readCoalesceExpr(v222, a2);
    case 0x23:
      v18 = *(a1 + 32);

      return _readMinMaxExpr(v18, a2);
    case 0x24:
      v61 = *(a1 + 32);

      return _readSQLValueFunction(v61, a2);
    case 0x25:
      v10 = *(a1 + 32);

      return _readXmlExpr(v10, a2);
    case 0x26:
      v226 = *(a1 + 32);

      return _readNullTest(v226, a2);
    case 0x27:
      v228 = *(a1 + 32);

      return _readBooleanTest(v228, a2);
    case 0x28:
      v34 = *(a1 + 32);

      return _readCoerceToDomain(v34, a2);
    case 0x29:
      v116 = *(a1 + 32);

      return _readCoerceToDomainValue(v116, a2);
    case 0x2A:
      v26 = *(a1 + 32);

      return _readSetToDefault(v26, a2);
    case 0x2B:
      v38 = *(a1 + 32);

      return _readCurrentOfExpr(v38, a2);
    case 0x2C:
      v223 = *(a1 + 32);
      v224 = CurrentMemoryContext(a2);
      result = MemoryContextAllocZero(*v224, 0xCuLL);
      *result = 146;
      result[1] = *(v223 + 32);
      result[2] = *(v223 + 36);
      return result;
    case 0x2D:
      v22 = *(a1 + 32);

      return _readInferenceElem(v22, a2);
    case 0x2E:
      v11 = *(a1 + 32);

      return _readTargetEntry(v11, a2);
    case 0x2F:
      v28 = *(a1 + 32);
      v29 = CurrentMemoryContext(a2);
      result = MemoryContextAllocZeroAligned(*v29, 8uLL);
      *result = 149;
      result[1] = *(v28 + 24);
      return result;
    case 0x30:
      v225 = *(a1 + 32);

      return _readJoinExpr(v225, a2);
    case 0x31:
      v62 = *(a1 + 32);

      return _readFromExpr(v62, a2);
    case 0x32:
      v98 = *(a1 + 32);

      return _readOnConflictExpr(v98, a2);
    case 0x33:
      v19 = *(a1 + 32);

      return _readIntoClause(v19, a2);
    case 0x34:
      v188 = *(a1 + 32);

      return _readRawStmt(v188, a2);
    case 0x35:
      v158 = *(a1 + 32);

      return _readQuery(v158, a2);
    case 0x36:
      v217 = *(a1 + 32);

      return _readInsertStmt(v217, a2);
    case 0x37:
      v156 = *(a1 + 32);

      return _readDeleteStmt(v156, a2);
    case 0x38:
      v69 = *(a1 + 32);

      return _readUpdateStmt(v69, a2);
    case 0x39:
      v36 = *(a1 + 32);

      return _readSelectStmt(v36, a2);
    case 0x3A:
      v56 = *(a1 + 32);

      return _readAlterTableStmt(v56, a2);
    case 0x3B:
      v42 = *(a1 + 32);

      return _readAlterTableCmd(v42, a2);
    case 0x3C:
      v15 = *(a1 + 32);

      return _readAlterDomainStmt(v15, a2);
    case 0x3D:
      v236 = *(a1 + 32);

      return _readSetOperationStmt(v236, a2);
    case 0x3E:
      v232 = *(a1 + 32);

      return _readGrantStmt(v232, a2);
    case 0x3F:
      v235 = *(a1 + 32);

      return _readGrantRoleStmt(v235, a2);
    case 0x40:
      v218 = *(a1 + 32);

      return _readAlterDefaultPrivilegesStmt(v218, a2);
    case 0x41:
      v68 = *(a1 + 32);

      return _readClosePortalStmt(v68, a2);
    case 0x42:
      v39 = *(a1 + 32);

      return _readClusterStmt(v39, a2);
    case 0x43:
      v47 = *(a1 + 32);

      return _readCopyStmt(v47, a2);
    case 0x44:
      v233 = *(a1 + 32);

      return _readCreateStmt(v233, a2);
    case 0x45:
      v23 = *(a1 + 32);

      return _readDefineStmt(v23, a2);
    case 0x46:
      v49 = *(a1 + 32);

      return _readDropStmt(v49, a2);
    case 0x47:
      v55 = *(a1 + 32);

      return _readTruncateStmt(v55, a2);
    case 0x48:
      v203 = *(a1 + 32);

      return _readCommentStmt(v203, a2);
    case 0x49:
      v124 = *(a1 + 32);

      return _readFetchStmt(v124, a2);
    case 0x4A:
      v58 = *(a1 + 32);

      return _readIndexStmt(v58, a2);
    case 0x4B:
      v70 = *(a1 + 32);

      return _readCreateFunctionStmt(v70, a2);
    case 0x4C:
      v125 = *(a1 + 32);

      return _readAlterFunctionStmt(v125, a2);
    case 0x4D:
      v30 = *(a1 + 32);

      return _readDoStmt(v30, a2);
    case 0x4E:
      v87 = *(a1 + 32);

      return _readRenameStmt(v87, a2);
    case 0x4F:
      v31 = *(a1 + 32);

      return _readRuleStmt(v31, a2);
    case 0x50:
      v214 = *(a1 + 32);

      return _readNotifyStmt(v214, a2);
    case 0x51:
      v182 = *(a1 + 32);

      return _readListenStmt(v182, a2);
    case 0x52:
      v159 = *(a1 + 32);

      return _readUnlistenStmt(v159, a2);
    case 0x53:
      v72 = *(a1 + 32);

      return _readTransactionStmt(v72, a2);
    case 0x54:
      v193 = *(a1 + 32);

      return _readViewStmt(v193, a2);
    case 0x55:
      v211 = *(a1 + 32);

      return _readLoadStmt(v211, a2);
    case 0x56:
      v230 = *(a1 + 32);

      return _readCreateDomainStmt(v230, a2);
    case 0x57:
      v86 = *(a1 + 32);

      return _readCreatedbStmt(v86, a2);
    case 0x58:
      v33 = *(a1 + 32);

      return _readDropdbStmt(v33, a2);
    case 0x59:
      v41 = *(a1 + 32);

      return _readVacuumStmt(v41, a2);
    case 0x5A:
      v184 = *(a1 + 32);

      return _readExplainStmt(v184, a2);
    case 0x5B:
      v91 = *(a1 + 32);

      return _readCreateTableAsStmt(v91, a2);
    case 0x5C:
      v208 = *(a1 + 32);

      return _readCreateSeqStmt(v208, a2);
    case 0x5D:
      v220 = *(a1 + 32);

      return _readAlterSeqStmt(v220, a2);
    case 0x5E:
      v24 = *(a1 + 32);

      return _readVariableSetStmt(v24, a2);
    case 0x5F:
      v20 = *(a1 + 32);

      return _readVariableShowStmt(v20, a2);
    case 0x60:
      v92 = *(a1 + 32);

      return _readDiscardStmt(v92, a2);
    case 0x61:
      v103 = *(a1 + 32);

      return _readCreateTrigStmt(v103, a2);
    case 0x62:
      v161 = *(a1 + 32);

      return _readCreatePLangStmt(v161, a2);
    case 0x63:
      v112 = *(a1 + 32);

      return _readCreateRoleStmt(v112, a2);
    case 0x64:
      v160 = *(a1 + 32);

      return _readAlterRoleStmt(v160, a2);
    case 0x65:
      v127 = *(a1 + 32);

      return _readDropRoleStmt(v127, a2);
    case 0x66:
      v189 = *(a1 + 32);

      return _readLockStmt(v189, a2);
    case 0x67:
      v21 = *(a1 + 32);

      return _readConstraintsSetStmt(v21, a2);
    case 0x68:
      v35 = *(a1 + 32);

      return _readReindexStmt(v35, a2);
    case 0x69:
      v106 = CurrentMemoryContext(a2);
      v6 = MemoryContextAllocZero(*v106, 4uLL);
      v2 = v6;
      v7 = 284;
      goto LABEL_498;
    case 0x6A:
      v51 = *(a1 + 32);

      return _readCreateSchemaStmt(v51, a2);
    case 0x6B:
      v166 = *(a1 + 32);

      return _readAlterDatabaseStmt(v166, a2);
    case 0x6C:
      v168 = *(a1 + 32);

      return _readAlterDatabaseSetStmt(v168, a2);
    case 0x6D:
      v100 = *(a1 + 32);

      return _readAlterRoleSetStmt(v100, a2);
    case 0x6E:
      v178 = *(a1 + 32);

      return _readCreateConversionStmt(v178, a2);
    case 0x6F:
      v165 = *(a1 + 32);

      return _readCreateCastStmt(v165, a2);
    case 0x70:
      v71 = *(a1 + 32);

      return _readCreateOpClassStmt(v71, a2);
    case 0x71:
      v74 = *(a1 + 32);

      return _readCreateOpFamilyStmt(v74, a2);
    case 0x72:
      v167 = *(a1 + 32);

      return _readAlterOpFamilyStmt(v167, a2);
    case 0x73:
      v183 = *(a1 + 32);

      return _readPrepareStmt(v183, a2);
    case 0x74:
      v32 = *(a1 + 32);

      return _readExecuteStmt(v32, a2);
    case 0x75:
      v40 = *(a1 + 32);

      return _readDeallocateStmt(v40, a2);
    case 0x76:
      v73 = *(a1 + 32);

      return _readDeclareCursorStmt(v73, a2);
    case 0x77:
      v80 = *(a1 + 32);

      return _readCreateTableSpaceStmt(v80, a2);
    case 0x78:
      v45 = *(a1 + 32);

      return _readDropTableSpaceStmt(v45, a2);
    case 0x79:
      v53 = *(a1 + 32);

      return _readAlterObjectDependsStmt(v53, a2);
    case 0x7A:
      v196 = *(a1 + 32);

      return _readAlterObjectSchemaStmt(v196, a2);
    case 0x7B:
      v198 = *(a1 + 32);

      return _readAlterOwnerStmt(v198, a2);
    case 0x7C:
      v66 = *(a1 + 32);

      return _readAlterOperatorStmt(v66, a2);
    case 0x7D:
      v200 = *(a1 + 32);

      return _readAlterTypeStmt(v200, a2);
    case 0x7E:
      v206 = *(a1 + 32);

      return _readDropOwnedStmt(v206, a2);
    case 0x7F:
      v221 = *(a1 + 32);

      return _readReassignOwnedStmt(v221, a2);
    case 0x80:
      v135 = *(a1 + 32);

      return _readCompositeTypeStmt(v135, a2);
    case 0x81:
      v215 = *(a1 + 32);

      return _readCreateEnumStmt(v215, a2);
    case 0x82:
      v52 = *(a1 + 32);

      return _readCreateRangeStmt(v52, a2);
    case 0x83:
      v204 = *(a1 + 32);

      return _readAlterEnumStmt(v204, a2);
    case 0x84:
      v138 = *(a1 + 32);

      return _readAlterTSDictionaryStmt(v138, a2);
    case 0x85:
      v59 = *(a1 + 32);

      return _readAlterTSConfigurationStmt(v59, a2);
    case 0x86:
      v134 = *(a1 + 32);

      return _readCreateFdwStmt(v134, a2);
    case 0x87:
      v44 = *(a1 + 32);

      return _readAlterFdwStmt(v44, a2);
    case 0x88:
      v209 = *(a1 + 32);

      return _readCreateForeignServerStmt(v209, a2);
    case 0x89:
      v210 = *(a1 + 32);

      return _readAlterForeignServerStmt(v210, a2);
    case 0x8A:
      v63 = *(a1 + 32);

      return _readCreateUserMappingStmt(v63, a2);
    case 0x8B:
      v194 = *(a1 + 32);

      return _readAlterUserMappingStmt(v194, a2);
    case 0x8C:
      v164 = *(a1 + 32);

      return _readDropUserMappingStmt(v164, a2);
    case 0x8D:
      v162 = *(a1 + 32);

      return _readAlterTableSpaceOptionsStmt(v162, a2);
    case 0x8E:
      v37 = *(a1 + 32);

      return _readAlterTableMoveAllStmt(v37, a2);
    case 0x8F:
      v43 = *(a1 + 32);

      return _readSecLabelStmt(v43, a2);
    case 0x90:
      v104 = *(a1 + 32);

      return _readCreateForeignTableStmt(v104, a2);
    case 0x91:
      v107 = *(a1 + 32);

      return _readImportForeignSchemaStmt(v107, a2);
    case 0x92:
      v76 = *(a1 + 32);

      return _readCreateExtensionStmt(v76, a2);
    case 0x93:
      v50 = *(a1 + 32);

      return _readAlterExtensionStmt(v50, a2);
    case 0x94:
      v199 = *(a1 + 32);

      return _readAlterExtensionContentsStmt(v199, a2);
    case 0x95:
      v57 = *(a1 + 32);

      return _readCreateEventTrigStmt(v57, a2);
    case 0x96:
      v140 = *(a1 + 32);

      return _readAlterEventTrigStmt(v140, a2);
    case 0x97:
      v83 = *(a1 + 32);

      return _readRefreshMatViewStmt(v83, a2);
    case 0x98:
      v195 = *(a1 + 32);

      return _readReplicaIdentityStmt(v195, a2);
    case 0x99:
      v192 = *(a1 + 32);

      return _readAlterSystemStmt(v192, a2);
    case 0x9A:
      v185 = *(a1 + 32);

      return _readCreatePolicyStmt(v185, a2);
    case 0x9B:
      v77 = *(a1 + 32);

      return _readAlterPolicyStmt(v77, a2);
    case 0x9C:
      v54 = *(a1 + 32);

      return _readCreateTransformStmt(v54, a2);
    case 0x9D:
      v88 = *(a1 + 32);

      return _readCreateAmStmt(v88, a2);
    case 0x9E:
      v202 = *(a1 + 32);

      return _readCreatePublicationStmt(v202, a2);
    case 0x9F:
      v94 = *(a1 + 32);

      return _readAlterPublicationStmt(v94, a2);
    case 0xA0:
      v75 = *(a1 + 32);

      return _readCreateSubscriptionStmt(v75, a2);
    case 0xA1:
      v144 = *(a1 + 32);

      return _readAlterSubscriptionStmt(v144, a2);
    case 0xA2:
      v114 = *(a1 + 32);

      return _readDropSubscriptionStmt(v114, a2);
    case 0xA3:
      v128 = *(a1 + 32);

      return _readCreateStatsStmt(v128, a2);
    case 0xA4:
      v145 = *(a1 + 32);

      return _readAlterCollationStmt(v145, a2);
    case 0xA5:
      v142 = *(a1 + 32);

      return _readCallStmt(v142, a2);
    case 0xA6:
      v113 = *(a1 + 32);

      return _readAlterStatsStmt(v113, a2);
    case 0xA7:
      v174 = *(a1 + 32);

      return _readAExpr(v174, a2);
    case 0xA8:
      v102 = *(a1 + 32);

      return _readColumnRef(v102, a2);
    case 0xA9:
      v171 = *(a1 + 32);
      v172 = CurrentMemoryContext(a2);
      result = MemoryContextAllocZero(*v172, 0xCuLL);
      *result = 348;
      result[1] = *(v171 + 24);
      result[2] = *(v171 + 28);
      return result;
    case 0xAA:
      v82 = *(a1 + 32);

      return _readAConst(v82, a2);
    case 0xAB:
      v186 = *(a1 + 32);

      return _readFuncCall(v186, a2);
    case 0xAC:
      v181 = CurrentMemoryContext(a2);
      v6 = MemoryContextAllocZero(*v181, 4uLL);
      v2 = v6;
      v7 = 351;
      goto LABEL_498;
    case 0xAD:
      v79 = *(a1 + 32);

      return _readAIndices(v79, a2);
    case 0xAE:
      v190 = *(a1 + 32);

      return _readAIndirection(v190, a2);
    case 0xAF:
      v197 = *(a1 + 32);

      return _readAArrayExpr(v197, a2);
    case 0xB0:
      v60 = *(a1 + 32);

      return _readResTarget(v60, a2);
    case 0xB1:
      v108 = *(a1 + 32);

      return _readMultiAssignRef(v108, a2);
    case 0xB2:
      v99 = *(a1 + 32);

      return _readTypeCast(v99, a2);
    case 0xB3:
      v81 = *(a1 + 32);

      return _readCollateClause(v81, a2);
    case 0xB4:
      v191 = *(a1 + 32);

      return _readSortBy(v191, a2);
    case 0xB5:
      v157 = *(a1 + 32);

      return _readWindowDef(v157, a2);
    case 0xB6:
      v95 = *(a1 + 32);

      return _readRangeSubselect(v95, a2);
    case 0xB7:
      v65 = *(a1 + 32);

      return _readRangeFunction(v65, a2);
    case 0xB8:
      v173 = *(a1 + 32);

      return _readRangeTableSample(v173, a2);
    case 0xB9:
      v139 = *(a1 + 32);

      return _readRangeTableFunc(v139, a2);
    case 0xBA:
      v111 = *(a1 + 32);

      return _readRangeTableFuncCol(v111, a2);
    case 0xBB:
      v169 = *(a1 + 32);

      return _readTypeName(v169, a2);
    case 0xBC:
      v179 = *(a1 + 32);

      return _readColumnDef(v179, a2);
    case 0xBD:
      v78 = *(a1 + 32);

      return _readIndexElem(v78, a2);
    case 0xBE:
      v85 = *(a1 + 32);

      return _readConstraint(v85, a2);
    case 0xBF:
      v84 = *(a1 + 32);

      return _readDefElem(v84, a2);
    case 0xC0:
      v90 = *(a1 + 32);

      return _readRangeTblEntry(v90, a2);
    case 0xC1:
      v97 = *(a1 + 32);

      return _readRangeTblFunction(v97, a2);
    case 0xC2:
      v154 = *(a1 + 32);

      return _readTableSampleClause(v154, a2);
    case 0xC3:
      v136 = *(a1 + 32);

      return _readWithCheckOption(v136, a2);
    case 0xC4:
      v153 = *(a1 + 32);

      return _readSortGroupClause(v153, a2);
    case 0xC5:
      v177 = *(a1 + 32);

      return _readGroupingSet(v177, a2);
    case 0xC6:
      v176 = *(a1 + 32);

      return _readWindowClause(v176, a2);
    case 0xC7:
      v89 = *(a1 + 32);

      return _readObjectWithArgs(v89, a2);
    case 0xC8:
      v180 = *(a1 + 32);

      return _readAccessPriv(v180, a2);
    case 0xC9:
      v119 = *(a1 + 32);

      return _readCreateOpClassItem(v119, a2);
    case 0xCA:
      v121 = *(a1 + 32);

      return _readTableLikeClause(v121, a2);
    case 0xCB:
      v175 = *(a1 + 32);

      return _readFunctionParameter(v175, a2);
    case 0xCC:
      v163 = *(a1 + 32);

      return _readLockingClause(v163, a2);
    case 0xCD:
      v146 = *(a1 + 32);

      return _readRowMarkClause(v146, a2);
    case 0xCE:
      v141 = *(a1 + 32);

      return _readXmlSerialize(v141, a2);
    case 0xCF:
      v170 = *(a1 + 32);

      return _readWithClause(v170, a2);
    case 0xD0:
      v150 = *(a1 + 32);

      return _readInferClause(v150, a2);
    case 0xD1:
      v137 = *(a1 + 32);

      return _readOnConflictClause(v137, a2);
    case 0xD2:
      v93 = *(a1 + 32);

      return _readCommonTableExpr(v93, a2);
    case 0xD3:
      v126 = *(a1 + 32);

      return _readRoleSpec(v126, a2);
    case 0xD4:
      v96 = *(a1 + 32);

      return _readTriggerTransition(v96, a2);
    case 0xD5:
      v147 = *(a1 + 32);

      return _readPartitionElem(v147, a2);
    case 0xD6:
      v115 = *(a1 + 32);

      return _readPartitionSpec(v115, a2);
    case 0xD7:
      v105 = *(a1 + 32);

      return _readPartitionBoundSpec(v105, a2);
    case 0xD8:
      v151 = *(a1 + 32);

      return _readPartitionRangeDatum(v151, a2);
    case 0xD9:
      v117 = *(a1 + 32);

      return _readPartitionCmd(v117, a2);
    case 0xDA:
      v152 = *(a1 + 32);

      return _readVacuumRelation(v152, a2);
    case 0xDB:
      v131 = *(a1 + 32);

      return _readInlineCodeBlock(v131, a2);
    case 0xDC:
      v148 = *(a1 + 32);
      v149 = CurrentMemoryContext(a2);
      result = MemoryContextAllocZeroAligned(*v149, 8uLL);
      *result = 416;
      *(result + 4) = *(v148 + 24) != 0;
      return result;
    case 0xDD:
      v143 = *(*(a1 + 32) + 24);

      return makeInteger(v143, a2);
    case 0xDE:
      v109 = pstrdup(*(*(a1 + 32) + 24), a2);

      return makeFloat(v109, v110);
    case 0xDF:
      v129 = pstrdup(*(*(a1 + 32) + 24), a2);

      return makeString(v129, v130);
    case 0xE0:
      v122 = pstrdup(*(*(a1 + 32) + 24), a2);

      return makeBitString(v122, v123);
    case 0xE1:
      v132 = CurrentMemoryContext(a2);
      v6 = MemoryContextAllocZeroAligned(*v132, 0x10uLL);
      v2 = v6;
      v7 = 225;
LABEL_498:
      *v6 = v7;
LABEL_499:
      result = v2;
      break;
    case 0xE2:
      v133 = *(a1 + 32);

      result = _readList(v133);
      break;
    default:
      _readNode_cold_1((a1 + 24));
  }

  return result;
}

unint64_t _readAlias(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 102;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  return v4;
}

unint64_t _readRangeVar(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 103;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  v8 = *(a1 + 40);
  if (v8 && *v8)
  {
    *(v4 + 24) = pstrdup(v8, v5);
  }

  *(v4 + 32) = *(a1 + 48) != 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *v9;
    if (v10)
    {
      *(v4 + 33) = v10;
    }
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    *(v4 + 40) = _readAlias(v11, v5);
  }

  *(v4 + 48) = *(a1 + 72);
  return v4;
}

unint64_t _readTableFunc(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x68uLL);
  *v4 = 104;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  if (*(a1 + 40))
  {
    v13 = _readNode(**(a1 + 48));
    list_make1_impl(226, v13, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 40) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 48) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 40) > v18);
    }
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    *(v4 + 24) = _readNode(v21);
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    *(v4 + 32) = _readNode(v22);
  }

  if (*(a1 + 72))
  {
    v23 = _readNode(**(a1 + 80));
    list_make1_impl(226, v23, v24);
    *(v4 + 40) = v25;
    if (*(a1 + 72) >= 2uLL)
    {
      v26 = v25;
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = _readNode(*(*(a1 + 80) + 8 * v28));
        v26 = lappend(v26, v29, v30);
        *(v4 + 40) = v26;
        v28 = v27++;
      }

      while (*(a1 + 72) > v28);
    }
  }

  if (*(a1 + 88))
  {
    v31 = _readNode(**(a1 + 96));
    list_make1_impl(226, v31, v32);
    *(v4 + 48) = v33;
    if (*(a1 + 88) >= 2uLL)
    {
      v34 = v33;
      v35 = 2;
      v36 = 1;
      do
      {
        v37 = _readNode(*(*(a1 + 96) + 8 * v36));
        v34 = lappend(v34, v37, v38);
        *(v4 + 48) = v34;
        v36 = v35++;
      }

      while (*(a1 + 88) > v36);
    }
  }

  if (*(a1 + 104))
  {
    v39 = _readNode(**(a1 + 112));
    list_make1_impl(226, v39, v40);
    *(v4 + 56) = v41;
    if (*(a1 + 104) >= 2uLL)
    {
      v42 = v41;
      v43 = 2;
      v44 = 1;
      do
      {
        v45 = _readNode(*(*(a1 + 112) + 8 * v44));
        v42 = lappend(v42, v45, v46);
        *(v4 + 56) = v42;
        v44 = v43++;
      }

      while (*(a1 + 104) > v44);
    }
  }

  if (*(a1 + 120))
  {
    v47 = _readNode(**(a1 + 128));
    list_make1_impl(226, v47, v48);
    *(v4 + 64) = v49;
    if (*(a1 + 120) >= 2uLL)
    {
      v50 = v49;
      v51 = 2;
      v52 = 1;
      do
      {
        v53 = _readNode(*(*(a1 + 128) + 8 * v52));
        v50 = lappend(v50, v53, v54);
        *(v4 + 64) = v50;
        v52 = v51++;
      }

      while (*(a1 + 120) > v52);
    }
  }

  if (*(a1 + 136))
  {
    v55 = _readNode(**(a1 + 144));
    list_make1_impl(226, v55, v56);
    *(v4 + 72) = v57;
    if (*(a1 + 136) >= 2uLL)
    {
      v58 = v57;
      v59 = 2;
      v60 = 1;
      do
      {
        v61 = _readNode(*(*(a1 + 144) + 8 * v60));
        v58 = lappend(v58, v61, v62);
        *(v4 + 72) = v58;
        v60 = v59++;
      }

      while (*(a1 + 136) > v60);
    }
  }

  if (*(a1 + 152))
  {
    v63 = _readNode(**(a1 + 160));
    list_make1_impl(226, v63, v64);
    *(v4 + 80) = v65;
    if (*(a1 + 152) >= 2uLL)
    {
      v66 = v65;
      v67 = 2;
      v68 = 1;
      do
      {
        v69 = _readNode(*(*(a1 + 160) + 8 * v68));
        v66 = lappend(v66, v69, v70);
        *(v4 + 80) = v66;
        v68 = v67++;
      }

      while (*(a1 + 152) > v68);
    }
  }

  *(v4 + 96) = *(a1 + 184);
  *(v4 + 100) = *(a1 + 188);
  return v4;
}

unint64_t _readVar(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *result = 106;
  *(result + 4) = a1[8];
  *(result + 8) = a1[9];
  *(result + 12) = a1[10];
  *(result + 16) = a1[11];
  *(result + 20) = a1[12];
  *(result + 24) = a1[13];
  *(result + 28) = a1[14];
  *(result + 32) = a1[15];
  *(result + 36) = a1[16];
  return result;
}

_DWORD *_readParam(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x1CuLL);
  *result = 108;
  v5 = a1[8];
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 3)
  {
    v7 = 0;
  }

  result[1] = v7;
  result[2] = a1[9];
  result[3] = a1[10];
  result[4] = a1[11];
  result[5] = a1[12];
  result[6] = a1[13];
  return result;
}

unint64_t _readAggref(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x58uLL);
  *v4 = 109;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40);
  *(v4 + 16) = *(a1 + 44);
  *(v4 + 20) = *(a1 + 48);
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node, v6);
    *(v4 + 24) = v7;
    if (*(a1 + 56) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 64) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 56) > v10);
    }
  }

  if (*(a1 + 72))
  {
    v13 = _readNode(**(a1 + 80));
    list_make1_impl(226, v13, v14);
    *(v4 + 32) = v15;
    if (*(a1 + 72) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 80) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 32) = v16;
        v18 = v17++;
      }

      while (*(a1 + 72) > v18);
    }
  }

  if (*(a1 + 88))
  {
    v21 = _readNode(**(a1 + 96));
    list_make1_impl(226, v21, v22);
    *(v4 + 40) = v23;
    if (*(a1 + 88) >= 2uLL)
    {
      v24 = v23;
      v25 = 2;
      v26 = 1;
      do
      {
        v27 = _readNode(*(*(a1 + 96) + 8 * v26));
        v24 = lappend(v24, v27, v28);
        *(v4 + 40) = v24;
        v26 = v25++;
      }

      while (*(a1 + 88) > v26);
    }
  }

  if (*(a1 + 104))
  {
    v29 = _readNode(**(a1 + 112));
    list_make1_impl(226, v29, v30);
    *(v4 + 48) = v31;
    if (*(a1 + 104) >= 2uLL)
    {
      v32 = v31;
      v33 = 2;
      v34 = 1;
      do
      {
        v35 = _readNode(*(*(a1 + 112) + 8 * v34));
        v32 = lappend(v32, v35, v36);
        *(v4 + 48) = v32;
        v34 = v33++;
      }

      while (*(a1 + 104) > v34);
    }
  }

  if (*(a1 + 120))
  {
    v37 = _readNode(**(a1 + 128));
    list_make1_impl(226, v37, v38);
    *(v4 + 56) = v39;
    if (*(a1 + 120) >= 2uLL)
    {
      v40 = v39;
      v41 = 2;
      v42 = 1;
      do
      {
        v43 = _readNode(*(*(a1 + 128) + 8 * v42));
        v40 = lappend(v40, v43, v44);
        *(v4 + 56) = v40;
        v42 = v41++;
      }

      while (*(a1 + 120) > v42);
    }
  }

  v45 = *(a1 + 136);
  if (v45)
  {
    *(v4 + 64) = _readNode(v45);
  }

  *(v4 + 72) = *(a1 + 144) != 0;
  *(v4 + 73) = *(a1 + 148) != 0;
  v46 = *(a1 + 152);
  if (v46)
  {
    v47 = *v46;
    if (v47)
    {
      *(v4 + 74) = v47;
    }
  }

  *(v4 + 76) = *(a1 + 160);
  v48 = *(a1 + 164);
  if (v48 == 2)
  {
    v49 = 6;
  }

  else
  {
    v49 = 0;
  }

  if (v48 == 3)
  {
    v50 = 9;
  }

  else
  {
    v50 = v49;
  }

  *(v4 + 80) = v50;
  *(v4 + 84) = *(a1 + 168);
  return v4;
}

unint64_t _readGroupingFunc(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 110;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 32) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 40) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 32) > v10);
    }
  }

  if (*(a1 + 48))
  {
    v13 = _readNode(**(a1 + 56));
    list_make1_impl(226, v13, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 48) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 56) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 48) > v18);
    }
  }

  if (*(a1 + 64))
  {
    v21 = _readNode(**(a1 + 72));
    list_make1_impl(226, v21, v22);
    *(v4 + 24) = v23;
    if (*(a1 + 64) >= 2uLL)
    {
      v24 = v23;
      v25 = 2;
      v26 = 1;
      do
      {
        v27 = _readNode(*(*(a1 + 72) + 8 * v26));
        v24 = lappend(v24, v27, v28);
        *(v4 + 24) = v24;
        v26 = v25++;
      }

      while (*(a1 + 64) > v26);
    }
  }

  *(v4 + 32) = *(a1 + 80);
  *(v4 + 36) = *(a1 + 84);
  return v4;
}

unint64_t _readWindowFunc(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 111;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40);
  *(v4 + 16) = *(a1 + 44);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v6);
    *(v4 + 24) = v7;
    if (*(a1 + 48) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 56) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    *(v4 + 32) = _readNode(v13);
  }

  *(v4 + 40) = *(a1 + 72);
  *(v4 + 44) = *(a1 + 76) != 0;
  *(v4 + 45) = *(a1 + 80) != 0;
  *(v4 + 48) = *(a1 + 84);
  return v4;
}

unint64_t _readSubscriptingRef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 112;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40);
  *(v4 + 16) = *(a1 + 44);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v6);
    *(v4 + 24) = v7;
    if (*(a1 + 48) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 56) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  if (*(a1 + 64))
  {
    v13 = _readNode(**(a1 + 72));
    list_make1_impl(226, v13, v14);
    *(v4 + 32) = v15;
    if (*(a1 + 64) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 72) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 32) = v16;
        v18 = v17++;
      }

      while (*(a1 + 64) > v18);
    }
  }

  v21 = *(a1 + 80);
  if (v21)
  {
    *(v4 + 40) = _readNode(v21);
  }

  v22 = *(a1 + 88);
  if (v22)
  {
    *(v4 + 48) = _readNode(v22);
  }

  return v4;
}

unint64_t _readFuncExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  v5 = v4;
  *v4 = 113;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40) != 0;
  *(v4 + 13) = *(a1 + 44) != 0;
  v6 = *(a1 + 48);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  *(v4 + 16) = v7;
  *(v4 + 20) = *(a1 + 52);
  *(v4 + 24) = *(a1 + 56);
  if (*(a1 + 64))
  {
    Node = _readNode(**(a1 + 72));
    list_make1_impl(226, Node, v9);
    *(v5 + 32) = v10;
    if (*(a1 + 64) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 72) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v5 + 32) = v11;
        v13 = v12++;
      }

      while (*(a1 + 64) > v13);
    }
  }

  *(v5 + 40) = *(a1 + 80);
  return v5;
}

unint64_t _readNamedArgExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 114;
  v6 = *(a1 + 32);
  if (v6)
  {
    *(v4 + 8) = _readNode(v6);
  }

  v7 = *(a1 + 40);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  *(v4 + 24) = *(a1 + 48);
  *(v4 + 28) = *(a1 + 52);
  return v4;
}

unint64_t _readOpExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 115;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40);
  *(v4 + 16) = *(a1 + 44) != 0;
  *(v4 + 20) = *(a1 + 48);
  *(v4 + 24) = *(a1 + 52);
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node, v6);
    *(v4 + 32) = v7;
    if (*(a1 + 56) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 64) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 32) = v8;
        v10 = v9++;
      }

      while (*(a1 + 56) > v10);
    }
  }

  *(v4 + 40) = *(a1 + 72);
  return v4;
}

unint64_t _readDistinctExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 116;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40);
  *(v4 + 16) = *(a1 + 44) != 0;
  *(v4 + 20) = *(a1 + 48);
  *(v4 + 24) = *(a1 + 52);
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node, v6);
    *(v4 + 32) = v7;
    if (*(a1 + 56) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 64) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 32) = v8;
        v10 = v9++;
      }

      while (*(a1 + 56) > v10);
    }
  }

  *(v4 + 40) = *(a1 + 72);
  return v4;
}

unint64_t _readNullIfExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 117;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40);
  *(v4 + 16) = *(a1 + 44) != 0;
  *(v4 + 20) = *(a1 + 48);
  *(v4 + 24) = *(a1 + 52);
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node, v6);
    *(v4 + 32) = v7;
    if (*(a1 + 56) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 64) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 32) = v8;
        v10 = v9++;
      }

      while (*(a1 + 56) > v10);
    }
  }

  *(v4 + 40) = *(a1 + 72);
  return v4;
}

unint64_t _readScalarArrayOpExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 118;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40) != 0;
  *(v4 + 16) = *(a1 + 44);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v6);
    *(v4 + 24) = v7;
    if (*(a1 + 48) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 56) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  *(v4 + 32) = *(a1 + 64);
  return v4;
}

_DWORD *_readBoolExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  v5 = v4;
  *v4 = 119;
  v6 = *(a1 + 32);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  v4[1] = v7;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v9);
    *(v5 + 1) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v5 + 1) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  v5[4] = *(a1 + 56);
  return v5;
}

_DWORD *_readSubLink(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  v5 = v4;
  *v4 = 120;
  v6 = *(a1 + 32);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 7)
  {
    v8 = 0;
  }

  v4[1] = v8;
  v4[2] = *(a1 + 36);
  v9 = *(a1 + 40);
  if (v9)
  {
    *(v5 + 2) = _readNode(v9);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v11);
    *(v5 + 3) = v12;
    if (*(a1 + 48) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 56) + 8 * v15));
        v13 = lappend(v13, v16, v17);
        *(v5 + 3) = v13;
        v15 = v14++;
      }

      while (*(a1 + 48) > v15);
    }
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    *(v5 + 4) = _readNode(v18);
  }

  v5[10] = *(a1 + 72);
  return v5;
}

_DWORD *_readSubPlan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x60uLL);
  v6 = v4;
  *v4 = 121;
  v7 = *(a1 + 32);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 7)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 40);
  if (v10)
  {
    *(v6 + 1) = _readNode(v10);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    v5 = list_make1_impl(226, Node, v12);
    *(v6 + 2) = v13;
    if (*(a1 + 48) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 56) + 8 * v16));
        v14 = lappend(v14, v17, v18);
        *(v6 + 2) = v14;
        v16 = v15++;
      }

      while (*(a1 + 48) > v16);
    }
  }

  v6[6] = *(a1 + 64);
  v19 = *(a1 + 72);
  if (v19 && *v19)
  {
    *(v6 + 4) = pstrdup(v19, v5);
  }

  v6[10] = *(a1 + 80);
  v6[11] = *(a1 + 84);
  v6[12] = *(a1 + 88);
  *(v6 + 52) = *(a1 + 92) != 0;
  *(v6 + 53) = *(a1 + 96) != 0;
  *(v6 + 54) = *(a1 + 100) != 0;
  if (*(a1 + 104))
  {
    v20 = _readNode(**(a1 + 112));
    list_make1_impl(226, v20, v21);
    *(v6 + 7) = v22;
    if (*(a1 + 104) >= 2uLL)
    {
      v23 = v22;
      v24 = 2;
      v25 = 1;
      do
      {
        v26 = _readNode(*(*(a1 + 112) + 8 * v25));
        v23 = lappend(v23, v26, v27);
        *(v6 + 7) = v23;
        v25 = v24++;
      }

      while (*(a1 + 104) > v25);
    }
  }

  if (*(a1 + 120))
  {
    v28 = _readNode(**(a1 + 128));
    list_make1_impl(226, v28, v29);
    *(v6 + 8) = v30;
    if (*(a1 + 120) >= 2uLL)
    {
      v31 = v30;
      v32 = 2;
      v33 = 1;
      do
      {
        v34 = _readNode(*(*(a1 + 128) + 8 * v33));
        v31 = lappend(v31, v34, v35);
        *(v6 + 8) = v31;
        v33 = v32++;
      }

      while (*(a1 + 120) > v33);
    }
  }

  if (*(a1 + 136))
  {
    v36 = _readNode(**(a1 + 144));
    list_make1_impl(226, v36, v37);
    *(v6 + 9) = v38;
    if (*(a1 + 136) >= 2uLL)
    {
      v39 = v38;
      v40 = 2;
      v41 = 1;
      do
      {
        v42 = _readNode(*(*(a1 + 144) + 8 * v41));
        v39 = lappend(v39, v42, v43);
        *(v6 + 9) = v39;
        v41 = v40++;
      }

      while (*(a1 + 136) > v41);
    }
  }

  *(v6 + 10) = *(a1 + 152);
  *(v6 + 11) = *(a1 + 160);
  return v6;
}

unint64_t _readAlternativeSubPlan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *v4 = 122;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 32) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 40) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 32) > v10);
    }
  }

  return v4;
}

unint64_t _readFieldSelect(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *result = 123;
  if (*(a1 + 32))
  {
    v5 = result;
    Node = _readNode(*(a1 + 32));
    result = v5;
    *(v5 + 8) = Node;
  }

  *(result + 16) = *(a1 + 40);
  *(result + 20) = *(a1 + 44);
  *(result + 24) = *(a1 + 48);
  *(result + 28) = *(a1 + 52);
  return result;
}

unint64_t _readFieldStore(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 124;
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v7);
    *(v4 + 16) = v8;
    if (*(a1 + 40) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 48) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 16) = v9;
        v11 = v10++;
      }

      while (*(a1 + 40) > v11);
    }
  }

  if (*(a1 + 56))
  {
    v14 = _readNode(**(a1 + 64));
    list_make1_impl(226, v14, v15);
    *(v4 + 24) = v16;
    if (*(a1 + 56) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 64) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v4 + 24) = v17;
        v19 = v18++;
      }

      while (*(a1 + 56) > v19);
    }
  }

  *(v4 + 32) = *(a1 + 72);
  return v4;
}

_DWORD *_readRelabelType(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *result = 125;
  if (*(a1 + 32))
  {
    v5 = result;
    Node = _readNode(*(a1 + 32));
    result = v5;
    *(v5 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  result[6] = *(a1 + 48);
  v7 = *(a1 + 52);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  result[7] = v8;
  result[8] = *(a1 + 56);
  return result;
}

_DWORD *_readCoerceViaIO(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *result = 126;
  if (*(a1 + 32))
  {
    v5 = result;
    Node = _readNode(*(a1 + 32));
    result = v5;
    *(v5 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  v7 = *(a1 + 48);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  result[6] = v8;
  result[7] = *(a1 + 52);
  return result;
}

unint64_t _readArrayCoerceExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 127;
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(v4 + 16) = _readNode(v6);
  }

  *(v4 + 24) = *(a1 + 48);
  *(v4 + 28) = *(a1 + 52);
  *(v4 + 32) = *(a1 + 56);
  v7 = *(a1 + 60);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  *(v4 + 36) = v8;
  *(v4 + 40) = *(a1 + 64);
  return v4;
}

_DWORD *_readConvertRowtypeExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *result = 128;
  if (*(a1 + 32))
  {
    v5 = result;
    Node = _readNode(*(a1 + 32));
    result = v5;
    *(v5 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  v7 = *(a1 + 44);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  result[5] = v8;
  result[6] = *(a1 + 48);
  return result;
}

_DWORD *_readCollateExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 129;
  if (*(a1 + 32))
  {
    v5 = result;
    Node = _readNode(*(a1 + 32));
    result = v5;
    *(v5 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  return result;
}

unint64_t _readCaseExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 130;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  v5 = *(a1 + 40);
  if (v5)
  {
    *(v4 + 16) = _readNode(v5);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v7);
    *(v4 + 24) = v8;
    if (*(a1 + 48) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 56) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 24) = v9;
        v11 = v10++;
      }

      while (*(a1 + 48) > v11);
    }
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    *(v4 + 32) = _readNode(v14);
  }

  *(v4 + 40) = *(a1 + 72);
  return v4;
}

unint64_t _readCaseWhen(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 131;
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(v4 + 16) = _readNode(v6);
  }

  *(v4 + 24) = *(a1 + 48);
  return v4;
}

_DWORD *_readCaseTestExpr(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 132;
  result[1] = a1[8];
  result[2] = a1[9];
  result[3] = a1[10];
  return result;
}

unint64_t _readArrayExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 133;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v6);
    *(v4 + 16) = v7;
    if (*(a1 + 48) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 56) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 16) = v8;
        v10 = v9++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  *(v4 + 24) = *(a1 + 64) != 0;
  *(v4 + 28) = *(a1 + 68);
  return v4;
}

unint64_t _readRowExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 134;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 32) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 40) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 32) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 48);
  v13 = *(a1 + 52);
  if (v13 == 3)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13 == 2;
  }

  *(v4 + 20) = v14;
  if (*(a1 + 56))
  {
    v15 = _readNode(**(a1 + 64));
    list_make1_impl(226, v15, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 56) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 64) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 56) > v20);
    }
  }

  *(v4 + 32) = *(a1 + 72);
  return v4;
}

void *_readRowCompareExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  v5 = v4;
  *v4 = 135;
  v6 = *(a1 + 32);
  if ((v6 - 2) >= 5)
  {
    v6 = 1;
  }

  v4[1] = v6;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v8);
    v5[1] = v9;
    if (*(a1 + 40) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 48) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        v5[1] = v10;
        v12 = v11++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  if (*(a1 + 56))
  {
    v15 = _readNode(**(a1 + 64));
    list_make1_impl(226, v15, v16);
    v5[2] = v17;
    if (*(a1 + 56) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 64) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        v5[2] = v18;
        v20 = v19++;
      }

      while (*(a1 + 56) > v20);
    }
  }

  if (*(a1 + 72))
  {
    v23 = _readNode(**(a1 + 80));
    list_make1_impl(226, v23, v24);
    v5[3] = v25;
    if (*(a1 + 72) >= 2uLL)
    {
      v26 = v25;
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = _readNode(*(*(a1 + 80) + 8 * v28));
        v26 = lappend(v26, v29, v30);
        v5[3] = v26;
        v28 = v27++;
      }

      while (*(a1 + 72) > v28);
    }
  }

  if (*(a1 + 88))
  {
    v31 = _readNode(**(a1 + 96));
    list_make1_impl(226, v31, v32);
    v5[4] = v33;
    if (*(a1 + 88) >= 2uLL)
    {
      v34 = v33;
      v35 = 2;
      v36 = 1;
      do
      {
        v37 = _readNode(*(*(a1 + 96) + 8 * v36));
        v34 = lappend(v34, v37, v38);
        v5[4] = v34;
        v36 = v35++;
      }

      while (*(a1 + 88) > v36);
    }
  }

  if (*(a1 + 104))
  {
    v39 = _readNode(**(a1 + 112));
    list_make1_impl(226, v39, v40);
    v5[5] = v41;
    if (*(a1 + 104) >= 2uLL)
    {
      v42 = v41;
      v43 = 2;
      v44 = 1;
      do
      {
        v45 = _readNode(*(*(a1 + 112) + 8 * v44));
        v42 = lappend(v42, v45, v46);
        v5[5] = v42;
        v44 = v43++;
      }

      while (*(a1 + 104) > v44);
    }
  }

  return v5;
}

unint64_t _readCoalesceExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 136;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v6);
    *(v4 + 16) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 16) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  *(v4 + 24) = *(a1 + 56);
  return v4;
}

unint64_t _readMinMaxExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 137;
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40);
  *(v4 + 16) = *(a1 + 44) == 2;
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v6);
    *(v4 + 24) = v7;
    if (*(a1 + 48) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 56) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  *(v4 + 32) = *(a1 + 64);
  return v4;
}

_DWORD *_readSQLValueFunction(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 138;
  v5 = a1[8];
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0xE)
  {
    v7 = 0;
  }

  result[1] = v7;
  result[2] = a1[9];
  result[3] = a1[10];
  result[4] = a1[11];
  return result;
}

_DWORD *_readXmlExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  v6 = v4;
  *v4 = 139;
  v7 = *(a1 + 32);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 7)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 40);
  if (v10 && *v10)
  {
    *(v6 + 1) = pstrdup(v10, v5);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v12);
    *(v6 + 2) = v13;
    if (*(a1 + 48) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 56) + 8 * v16));
        v14 = lappend(v14, v17, v18);
        *(v6 + 2) = v14;
        v16 = v15++;
      }

      while (*(a1 + 48) > v16);
    }
  }

  if (*(a1 + 64))
  {
    v19 = _readNode(**(a1 + 72));
    list_make1_impl(226, v19, v20);
    *(v6 + 3) = v21;
    if (*(a1 + 64) >= 2uLL)
    {
      v22 = v21;
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = _readNode(*(*(a1 + 72) + 8 * v24));
        v22 = lappend(v22, v25, v26);
        *(v6 + 3) = v22;
        v24 = v23++;
      }

      while (*(a1 + 64) > v24);
    }
  }

  if (*(a1 + 80))
  {
    v27 = _readNode(**(a1 + 88));
    list_make1_impl(226, v27, v28);
    *(v6 + 4) = v29;
    if (*(a1 + 80) >= 2uLL)
    {
      v30 = v29;
      v31 = 2;
      v32 = 1;
      do
      {
        v33 = _readNode(*(*(a1 + 88) + 8 * v32));
        v30 = lappend(v30, v33, v34);
        *(v6 + 4) = v30;
        v32 = v31++;
      }

      while (*(a1 + 80) > v32);
    }
  }

  v6[10] = *(a1 + 96) == 2;
  v6[11] = *(a1 + 100);
  v6[12] = *(a1 + 104);
  v6[13] = *(a1 + 108);
  return v6;
}

unint64_t _readNullTest(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *result = 140;
  if (*(a1 + 32))
  {
    v5 = result;
    Node = _readNode(*(a1 + 32));
    result = v5;
    *(v5 + 8) = Node;
  }

  *(result + 16) = *(a1 + 40) == 2;
  *(result + 20) = *(a1 + 44) != 0;
  *(result + 24) = *(a1 + 48);
  return result;
}

_DWORD *_readBooleanTest(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 141;
  if (*(a1 + 32))
  {
    v5 = result;
    Node = _readNode(*(a1 + 32));
    result = v5;
    *(v5 + 1) = Node;
  }

  v7 = *(a1 + 40);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 5)
  {
    v9 = 0;
  }

  result[4] = v9;
  result[5] = *(a1 + 44);
  return result;
}

_DWORD *_readCoerceToDomain(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *result = 142;
  if (*(a1 + 32))
  {
    v5 = result;
    Node = _readNode(*(a1 + 32));
    result = v5;
    *(v5 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  result[6] = *(a1 + 48);
  v7 = *(a1 + 52);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  result[7] = v8;
  result[8] = *(a1 + 56);
  return result;
}

_DWORD *_readCoerceToDomainValue(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 143;
  result[1] = a1[8];
  result[2] = a1[9];
  result[3] = a1[10];
  result[4] = a1[11];
  return result;
}

_DWORD *_readSetToDefault(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 144;
  result[1] = a1[8];
  result[2] = a1[9];
  result[3] = a1[10];
  result[4] = a1[11];
  return result;
}

_DWORD *_readCurrentOfExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 145;
  result[1] = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6 && *v6)
  {
    v7 = result;
    v8 = pstrdup(*(a1 + 40), v5);
    result = v7;
    *(v7 + 1) = v8;
  }

  result[4] = *(a1 + 48);
  return result;
}

_DWORD *_readInferenceElem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 147;
  if (*(a1 + 32))
  {
    v5 = result;
    Node = _readNode(*(a1 + 32));
    result = v5;
    *(v5 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  return result;
}

unint64_t _readTargetEntry(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 148;
  v6 = *(a1 + 32);
  if (v6)
  {
    *(v4 + 8) = _readNode(v6);
  }

  *(v4 + 16) = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7 && *v7)
  {
    *(v4 + 24) = pstrdup(v7, v5);
  }

  *(v4 + 32) = *(a1 + 56);
  *(v4 + 36) = *(a1 + 60);
  *(v4 + 40) = *(a1 + 64);
  *(v4 + 42) = *(a1 + 68) != 0;
  return v4;
}

unint64_t _readJoinExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  v6 = v4;
  *v4 = 150;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 7)
  {
    v9 = 0;
  }

  *(v4 + 4) = v9;
  *(v4 + 8) = *(a1 + 28) != 0;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v6 + 16) = _readNode(v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    *(v6 + 24) = _readNode(v11);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    v5 = list_make1_impl(226, Node, v13);
    *(v6 + 32) = v14;
    if (*(a1 + 48) >= 2uLL)
    {
      v15 = v14;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = _readNode(*(*(a1 + 56) + 8 * v17));
        v15 = lappend(v15, v18, v19);
        *(v6 + 32) = v15;
        v17 = v16++;
      }

      while (*(a1 + 48) > v17);
    }
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    *(v6 + 40) = _readNode(v20);
  }

  v21 = *(a1 + 72);
  if (v21)
  {
    *(v6 + 48) = _readAlias(v21, v5);
  }

  *(v6 + 56) = *(a1 + 80);
  return v6;
}