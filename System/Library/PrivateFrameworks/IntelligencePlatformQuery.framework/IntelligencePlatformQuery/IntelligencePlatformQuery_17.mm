uint64_t deparseWithClause(uint64_t a1, uint64_t a2)
{
  result = appendStringInfoString(a1, "WITH ");
  if (*(a2 + 16) == 1)
  {
    result = appendStringInfoString(a1, "RECURSIVE ");
  }

  v5 = *(a2 + 8);
  if (v5 && *(v5 + 4) >= 1)
  {
    for (i = 0; i < *(v5 + 4); ++i)
    {
      v7 = *(v5 + 16) + 8 * i;
      v8 = *v7;
      v9 = quote_identifier(*(*v7 + 8));
      appendStringInfoString(a1, v9);
      v10 = *(v8 + 16);
      if (v10 && *(v10 + 4) >= 1)
      {
        appendStringInfoChar(a1, 40);
        v11 = *(v8 + 16);
        if (v11 && *(v11 + 4) >= 1)
        {
          v12 = 0;
          v13 = 8;
          do
          {
            v14 = *(v11 + 16);
            v15 = quote_identifier(*(*(v14 + 8 * v12) + 8));
            appendStringInfoString(a1, v15);
            v16 = *(v11 + 4);
            if (v14 + v13)
            {
              v17 = v14 + v13 >= (*(v11 + 16) + 8 * v16);
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              appendStringInfoString(a1, ", ");
              v16 = *(v11 + 4);
            }

            ++v12;
            v13 += 8;
          }

          while (v12 < v16);
        }

        appendStringInfoChar(a1, 41);
      }

      appendStringInfoChar(a1, 32);
      appendStringInfoString(a1, "AS ");
      v18 = *(v8 + 24);
      if (v18 == 1)
      {
        v19 = "MATERIALIZED ";
      }

      else
      {
        if (v18 != 2)
        {
          goto LABEL_24;
        }

        v19 = "NOT MATERIALIZED ";
      }

      appendStringInfoString(a1, v19);
LABEL_24:
      appendStringInfoChar(a1, 40);
      v20 = *(v8 + 32);
      v21 = *v20;
      if (*v20 <= 234)
      {
        if (v21 == 233)
        {
          deparseInsertStmt(a1, v20);
        }

        else if (v21 == 234)
        {
          deparseDeleteStmt(a1, v20);
          result = appendStringInfoChar(a1, 41);
          v22 = v7 + 8;
          if (v7 != -8)
          {
            goto LABEL_35;
          }

          continue;
        }

LABEL_34:
        result = appendStringInfoChar(a1, 41);
        v22 = v7 + 8;
        if (v7 != -8)
        {
          goto LABEL_35;
        }

        continue;
      }

      if (v21 != 235)
      {
        if (v21 == 236)
        {
          deparseSelectStmt(a1, v20);
          result = appendStringInfoChar(a1, 41);
          v22 = v7 + 8;
          if (v7 != -8)
          {
            goto LABEL_35;
          }

          continue;
        }

        goto LABEL_34;
      }

      deparseUpdateStmt(a1, v20);
      result = appendStringInfoChar(a1, 41);
      v22 = v7 + 8;
      if (v7 != -8)
      {
LABEL_35:
        if (v22 < *(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4))
        {
          result = appendStringInfoString(a1, ", ");
        }
      }
    }
  }

  v23 = *(a1 + 8);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v25 < 0 == v24)
  {
    v26 = *a1;
    if (*(*a1 + v25) == 32)
    {
      *(a1 + 8) = v25;
      *(v26 + v25) = 0;
    }
  }

  return result;
}

uint64_t deparseTargetList(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      v7 = *(v6 + 8 * v4);
      v8 = *(v7 + 24);
      if (!v8)
      {
        deparseTargetList_cold_1();
      }

      if (*v8 == 347)
      {
        v9 = **(*(v8 + 8) + 16);
        if (*v9 == 223)
        {
          v10 = quote_identifier(*(v9 + 8));
          appendStringInfoString(v3, v10);
        }

        else if (*v9 == 351)
        {
          appendStringInfoChar(v3, 42);
        }

        result = deparseOptIndirection(v3, *(v8 + 8), 1);
        if (!*(v7 + 8))
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = deparseExpr(v3, *(v7 + 24));
        if (!*(v7 + 8))
        {
          goto LABEL_15;
        }
      }

      appendStringInfoString(v3, " AS ");
      v11 = quote_identifier(*(v7 + 8));
      result = appendStringInfoString(v3, v11);
LABEL_15:
      if (v6 + v5)
      {
        if (v6 + v5 < (*(a2 + 16) + 8 * *(a2 + 4)))
        {
          result = appendStringInfoString(v3, ", ");
        }
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < *(a2 + 4));
  }

  return result;
}

uint64_t deparseAccessPriv(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    if (!strcmp(v4, "select"))
    {
      v5 = "select";
    }

    else if (!strcmp(v4, "references"))
    {
      v5 = "references";
    }

    else if (!strcmp(v4, "create"))
    {
      v5 = "create";
    }

    else
    {
      v5 = quote_identifier(v4);
    }
  }

  else
  {
    v5 = "ALL";
  }

  appendStringInfoString(a1, v5);
  result = appendStringInfoChar(a1, 32);
  v7 = *(a2 + 16);
  if (v7 && *(v7 + 4) >= 1)
  {
    appendStringInfoChar(a1, 40);
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = quote_identifier(*(*(v11 + 8 * v9) + 8));
        appendStringInfoString(a1, v12);
        v13 = *(v8 + 4);
        if (v11 + v10)
        {
          v14 = v11 + v10 >= (*(v8 + 16) + 8 * v13);
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          appendStringInfoString(a1, ", ");
          v13 = *(v8 + 4);
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < v13);
    }

    result = appendStringInfoChar(a1, 41);
  }

  v15 = *(a1 + 2);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v17 < 0 == v16)
  {
    v18 = *a1;
    if (*(*a1 + v17) == 32)
    {
      *(a1 + 2) = v17;
      *(v18 + v17) = 0;
    }
  }

  return result;
}

_DWORD *deparseFunctionWithArgtypesList(_DWORD *result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      result = deparseFunctionWithArgtypes(v3, *(v6 + 8 * v4));
      v7 = *(a2 + 4);
      if (v6 + v5)
      {
        v8 = v6 + v5 >= (*(a2 + 16) + 8 * v7);
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        result = appendStringInfoString(v3, ", ");
        v7 = *(a2 + 4);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v7);
  }

  return result;
}

uint64_t deparseNumericOnlyList(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      v7 = *(v6 + 8 * v4);
      if (*v7 == 222)
      {
        result = appendStringInfoString(v3, *(v7 + 8));
      }

      else if (*v7 == 221)
      {
        result = appendStringInfo(v3, "%d", *(v7 + 8));
      }

      v8 = *(a2 + 4);
      if (v6 + v5)
      {
        v9 = v6 + v5 >= (*(a2 + 16) + 8 * v8);
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        result = appendStringInfoString(v3, ", ");
        v8 = *(a2 + 4);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v8);
  }

  return result;
}

uint64_t deparseSetClauseList(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (*(a2 + 4) >= 1)
    {
      v3 = result;
      v4 = 0;
      for (i = 0; i < *(v2 + 4); ++i)
      {
        if (v4 >= 1)
        {
          --v4;
        }

        else
        {
          v6 = *(v2 + 16);
          if (i)
          {
            appendStringInfoString(v3, ", ");
          }

          v7 = (v6 + 8 * i);
          v8 = *v7;
          v28 = *(*v7 + 24);
          if (*v28 == 356)
          {
            v26 = i;
            appendStringInfoString(v3, "(");
            v9 = (v7 - *(v2 + 16)) >> 3;
            if (*(v2 + 4) > v9)
            {
              while (1)
              {
                v10 = *(v2 + 16) + 8 * v9;
                v11 = *v10;
                v12 = quote_identifier(*(*v10 + 8));
                appendStringInfoString(v3, v12);
                v13 = *(v11 + 16);
                if (v13)
                {
                  if (*(v13 + 4) >= 1)
                  {
                    break;
                  }
                }

LABEL_30:
                v2 = a2;
                if (*(v28 + 20) - 1 != v9)
                {
                  v23 = *(a2 + 4);
                  if (v10 != -8 && v10 + 8 < (*(a2 + 16) + 8 * v23))
                  {
                    appendStringInfoString(v3, ", ");
                    LODWORD(v23) = *(a2 + 4);
                  }

                  LODWORD(v9) = v9 + 1;
                  if (v23 > v9)
                  {
                    continue;
                  }
                }

                goto LABEL_11;
              }

              v14 = 0;
              v15 = 0;
              while (2)
              {
                v18 = *(v13 + 16);
                v19 = *(v18 + (v15 >> 29));
                v20 = *v19;
                if (*v19 == 352)
                {
                  appendStringInfoChar(v3, 91);
                  v21 = *(v19 + 1);
                  if (v21)
                  {
                    deparseExpr(v3, v21);
                  }

                  if (*(v19 + 4) == 1)
                  {
                    appendStringInfoChar(v3, 58);
                  }

                  v22 = *(v19 + 2);
                  if (v22)
                  {
                    deparseExpr(v3, v22);
                  }

                  appendStringInfoChar(v3, 93);
                }

                else
                {
                  if (v20 == 351)
                  {
                    v16 = v3;
                    v17 = ".*";
                    goto LABEL_17;
                  }

                  if (v20 == 223)
                  {
                    appendStringInfoChar(v3, 46);
                    v17 = quote_identifier(*(*(v18 + (v15 >> 29)) + 8));
                    v16 = v3;
LABEL_17:
                    appendStringInfoString(v16, v17);
                  }
                }

                v15 += 0x100000000;
                if (*(v13 + 4) <= ++v14)
                {
                  goto LABEL_30;
                }

                continue;
              }
            }

LABEL_11:
            appendStringInfoString(v3, ") = ");
            result = deparseExpr(v3, *(v28 + 8));
            v4 = *(v28 + 20) - 1;
            i = v26;
          }

          else
          {
            v25 = quote_identifier(*(v8 + 8));
            appendStringInfoString(v3, v25);
            deparseOptIndirection(v3, *(v8 + 16), 0);
            appendStringInfoString(v3, " = ");
            result = deparseExpr(v3, *(v8 + 24));
          }
        }
      }
    }
  }

  return result;
}

void *deparseGroupingSet(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      appendStringInfoString(result, "CUBE (");
      v18 = *(a2 + 8);
      if (v18 && *(v18 + 4) >= 1)
      {
        v19 = 0;
        v20 = 8;
        do
        {
          v21 = *(v18 + 16);
          deparseExpr(v3, *(v21 + 8 * v19));
          v22 = *(v18 + 4);
          if (v21 + v20)
          {
            v23 = v21 + v20 >= (*(v18 + 16) + 8 * v22);
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            appendStringInfoString(v3, ", ");
            v22 = *(v18 + 4);
          }

          ++v19;
          v20 += 8;
        }

        while (v19 < v22);
      }
    }

    else
    {
      if (v4 != 4)
      {
        return result;
      }

      appendStringInfoString(result, "GROUPING SETS (");
      v11 = *(a2 + 8);
      if (v11 && *(v11 + 4) >= 1)
      {
        v12 = 0;
        v13 = 8;
        do
        {
          v14 = *(v11 + 16);
          v15 = *(v14 + 8 * v12);
          if (*v15 == 376)
          {
            deparseGroupingSet(v3, v15);
          }

          else
          {
            deparseExpr(v3, v15);
          }

          v16 = *(v11 + 4);
          if (v14 + v13)
          {
            v17 = v14 + v13 >= (*(v11 + 16) + 8 * v16);
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            appendStringInfoString(v3, ", ");
            v16 = *(v11 + 4);
          }

          ++v12;
          v13 += 8;
        }

        while (v12 < v16);
      }
    }

    goto LABEL_40;
  }

  if (v4)
  {
    if (v4 != 2)
    {
      return result;
    }

    appendStringInfoString(result, "ROLLUP (");
    v5 = *(a2 + 8);
    if (v5 && *(v5 + 4) >= 1)
    {
      v6 = 0;
      v7 = 8;
      do
      {
        v8 = *(v5 + 16);
        deparseExpr(v3, *(v8 + 8 * v6));
        v9 = *(v5 + 4);
        if (v8 + v7)
        {
          v10 = v8 + v7 >= (*(v5 + 16) + 8 * v9);
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          appendStringInfoString(v3, ", ");
          v9 = *(v5 + 4);
        }

        ++v6;
        v7 += 8;
      }

      while (v6 < v9);
    }

LABEL_40:

    return appendStringInfoChar(v3, 41);
  }

  return appendStringInfoString(result, "()");
}

uint64_t deparseTransactionModeList(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      v7 = *(v6 + 8 * v4);
      v8 = *(v7 + 16);
      if (!strcmp(v8, "transaction_isolation"))
      {
        v11 = *(*(v7 + 24) + 16);
        appendStringInfoString(v3, "ISOLATION LEVEL ");
        if (!strcmp(v11, "read uncommitted"))
        {
          v10 = "READ UNCOMMITTED";
          goto LABEL_24;
        }

        if (!strcmp(v11, "read committed"))
        {
          v10 = "READ COMMITTED";
          goto LABEL_24;
        }

        if (!strcmp(v11, "repeatable read"))
        {
          v10 = "REPEATABLE READ";
          goto LABEL_24;
        }

        result = strcmp(v11, "serializable");
        if (!result)
        {
          v10 = "SERIALIZABLE";
          goto LABEL_24;
        }
      }

      else
      {
        if (!strcmp(v8, "transaction_read_only"))
        {
          v12 = *(*(v7 + 24) + 16);
          if (v12 == 1)
          {
            v10 = "READ ONLY";
            goto LABEL_24;
          }

          if (!v12)
          {
            v10 = "READ WRITE";
            goto LABEL_24;
          }
        }

        result = strcmp(v8, "transaction_deferrable");
        if (!result)
        {
          v9 = *(*(v7 + 24) + 16);
          if (v9 == 1)
          {
            v10 = "DEFERRABLE";
            goto LABEL_24;
          }

          if (!v9)
          {
            v10 = "NOT DEFERRABLE";
LABEL_24:
            result = appendStringInfoString(v3, v10);
          }
        }
      }

      if (v6 + v5)
      {
        if (v6 + v5 < (*(a2 + 16) + 8 * *(a2 + 4)))
        {
          result = appendStringInfoString(v3, ", ");
        }
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < *(a2 + 4));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return errstart(20, 0);
}

void pg_query_deparse_protobuf_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  errmsg_internal("deparse: unsupported top-level node type: %u", *v0);
  errfinish("src/pg_query_deparse.c", 9904, "deparseStmt");
  __break(1u);
}

void pg_query_deparse_protobuf_cold_2()
{
  errstart(20, 0);
  errmsg_internal("deparse error in deparseRawStmt: RawStmt with empty Stmt");
  errfinish("src/pg_query_deparse.c", 2278, "deparseRawStmt");
  __break(1u);
}

void deparseSelectStmt_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  errmsg_internal("deparse: unpermitted node type in c_expr: %d", *v0);
  errfinish("src/pg_query_deparse.c", 375, "deparseCExpr");
  __break(1u);
}

void deparseExpr_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  errmsg_internal("deparse: unpermitted node type in a_expr/b_expr: %d", *v0);
  errfinish("src/pg_query_deparse.c", 325, "deparseExpr");
  __break(1u);
}

void deparseValue_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  errmsg_internal("deparse: unrecognized value node type: %d", *v0);
  errfinish("src/pg_query_deparse.c", 9432, "deparseValue");
  __break(1u);
}

void deparseTargetList_cold_1()
{
  errstart(20, 0);
  errmsg_internal("deparse: error in deparseTargetList: ResTarget without val");
  errfinish("src/pg_query_deparse.c", 1417, "deparseTargetList");
  __break(1u);
}

uint64_t pg_query_nodes_to_json(uint64_t a1, double a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  initStringInfo(&v10, a2);
  if (a1)
  {
    appendStringInfoString(&v10, "{");
    appendStringInfo(&v10, "version:%d,", 130003);
    appendStringInfoString(&v10, "stmts:");
    appendStringInfoChar(&v10, 91);
    if (*(a1 + 4) >= 1)
    {
      v3 = 0;
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        appendStringInfoChar(&v10, 123);
        v6 = *(v5 + 8 * v3);
        if (*(v6 + 8))
        {
          appendStringInfo(&v10, "stmt:");
          _outNode(&v10, *(v6 + 8));
          appendStringInfo(&v10, ",");
        }

        if (*(v6 + 16))
        {
          appendStringInfo(&v10, "stmt_location:%d,", *(v6 + 16));
        }

        if (*(v6 + 20))
        {
          appendStringInfo(&v10, "stmt_len:%d,", *(v6 + 20));
        }

        v7 = v11 - 1;
        if (v11 >= 1 && *(v10 + v7) == 44)
        {
          LODWORD(v11) = v11 - 1;
          *(v10 + v7) = 0;
        }

        appendStringInfoChar(&v10, 125);
        v8 = *(a1 + 4);
        if (v5 + v4 && v5 + v4 < (*(a1 + 16) + 8 * v8))
        {
          appendStringInfoString(&v10, ",");
          v8 = *(a1 + 4);
        }

        ++v3;
        v4 += 8;
      }

      while (v3 < v8);
    }

    appendStringInfoChar(&v10, 93);
    appendStringInfoString(&v10, "}");
  }

  else
  {
    appendStringInfo(&v10, "{version:%d,stmts:[]}", 130003);
  }

  return v10;
}

uint64_t _outRawStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "stmt:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "stmt_location:%d,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v3, "stmt_len:%d,", *(a2 + 20));
  }

  return result;
}

void *_outNode(int *a1, unsigned int *a2)
{
  if (a2)
  {
    appendStringInfoChar(a1, 123);
    switch(*a2)
    {
      case 0x66u:
        appendStringInfoString(a1, "Alias:{");
        _outAlias(a1, a2);
        goto LABEL_218;
      case 0x67u:
        appendStringInfoString(a1, "RangeVar:{");
        _outRangeVar(a1, a2);
        goto LABEL_218;
      case 0x68u:
        appendStringInfoString(a1, "TableFunc:{");
        _outTableFunc(a1, a2);
        goto LABEL_218;
      case 0x69u:
        v5 = "Expr:{";
        goto LABEL_217;
      case 0x6Au:
        appendStringInfoString(a1, "Var:{");
        _outVar(a1, a2);
        goto LABEL_218;
      case 0x6Cu:
        appendStringInfoString(a1, "Param:{");
        _outParam(a1, a2);
        goto LABEL_218;
      case 0x6Du:
        appendStringInfoString(a1, "Aggref:{");
        _outAggref(a1, a2);
        goto LABEL_218;
      case 0x6Eu:
        appendStringInfoString(a1, "GroupingFunc:{");
        _outGroupingFunc(a1, a2);
        goto LABEL_218;
      case 0x6Fu:
        appendStringInfoString(a1, "WindowFunc:{");
        _outWindowFunc(a1, a2);
        goto LABEL_218;
      case 0x70u:
        appendStringInfoString(a1, "SubscriptingRef:{");
        _outSubscriptingRef(a1, a2);
        goto LABEL_218;
      case 0x71u:
        appendStringInfoString(a1, "FuncExpr:{");
        _outFuncExpr(a1, a2);
        goto LABEL_218;
      case 0x72u:
        appendStringInfoString(a1, "NamedArgExpr:{");
        _outNamedArgExpr(a1, a2);
        goto LABEL_218;
      case 0x73u:
        appendStringInfoString(a1, "OpExpr:{");
        _outOpExpr(a1, a2);
        goto LABEL_218;
      case 0x74u:
        appendStringInfoString(a1, "DistinctExpr:{");
        _outOpExpr(a1, a2);
        goto LABEL_218;
      case 0x75u:
        appendStringInfoString(a1, "NullIfExpr:{");
        _outOpExpr(a1, a2);
        goto LABEL_218;
      case 0x76u:
        appendStringInfoString(a1, "ScalarArrayOpExpr:{");
        _outScalarArrayOpExpr(a1, a2);
        goto LABEL_218;
      case 0x77u:
        appendStringInfoString(a1, "BoolExpr:{");
        _outBoolExpr(a1, a2);
        goto LABEL_218;
      case 0x78u:
        appendStringInfoString(a1, "SubLink:{");
        _outSubLink(a1, a2);
        goto LABEL_218;
      case 0x79u:
        appendStringInfoString(a1, "SubPlan:{");
        _outSubPlan(a1, a2);
        goto LABEL_218;
      case 0x7Au:
        appendStringInfoString(a1, "AlternativeSubPlan:{");
        _outAlternativeSubPlan(a1, a2);
        goto LABEL_218;
      case 0x7Bu:
        appendStringInfoString(a1, "FieldSelect:{");
        _outFieldSelect(a1, a2);
        goto LABEL_218;
      case 0x7Cu:
        appendStringInfoString(a1, "FieldStore:{");
        _outFieldStore(a1, a2);
        goto LABEL_218;
      case 0x7Du:
        appendStringInfoString(a1, "RelabelType:{");
        _outRelabelType(a1, a2);
        goto LABEL_218;
      case 0x7Eu:
        appendStringInfoString(a1, "CoerceViaIO:{");
        _outCoerceViaIO(a1, a2);
        goto LABEL_218;
      case 0x7Fu:
        appendStringInfoString(a1, "ArrayCoerceExpr:{");
        _outArrayCoerceExpr(a1, a2);
        goto LABEL_218;
      case 0x80u:
        appendStringInfoString(a1, "ConvertRowtypeExpr:{");
        _outConvertRowtypeExpr(a1, a2);
        goto LABEL_218;
      case 0x81u:
        appendStringInfoString(a1, "CollateExpr:{");
        _outCollateExpr(a1, a2);
        goto LABEL_218;
      case 0x82u:
        appendStringInfoString(a1, "CaseExpr:{");
        _outCaseExpr(a1, a2);
        goto LABEL_218;
      case 0x83u:
        appendStringInfoString(a1, "CaseWhen:{");
        _outCaseWhen(a1, a2);
        goto LABEL_218;
      case 0x84u:
        appendStringInfoString(a1, "CaseTestExpr:{");
        _outCaseTestExpr(a1, a2);
        goto LABEL_218;
      case 0x85u:
        appendStringInfoString(a1, "ArrayExpr:{");
        _outArrayExpr(a1, a2);
        goto LABEL_218;
      case 0x86u:
        appendStringInfoString(a1, "RowExpr:{");
        _outRowExpr(a1, a2);
        goto LABEL_218;
      case 0x87u:
        appendStringInfoString(a1, "RowCompareExpr:{");
        _outRowCompareExpr(a1, a2);
        goto LABEL_218;
      case 0x88u:
        appendStringInfoString(a1, "CoalesceExpr:{");
        _outCoalesceExpr(a1, a2);
        goto LABEL_218;
      case 0x89u:
        appendStringInfoString(a1, "MinMaxExpr:{");
        _outMinMaxExpr(a1, a2);
        goto LABEL_218;
      case 0x8Au:
        appendStringInfoString(a1, "SQLValueFunction:{");
        _outSQLValueFunction(a1, a2);
        goto LABEL_218;
      case 0x8Bu:
        appendStringInfoString(a1, "XmlExpr:{");
        _outXmlExpr(a1, a2);
        goto LABEL_218;
      case 0x8Cu:
        appendStringInfoString(a1, "NullTest:{");
        _outNullTest(a1, a2);
        goto LABEL_218;
      case 0x8Du:
        appendStringInfoString(a1, "BooleanTest:{");
        _outBooleanTest(a1, a2);
        goto LABEL_218;
      case 0x8Eu:
        appendStringInfoString(a1, "CoerceToDomain:{");
        _outCoerceToDomain(a1, a2);
        goto LABEL_218;
      case 0x8Fu:
        appendStringInfoString(a1, "CoerceToDomainValue:{");
        _outCoerceToDomainValue(a1, a2);
        goto LABEL_218;
      case 0x90u:
        appendStringInfoString(a1, "SetToDefault:{");
        _outCoerceToDomainValue(a1, a2);
        goto LABEL_218;
      case 0x91u:
        appendStringInfoString(a1, "CurrentOfExpr:{");
        _outCurrentOfExpr(a1, a2);
        goto LABEL_218;
      case 0x92u:
        appendStringInfoString(a1, "NextValueExpr:{");
        _outNextValueExpr(a1, a2);
        goto LABEL_218;
      case 0x93u:
        appendStringInfoString(a1, "InferenceElem:{");
        _outInferenceElem(a1, a2);
        goto LABEL_218;
      case 0x94u:
        appendStringInfoString(a1, "TargetEntry:{");
        _outTargetEntry(a1, a2);
        goto LABEL_218;
      case 0x95u:
        appendStringInfoString(a1, "RangeTblRef:{");
        if (a2[1])
        {
          appendStringInfo(a1, "rtindex:%d,");
        }

        goto LABEL_218;
      case 0x96u:
        appendStringInfoString(a1, "JoinExpr:{");
        _outJoinExpr(a1, a2);
        goto LABEL_218;
      case 0x97u:
        appendStringInfoString(a1, "FromExpr:{");
        _outFromExpr(a1, a2);
        goto LABEL_218;
      case 0x98u:
        appendStringInfoString(a1, "OnConflictExpr:{");
        _outOnConflictExpr(a1, a2);
        goto LABEL_218;
      case 0x99u:
        appendStringInfoString(a1, "IntoClause:{");
        _outIntoClause(a1, a2);
        goto LABEL_218;
      case 0xDDu:
        appendStringInfoString(a1, "Integer:{");
        appendStringInfo(a1, "ival:%d,");
        goto LABEL_218;
      case 0xDEu:
        appendStringInfoString(a1, "Float:{");
        _outFloat(a1, a2);
        goto LABEL_218;
      case 0xDFu:
        appendStringInfoString(a1, "String:{");
        _outFloat(a1, a2);
        goto LABEL_218;
      case 0xE0u:
        appendStringInfoString(a1, "BitString:{");
        _outFloat(a1, a2);
        goto LABEL_218;
      case 0xE1u:
        v5 = "Null:{";
        goto LABEL_217;
      case 0xE2u:
        appendStringInfoString(a1, "List:{");
        _outList(a1, a2);
        goto LABEL_218;
      case 0xE3u:
        appendStringInfoString(a1, "IntList:{");
        _outIntList(a1, a2);
        goto LABEL_218;
      case 0xE4u:
        appendStringInfoString(a1, "OidList:{");
        _outOidList(a1, a2);
        goto LABEL_218;
      case 0xE6u:
        appendStringInfoString(a1, "RawStmt:{");
        _outRawStmt(a1, a2);
        goto LABEL_218;
      case 0xE7u:
        appendStringInfoString(a1, "Query:{");
        _outQuery(a1, a2);
        goto LABEL_218;
      case 0xE9u:
        appendStringInfoString(a1, "InsertStmt:{");
        _outInsertStmt(a1, a2);
        goto LABEL_218;
      case 0xEAu:
        appendStringInfoString(a1, "DeleteStmt:{");
        _outDeleteStmt(a1, a2);
        goto LABEL_218;
      case 0xEBu:
        appendStringInfoString(a1, "UpdateStmt:{");
        _outUpdateStmt(a1, a2);
        goto LABEL_218;
      case 0xECu:
        appendStringInfoString(a1, "SelectStmt:{");
        _outSelectStmt(a1, a2);
        goto LABEL_218;
      case 0xEDu:
        appendStringInfoString(a1, "AlterTableStmt:{");
        _outAlterTableStmt(a1, a2);
        goto LABEL_218;
      case 0xEEu:
        appendStringInfoString(a1, "AlterTableCmd:{");
        _outAlterTableCmd(a1, a2);
        goto LABEL_218;
      case 0xEFu:
        appendStringInfoString(a1, "AlterDomainStmt:{");
        _outAlterDomainStmt(a1, a2);
        goto LABEL_218;
      case 0xF0u:
        appendStringInfoString(a1, "SetOperationStmt:{");
        _outSetOperationStmt(a1, a2);
        goto LABEL_218;
      case 0xF1u:
        appendStringInfoString(a1, "GrantStmt:{");
        _outGrantStmt(a1, a2);
        goto LABEL_218;
      case 0xF2u:
        appendStringInfoString(a1, "GrantRoleStmt:{");
        _outGrantRoleStmt(a1, a2);
        goto LABEL_218;
      case 0xF3u:
        appendStringInfoString(a1, "AlterDefaultPrivilegesStmt:{");
        _outAlterDefaultPrivilegesStmt(a1, a2);
        goto LABEL_218;
      case 0xF4u:
        appendStringInfoString(a1, "ClosePortalStmt:{");
        _outClosePortalStmt(a1, a2);
        goto LABEL_218;
      case 0xF5u:
        appendStringInfoString(a1, "ClusterStmt:{");
        _outClusterStmt(a1, a2);
        goto LABEL_218;
      case 0xF6u:
        appendStringInfoString(a1, "CopyStmt:{");
        _outCopyStmt(a1, a2);
        goto LABEL_218;
      case 0xF7u:
        appendStringInfoString(a1, "CreateStmt:{");
        _outCreateStmt(a1, a2);
        goto LABEL_218;
      case 0xF8u:
        appendStringInfoString(a1, "DefineStmt:{");
        _outDefineStmt(a1, a2);
        goto LABEL_218;
      case 0xF9u:
        appendStringInfoString(a1, "DropStmt:{");
        _outDropStmt(a1, a2);
        goto LABEL_218;
      case 0xFAu:
        appendStringInfoString(a1, "TruncateStmt:{");
        _outTruncateStmt(a1, a2);
        goto LABEL_218;
      case 0xFBu:
        appendStringInfoString(a1, "CommentStmt:{");
        _outCommentStmt(a1, a2);
        goto LABEL_218;
      case 0xFCu:
        appendStringInfoString(a1, "FetchStmt:{");
        _outFetchStmt(a1, a2);
        goto LABEL_218;
      case 0xFDu:
        appendStringInfoString(a1, "IndexStmt:{");
        _outIndexStmt(a1, a2);
        goto LABEL_218;
      case 0xFEu:
        appendStringInfoString(a1, "CreateFunctionStmt:{");
        _outCreateFunctionStmt(a1, a2);
        goto LABEL_218;
      case 0xFFu:
        appendStringInfoString(a1, "AlterFunctionStmt:{");
        _outAlterFunctionStmt(a1, a2);
        goto LABEL_218;
      case 0x100u:
        appendStringInfoString(a1, "DoStmt:{");
        _outDoStmt(a1, a2);
        goto LABEL_218;
      case 0x101u:
        appendStringInfoString(a1, "RenameStmt:{");
        _outRenameStmt(a1, a2);
        goto LABEL_218;
      case 0x102u:
        appendStringInfoString(a1, "RuleStmt:{");
        _outRuleStmt(a1, a2);
        goto LABEL_218;
      case 0x103u:
        appendStringInfoString(a1, "NotifyStmt:{");
        _outNotifyStmt(a1, a2);
        goto LABEL_218;
      case 0x104u:
        appendStringInfoString(a1, "ListenStmt:{");
        _outListenStmt(a1, a2);
        goto LABEL_218;
      case 0x105u:
        appendStringInfoString(a1, "UnlistenStmt:{");
        _outListenStmt(a1, a2);
        goto LABEL_218;
      case 0x106u:
        appendStringInfoString(a1, "TransactionStmt:{");
        _outTransactionStmt(a1, a2);
        goto LABEL_218;
      case 0x107u:
        appendStringInfoString(a1, "ViewStmt:{");
        _outViewStmt(a1, a2);
        goto LABEL_218;
      case 0x108u:
        appendStringInfoString(a1, "LoadStmt:{");
        _outLoadStmt(a1, a2);
        goto LABEL_218;
      case 0x109u:
        appendStringInfoString(a1, "CreateDomainStmt:{");
        _outCreateDomainStmt(a1, a2);
        goto LABEL_218;
      case 0x10Au:
        appendStringInfoString(a1, "CreatedbStmt:{");
        _outCreatedbStmt(a1, a2);
        goto LABEL_218;
      case 0x10Bu:
        appendStringInfoString(a1, "DropdbStmt:{");
        _outDropdbStmt(a1, a2);
        goto LABEL_218;
      case 0x10Cu:
        appendStringInfoString(a1, "VacuumStmt:{");
        _outVacuumStmt(a1, a2);
        goto LABEL_218;
      case 0x10Du:
        appendStringInfoString(a1, "ExplainStmt:{");
        _outExplainStmt(a1, a2);
        goto LABEL_218;
      case 0x10Eu:
        appendStringInfoString(a1, "CreateTableAsStmt:{");
        _outCreateTableAsStmt(a1, a2);
        goto LABEL_218;
      case 0x10Fu:
        appendStringInfoString(a1, "CreateSeqStmt:{");
        _outCreateSeqStmt(a1, a2);
        goto LABEL_218;
      case 0x110u:
        appendStringInfoString(a1, "AlterSeqStmt:{");
        _outAlterSeqStmt(a1, a2);
        goto LABEL_218;
      case 0x111u:
        appendStringInfoString(a1, "VariableSetStmt:{");
        _outVariableSetStmt(a1, a2);
        goto LABEL_218;
      case 0x112u:
        appendStringInfoString(a1, "VariableShowStmt:{");
        _outVariableShowStmt(a1, a2);
        goto LABEL_218;
      case 0x113u:
        appendStringInfoString(a1, "DiscardStmt:{");
        _outDiscardStmt(a1, a2[1]);
        goto LABEL_218;
      case 0x114u:
        appendStringInfoString(a1, "CreateTrigStmt:{");
        _outCreateTrigStmt(a1, a2);
        goto LABEL_218;
      case 0x115u:
        appendStringInfoString(a1, "CreatePLangStmt:{");
        _outCreatePLangStmt(a1, a2);
        goto LABEL_218;
      case 0x116u:
        appendStringInfoString(a1, "CreateRoleStmt:{");
        _outCreateRoleStmt(a1, a2);
        goto LABEL_218;
      case 0x117u:
        appendStringInfoString(a1, "AlterRoleStmt:{");
        _outAlterRoleStmt(a1, a2);
        goto LABEL_218;
      case 0x118u:
        appendStringInfoString(a1, "DropRoleStmt:{");
        _outDropRoleStmt(a1, a2);
        goto LABEL_218;
      case 0x119u:
        appendStringInfoString(a1, "LockStmt:{");
        _outLockStmt(a1, a2);
        goto LABEL_218;
      case 0x11Au:
        appendStringInfoString(a1, "ConstraintsSetStmt:{");
        _outConstraintsSetStmt(a1, a2);
        goto LABEL_218;
      case 0x11Bu:
        appendStringInfoString(a1, "ReindexStmt:{");
        _outReindexStmt(a1, a2);
        goto LABEL_218;
      case 0x11Cu:
        v5 = "CheckPointStmt:{";
        goto LABEL_217;
      case 0x11Du:
        appendStringInfoString(a1, "CreateSchemaStmt:{");
        _outCreateSchemaStmt(a1, a2);
        goto LABEL_218;
      case 0x11Eu:
        appendStringInfoString(a1, "AlterDatabaseStmt:{");
        _outCreatedbStmt(a1, a2);
        goto LABEL_218;
      case 0x11Fu:
        appendStringInfoString(a1, "AlterDatabaseSetStmt:{");
        _outAlterDatabaseSetStmt(a1, a2);
        goto LABEL_218;
      case 0x120u:
        appendStringInfoString(a1, "AlterRoleSetStmt:{");
        _outAlterRoleSetStmt(a1, a2);
        goto LABEL_218;
      case 0x121u:
        appendStringInfoString(a1, "CreateConversionStmt:{");
        _outCreateConversionStmt(a1, a2);
        goto LABEL_218;
      case 0x122u:
        appendStringInfoString(a1, "CreateCastStmt:{");
        _outCreateCastStmt(a1, a2);
        goto LABEL_218;
      case 0x123u:
        appendStringInfoString(a1, "CreateOpClassStmt:{");
        _outCreateOpClassStmt(a1, a2);
        goto LABEL_218;
      case 0x124u:
        appendStringInfoString(a1, "CreateOpFamilyStmt:{");
        _outCreateOpFamilyStmt(a1, a2);
        goto LABEL_218;
      case 0x125u:
        appendStringInfoString(a1, "AlterOpFamilyStmt:{");
        _outAlterOpFamilyStmt(a1, a2);
        goto LABEL_218;
      case 0x126u:
        appendStringInfoString(a1, "PrepareStmt:{");
        _outPrepareStmt(a1, a2);
        goto LABEL_218;
      case 0x127u:
        appendStringInfoString(a1, "ExecuteStmt:{");
        _outExecuteStmt(a1, a2);
        goto LABEL_218;
      case 0x128u:
        appendStringInfoString(a1, "DeallocateStmt:{");
        _outVariableShowStmt(a1, a2);
        goto LABEL_218;
      case 0x129u:
        appendStringInfoString(a1, "DeclareCursorStmt:{");
        _outDeclareCursorStmt(a1, a2);
        goto LABEL_218;
      case 0x12Au:
        appendStringInfoString(a1, "CreateTableSpaceStmt:{");
        _outCreateTableSpaceStmt(a1, a2);
        goto LABEL_218;
      case 0x12Bu:
        appendStringInfoString(a1, "DropTableSpaceStmt:{");
        _outDropTableSpaceStmt(a1, a2);
        goto LABEL_218;
      case 0x12Cu:
        appendStringInfoString(a1, "AlterObjectDependsStmt:{");
        _outAlterObjectDependsStmt(a1, a2);
        goto LABEL_218;
      case 0x12Du:
        appendStringInfoString(a1, "AlterObjectSchemaStmt:{");
        _outAlterObjectSchemaStmt(a1, a2);
        goto LABEL_218;
      case 0x12Eu:
        appendStringInfoString(a1, "AlterOwnerStmt:{");
        _outAlterOwnerStmt(a1, a2);
        goto LABEL_218;
      case 0x12Fu:
        appendStringInfoString(a1, "AlterOperatorStmt:{");
        _outAlterOperatorStmt(a1, a2);
        goto LABEL_218;
      case 0x130u:
        appendStringInfoString(a1, "AlterTypeStmt:{");
        _outAlterTypeStmt(a1, a2);
        goto LABEL_218;
      case 0x131u:
        appendStringInfoString(a1, "DropOwnedStmt:{");
        _outDropOwnedStmt(a1, a2);
        goto LABEL_218;
      case 0x132u:
        appendStringInfoString(a1, "ReassignOwnedStmt:{");
        _outReassignOwnedStmt(a1, a2);
        goto LABEL_218;
      case 0x133u:
        appendStringInfoString(a1, "CompositeTypeStmt:{");
        _outCompositeTypeStmt(a1, a2);
        goto LABEL_218;
      case 0x134u:
        appendStringInfoString(a1, "CreateEnumStmt:{");
        _outCreateEnumStmt(a1, a2);
        goto LABEL_218;
      case 0x135u:
        appendStringInfoString(a1, "CreateRangeStmt:{");
        _outCreateRangeStmt(a1, a2);
        goto LABEL_218;
      case 0x136u:
        appendStringInfoString(a1, "AlterEnumStmt:{");
        _outAlterEnumStmt(a1, a2);
        goto LABEL_218;
      case 0x137u:
        appendStringInfoString(a1, "AlterTSDictionaryStmt:{");
        _outAlterTSDictionaryStmt(a1, a2);
        goto LABEL_218;
      case 0x138u:
        appendStringInfoString(a1, "AlterTSConfigurationStmt:{");
        _outAlterTSConfigurationStmt(a1, a2);
        goto LABEL_218;
      case 0x139u:
        appendStringInfoString(a1, "CreateFdwStmt:{");
        _outCreateFdwStmt(a1, a2);
        goto LABEL_218;
      case 0x13Au:
        appendStringInfoString(a1, "AlterFdwStmt:{");
        _outCreateFdwStmt(a1, a2);
        goto LABEL_218;
      case 0x13Bu:
        appendStringInfoString(a1, "CreateForeignServerStmt:{");
        _outCreateForeignServerStmt(a1, a2);
        goto LABEL_218;
      case 0x13Cu:
        appendStringInfoString(a1, "AlterForeignServerStmt:{");
        _outAlterForeignServerStmt(a1, a2);
        goto LABEL_218;
      case 0x13Du:
        appendStringInfoString(a1, "CreateUserMappingStmt:{");
        _outCreateUserMappingStmt(a1, a2);
        goto LABEL_218;
      case 0x13Eu:
        appendStringInfoString(a1, "AlterUserMappingStmt:{");
        _outAlterUserMappingStmt(a1, a2);
        goto LABEL_218;
      case 0x13Fu:
        appendStringInfoString(a1, "DropUserMappingStmt:{");
        _outDropUserMappingStmt(a1, a2);
        goto LABEL_218;
      case 0x140u:
        appendStringInfoString(a1, "AlterTableSpaceOptionsStmt:{");
        _outAlterTableSpaceOptionsStmt(a1, a2);
        goto LABEL_218;
      case 0x141u:
        appendStringInfoString(a1, "AlterTableMoveAllStmt:{");
        _outAlterTableMoveAllStmt(a1, a2);
        goto LABEL_218;
      case 0x142u:
        appendStringInfoString(a1, "SecLabelStmt:{");
        _outSecLabelStmt(a1, a2);
        goto LABEL_218;
      case 0x143u:
        appendStringInfoString(a1, "CreateForeignTableStmt:{");
        _outCreateForeignTableStmt(a1, a2);
        goto LABEL_218;
      case 0x144u:
        appendStringInfoString(a1, "ImportForeignSchemaStmt:{");
        _outImportForeignSchemaStmt(a1, a2);
        goto LABEL_218;
      case 0x145u:
        appendStringInfoString(a1, "CreateExtensionStmt:{");
        _outCreateExtensionStmt(a1, a2);
        goto LABEL_218;
      case 0x146u:
        appendStringInfoString(a1, "AlterExtensionStmt:{");
        _outAlterExtensionStmt(a1, a2);
        goto LABEL_218;
      case 0x147u:
        appendStringInfoString(a1, "AlterExtensionContentsStmt:{");
        _outAlterExtensionContentsStmt(a1, a2);
        goto LABEL_218;
      case 0x148u:
        appendStringInfoString(a1, "CreateEventTrigStmt:{");
        _outCreateEventTrigStmt(a1, a2);
        goto LABEL_218;
      case 0x149u:
        appendStringInfoString(a1, "AlterEventTrigStmt:{");
        _outAlterEventTrigStmt(a1, a2);
        goto LABEL_218;
      case 0x14Au:
        appendStringInfoString(a1, "RefreshMatViewStmt:{");
        _outRefreshMatViewStmt(a1, a2);
        goto LABEL_218;
      case 0x14Bu:
        appendStringInfoString(a1, "ReplicaIdentityStmt:{");
        _outReplicaIdentityStmt(a1, a2);
        goto LABEL_218;
      case 0x14Cu:
        appendStringInfoString(a1, "AlterSystemStmt:{");
        _outAlterSystemStmt(a1, a2);
        goto LABEL_218;
      case 0x14Du:
        appendStringInfoString(a1, "CreatePolicyStmt:{");
        _outCreatePolicyStmt(a1, a2);
        goto LABEL_218;
      case 0x14Eu:
        appendStringInfoString(a1, "AlterPolicyStmt:{");
        _outAlterPolicyStmt(a1, a2);
        goto LABEL_218;
      case 0x14Fu:
        appendStringInfoString(a1, "CreateTransformStmt:{");
        _outCreateTransformStmt(a1, a2);
        goto LABEL_218;
      case 0x150u:
        appendStringInfoString(a1, "CreateAmStmt:{");
        _outCreateAmStmt(a1, a2);
        goto LABEL_218;
      case 0x151u:
        appendStringInfoString(a1, "CreatePublicationStmt:{");
        _outCreatePublicationStmt(a1, a2);
        goto LABEL_218;
      case 0x152u:
        appendStringInfoString(a1, "AlterPublicationStmt:{");
        _outAlterPublicationStmt(a1, a2);
        goto LABEL_218;
      case 0x153u:
        appendStringInfoString(a1, "CreateSubscriptionStmt:{");
        _outCreateSubscriptionStmt(a1, a2);
        goto LABEL_218;
      case 0x154u:
        appendStringInfoString(a1, "AlterSubscriptionStmt:{");
        _outAlterSubscriptionStmt(a1, a2);
        goto LABEL_218;
      case 0x155u:
        appendStringInfoString(a1, "DropSubscriptionStmt:{");
        _outDropSubscriptionStmt(a1, a2);
        goto LABEL_218;
      case 0x156u:
        appendStringInfoString(a1, "CreateStatsStmt:{");
        _outCreateStatsStmt(a1, a2);
        goto LABEL_218;
      case 0x157u:
        appendStringInfoString(a1, "AlterCollationStmt:{");
        _outAlterCollationStmt(a1, a2);
        goto LABEL_218;
      case 0x158u:
        appendStringInfoString(a1, "CallStmt:{");
        _outCallStmt(a1, a2);
        goto LABEL_218;
      case 0x159u:
        appendStringInfoString(a1, "AlterStatsStmt:{");
        _outAlterStatsStmt(a1, a2);
        goto LABEL_218;
      case 0x15Au:
        appendStringInfoString(a1, "A_Expr:{");
        _outAExpr(a1, a2);
        goto LABEL_218;
      case 0x15Bu:
        appendStringInfoString(a1, "ColumnRef:{");
        _outColumnRef(a1, a2);
        goto LABEL_218;
      case 0x15Cu:
        appendStringInfoString(a1, "ParamRef:{");
        _outParamRef(a1, a2);
        goto LABEL_218;
      case 0x15Du:
        appendStringInfoString(a1, "A_Const:{");
        _outAConst(a1, a2);
        goto LABEL_218;
      case 0x15Eu:
        appendStringInfoString(a1, "FuncCall:{");
        _outFuncCall(a1, a2);
        goto LABEL_218;
      case 0x15Fu:
        v5 = "A_Star:{";
LABEL_217:
        appendStringInfoString(a1, v5);
        goto LABEL_218;
      case 0x160u:
        appendStringInfoString(a1, "A_Indices:{");
        _outAIndices(a1, a2);
        goto LABEL_218;
      case 0x161u:
        appendStringInfoString(a1, "A_Indirection:{");
        _outAIndirection(a1, a2);
        goto LABEL_218;
      case 0x162u:
        appendStringInfoString(a1, "A_ArrayExpr:{");
        _outAArrayExpr(a1, a2);
        goto LABEL_218;
      case 0x163u:
        appendStringInfoString(a1, "ResTarget:{");
        _outResTarget(a1, a2);
        goto LABEL_218;
      case 0x164u:
        appendStringInfoString(a1, "MultiAssignRef:{");
        _outMultiAssignRef(a1, a2);
        goto LABEL_218;
      case 0x165u:
        appendStringInfoString(a1, "TypeCast:{");
        _outTypeCast(a1, a2);
        goto LABEL_218;
      case 0x166u:
        appendStringInfoString(a1, "CollateClause:{");
        _outCollateClause(a1, a2);
        goto LABEL_218;
      case 0x167u:
        appendStringInfoString(a1, "SortBy:{");
        _outSortBy(a1, a2);
        goto LABEL_218;
      case 0x168u:
        appendStringInfoString(a1, "WindowDef:{");
        _outWindowDef(a1, a2);
        goto LABEL_218;
      case 0x169u:
        appendStringInfoString(a1, "RangeSubselect:{");
        _outRangeSubselect(a1, a2);
        goto LABEL_218;
      case 0x16Au:
        appendStringInfoString(a1, "RangeFunction:{");
        _outRangeFunction(a1, a2);
        goto LABEL_218;
      case 0x16Bu:
        appendStringInfoString(a1, "RangeTableSample:{");
        _outRangeTableSample(a1, a2);
        goto LABEL_218;
      case 0x16Cu:
        appendStringInfoString(a1, "RangeTableFunc:{");
        _outRangeTableFunc(a1, a2);
        goto LABEL_218;
      case 0x16Du:
        appendStringInfoString(a1, "RangeTableFuncCol:{");
        _outRangeTableFuncCol(a1, a2);
        goto LABEL_218;
      case 0x16Eu:
        appendStringInfoString(a1, "TypeName:{");
        _outTypeName(a1, a2);
        goto LABEL_218;
      case 0x16Fu:
        appendStringInfoString(a1, "ColumnDef:{");
        _outColumnDef(a1, a2);
        goto LABEL_218;
      case 0x170u:
        appendStringInfoString(a1, "IndexElem:{");
        _outIndexElem(a1, a2);
        goto LABEL_218;
      case 0x171u:
        appendStringInfoString(a1, "Constraint:{");
        _outConstraint(a1, a2);
        goto LABEL_218;
      case 0x172u:
        appendStringInfoString(a1, "DefElem:{");
        _outDefElem(a1, a2);
        goto LABEL_218;
      case 0x173u:
        appendStringInfoString(a1, "RangeTblEntry:{");
        _outRangeTblEntry(a1, a2);
        goto LABEL_218;
      case 0x174u:
        appendStringInfoString(a1, "RangeTblFunction:{");
        _outRangeTblFunction(a1, a2);
        goto LABEL_218;
      case 0x175u:
        appendStringInfoString(a1, "TableSampleClause:{");
        _outTableSampleClause(a1, a2);
        goto LABEL_218;
      case 0x176u:
        appendStringInfoString(a1, "WithCheckOption:{");
        _outWithCheckOption(a1, a2);
        goto LABEL_218;
      case 0x177u:
        appendStringInfoString(a1, "SortGroupClause:{");
        _outSortGroupClause(a1, a2);
        goto LABEL_218;
      case 0x178u:
        appendStringInfoString(a1, "GroupingSet:{");
        _outGroupingSet(a1, a2);
        goto LABEL_218;
      case 0x179u:
        appendStringInfoString(a1, "WindowClause:{");
        _outWindowClause(a1, a2);
        goto LABEL_218;
      case 0x17Au:
        appendStringInfoString(a1, "ObjectWithArgs:{");
        _outObjectWithArgs(a1, a2);
        goto LABEL_218;
      case 0x17Bu:
        appendStringInfoString(a1, "AccessPriv:{");
        _outAccessPriv(a1, a2);
        goto LABEL_218;
      case 0x17Cu:
        appendStringInfoString(a1, "CreateOpClassItem:{");
        _outCreateOpClassItem(a1, a2);
        goto LABEL_218;
      case 0x17Du:
        appendStringInfoString(a1, "TableLikeClause:{");
        _outTableLikeClause(a1, a2);
        goto LABEL_218;
      case 0x17Eu:
        appendStringInfoString(a1, "FunctionParameter:{");
        _outFunctionParameter(a1, a2);
        goto LABEL_218;
      case 0x17Fu:
        appendStringInfoString(a1, "LockingClause:{");
        _outLockingClause(a1, a2);
        goto LABEL_218;
      case 0x180u:
        appendStringInfoString(a1, "RowMarkClause:{");
        _outRowMarkClause(a1, a2);
        goto LABEL_218;
      case 0x181u:
        appendStringInfoString(a1, "XmlSerialize:{");
        _outXmlSerialize(a1, a2);
        goto LABEL_218;
      case 0x182u:
        appendStringInfoString(a1, "WithClause:{");
        _outWithClause(a1, a2);
        goto LABEL_218;
      case 0x183u:
        appendStringInfoString(a1, "InferClause:{");
        _outInferClause(a1, a2);
        goto LABEL_218;
      case 0x184u:
        appendStringInfoString(a1, "OnConflictClause:{");
        _outOnConflictClause(a1, a2);
        goto LABEL_218;
      case 0x185u:
        appendStringInfoString(a1, "CommonTableExpr:{");
        _outCommonTableExpr(a1, a2);
        goto LABEL_218;
      case 0x186u:
        appendStringInfoString(a1, "RoleSpec:{");
        _outRoleSpec(a1, a2);
        goto LABEL_218;
      case 0x187u:
        appendStringInfoString(a1, "TriggerTransition:{");
        _outTriggerTransition(a1, a2);
        goto LABEL_218;
      case 0x188u:
        appendStringInfoString(a1, "PartitionElem:{");
        _outPartitionElem(a1, a2);
        goto LABEL_218;
      case 0x189u:
        appendStringInfoString(a1, "PartitionSpec:{");
        _outPartitionSpec(a1, a2);
        goto LABEL_218;
      case 0x18Au:
        appendStringInfoString(a1, "PartitionBoundSpec:{");
        _outPartitionBoundSpec(a1, a2);
        goto LABEL_218;
      case 0x18Bu:
        appendStringInfoString(a1, "PartitionRangeDatum:{");
        _outPartitionRangeDatum(a1, a2);
        goto LABEL_218;
      case 0x18Cu:
        appendStringInfoString(a1, "PartitionCmd:{");
        _outPartitionCmd(a1, a2);
        goto LABEL_218;
      case 0x18Du:
        appendStringInfoString(a1, "VacuumRelation:{");
        _outVacuumRelation(a1, a2);
        goto LABEL_218;
      case 0x19Au:
        appendStringInfoString(a1, "InlineCodeBlock:{");
        _outInlineCodeBlock(a1, a2);
        goto LABEL_218;
      case 0x1A0u:
        appendStringInfoString(a1, "CallContext:{");
        if (*(a2 + 4) == 1)
        {
          appendStringInfo(a1, "atomic:%s,", "true");
        }

LABEL_218:
        v6 = a1[2];
        v7 = __OFSUB__(v6, 1);
        v8 = v6 - 1;
        if (v8 < 0 == v7)
        {
          v9 = *a1;
          if (*(*a1 + v8) == 44)
          {
            a1[2] = v8;
            *(v9 + v8) = 0;
          }
        }

        v10 = "}}";
        v11 = a1;

        break;
      default:
        if (errstart(19, 0))
        {
          errmsg_internal("could not dump unrecognized node type: %d", *a2);
          errfinish("src/pg_query_outfuncs_json.c", 252, "_outNode");
        }

        v10 = "}";
        v11 = a1;

        break;
    }

    return appendStringInfo(v11, v10);
  }

  else
  {

    return appendStringInfoString(a1, "null");
  }
}

unint64_t _outFloat(int *a1, uint64_t a2)
{
  appendStringInfo(a1, "str:");
  _outToken(a1, *(a2 + 8));

  return appendStringInfo(a1, ",");
}

unint64_t _outList(uint64_t a1, uint64_t a2)
{
  appendStringInfo(a1, "items:");
  appendStringInfoChar(a1, 91);
  if (*(a2 + 4) >= 1)
  {
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      v7 = *(v6 + 8 * v4);
      if (v7)
      {
        _outNode(a1, v7);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      v8 = *(a2 + 4);
      if (v6 + v5)
      {
        v9 = v6 + v5 >= (*(a2 + 16) + 8 * v8);
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        appendStringInfoString(a1, ",");
        v8 = *(a2 + 4);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v8);
  }

  appendStringInfoChar(a1, 93);

  return appendStringInfo(a1, ",");
}

unint64_t _outIntList(uint64_t a1, uint64_t a2)
{
  appendStringInfo(a1, "items:");
  appendStringInfoChar(a1, 91);
  if (*(a2 + 4) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(a2 + 16) + v4);
      v8 = *v6;
      v7 = (v6 + 2);
      appendStringInfo(a1, "%d", v8);
      v9 = *(a2 + 4);
      if (v7)
      {
        v10 = v7 >= *(a2 + 16) + 8 * v9;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        appendStringInfoString(a1, ",");
        v9 = *(a2 + 4);
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < v9);
  }

  appendStringInfoChar(a1, 93);

  return appendStringInfo(a1, ",");
}

unint64_t _outOidList(uint64_t a1, uint64_t a2)
{
  appendStringInfo(a1, "items:");
  appendStringInfoChar(a1, 91);
  if (*(a2 + 4) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(a2 + 16) + v4);
      v8 = *v6;
      v7 = (v6 + 2);
      appendStringInfo(a1, "%u", v8);
      v9 = *(a2 + 4);
      if (v7)
      {
        v10 = v7 >= *(a2 + 16) + 8 * v9;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        appendStringInfoString(a1, ",");
        v9 = *(a2 + 4);
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < v9);
  }

  appendStringInfoChar(a1, 93);

  return appendStringInfo(a1, ",");
}

int *_outAlias(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "aliasname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "colnames:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 16);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outRangeVar(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "catalogname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "schemaname:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "relname:");
    _outToken(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32) == 1)
  {
    result = appendStringInfo(v3, "inh:%s,", "true");
  }

  if (*(a2 + 33))
  {
    result = appendStringInfo(v3, "relpersistence:%c,", *(a2 + 33));
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "alias:{");
    _outAlias(v3, *(a2 + 40));
    v4 = v3[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        v3[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 48))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 48));
  }

  return result;
}

uint64_t _outTableFunc(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "ns_uris:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "ns_names:");
    appendStringInfoChar(a1, 91);
    v10 = *(a2 + 16);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(a1, v14);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(a1, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "docexpr:");
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "rowexpr:");
    _outNode(a1, *(a2 + 32));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "colnames:");
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 40);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "coltypes:");
    appendStringInfoChar(a1, 91);
    v22 = *(a2 + 48);
    if (v22 && *(v22 + 4) >= 1)
    {
      v23 = 0;
      v24 = 8;
      do
      {
        v25 = *(v22 + 16);
        v26 = *(v25 + 8 * v23);
        if (v26)
        {
          _outNode(a1, v26);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v25 + v24)
        {
          v27 = v25 + v24 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          appendStringInfoString(a1, ",");
        }

        ++v23;
        v24 += 8;
      }

      while (v23 < *(v22 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "coltypmods:");
    appendStringInfoChar(a1, 91);
    v28 = *(a2 + 56);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(a1, v32);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(a1, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "colcollations:");
    appendStringInfoChar(a1, 91);
    v34 = *(a2 + 64);
    if (v34 && *(v34 + 4) >= 1)
    {
      v35 = 0;
      v36 = 8;
      do
      {
        v37 = *(v34 + 16);
        v38 = *(v37 + 8 * v35);
        if (v38)
        {
          _outNode(a1, v38);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v37 + v36)
        {
          v39 = v37 + v36 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v39 = 1;
        }

        if (!v39)
        {
          appendStringInfoString(a1, ",");
        }

        ++v35;
        v36 += 8;
      }

      while (v35 < *(v34 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "colexprs:");
    appendStringInfoChar(a1, 91);
    v40 = *(a2 + 72);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(a1, v44);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(a1, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "coldefexprs:");
    appendStringInfoChar(a1, 91);
    v46 = *(a2 + 80);
    if (v46 && *(v46 + 4) >= 1)
    {
      v47 = 0;
      v48 = 8;
      do
      {
        v49 = *(v46 + 16);
        v50 = *(v49 + 8 * v47);
        if (v50)
        {
          _outNode(a1, v50);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v49 + v48)
        {
          v51 = v49 + v48 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v51 = 1;
        }

        if (!v51)
        {
          appendStringInfoString(a1, ",");
        }

        ++v47;
        v48 += 8;
      }

      while (v47 < *(v46 + 4));
    }

    appendStringInfo(a1, "],");
  }

  result = bms_is_empty(*(a2 + 88));
  if ((result & 1) == 0)
  {
    appendStringInfo(a1, "notnulls:[");
    member = bms_next_member(*(a2 + 88), 0);
    if ((member & 0x80000000) == 0)
    {
      v54 = member;
      do
      {
        appendStringInfo(a1, "%d,", v54);
        v54 = bms_next_member(*(a2 + 88), v54);
      }

      while ((v54 & 0x80000000) == 0);
    }

    v55 = *(a1 + 2);
    v56 = __OFSUB__(v55, 1);
    v57 = v55 - 1;
    if (v57 < 0 == v56)
    {
      v58 = *a1;
      if (*(*a1 + v57) == 44)
      {
        *(a1 + 2) = v57;
        *(v58 + v57) = 0;
      }
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 96))
  {
    result = appendStringInfo(a1, "ordinalitycol:%d,", *(a2 + 96));
  }

  if (*(a2 + 100))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 100));
  }

  return result;
}

uint64_t _outVar(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "varno:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "varattno:%d,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v3, "vartype:%u,", *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "vartypmod:%d,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    result = appendStringInfo(v3, "varcollid:%u,", *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v3, "varlevelsup:%u,", *(a2 + 24));
  }

  if (*(a2 + 28))
  {
    result = appendStringInfo(v3, "varnosyn:%u,", *(a2 + 28));
  }

  if (*(a2 + 32))
  {
    result = appendStringInfo(v3, "varattnosyn:%d,", *(a2 + 32));
  }

  if (*(a2 + 36))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 36));
  }

  return result;
}

uint64_t _outParam(uint64_t a1, unsigned int *a2)
{
  v4 = a2[1];
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6CD0)[v4];
  }

  result = appendStringInfo(a1, "paramkind:%s,", v5);
  if (a2[2])
  {
    result = appendStringInfo(a1, "paramid:%d,", a2[2]);
  }

  if (a2[3])
  {
    result = appendStringInfo(a1, "paramtype:%u,", a2[3]);
  }

  if (a2[4])
  {
    result = appendStringInfo(a1, "paramtypmod:%d,", a2[4]);
  }

  if (a2[5])
  {
    result = appendStringInfo(a1, "paramcollid:%u,", a2[5]);
  }

  if (a2[6])
  {
    return appendStringInfo(a1, "location:%d,", a2[6]);
  }

  return result;
}

uint64_t _outAggref(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "aggfnoid:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(a1, "aggtype:%u,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    appendStringInfo(a1, "aggcollid:%u,", *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "inputcollid:%u,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    appendStringInfo(a1, "aggtranstype:%u,", *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "aggargtypes:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 24);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "aggdirectargs:");
    appendStringInfoChar(a1, 91);
    v10 = *(a2 + 32);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(a1, v14);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(a1, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "args:");
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 40);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "aggorder:");
    appendStringInfoChar(a1, 91);
    v22 = *(a2 + 48);
    if (v22 && *(v22 + 4) >= 1)
    {
      v23 = 0;
      v24 = 8;
      do
      {
        v25 = *(v22 + 16);
        v26 = *(v25 + 8 * v23);
        if (v26)
        {
          _outNode(a1, v26);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v25 + v24)
        {
          v27 = v25 + v24 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          appendStringInfoString(a1, ",");
        }

        ++v23;
        v24 += 8;
      }

      while (v23 < *(v22 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "aggdistinct:");
    appendStringInfoChar(a1, 91);
    v28 = *(a2 + 56);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(a1, v32);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(a1, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "aggfilter:");
    _outNode(a1, *(a2 + 64));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 72) == 1)
  {
    appendStringInfo(a1, "aggstar:%s,", "true");
    if (*(a2 + 73) != 1)
    {
LABEL_85:
      v34 = *(a2 + 74);
      if (!*(a2 + 74))
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }
  }

  else if (*(a2 + 73) != 1)
  {
    goto LABEL_85;
  }

  appendStringInfo(a1, "aggvariadic:%s,", "true");
  v34 = *(a2 + 74);
  if (*(a2 + 74))
  {
LABEL_86:
    appendStringInfo(a1, "aggkind:%c,", v34);
  }

LABEL_87:
  if (*(a2 + 76))
  {
    appendStringInfo(a1, "agglevelsup:%u,", *(a2 + 76));
  }

  v35 = *(a2 + 80);
  if (v35)
  {
    if (v35 == 9)
    {
      v36 = "AGGSPLIT_FINAL_DESERIAL";
    }

    else if (v35 == 6)
    {
      v36 = "AGGSPLIT_INITIAL_SERIAL";
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = "AGGSPLIT_SIMPLE";
  }

  result = appendStringInfo(a1, "aggsplit:%s,", v36);
  if (*(a2 + 84))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 84));
  }

  return result;
}

uint64_t _outGroupingFunc(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "args:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "refs:");
    appendStringInfoChar(v3, 91);
    v10 = *(a2 + 16);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(v3, v14);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(v3, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "cols:");
    appendStringInfoChar(v3, 91);
    v16 = *(a2 + 24);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v3, v20);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v3, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    result = appendStringInfo(v3, "agglevelsup:%u,", *(a2 + 32));
  }

  if (*(a2 + 36))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 36));
  }

  return result;
}

uint64_t _outWindowFunc(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "winfnoid:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "wintype:%u,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v3, "wincollid:%u,", *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "inputcollid:%u,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "args:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 24);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "aggfilter:");
    _outNode(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 40))
  {
    result = appendStringInfo(v3, "winref:%u,", *(a2 + 40));
  }

  if (*(a2 + 44) == 1)
  {
    result = appendStringInfo(v3, "winstar:%s,", "true");
    if (*(a2 + 45) != 1)
    {
LABEL_29:
      v10 = *(a2 + 48);
      if (!v10)
      {
        return result;
      }

      return appendStringInfo(v3, "location:%d,", v10);
    }
  }

  else if (*(a2 + 45) != 1)
  {
    goto LABEL_29;
  }

  result = appendStringInfo(v3, "winagg:%s,", "true");
  v10 = *(a2 + 48);
  if (!v10)
  {
    return result;
  }

  return appendStringInfo(v3, "location:%d,", v10);
}

uint64_t _outSubscriptingRef(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "refcontainertype:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "refelemtype:%u,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v3, "reftypmod:%d,", *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "refcollid:%u,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "refupperindexpr:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 24);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "reflowerindexpr:");
    appendStringInfoChar(v3, 91);
    v10 = *(a2 + 32);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(v3, v14);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(v3, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "refexpr:");
    _outNode(v3, *(a2 + 40));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v3, "refassgnexpr:");
    _outNode(v3, *(a2 + 48));

    return appendStringInfo(v3, ",");
  }

  return result;
}

uint64_t _outFuncExpr(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "funcid:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(a1, "funcresulttype:%u,", *(a2 + 8));
  }

  if (*(a2 + 12) != 1)
  {
    if (*(a2 + 13) != 1)
    {
      goto LABEL_7;
    }

LABEL_10:
    appendStringInfo(a1, "funcvariadic:%s,", "true");
    v4 = *(a2 + 16);
    if (v4 <= 2)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  appendStringInfo(a1, "funcretset:%s,", "true");
  if (*(a2 + 13) == 1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v4 = *(a2 + 16);
  if (v4 <= 2)
  {
LABEL_8:
    v5 = (&off_2797B6E60)[v4];
    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  result = appendStringInfo(a1, "funcformat:%s,", v5);
  if (*(a2 + 20))
  {
    result = appendStringInfo(a1, "funccollid:%u,", *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(a1, "inputcollid:%u,", *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "args:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 32);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = *(v10 + 8 * v8);
        if (v11)
        {
          _outNode(a1, v11);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ",");
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < *(v7 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 40));
  }

  return result;
}

int *_outNamedArgExpr(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "name:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v3, "argnumber:%d,", *(a2 + 24));
  }

  if (*(a2 + 28))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 28));
  }

  return result;
}

uint64_t _outOpExpr(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "opno:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "opfuncid:%u,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v3, "opresulttype:%u,", *(a2 + 12));
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(v3, "opretset:%s,", "true");
  }

  if (*(a2 + 20))
  {
    result = appendStringInfo(v3, "opcollid:%u,", *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v3, "inputcollid:%u,", *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "args:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 32);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 40));
  }

  return result;
}

uint64_t _outScalarArrayOpExpr(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "opno:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "opfuncid:%u,", *(a2 + 8));
  }

  if (*(a2 + 12) == 1)
  {
    result = appendStringInfo(v3, "useOr:%s,", "true");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "inputcollid:%u,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "args:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 24);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 32));
  }

  return result;
}

uint64_t _outBoolExpr(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6CF0)[v4];
  }

  result = appendStringInfo(a1, "BOOLop:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "args:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 8);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = *(v10 + 8 * v8);
        if (v11)
        {
          _outNode(a1, v11);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ",");
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < *(v7 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 16));
  }

  return result;
}

uint64_t _outSubLink(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6D08)[v4];
  }

  result = appendStringInfo(a1, "subLinkType:%s,", v5);
  if (*(a2 + 8))
  {
    result = appendStringInfo(a1, "subLinkId:%d,", *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "testexpr:");
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "operName:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 24);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = *(v10 + 8 * v8);
        if (v11)
        {
          _outNode(a1, v11);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ",");
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < *(v7 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "subselect:");
    _outNode(a1, *(a2 + 32));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 40));
  }

  return result;
}

unint64_t _outSubPlan(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6D08)[v4];
  }

  appendStringInfo(a1, "subLinkType:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "testexpr:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "paramIds:");
    appendStringInfoChar(a1, 91);
    v6 = *(a2 + 16);
    if (v6 && *(v6 + 4) >= 1)
    {
      v7 = 0;
      v8 = 8;
      do
      {
        v9 = *(v6 + 16);
        v10 = *(v9 + 8 * v7);
        if (v10)
        {
          _outNode(a1, v10);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v9 + v8)
        {
          v11 = v9 + v8 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          appendStringInfoString(a1, ",");
        }

        ++v7;
        v8 += 8;
      }

      while (v7 < *(v6 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "plan_id:%d,", *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "plan_name:");
    _outToken(a1, *(a2 + 32));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "firstColType:%u,", *(a2 + 40));
  }

  if (*(a2 + 44))
  {
    appendStringInfo(a1, "firstColTypmod:%d,", *(a2 + 44));
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "firstColCollation:%u,", *(a2 + 48));
  }

  if (*(a2 + 52) == 1)
  {
    appendStringInfo(a1, "useHashTable:%s,", "true");
    if (*(a2 + 53) != 1)
    {
LABEL_32:
      if (*(a2 + 54) != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }
  }

  else if (*(a2 + 53) != 1)
  {
    goto LABEL_32;
  }

  appendStringInfo(a1, "unknownEqFalse:%s,", "true");
  if (*(a2 + 54) != 1)
  {
LABEL_33:
    if (!*(a2 + 56))
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

LABEL_39:
  appendStringInfo(a1, "parallel_safe:%s,", "true");
  if (!*(a2 + 56))
  {
LABEL_34:
    if (!*(a2 + 64))
    {
      goto LABEL_35;
    }

    goto LABEL_53;
  }

LABEL_40:
  appendStringInfo(a1, "setParam:");
  appendStringInfoChar(a1, 91);
  v12 = *(a2 + 56);
  if (v12 && *(v12 + 4) >= 1)
  {
    v13 = 0;
    v14 = 8;
    do
    {
      v15 = *(v12 + 16);
      v16 = *(v15 + 8 * v13);
      if (v16)
      {
        _outNode(a1, v16);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      if (v15 + v14)
      {
        v17 = v15 + v14 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        appendStringInfoString(a1, ",");
      }

      ++v13;
      v14 += 8;
    }

    while (v13 < *(v12 + 4));
  }

  appendStringInfo(a1, "],");
  if (!*(a2 + 64))
  {
LABEL_35:
    if (!*(a2 + 72))
    {
      goto LABEL_79;
    }

    goto LABEL_66;
  }

LABEL_53:
  appendStringInfo(a1, "parParam:");
  appendStringInfoChar(a1, 91);
  v18 = *(a2 + 64);
  if (v18 && *(v18 + 4) >= 1)
  {
    v19 = 0;
    v20 = 8;
    do
    {
      v21 = *(v18 + 16);
      v22 = *(v21 + 8 * v19);
      if (v22)
      {
        _outNode(a1, v22);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      if (v21 + v20)
      {
        v23 = v21 + v20 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        appendStringInfoString(a1, ",");
      }

      ++v19;
      v20 += 8;
    }

    while (v19 < *(v18 + 4));
  }

  appendStringInfo(a1, "],");
  if (*(a2 + 72))
  {
LABEL_66:
    appendStringInfo(a1, "args:");
    appendStringInfoChar(a1, 91);
    v24 = *(a2 + 72);
    if (v24 && *(v24 + 4) >= 1)
    {
      v25 = 0;
      v26 = 8;
      do
      {
        v27 = *(v24 + 16);
        v28 = *(v27 + 8 * v25);
        if (v28)
        {
          _outNode(a1, v28);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v27 + v26)
        {
          v29 = v27 + v26 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          appendStringInfoString(a1, ",");
        }

        ++v25;
        v26 += 8;
      }

      while (v25 < *(v24 + 4));
    }

    appendStringInfo(a1, "],");
  }

LABEL_79:
  appendStringInfo(a1, "startup_cost:%f,", *(a2 + 80));
  return appendStringInfo(a1, "per_call_cost:%f,", *(a2 + 88));
}

unint64_t _outAlternativeSubPlan(unint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    appendStringInfo(result, "subplans:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outFieldSelect(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "fieldnum:%d,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    result = appendStringInfo(v3, "resulttype:%u,", *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v3, "resulttypmod:%d,", *(a2 + 24));
  }

  if (*(a2 + 28))
  {
    return appendStringInfo(v3, "resultcollid:%u,", *(a2 + 28));
  }

  return result;
}

uint64_t _outFieldStore(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "newvals:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 16);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "fieldnums:");
    appendStringInfoChar(v3, 91);
    v10 = *(a2 + 24);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(v3, v14);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(v3, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(v3, "resulttype:%u,", *(a2 + 32));
  }

  return result;
}

uint64_t _outRelabelType(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "resulttype:%u,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    appendStringInfo(a1, "resulttypmod:%d,", *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "resultcollid:%u,", *(a2 + 24));
  }

  v4 = *(a2 + 28);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6E60)[v4];
  }

  result = appendStringInfo(a1, "relabelformat:%s,", v5);
  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 32));
  }

  return result;
}

uint64_t _outCoerceViaIO(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "resulttype:%u,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    appendStringInfo(a1, "resultcollid:%u,", *(a2 + 20));
  }

  v4 = *(a2 + 24);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6E60)[v4];
  }

  result = appendStringInfo(a1, "coerceformat:%s,", v5);
  if (*(a2 + 28))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 28));
  }

  return result;
}

uint64_t _outArrayCoerceExpr(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "elemexpr:");
    _outNode(a1, *(a2 + 16));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "resulttype:%u,", *(a2 + 24));
  }

  if (*(a2 + 28))
  {
    appendStringInfo(a1, "resulttypmod:%d,", *(a2 + 28));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "resultcollid:%u,", *(a2 + 32));
  }

  v4 = *(a2 + 36);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6E60)[v4];
  }

  result = appendStringInfo(a1, "coerceformat:%s,", v5);
  if (*(a2 + 40))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 40));
  }

  return result;
}

uint64_t _outConvertRowtypeExpr(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "resulttype:%u,", *(a2 + 16));
  }

  v4 = *(a2 + 20);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6E60)[v4];
  }

  result = appendStringInfo(a1, "convertformat:%s,", v5);
  if (*(a2 + 24))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 24));
  }

  return result;
}

uint64_t _outCollateExpr(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "collOid:%u,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 20));
  }

  return result;
}

uint64_t _outCaseExpr(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "casetype:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "casecollid:%u,", *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "arg:");
    _outNode(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "args:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 24);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "defresult:");
    _outNode(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 40));
  }

  return result;
}

uint64_t _outCaseWhen(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "expr:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "result:");
    _outNode(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 24));
  }

  return result;
}

uint64_t _outCaseTestExpr(uint64_t result, _DWORD *a2)
{
  v3 = result;
  if (a2[1])
  {
    result = appendStringInfo(result, "typeId:%u,", a2[1]);
  }

  if (a2[2])
  {
    result = appendStringInfo(v3, "typeMod:%d,", a2[2]);
  }

  if (a2[3])
  {
    return appendStringInfo(v3, "collation:%u,", a2[3]);
  }

  return result;
}

uint64_t _outArrayExpr(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "array_typeid:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "array_collid:%u,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v3, "element_typeid:%u,", *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "elements:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 16);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v3, "multidims:%s,", "true");
  }

  if (*(a2 + 28))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 28));
  }

  return result;
}

uint64_t _outRowExpr(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "args:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "row_typeid:%u,", *(a2 + 16));
  }

  v10 = *(a2 + 20);
  if (v10 > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = (&off_2797B6E60)[v10];
  }

  result = appendStringInfo(a1, "row_format:%s,", v11);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "colnames:");
    appendStringInfoChar(a1, 91);
    v13 = *(a2 + 24);
    if (v13 && *(v13 + 4) >= 1)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = *(v13 + 16);
        v17 = *(v16 + 8 * v14);
        if (v17)
        {
          _outNode(a1, v17);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v16 + v15)
        {
          v18 = v16 + v15 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          appendStringInfoString(a1, ",");
        }

        ++v14;
        v15 += 8;
      }

      while (v14 < *(v13 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 32));
  }

  return result;
}

uint64_t _outRowCompareExpr(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4) - 1;
  if (v4 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6D48)[v4];
  }

  result = appendStringInfo(a1, "rctype:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "opnos:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 8);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = *(v10 + 8 * v8);
        if (v11)
        {
          _outNode(a1, v11);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ",");
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < *(v7 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "opfamilies:");
    appendStringInfoChar(a1, 91);
    v13 = *(a2 + 16);
    if (v13 && *(v13 + 4) >= 1)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = *(v13 + 16);
        v17 = *(v16 + 8 * v14);
        if (v17)
        {
          _outNode(a1, v17);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v16 + v15)
        {
          v18 = v16 + v15 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          appendStringInfoString(a1, ",");
        }

        ++v14;
        v15 += 8;
      }

      while (v14 < *(v13 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "inputcollids:");
    appendStringInfoChar(a1, 91);
    v19 = *(a2 + 24);
    if (v19 && *(v19 + 4) >= 1)
    {
      v20 = 0;
      v21 = 8;
      do
      {
        v22 = *(v19 + 16);
        v23 = *(v22 + 8 * v20);
        if (v23)
        {
          _outNode(a1, v23);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v22 + v21)
        {
          v24 = v22 + v21 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          appendStringInfoString(a1, ",");
        }

        ++v20;
        v21 += 8;
      }

      while (v20 < *(v19 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "largs:");
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 32);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "rargs:");
    appendStringInfoChar(a1, 91);
    v31 = *(a2 + 40);
    if (v31 && *(v31 + 4) >= 1)
    {
      v32 = 0;
      v33 = 8;
      do
      {
        v34 = *(v31 + 16);
        v35 = *(v34 + 8 * v32);
        if (v35)
        {
          _outNode(a1, v35);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v34 + v33)
        {
          v36 = v34 + v33 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v36 = 1;
        }

        if (!v36)
        {
          appendStringInfoString(a1, ",");
        }

        ++v32;
        v33 += 8;
      }

      while (v32 < *(v31 + 4));
    }

    return appendStringInfo(a1, "],");
  }

  return result;
}

uint64_t _outCoalesceExpr(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "coalescetype:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "coalescecollid:%u,", *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "args:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 16);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 24));
  }

  return result;
}

uint64_t _outMinMaxExpr(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "minmaxtype:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(a1, "minmaxcollid:%u,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    appendStringInfo(a1, "inputcollid:%u,", *(a2 + 12));
  }

  v4 = *(a2 + 16);
  v5 = "IS_LEAST";
  if (v4 != 1)
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = "IS_GREATEST";
  }

  result = appendStringInfo(a1, "op:%s,", v6);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "args:");
    appendStringInfoChar(a1, 91);
    v8 = *(a2 + 24);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(a1, v12);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(a1, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 32));
  }

  return result;
}

uint64_t _outSQLValueFunction(uint64_t a1, unsigned int *a2)
{
  v4 = a2[1];
  if (v4 > 0xE)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6D78)[v4];
  }

  result = appendStringInfo(a1, "op:%s,", v5);
  if (a2[2])
  {
    result = appendStringInfo(a1, "type:%u,", a2[2]);
  }

  if (a2[3])
  {
    result = appendStringInfo(a1, "typmod:%d,", a2[3]);
  }

  if (a2[4])
  {
    return appendStringInfo(a1, "location:%d,", a2[4]);
  }

  return result;
}

uint64_t _outXmlExpr(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6DF0)[v4];
  }

  appendStringInfo(a1, "op:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "named_args:");
    appendStringInfoChar(a1, 91);
    v6 = *(a2 + 16);
    if (v6 && *(v6 + 4) >= 1)
    {
      v7 = 0;
      v8 = 8;
      do
      {
        v9 = *(v6 + 16);
        v10 = *(v9 + 8 * v7);
        if (v10)
        {
          _outNode(a1, v10);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v9 + v8)
        {
          v11 = v9 + v8 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          appendStringInfoString(a1, ",");
        }

        ++v7;
        v8 += 8;
      }

      while (v7 < *(v6 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "arg_names:");
    appendStringInfoChar(a1, 91);
    v12 = *(a2 + 24);
    if (v12 && *(v12 + 4) >= 1)
    {
      v13 = 0;
      v14 = 8;
      do
      {
        v15 = *(v12 + 16);
        v16 = *(v15 + 8 * v13);
        if (v16)
        {
          _outNode(a1, v16);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v15 + v14)
        {
          v17 = v15 + v14 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          appendStringInfoString(a1, ",");
        }

        ++v13;
        v14 += 8;
      }

      while (v13 < *(v12 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "args:");
    appendStringInfoChar(a1, 91);
    v18 = *(a2 + 32);
    if (v18 && *(v18 + 4) >= 1)
    {
      v19 = 0;
      v20 = 8;
      do
      {
        v21 = *(v18 + 16);
        v22 = *(v21 + 8 * v19);
        if (v22)
        {
          _outNode(a1, v22);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v21 + v20)
        {
          v23 = v21 + v20 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          appendStringInfoString(a1, ",");
        }

        ++v19;
        v20 += 8;
      }

      while (v19 < *(v18 + 4));
    }

    appendStringInfo(a1, "],");
  }

  v24 = *(a2 + 40);
  v25 = "XMLOPTION_CONTENT";
  if (v24 != 1)
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = "XMLOPTION_DOCUMENT";
  }

  result = appendStringInfo(a1, "xmloption:%s,", v26);
  if (*(a2 + 44))
  {
    result = appendStringInfo(a1, "type:%u,", *(a2 + 44));
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(a1, "typmod:%d,", *(a2 + 48));
  }

  if (*(a2 + 52))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 52));
  }

  return result;
}

uint64_t _outNullTest(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  v4 = *(a2 + 16);
  v5 = "IS_NOT_NULL";
  if (v4 != 1)
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = "IS_NULL";
  }

  result = appendStringInfo(a1, "nulltesttype:%s,", v6);
  if (*(a2 + 20) == 1)
  {
    result = appendStringInfo(a1, "argisrow:%s,", "true");
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 24));
  }

  return result;
}

uint64_t _outBooleanTest(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  v4 = *(a2 + 16);
  if (v4 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6E30)[v4];
  }

  result = appendStringInfo(a1, "BOOLtesttype:%s,", v5);
  if (*(a2 + 20))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 20));
  }

  return result;
}

uint64_t _outCoerceToDomain(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "resulttype:%u,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    appendStringInfo(a1, "resulttypmod:%d,", *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "resultcollid:%u,", *(a2 + 24));
  }

  v4 = *(a2 + 28);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6E60)[v4];
  }

  result = appendStringInfo(a1, "coercionformat:%s,", v5);
  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 32));
  }

  return result;
}

uint64_t _outCoerceToDomainValue(uint64_t result, _DWORD *a2)
{
  v3 = result;
  if (a2[1])
  {
    result = appendStringInfo(result, "typeId:%u,", a2[1]);
  }

  if (a2[2])
  {
    result = appendStringInfo(v3, "typeMod:%d,", a2[2]);
  }

  if (a2[3])
  {
    result = appendStringInfo(v3, "collation:%u,", a2[3]);
  }

  if (a2[4])
  {
    return appendStringInfo(v3, "location:%d,", a2[4]);
  }

  return result;
}

int *_outCurrentOfExpr(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "cvarno:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v3, "cursor_name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(v3, "cursor_param:%d,", *(a2 + 16));
  }

  return result;
}

uint64_t _outNextValueExpr(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "seqid:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    return appendStringInfo(v3, "typeId:%u,", *(a2 + 8));
  }

  return result;
}

uint64_t _outInferenceElem(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "expr:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "infercollid:%u,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v3, "inferopclass:%u,", *(a2 + 20));
  }

  return result;
}

int *_outTargetEntry(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "expr:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "resno:%d,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "resname:");
    _outToken(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    result = appendStringInfo(v3, "ressortgroupref:%u,", *(a2 + 32));
  }

  if (*(a2 + 36))
  {
    result = appendStringInfo(v3, "resorigtbl:%u,", *(a2 + 36));
  }

  if (*(a2 + 40))
  {
    result = appendStringInfo(v3, "resorigcol:%d,", *(a2 + 40));
  }

  if (*(a2 + 42) == 1)
  {
    return appendStringInfo(v3, "resjunk:%s,", "true");
  }

  return result;
}

uint64_t _outJoinExpr(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B7630)[v4];
  }

  result = appendStringInfo(a1, "jointype:%s,", v5);
  if (*(a2 + 8) == 1)
  {
    result = appendStringInfo(a1, "isNatural:%s,", "true");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "larg:");
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "rarg:");
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "usingClause:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 32);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = *(v10 + 8 * v8);
        if (v11)
        {
          _outNode(a1, v11);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ",");
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < *(v7 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "quals:");
    _outNode(a1, *(a2 + 40));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "alias:{");
    _outAlias(a1, *(a2 + 48));
    v13 = a1[2];
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (v15 < 0 == v14)
    {
      v16 = *a1;
      if (*(*a1 + v15) == 44)
      {
        a1[2] = v15;
        *(v16 + v15) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 56))
  {
    return appendStringInfo(a1, "rtindex:%d,", *(a2 + 56));
  }

  return result;
}

uint64_t _outFromExpr(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "fromlist:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "quals:");
    _outNode(v3, *(a2 + 16));

    return appendStringInfo(v3, ",");
  }

  return result;
}

uint64_t _outOnConflictExpr(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B76F8)[v4];
  }

  result = appendStringInfo(a1, "action:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arbiterElems:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 8);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = *(v10 + 8 * v8);
        if (v11)
        {
          _outNode(a1, v11);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ",");
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < *(v7 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "arbiterWhere:");
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(a1, "constraint:%u,", *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "onConflictSet:");
    appendStringInfoChar(a1, 91);
    v13 = *(a2 + 32);
    if (v13 && *(v13 + 4) >= 1)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = *(v13 + 16);
        v17 = *(v16 + 8 * v14);
        if (v17)
        {
          _outNode(a1, v17);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v16 + v15)
        {
          v18 = v16 + v15 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          appendStringInfoString(a1, ",");
        }

        ++v14;
        v15 += 8;
      }

      while (v14 < *(v13 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "onConflictWhere:");
    _outNode(a1, *(a2 + 40));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(a1, "exclRelIndex:%d,", *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "exclRelTlist:");
    appendStringInfoChar(a1, 91);
    v19 = *(a2 + 56);
    if (v19 && *(v19 + 4) >= 1)
    {
      v20 = 0;
      v21 = 8;
      do
      {
        v22 = *(v19 + 16);
        v23 = *(v22 + 8 * v20);
        if (v23)
        {
          _outNode(a1, v23);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v22 + v21)
        {
          v24 = v22 + v21 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          appendStringInfoString(a1, ",");
        }

        ++v20;
        v21 += 8;
      }

      while (v20 < *(v19 + 4));
    }

    return appendStringInfo(a1, "],");
  }

  return result;
}

uint64_t _outIntoClause(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "rel:{");
    _outRangeVar(a1, *(a2 + 8));
    v4 = a1[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *a1;
      if (*(*a1 + v6) == 44)
      {
        a1[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "colNames:");
    appendStringInfoChar(a1, 91);
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(a1, v12);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(a1, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "accessMethod:");
    _outToken(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "options:");
    appendStringInfoChar(a1, 91);
    v14 = *(a2 + 32);
    if (v14 && *(v14 + 4) >= 1)
    {
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = *(v14 + 16);
        v18 = *(v17 + 8 * v15);
        if (v18)
        {
          _outNode(a1, v18);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v17 + v16)
        {
          v19 = v17 + v16 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          appendStringInfoString(a1, ",");
        }

        ++v15;
        v16 += 8;
      }

      while (v15 < *(v14 + 4));
    }

    appendStringInfo(a1, "],");
  }

  v20 = *(a2 + 40);
  if (v20 > 3)
  {
    v21 = 0;
  }

  else
  {
    v21 = (&off_2797B7120)[v20];
  }

  result = appendStringInfo(a1, "onCommit:%s,", v21);
  if (*(a2 + 48))
  {
    appendStringInfo(a1, "tableSpaceName:");
    _outToken(a1, *(a2 + 48));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "viewQuery:");
    _outNode(a1, *(a2 + 56));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 64) == 1)
  {
    return appendStringInfo(a1, "skipData:%s,", "true");
  }

  return result;
}

uint64_t _outQuery(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B7160)[v4];
  }

  appendStringInfo(a1, "commandType:%s,", v5);
  v6 = *(a2 + 8);
  if (v6 > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&off_2797B6E78)[v6];
  }

  appendStringInfo(a1, "querySource:%s,", v7);
  if (*(a2 + 24) == 1)
  {
    appendStringInfo(a1, "canSetTag:%s,", "true");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "utilityStmt:");
    _outNode(a1, *(a2 + 32));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "resultRelation:%d,", *(a2 + 40));
  }

  if (*(a2 + 44) == 1)
  {
    appendStringInfo(a1, "hasAggs:%s,", "true");
    if (*(a2 + 45) != 1)
    {
LABEL_15:
      if (*(a2 + 46) != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  else if (*(a2 + 45) != 1)
  {
    goto LABEL_15;
  }

  appendStringInfo(a1, "hasWindowFuncs:%s,", "true");
  if (*(a2 + 46) != 1)
  {
LABEL_16:
    if (*(a2 + 47) != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  appendStringInfo(a1, "hasTargetSRFs:%s,", "true");
  if (*(a2 + 47) != 1)
  {
LABEL_17:
    if (*(a2 + 48) != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  appendStringInfo(a1, "hasSubLinks:%s,", "true");
  if (*(a2 + 48) != 1)
  {
LABEL_18:
    if (*(a2 + 49) != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  appendStringInfo(a1, "hasDistinctOn:%s,", "true");
  if (*(a2 + 49) != 1)
  {
LABEL_19:
    if (*(a2 + 50) != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  appendStringInfo(a1, "hasRecursive:%s,", "true");
  if (*(a2 + 50) != 1)
  {
LABEL_20:
    if (*(a2 + 51) != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  appendStringInfo(a1, "hasModifyingCTE:%s,", "true");
  if (*(a2 + 51) != 1)
  {
LABEL_21:
    if (*(a2 + 52) != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  appendStringInfo(a1, "hasForUpdate:%s,", "true");
  if (*(a2 + 52) != 1)
  {
LABEL_22:
    if (!*(a2 + 56))
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  appendStringInfo(a1, "hasRowSecurity:%s,", "true");
  if (!*(a2 + 56))
  {
LABEL_23:
    if (!*(a2 + 64))
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_37:
  appendStringInfo(a1, "cteList:");
  appendStringInfoChar(a1, 91);
  v10 = *(a2 + 56);
  if (v10 && *(v10 + 4) >= 1)
  {
    v11 = 0;
    v12 = 8;
    do
    {
      v13 = *(v10 + 16);
      v14 = *(v13 + 8 * v11);
      if (v14)
      {
        _outNode(a1, v14);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      if (v13 + v12)
      {
        v15 = v13 + v12 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        appendStringInfoString(a1, ",");
      }

      ++v11;
      v12 += 8;
    }

    while (v11 < *(v10 + 4));
  }

  appendStringInfo(a1, "],");
  if (!*(a2 + 64))
  {
LABEL_24:
    if (!*(a2 + 72))
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_50:
  appendStringInfo(a1, "rtable:");
  appendStringInfoChar(a1, 91);
  v16 = *(a2 + 64);
  if (v16 && *(v16 + 4) >= 1)
  {
    v17 = 0;
    v18 = 8;
    do
    {
      v19 = *(v16 + 16);
      v20 = *(v19 + 8 * v17);
      if (v20)
      {
        _outNode(a1, v20);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      if (v19 + v18)
      {
        v21 = v19 + v18 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        appendStringInfoString(a1, ",");
      }

      ++v17;
      v18 += 8;
    }

    while (v17 < *(v16 + 4));
  }

  appendStringInfo(a1, "],");
  if (!*(a2 + 72))
  {
LABEL_25:
    if (!*(a2 + 80))
    {
      goto LABEL_26;
    }

LABEL_67:
    appendStringInfo(a1, "targetList:");
    appendStringInfoChar(a1, 91);
    v26 = *(a2 + 80);
    if (v26 && *(v26 + 4) >= 1)
    {
      v27 = 0;
      v28 = 8;
      do
      {
        v29 = *(v26 + 16);
        v30 = *(v29 + 8 * v27);
        if (v30)
        {
          _outNode(a1, v30);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v29 + v28)
        {
          v31 = v29 + v28 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          appendStringInfoString(a1, ",");
        }

        ++v27;
        v28 += 8;
      }

      while (v27 < *(v26 + 4));
    }

    appendStringInfo(a1, "],");
    v8 = *(a2 + 88);
    if (v8 <= 2)
    {
      goto LABEL_27;
    }

    goto LABEL_80;
  }

LABEL_63:
  appendStringInfo(a1, "jointree:{");
  _outFromExpr(a1, *(a2 + 72));
  v22 = *(a1 + 2);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v24 < 0 == v23)
  {
    v25 = *a1;
    if (*(*a1 + v24) == 44)
    {
      *(a1 + 2) = v24;
      *(v25 + v24) = 0;
    }
  }

  appendStringInfo(a1, "},");
  if (*(a2 + 80))
  {
    goto LABEL_67;
  }

LABEL_26:
  v8 = *(a2 + 88);
  if (v8 <= 2)
  {
LABEL_27:
    v9 = (&off_2797B6EA0)[v8];
    goto LABEL_81;
  }

LABEL_80:
  v9 = 0;
LABEL_81:
  appendStringInfo(a1, "override:%s,", v9);
  if (*(a2 + 96))
  {
    appendStringInfo(a1, "onConflict:{");
    _outOnConflictExpr(a1, *(a2 + 96));
    v32 = *(a1 + 2);
    v23 = __OFSUB__(v32, 1);
    v33 = v32 - 1;
    if (v33 < 0 == v23)
    {
      v34 = *a1;
      if (*(*a1 + v33) == 44)
      {
        *(a1 + 2) = v33;
        *(v34 + v33) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 104))
  {
    appendStringInfo(a1, "returningList:");
    appendStringInfoChar(a1, 91);
    v35 = *(a2 + 104);
    if (v35 && *(v35 + 4) >= 1)
    {
      v36 = 0;
      v37 = 8;
      do
      {
        v38 = *(v35 + 16);
        v39 = *(v38 + 8 * v36);
        if (v39)
        {
          _outNode(a1, v39);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v38 + v37)
        {
          v40 = v38 + v37 >= (*(*(a2 + 104) + 16) + 8 * *(*(a2 + 104) + 4));
        }

        else
        {
          v40 = 1;
        }

        if (!v40)
        {
          appendStringInfoString(a1, ",");
        }

        ++v36;
        v37 += 8;
      }

      while (v36 < *(v35 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 112))
  {
    appendStringInfo(a1, "groupClause:");
    appendStringInfoChar(a1, 91);
    v41 = *(a2 + 112);
    if (v41 && *(v41 + 4) >= 1)
    {
      v42 = 0;
      v43 = 8;
      do
      {
        v44 = *(v41 + 16);
        v45 = *(v44 + 8 * v42);
        if (v45)
        {
          _outNode(a1, v45);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v44 + v43)
        {
          v46 = v44 + v43 >= (*(*(a2 + 112) + 16) + 8 * *(*(a2 + 112) + 4));
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          appendStringInfoString(a1, ",");
        }

        ++v42;
        v43 += 8;
      }

      while (v42 < *(v41 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 120))
  {
    appendStringInfo(a1, "groupingSets:");
    appendStringInfoChar(a1, 91);
    v47 = *(a2 + 120);
    if (v47 && *(v47 + 4) >= 1)
    {
      v48 = 0;
      v49 = 8;
      do
      {
        v50 = *(v47 + 16);
        v51 = *(v50 + 8 * v48);
        if (v51)
        {
          _outNode(a1, v51);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v50 + v49)
        {
          v52 = v50 + v49 >= (*(*(a2 + 120) + 16) + 8 * *(*(a2 + 120) + 4));
        }

        else
        {
          v52 = 1;
        }

        if (!v52)
        {
          appendStringInfoString(a1, ",");
        }

        ++v48;
        v49 += 8;
      }

      while (v48 < *(v47 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 128))
  {
    appendStringInfo(a1, "havingQual:");
    _outNode(a1, *(a2 + 128));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 136))
  {
    appendStringInfo(a1, "windowClause:");
    appendStringInfoChar(a1, 91);
    v53 = *(a2 + 136);
    if (v53 && *(v53 + 4) >= 1)
    {
      v54 = 0;
      v55 = 8;
      do
      {
        v56 = *(v53 + 16);
        v57 = *(v56 + 8 * v54);
        if (v57)
        {
          _outNode(a1, v57);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v56 + v55)
        {
          v58 = v56 + v55 >= (*(*(a2 + 136) + 16) + 8 * *(*(a2 + 136) + 4));
        }

        else
        {
          v58 = 1;
        }

        if (!v58)
        {
          appendStringInfoString(a1, ",");
        }

        ++v54;
        v55 += 8;
      }

      while (v54 < *(v53 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 144))
  {
    appendStringInfo(a1, "distinctClause:");
    appendStringInfoChar(a1, 91);
    v59 = *(a2 + 144);
    if (v59 && *(v59 + 4) >= 1)
    {
      v60 = 0;
      v61 = 8;
      do
      {
        v62 = *(v59 + 16);
        v63 = *(v62 + 8 * v60);
        if (v63)
        {
          _outNode(a1, v63);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v62 + v61)
        {
          v64 = v62 + v61 >= (*(*(a2 + 144) + 16) + 8 * *(*(a2 + 144) + 4));
        }

        else
        {
          v64 = 1;
        }

        if (!v64)
        {
          appendStringInfoString(a1, ",");
        }

        ++v60;
        v61 += 8;
      }

      while (v60 < *(v59 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 152))
  {
    appendStringInfo(a1, "sortClause:");
    appendStringInfoChar(a1, 91);
    v65 = *(a2 + 152);
    if (v65 && *(v65 + 4) >= 1)
    {
      v66 = 0;
      v67 = 8;
      do
      {
        v68 = *(v65 + 16);
        v69 = *(v68 + 8 * v66);
        if (v69)
        {
          _outNode(a1, v69);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v68 + v67)
        {
          v70 = v68 + v67 >= (*(*(a2 + 152) + 16) + 8 * *(*(a2 + 152) + 4));
        }

        else
        {
          v70 = 1;
        }

        if (!v70)
        {
          appendStringInfoString(a1, ",");
        }

        ++v66;
        v67 += 8;
      }

      while (v66 < *(v65 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 160))
  {
    appendStringInfo(a1, "limitOffset:");
    _outNode(a1, *(a2 + 160));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 168))
  {
    appendStringInfo(a1, "limitCount:");
    _outNode(a1, *(a2 + 168));
    appendStringInfo(a1, ",");
  }

  v71 = *(a2 + 176);
  if (v71 > 2)
  {
    v72 = 0;
  }

  else
  {
    v72 = (&off_2797B6EB8)[v71];
  }

  result = appendStringInfo(a1, "limitOption:%s,", v72);
  if (*(a2 + 184))
  {
    appendStringInfo(a1, "rowMarks:");
    appendStringInfoChar(a1, 91);
    v74 = *(a2 + 184);
    if (v74 && *(v74 + 4) >= 1)
    {
      v75 = 0;
      v76 = 8;
      do
      {
        v77 = *(v74 + 16);
        v78 = *(v77 + 8 * v75);
        if (v78)
        {
          _outNode(a1, v78);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v77 + v76)
        {
          v79 = v77 + v76 >= (*(*(a2 + 184) + 16) + 8 * *(*(a2 + 184) + 4));
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          appendStringInfoString(a1, ",");
        }

        ++v75;
        v76 += 8;
      }

      while (v75 < *(v74 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 192))
  {
    appendStringInfo(a1, "setOperations:");
    _outNode(a1, *(a2 + 192));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 200))
  {
    appendStringInfo(a1, "constraintDeps:");
    appendStringInfoChar(a1, 91);
    v80 = *(a2 + 200);
    if (v80 && *(v80 + 4) >= 1)
    {
      v81 = 0;
      v82 = 8;
      do
      {
        v83 = *(v80 + 16);
        v84 = *(v83 + 8 * v81);
        if (v84)
        {
          _outNode(a1, v84);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v83 + v82)
        {
          v85 = v83 + v82 >= (*(*(a2 + 200) + 16) + 8 * *(*(a2 + 200) + 4));
        }

        else
        {
          v85 = 1;
        }

        if (!v85)
        {
          appendStringInfoString(a1, ",");
        }

        ++v81;
        v82 += 8;
      }

      while (v81 < *(v80 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 208))
  {
    appendStringInfo(a1, "withCheckOptions:");
    appendStringInfoChar(a1, 91);
    v86 = *(a2 + 208);
    if (v86 && *(v86 + 4) >= 1)
    {
      v87 = 0;
      v88 = 8;
      do
      {
        v89 = *(v86 + 16);
        v90 = *(v89 + 8 * v87);
        if (v90)
        {
          _outNode(a1, v90);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v89 + v88)
        {
          v91 = v89 + v88 >= (*(*(a2 + 208) + 16) + 8 * *(*(a2 + 208) + 4));
        }

        else
        {
          v91 = 1;
        }

        if (!v91)
        {
          appendStringInfoString(a1, ",");
        }

        ++v87;
        v88 += 8;
      }

      while (v87 < *(v86 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 216))
  {
    result = appendStringInfo(a1, "stmt_location:%d,", *(a2 + 216));
  }

  if (*(a2 + 220))
  {
    return appendStringInfo(a1, "stmt_len:%d,", *(a2 + 220));
  }

  return result;
}

unint64_t _outInsertStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{");
    _outRangeVar(a1, *(a2 + 8));
    v4 = a1[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *a1;
      if (*(*a1 + v6) == 44)
      {
        a1[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "cols:");
    appendStringInfoChar(a1, 91);
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(a1, v12);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(a1, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "selectStmt:");
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "onConflictClause:{");
    _outOnConflictClause(a1, *(a2 + 32));
    v14 = a1[2];
    v5 = __OFSUB__(v14, 1);
    v15 = v14 - 1;
    if (v15 < 0 == v5)
    {
      v16 = *a1;
      if (*(*a1 + v15) == 44)
      {
        a1[2] = v15;
        *(v16 + v15) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "returningList:");
    appendStringInfoChar(a1, 91);
    v17 = *(a2 + 40);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(a1, v21);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(a1, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "withClause:{");
    _outWithClause(a1, *(a2 + 48));
    v23 = a1[2];
    v5 = __OFSUB__(v23, 1);
    v24 = v23 - 1;
    if (v24 < 0 == v5)
    {
      v25 = *a1;
      if (*(*a1 + v24) == 44)
      {
        a1[2] = v24;
        *(v25 + v24) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  v26 = *(a2 + 56);
  if (v26 > 2)
  {
    v27 = 0;
  }

  else
  {
    v27 = (&off_2797B6EA0)[v26];
  }

  return appendStringInfo(a1, "override:%s,", v27);
}

int *_outDeleteStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{");
    _outRangeVar(v3, *(a2 + 8));
    v4 = v3[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        v3[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "usingClause:");
    appendStringInfoChar(v3, 91);
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(v3, v12);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(v3, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "whereClause:");
    _outNode(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "returningList:");
    appendStringInfoChar(v3, 91);
    v14 = *(a2 + 32);
    if (v14 && *(v14 + 4) >= 1)
    {
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = *(v14 + 16);
        v18 = *(v17 + 8 * v15);
        if (v18)
        {
          _outNode(v3, v18);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v17 + v16)
        {
          v19 = v17 + v16 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          appendStringInfoString(v3, ",");
        }

        ++v15;
        v16 += 8;
      }

      while (v15 < *(v14 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "withClause:{");
    _outWithClause(v3, *(a2 + 40));
    v20 = v3[2];
    v5 = __OFSUB__(v20, 1);
    v21 = v20 - 1;
    if (v21 < 0 == v5)
    {
      v22 = *v3;
      if (*(*v3 + v21) == 44)
      {
        v3[2] = v21;
        *(v22 + v21) = 0;
      }
    }

    return appendStringInfo(v3, "},");
  }

  return result;
}

int *_outUpdateStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{");
    _outRangeVar(v3, *(a2 + 8));
    v4 = v3[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        v3[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "targetList:");
    appendStringInfoChar(v3, 91);
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(v3, v12);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(v3, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "whereClause:");
    _outNode(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "fromClause:");
    appendStringInfoChar(v3, 91);
    v14 = *(a2 + 32);
    if (v14 && *(v14 + 4) >= 1)
    {
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = *(v14 + 16);
        v18 = *(v17 + 8 * v15);
        if (v18)
        {
          _outNode(v3, v18);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v17 + v16)
        {
          v19 = v17 + v16 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          appendStringInfoString(v3, ",");
        }

        ++v15;
        v16 += 8;
      }

      while (v15 < *(v14 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "returningList:");
    appendStringInfoChar(v3, 91);
    v20 = *(a2 + 40);
    if (v20 && *(v20 + 4) >= 1)
    {
      v21 = 0;
      v22 = 8;
      do
      {
        v23 = *(v20 + 16);
        v24 = *(v23 + 8 * v21);
        if (v24)
        {
          _outNode(v3, v24);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v23 + v22)
        {
          v25 = v23 + v22 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          appendStringInfoString(v3, ",");
        }

        ++v21;
        v22 += 8;
      }

      while (v21 < *(v20 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v3, "withClause:{");
    _outWithClause(v3, *(a2 + 48));
    v26 = v3[2];
    v5 = __OFSUB__(v26, 1);
    v27 = v26 - 1;
    if (v27 < 0 == v5)
    {
      v28 = *v3;
      if (*(*v3 + v27) == 44)
      {
        v3[2] = v27;
        *(v28 + v27) = 0;
      }
    }

    return appendStringInfo(v3, "},");
  }

  return result;
}

uint64_t _outSelectStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "distinctClause:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "intoClause:{");
    _outIntoClause(a1, *(a2 + 16));
    v10 = a1[2];
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v12 < 0 == v11)
    {
      v13 = *a1;
      if (*(*a1 + v12) == 44)
      {
        a1[2] = v12;
        *(v13 + v12) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "targetList:");
    appendStringInfoChar(a1, 91);
    v14 = *(a2 + 24);
    if (v14 && *(v14 + 4) >= 1)
    {
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = *(v14 + 16);
        v18 = *(v17 + 8 * v15);
        if (v18)
        {
          _outNode(a1, v18);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v17 + v16)
        {
          v19 = v17 + v16 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          appendStringInfoString(a1, ",");
        }

        ++v15;
        v16 += 8;
      }

      while (v15 < *(v14 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "fromClause:");
    appendStringInfoChar(a1, 91);
    v20 = *(a2 + 32);
    if (v20 && *(v20 + 4) >= 1)
    {
      v21 = 0;
      v22 = 8;
      do
      {
        v23 = *(v20 + 16);
        v24 = *(v23 + 8 * v21);
        if (v24)
        {
          _outNode(a1, v24);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v23 + v22)
        {
          v25 = v23 + v22 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          appendStringInfoString(a1, ",");
        }

        ++v21;
        v22 += 8;
      }

      while (v21 < *(v20 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "whereClause:");
    _outNode(a1, *(a2 + 40));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "groupClause:");
    appendStringInfoChar(a1, 91);
    v26 = *(a2 + 48);
    if (v26 && *(v26 + 4) >= 1)
    {
      v27 = 0;
      v28 = 8;
      do
      {
        v29 = *(v26 + 16);
        v30 = *(v29 + 8 * v27);
        if (v30)
        {
          _outNode(a1, v30);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v29 + v28)
        {
          v31 = v29 + v28 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          appendStringInfoString(a1, ",");
        }

        ++v27;
        v28 += 8;
      }

      while (v27 < *(v26 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "havingClause:");
    _outNode(a1, *(a2 + 56));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "windowClause:");
    appendStringInfoChar(a1, 91);
    v32 = *(a2 + 64);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(a1, v36);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(a1, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "valuesLists:");
    appendStringInfoChar(a1, 91);
    v38 = *(a2 + 72);
    if (v38 && *(v38 + 4) >= 1)
    {
      v39 = 0;
      v40 = 8;
      do
      {
        v41 = *(v38 + 16);
        v42 = *(v41 + 8 * v39);
        if (v42)
        {
          _outNode(a1, v42);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v41 + v40)
        {
          v43 = v41 + v40 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          appendStringInfoString(a1, ",");
        }

        ++v39;
        v40 += 8;
      }

      while (v39 < *(v38 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "sortClause:");
    appendStringInfoChar(a1, 91);
    v44 = *(a2 + 80);
    if (v44 && *(v44 + 4) >= 1)
    {
      v45 = 0;
      v46 = 8;
      do
      {
        v47 = *(v44 + 16);
        v48 = *(v47 + 8 * v45);
        if (v48)
        {
          _outNode(a1, v48);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v47 + v46)
        {
          v49 = v47 + v46 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v49 = 1;
        }

        if (!v49)
        {
          appendStringInfoString(a1, ",");
        }

        ++v45;
        v46 += 8;
      }

      while (v45 < *(v44 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 88))
  {
    appendStringInfo(a1, "limitOffset:");
    _outNode(a1, *(a2 + 88));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 96))
  {
    appendStringInfo(a1, "limitCount:");
    _outNode(a1, *(a2 + 96));
    appendStringInfo(a1, ",");
  }

  v50 = *(a2 + 104);
  if (v50 > 2)
  {
    v51 = 0;
  }

  else
  {
    v51 = (&off_2797B6EB8)[v50];
  }

  appendStringInfo(a1, "limitOption:%s,", v51);
  if (*(a2 + 112))
  {
    appendStringInfo(a1, "lockingClause:");
    appendStringInfoChar(a1, 91);
    v52 = *(a2 + 112);
    if (v52 && *(v52 + 4) >= 1)
    {
      v53 = 0;
      v54 = 8;
      do
      {
        v55 = *(v52 + 16);
        v56 = *(v55 + 8 * v53);
        if (v56)
        {
          _outNode(a1, v56);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v55 + v54)
        {
          v57 = v55 + v54 >= (*(*(a2 + 112) + 16) + 8 * *(*(a2 + 112) + 4));
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          appendStringInfoString(a1, ",");
        }

        ++v53;
        v54 += 8;
      }

      while (v53 < *(v52 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 120))
  {
    appendStringInfo(a1, "withClause:{");
    _outWithClause(a1, *(a2 + 120));
    v58 = a1[2];
    v11 = __OFSUB__(v58, 1);
    v59 = v58 - 1;
    if (v59 < 0 == v11)
    {
      v60 = *a1;
      if (*(*a1 + v59) == 44)
      {
        a1[2] = v59;
        *(v60 + v59) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  v61 = *(a2 + 128);
  if (v61 > 3)
  {
    v62 = 0;
  }

  else
  {
    v62 = (&off_2797B70E8)[v61];
  }

  result = appendStringInfo(a1, "op:%s,", v62);
  if (*(a2 + 132) == 1)
  {
    result = appendStringInfo(a1, "all:%s,", "true");
  }

  if (*(a2 + 136))
  {
    appendStringInfo(a1, "larg:{");
    _outSelectStmt(a1, *(a2 + 136));
    v64 = a1[2];
    v11 = __OFSUB__(v64, 1);
    v65 = v64 - 1;
    if (v65 < 0 == v11)
    {
      v66 = *a1;
      if (*(*a1 + v65) == 44)
      {
        a1[2] = v65;
        *(v66 + v65) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 144))
  {
    appendStringInfo(a1, "rarg:{");
    _outSelectStmt(a1, *(a2 + 144));
    v67 = a1[2];
    v11 = __OFSUB__(v67, 1);
    v68 = v67 - 1;
    if (v68 < 0 == v11)
    {
      v69 = *a1;
      if (*(*a1 + v68) == 44)
      {
        a1[2] = v68;
        *(v69 + v68) = 0;
      }
    }

    return appendStringInfo(a1, "},");
  }

  return result;
}

uint64_t _outAlterTableStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{");
    _outRangeVar(a1, *(a2 + 8));
    v4 = a1[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *a1;
      if (*(*a1 + v6) == 44)
      {
        a1[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "cmds:");
    appendStringInfoChar(a1, 91);
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(a1, v12);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(a1, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    appendStringInfo(a1, "],");
  }

  v14 = *(a2 + 24);
  if (v14 > 0x31)
  {
    v15 = 0;
  }

  else
  {
    v15 = (&off_2797B72E8)[v14];
  }

  result = appendStringInfo(a1, "relkind:%s,", v15);
  if (*(a2 + 28) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", "true");
  }

  return result;
}

uint64_t _outAlterTableCmd(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0x42)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B6ED0)[v4];
  }

  appendStringInfo(a1, "subtype:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "num:%d,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "newowner:{");
    _outRoleSpec(a1, *(a2 + 24));
    v6 = a1[2];
    v7 = __OFSUB__(v6, 1);
    v8 = v6 - 1;
    if (v8 < 0 == v7)
    {
      v9 = *a1;
      if (*(*a1 + v8) == 44)
      {
        a1[2] = v8;
        *(v9 + v8) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "def:");
    _outNode(a1, *(a2 + 32));
    appendStringInfo(a1, ",");
  }

  v10 = *(a2 + 40);
  v11 = "DROP_CASCADE";
  if (v10 != 1)
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = "DROP_RESTRICT";
  }

  result = appendStringInfo(a1, "behavior:%s,", v12);
  if (*(a2 + 44) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", "true");
  }

  return result;
}

uint64_t _outAlterDomainStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "subtype:%c,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(a1, "typeName:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "name:");
    _outToken(a1, *(a2 + 16));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "def:");
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  v10 = *(a2 + 32);
  v11 = "DROP_CASCADE";
  if (v10 != 1)
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = "DROP_RESTRICT";
  }

  result = appendStringInfo(a1, "behavior:%s,", v12);
  if (*(a2 + 36) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", "true");
  }

  return result;
}

uint64_t _outSetOperationStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B70E8)[v4];
  }

  result = appendStringInfo(a1, "op:%s,", v5);
  if (*(a2 + 8) == 1)
  {
    result = appendStringInfo(a1, "all:%s,", "true");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "larg:");
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "rarg:");
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "colTypes:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 32);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = *(v10 + 8 * v8);
        if (v11)
        {
          _outNode(a1, v11);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ",");
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < *(v7 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "colTypmods:");
    appendStringInfoChar(a1, 91);
    v13 = *(a2 + 40);
    if (v13 && *(v13 + 4) >= 1)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = *(v13 + 16);
        v17 = *(v16 + 8 * v14);
        if (v17)
        {
          _outNode(a1, v17);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v16 + v15)
        {
          v18 = v16 + v15 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          appendStringInfoString(a1, ",");
        }

        ++v14;
        v15 += 8;
      }

      while (v14 < *(v13 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "colCollations:");
    appendStringInfoChar(a1, 91);
    v19 = *(a2 + 48);
    if (v19 && *(v19 + 4) >= 1)
    {
      v20 = 0;
      v21 = 8;
      do
      {
        v22 = *(v19 + 16);
        v23 = *(v22 + 8 * v20);
        if (v23)
        {
          _outNode(a1, v23);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v22 + v21)
        {
          v24 = v22 + v21 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          appendStringInfoString(a1, ",");
        }

        ++v20;
        v21 += 8;
      }

      while (v20 < *(v19 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "groupClauses:");
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 56);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    return appendStringInfo(a1, "],");
  }

  return result;
}

unint64_t _outGrantStmt(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == 1)
  {
    appendStringInfo(a1, "is_grant:%s,", "true");
  }

  v4 = *(a2 + 8);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B7108)[v4];
  }

  appendStringInfo(a1, "targtype:%s,", v5);
  v6 = *(a2 + 12);
  if (v6 > 0x31)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&off_2797B72E8)[v6];
  }

  appendStringInfo(a1, "objtype:%s,", v7);
  if (*(a2 + 16))
  {
    appendStringInfo(a1, "objects:");
    appendStringInfoChar(a1, 91);
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(a1, v12);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(a1, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "privileges:");
    appendStringInfoChar(a1, 91);
    v14 = *(a2 + 24);
    if (v14 && *(v14 + 4) >= 1)
    {
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = *(v14 + 16);
        v18 = *(v17 + 8 * v15);
        if (v18)
        {
          _outNode(a1, v18);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v17 + v16)
        {
          v19 = v17 + v16 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          appendStringInfoString(a1, ",");
        }

        ++v15;
        v16 += 8;
      }

      while (v15 < *(v14 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "grantees:");
    appendStringInfoChar(a1, 91);
    v20 = *(a2 + 32);
    if (v20 && *(v20 + 4) >= 1)
    {
      v21 = 0;
      v22 = 8;
      do
      {
        v23 = *(v20 + 16);
        v24 = *(v23 + 8 * v21);
        if (v24)
        {
          _outNode(a1, v24);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v23 + v22)
        {
          v25 = v23 + v22 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          appendStringInfoString(a1, ",");
        }

        ++v21;
        v22 += 8;
      }

      while (v21 < *(v20 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 40) == 1)
  {
    appendStringInfo(a1, "grant_option:%s,", "true");
  }

  v26 = *(a2 + 44);
  v27 = "DROP_CASCADE";
  if (v26 != 1)
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = "DROP_RESTRICT";
  }

  return appendStringInfo(a1, "behavior:%s,", v28);
}

unint64_t _outGrantRoleStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "granted_roles:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "grantee_roles:");
    appendStringInfoChar(a1, 91);
    v10 = *(a2 + 16);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(a1, v14);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(a1, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 24) == 1)
  {
    appendStringInfo(a1, "is_grant:%s,", "true");
    if (*(a2 + 25) != 1)
    {
LABEL_31:
      if (!*(a2 + 32))
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }
  }

  else if (*(a2 + 25) != 1)
  {
    goto LABEL_31;
  }

  appendStringInfo(a1, "admin_opt:%s,", "true");
  if (!*(a2 + 32))
  {
    goto LABEL_39;
  }

LABEL_35:
  appendStringInfo(a1, "grantor:{");
  _outRoleSpec(a1, *(a2 + 32));
  v16 = a1[2];
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v18 < 0 == v17)
  {
    v19 = *a1;
    if (*(*a1 + v18) == 44)
    {
      a1[2] = v18;
      *(v19 + v18) = 0;
    }
  }

  appendStringInfo(a1, "},");
LABEL_39:
  v20 = *(a2 + 40);
  v21 = "DROP_CASCADE";
  if (v20 != 1)
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = "DROP_RESTRICT";
  }

  return appendStringInfo(a1, "behavior:%s,", v22);
}

uint64_t _outAlterDefaultPrivilegesStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "options:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "action:{");
    _outGrantStmt(v3, *(a2 + 16));
    v10 = *(v3 + 8);
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v12 < 0 == v11)
    {
      v13 = *v3;
      if (*(*v3 + v12) == 44)
      {
        *(v3 + 8) = v12;
        *(v13 + v12) = 0;
      }
    }

    return appendStringInfo(v3, "},");
  }

  return result;
}

unint64_t _outClosePortalStmt(unint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    appendStringInfo(result, "portalname:");
    _outToken(v3, *(a2 + 8));

    return appendStringInfo(v3, ",");
  }

  return result;
}

int *_outClusterStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{");
    _outRangeVar(v3, *(a2 + 8));
    v4 = v3[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        v3[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "indexname:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v3, "options:%d,", *(a2 + 24));
  }

  return result;
}

int *_outCopyStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{");
    _outRangeVar(v3, *(a2 + 8));
    v4 = v3[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        v3[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "query:");
    _outNode(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "attlist:");
    appendStringInfoChar(v3, 91);
    v8 = *(a2 + 24);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(v3, v12);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(v3, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32) == 1)
  {
    result = appendStringInfo(v3, "is_from:%s,", "true");
    if (*(a2 + 33) != 1)
    {
LABEL_24:
      if (!*(a2 + 40))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if (*(a2 + 33) != 1)
  {
    goto LABEL_24;
  }

  result = appendStringInfo(v3, "is_program:%s,", "true");
  if (*(a2 + 40))
  {
LABEL_25:
    appendStringInfo(v3, "filename:");
    _outToken(v3, *(a2 + 40));
    result = appendStringInfo(v3, ",");
  }

LABEL_26:
  if (*(a2 + 48))
  {
    appendStringInfo(v3, "options:");
    appendStringInfoChar(v3, 91);
    v14 = *(a2 + 48);
    if (v14 && *(v14 + 4) >= 1)
    {
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = *(v14 + 16);
        v18 = *(v17 + 8 * v15);
        if (v18)
        {
          _outNode(v3, v18);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v17 + v16)
        {
          v19 = v17 + v16 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          appendStringInfoString(v3, ",");
        }

        ++v15;
        v16 += 8;
      }

      while (v15 < *(v14 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v3, "whereClause:");
    _outNode(v3, *(a2 + 56));

    return appendStringInfo(v3, ",");
  }

  return result;
}

uint64_t _outCreateStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{");
    _outRangeVar(a1, *(a2 + 8));
    v4 = a1[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *a1;
      if (*(*a1 + v6) == 44)
      {
        a1[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "tableElts:");
    appendStringInfoChar(a1, 91);
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(a1, v12);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(a1, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "inhRelations:");
    appendStringInfoChar(a1, 91);
    v14 = *(a2 + 24);
    if (v14 && *(v14 + 4) >= 1)
    {
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = *(v14 + 16);
        v18 = *(v17 + 8 * v15);
        if (v18)
        {
          _outNode(a1, v18);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v17 + v16)
        {
          v19 = v17 + v16 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          appendStringInfoString(a1, ",");
        }

        ++v15;
        v16 += 8;
      }

      while (v15 < *(v14 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "partbound:{");
    _outPartitionBoundSpec(a1, *(a2 + 32));
    v20 = a1[2];
    v5 = __OFSUB__(v20, 1);
    v21 = v20 - 1;
    if (v21 < 0 == v5)
    {
      v22 = *a1;
      if (*(*a1 + v21) == 44)
      {
        a1[2] = v21;
        *(v22 + v21) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "partspec:{");
    _outPartitionSpec(a1, *(a2 + 40));
    v23 = a1[2];
    v5 = __OFSUB__(v23, 1);
    v24 = v23 - 1;
    if (v24 < 0 == v5)
    {
      v25 = *a1;
      if (*(*a1 + v24) == 44)
      {
        a1[2] = v24;
        *(v25 + v24) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "ofTypename:{");
    _outTypeName(a1, *(a2 + 48));
    v26 = a1[2];
    v5 = __OFSUB__(v26, 1);
    v27 = v26 - 1;
    if (v27 < 0 == v5)
    {
      v28 = *a1;
      if (*(*a1 + v27) == 44)
      {
        a1[2] = v27;
        *(v28 + v27) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "constraints:");
    appendStringInfoChar(a1, 91);
    v29 = *(a2 + 56);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(a1, v33);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(a1, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "options:");
    appendStringInfoChar(a1, 91);
    v35 = *(a2 + 64);
    if (v35 && *(v35 + 4) >= 1)
    {
      v36 = 0;
      v37 = 8;
      do
      {
        v38 = *(v35 + 16);
        v39 = *(v38 + 8 * v36);
        if (v39)
        {
          _outNode(a1, v39);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v38 + v37)
        {
          v40 = v38 + v37 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v40 = 1;
        }

        if (!v40)
        {
          appendStringInfoString(a1, ",");
        }

        ++v36;
        v37 += 8;
      }

      while (v36 < *(v35 + 4));
    }

    appendStringInfo(a1, "],");
  }

  v41 = *(a2 + 72);
  if (v41 > 3)
  {
    v42 = 0;
  }

  else
  {
    v42 = (&off_2797B7120)[v41];
  }

  result = appendStringInfo(a1, "oncommit:%s,", v42);
  if (*(a2 + 80))
  {
    appendStringInfo(a1, "tablespacename:");
    _outToken(a1, *(a2 + 80));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 88))
  {
    appendStringInfo(a1, "accessMethod:");
    _outToken(a1, *(a2 + 88));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 96) == 1)
  {
    return appendStringInfo(a1, "if_not_exists:%s,", "true");
  }

  return result;
}

uint64_t _outDefineStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B72E8)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8) == 1)
  {
    result = appendStringInfo(a1, "oldstyle:%s,", "true");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "defnames:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 16);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = *(v10 + 8 * v8);
        if (v11)
        {
          _outNode(a1, v11);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ",");
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < *(v7 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "args:");
    appendStringInfoChar(a1, 91);
    v13 = *(a2 + 24);
    if (v13 && *(v13 + 4) >= 1)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = *(v13 + 16);
        v17 = *(v16 + 8 * v14);
        if (v17)
        {
          _outNode(a1, v17);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v16 + v15)
        {
          v18 = v16 + v15 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          appendStringInfoString(a1, ",");
        }

        ++v14;
        v15 += 8;
      }

      while (v14 < *(v13 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "definition:");
    appendStringInfoChar(a1, 91);
    v19 = *(a2 + 32);
    if (v19 && *(v19 + 4) >= 1)
    {
      v20 = 0;
      v21 = 8;
      do
      {
        v22 = *(v19 + 16);
        v23 = *(v22 + 8 * v20);
        if (v23)
        {
          _outNode(a1, v23);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v22 + v21)
        {
          v24 = v22 + v21 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          appendStringInfoString(a1, ",");
        }

        ++v20;
        v21 += 8;
      }

      while (v20 < *(v19 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(a1, "if_not_exists:%s,", "true");
  }

  if (*(a2 + 41) == 1)
  {
    return appendStringInfo(a1, "replace:%s,", "true");
  }

  return result;
}

uint64_t _outDropStmt(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "objects:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  v10 = *(a2 + 16);
  if (v10 > 0x31)
  {
    v11 = 0;
  }

  else
  {
    v11 = (&off_2797B72E8)[v10];
  }

  appendStringInfo(a1, "removeType:%s,", v11);
  v12 = *(a2 + 20);
  v13 = "DROP_CASCADE";
  if (v12 != 1)
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = "DROP_RESTRICT";
  }

  result = appendStringInfo(a1, "behavior:%s,", v14);
  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(a1, "missing_ok:%s,", "true");
  }

  if (*(a2 + 25) == 1)
  {
    return appendStringInfo(a1, "concurrent:%s,", "true");
  }

  return result;
}