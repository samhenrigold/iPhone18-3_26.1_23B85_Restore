void pg_query_free_deparse_result(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1;
    pg_query_free_error(a2);
    a1 = v3;
    v2 = vars8;
  }

  free(a1);
}

uint64_t deparseCreateTableAsStmt(uint64_t *a1, uint64_t a2)
{
  appendStringInfoString(a1, "CREATE ");
  v4 = *(*(*(a2 + 16) + 8) + 33);
  if (v4 == 117)
  {
    v5 = "UNLOGGED ";
  }

  else
  {
    if (v4 != 116)
    {
      goto LABEL_6;
    }

    v5 = "TEMPORARY ";
  }

  appendStringInfoString(a1, v5);
LABEL_6:
  v6 = *(a2 + 24);
  if (v6 == 39)
  {
    v7 = "TABLE ";
  }

  else
  {
    if (v6 != 23)
    {
      goto LABEL_11;
    }

    v7 = "MATERIALIZED VIEW ";
  }

  appendStringInfoString(a1, v7);
LABEL_11:
  if (*(a2 + 29) == 1)
  {
    appendStringInfoString(a1, "IF NOT EXISTS ");
  }

  deparseIntoClause(a1, *(a2 + 16));
  appendStringInfoChar(a1, 32);
  appendStringInfoString(a1, "AS ");
  v8 = *(a2 + 8);
  if (*v8 == 295)
  {
    deparseExecuteStmt(a1, v8);
  }

  else
  {
    deparseSelectStmt(a1, v8);
  }

  result = appendStringInfoChar(a1, 32);
  if (*(*(a2 + 16) + 64) == 1)
  {
    result = appendStringInfoString(a1, "WITH NO DATA ");
  }

  v10 = *(a1 + 2);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v12 < 0 == v11)
  {
    v13 = *a1;
    if (*(*a1 + v12) == 32)
    {
      *(a1 + 2) = v12;
      *(v13 + v12) = 0;
    }
  }

  return result;
}

uint64_t deparseCreateSeqStmt(uint64_t *a1, uint64_t a2)
{
  appendStringInfoString(a1, "CREATE ");
  v4 = *(*(a2 + 8) + 33);
  if (v4 == 117)
  {
    v5 = "UNLOGGED ";
  }

  else
  {
    if (v4 != 116)
    {
      goto LABEL_6;
    }

    v5 = "TEMPORARY ";
  }

  appendStringInfoString(a1, v5);
LABEL_6:
  appendStringInfoString(a1, "SEQUENCE ");
  if (*(a2 + 29) == 1)
  {
    appendStringInfoString(a1, "IF NOT EXISTS ");
  }

  deparseRangeVar(a1, *(a2 + 8), 0);
  result = appendStringInfoChar(a1, 32);
  v7 = *(a2 + 16);
  if (v7 && *(v7 + 4) >= 1)
  {
    v8 = 0;
    do
    {
      deparseSeqOptElem(a1, *(*(v7 + 16) + 8 * v8));
      result = appendStringInfoChar(a1, 32);
      ++v8;
    }

    while (v8 < *(v7 + 4));
  }

  v9 = *(a1 + 2);
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v11 < 0 == v10)
  {
    v12 = *a1;
    if (*(*a1 + v11) == 32)
    {
      *(a1 + 2) = v11;
      *(v12 + v11) = 0;
    }
  }

  return result;
}

uint64_t deparseCreateStmt(uint64_t *a1, uint64_t a2, int a3)
{
  appendStringInfoString(a1, "CREATE ");
  if (a3)
  {
    appendStringInfoString(a1, "FOREIGN ");
  }

  v6 = *(*(a2 + 8) + 33);
  if (v6 == 117)
  {
    v7 = "UNLOGGED ";
  }

  else
  {
    if (v6 != 116)
    {
      goto LABEL_8;
    }

    v7 = "TEMPORARY ";
  }

  appendStringInfoString(a1, v7);
LABEL_8:
  appendStringInfoString(a1, "TABLE ");
  if (*(a2 + 96) == 1)
  {
    appendStringInfoString(a1, "IF NOT EXISTS ");
  }

  deparseRangeVar(a1, *(a2 + 8), 0);
  result = appendStringInfoChar(a1, 32);
  if (*(a2 + 48))
  {
    appendStringInfoString(a1, "OF ");
    deparseTypeName(a1, *(a2 + 48));
    result = appendStringInfoChar(a1, 32);
  }

  if (*(a2 + 32))
  {
    appendStringInfoString(a1, "PARTITION OF ");
    deparseRangeVar(a1, **(*(a2 + 24) + 16), 0);
    result = appendStringInfoChar(a1, 32);
  }

  v9 = *(a2 + 16);
  v62 = a2;
  if (v9 && *(v9 + 4) >= 1)
  {
    appendStringInfoChar(a1, 40);
    v10 = *(a2 + 16);
    if (v10)
    {
      if (*(v10 + 4) >= 1)
      {
        v11 = 0;
        v12 = 8;
        while (1)
        {
          v13 = *(v10 + 16);
          v14 = *(v13 + 8 * v11);
          v15 = *v14;
          if (*v14 != 381)
          {
            if (v15 == 369)
            {
              deparseConstraint(a1, *(v13 + 8 * v11));
            }

            else if (v15 == 367)
            {
              deparseColumnDef(a1, *(v13 + 8 * v11));
            }

            goto LABEL_47;
          }

          appendStringInfoString(a1, "LIKE ");
          deparseRangeVar(a1, *(v14 + 1), 0);
          appendStringInfoChar(a1, 32);
          v16 = v14[4];
          v17 = "INCLUDING ALL ";
          if (v16 == 0x7FFFFFFF)
          {
            goto LABEL_44;
          }

          if (v16)
          {
            appendStringInfoString(a1, "INCLUDING COMMENTS ");
            v16 = v14[4];
            if ((v16 & 2) == 0)
            {
LABEL_28:
              if ((v16 & 4) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_39;
            }
          }

          else if ((v16 & 2) == 0)
          {
            goto LABEL_28;
          }

          appendStringInfoString(a1, "INCLUDING CONSTRAINTS ");
          v16 = v14[4];
          if ((v16 & 4) == 0)
          {
LABEL_29:
            if ((v16 & 0x10) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_40;
          }

LABEL_39:
          appendStringInfoString(a1, "INCLUDING DEFAULTS ");
          v16 = v14[4];
          if ((v16 & 0x10) == 0)
          {
LABEL_30:
            if ((v16 & 8) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_41;
          }

LABEL_40:
          appendStringInfoString(a1, "INCLUDING IDENTITY ");
          v16 = v14[4];
          if ((v16 & 8) == 0)
          {
LABEL_31:
            if ((v16 & 0x20) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_42;
          }

LABEL_41:
          appendStringInfoString(a1, "INCLUDING GENERATED ");
          v16 = v14[4];
          if ((v16 & 0x20) == 0)
          {
LABEL_32:
            if ((v16 & 0x40) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_43;
          }

LABEL_42:
          appendStringInfoString(a1, "INCLUDING INDEXES ");
          v16 = v14[4];
          if ((v16 & 0x40) == 0)
          {
LABEL_33:
            v17 = "INCLUDING STORAGE ";
            if ((v16 & 0x80) == 0)
            {
              goto LABEL_34;
            }

            goto LABEL_44;
          }

LABEL_43:
          appendStringInfoString(a1, "INCLUDING STATISTICS ");
          v17 = "INCLUDING STORAGE ";
          if ((v14[4] & 0x80) == 0)
          {
LABEL_34:
            v18 = *(a1 + 2);
            v19 = __OFSUB__(v18, 1);
            v20 = v18 - 1;
            if (v20 < 0 == v19)
            {
              goto LABEL_45;
            }

            goto LABEL_47;
          }

LABEL_44:
          appendStringInfoString(a1, v17);
          v21 = *(a1 + 2);
          v19 = __OFSUB__(v21, 1);
          v20 = v21 - 1;
          if (v20 < 0 == v19)
          {
LABEL_45:
            v22 = *a1;
            if (*(*a1 + v20) == 32)
            {
              *(a1 + 2) = v20;
              *(v22 + v20) = 0;
            }
          }

LABEL_47:
          a2 = v62;
          if (v13 + v12)
          {
            v23 = v13 + v12 >= (*(*(v62 + 16) + 16) + 8 * *(*(v62 + 16) + 4));
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            appendStringInfoString(a1, ", ");
          }

          ++v11;
          v12 += 8;
          if (v11 >= *(v10 + 4))
          {
            goto LABEL_56;
          }
        }
      }

      result = appendStringInfoString(a1, ") ");
      v24 = *(a2 + 32);
      if (!v24)
      {
        goto LABEL_108;
      }

LABEL_57:
      deparsePartitionBoundSpec(a1, v24);
      result = appendStringInfoChar(a1, 32);
      goto LABEL_58;
    }

LABEL_56:
    result = appendStringInfoString(a1, ") ");
    v24 = *(a2 + 32);
    if (v24)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v24 = *(a2 + 32);
    if (v24)
    {
      goto LABEL_57;
    }

    if (!*(a2 + 48))
    {
      result = appendStringInfoString(a1, "() ");
      v24 = *(a2 + 32);
      if (v24)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_108:
  v56 = *(a2 + 24);
  if (v56 && *(v56 + 4) >= 1)
  {
    appendStringInfoString(a1, "INHERITS (");
    if (*(v56 + 4) >= 1)
    {
      v57 = 0;
      v58 = 8;
      do
      {
        v59 = *(v56 + 16);
        deparseRangeVar(a1, *(v59 + 8 * v57), 0);
        v60 = *(v56 + 4);
        if (v59 + v58)
        {
          v61 = v59 + v58 >= (*(v56 + 16) + 8 * v60);
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          appendStringInfoString(a1, ", ");
          v60 = *(v56 + 4);
        }

        ++v57;
        v58 += 8;
      }

      while (v57 < v60);
    }

    result = appendStringInfoString(a1, ") ");
    a2 = v62;
  }

LABEL_58:
  v25 = *(a2 + 40);
  if (v25)
  {
    appendStringInfoString(a1, "PARTITION BY ");
    appendStringInfoString(a1, *(v25 + 8));
    appendStringInfoChar(a1, 40);
    v26 = *(v25 + 16);
    if (v26 && *(v26 + 4) >= 1)
    {
      v27 = 0;
      do
      {
        v28 = *(v26 + 16) + 8 * v27;
        v29 = *v28;
        v30 = *(*v28 + 8);
        if (v30)
        {
          v31 = quote_identifier(v30);
          appendStringInfoString(a1, v31);
          appendStringInfoChar(a1, 32);
        }

        else if (*(v29 + 16))
        {
          appendStringInfoChar(a1, 40);
          deparseExpr(a1, *(v29 + 16));
          appendStringInfoString(a1, ") ");
        }

        v32 = *(v29 + 24);
        if (v32 && *(v32 + 4) >= 1)
        {
          appendStringInfoString(a1, "COLLATE ");
          if (*(v32 + 4) >= 1)
          {
            v33 = 0;
            v34 = 8;
            do
            {
              v35 = *(v32 + 16);
              v36 = quote_identifier(*(*(v35 + 8 * v33) + 8));
              appendStringInfoString(a1, v36);
              v37 = *(v32 + 4);
              if (v35 + v34)
              {
                v38 = v35 + v34 >= (*(v32 + 16) + 8 * v37);
              }

              else
              {
                v38 = 1;
              }

              if (!v38)
              {
                appendStringInfoChar(a1, 46);
                v37 = *(v32 + 4);
              }

              ++v33;
              v34 += 8;
            }

            while (v33 < v37);
          }

          appendStringInfoChar(a1, 32);
        }

        v39 = *(v29 + 32);
        if (v39 && *(v39 + 4) >= 1)
        {
          v40 = 0;
          v41 = 8;
          do
          {
            v42 = *(v39 + 16);
            v43 = quote_identifier(*(*(v42 + 8 * v40) + 8));
            appendStringInfoString(a1, v43);
            v44 = *(v39 + 4);
            if (v42 + v41)
            {
              v45 = v42 + v41 >= (*(v39 + 16) + 8 * v44);
            }

            else
            {
              v45 = 1;
            }

            if (!v45)
            {
              appendStringInfoChar(a1, 46);
              v44 = *(v39 + 4);
            }

            ++v40;
            v41 += 8;
          }

          while (v40 < v44);
        }

        v46 = *(a1 + 2);
        v19 = __OFSUB__(v46, 1);
        v47 = v46 - 1;
        if (v47 < 0 == v19)
        {
          v48 = *a1;
          if (*(*a1 + v47) == 32)
          {
            *(a1 + 2) = v47;
            *(v48 + v47) = 0;
          }
        }

        if (v28 != -8 && v28 + 8 < (*(*(v25 + 16) + 16) + 8 * *(*(v25 + 16) + 4)))
        {
          appendStringInfoString(a1, ", ");
        }

        ++v27;
      }

      while (v27 < *(v26 + 4));
    }

    appendStringInfoChar(a1, 41);
    result = appendStringInfoChar(a1, 32);
    a2 = v62;
  }

  if (*(a2 + 88))
  {
    appendStringInfoString(a1, "USING ");
    v49 = quote_identifier(*(a2 + 88));
    result = appendStringInfoString(a1, v49);
  }

  v50 = *(a2 + 64);
  if (v50 && *(v50 + 4) >= 1)
  {
    appendStringInfoString(a1, "WITH ");
    deparseRelOptions(a1, v50);
    result = appendStringInfoChar(a1, 32);
  }

  v51 = *(a2 + 72) - 1;
  if (v51 <= 2)
  {
    result = appendStringInfoString(a1, (&off_2797B6CB8)[v51]);
  }

  if (*(a2 + 80))
  {
    appendStringInfoString(a1, "TABLESPACE ");
    v52 = quote_identifier(*(a2 + 80));
    result = appendStringInfoString(a1, v52);
  }

  v53 = *(a1 + 2);
  v19 = __OFSUB__(v53, 1);
  v54 = v53 - 1;
  if (v54 < 0 == v19)
  {
    v55 = *a1;
    if (*(*a1 + v54) == 32)
    {
      *(a1 + 2) = v54;
      *(v55 + v54) = 0;
    }
  }

  return result;
}

uint64_t deparseCreateTrigStmt(uint64_t *a1, uint64_t a2)
{
  appendStringInfoString(a1, "CREATE ");
  if (*(a2 + 64) == 1)
  {
    appendStringInfoString(a1, "CONSTRAINT ");
  }

  appendStringInfoString(a1, "TRIGGER ");
  v4 = quote_identifier(*(a2 + 8));
  appendStringInfoString(a1, v4);
  appendStringInfoChar(a1, 32);
  v5 = *(a2 + 42);
  if (v5 == 64)
  {
    v6 = "INSTEAD OF ";
  }

  else if (v5 == 2)
  {
    v6 = "BEFORE ";
  }

  else
  {
    if (*(a2 + 42))
    {
      goto LABEL_10;
    }

    v6 = "AFTER ";
  }

  appendStringInfoString(a1, v6);
LABEL_10:
  v7 = *(a2 + 44);
  if ((v7 & 4) == 0)
  {
    if ((v7 & 8) == 0)
    {
      if ((v7 & 0x10) == 0)
      {
        if ((v7 & 0x20) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  appendStringInfoString(a1, "INSERT ");
  v8 = *(a2 + 44);
  if ((v8 & 8) != 0)
  {
    appendStringInfoString(a1, "OR ");
LABEL_17:
    appendStringInfoString(a1, "DELETE ");
    v8 = *(a2 + 44);
  }

  if ((v8 & 0x10) == 0)
  {
    goto LABEL_32;
  }

  appendStringInfoString(a1, "OR ");
LABEL_20:
  appendStringInfoString(a1, "UPDATE ");
  v9 = *(a2 + 48);
  if (v9 && *(v9 + 4) >= 1)
  {
    appendStringInfoString(a1, "OF ");
    v10 = *(a2 + 48);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = quote_identifier(*(*(v13 + 8 * v11) + 8));
        appendStringInfoString(a1, v14);
        v15 = *(v10 + 4);
        if (v13 + v12)
        {
          v16 = v13 + v12 >= (*(v10 + 16) + 8 * v15);
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          appendStringInfoString(a1, ", ");
          v15 = *(v10 + 4);
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < v15);
    }

    appendStringInfoChar(a1, 32);
  }

LABEL_32:
  if ((*(a2 + 44) & 0x20) != 0)
  {
    appendStringInfoString(a1, "OR ");
LABEL_34:
    appendStringInfoString(a1, "TRUNCATE ");
  }

LABEL_35:
  appendStringInfoString(a1, "ON ");
  deparseRangeVar(a1, *(a2 + 16), 0);
  appendStringInfoChar(a1, 32);
  if (*(a2 + 72))
  {
    appendStringInfoString(a1, "REFERENCING ");
    v17 = *(a2 + 72);
    if (v17)
    {
      if (*(v17 + 4) >= 1)
      {
        v18 = 0;
        do
        {
          v19 = *(*(v17 + 16) + 8 * v18);
          if (*(v19 + 16))
          {
            v20 = "NEW ";
          }

          else
          {
            v20 = "OLD ";
          }

          appendStringInfoString(a1, v20);
          if (*(v19 + 17))
          {
            v21 = "TABLE ";
          }

          else
          {
            v21 = "ROW ";
          }

          appendStringInfoString(a1, v21);
          v22 = quote_identifier(*(v19 + 8));
          appendStringInfoString(a1, v22);
          appendStringInfoChar(a1, 32);
          ++v18;
        }

        while (v18 < *(v17 + 4));
      }
    }
  }

  if (*(a2 + 88))
  {
    appendStringInfoString(a1, "FROM ");
    deparseRangeVar(a1, *(a2 + 88), 0);
    appendStringInfoChar(a1, 32);
  }

  if (*(a2 + 80) == 1)
  {
    appendStringInfoString(a1, "DEFERRABLE ");
    if (*(a2 + 81) != 1)
    {
LABEL_50:
      if (*(a2 + 40) != 1)
      {
        goto LABEL_51;
      }

LABEL_76:
      appendStringInfoString(a1, "FOR EACH ROW ");
      if (!*(a2 + 56))
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else if (*(a2 + 81) != 1)
  {
    goto LABEL_50;
  }

  appendStringInfoString(a1, "INITIALLY DEFERRED ");
  if (*(a2 + 40) == 1)
  {
    goto LABEL_76;
  }

LABEL_51:
  if (*(a2 + 56))
  {
LABEL_52:
    appendStringInfoString(a1, "WHEN (");
    deparseExpr(a1, *(a2 + 56));
    appendStringInfoString(a1, ") ");
  }

LABEL_53:
  appendStringInfoString(a1, "EXECUTE FUNCTION ");
  v23 = *(a2 + 24);
  if (v23 && *(v23 + 4) >= 1)
  {
    v24 = 0;
    v25 = 8;
    do
    {
      v26 = *(v23 + 16);
      v27 = quote_identifier(*(*(v26 + 8 * v24) + 8));
      appendStringInfoString(a1, v27);
      v28 = *(v23 + 4);
      if (v26 + v25)
      {
        v29 = v26 + v25 >= (*(v23 + 16) + 8 * v28);
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        appendStringInfoChar(a1, 46);
        v28 = *(v23 + 4);
      }

      ++v24;
      v25 += 8;
    }

    while (v24 < v28);
  }

  appendStringInfoChar(a1, 40);
  v30 = *(a2 + 32);
  if (v30 && *(v30 + 4) >= 1)
  {
    v31 = 0;
    v32 = 8;
    do
    {
      v33 = *(v30 + 16);
      deparseStringLiteral(a1, *(*(v33 + 8 * v31) + 8));
      if (v33 + v32)
      {
        v34 = v33 + v32 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        appendStringInfoString(a1, ", ");
      }

      ++v31;
      v32 += 8;
    }

    while (v31 < *(v30 + 4));
  }

  return appendStringInfoChar(a1, 41);
}

uint64_t deparseDeclareCursorStmt(uint64_t *a1, uint64_t a2)
{
  appendStringInfoString(a1, "DECLARE ");
  v4 = quote_identifier(*(a2 + 8));
  appendStringInfoString(a1, v4);
  appendStringInfoChar(a1, 32);
  v5 = *(a2 + 16);
  if (v5)
  {
    appendStringInfoString(a1, "BINARY ");
    v5 = *(a2 + 16);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  appendStringInfoString(a1, "SCROLL ");
  v5 = *(a2 + 16);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  appendStringInfoString(a1, "NO SCROLL ");
  if ((*(a2 + 16) & 8) == 0)
  {
LABEL_5:
    appendStringInfoString(a1, "CURSOR ");
    if ((*(a2 + 16) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  appendStringInfoString(a1, "INSENSITIVE ");
  appendStringInfoString(a1, "CURSOR ");
  if ((*(a2 + 16) & 0x10) != 0)
  {
LABEL_6:
    appendStringInfoString(a1, "WITH HOLD ");
  }

LABEL_7:
  appendStringInfoString(a1, "FOR ");
  v6 = *(a2 + 24);

  return deparseSelectStmt(a1, v6);
}

uint64_t deparseDeleteStmt(uint64_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4)
  {
    deparseWithClause(a1, v4);
    appendStringInfoChar(a1, 32);
  }

  appendStringInfoString(a1, "DELETE FROM ");
  deparseRangeVar(a1, a2[1], 0);
  result = appendStringInfoChar(a1, 32);
  if (a2[2])
  {
    appendStringInfoString(a1, "USING ");
    v6 = a2[2];
    if (v6 && *(v6 + 4) >= 1)
    {
      v7 = 0;
      v8 = 8;
      do
      {
        v9 = *(v6 + 16);
        deparseTableRef(a1, *(v9 + 8 * v7));
        v10 = *(v6 + 4);
        if (v9 + v8)
        {
          v11 = v9 + v8 >= (*(v6 + 16) + 8 * v10);
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          appendStringInfoString(a1, ", ");
          v10 = *(v6 + 4);
        }

        ++v7;
        v8 += 8;
      }

      while (v7 < v10);
    }

    result = appendStringInfoChar(a1, 32);
  }

  v12 = a2[3];
  if (v12)
  {
    appendStringInfoString(a1, "WHERE ");
    deparseExpr(a1, v12);
    result = appendStringInfoChar(a1, 32);
  }

  v13 = a2[4];
  if (v13 && *(v13 + 4) >= 1)
  {
    appendStringInfoString(a1, "RETURNING ");
    result = deparseTargetList(a1, a2[4]);
  }

  v14 = *(a1 + 2);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v16 < 0 == v15)
  {
    v17 = *a1;
    if (*(*a1 + v16) == 32)
    {
      *(a1 + 2) = v16;
      *(v17 + v16) = 0;
    }
  }

  return result;
}

void *deparseExecuteStmt(uint64_t *a1, uint64_t a2)
{
  appendStringInfoString(a1, "EXECUTE ");
  v4 = quote_identifier(*(a2 + 8));
  result = appendStringInfoString(a1, v4);
  v6 = *(a2 + 16);
  if (v6 && *(v6 + 4) >= 1)
  {
    appendStringInfoChar(a1, 40);
    v7 = *(a2 + 16);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        deparseExpr(a1, *(v10 + 8 * v8));
        v11 = *(v7 + 4);
        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(v7 + 16) + 8 * v11);
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ", ");
          v11 = *(v7 + 4);
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < v11);
    }

    return appendStringInfoChar(a1, 41);
  }

  return result;
}

uint64_t deparseGrantStmt(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v4 = "GRANT ";
  }

  else
  {
    v4 = "REVOKE ";
  }

  appendStringInfoString(a1, v4);
  if ((*(a2 + 4) & 1) == 0 && *(a2 + 40) == 1)
  {
    appendStringInfoString(a1, "GRANT OPTION FOR ");
  }

  v5 = *(a2 + 24);
  if (v5 && *(v5 + 4) >= 1)
  {
    v6 = 0;
    v7 = 8;
    do
    {
      v8 = *(v5 + 16);
      deparseAccessPriv(a1, *(v8 + 8 * v6));
      if (v8 + v7)
      {
        v9 = v8 + v7 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        appendStringInfoString(a1, ", ");
      }

      ++v6;
      v7 += 8;
    }

    while (v6 < *(v5 + 4));
    appendStringInfoChar(a1, 32);
  }

  else
  {
    appendStringInfoString(a1, "ALL ");
  }

  appendStringInfoString(a1, "ON ");
  v11 = *(a2 + 8);
  v10 = *(a2 + 12);
  if (v11 == 2)
  {
    if (v10 <= 34)
    {
      if (v10 == 19)
      {
        v20 = "FUNCTIONS";
      }

      else
      {
        if (v10 != 34)
        {
          goto LABEL_102;
        }

        v20 = "SCHEMAS";
      }
    }

    else
    {
      switch(v10)
      {
        case '#':
          v20 = "SEQUENCES";
          break;
        case '/':
          v20 = "TYPES";
          break;
        case '\'':
          v20 = "TABLES";
          break;
        default:
          goto LABEL_102;
      }
    }

    appendStringInfoString(a1, v20);
  }

  else
  {
    v12 = *(a2 + 16);
    if (v11 == 1)
    {
      if (v10 <= 31)
      {
        if (v10 == 19)
        {
          appendStringInfoString(a1, "ALL FUNCTIONS IN SCHEMA ");
          if (v12 && *(v12 + 4) >= 1)
          {
            v39 = 0;
            v40 = 8;
            do
            {
              v41 = *(v12 + 16);
              v42 = quote_identifier(*(*(v41 + 8 * v39) + 8));
              appendStringInfoString(a1, v42);
              v43 = *(v12 + 4);
              if (v41 + v40)
              {
                v44 = v41 + v40 >= (*(v12 + 16) + 8 * v43);
              }

              else
              {
                v44 = 1;
              }

              if (!v44)
              {
                appendStringInfoString(a1, ", ");
                v43 = *(v12 + 4);
              }

              ++v39;
              v40 += 8;
            }

            while (v39 < v43);
          }
        }

        else if (v10 == 28)
        {
          appendStringInfoString(a1, "ALL PROCEDURES IN SCHEMA ");
          if (v12)
          {
            if (*(v12 + 4) >= 1)
            {
              v21 = 0;
              v22 = 8;
              do
              {
                v23 = *(v12 + 16);
                v24 = quote_identifier(*(*(v23 + 8 * v21) + 8));
                appendStringInfoString(a1, v24);
                v25 = *(v12 + 4);
                if (v23 + v22)
                {
                  v26 = v23 + v22 >= (*(v12 + 16) + 8 * v25);
                }

                else
                {
                  v26 = 1;
                }

                if (!v26)
                {
                  appendStringInfoString(a1, ", ");
                  v25 = *(v12 + 4);
                }

                ++v21;
                v22 += 8;
              }

              while (v21 < v25);
            }
          }
        }
      }

      else
      {
        switch(v10)
        {
          case ' ':
            appendStringInfoString(a1, "ALL ROUTINES IN SCHEMA ");
            if (v12 && *(v12 + 4) >= 1)
            {
              v27 = 0;
              v28 = 8;
              do
              {
                v29 = *(v12 + 16);
                v30 = quote_identifier(*(*(v29 + 8 * v27) + 8));
                appendStringInfoString(a1, v30);
                v31 = *(v12 + 4);
                if (v29 + v28)
                {
                  v32 = v29 + v28 >= (*(v12 + 16) + 8 * v31);
                }

                else
                {
                  v32 = 1;
                }

                if (!v32)
                {
                  appendStringInfoString(a1, ", ");
                  v31 = *(v12 + 4);
                }

                ++v27;
                v28 += 8;
              }

              while (v27 < v31);
            }

            break;
          case '#':
            appendStringInfoString(a1, "ALL SEQUENCES IN SCHEMA ");
            if (v12 && *(v12 + 4) >= 1)
            {
              v33 = 0;
              v34 = 8;
              do
              {
                v35 = *(v12 + 16);
                v36 = quote_identifier(*(*(v35 + 8 * v33) + 8));
                appendStringInfoString(a1, v36);
                v37 = *(v12 + 4);
                if (v35 + v34)
                {
                  v38 = v35 + v34 >= (*(v12 + 16) + 8 * v37);
                }

                else
                {
                  v38 = 1;
                }

                if (!v38)
                {
                  appendStringInfoString(a1, ", ");
                  v37 = *(v12 + 4);
                }

                ++v33;
                v34 += 8;
              }

              while (v33 < v37);
            }

            break;
          case '\'':
            appendStringInfoString(a1, "ALL TABLES IN SCHEMA ");
            if (v12)
            {
              if (*(v12 + 4) >= 1)
              {
                v14 = 0;
                v15 = 8;
                do
                {
                  v16 = *(v12 + 16);
                  v17 = quote_identifier(*(*(v16 + 8 * v14) + 8));
                  appendStringInfoString(a1, v17);
                  v18 = *(v12 + 4);
                  if (v16 + v15)
                  {
                    v19 = v16 + v15 >= (*(v12 + 16) + 8 * v18);
                  }

                  else
                  {
                    v19 = 1;
                  }

                  if (!v19)
                  {
                    appendStringInfoString(a1, ", ");
                    v18 = *(v12 + 4);
                  }

                  ++v14;
                  v15 += 8;
                }

                while (v14 < v18);
              }
            }

            break;
        }
      }
    }

    else if (!v11)
    {
      switch(v10)
      {
        case 9:
          v13 = "DATABASE ";
          goto LABEL_99;
        case 12:
          v45 = "DOMAIN ";
          goto LABEL_95;
        case 16:
          v13 = "FOREIGN DATA WRAPPER ";
          goto LABEL_99;
        case 17:
          v13 = "FOREIGN SERVER ";
          goto LABEL_99;
        case 19:
          v46 = "FUNCTION ";
          goto LABEL_101;
        case 21:
          v13 = "LANGUAGE ";
          goto LABEL_99;
        case 22:
          appendStringInfoString(a1, "LARGE OBJECT ");
          deparseNumericOnlyList(a1, v12);
          break;
        case 28:
          v46 = "PROCEDURE ";
          goto LABEL_101;
        case 32:
          v46 = "ROUTINE ";
LABEL_101:
          appendStringInfoString(a1, v46);
          deparseFunctionWithArgtypesList(a1, v12);
          break;
        case 34:
          v13 = "SCHEMA ";
          goto LABEL_99;
        case 35:
          appendStringInfoString(a1, "SEQUENCE ");
          goto LABEL_91;
        case 39:
LABEL_91:
          deparseQualifiedNameList(a1, v12);
          break;
        case 40:
          v13 = "TABLESPACE ";
LABEL_99:
          appendStringInfoString(a1, v13);
          deparseNameList(a1, v12);
          break;
        case 47:
          v45 = "TYPE ";
LABEL_95:
          appendStringInfoString(a1, v45);
          deparseAnyNameList(a1, v12);
          break;
        default:
          break;
      }
    }
  }

LABEL_102:
  appendStringInfoChar(a1, 32);
  if (*(a2 + 4))
  {
    v47 = "TO ";
  }

  else
  {
    v47 = "FROM ";
  }

  result = appendStringInfoString(a1, v47);
  v49 = *(a2 + 32);
  if (v49 && *(v49 + 4) >= 1)
  {
    v50 = 0;
    v51 = 8;
    do
    {
      v52 = *(v49 + 16);
      v53 = *(v52 + 8 * v50);
      v54 = *(v53 + 4);
      if (v54 > 1)
      {
        if (v54 == 2)
        {
          v55 = a1;
          v56 = "SESSION_USER";
          goto LABEL_118;
        }

        if (v54 == 3)
        {
          v55 = a1;
          v56 = "public";
          goto LABEL_118;
        }
      }

      else
      {
        if (!v54)
        {
          v56 = quote_identifier(*(v53 + 8));
          v55 = a1;
          goto LABEL_118;
        }

        if (v54 == 1)
        {
          v55 = a1;
          v56 = "CURRENT_USER";
LABEL_118:
          appendStringInfoString(v55, v56);
        }
      }

      if (v52 + v51)
      {
        v57 = v52 + v51 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
      }

      else
      {
        v57 = 1;
      }

      if (!v57)
      {
        appendStringInfoChar(a1, 44);
      }

      result = appendStringInfoChar(a1, 32);
      ++v50;
      v51 += 8;
    }

    while (v50 < *(v49 + 4));
  }

  if ((*(a2 + 4) & 1) != 0 && *(a2 + 40) == 1)
  {
    result = appendStringInfoString(a1, "WITH GRANT OPTION ");
  }

  if (*(a2 + 44) == 1)
  {
    result = appendStringInfoString(a1, "CASCADE ");
  }

  v58 = *(a1 + 2);
  v59 = __OFSUB__(v58, 1);
  v60 = v58 - 1;
  if (v60 < 0 == v59)
  {
    v61 = *a1;
    if (*(*a1 + v60) == 32)
    {
      *(a1 + 2) = v60;
      *(v61 + v60) = 0;
    }
  }

  return result;
}

uint64_t deparseIndexStmt(uint64_t *a1, uint64_t a2)
{
  appendStringInfoString(a1, "CREATE ");
  if (*(a2 + 104) == 1)
  {
    appendStringInfoString(a1, "UNIQUE ");
  }

  appendStringInfoString(a1, "INDEX ");
  if (*(a2 + 110) == 1)
  {
    appendStringInfoString(a1, "CONCURRENTLY ");
    if (*(a2 + 111) != 1)
    {
LABEL_5:
      v4 = *(a2 + 8);
      if (!v4)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (*(a2 + 111) != 1)
  {
    goto LABEL_5;
  }

  appendStringInfoString(a1, "IF NOT EXISTS ");
  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_6:
    appendStringInfoString(a1, v4);
    appendStringInfoChar(a1, 32);
  }

LABEL_7:
  appendStringInfoString(a1, "ON ");
  deparseRangeVar(a1, *(a2 + 16), 0);
  appendStringInfoChar(a1, 32);
  if (*(a2 + 24))
  {
    appendStringInfoString(a1, "USING ");
    v5 = quote_identifier(*(a2 + 24));
    appendStringInfoString(a1, v5);
    appendStringInfoChar(a1, 32);
  }

  appendStringInfoChar(a1, 40);
  v6 = *(a2 + 40);
  if (v6 && *(v6 + 4) >= 1)
  {
    v7 = 0;
    v8 = 8;
    do
    {
      v9 = *(v6 + 16);
      deparseIndexElem(a1, *(v9 + 8 * v7));
      if (v9 + v8)
      {
        v10 = v9 + v8 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        appendStringInfoString(a1, ", ");
      }

      ++v7;
      v8 += 8;
    }

    while (v7 < *(v6 + 4));
  }

  result = appendStringInfoString(a1, ") ");
  v12 = *(a2 + 48);
  if (v12 && *(v12 + 4) > 0)
  {
    appendStringInfoString(a1, "INCLUDE (");
    v13 = *(a2 + 48);
    if (v13 && *(v13 + 4) >= 1)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = *(v13 + 16);
        deparseIndexElem(a1, *(v16 + 8 * v14));
        if (v16 + v15)
        {
          v17 = v16 + v15 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          appendStringInfoString(a1, ", ");
        }

        ++v14;
        v15 += 8;
      }

      while (v14 < *(v13 + 4));
    }

    result = appendStringInfoString(a1, ") ");
  }

  v18 = *(a2 + 56);
  if (v18 && *(v18 + 4) >= 1)
  {
    appendStringInfoString(a1, "WITH ");
    deparseRelOptions(a1, v18);
    result = appendStringInfoChar(a1, 32);
  }

  if (*(a2 + 32))
  {
    appendStringInfoString(a1, "TABLESPACE ");
    v19 = quote_identifier(*(a2 + 32));
    appendStringInfoString(a1, v19);
    result = appendStringInfoChar(a1, 32);
  }

  v20 = *(a2 + 64);
  if (v20)
  {
    appendStringInfoString(a1, "WHERE ");
    deparseExpr(a1, v20);
    result = appendStringInfoChar(a1, 32);
  }

  v21 = *(a1 + 2);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v23 < 0 == v22)
  {
    v24 = *a1;
    if (*(*a1 + v23) == 32)
    {
      *(a1 + 2) = v23;
      *(v24 + v23) = 0;
    }
  }

  return result;
}

uint64_t deparseInsertStmt(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    deparseWithClause(a1, v4);
    appendStringInfoChar(a1, 32);
  }

  appendStringInfoString(a1, "INSERT INTO ");
  deparseRangeVar(a1, *(a2 + 8), 1);
  appendStringInfoChar(a1, 32);
  v5 = *(a2 + 16);
  if (v5 && *(v5 + 4) >= 1)
  {
    appendStringInfoChar(a1, 40);
    v6 = *(a2 + 16);
    if (v6 && *(v6 + 4) >= 1)
    {
      v7 = 0;
      v8 = 8;
      do
      {
        v9 = *(v6 + 16);
        v10 = *(v9 + 8 * v7);
        v11 = quote_identifier(*(v10 + 8));
        appendStringInfoString(a1, v11);
        deparseOptIndirection(a1, *(v10 + 16), 0);
        v12 = *(v6 + 4);
        if (v9 + v8)
        {
          v13 = v9 + v8 >= (*(v6 + 16) + 8 * v12);
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(a1, ", ");
          v12 = *(v6 + 4);
        }

        ++v7;
        v8 += 8;
      }

      while (v7 < v12);
    }

    appendStringInfoString(a1, ") ");
  }

  v14 = *(a2 + 56);
  if (v14 == 1)
  {
    v15 = "OVERRIDING USER VALUE ";
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_20;
    }

    v15 = "OVERRIDING SYSTEM VALUE ";
  }

  appendStringInfoString(a1, v15);
LABEL_20:
  v16 = *(a2 + 24);
  if (v16)
  {
    deparseSelectStmt(a1, v16);
    result = appendStringInfoChar(a1, 32);
    v18 = *(a2 + 32);
    if (!v18)
    {
      goto LABEL_59;
    }
  }

  else
  {
    result = appendStringInfoString(a1, "DEFAULT VALUES ");
    v18 = *(a2 + 32);
    if (!v18)
    {
      goto LABEL_59;
    }
  }

  appendStringInfoString(a1, "ON CONFLICT ");
  v19 = *(v18 + 8);
  if (v19)
  {
    v20 = *(v19 + 8);
    if (v20 && *(v20 + 4) >= 1)
    {
      appendStringInfoChar(a1, 40);
      v21 = *(v19 + 8);
      if (v21 && *(v21 + 4) >= 1)
      {
        v22 = 0;
        v23 = 8;
        do
        {
          v24 = *(v21 + 16);
          deparseIndexElem(a1, *(v24 + 8 * v22));
          if (v24 + v23)
          {
            v25 = v24 + v23 >= (*(*(v19 + 8) + 16) + 8 * *(*(v19 + 8) + 4));
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            appendStringInfoString(a1, ", ");
          }

          ++v22;
          v23 += 8;
        }

        while (v22 < *(v21 + 4));
      }

      appendStringInfoString(a1, ") ");
    }

    if (*(v19 + 24))
    {
      appendStringInfoString(a1, "ON CONSTRAINT ");
      v26 = quote_identifier(*(v19 + 24));
      appendStringInfoString(a1, v26);
      appendStringInfoChar(a1, 32);
    }

    v27 = *(v19 + 16);
    if (v27)
    {
      appendStringInfoString(a1, "WHERE ");
      deparseExpr(a1, v27);
      appendStringInfoChar(a1, 32);
    }

    v28 = *(a1 + 2);
    v29 = __OFSUB__(v28, 1);
    v30 = v28 - 1;
    if (v30 < 0 == v29)
    {
      v31 = *a1;
      if (*(*a1 + v30) == 32)
      {
        *(a1 + 2) = v30;
        *(v31 + v30) = 0;
      }
    }

    appendStringInfoChar(a1, 32);
  }

  v32 = *(v18 + 4);
  if (v32 == 1)
  {
    v33 = "DO NOTHING ";
  }

  else
  {
    if (v32 != 2)
    {
      goto LABEL_50;
    }

    v33 = "DO UPDATE ";
  }

  appendStringInfoString(a1, v33);
LABEL_50:
  v34 = *(v18 + 16);
  if (v34 && *(v34 + 4) >= 1)
  {
    appendStringInfoString(a1, "SET ");
    deparseSetClauseList(a1, *(v18 + 16));
    appendStringInfoChar(a1, 32);
  }

  v35 = *(v18 + 24);
  if (v35)
  {
    appendStringInfoString(a1, "WHERE ");
    deparseExpr(a1, v35);
    appendStringInfoChar(a1, 32);
  }

  v36 = *(a1 + 2);
  v29 = __OFSUB__(v36, 1);
  v37 = v36 - 1;
  if (v37 < 0 == v29)
  {
    v38 = *a1;
    if (*(*a1 + v37) == 32)
    {
      *(a1 + 2) = v37;
      *(v38 + v37) = 0;
    }
  }

  result = appendStringInfoChar(a1, 32);
LABEL_59:
  v39 = *(a2 + 40);
  if (v39 && *(v39 + 4) >= 1)
  {
    appendStringInfoString(a1, "RETURNING ");
    result = deparseTargetList(a1, *(a2 + 40));
  }

  v40 = *(a1 + 2);
  v29 = __OFSUB__(v40, 1);
  v41 = v40 - 1;
  if (v41 < 0 == v29)
  {
    v42 = *a1;
    if (*(*a1 + v41) == 32)
    {
      *(a1 + 2) = v41;
      *(v42 + v41) = 0;
    }
  }

  return result;
}

uint64_t deparseSelectStmt(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 120);
  if (v4)
  {
    deparseWithClause(a1, v4);
    appendStringInfoChar(a1, 32);
  }

  v5 = *(v2 + 128);
  if ((v5 - 1) < 3)
  {
    v6 = *(v2 + 136);
    v7 = *(v6 + 80);
    if (v7 && *(v7 + 4) > 0 || *(v6 + 88) || *(v6 + 96) || (v30 = *(v6 + 112)) != 0 && *(v30 + 4) > 0 || *(v6 + 120))
    {
      v8 = 1;
      v9 = *(v2 + 144);
      v10 = *(v9 + 80);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *(v6 + 128) != 0;
      v9 = *(v2 + 144);
      v10 = *(v9 + 80);
      if (!v10)
      {
LABEL_10:
        if (!*(v9 + 88) && !*(v9 + 96))
        {
          v31 = *(v9 + 112);
          if ((!v31 || *(v31 + 4) <= 0) && !*(v9 + 120))
          {
            v11 = *(v9 + 128) != 0;
            v12 = a1;
            if (!v8)
            {
LABEL_57:
              deparseSelectStmt(v12, v6);
              v13 = *(v2 + 128) - 1;
              if (v13 > 2)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }

LABEL_13:
            appendStringInfoChar(v12, 40);
            deparseSelectStmt(a1, *(v2 + 136));
            appendStringInfoChar(a1, 41);
            v13 = *(v2 + 128) - 1;
            if (v13 > 2)
            {
LABEL_59:
              if (*(v2 + 132) == 1)
              {
                appendStringInfoString(a1, "ALL ");
                if (!v11)
                {
LABEL_61:
                  deparseSelectStmt(a1, *(v2 + 144));
LABEL_64:
                  appendStringInfoChar(a1, 32);
                  goto LABEL_65;
                }
              }

              else if (!v11)
              {
                goto LABEL_61;
              }

              appendStringInfoChar(a1, 40);
              deparseSelectStmt(a1, *(v2 + 144));
              appendStringInfoChar(a1, 41);
              goto LABEL_64;
            }

LABEL_58:
            appendStringInfoString(a1, (&off_2797B6BF0)[v13]);
            goto LABEL_59;
          }
        }

LABEL_12:
        v11 = 1;
        v12 = a1;
        if (!v8)
        {
          goto LABEL_57;
        }

        goto LABEL_13;
      }
    }

    if (*(v10 + 4) > 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_65;
  }

  v14 = *(v2 + 72);
  if (v14 && *(v14 + 4) >= 1)
  {
    appendStringInfoString(a1, "VALUES ");
    v15 = *(v2 + 72);
    if (v15 && *(v15 + 4) >= 1)
    {
      v16 = 0;
      do
      {
        v17 = (*(v15 + 16) + 8 * v16);
        appendStringInfoChar(a1, 40);
        v18 = *v17;
        if (*v17 && *(v18 + 4) >= 1)
        {
          v19 = 0;
          v20 = 8;
          do
          {
            v21 = *(v18 + 16);
            deparseExpr(a1, *(v21 + 8 * v19));
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
              appendStringInfoString(a1, ", ");
              v22 = *(v18 + 4);
            }

            ++v19;
            v20 += 8;
          }

          while (v19 < v22);
        }

        appendStringInfoChar(a1, 41);
        if (v17 != -8 && (v17 + 1) < *(*(v2 + 72) + 16) + 8 * *(*(v2 + 72) + 4))
        {
          appendStringInfoString(a1, ", ");
        }

        ++v16;
      }

      while (v16 < *(v15 + 4));
    }

    goto LABEL_64;
  }

  appendStringInfoString(a1, "SELECT ");
  v25 = *(v2 + 24);
  if (v25 && *(v25 + 4) >= 1)
  {
    if (*(v2 + 8))
    {
      appendStringInfoString(a1, "DISTINCT ");
      v26 = *(v2 + 8);
      if (v26)
      {
        if (*(v26 + 4) >= 1 && **(v26 + 16))
        {
          appendStringInfoString(a1, "ON (");
          deparseExprList(a1, *(v2 + 8));
          appendStringInfoString(a1, ") ");
        }
      }
    }

    deparseTargetList(a1, *(v2 + 24));
    appendStringInfoChar(a1, 32);
  }

  if (*(v2 + 16))
  {
    appendStringInfoString(a1, "INTO ");
    v27 = *(v2 + 16);
    v28 = *(*(v27 + 8) + 33);
    if (v28 == 117)
    {
      v29 = "UNLOGGED ";
    }

    else
    {
      if (v28 != 116)
      {
LABEL_133:
        deparseIntoClause(a1, v27);
        appendStringInfoChar(a1, 32);
        goto LABEL_134;
      }

      v29 = "TEMPORARY ";
    }

    appendStringInfoString(a1, v29);
    v27 = *(v2 + 16);
    goto LABEL_133;
  }

LABEL_134:
  v58 = *(v2 + 32);
  if (v58 && *(v58 + 4) >= 1)
  {
    appendStringInfoString(a1, "FROM ");
    if (*(v58 + 4) >= 1)
    {
      v59 = 0;
      v60 = 8;
      do
      {
        v61 = *(v58 + 16);
        deparseTableRef(a1, *(v61 + 8 * v59));
        v62 = *(v58 + 4);
        if (v61 + v60)
        {
          v63 = v61 + v60 >= (*(v58 + 16) + 8 * v62);
        }

        else
        {
          v63 = 1;
        }

        if (!v63)
        {
          appendStringInfoString(a1, ", ");
          v62 = *(v58 + 4);
        }

        ++v59;
        v60 += 8;
      }

      while (v59 < v62);
    }

    appendStringInfoChar(a1, 32);
  }

  v64 = *(v2 + 40);
  if (v64)
  {
    appendStringInfoString(a1, "WHERE ");
    deparseExpr(a1, v64);
    appendStringInfoChar(a1, 32);
  }

  v65 = *(v2 + 48);
  if (v65 && *(v65 + 4) >= 1)
  {
    appendStringInfoString(a1, "GROUP BY ");
    v66 = *(v2 + 48);
    if (v66 && *(v66 + 4) >= 1)
    {
      v67 = 0;
      v68 = 8;
      do
      {
        v69 = *(v66 + 16);
        v70 = *(v69 + 8 * v67);
        if (*v70 == 376)
        {
          deparseGroupingSet(a1, v70);
        }

        else
        {
          deparseExpr(a1, v70);
        }

        v71 = *(v66 + 4);
        if (v69 + v68)
        {
          v72 = v69 + v68 >= (*(v66 + 16) + 8 * v71);
        }

        else
        {
          v72 = 1;
        }

        if (!v72)
        {
          appendStringInfoString(a1, ", ");
          v71 = *(v66 + 4);
        }

        ++v67;
        v68 += 8;
      }

      while (v67 < v71);
    }

    appendStringInfoChar(a1, 32);
  }

  if (*(v2 + 56))
  {
    appendStringInfoString(a1, "HAVING ");
    deparseExpr(a1, *(v2 + 56));
    appendStringInfoChar(a1, 32);
  }

  if (*(v2 + 64))
  {
    appendStringInfoString(a1, "WINDOW ");
    v73 = *(v2 + 64);
    if (v73 && *(v73 + 4) >= 1)
    {
      v74 = 0;
      v75 = 8;
      do
      {
        v76 = *(v73 + 16);
        v77 = *(v76 + 8 * v74);
        appendStringInfoString(a1, *(v77 + 8));
        appendStringInfoString(a1, " AS ");
        deparseWindowDef(a1, v77);
        if (v76 + v75)
        {
          v78 = v76 + v75 >= (*(*(v2 + 64) + 16) + 8 * *(*(v2 + 64) + 4));
        }

        else
        {
          v78 = 1;
        }

        if (!v78)
        {
          appendStringInfoString(a1, ", ");
        }

        ++v74;
        v75 += 8;
      }

      while (v74 < *(v73 + 4));
    }

    goto LABEL_64;
  }

LABEL_65:
  result = deparseOptSortClause(a1, *(v2 + 80));
  if (!*(v2 + 96))
  {
    goto LABEL_179;
  }

  v33 = *(v2 + 104);
  if (v33 == 1)
  {
    v34 = "LIMIT ";
  }

  else
  {
    if (v33 != 2)
    {
      goto LABEL_71;
    }

    v34 = "FETCH FIRST ";
  }

  appendStringInfoString(a1, v34);
LABEL_71:
  v35 = *(v2 + 96);
  v36 = *v35;
  if (*v35 > 347)
  {
    if (v36 > 352)
    {
      switch(v36)
      {
        case 353:
          deparseAIndirection(a1, *(v2 + 96));
          break;
        case 354:
          appendStringInfoString(a1, "ARRAY[");
          v52 = *(v35 + 8);
          if (v52 && *(v52 + 4) >= 1)
          {
            v53 = 0;
            v54 = 8;
            do
            {
              v55 = *(v52 + 16);
              deparseExpr(a1, *(v55 + 8 * v53));
              v56 = *(v52 + 4);
              if (v55 + v54)
              {
                v57 = v55 + v54 >= (*(v52 + 16) + 8 * v56);
              }

              else
              {
                v57 = 1;
              }

              if (!v57)
              {
                appendStringInfoString(a1, ", ");
                v56 = *(v52 + 4);
              }

              ++v53;
              v54 += 8;
            }

            while (v53 < v56);
          }

          appendStringInfoChar(a1, 93);
          goto LABEL_177;
        case 357:
          deparseTypeCast(a1, *(v2 + 96));
          break;
        default:
          goto LABEL_216;
      }
    }

    else
    {
      switch(v36)
      {
        case 348:
          if (*(v35 + 4))
          {
            appendStringInfo(a1, "$%d", *(v35 + 4));
          }

          else
          {
            appendStringInfoChar(a1, 63);
          }

          break;
        case 349:
          v51 = *(v35 + 8);
          v50 = v35 + 8;
          if (v51 == 225)
          {
            appendStringInfoString(a1, "ALL");
          }

          else
          {
            deparseValue(a1, v50, 11);
          }

          break;
        case 350:
          deparseFuncCall(a1, *(v2 + 96));
          break;
        default:
          goto LABEL_216;
      }
    }

    goto LABEL_177;
  }

  if (v36 > 133)
  {
    switch(v36)
    {
      case 134:
        if (!*(v35 + 20))
        {
          appendStringInfoString(a1, "ROW");
        }

        appendStringInfoString(a1, "(");
        v44 = *(v35 + 8);
        if (v44 && *(v44 + 4) >= 1)
        {
          v45 = 0;
          v46 = 8;
          do
          {
            v47 = *(v44 + 16);
            deparseExpr(a1, *(v47 + 8 * v45));
            v48 = *(v44 + 4);
            if (v47 + v46)
            {
              v49 = v47 + v46 >= (*(v44 + 16) + 8 * v48);
            }

            else
            {
              v49 = 1;
            }

            if (!v49)
            {
              appendStringInfoString(a1, ", ");
              v48 = *(v44 + 4);
            }

            ++v45;
            v46 += 8;
          }

          while (v45 < v48);
        }

        break;
      case 346:
        appendStringInfoChar(a1, 40);
        deparseAExpr(a1, v35);
        break;
      case 347:
        v37 = **(*(v35 + 8) + 16);
        if (*v37 == 223)
        {
          v79 = quote_identifier(*(v37 + 8));
          appendStringInfoString(a1, v79);
        }

        else if (*v37 == 351)
        {
          appendStringInfoChar(a1, 42);
        }

        deparseOptIndirection(a1, *(v35 + 8), 1);
        goto LABEL_177;
      default:
        goto LABEL_216;
    }

    goto LABEL_119;
  }

  if (v36 == 110)
  {
    appendStringInfoString(a1, "GROUPING(");
    v38 = *(v35 + 8);
    if (v38 && *(v38 + 4) >= 1)
    {
      v39 = 0;
      v40 = 8;
      do
      {
        v41 = *(v38 + 16);
        deparseExpr(a1, *(v41 + 8 * v39));
        v42 = *(v38 + 4);
        if (v41 + v40)
        {
          v43 = v41 + v40 >= (*(v38 + 16) + 8 * v42);
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          appendStringInfoString(a1, ", ");
          v42 = *(v38 + 4);
        }

        ++v39;
        v40 += 8;
      }

      while (v39 < v42);
    }

LABEL_119:
    appendStringInfoChar(a1, 41);
    goto LABEL_177;
  }

  if (v36 != 120)
  {
    if (v36 == 130)
    {
      deparseCaseExpr(a1, *(v2 + 96));
      goto LABEL_177;
    }

LABEL_216:
    deparseSelectStmt_cold_1();
  }

  deparseSubLink(a1, *(v2 + 96));
LABEL_177:
  result = appendStringInfoChar(a1, 32);
  if (*(v2 + 104) == 2)
  {
    result = appendStringInfoString(a1, "ROWS WITH TIES ");
  }

LABEL_179:
  if (*(v2 + 88))
  {
    appendStringInfoString(a1, "OFFSET ");
    deparseExpr(a1, *(v2 + 88));
    result = appendStringInfoChar(a1, 32);
  }

  v80 = *(v2 + 112);
  if (v80 && *(v80 + 4) >= 1)
  {
    v81 = 0;
    while (1)
    {
      v82 = v2;
      v83 = *(v80 + 16) + 8 * v81;
      v84 = *v83;
      v85 = *(*v83 + 16) - 1;
      if (v85 <= 3)
      {
        appendStringInfoString(a1, (&off_2797B6C08)[v85]);
      }

      v86 = *(v84 + 8);
      if (v86)
      {
        if (*(v86 + 4) >= 1)
        {
          appendStringInfoString(a1, "OF ");
          v87 = *(v84 + 8);
          if (v87)
          {
            if (*(v87 + 4) >= 1)
            {
              v88 = 0;
              v89 = 8;
              do
              {
                v90 = *(v87 + 16);
                deparseRangeVar(a1, *(v90 + 8 * v88), 0);
                v91 = *(v87 + 4);
                if (v90 + v89)
                {
                  v92 = v90 + v89 >= (*(v87 + 16) + 8 * v91);
                }

                else
                {
                  v92 = 1;
                }

                if (!v92)
                {
                  appendStringInfoString(a1, ", ");
                  v91 = *(v87 + 4);
                }

                ++v88;
                v89 += 8;
              }

              while (v88 < v91);
            }
          }
        }
      }

      v93 = *(v84 + 20);
      if (v93 == 2)
      {
        v94 = "NOWAIT";
        v2 = v82;
      }

      else
      {
        v2 = v82;
        if (v93 != 1)
        {
          goto LABEL_203;
        }

        v94 = "SKIP LOCKED";
      }

      appendStringInfoString(a1, v94);
LABEL_203:
      v95 = *(a1 + 2);
      v96 = __OFSUB__(v95, 1);
      v97 = v95 - 1;
      if (v97 < 0 == v96)
      {
        v98 = *a1;
        if (*(*a1 + v97) == 32)
        {
          *(a1 + 2) = v97;
          *(v98 + v97) = 0;
        }
      }

      if (v83 != -8 && v83 + 8 < (*(*(v2 + 112) + 16) + 8 * *(*(v2 + 112) + 4)))
      {
        appendStringInfoString(a1, " ");
      }

      if (++v81 >= *(v80 + 4))
      {
        result = appendStringInfoChar(a1, 32);
        break;
      }
    }
  }

  v100 = *(a1 + 2);
  v96 = __OFSUB__(v100, 1);
  v101 = v100 - 1;
  if (v101 < 0 == v96)
  {
    v102 = *a1;
    if (*(*a1 + v101) == 32)
    {
      *(a1 + 2) = v101;
      *(v102 + v101) = 0;
    }
  }

  return result;
}

uint64_t deparseUpdateStmt(uint64_t *a1, void *a2)
{
  v4 = a2[6];
  if (v4)
  {
    deparseWithClause(a1, v4);
    appendStringInfoChar(a1, 32);
  }

  appendStringInfoString(a1, "UPDATE ");
  deparseRangeVar(a1, a2[1], 0);
  result = appendStringInfoChar(a1, 32);
  v6 = a2[2];
  if (v6 && *(v6 + 4) >= 1)
  {
    appendStringInfoString(a1, "SET ");
    deparseSetClauseList(a1, a2[2]);
    result = appendStringInfoChar(a1, 32);
  }

  v7 = a2[4];
  if (v7 && *(v7 + 4) >= 1)
  {
    appendStringInfoString(a1, "FROM ");
    if (*(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        deparseTableRef(a1, *(v10 + 8 * v8));
        v11 = *(v7 + 4);
        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(v7 + 16) + 8 * v11);
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ", ");
          v11 = *(v7 + 4);
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < v11);
    }

    result = appendStringInfoChar(a1, 32);
  }

  v13 = a2[3];
  if (v13)
  {
    appendStringInfoString(a1, "WHERE ");
    deparseExpr(a1, v13);
    result = appendStringInfoChar(a1, 32);
  }

  v14 = a2[5];
  if (v14 && *(v14 + 4) >= 1)
  {
    appendStringInfoString(a1, "RETURNING ");
    result = deparseTargetList(a1, a2[5]);
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

uint64_t deparseVariableSetStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        appendStringInfoString(result, "RESET ");
        v6 = quote_identifier(*(a2 + 8));
      }

      else
      {
        if (v4 != 5)
        {
          return result;
        }

        v6 = "RESET ALL";
      }

      goto LABEL_44;
    }

    appendStringInfoString(result, "SET ");
    if (*(a2 + 24) == 1)
    {
      appendStringInfoString(v3, "LOCAL ");
    }

    v17 = *(a2 + 8);
    if (!strcmp(v17, "TRANSACTION"))
    {
      v19 = "TRANSACTION ";
    }

    else
    {
      if (strcmp(v17, "SESSION CHARACTERISTICS"))
      {
        result = strcmp(v17, "TRANSACTION SNAPSHOT");
        if (!result)
        {
          appendStringInfoString(v3, "TRANSACTION SNAPSHOT ");
          v21 = *(**(*(a2 + 16) + 16) + 16);

          return deparseStringLiteral(v3, v21);
        }

        return result;
      }

      v19 = "SESSION CHARACTERISTICS AS TRANSACTION ";
    }

    appendStringInfoString(v3, v19);
    v20 = *(a2 + 16);

    return deparseTransactionModeList(v3, v20);
  }

  else
  {
    if (v4)
    {
      if (v4 == 1)
      {
        appendStringInfoString(result, "SET ");
        if (*(a2 + 24) == 1)
        {
          appendStringInfoString(v3, "LOCAL ");
        }

        v18 = quote_identifier(*(a2 + 8));
        appendStringInfoString(v3, v18);
        v6 = " TO DEFAULT";
      }

      else
      {
        if (v4 != 2)
        {
          return result;
        }

        appendStringInfoString(result, "SET ");
        if (*(a2 + 24) == 1)
        {
          appendStringInfoString(v3, "LOCAL ");
        }

        v5 = quote_identifier(*(a2 + 8));
        appendStringInfoString(v3, v5);
        v6 = " FROM CURRENT";
      }

LABEL_44:

      return appendStringInfoString(v3, v6);
    }

    appendStringInfoString(result, "SET ");
    if (*(a2 + 24) == 1)
    {
      appendStringInfoString(v3, "LOCAL ");
    }

    v7 = quote_identifier(*(a2 + 8));
    appendStringInfoString(v3, v7);
    result = appendStringInfoString(v3, " TO ");
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (*v12 == 349)
        {
          v14 = *(v12 + 8);
          switch(v14)
          {
            case 223:
              result = deparseOptBooleanOrString(v3, *(v12 + 16));
              break;
            case 222:
              result = appendStringInfoString(v3, *(v12 + 16));
              break;
            case 221:
              result = appendStringInfo(v3, "%d", *(v12 + 16));
              break;
          }
        }

        else if (*v12 == 348)
        {
          v13 = *(v12 + 4);
          if (v13)
          {
            result = appendStringInfo(v3, "$%d", v13);
          }

          else
          {
            result = appendStringInfoChar(v3, 63);
          }
        }

        v15 = *(v8 + 4);
        if (v11 + v10)
        {
          v16 = v11 + v10 >= (*(v8 + 16) + 8 * v15);
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          result = appendStringInfoString(v3, ", ");
          v15 = *(v8 + 4);
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < v15);
    }
  }

  return result;
}

uint64_t deparseViewStmt(uint64_t a1, uint64_t a2)
{
  appendStringInfoString(a1, "CREATE ");
  if (*(a2 + 32) == 1)
  {
    appendStringInfoString(a1, "OR REPLACE ");
  }

  v4 = *(*(a2 + 8) + 33);
  if (v4 == 117)
  {
    v5 = "UNLOGGED ";
    goto LABEL_7;
  }

  if (v4 == 116)
  {
    v5 = "TEMPORARY ";
LABEL_7:
    appendStringInfoString(a1, v5);
  }

  appendStringInfoString(a1, "VIEW ");
  deparseRangeVar(a1, *(a2 + 8), 0);
  appendStringInfoChar(a1, 32);
  v6 = *(a2 + 16);
  if (v6 && *(v6 + 4) >= 1)
  {
    appendStringInfoChar(a1, 40);
    v7 = *(a2 + 16);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = quote_identifier(*(*(v10 + 8 * v8) + 8));
        appendStringInfoString(a1, v11);
        v12 = *(v7 + 4);
        if (v10 + v9)
        {
          v13 = v10 + v9 >= (*(v7 + 16) + 8 * v12);
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(a1, ", ");
          v12 = *(v7 + 4);
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < v12);
    }

    appendStringInfoString(a1, ") ");
  }

  v14 = *(a2 + 40);
  if (v14 && *(v14 + 4) >= 1)
  {
    appendStringInfoString(a1, "WITH ");
    deparseRelOptions(a1, v14);
    appendStringInfoChar(a1, 32);
  }

  appendStringInfoString(a1, "AS ");
  deparseSelectStmt(a1, *(a2 + 24));
  result = appendStringInfoChar(a1, 32);
  v16 = *(a2 + 48);
  if (v16 == 1)
  {
    v17 = "WITH LOCAL CHECK OPTION ";
  }

  else
  {
    if (v16 != 2)
    {
      goto LABEL_28;
    }

    v17 = "WITH CHECK OPTION ";
  }

  result = appendStringInfoString(a1, v17);
LABEL_28:
  v18 = *(a1 + 8);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v20 < 0 == v19)
  {
    v21 = *a1;
    if (*(*a1 + v20) == 32)
    {
      *(a1 + 8) = v20;
      *(v21 + v20) = 0;
    }
  }

  return result;
}

void *deparseCreatedbOptList(void *result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    for (i = 0; i < *(a2 + 4); ++i)
    {
      v5 = *(a2 + 16) + 8 * i;
      v6 = *v5;
      v7 = *(*v5 + 16);
      if (!strcmp(v7, "connection_limit"))
      {
        appendStringInfoString(v3, "CONNECTION LIMIT");
        result = appendStringInfoChar(v3, 32);
        v14 = *(v6 + 24);
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v9 = pstrdup(v7, v8);
        v10 = v9;
        v11 = *v9;
        if (*v9)
        {
          v12 = v9 + 1;
          do
          {
            *(v12 - 1) = pg_toupper(v11);
            v13 = *v12++;
            v11 = v13;
          }

          while (v13);
        }

        appendStringInfoString(v3, v10);
        pfree(v10);
        result = appendStringInfoChar(v3, 32);
        v14 = *(v6 + 24);
        if (!v14)
        {
LABEL_15:
          result = appendStringInfoString(v3, "DEFAULT");
LABEL_16:
          v15 = v5 + 8;
          if (v5 != -8)
          {
            goto LABEL_17;
          }

          continue;
        }
      }

      if (*v14 != 223)
      {
        if (*v14 == 221)
        {
          result = appendStringInfo(v3, "%d", *(v14 + 8));
          v15 = v5 + 8;
          if (v5 != -8)
          {
            goto LABEL_17;
          }

          continue;
        }

        goto LABEL_16;
      }

      result = deparseOptBooleanOrString(v3, *(v14 + 8));
      v15 = v5 + 8;
      if (v5 != -8)
      {
LABEL_17:
        if (v15 < *(a2 + 16) + 8 * *(a2 + 4))
        {
          result = appendStringInfoChar(v3, 32);
        }
      }
    }
  }

  return result;
}

void *deparseOptBooleanOrString(void *result, char *__s1)
{
  if (!__s1)
  {
    return result;
  }

  v3 = result;
  if (!strcmp(__s1, "true"))
  {
    v5 = "TRUE";
    v6 = v3;

    return appendStringInfoString(v6, v5);
  }

  if (!strcmp(__s1, "false"))
  {
    v5 = "FALSE";
    v6 = v3;

    return appendStringInfoString(v6, v5);
  }

  if (*__s1 == 111 && __s1[1] == 110 && !__s1[2])
  {
    v5 = "ON";
    v6 = v3;

    return appendStringInfoString(v6, v5);
  }

  if (!strcmp(__s1, "off"))
  {
    v5 = "OFF";
    v6 = v3;

    return appendStringInfoString(v6, v5);
  }

  v4 = strlen(__s1);
  if (!v4)
  {
    v5 = "''";
    v6 = v3;

    return appendStringInfoString(v6, v5);
  }

  if (v4 < 0x40)
  {
    v5 = quote_identifier(__s1);
    v6 = v3;

    return appendStringInfoString(v6, v5);
  }

  return deparseStringLiteral(v3, __s1);
}

uint64_t deparseStringLiteral(uint64_t a1, char *__s)
{
  v2 = __s;
  if (strchr(__s, 92))
  {
    appendStringInfoChar(a1, 69);
  }

  appendStringInfoChar(a1, 39);
  while (1)
  {
    v4 = *v2;
    v5 = *v2;
    if (v4 == 39 || v4 == 92)
    {
      appendStringInfoChar(a1, v4);
      goto LABEL_5;
    }

    if (!*v2)
    {
      break;
    }

LABEL_5:
    appendStringInfoChar(a1, v5);
    ++v2;
  }

  return appendStringInfoChar(a1, 39);
}

void *deparseNameList(void *result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      v7 = quote_identifier(*(*(v6 + 8 * v4) + 8));
      result = appendStringInfoString(v3, v7);
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

uint64_t *deparseExpr(uint64_t *result, int *a2)
{
  v2 = a2;
  v3 = result;
  v4 = *a2;
  if (*a2 > 345)
  {
LABEL_10:
    if (v4 <= 352)
    {
      if (v4 <= 347)
      {
        if (v4 == 346)
        {

          return deparseAExpr(v3, v2);
        }

        if (v4 == 347)
        {
          v16 = **(*(v2 + 1) + 16);
          if (*v16 == 223)
          {
            v61 = quote_identifier(*(v16 + 8));
            appendStringInfoString(v3, v61);
          }

          else if (*v16 == 351)
          {
            appendStringInfoChar(v3, 42);
          }

          v62 = *(v2 + 1);

          return deparseOptIndirection(v3, v62, 1);
        }
      }

      else
      {
        switch(v4)
        {
          case 348:
            if (!v2[1])
            {
              v47 = v3;
              v48 = 63;
              goto LABEL_162;
            }

            return appendStringInfo(v3, "$%d");
          case 349:

            return deparseValue(v3, (v2 + 2), 11);
          case 350:

            return deparseFuncCall(v3, v2);
        }
      }

LABEL_180:
      deparseExpr_cold_1();
    }

    if (v4 <= 356)
    {
      if (v4 == 353)
      {

        return deparseAIndirection(v3, v2);
      }

      if (v4 == 354)
      {
        appendStringInfoString(v3, "ARRAY[");
        v17 = *(v2 + 1);
        if (v17 && *(v17 + 4) >= 1)
        {
          v18 = 0;
          v19 = 8;
          do
          {
            v20 = *(v17 + 16);
            deparseExpr(v3, *(v20 + 8 * v18));
            v21 = *(v17 + 4);
            if (v20 + v19)
            {
              v22 = v20 + v19 >= (*(v17 + 16) + 8 * v21);
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              appendStringInfoString(v3, ", ");
              v21 = *(v17 + 4);
            }

            ++v18;
            v19 += 8;
          }

          while (v18 < v21);
        }

        v47 = v3;
        v48 = 93;
        goto LABEL_162;
      }

      goto LABEL_180;
    }

    if (v4 == 357)
    {

      return deparseTypeCast(v3, v2);
    }

    if (v4 == 358)
    {

      return deparseCollateClause(v3, v2);
    }

    if (v4 != 385)
    {
      goto LABEL_180;
    }

    appendStringInfoString(v3, "xmlserialize(");
    v8 = v2[1];
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_168;
      }

      v9 = "content ";
    }

    else
    {
      v9 = "document ";
    }

    appendStringInfoString(v3, v9);
LABEL_168:
    deparseExpr(v3, *(v2 + 1));
    appendStringInfoString(v3, " AS ");
    deparseTypeName(v3, *(v2 + 2));
    v23 = ")";
LABEL_169:

    return appendStringInfoString(v3, v23);
  }

  while (2)
  {
    switch(v4)
    {
      case 110:
        appendStringInfoString(v3, "GROUPING(");
        v33 = *(v2 + 1);
        if (v33 && *(v33 + 4) >= 1)
        {
          v34 = 0;
          v35 = 8;
          do
          {
            v36 = *(v33 + 16);
            deparseExpr(v3, *(v36 + 8 * v34));
            v37 = *(v33 + 4);
            if (v36 + v35)
            {
              v38 = v36 + v35 >= (*(v33 + 16) + 8 * v37);
            }

            else
            {
              v38 = 1;
            }

            if (!v38)
            {
              appendStringInfoString(v3, ", ");
              v37 = *(v33 + 4);
            }

            ++v34;
            v35 += 8;
          }

          while (v34 < v37);
        }

        goto LABEL_161;
      case 119:
        v5 = v2[1];
        if (v5 != 2)
        {
          if (v5 == 1)
          {
            v49 = *(v2 + 1);
            if (v49 && *(v49 + 4) >= 1)
            {
              v50 = 0;
              v51 = 0;
              do
              {
                v52 = *(v49 + 16);
                v53 = *(v52 + v50);
                if (*v53 == 119 && v53[1] <= 1)
                {
                  appendStringInfoChar(v3, 40);
                  deparseExpr(v3, *(v52 + v50));
                  result = appendStringInfoChar(v3, 41);
                }

                else
                {
                  result = deparseExpr(v3, v53);
                }

                if (v52 + v50 != -8 && v52 + v50 + 8 < (*(*(v2 + 1) + 16) + 8 * *(*(v2 + 1) + 4)))
                {
                  result = appendStringInfoString(v3, " OR ");
                }

                ++v51;
                v50 += 8;
              }

              while (v51 < *(v49 + 4));
            }
          }

          else if (!v5)
          {
            v10 = *(v2 + 1);
            if (v10)
            {
              if (*(v10 + 4) >= 1)
              {
                v11 = 0;
                v12 = 0;
                do
                {
                  v13 = *(v10 + 16);
                  v14 = *(v13 + v11);
                  if (*v14 == 119 && v14[1] <= 1)
                  {
                    appendStringInfoChar(v3, 40);
                    deparseExpr(v3, *(v13 + v11));
                    result = appendStringInfoChar(v3, 41);
                  }

                  else
                  {
                    result = deparseExpr(v3, v14);
                  }

                  if (v13 + v11 != -8 && v13 + v11 + 8 < (*(*(v2 + 1) + 16) + 8 * *(*(v2 + 1) + 4)))
                  {
                    result = appendStringInfoString(v3, " AND ");
                  }

                  ++v12;
                  v11 += 8;
                }

                while (v12 < *(v10 + 4));
              }
            }
          }

          return result;
        }

        v6 = **(*(v2 + 1) + 16);
        if (*v6 != 119)
        {
          result = appendStringInfoString(v3, "NOT ");
LABEL_9:
          v2 = **(*(v2 + 1) + 16);
          v4 = *v2;
          if (*v2 > 345)
          {
            goto LABEL_10;
          }

          continue;
        }

        v7 = v6[1];
        if (v7)
        {
          result = appendStringInfoString(v3, "NOT ");
          if (v7 == 1)
          {
            goto LABEL_148;
          }

          goto LABEL_9;
        }

        appendStringInfoString(v3, "NOT ");
LABEL_148:
        appendStringInfoChar(v3, 40);
        deparseExpr(v3, **(*(v2 + 1) + 16));
LABEL_161:
        v47 = v3;
        v48 = 41;
LABEL_162:

        return appendStringInfoChar(v47, v48);
      case 120:

        return deparseSubLink(v3, v2);
      case 130:

        return deparseCaseExpr(v3, v2);
      case 134:
        if (!v2[5])
        {
          appendStringInfoString(v3, "ROW");
        }

        appendStringInfoString(v3, "(");
        v27 = *(v2 + 1);
        if (v27 && *(v27 + 4) >= 1)
        {
          v28 = 0;
          v29 = 8;
          do
          {
            v30 = *(v27 + 16);
            deparseExpr(v3, *(v30 + 8 * v28));
            v31 = *(v27 + 4);
            if (v30 + v29)
            {
              v32 = v30 + v29 >= (*(v27 + 16) + 8 * v31);
            }

            else
            {
              v32 = 1;
            }

            if (!v32)
            {
              appendStringInfoString(v3, ", ");
              v31 = *(v27 + 4);
            }

            ++v28;
            v29 += 8;
          }

          while (v28 < v31);
        }

        goto LABEL_161;
      case 136:
        appendStringInfoString(v3, "COALESCE(");
        v41 = *(v2 + 2);
        if (v41 && *(v41 + 4) >= 1)
        {
          v42 = 0;
          v43 = 8;
          do
          {
            v44 = *(v41 + 16);
            deparseExpr(v3, *(v44 + 8 * v42));
            v45 = *(v41 + 4);
            if (v44 + v43)
            {
              v46 = v44 + v43 >= (*(v41 + 16) + 8 * v45);
            }

            else
            {
              v46 = 1;
            }

            if (!v46)
            {
              appendStringInfoString(v3, ", ");
              v45 = *(v41 + 4);
            }

            ++v42;
            v43 += 8;
          }

          while (v42 < v45);
        }

        goto LABEL_161;
      case 137:
        v25 = v2[4];
        if (v25)
        {
          if (v25 != 1)
          {
            goto LABEL_152;
          }

          v26 = "LEAST(";
        }

        else
        {
          v26 = "GREATEST(";
        }

        appendStringInfoString(v3, v26);
LABEL_152:
        v55 = *(v2 + 3);
        if (v55 && *(v55 + 4) >= 1)
        {
          v56 = 0;
          v57 = 8;
          do
          {
            v58 = *(v55 + 16);
            deparseExpr(v3, *(v58 + 8 * v56));
            v59 = *(v55 + 4);
            if (v58 + v57)
            {
              v60 = v58 + v57 >= (*(v55 + 16) + 8 * v59);
            }

            else
            {
              v60 = 1;
            }

            if (!v60)
            {
              appendStringInfoString(v3, ", ");
              v59 = *(v55 + 4);
            }

            ++v56;
            v57 += 8;
          }

          while (v56 < v59);
        }

        goto LABEL_161;
      case 138:
        v24 = v2[1];
        if (v24 <= 0xE)
        {
          result = appendStringInfoString(v3, (&off_2797B6C40)[v24]);
        }

        if (v2[3] != -1)
        {
          return appendStringInfo(v3, "(%d)");
        }

        return result;
      case 139:

        return deparseXmlExpr(v3, v2);
      case 140:
        result = deparseExpr(v3, *(v2 + 1));
        v39 = v2[4];
        if (v39 == 1)
        {
          v23 = " IS NOT NULL";
        }

        else
        {
          if (v39)
          {
            return result;
          }

          v23 = " IS NULL";
        }

        goto LABEL_169;
      case 141:
        result = deparseExpr(v3, *(v2 + 1));
        v40 = v2[4];
        if (v40 > 2)
        {
          switch(v40)
          {
            case 3:
              v23 = " IS NOT FALSE";
              break;
            case 4:
              v23 = " IS UNKNOWN";
              break;
            case 5:
              v23 = " IS NOT UNKNOWN";
              break;
            default:
              return result;
          }
        }

        else if (v40)
        {
          if (v40 == 1)
          {
            v23 = " IS NOT TRUE";
          }

          else
          {
            if (v40 != 2)
            {
              return result;
            }

            v23 = " IS FALSE";
          }
        }

        else
        {
          v23 = " IS TRUE";
        }

        goto LABEL_169;
      case 144:
        v23 = "DEFAULT";
        goto LABEL_169;
      case 145:
        appendStringInfoString(v3, "CURRENT OF ");
        v23 = quote_identifier(*(v2 + 1));
        goto LABEL_169;
      default:
        goto LABEL_180;
    }
  }
}

_BYTE *deparseConstraint(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfoString(a1, "CONSTRAINT ");
    appendStringInfoString(a1, *(a2 + 8));
    appendStringInfoChar(a1, 32);
  }

  switch(*(a2 + 4))
  {
    case 0:
      v4 = "NULL ";
      goto LABEL_41;
    case 1:
      v4 = "NOT NULL ";
      goto LABEL_41;
    case 2:
      appendStringInfoString(a1, "DEFAULT ");
      deparseExpr(a1, *(a2 + 32));
      goto LABEL_42;
    case 3:
      appendStringInfoString(a1, "GENERATED ");
      v6 = *(a2 + 48);
      if (v6 == 97)
      {
        v7 = "ALWAYS ";
      }

      else
      {
        if (v6 != 100)
        {
          goto LABEL_133;
        }

        v7 = "BY DEFAULT ";
      }

      appendStringInfoString(a1, v7);
LABEL_133:
      appendStringInfoString(a1, "AS IDENTITY ");
      v65 = *(a2 + 80);
      if (v65 && *(v65 + 4) >= 1)
      {
        appendStringInfoChar(a1, 40);
        if (*(v65 + 4) >= 1)
        {
          v66 = 0;
          do
          {
            deparseSeqOptElem(a1, *(*(v65 + 16) + 8 * v66));
            appendStringInfoChar(a1, 32);
            ++v66;
          }

          while (v66 < *(v65 + 4));
        }

        appendStringInfoChar(a1, 41);
      }

      goto LABEL_42;
    case 4:
      appendStringInfoString(a1, "GENERATED ALWAYS AS (");
      deparseExpr(a1, *(a2 + 32));
      v4 = ") STORED ";
      goto LABEL_41;
    case 5:
      appendStringInfoString(a1, "CHECK (");
      v8 = *(a2 + 32);
      goto LABEL_40;
    case 6:
      v4 = "PRIMARY KEY ";
      goto LABEL_41;
    case 7:
      v4 = "UNIQUE ";
      goto LABEL_41;
    case 8:
      appendStringInfoString(a1, "EXCLUDE ");
      if (strcmp(*(a2 + 112), "btree"))
      {
        appendStringInfoString(a1, "USING ");
        v9 = quote_identifier(*(a2 + 112));
        appendStringInfoString(a1, v9);
        appendStringInfoChar(a1, 32);
      }

      appendStringInfoChar(a1, 40);
      v10 = *(a2 + 72);
      if (!v10 || *(v10 + 4) < 1)
      {
        goto LABEL_38;
      }

      v11 = 0;
      v12 = 8;
      break;
    case 9:
      v5 = *(a2 + 136);
      if (!v5 || *(v5 + 4) < 1)
      {
        goto LABEL_42;
      }

      v4 = "FOREIGN KEY ";
      goto LABEL_41;
    case 0xA:
      v4 = "DEFERRABLE ";
      goto LABEL_41;
    case 0xB:
      v4 = "NOT DEFERRABLE ";
      goto LABEL_41;
    case 0xC:
      v4 = "INITIALLY DEFERRED ";
      goto LABEL_41;
    case 0xD:
      v4 = "INITIALLY IMMEDIATE ";
      goto LABEL_41;
    default:
      goto LABEL_42;
  }

  do
  {
    v13 = *(v10 + 16);
    v14 = *(v13 + 8 * v11);
    deparseIndexElem(a1, **(v14 + 16));
    appendStringInfoString(a1, " WITH ");
    v15 = *(*(v14 + 16) + 8);
    if (!v15)
    {
      goto LABEL_33;
    }

    v16 = *(v15 + 4);
    if (v16 == 1)
    {
      v18 = *(v15 + 16);
    }

    else
    {
      if (v16 != 2)
      {
        goto LABEL_33;
      }

      v17 = quote_identifier(*(**(v15 + 16) + 8));
      appendStringInfoString(a1, v17);
      appendStringInfoChar(a1, 46);
      v18 = *(v15 + 16) + 8 * (*(v15 + 4) - 1);
    }

    appendStringInfoString(a1, *(*v18 + 8));
LABEL_33:
    if (v13 + v12)
    {
      v19 = v13 + v12 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      appendStringInfoString(a1, ", ");
    }

    ++v11;
    v12 += 8;
  }

  while (v11 < *(v10 + 4));
LABEL_38:
  appendStringInfoString(a1, ") ");
  if (*(a2 + 120))
  {
    appendStringInfoString(a1, "WHERE (");
    v8 = *(a2 + 120);
LABEL_40:
    deparseExpr(a1, v8);
    v4 = ") ";
LABEL_41:
    appendStringInfoString(a1, v4);
  }

LABEL_42:
  v20 = *(a2 + 56);
  if (v20 && *(v20 + 4) >= 1)
  {
    appendStringInfoChar(a1, 40);
    v21 = *(a2 + 56);
    if (v21 && *(v21 + 4) >= 1)
    {
      v22 = 0;
      v23 = 8;
      do
      {
        v24 = *(v21 + 16);
        v25 = quote_identifier(*(*(v24 + 8 * v22) + 8));
        appendStringInfoString(a1, v25);
        v26 = *(v21 + 4);
        if (v24 + v23)
        {
          v27 = v24 + v23 >= (*(v21 + 16) + 8 * v26);
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          appendStringInfoString(a1, ", ");
          v26 = *(v21 + 4);
        }

        ++v22;
        v23 += 8;
      }

      while (v22 < v26);
    }

    appendStringInfoString(a1, ") ");
  }

  v28 = *(a2 + 136);
  if (v28 && *(v28 + 4) >= 1)
  {
    appendStringInfoChar(a1, 40);
    v29 = *(a2 + 136);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = quote_identifier(*(*(v32 + 8 * v30) + 8));
        appendStringInfoString(a1, v33);
        v34 = *(v29 + 4);
        if (v32 + v31)
        {
          v35 = v32 + v31 >= (*(v29 + 16) + 8 * v34);
        }

        else
        {
          v35 = 1;
        }

        if (!v35)
        {
          appendStringInfoString(a1, ", ");
          v34 = *(v29 + 4);
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < v34);
    }

    appendStringInfoString(a1, ") ");
  }

  if (*(a2 + 128))
  {
    appendStringInfoString(a1, "REFERENCES ");
    deparseRangeVar(a1, *(a2 + 128), 0);
    appendStringInfoChar(a1, 32);
    v36 = *(a2 + 144);
    if (v36)
    {
      if (*(v36 + 4) >= 1)
      {
        appendStringInfoChar(a1, 40);
        v37 = *(a2 + 144);
        if (v37 && *(v37 + 4) >= 1)
        {
          v38 = 0;
          v39 = 8;
          do
          {
            v40 = *(v37 + 16);
            v41 = quote_identifier(*(*(v40 + 8 * v38) + 8));
            appendStringInfoString(a1, v41);
            v42 = *(v37 + 4);
            if (v40 + v39)
            {
              v43 = v40 + v39 >= (*(v37 + 16) + 8 * v42);
            }

            else
            {
              v43 = 1;
            }

            if (!v43)
            {
              appendStringInfoString(a1, ", ");
              v42 = *(v37 + 4);
            }

            ++v38;
            v39 += 8;
          }

          while (v38 < v42);
        }

        appendStringInfoString(a1, ") ");
      }
    }
  }

  if (*(a2 + 152) == 102)
  {
    appendStringInfoString(a1, "MATCH FULL ");
  }

  v44 = *(a2 + 153);
  if (v44 > 0x6D)
  {
    if (v44 == 110)
    {
      v45 = "ON UPDATE SET NULL ";
    }

    else
    {
      if (v44 != 114)
      {
        goto LABEL_91;
      }

      v45 = "ON UPDATE RESTRICT ";
    }

    goto LABEL_90;
  }

  if (v44 == 99)
  {
    v45 = "ON UPDATE CASCADE ";
LABEL_90:
    appendStringInfoString(a1, v45);
    goto LABEL_91;
  }

  if (v44 == 100)
  {
    v45 = "ON UPDATE SET DEFAULT ";
    goto LABEL_90;
  }

LABEL_91:
  v46 = *(a2 + 154);
  if (v46 > 0x6D)
  {
    if (v46 == 110)
    {
      v47 = "ON DELETE SET NULL ";
    }

    else
    {
      if (v46 != 114)
      {
        goto LABEL_101;
      }

      v47 = "ON DELETE RESTRICT ";
    }

LABEL_100:
    appendStringInfoString(a1, v47);
    goto LABEL_101;
  }

  if (v46 == 99)
  {
    v47 = "ON DELETE CASCADE ";
    goto LABEL_100;
  }

  if (v46 == 100)
  {
    v47 = "ON DELETE SET DEFAULT ";
    goto LABEL_100;
  }

LABEL_101:
  v48 = *(a2 + 64);
  if (v48 && *(v48 + 4) >= 1)
  {
    appendStringInfoString(a1, "INCLUDE (");
    v49 = *(a2 + 64);
    if (v49 && *(v49 + 4) >= 1)
    {
      v50 = 0;
      v51 = 8;
      do
      {
        v52 = *(v49 + 16);
        v53 = quote_identifier(*(*(v52 + 8 * v50) + 8));
        appendStringInfoString(a1, v53);
        v54 = *(v49 + 4);
        if (v52 + v51)
        {
          v55 = v52 + v51 >= (*(v49 + 16) + 8 * v54);
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          appendStringInfoString(a1, ", ");
          v54 = *(v49 + 4);
        }

        ++v50;
        v51 += 8;
      }

      while (v50 < v54);
    }

    appendStringInfoString(a1, ") ");
  }

  v56 = *(a2 + 88);
  if (v56)
  {
    v57 = quote_identifier(v56);
    appendStringInfo(a1, "USING INDEX %s ", v57);
  }

  result = *(a2 + 96);
  if (result)
  {
    v59 = quote_identifier(result);
    result = appendStringInfo(a1, "USING INDEX TABLESPACE %s ", v59);
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfoString(a1, "DEFERRABLE ");
    if (*(a2 + 17) == 1)
    {
      goto LABEL_125;
    }

LABEL_119:
    if (*(a2 + 24) != 1)
    {
      goto LABEL_120;
    }

LABEL_126:
    result = appendStringInfoString(a1, "NO INHERIT ");
    if (*(a2 + 172) == 1)
    {
      goto LABEL_127;
    }

LABEL_121:
    v60 = a1[2];
    v61 = __OFSUB__(v60, 1);
    v62 = v60 - 1;
    if (v62 < 0 == v61)
    {
LABEL_128:
      v64 = *a1;
      if (*(*a1 + v62) == 32)
      {
        a1[2] = v62;
        *(v64 + v62) = 0;
      }
    }
  }

  else
  {
    if (*(a2 + 17) != 1)
    {
      goto LABEL_119;
    }

LABEL_125:
    result = appendStringInfoString(a1, "INITIALLY DEFERRED ");
    if (*(a2 + 24) == 1)
    {
      goto LABEL_126;
    }

LABEL_120:
    if (*(a2 + 172) != 1)
    {
      goto LABEL_121;
    }

LABEL_127:
    result = appendStringInfoString(a1, "NOT VALID ");
    v63 = a1[2];
    v61 = __OFSUB__(v63, 1);
    v62 = v63 - 1;
    if (v62 < 0 == v61)
    {
      goto LABEL_128;
    }
  }

  return result;
}

uint64_t deparseFuncCall(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    if (v5 == 2)
    {
      v6 = *(v4 + 16);
      if (!strcmp(*(*v6 + 8), "pg_catalog") && !strcmp(*(v6[1] + 8), "overlay"))
      {
        v7 = *(a2 + 16);
        if (v7)
        {
          if (*(v7 + 4) == 4)
          {
            appendStringInfoString(a1, "OVERLAY(");
            deparseExpr(a1, **(*(a2 + 16) + 16));
            appendStringInfoString(a1, " PLACING ");
            deparseExpr(a1, *(*(*(a2 + 16) + 16) + 8));
            appendStringInfoString(a1, " FROM ");
            deparseExpr(a1, *(*(*(a2 + 16) + 16) + 16));
            appendStringInfoString(a1, " FOR ");
            deparseExpr(a1, *(*(*(a2 + 16) + 16) + 24));

            return appendStringInfoChar(a1, 41);
          }
        }
      }
    }

    else if (v5 < 1)
    {
      goto LABEL_18;
    }

    v9 = 0;
    v10 = 8;
    do
    {
      v11 = *(v4 + 16);
      v12 = quote_identifier(*(*(v11 + 8 * v9) + 8));
      appendStringInfoString(a1, v12);
      v13 = *(v4 + 4);
      if (v11 + v10)
      {
        v14 = v11 + v10 >= (*(v4 + 16) + 8 * v13);
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        appendStringInfoChar(a1, 46);
        v13 = *(v4 + 4);
      }

      ++v9;
      v10 += 8;
    }

    while (v9 < v13);
  }

LABEL_18:
  appendStringInfoChar(a1, 40);
  if (*(a2 + 42) == 1)
  {
    appendStringInfoString(a1, "DISTINCT ");
  }

  if (*(a2 + 41) == 1)
  {
    appendStringInfoChar(a1, 42);
  }

  else
  {
    v15 = *(a2 + 16);
    if (v15 && *(v15 + 4) >= 1)
    {
      v16 = 0;
      v17 = 8;
      do
      {
        v18 = *(v15 + 16);
        if (*(a2 + 43) == 1 && (!(v18 + v17) || v18 + v17 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4))))
        {
          appendStringInfoString(a1, "VARIADIC ");
        }

        v20 = *(v18 + 8 * v16);
        if (*v20 == 114)
        {
          appendStringInfoString(a1, *(v20 + 16));
          appendStringInfoString(a1, " := ");
          v21 = *(v20 + 8);
          v22 = a1;
        }

        else
        {
          v22 = a1;
          v21 = *(v18 + 8 * v16);
        }

        deparseExpr(v22, v21);
        if (v18 + v17)
        {
          v23 = v18 + v17 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          appendStringInfoString(a1, ", ");
        }

        ++v16;
        v17 += 8;
      }

      while (v16 < *(v15 + 4));
    }
  }

  appendStringInfoChar(a1, 32);
  v24 = *(a2 + 24);
  if (v24 && (*(a2 + 40) & 1) == 0)
  {
    deparseOptSortClause(a1, v24);
  }

  v25 = *(a1 + 8);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v27 < 0 == v26)
  {
    v28 = *a1;
    if (*(*a1 + v27) == 32)
    {
      *(a1 + 8) = v27;
      *(v28 + v27) = 0;
    }
  }

  result = appendStringInfoString(a1, ") ");
  if (*(a2 + 24) && *(a2 + 40) == 1)
  {
    appendStringInfoString(a1, "WITHIN GROUP (");
    deparseOptSortClause(a1, *(a2 + 24));
    v29 = *(a1 + 8);
    v26 = __OFSUB__(v29, 1);
    v30 = v29 - 1;
    if (v30 < 0 == v26)
    {
      v31 = *a1;
      if (*(*a1 + v30) == 32)
      {
        *(a1 + 8) = v30;
        *(v31 + v30) = 0;
      }
    }

    result = appendStringInfoString(a1, ") ");
  }

  if (*(a2 + 32))
  {
    appendStringInfoString(a1, "FILTER (WHERE ");
    deparseExpr(a1, *(a2 + 32));
    result = appendStringInfoString(a1, ") ");
  }

  if (*(a2 + 48))
  {
    appendStringInfoString(a1, "OVER ");
    v32 = *(a2 + 48);
    if (!*(v32 + 8))
    {
      result = deparseWindowDef(a1, v32);
      v36 = *(a1 + 8);
      v26 = __OFSUB__(v36, 1);
      v34 = v36 - 1;
      if (v34 < 0 != v26)
      {
        return result;
      }

      goto LABEL_59;
    }

    result = appendStringInfoString(a1, *(v32 + 8));
  }

  v33 = *(a1 + 8);
  v26 = __OFSUB__(v33, 1);
  v34 = v33 - 1;
  if (v34 < 0 != v26)
  {
    return result;
  }

LABEL_59:
  v35 = *a1;
  if (*(*a1 + v34) == 32)
  {
    *(a1 + 8) = v34;
    *(v35 + v34) = 0;
  }

  return result;
}

void *deparseXmlExpr(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 <= 2)
  {
    if (!v4)
    {
      appendStringInfoString(result, "xmlconcat(");
      v7 = *(a2 + 32);
      if (v7 && *(v7 + 4) >= 1)
      {
        v8 = 0;
        v9 = 8;
        do
        {
          v10 = *(v7 + 16);
          deparseExpr(v3, *(v10 + 8 * v8));
          v11 = *(v7 + 4);
          if (v10 + v9)
          {
            v12 = v10 + v9 >= (*(v7 + 16) + 8 * v11);
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            appendStringInfoString(v3, ", ");
            v11 = *(v7 + 4);
          }

          ++v8;
          v9 += 8;
        }

        while (v8 < v11);
      }

      goto LABEL_53;
    }

    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return result;
      }

      appendStringInfoString(result, "xmlforest(");
      deparseXmlAttributeList(v3, *(a2 + 16));
      goto LABEL_53;
    }

    appendStringInfoString(result, "xmlelement(name ");
    v17 = quote_identifier(*(a2 + 8));
    appendStringInfoString(v3, v17);
    if (*(a2 + 16))
    {
      appendStringInfoString(v3, ", xmlattributes(");
      deparseXmlAttributeList(v3, *(a2 + 16));
      appendStringInfoString(v3, ")");
    }

    if (*(a2 + 32))
    {
      appendStringInfoString(v3, ", ");
      v18 = *(a2 + 32);
      if (v18)
      {
        if (*(v18 + 4) >= 1)
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
    }

    v6 = ")";
  }

  else
  {
    if (v4 <= 4)
    {
      if (v4 != 3)
      {
        appendStringInfoString(result, "xmlpi(name ");
        v5 = quote_identifier(*(a2 + 8));
        appendStringInfoString(v3, v5);
        if (*(a2 + 32))
        {
          appendStringInfoString(v3, ", ");
          deparseExpr(v3, **(*(a2 + 32) + 16));
        }

        goto LABEL_53;
      }

      appendStringInfoString(result, "xmlparse(");
      v13 = *(a2 + 40);
      if (v13)
      {
        if (v13 != 1)
        {
LABEL_49:
          deparseExpr(v3, **(*(a2 + 32) + 16));
          v25 = *(*(*(*(*(a2 + 32) + 16) + 8) + 8) + 16);
          if (*v25 == 116 && !v25[1])
          {
            v24 = " PRESERVE WHITESPACE";
            goto LABEL_52;
          }

LABEL_53:

          return appendStringInfoChar(v3, 41);
        }

        v14 = "content ";
      }

      else
      {
        v14 = "document ";
      }

      appendStringInfoString(v3, v14);
      goto LABEL_49;
    }

    if (v4 == 5)
    {
      appendStringInfoString(result, "xmlroot(");
      deparseExpr(v3, **(*(a2 + 32) + 16));
      appendStringInfoString(v3, ", version ");
      v15 = *(*(*(a2 + 32) + 16) + 8);
      if (v15[2] == 225)
      {
        appendStringInfoString(v3, "NO VALUE");
        v16 = *(*(*(*(a2 + 32) + 16) + 16) + 16);
        if (v16 > 2)
        {
          goto LABEL_53;
        }
      }

      else
      {
        deparseExpr(v3, v15);
        v16 = *(*(*(*(a2 + 32) + 16) + 16) + 16);
        if (v16 > 2)
        {
          goto LABEL_53;
        }
      }

      v24 = (&off_2797B6C28)[v16];
LABEL_52:
      appendStringInfoString(v3, v24);
      goto LABEL_53;
    }

    if (v4 != 7)
    {
      return result;
    }

    deparseExpr(result, **(*(a2 + 32) + 16));
    v6 = " IS DOCUMENT";
  }

  return appendStringInfoString(v3, v6);
}

void *deparseTypeCast(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 != 349)
  {
    if (*v4 == 346)
    {
      appendStringInfoString(a1, "CAST(");
      deparseExpr(a1, *(a2 + 8));
      appendStringInfoString(a1, " AS ");
      deparseTypeName(a1, *(a2 + 16));

      return appendStringInfoChar(a1, 41);
    }

    goto LABEL_24;
  }

  v6 = *(a2 + 16);
  v7 = *(v6 + 8);
  if (!v7)
  {
    goto LABEL_21;
  }

  if (*(v7 + 4) != 2)
  {
    goto LABEL_21;
  }

  v8 = *(v7 + 16);
  v9 = v4;
  v10 = strcmp(*(*v8 + 8), "pg_catalog");
  v4 = v9;
  if (v10)
  {
    goto LABEL_21;
  }

  v11 = *(v8[1] + 8);
  if (strcmp(v11, "bpchar") || *(v6 + 24))
  {
    v12 = strcmp(v11, "BOOL");
    v4 = v9;
    if (!v12 && v9[2] == 223)
    {
      v13 = *(v9 + 2);
      v14 = *v13;
      if (v14 == 102)
      {
        if (!v13[1])
        {
          v15 = "false";
          goto LABEL_30;
        }
      }

      else if (v14 == 116 && !v13[1])
      {
        v15 = "true";
LABEL_30:

        return appendStringInfoString(a1, v15);
      }
    }

LABEL_21:
    v16 = v4[2];
    if (v16 == 222 || v16 == 221 && v4[4] < 0)
    {
      appendStringInfoChar(a1, 40);
      deparseExpr(a1, *(a2 + 8));
      appendStringInfoChar(a1, 41);
      goto LABEL_26;
    }

LABEL_24:
    deparseExpr(a1, v4);
LABEL_26:
    appendStringInfoString(a1, "::");
    v17 = *(a2 + 16);

    return deparseTypeName(a1, v17);
  }

  appendStringInfoString(a1, "char ");

  return deparseValue(a1, (v9 + 2), 11);
}

uint64_t *deparseAExpr(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (!v4 || (v5 = *v4, v6 = 1, *v4 != 119) && v5 != 140 && v5 != 346)
  {
    v6 = 0;
  }

  v7 = *(a2 + 24);
  if (!v7 || (v8 = *v7, v9 = 1, v8 != 119) && v8 != 140 && v8 != 346)
  {
    v9 = 0;
  }

  v10 = *(a2 + 4);
  if (v10 <= 7)
  {
    if (v10 <= 3)
    {
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 != 1)
          {
            return result;
          }

          deparseExpr(result, v4);
          appendStringInfoChar(v3, 32);
          deparseSubqueryOp(v3, *(a2 + 8));
          v11 = " ANY(";
          goto LABEL_54;
        }

        if (v4)
        {
          if (v6)
          {
            appendStringInfoChar(result, 40);
            deparseExpr(v3, *(a2 + 16));
            appendStringInfoChar(v3, 41);
          }

          else
          {
            deparseExpr(result, v4);
          }

          appendStringInfoChar(v3, 32);
        }

        v44 = *(a2 + 8);
        if (v44)
        {
          if (*(v44 + 4) == 1)
          {
            v45 = *(**(v44 + 16) + 8);
            if (isOp(v45))
            {
              v46 = v3;
              v47 = v45;
              goto LABEL_120;
            }
          }

          appendStringInfoString(v3, "OPERATOR(");
          v48 = *(v44 + 4);
          if (v48 == 1)
          {
            v50 = *(v44 + 16);
          }

          else
          {
            if (v48 != 2)
            {
LABEL_119:
              v47 = ")";
              v46 = v3;
LABEL_120:
              result = appendStringInfoString(v46, v47);
              if (!*(a2 + 24))
              {
                return result;
              }

              appendStringInfoChar(v3, 32);
              if (v9)
              {
                goto LABEL_122;
              }

              goto LABEL_68;
            }

            v49 = quote_identifier(*(**(v44 + 16) + 8));
            appendStringInfoString(v3, v49);
            appendStringInfoChar(v3, 46);
            v50 = *(v44 + 16) + 8 * (*(v44 + 4) - 1);
          }

          v51 = *(*v50 + 8);
        }

        else
        {
          v51 = "OPERATOR(";
        }

        appendStringInfoString(v3, v51);
        goto LABEL_119;
      }

      if (v10 != 2)
      {
        if (v6)
        {
          appendStringInfoChar(result, 40);
          deparseExpr(v3, *(a2 + 16));
          appendStringInfoChar(v3, 41);
          appendStringInfoString(v3, " IS DISTINCT FROM ");
          if (v9)
          {
LABEL_122:
            appendStringInfoChar(v3, 40);
            goto LABEL_123;
          }
        }

        else
        {
          deparseExpr(result, v4);
          appendStringInfoString(v3, " IS DISTINCT FROM ");
          if (v9)
          {
            goto LABEL_122;
          }
        }

LABEL_68:
        v29 = *(a2 + 24);
LABEL_69:

        return deparseExpr(v3, v29);
      }

      deparseExpr(result, v4);
      appendStringInfoChar(v3, 32);
      deparseSubqueryOp(v3, *(a2 + 8));
      v11 = " ALL(";
LABEL_54:
      appendStringInfoString(v3, v11);
LABEL_123:
      deparseExpr(v3, *(a2 + 24));
LABEL_124:

      return appendStringInfoChar(v3, 41);
    }

    if (v10 <= 5)
    {
      if (v10 != 4)
      {
        appendStringInfoString(result, "NULLIF(");
        deparseExpr(v3, *(a2 + 16));
        v11 = ", ";
        goto LABEL_54;
      }

      deparseExpr(result, v4);
      v24 = " IS NOT DISTINCT FROM ";
LABEL_67:
      appendStringInfoString(v3, v24);
      goto LABEL_68;
    }

    if (v10 != 6)
    {
      deparseExpr(result, v4);
      appendStringInfoChar(v3, 32);
      v20 = *(**(*(a2 + 8) + 16) + 8);
      v21 = *v20;
      if (v21 == 60)
      {
        if (v20[1] == 62 && !v20[2])
        {
          v22 = "NOT IN ";
          goto LABEL_75;
        }
      }

      else if (v21 == 61 && !v20[1])
      {
        v22 = "IN ";
LABEL_75:
        appendStringInfoString(v3, v22);
      }

      appendStringInfoChar(v3, 40);
      v30 = *(a2 + 24);
      if (*v30 == 120)
      {
        deparseSubLink(v3, v30);
      }

      else if (*(v30 + 4) >= 1)
      {
        v31 = 0;
        v32 = 8;
        do
        {
          v33 = *(v30 + 16);
          deparseExpr(v3, *(v33 + 8 * v31));
          v34 = *(v30 + 4);
          if (v33 + v32)
          {
            v35 = v33 + v32 >= (*(v30 + 16) + 8 * v34);
          }

          else
          {
            v35 = 1;
          }

          if (!v35)
          {
            appendStringInfoString(v3, ", ");
            v34 = *(v30 + 4);
          }

          ++v31;
          v32 += 8;
        }

        while (v31 < v34);
      }

      goto LABEL_124;
    }

    deparseExpr(result, v4);
    appendStringInfoChar(v3, 32);
    v25 = *(**(*(a2 + 8) + 16) + 8);
    v26 = *v25;
    if (v26 == 60)
    {
      if (v25[1] == 62 && !v25[2])
      {
        v27 = "IS NOT OF ";
        goto LABEL_89;
      }
    }

    else if (v26 == 61 && !v25[1])
    {
      v27 = "IS OF ";
LABEL_89:
      appendStringInfoString(v3, v27);
    }

    appendStringInfoChar(v3, 40);
    v36 = *(a2 + 24);
    if (v36 && *(v36 + 4) >= 1)
    {
      v37 = 0;
      v38 = 8;
      do
      {
        v39 = *(v36 + 16);
        deparseTypeName(v3, *(v39 + 8 * v37));
        v40 = *(v36 + 4);
        if (v39 + v38)
        {
          v41 = v39 + v38 >= (*(v36 + 16) + 8 * v40);
        }

        else
        {
          v41 = 1;
        }

        if (!v41)
        {
          appendStringInfoString(v3, ", ");
          v40 = *(v36 + 4);
        }

        ++v37;
        v38 += 8;
      }

      while (v37 < v40);
    }

    goto LABEL_124;
  }

  if (v10 <= 10)
  {
    if (v10 == 8)
    {
      deparseExpr(result, v4);
      appendStringInfoChar(v3, 32);
      v28 = *(**(*(a2 + 8) + 16) + 8);
      if (*v28 == 126 && *(v28 + 1) == 126 && !*(v28 + 2))
      {
        v24 = "LIKE ";
      }

      else
      {
        if (strcmp(v28, "!~~"))
        {
          goto LABEL_68;
        }

        v24 = "NOT LIKE ";
      }

      goto LABEL_67;
    }

    if (v10 == 9)
    {
      deparseExpr(result, v4);
      appendStringInfoChar(v3, 32);
      v23 = *(**(*(a2 + 8) + 16) + 8);
      if (!strcmp(v23, "~~*"))
      {
        v24 = "ILIKE ";
      }

      else
      {
        if (strcmp(v23, "!~~*"))
        {
          goto LABEL_68;
        }

        v24 = "NOT ILIKE ";
      }

      goto LABEL_67;
    }

    deparseExpr(result, v4);
    appendStringInfoChar(v3, 32);
    v17 = *(**(*(a2 + 8) + 16) + 8);
    v18 = *v17;
    if (v18 == 33)
    {
      if (v17[1] != 126 || v17[2])
      {
        goto LABEL_103;
      }

      v19 = "NOT SIMILAR TO ";
    }

    else
    {
      if (v18 != 126 || v17[1])
      {
        goto LABEL_103;
      }

      v19 = "SIMILAR TO ";
    }

    appendStringInfoString(v3, v19);
LABEL_103:
    v42 = *(a2 + 24);
    result = deparseExpr(v3, **(*(v42 + 16) + 16));
    v43 = *(v42 + 16);
    if (!v43 || *(v43 + 4) != 2)
    {
      return result;
    }

    appendStringInfoString(v3, " ESCAPE ");
    v29 = *(*(*(v42 + 16) + 16) + 8);
    goto LABEL_69;
  }

  if ((v10 - 11) < 4)
  {
    deparseExpr(result, v4);
    appendStringInfoChar(v3, 32);
    appendStringInfoString(v3, *(**(*(a2 + 8) + 16) + 8));
    result = appendStringInfoChar(v3, 32);
    v12 = *(a2 + 24);
    if (v12)
    {
      if (*(v12 + 4) >= 1)
      {
        v13 = 0;
        v14 = 8;
        do
        {
          v15 = *(v12 + 16);
          result = deparseExpr(v3, *(v15 + 8 * v13));
          if (v15 + v14)
          {
            v16 = v15 + v14 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            result = appendStringInfoString(v3, " AND ");
          }

          ++v13;
          v14 += 8;
        }

        while (v13 < *(v12 + 4));
      }
    }
  }

  return result;
}

void *deparseCaseExpr(uint64_t a1, uint64_t a2)
{
  appendStringInfoString(a1, "CASE ");
  v4 = *(a2 + 16);
  if (v4)
  {
    deparseExpr(a1, v4);
    appendStringInfoChar(a1, 32);
  }

  v5 = *(a2 + 24);
  if (v5 && *(v5 + 4) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 16) + 8 * v6);
      appendStringInfoString(a1, "WHEN ");
      deparseExpr(a1, *(v7 + 8));
      appendStringInfoString(a1, " THEN ");
      deparseExpr(a1, *(v7 + 16));
      appendStringInfoChar(a1, 32);
      ++v6;
    }

    while (v6 < *(v5 + 4));
  }

  if (*(a2 + 32))
  {
    appendStringInfoString(a1, "ELSE ");
    deparseExpr(a1, *(a2 + 32));
    appendStringInfoChar(a1, 32);
  }

  return appendStringInfoString(a1, "END");
}

uint64_t *deparseSubLink(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return result;
      }

      deparseExpr(result, *(a2 + 16));
      appendStringInfoChar(v3, 32);
      deparseSubqueryOp(v3, *(a2 + 24));
      v5 = " ALL (";
    }

    else
    {
      v5 = "EXISTS (";
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        deparseExpr(result, *(a2 + 16));
        v6 = *(a2 + 24);
        if (v6 && *(v6 + 4) >= 1)
        {
          appendStringInfoChar(v3, 32);
          deparseSubqueryOp(v3, *(a2 + 24));
          v7 = " ANY ";
        }

        else
        {
          v7 = " IN ";
        }

        appendStringInfoString(v3, v7);
        appendStringInfoChar(v3, 40);
        goto LABEL_15;
      case 4:
        v5 = "(";
        break;
      case 6:
        v5 = "ARRAY(";
        break;
      default:
        return result;
    }
  }

  appendStringInfoString(v3, v5);
LABEL_15:
  deparseSelectStmt(v3, *(a2 + 32));

  return appendStringInfoChar(v3, 41);
}

uint64_t deparseAIndirection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *v4 - 346;
  if (v5 > 0xB)
  {
    goto LABEL_7;
  }

  if (((1 << v5) & 0x891) != 0)
  {
LABEL_3:
    appendStringInfoChar(a1, 40);
    deparseExpr(a1, *(a2 + 8));
    appendStringInfoChar(a1, 41);
    goto LABEL_9;
  }

  if (*v4 == 347)
  {
    if (***(*(a2 + 16) + 16) != 352)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_7:
    if (*v4 == 134)
    {
      goto LABEL_3;
    }
  }

  deparseExpr(a1, v4);
LABEL_9:
  v6 = *(a2 + 16);

  return deparseOptIndirection(a1, v6, 0);
}

uint64_t deparseCollateClause(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    if (*v4 == 346)
    {
      appendStringInfoChar(a1, 40);
      deparseExpr(a1, *(a2 + 8));
      appendStringInfoChar(a1, 41);
    }

    else
    {
      deparseExpr(a1, v4);
    }

    appendStringInfoChar(a1, 32);
  }

  result = appendStringInfoString(a1, "COLLATE ");
  v6 = *(a2 + 16);
  if (v6 && *(v6 + 4) >= 1)
  {
    v7 = 0;
    v8 = 8;
    do
    {
      v9 = *(v6 + 16);
      v10 = quote_identifier(*(*(v9 + 8 * v7) + 8));
      result = appendStringInfoString(a1, v10);
      v11 = *(v6 + 4);
      if (v9 + v8)
      {
        v12 = v9 + v8 >= (*(v6 + 16) + 8 * v11);
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        result = appendStringInfoChar(a1, 46);
        v11 = *(v6 + 4);
      }

      ++v7;
      v8 += 8;
    }

    while (v7 < v11);
  }

  return result;
}

uint64_t deparseOptSortClause(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    appendStringInfoString(result, "ORDER BY ");
    if (*(a2 + 4) >= 1)
    {
      v4 = 0;
      v5 = 8;
      v6 = "NULLS FIRST ";
      v7 = "NULLS LAST ";
      while (1)
      {
        v8 = *(a2 + 16);
        v9 = *(v8 + 8 * v4);
        deparseExpr(v3, *(v9 + 8));
        appendStringInfoChar(v3, 32);
        v10 = *(v9 + 16);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            v11 = v3;
            v12 = "DESC ";
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_24;
            }

            v11 = v3;
            v12 = "ASC ";
          }

          goto LABEL_23;
        }

        appendStringInfoString(v3, "USING ");
        v13 = *(v9 + 24);
        if (!v13)
        {
          break;
        }

        v14 = v7;
        v15 = v6;
        if (*(v13 + 4) == 1)
        {
          v16 = *(**(v13 + 16) + 8);
          if (isOp(v16))
          {
            appendStringInfoString(v3, v16);
            v6 = v15;
            v7 = v14;
            goto LABEL_24;
          }
        }

        appendStringInfoString(v3, "OPERATOR(");
        v17 = *(v13 + 4);
        if (v17 == 1)
        {
          v19 = *(v13 + 16);
          v6 = v15;
          v7 = v14;
LABEL_20:
          v21 = *(*v19 + 8);
          v20 = v3;
LABEL_21:
          appendStringInfoString(v20, v21);
          goto LABEL_22;
        }

        v6 = v15;
        v7 = v14;
        if (v17 == 2)
        {
          v18 = quote_identifier(*(**(v13 + 16) + 8));
          appendStringInfoString(v3, v18);
          appendStringInfoChar(v3, 46);
          v19 = *(v13 + 16) + 8 * (*(v13 + 4) - 1);
          goto LABEL_20;
        }

LABEL_22:
        v11 = v3;
        v12 = ")";
LABEL_23:
        appendStringInfoString(v11, v12);
LABEL_24:
        v22 = *(v9 + 20);
        if (v22 == 1)
        {
          v23 = v6;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_29;
          }

          v23 = v7;
        }

        appendStringInfoString(v3, v23);
LABEL_29:
        v24 = *(v3 + 8);
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v26 < 0 == v25)
        {
          v27 = *v3;
          if (*(*v3 + v26) == 32)
          {
            *(v3 + 8) = v26;
            *(v27 + v26) = 0;
          }
        }

        v28 = *(a2 + 4);
        if (v8 + v5 && v8 + v5 < (*(a2 + 16) + 8 * v28))
        {
          appendStringInfoString(v3, ", ");
          v28 = *(a2 + 4);
        }

        ++v4;
        v5 += 8;
        if (v4 >= v28)
        {
          goto LABEL_36;
        }
      }

      v20 = v3;
      v21 = "OPERATOR(";
      goto LABEL_21;
    }

LABEL_36:

    return appendStringInfoChar(v3, 32);
  }

  return result;
}

uint64_t deparseWindowDef(uint64_t *a1, uint64_t a2)
{
  appendStringInfoChar(a1, 40);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = quote_identifier(v4);
    appendStringInfoString(a1, v5);
    appendStringInfoChar(a1, 32);
  }

  v6 = *(a2 + 24);
  if (v6 && *(v6 + 4) >= 1)
  {
    appendStringInfoString(a1, "PARTITION BY ");
    v7 = *(a2 + 24);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        deparseExpr(a1, *(v10 + 8 * v8));
        v11 = *(v7 + 4);
        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(v7 + 16) + 8 * v11);
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ", ");
          v11 = *(v7 + 4);
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < v11);
    }

    appendStringInfoChar(a1, 32);
  }

  deparseOptSortClause(a1, *(a2 + 32));
  v13 = *(a2 + 40);
  if ((v13 & 1) == 0)
  {
    goto LABEL_56;
  }

  if ((v13 & 2) != 0)
  {
    appendStringInfoString(a1, "RANGE ");
    v14 = *(a2 + 40);
    if ((v14 & 0x10) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  if ((v13 & 4) != 0)
  {
    appendStringInfoString(a1, "ROWS ");
    v14 = *(a2 + 40);
    if ((v14 & 0x10) != 0)
    {
      goto LABEL_31;
    }

LABEL_20:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_32:
    v16 = "UNBOUNDED PRECEDING ";
LABEL_33:
    appendStringInfoString(a1, v16);
    goto LABEL_34;
  }

  if ((v13 & 8) != 0)
  {
    appendStringInfoString(a1, "GROUPS ");
    v14 = *(a2 + 40);
    if ((v14 & 0x10) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  v14 = *(a2 + 40);
  if ((v14 & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_31:
  appendStringInfoString(a1, "BETWEEN ");
  v14 = *(a2 + 40);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if ((v14 & 0x80) != 0)
  {
    goto LABEL_34;
  }

  if ((v14 & 0x200) != 0)
  {
    v16 = "CURRENT ROW ";
    goto LABEL_33;
  }

  if ((v14 & 0x800) != 0)
  {
    v15 = " PRECEDING ";
    goto LABEL_44;
  }

  if ((v14 & 0x2000) != 0)
  {
    v15 = " FOLLOWING ";
LABEL_44:
    deparseExpr(a1, *(a2 + 48));
    v16 = v15;
    goto LABEL_33;
  }

LABEL_34:
  if ((*(a2 + 40) & 0x10) == 0)
  {
    goto LABEL_49;
  }

  appendStringInfoString(a1, "AND ");
  v17 = *(a2 + 40);
  if ((v17 & 0x40) != 0)
  {
    goto LABEL_49;
  }

  if ((v17 & 0x100) != 0)
  {
    v19 = "UNBOUNDED FOLLOWING ";
LABEL_48:
    appendStringInfoString(a1, v19);
    goto LABEL_49;
  }

  if ((v17 & 0x400) != 0)
  {
    v19 = "CURRENT ROW ";
    goto LABEL_48;
  }

  if ((v17 & 0x1000) != 0)
  {
    v18 = " PRECEDING ";
    goto LABEL_47;
  }

  if ((v17 & 0x4000) != 0)
  {
    v18 = " FOLLOWING ";
LABEL_47:
    deparseExpr(a1, *(a2 + 56));
    v19 = v18;
    goto LABEL_48;
  }

LABEL_49:
  v20 = *(a2 + 40);
  if ((v20 & 0x8000) != 0)
  {
    v21 = "EXCLUDE CURRENT ROW ";
    goto LABEL_55;
  }

  if ((v20 & 0x10000) != 0)
  {
    v21 = "EXCLUDE GROUP ";
    goto LABEL_55;
  }

  if ((v20 & 0x20000) != 0)
  {
    v21 = "EXCLUDE TIES ";
LABEL_55:
    appendStringInfoString(a1, v21);
  }

LABEL_56:
  v22 = *(a1 + 2);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v24 < 0 == v23)
  {
    v25 = *a1;
    if (*(*a1 + v24) == 32)
    {
      *(a1 + 2) = v24;
      *(v25 + v24) = 0;
    }
  }

  return appendStringInfoChar(a1, 41);
}

uint64_t isOp(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v2 = a1 + 1;
  while ((v1 - 33) <= 0x3F && ((1 << (v1 - 33)) & 0xA0000000F8005635) != 0 || v1 == 126 || v1 == 124)
  {
    v3 = *v2++;
    v1 = v3;
    if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t deparseExprList(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      result = deparseExpr(v3, *(v6 + 8 * v4));
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

uint64_t deparseXmlAttributeList(uint64_t result, uint64_t a2)
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
      result = deparseExpr(v3, *(v7 + 24));
      if (*(v7 + 8))
      {
        appendStringInfoString(v3, " AS ");
        v8 = quote_identifier(*(v7 + 8));
        result = appendStringInfoString(v3, v8);
      }

      v9 = *(a2 + 4);
      if (v6 + v5)
      {
        v10 = v6 + v5 >= (*(a2 + 16) + 8 * v9);
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        result = appendStringInfoString(v3, ", ");
        v9 = *(a2 + 4);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v9);
  }

  return result;
}

void *deparseTypeName(void *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 20) == 1)
  {
    result = appendStringInfoString(result, "SETOF ");
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_40;
  }

  v5 = *(v4 + 4);
  if (v5 != 2)
  {
    if (v5 < 1)
    {
LABEL_40:
      v16 = 0;
      goto LABEL_41;
    }

LABEL_23:
    v10 = 0;
    v11 = 8;
    do
    {
      v12 = *(v4 + 16);
      v13 = quote_identifier(*(*(v12 + 8 * v10) + 8));
      result = appendStringInfoString(v3, v13);
      v14 = *(v4 + 4);
      if (v12 + v11)
      {
        v15 = v12 + v11 >= (*(v4 + 16) + 8 * v14);
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        result = appendStringInfoChar(v3, 46);
        v14 = *(v4 + 4);
      }

      ++v10;
      v11 += 8;
    }

    while (v10 < v14);
    goto LABEL_40;
  }

  v6 = *(v4 + 16);
  if (strcmp(*(*v6 + 8), "pg_catalog"))
  {
    goto LABEL_23;
  }

  v7 = *(v6[1] + 8);
  if (!strcmp(v7, "bpchar"))
  {
    v9 = "char";
LABEL_38:
    v8 = v3;
    goto LABEL_39;
  }

  if (!strcmp(v7, "varchar"))
  {
    v9 = "varchar";
    goto LABEL_38;
  }

  if (!strcmp(v7, "numeric"))
  {
    v9 = "numeric";
    goto LABEL_38;
  }

  if (!strcmp(v7, "BOOL"))
  {
    v9 = "BOOLean";
    goto LABEL_38;
  }

  if (!strcmp(v7, "int2"))
  {
    v9 = "smallint";
    goto LABEL_38;
  }

  if (!strcmp(v7, "int4"))
  {
    v9 = "int";
    goto LABEL_38;
  }

  if (!strcmp(v7, "int8"))
  {
    v9 = "bigint";
    goto LABEL_38;
  }

  if (!strcmp(v7, "real") || !strcmp(v7, "float4"))
  {
    v9 = "real";
    goto LABEL_38;
  }

  if (!strcmp(v7, "float8"))
  {
    v9 = "double precision";
    goto LABEL_38;
  }

  if (!strcmp(v7, "time"))
  {
    v9 = "time";
    goto LABEL_38;
  }

  if (!strcmp(v7, "timetz"))
  {
    appendStringInfoString(v3, "time ");
    v32 = *(a2 + 24);
    if (!v32 || *(v32 + 4) < 1)
    {
      goto LABEL_105;
    }

    appendStringInfoChar(v3, 40);
    v33 = *(a2 + 24);
    if (v33 && *(v33 + 4) >= 1)
    {
      v34 = 0;
      v35 = 8;
      do
      {
        v36 = *(v33 + 16);
        appendStringInfo(v3, "%d", *(*(v36 + 8 * v34) + 16));
        if (v36 + v35)
        {
          v37 = v36 + v35 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(v3, ", ");
        }

        ++v34;
        v35 += 8;
      }

      while (v34 < *(v33 + 4));
    }

    goto LABEL_104;
  }

  if (!strcmp(v7, "timestamp"))
  {
    v9 = "timestamp";
    goto LABEL_38;
  }

  if (!strcmp(v7, "timestamptz"))
  {
    appendStringInfoString(v3, "timestamp ");
    v38 = *(a2 + 24);
    if (!v38 || *(v38 + 4) < 1)
    {
      goto LABEL_105;
    }

    appendStringInfoChar(v3, 40);
    v39 = *(a2 + 24);
    if (v39 && *(v39 + 4) >= 1)
    {
      v40 = 0;
      v41 = 8;
      do
      {
        v42 = *(v39 + 16);
        appendStringInfo(v3, "%d", *(*(v42 + 8 * v40) + 16));
        if (v42 + v41)
        {
          v43 = v42 + v41 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          appendStringInfoString(v3, ", ");
        }

        ++v40;
        v41 += 8;
      }

      while (v40 < *(v39 + 4));
    }

LABEL_104:
    appendStringInfoString(v3, ") ");
LABEL_105:
    result = appendStringInfoString(v3, "with time zone");
    v16 = 1;
    goto LABEL_41;
  }

  if (strcmp(v7, "interval"))
  {
LABEL_21:
    appendStringInfoString(v3, "pg_catalog.");
    v8 = v3;
    v9 = v7;
LABEL_39:
    result = appendStringInfoString(v8, v9);
    goto LABEL_40;
  }

  v44 = *(a2 + 24);
  if (!v44 || (v45 = *(v44 + 4)) == 0)
  {
    v9 = "interval";
    goto LABEL_38;
  }

  if (v45 < 1)
  {
    goto LABEL_21;
  }

  v46 = *(**(v44 + 16) + 16);
  result = appendStringInfoString(v3, "interval");
  if (v46 <= 2047)
  {
    if (v46 > 7)
    {
      switch(v46)
      {
        case 8:
          v47 = " day";
          goto LABEL_140;
        case 1024:
          v47 = " hour";
          goto LABEL_140;
        case 1032:
          v47 = " day to hour";
          goto LABEL_140;
      }
    }

    else
    {
      switch(v46)
      {
        case 2:
          v47 = " month";
          goto LABEL_140;
        case 4:
          v47 = " year";
          goto LABEL_140;
        case 6:
          v47 = " year to month";
          goto LABEL_140;
      }
    }
  }

  else if (v46 <= 4095)
  {
    switch(v46)
    {
      case 2048:
        v47 = " minute";
        goto LABEL_140;
      case 3072:
        v47 = " hour to minute";
        goto LABEL_140;
      case 3080:
        v47 = " day to minute";
        goto LABEL_140;
    }
  }

  else if (v46 > 7167)
  {
    if (v46 == 7168)
    {
      v47 = " hour to second";
      goto LABEL_140;
    }

    if (v46 == 7176)
    {
      v47 = " day to second";
      goto LABEL_140;
    }
  }

  else
  {
    if (v46 == 4096)
    {
      v47 = " second";
      goto LABEL_140;
    }

    if (v46 == 6144)
    {
      v47 = " minute to second";
LABEL_140:
      result = appendStringInfoString(v3, v47);
    }
  }

  v48 = *(a2 + 24);
  if (v48 && *(v48 + 4) == 2 && (v49 = *(*(*(v48 + 16) + 8) + 16), v49 != 0xFFFF))
  {
    result = appendStringInfo(v3, "(%d)", v49);
    v16 = 1;
  }

  else
  {
    v16 = 1;
  }

LABEL_41:
  v17 = *(a2 + 24);
  if (v17)
  {
    if (*(v17 + 4) < 1)
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      appendStringInfoChar(v3, 40);
      v18 = *(a2 + 24);
      if (v18 && *(v18 + 4) >= 1)
      {
        v19 = 0;
        v20 = 8;
        do
        {
          v21 = *(v18 + 16);
          v22 = *(v21 + 8 * v19);
          v23 = *v22;
          if (*v22 == 347)
          {
            v24 = **(*(v22 + 1) + 16);
            if (*v24 == 223)
            {
              v25 = quote_identifier(*(v24 + 8));
              appendStringInfoString(v3, v25);
            }

            else if (*v24 == 351)
            {
              appendStringInfoChar(v3, 42);
            }

            deparseOptIndirection(v3, *(v22 + 1), 1);
          }

          else if (v23 == 348)
          {
            if (v22[1])
            {
              appendStringInfo(v3, "$%d", v22[1]);
            }

            else
            {
              appendStringInfoChar(v3, 63);
            }
          }

          else if (v23 == 349)
          {
            deparseValue(v3, (v22 + 2), 11);
          }

          if (v21 + v20)
          {
            v26 = v21 + v20 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
          }

          else
          {
            v26 = 1;
          }

          if (!v26)
          {
            appendStringInfoString(v3, ", ");
          }

          ++v19;
          v20 += 8;
        }

        while (v19 < *(v18 + 4));
      }

      result = appendStringInfoChar(v3, 41);
    }
  }

  v27 = *(a2 + 40);
  if (v27 && *(v27 + 4) >= 1)
  {
    v28 = 0;
    do
    {
      v29 = *(v27 + 16);
      appendStringInfoChar(v3, 91);
      v30 = *(v29 + 8 * v28);
      if (*v30 == 221)
      {
        v31 = v30[2];
        if (v31 != -1)
        {
          appendStringInfo(v3, "%d", v31);
        }
      }

      result = appendStringInfoChar(v3, 93);
      ++v28;
    }

    while (v28 < *(v27 + 4));
  }

  if (*(a2 + 21))
  {

    return appendStringInfoString(v3, "%type");
  }

  return result;
}

void *deparseValue(void *result, uint64_t a2, int a3)
{
  v3 = *a2;
  if (*a2 <= 222)
  {
    if (v3 != 221)
    {
      if (v3 == 222)
      {
        v4 = *(a2 + 8);

        return appendStringInfoString(result, v4);
      }

      goto LABEL_29;
    }

    return appendStringInfo(result, "%d", *(a2 + 8));
  }

  else
  {
    switch(v3)
    {
      case 223:
        v4 = *(a2 + 8);
        if (a3 != 11)
        {
          if (a3 == 10)
          {
            v5 = result;
            v4 = quote_identifier(v4);
            result = v5;

            return appendStringInfoString(result, v4);
          }

LABEL_6:

          return appendStringInfoString(result, v4);
        }

        break;
      case 224:
        v6 = **(a2 + 8);
        if (v6 == 98)
        {
          v7 = result;
          v8 = a2;
          v9 = 98;
        }

        else
        {
          if (v6 != 120)
          {
            return result;
          }

          v7 = result;
          v8 = a2;
          v9 = 120;
        }

        appendStringInfoChar(result, v9);
        v4 = (*(v8 + 8) + 1);
        result = v7;
        break;
      case 225:
        v4 = "NULL";
        goto LABEL_6;
      default:
LABEL_29:
        deparseValue_cold_1();
    }

    return deparseStringLiteral(result, v4);
  }
}

void *deparseNumericOnly(void *result, uint64_t a2)
{
  if (*a2 == 222)
  {
    v3 = *(a2 + 8);

    return appendStringInfoString(result, v3);
  }

  else if (*a2 == 221)
  {
    return appendStringInfo(result, "%d", *(a2 + 8));
  }

  return result;
}

uint64_t deparseOptIndirection(uint64_t result, uint64_t a2, int a3)
{
  if (a2 && *(a2 + 4) > a3)
  {
    v4 = result;
    for (i = a3; *(a2 + 4) > i; ++i)
    {
      v8 = *(a2 + 16);
      v9 = *(v8 + 8 * i);
      v10 = *v9;
      if (*v9 == 352)
      {
        appendStringInfoChar(v4, 91);
        v11 = *(v9 + 1);
        if (v11)
        {
          deparseExpr(v4, v11);
        }

        if (*(v9 + 4) == 1)
        {
          appendStringInfoChar(v4, 58);
        }

        v12 = *(v9 + 2);
        if (v12)
        {
          deparseExpr(v4, v12);
        }

        result = appendStringInfoChar(v4, 93);
        continue;
      }

      if (v10 == 351)
      {
        v6 = v4;
        v7 = ".*";
      }

      else
      {
        if (v10 != 223)
        {
          continue;
        }

        appendStringInfoChar(v4, 46);
        v7 = quote_identifier(*(*(v8 + 8 * i) + 8));
        v6 = v4;
      }

      result = appendStringInfoString(v6, v7);
    }
  }

  return result;
}

void *deparseSubqueryOp(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!a2)
  {
    v8 = "OPERATOR(";
    goto LABEL_18;
  }

  if (*(a2 + 4) != 1)
  {
LABEL_13:
    appendStringInfoString(v2, "OPERATOR(");
    v9 = *(a2 + 4);
    if (v9 == 1)
    {
      v11 = *(a2 + 16);
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_19;
      }

      v10 = quote_identifier(*(**(a2 + 16) + 8));
      appendStringInfoString(v2, v10);
      appendStringInfoChar(v2, 46);
      v11 = *(a2 + 16) + 8 * (*(a2 + 4) - 1);
    }

    v8 = *(*v11 + 8);
LABEL_18:
    appendStringInfoString(v2, v8);
LABEL_19:
    v6 = ")";
    a1 = v2;

    return appendStringInfoString(a1, v6);
  }

  v4 = *(**(a2 + 16) + 8);
  if (__PAIR64__(v4[1], *v4) == 0x7E0000007ELL && !v4[2])
  {
    v6 = "LIKE";
  }

  else
  {
    v5 = *(**(a2 + 16) + 8);
    if (!strcmp(v5, "!~~"))
    {
      v6 = "NOT LIKE";
      a1 = v2;
    }

    else if (!strcmp(v5, "~~*"))
    {
      v6 = "ILIKE";
      a1 = v2;
    }

    else
    {
      if (strcmp(v5, "!~~*"))
      {
        if (isOp(v5))
        {
          a1 = v2;
          v6 = v5;

          return appendStringInfoString(a1, v6);
        }

        goto LABEL_13;
      }

      v6 = "NOT ILIKE";
      a1 = v2;
    }
  }

  return appendStringInfoString(a1, v6);
}

_BYTE *deparseIndexElem(_DWORD *a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    v5 = quote_identifier(result);
    appendStringInfoString(a1, v5);
    result = appendStringInfoChar(a1, 32);
    v6 = *(a2 + 32);
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_11:
    v6 = *(a2 + 32);
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if ((*v7 - 136) < 4 || ((v8 = *v7 - 350, v9 = v8 > 0x23, v10 = (1 << v8) & 0x800000081, !v9) ? (v11 = v10 == 0) : (v11 = 1), !v11))
  {
    result = deparseFuncExprWindowless(a1, v7);
    goto LABEL_11;
  }

  appendStringInfoChar(a1, 40);
  deparseExpr(a1, *(a2 + 16));
  result = appendStringInfoString(a1, ") ");
  v6 = *(a2 + 32);
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (*(v6 + 4) >= 1)
  {
    appendStringInfoString(a1, "COLLATE ");
    if (*(v6 + 4) >= 1)
    {
      v12 = 0;
      v13 = 8;
      do
      {
        v14 = *(v6 + 16);
        v15 = quote_identifier(*(*(v14 + 8 * v12) + 8));
        appendStringInfoString(a1, v15);
        v16 = *(v6 + 4);
        if (v14 + v13)
        {
          v17 = v14 + v13 >= (*(v6 + 16) + 8 * v16);
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          appendStringInfoChar(a1, 46);
          v16 = *(v6 + 4);
        }

        ++v12;
        v13 += 8;
      }

      while (v12 < v16);
    }

    result = appendStringInfoChar(a1, 32);
  }

LABEL_22:
  v18 = *(a2 + 40);
  if (v18 && *(v18 + 4) >= 1)
  {
    v19 = 0;
    v20 = 8;
    do
    {
      v21 = *(v18 + 16);
      v22 = quote_identifier(*(*(v21 + 8 * v19) + 8));
      appendStringInfoString(a1, v22);
      v23 = *(v18 + 4);
      if (v21 + v20)
      {
        v24 = v21 + v20 >= (*(v18 + 16) + 8 * v23);
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        appendStringInfoChar(a1, 46);
        v23 = *(v18 + 4);
      }

      ++v19;
      v20 += 8;
    }

    while (v19 < v23);
    v25 = *(a2 + 48);
    if (v25 && *(v25 + 4) >= 1)
    {
      deparseRelOptions(a1, v25);
    }

    result = appendStringInfoChar(a1, 32);
  }

  v26 = *(a2 + 56);
  if (v26 == 1)
  {
    v27 = "ASC ";
  }

  else
  {
    if (v26 != 2)
    {
      goto LABEL_40;
    }

    v27 = "DESC ";
  }

  result = appendStringInfoString(a1, v27);
LABEL_40:
  v28 = *(a2 + 60);
  if (v28 == 1)
  {
    v29 = "NULLS FIRST ";
  }

  else
  {
    if (v28 != 2)
    {
      goto LABEL_45;
    }

    v29 = "NULLS LAST ";
  }

  result = appendStringInfoString(a1, v29);
LABEL_45:
  v30 = a1[2];
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v32 < 0 == v31)
  {
    v33 = *a1;
    if (*(*a1 + v32) == 32)
    {
      a1[2] = v32;
      *(v33 + v32) = 0;
    }
  }

  return result;
}

uint64_t deparseRangeVar(uint64_t *a1, uint64_t a2, int a3)
{
  if ((a3 & 0xFFFFFFFE) != 8 && (*(a2 + 32) & 1) == 0)
  {
    appendStringInfoString(a1, "ONLY ");
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = quote_identifier(v6);
    appendStringInfoString(a1, v7);
    appendStringInfoChar(a1, 46);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = quote_identifier(v8);
    appendStringInfoString(a1, v9);
    appendStringInfoChar(a1, 46);
  }

  v10 = quote_identifier(*(a2 + 24));
  appendStringInfoString(a1, v10);
  result = appendStringInfoChar(a1, 32);
  v12 = *(a2 + 40);
  if (v12)
  {
    if (a3 == 1)
    {
      appendStringInfoString(a1, "AS ");
      v12 = *(a2 + 40);
    }

    v13 = quote_identifier(*(v12 + 8));
    appendStringInfoString(a1, v13);
    v14 = *(v12 + 16);
    if (v14 && *(v14 + 4) >= 1)
    {
      appendStringInfoChar(a1, 40);
      v15 = *(v12 + 16);
      if (v15 && *(v15 + 4) >= 1)
      {
        v16 = 0;
        v17 = 8;
        do
        {
          v18 = *(v15 + 16);
          v19 = quote_identifier(*(*(v18 + 8 * v16) + 8));
          appendStringInfoString(a1, v19);
          v20 = *(v15 + 4);
          if (v18 + v17)
          {
            v21 = v18 + v17 >= (*(v15 + 16) + 8 * v20);
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            appendStringInfoString(a1, ", ");
            v20 = *(v15 + 4);
          }

          ++v16;
          v17 += 8;
        }

        while (v16 < v20);
      }

      appendStringInfoChar(a1, 41);
    }

    result = appendStringInfoChar(a1, 32);
  }

  v22 = *(a1 + 2);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v24 < 0 == v23)
  {
    v25 = *a1;
    if (*(*a1 + v24) == 32)
    {
      *(a1 + 2) = v24;
      *(v25 + v24) = 0;
    }
  }

  return result;
}

unint64_t deparseSeqOptElem(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (__PAIR64__(*(v4 + 1), *v4) == 0x7300000061 && !v4[2])
  {
    appendStringInfoString(a1, "AS ");
    v11 = *(a2 + 24);

    return deparseTypeName(a1, v11);
  }

  if (!strcmp(v4, "cache"))
  {
    result = appendStringInfoString(a1, "CACHE ");
    v7 = *(a2 + 24);
    v8 = *v7;
    if (*v7 != 222)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (!strcmp(v4, "cycle"))
  {
    v9 = *(*(a2 + 24) + 8);
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_5;
      }

      v10 = "CYCLE";
    }

    else
    {
      v10 = "NO CYCLE";
    }

LABEL_33:

    return appendStringInfoString(a1, v10);
  }

LABEL_5:
  if (!strcmp(v4, "increment"))
  {
    result = appendStringInfoString(a1, "INCREMENT ");
    v7 = *(a2 + 24);
    v8 = *v7;
    if (*v7 != 222)
    {
      goto LABEL_23;
    }

LABEL_32:
    v10 = *(v7 + 1);
    goto LABEL_33;
  }

  if (!strcmp(v4, "maxvalue"))
  {
    if (!*(a2 + 24))
    {
      v10 = "NO MAXVALUE";
      goto LABEL_33;
    }

    result = appendStringInfoString(a1, "MAXVALUE ");
    v7 = *(a2 + 24);
    v8 = *v7;
    if (*v7 == 222)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  if (!strcmp(v4, "minvalue"))
  {
    if (!*(a2 + 24))
    {
      v10 = "NO MINVALUE";
      goto LABEL_33;
    }

    result = appendStringInfoString(a1, "MINVALUE ");
    v7 = *(a2 + 24);
    v8 = *v7;
    if (*v7 == 222)
    {
      goto LABEL_32;
    }

LABEL_23:
    if (v8 == 221)
    {
      return appendStringInfo(a1, "%d", v7[2]);
    }

    return result;
  }

  if (!strcmp(v4, "owned_by"))
  {
    result = appendStringInfoString(a1, "OWNED BY ");
    v12 = *(a2 + 24);
    if (v12 && *(v12 + 4) >= 1)
    {
      v13 = 0;
      v14 = 8;
      do
      {
        v15 = *(v12 + 16);
        v16 = quote_identifier(*(*(v15 + 8 * v13) + 8));
        result = appendStringInfoString(a1, v16);
        v17 = *(v12 + 4);
        if (v15 + v14)
        {
          v18 = v15 + v14 >= (*(v12 + 16) + 8 * v17);
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          result = appendStringInfoChar(a1, 46);
          v17 = *(v12 + 4);
        }

        ++v13;
        v14 += 8;
      }

      while (v13 < v17);
    }
  }

  else
  {
    if (strcmp(v4, "sequence_name"))
    {
      if (!strcmp(v4, "start"))
      {
        v6 = "START ";
        goto LABEL_57;
      }

      result = strcmp(v4, "restart");
      if (result)
      {
        return result;
      }

      if (*(a2 + 24))
      {
        v6 = "RESTART ";
LABEL_57:
        appendStringInfoString(a1, v6);
        v26 = *(a2 + 24);

        return deparseNumericOnly(a1, v26);
      }

      v10 = "RESTART";
      goto LABEL_33;
    }

    result = appendStringInfoString(a1, "SEQUENCE NAME ");
    v19 = *(a2 + 24);
    if (v19 && *(v19 + 4) >= 1)
    {
      v20 = 0;
      v21 = 8;
      do
      {
        v22 = *(v19 + 16);
        v23 = quote_identifier(*(*(v22 + 8 * v20) + 8));
        result = appendStringInfoString(a1, v23);
        v24 = *(v19 + 4);
        if (v22 + v21)
        {
          v25 = v22 + v21 >= (*(v19 + 16) + 8 * v24);
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          result = appendStringInfoChar(a1, 46);
          v24 = *(v19 + 4);
        }

        ++v20;
        v21 += 8;
      }

      while (v20 < v24);
    }
  }

  return result;
}

void *deparseFuncExprWindowless(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 <= 138)
  {
    if (v4 == 136)
    {
      appendStringInfoString(result, "COALESCE(");
      v8 = *(a2 + 16);
      if (v8 && *(v8 + 4) >= 1)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = *(v8 + 16);
          deparseExpr(v3, *(v11 + 8 * v9));
          v12 = *(v8 + 4);
          if (v11 + v10)
          {
            v13 = v11 + v10 >= (*(v8 + 16) + 8 * v12);
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            appendStringInfoString(v3, ", ");
            v12 = *(v8 + 4);
          }

          ++v9;
          v10 += 8;
        }

        while (v9 < v12);
      }

      goto LABEL_55;
    }

    if (v4 != 137)
    {
      if (v4 == 138)
      {
        v5 = *(a2 + 4);
        if (v5 <= 0xE)
        {
          result = appendStringInfoString(result, (&off_2797B6C40)[v5]);
        }

        if (*(a2 + 12) != -1)
        {
          return appendStringInfo(v3, "(%d)", *(a2 + 12));
        }
      }

      return result;
    }

    v14 = *(a2 + 16);
    if (v14)
    {
      if (v14 != 1)
      {
LABEL_46:
        v16 = *(a2 + 24);
        if (v16 && *(v16 + 4) >= 1)
        {
          v17 = 0;
          v18 = 8;
          do
          {
            v19 = *(v16 + 16);
            deparseExpr(v3, *(v19 + 8 * v17));
            v20 = *(v16 + 4);
            if (v19 + v18)
            {
              v21 = v19 + v18 >= (*(v16 + 16) + 8 * v20);
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              appendStringInfoString(v3, ", ");
              v20 = *(v16 + 4);
            }

            ++v17;
            v18 += 8;
          }

          while (v17 < v20);
        }

LABEL_55:

        return appendStringInfoChar(v3, 41);
      }

      v15 = "LEAST(";
    }

    else
    {
      v15 = "GREATEST(";
    }

    appendStringInfoString(result, v15);
    goto LABEL_46;
  }

  if (v4 <= 356)
  {
    if (v4 == 139)
    {

      return deparseXmlExpr(result, a2);
    }

    else if (v4 == 350)
    {

      return deparseFuncCall(result, a2);
    }

    return result;
  }

  if (v4 != 357)
  {
    if (v4 != 385)
    {
      return result;
    }

    appendStringInfoString(result, "xmlserialize(");
    v6 = *(a2 + 4);
    if (v6)
    {
      if (v6 != 1)
      {
LABEL_41:
        deparseExpr(v3, *(a2 + 8));
        appendStringInfoString(v3, " AS ");
        deparseTypeName(v3, *(a2 + 16));

        return appendStringInfoString(v3, ")");
      }

      v7 = "content ";
    }

    else
    {
      v7 = "document ";
    }

    appendStringInfoString(v3, v7);
    goto LABEL_41;
  }

  return deparseTypeCast(result, a2);
}

uint64_t deparseRelOptions(void *a1, uint64_t a2)
{
  appendStringInfoChar(a1, 40);
  if (a2 && *(a2 + 4) >= 1)
  {
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      v7 = *(v6 + 8 * v4);
      v8 = v7[1];
      if (v8)
      {
        v9 = quote_identifier(v8);
        appendStringInfoString(a1, v9);
        appendStringInfoChar(a1, 46);
      }

      v10 = v7[2];
      if (v10)
      {
        v11 = quote_identifier(v10);
        appendStringInfoString(a1, v11);
        if (v7[2])
        {
          if (v7[3])
          {
            appendStringInfoChar(a1, 61);
          }
        }
      }

      v12 = v7[3];
      if (v12)
      {
        deparseDefArg(a1, v12, 0);
      }

      if (v6 + v5)
      {
        v13 = v6 + v5 >= (*(a2 + 16) + 8 * *(a2 + 4));
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        appendStringInfoString(a1, ", ");
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < *(a2 + 4));
  }

  return appendStringInfoChar(a1, 41);
}

void *deparseDefArg(void *result, uint64_t a2, char a3)
{
  v3 = *a2;
  if (*a2 <= 225)
  {
    if ((v3 - 221) < 2)
    {

      return deparseValue(result, a2, 0);
    }

    if (v3 != 223)
    {
      return result;
    }

    v4 = result;
    v5 = *(a2 + 8);
    if ((a3 & 1) == 0 && !strcmp(v5, "none"))
    {
      v16 = "NONE";
      result = v4;
    }

    else
    {
      v6 = ScanKeywordLookup(v5, &ScanKeywords);
      v7 = *v5;
      if (*v5)
      {
        v8 = (v5 + 1);
        while ((v7 - 97) < 0x1A || v7 == 95 || (v7 - 48) <= 9)
        {
          v9 = *v8++;
          v7 = v9;
          if (!v9)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_32;
      }

LABEL_27:
      if (v6 < 0 || ScanKeywordCategories[v6] != 3)
      {
LABEL_32:

        return deparseStringLiteral(v4, v5);
      }

      result = v4;
      v16 = v5;
    }

    return appendStringInfoString(result, v16);
  }

  if (v3 != 226)
  {
    if (v3 == 366)
    {

      return deparseTypeName(result, a2);
    }

    return result;
  }

  v10 = *(a2 + 4);
  if (v10 == 1)
  {
    v16 = *(**(a2 + 16) + 8);

    return appendStringInfoString(result, v16);
  }

  if (v10 != 2)
  {
    return result;
  }

  v11 = result;
  appendStringInfoString(result, "OPERATOR(");
  v13 = *(a2 + 4);
  if (v13 == 1)
  {
    v15 = *(a2 + 16);
    goto LABEL_42;
  }

  if (v13 == 2)
  {
    v14 = quote_identifier(*(**(a2 + 16) + 8));
    appendStringInfoString(v11, v14);
    appendStringInfoChar(v11, 46);
    v15 = *(a2 + 16) + 8 * (*(a2 + 4) - 1);
LABEL_42:
    appendStringInfoString(v11, *(*v15 + 8));
  }

  return appendStringInfoChar(v11, 41);
}

uint64_t deparseAggregateWithArgtypes(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 && *(v4 + 4) >= 1)
  {
    v5 = 0;
    v6 = 8;
    do
    {
      v7 = *(v4 + 16);
      v8 = quote_identifier(*(*(v7 + 8 * v5) + 8));
      appendStringInfoString(a1, v8);
      v9 = *(v4 + 4);
      if (v7 + v6)
      {
        v10 = v7 + v6 >= (*(v4 + 16) + 8 * v9);
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        appendStringInfoChar(a1, 46);
        v9 = *(v4 + 4);
      }

      ++v5;
      v6 += 8;
    }

    while (v5 < v9);
  }

  appendStringInfoChar(a1, 40);
  v11 = *(a2 + 16);
  if (v11)
  {
    if (*(v11 + 4) >= 1)
    {
      v12 = 0;
      v13 = 8;
      do
      {
        v14 = *(v11 + 16);
        deparseTypeName(a1, *(v14 + 8 * v12));
        if (v14 + v13)
        {
          v15 = v14 + v13 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(a1, ", ");
        }

        ++v12;
        v13 += 8;
      }

      while (v12 < *(v11 + 4));
    }
  }

  else
  {
    appendStringInfoChar(a1, 42);
  }

  return appendStringInfoChar(a1, 41);
}

_DWORD *deparseFunctionWithArgtypes(_DWORD *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4 && *(v4 + 4) >= 1)
  {
    v5 = 0;
    v6 = 8;
    do
    {
      v7 = *(v4 + 16);
      v8 = quote_identifier(*(*(v7 + 8 * v5) + 8));
      result = appendStringInfoString(v3, v8);
      v9 = *(v4 + 4);
      if (v7 + v6)
      {
        v10 = v7 + v6 >= (*(v4 + 16) + 8 * v9);
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        result = appendStringInfoChar(v3, 46);
        v9 = *(v4 + 4);
      }

      ++v5;
      v6 += 8;
    }

    while (v5 < v9);
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    appendStringInfoChar(v3, 40);
    v11 = *(a2 + 16);
    if (v11 && *(v11 + 4) >= 1)
    {
      v12 = 0;
      v13 = 8;
      do
      {
        v14 = *(v11 + 16);
        v15 = *(v14 + 8 * v12);
        if (*v15 == 366)
        {
          deparseTypeName(v3, v15);
        }

        else
        {
          deparseFunctionParameter(v3, v15);
        }

        if (v14 + v13)
        {
          v16 = v14 + v13 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          appendStringInfoString(v3, ", ");
        }

        ++v12;
        v13 += 8;
      }

      while (v12 < *(v11 + 4));
    }

    return appendStringInfoChar(v3, 41);
  }

  return result;
}

uint64_t deparseOperatorWithArgtypes(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 4);
  if (v5 == 1)
  {
    v7 = *(v4 + 16);
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_7;
    }

    v6 = quote_identifier(*(**(v4 + 16) + 8));
    appendStringInfoString(a1, v6);
    appendStringInfoChar(a1, 46);
    v7 = *(v4 + 16) + 8 * (*(v4 + 4) - 1);
  }

  appendStringInfoString(a1, *(*v7 + 8));
LABEL_7:
  appendStringInfoChar(a1, 40);
  v8 = **(*(a2 + 16) + 16);
  if (v8)
  {
    deparseTypeName(a1, v8);
  }

  else
  {
    appendStringInfoString(a1, "NONE");
  }

  appendStringInfoString(a1, ", ");
  v9 = *(*(*(a2 + 16) + 16) + 8);
  if (v9)
  {
    deparseTypeName(a1, v9);
  }

  else
  {
    appendStringInfoString(a1, "NONE");
  }

  return appendStringInfoChar(a1, 41);
}

uint64_t deparseFunctionParameter(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  switch(v4)
  {
    case 'v':
      v5 = "VARIADIC ";
      break;
    case 'o':
      v5 = "OUT ";
      break;
    case 'b':
      v5 = "INOUT ";
      break;
    default:
      goto LABEL_8;
  }

  appendStringInfoString(a1, v5);
LABEL_8:
  v6 = *(a2 + 8);
  if (v6)
  {
    appendStringInfoString(a1, v6);
    appendStringInfoChar(a1, 32);
  }

  deparseTypeName(a1, *(a2 + 16));
  result = appendStringInfoChar(a1, 32);
  if (*(a2 + 32))
  {
    appendStringInfoString(a1, "= ");
    result = deparseExpr(a1, *(a2 + 32));
  }

  v8 = a1[2];
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v10 < 0 == v9)
  {
    v11 = *a1;
    if (*(*a1 + v10) == 32)
    {
      a1[2] = v10;
      *(v11 + v10) = 0;
    }
  }

  return result;
}

uint64_t deparseFdwOptions(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    while (1)
    {
      v5 = *(a2 + 16) + 8 * v4;
      v6 = *v5;
      v7 = *(*v5 + 16);
      if (!strcmp(v7, "handler"))
      {
        break;
      }

      result = strcmp(v7, "validator");
      if (!result)
      {
        if (*(v6 + 24))
        {
          result = appendStringInfoString(v3, "VALIDATOR ");
          v8 = *(v6 + 24);
          if (v8 && *(v8 + 4) >= 1)
          {
            v9 = 0;
            v10 = 8;
            do
            {
              v11 = *(v8 + 16);
              v12 = quote_identifier(*(*(v11 + 8 * v9) + 8));
              result = appendStringInfoString(v3, v12);
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
                result = appendStringInfoChar(v3, 46);
                v13 = *(v8 + 4);
              }

              ++v9;
              v10 += 8;
            }

            while (v9 < v13);
          }

          goto LABEL_30;
        }

        v22 = "NO VALIDATOR ";
        goto LABEL_29;
      }

LABEL_30:
      if (v5 != -8 && v5 + 8 < (*(a2 + 16) + 8 * *(a2 + 4)))
      {
        result = appendStringInfoChar(v3, 32);
      }

      if (++v4 >= *(a2 + 4))
      {
        return result;
      }
    }

    if (*(v6 + 24))
    {
      result = appendStringInfoString(v3, "HANDLER ");
      v15 = *(v6 + 24);
      if (v15 && *(v15 + 4) >= 1)
      {
        v16 = 0;
        v17 = 8;
        do
        {
          v18 = *(v15 + 16);
          v19 = quote_identifier(*(*(v18 + 8 * v16) + 8));
          result = appendStringInfoString(v3, v19);
          v20 = *(v15 + 4);
          if (v18 + v17)
          {
            v21 = v18 + v17 >= (*(v15 + 16) + 8 * v20);
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            result = appendStringInfoChar(v3, 46);
            v20 = *(v15 + 4);
          }

          ++v16;
          v17 += 8;
        }

        while (v16 < v20);
      }

      goto LABEL_30;
    }

    v22 = "NO HANDLER ";
LABEL_29:
    result = appendStringInfoString(v3, v22);
    goto LABEL_30;
  }

  return result;
}

void *deparseAlterGenericOptions(uint64_t a1, uint64_t a2)
{
  appendStringInfoString(a1, "OPTIONS (");
  if (a2 && *(a2 + 4) >= 1)
  {
    v4 = 0;
    v5 = 8;
    while (1)
    {
      v6 = *(a2 + 16);
      v7 = *(v6 + 8 * v4);
      v8 = *(v7 + 32);
      if (v8 > 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_14;
      }

      if (v8 == 1)
      {
        v9 = a1;
        v10 = "SET ";
LABEL_13:
        appendStringInfoString(v9, v10);
LABEL_14:
        v12 = quote_identifier(*(v7 + 16));
        appendStringInfoString(a1, v12);
        appendStringInfoChar(a1, 32);
        deparseStringLiteral(a1, *(*(v7 + 24) + 8));
      }

LABEL_15:
      if (v6 + v5)
      {
        v13 = v6 + v5 >= (*(a2 + 16) + 8 * *(a2 + 4));
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        appendStringInfoString(a1, ", ");
      }

      ++v4;
      v5 += 8;
      if (v4 >= *(a2 + 4))
      {
        goto LABEL_20;
      }
    }

    if (v8 != 2)
    {
      if (v8 == 3)
      {
        appendStringInfoString(a1, "DROP ");
        v11 = quote_identifier(*(v7 + 16));
        appendStringInfoString(a1, v11);
      }

      goto LABEL_15;
    }

    v9 = a1;
    v10 = "ADD ";
    goto LABEL_13;
  }

LABEL_20:

  return appendStringInfoString(a1, ") ");
}

uint64_t deparseCommonFuncOptItem(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!strcmp(v4, "strict"))
  {
    v7 = *(*(a2 + 24) + 8);
    if (!v7)
    {
      v8 = "CALLED ON NULL INPUT";
      goto LABEL_38;
    }

    if (v7 == 1)
    {
      v8 = "RETURNS NULL ON NULL INPUT";
LABEL_38:

      return appendStringInfoString(a1, v8);
    }
  }

  if (!strcmp(v4, "volatility"))
  {
    v9 = *(*(a2 + 24) + 8);
    if (!strcmp(v9, "immutable"))
    {
      v8 = "IMMUTABLE";
      goto LABEL_38;
    }

    if (!strcmp(v9, "stable"))
    {
      v8 = "STABLE";
      goto LABEL_38;
    }

    if (!strcmp(v9, "volatile"))
    {
      v8 = "VOLATILE";
      goto LABEL_38;
    }
  }

  if (!strcmp(v4, "security"))
  {
    v10 = *(*(a2 + 24) + 8);
    if (!v10)
    {
      v8 = "SECURITY INVOKER";
      goto LABEL_38;
    }

    if (v10 == 1)
    {
      v8 = "SECURITY DEFINER";
      goto LABEL_38;
    }
  }

  if (strcmp(v4, "leakproof"))
  {
    goto LABEL_5;
  }

  v11 = *(*(a2 + 24) + 8);
  if (!v11)
  {
    v8 = "NOT LEAKPROOF";
    goto LABEL_38;
  }

  if (v11 == 1)
  {
    v8 = "LEAKPROOF";
    goto LABEL_38;
  }

LABEL_5:
  if (!strcmp(v4, "cost"))
  {
    v12 = "COST ";
LABEL_30:
    appendStringInfoString(a1, v12);
    v13 = *(a2 + 24);

    return deparseValue(a1, v13, 0);
  }

  if (!strcmp(v4, "rows"))
  {
    v12 = "ROWS ";
    goto LABEL_30;
  }

  if (strcmp(v4, "support"))
  {
    if (!strcmp(v4, "set"))
    {
      v5 = *(a2 + 24);
      if (*v5 == 273)
      {

        return deparseVariableSetStmt(a1, v5);
      }
    }

    result = strcmp(v4, "parallel");
    if (result)
    {
      return result;
    }

    appendStringInfoString(a1, "PARALLEL ");
    v8 = quote_identifier(*(*(a2 + 24) + 8));
    goto LABEL_38;
  }

  result = appendStringInfoString(a1, "SUPPORT ");
  v14 = *(a2 + 24);
  if (v14 && *(v14 + 4) >= 1)
  {
    v15 = 0;
    v16 = 8;
    do
    {
      v17 = *(v14 + 16);
      v18 = quote_identifier(*(*(v17 + 8 * v15) + 8));
      result = appendStringInfoString(a1, v18);
      v19 = *(v14 + 4);
      if (v17 + v16)
      {
        v20 = v17 + v16 >= (*(v14 + 16) + 8 * v19);
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        result = appendStringInfoChar(a1, 46);
        v19 = *(v14 + 4);
      }

      ++v15;
      v16 += 8;
    }

    while (v15 < v19);
  }

  return result;
}

void *deparseOperatorDefList(void *result, uint64_t a2)
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
      v8 = quote_identifier(*(v7 + 16));
      appendStringInfoString(v3, v8);
      appendStringInfoString(v3, " = ");
      v9 = *(v7 + 24);
      if (v9)
      {
        result = deparseDefArg(v3, v9, 1);
        v10 = *(a2 + 4);
        v11 = v6 + v5;
        if (v6 + v5)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = appendStringInfoString(v3, "NONE");
        v10 = *(a2 + 4);
        v11 = v6 + v5;
        if (v6 + v5)
        {
LABEL_9:
          if (v11 < *(a2 + 16) + 8 * v10)
          {
            result = appendStringInfoString(v3, ", ");
            v10 = *(a2 + 4);
          }
        }
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v10);
  }

  return result;
}

_DWORD *deparseColumnDef(_DWORD *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    appendStringInfoString(result, v4);
    result = appendStringInfoChar(v3, 32);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    deparseTypeName(v3, v5);
    result = appendStringInfoChar(v3, 32);
  }

  if (*(a2 + 32))
  {
    appendStringInfoString(v3, "USING ");
    deparseExpr(v3, *(a2 + 32));
    result = appendStringInfoChar(v3, 32);
  }

  v6 = *(a2 + 96);
  if (v6)
  {
    deparseCreateGenericOptions(v3, v6);
    result = appendStringInfoChar(v3, 32);
  }

  v7 = *(a2 + 88);
  if (v7 && *(v7 + 4) >= 1)
  {
    v8 = 0;
    do
    {
      deparseConstraint(v3, *(*(v7 + 16) + 8 * v8));
      result = appendStringInfoChar(v3, 32);
      ++v8;
    }

    while (v8 < *(v7 + 4));
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    result = deparseCollateClause(v3, v9);
  }

  v10 = v3[2];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v12 < 0 == v11)
  {
    v13 = *v3;
    if (*(*v3 + v12) == 32)
    {
      v3[2] = v12;
      *(v13 + v12) = 0;
    }
  }

  return result;
}

void *deparsePartitionBoundSpec(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 5) == 1)
  {

    return appendStringInfoString(a1, "DEFAULT");
  }

  result = appendStringInfoString(a1, "FOR VALUES ");
  v5 = *(a2 + 4);
  switch(v5)
  {
    case 'r':
      appendStringInfoString(a1, "FROM (");
      v12 = *(a2 + 24);
      if (v12 && *(v12 + 4) >= 1)
      {
        v13 = 0;
        v14 = 8;
        do
        {
          v15 = *(v12 + 16);
          deparseExpr(a1, *(v15 + 8 * v13));
          v16 = *(v12 + 4);
          if (v15 + v14)
          {
            v17 = v15 + v14 >= (*(v12 + 16) + 8 * v16);
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            appendStringInfoString(a1, ", ");
            v16 = *(v12 + 4);
          }

          ++v13;
          v14 += 8;
        }

        while (v13 < v16);
      }

      appendStringInfoString(a1, ") TO (");
      v18 = *(a2 + 32);
      if (v18 && *(v18 + 4) >= 1)
      {
        v19 = 0;
        v20 = 8;
        do
        {
          v21 = *(v18 + 16);
          deparseExpr(a1, *(v21 + 8 * v19));
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
            appendStringInfoString(a1, ", ");
            v22 = *(v18 + 4);
          }

          ++v19;
          v20 += 8;
        }

        while (v19 < v22);
      }

      break;
    case 'l':
      appendStringInfoString(a1, "IN (");
      v6 = *(a2 + 16);
      if (v6 && *(v6 + 4) >= 1)
      {
        v7 = 0;
        v8 = 8;
        do
        {
          v9 = *(v6 + 16);
          deparseExpr(a1, *(v9 + 8 * v7));
          v10 = *(v6 + 4);
          if (v9 + v8)
          {
            v11 = v9 + v8 >= (*(v6 + 16) + 8 * v10);
          }

          else
          {
            v11 = 1;
          }

          if (!v11)
          {
            appendStringInfoString(a1, ", ");
            v10 = *(v6 + 4);
          }

          ++v7;
          v8 += 8;
        }

        while (v7 < v10);
      }

      break;
    case 'h':
      return appendStringInfo(a1, "WITH (MODULUS %d, REMAINDER %d)", *(a2 + 8), *(a2 + 12));
    default:
      return result;
  }

  return appendStringInfoChar(a1, 41);
}

void *deparseCreateGenericOptions(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    appendStringInfoString(result, "OPTIONS (");
    if (*(a2 + 4) >= 1)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        v6 = *(a2 + 16);
        v7 = *(v6 + 8 * v4);
        v8 = quote_identifier(*(v7 + 16));
        appendStringInfoString(v3, v8);
        appendStringInfoChar(v3, 32);
        deparseStringLiteral(v3, *(*(v7 + 24) + 8));
        v9 = *(a2 + 4);
        if (v6 + v5)
        {
          v10 = v6 + v5 >= (*(a2 + 16) + 8 * v9);
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          appendStringInfoString(v3, ", ");
          v9 = *(a2 + 4);
        }

        ++v4;
        v5 += 8;
      }

      while (v4 < v9);
    }

    return appendStringInfoString(v3, ") ");
  }

  return result;
}

uint64_t deparseDefinition(void *a1, uint64_t a2)
{
  appendStringInfoChar(a1, 40);
  if (a2 && *(a2 + 4) >= 1)
  {
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      v7 = *(v6 + 8 * v4);
      v8 = quote_identifier(*(v7 + 16));
      appendStringInfoString(a1, v8);
      if (*(v7 + 24))
      {
        appendStringInfoString(a1, " = ");
        deparseDefArg(a1, *(v7 + 24), 0);
      }

      v9 = *(a2 + 4);
      if (v6 + v5)
      {
        v10 = v6 + v5 >= (*(a2 + 16) + 8 * v9);
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        appendStringInfoString(a1, ", ");
        v9 = *(a2 + 4);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v9);
  }

  return appendStringInfoChar(a1, 41);
}

uint64_t deparseAlterRoleElem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (strcmp(v4, "password"))
  {
    if (!strcmp(v4, "connectionlimit"))
    {
      return appendStringInfo(a1, "CONNECTION LIMIT %d");
    }

    if (strcmp(v4, "validUntil"))
    {
      if (strcmp(v4, "superuser"))
      {
        goto LABEL_33;
      }

      v10 = *(*(a2 + 24) + 8);
      if (!v10)
      {
        v7 = "NOSUPERUSER";
        goto LABEL_26;
      }

      if (v10 == 1)
      {
        v7 = "SUPERUSER";
      }

      else
      {
        if (strcmp(v4, "createrole"))
        {
          goto LABEL_36;
        }

LABEL_33:
        v11 = *(*(a2 + 24) + 8);
        if (!v11)
        {
          v7 = "NOCREATEROLE";
          goto LABEL_26;
        }

        if (v11 == 1)
        {
          v7 = "CREATEROLE";
        }

        else
        {
          if (strcmp(v4, "isreplication"))
          {
            goto LABEL_39;
          }

LABEL_36:
          v12 = *(*(a2 + 24) + 8);
          if (!v12)
          {
            v7 = "NOREPLICATION";
            goto LABEL_26;
          }

          if (v12 == 1)
          {
            v7 = "REPLICATION";
          }

          else
          {
            if (strcmp(v4, "createdb"))
            {
              goto LABEL_46;
            }

LABEL_39:
            v13 = *(*(a2 + 24) + 8);
            if (!v13)
            {
              v7 = "NOCREATEDB";
              goto LABEL_26;
            }

            if (v13 == 1)
            {
              v7 = "CREATEDB";
            }

            else
            {
              if (strcmp(v4, "canlogin"))
              {
                goto LABEL_59;
              }

LABEL_46:
              v14 = *(*(a2 + 24) + 8);
              if (!v14)
              {
                v7 = "NOLOGIN";
                goto LABEL_26;
              }

              if (v14 == 1)
              {
                v7 = "LOGIN";
              }

              else
              {
LABEL_59:
                if (strcmp(v4, "bypassrls"))
                {
                  goto LABEL_10;
                }

                v15 = *(*(a2 + 24) + 8);
                if (v15)
                {
                  if (v15 != 1)
                  {
LABEL_10:
                    result = strcmp(v4, "inherit");
                    if (result)
                    {
                      return result;
                    }

                    v6 = *(*(a2 + 24) + 8);
                    if (v6)
                    {
                      if (v6 != 1)
                      {
                        return result;
                      }

                      v7 = "INHERIT";
                    }

                    else
                    {
                      v7 = "NOINHERIT";
                    }

                    goto LABEL_26;
                  }

                  v7 = "BYPASSRLS";
                }

                else
                {
                  v7 = "NOBYPASSRLS";
                }
              }
            }
          }
        }
      }

LABEL_26:

      return appendStringInfoString(a1, v7);
    }

    appendStringInfoString(a1, "VALID UNTIL ");
    v8 = *(a2 + 24);
LABEL_22:
    v9 = *(v8 + 8);

    return deparseStringLiteral(a1, v9);
  }

  result = appendStringInfoString(a1, "PASSWORD ");
  v8 = *(a2 + 24);
  if (!v8)
  {
    v7 = "NULL";
    goto LABEL_26;
  }

  if (*v8 == 223)
  {
    goto LABEL_22;
  }

  if (*v8 == 348)
  {
    if (*(v8 + 4))
    {
      return appendStringInfo(a1, "$%d");
    }

    else
    {

      return appendStringInfoChar(a1, 63);
    }
  }

  return result;
}

uint64_t deparseAnyNameList(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 4);
    if (v3 >= 1)
    {
      v4 = result;
      for (i = 0; i < v3; ++i)
      {
        while (1)
        {
          v6 = *(a2 + 16);
          v7 = (v6 + 8 * i);
          v8 = *v7;
          if (*v7 && *(v8 + 4) >= 1)
          {
            v9 = 0;
            v10 = 8;
            do
            {
              v11 = *(v8 + 16);
              v12 = quote_identifier(*(*(v11 + 8 * v9) + 8));
              result = appendStringInfoString(v4, v12);
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
                result = appendStringInfoChar(v4, 46);
                v13 = *(v8 + 4);
              }

              ++v9;
              v10 += 8;
            }

            while (v9 < v13);
            v3 = *(a2 + 4);
            v6 = *(a2 + 16);
          }

          v15 = v6 + 8 * v3;
          if (v7 == -8 || (v7 + 1) >= v15)
          {
            break;
          }

          result = appendStringInfoString(v4, ", ");
          v3 = *(a2 + 4);
          if (++i >= v3)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t *deparseQualifiedNameList(uint64_t *result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      result = deparseRangeVar(v3, *(v6 + 8 * v4), 0);
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

uint64_t deparseIntoClause(uint64_t a1, uint64_t a2)
{
  deparseRangeVar(a1, *(a2 + 8), 0);
  v4 = *(a2 + 16);
  if (v4 && *(v4 + 4) >= 1)
  {
    appendStringInfoChar(a1, 40);
    v5 = *(a2 + 16);
    if (v5 && *(v5 + 4) >= 1)
    {
      v6 = 0;
      v7 = 8;
      do
      {
        v8 = *(v5 + 16);
        v9 = quote_identifier(*(*(v8 + 8 * v6) + 8));
        appendStringInfoString(a1, v9);
        v10 = *(v5 + 4);
        if (v8 + v7)
        {
          v11 = v8 + v7 >= (*(v5 + 16) + 8 * v10);
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          appendStringInfoString(a1, ", ");
          v10 = *(v5 + 4);
        }

        ++v6;
        v7 += 8;
      }

      while (v6 < v10);
    }

    appendStringInfoChar(a1, 41);
  }

  result = appendStringInfoChar(a1, 32);
  if (*(a2 + 24))
  {
    appendStringInfoString(a1, "USING ");
    v13 = quote_identifier(*(a2 + 24));
    appendStringInfoString(a1, v13);
    result = appendStringInfoChar(a1, 32);
  }

  v14 = *(a2 + 32);
  if (v14 && *(v14 + 4) >= 1)
  {
    appendStringInfoString(a1, "WITH ");
    deparseRelOptions(a1, v14);
    result = appendStringInfoChar(a1, 32);
  }

  v15 = *(a2 + 40) - 1;
  if (v15 <= 2)
  {
    result = appendStringInfoString(a1, (&off_2797B6CB8)[v15]);
  }

  if (*(a2 + 48))
  {
    appendStringInfoString(a1, "TABLESPACE ");
    v16 = quote_identifier(*(a2 + 48));
    appendStringInfoString(a1, v16);
    result = appendStringInfoChar(a1, 32);
  }

  v17 = *(a1 + 8);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v19 < 0 == v18)
  {
    v20 = *a1;
    if (*(*a1 + v19) == 32)
    {
      *(a1 + 8) = v19;
      *(v20 + v19) = 0;
    }
  }

  return result;
}

_DWORD *deparseOpclassItemList(_DWORD *result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    while (1)
    {
      v5 = *(a2 + 16) + 8 * v4;
      v6 = *v5;
      v7 = *(*v5 + 4);
      if (v7 == 3)
      {
        appendStringInfoString(v3, "STORAGE ");
        result = deparseTypeName(v3, *(v6 + 40));
        goto LABEL_52;
      }

      if (v7 != 2)
      {
        break;
      }

      appendStringInfoString(v3, "FUNCTION ");
      result = appendStringInfo(v3, "%d ", *(v6 + 16));
      if (*(v6 + 32))
      {
        appendStringInfoChar(v3, 40);
        v16 = *(v6 + 32);
        if (v16 && *(v16 + 4) >= 1)
        {
          v17 = 0;
          v18 = 8;
          do
          {
            v19 = *(v16 + 16);
            deparseTypeName(v3, *(v19 + 8 * v17));
            v20 = *(v16 + 4);
            if (v19 + v18)
            {
              v21 = v19 + v18 >= (*(v16 + 16) + 8 * v20);
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              appendStringInfoString(v3, ", ");
              v20 = *(v16 + 4);
            }

            ++v17;
            v18 += 8;
          }

          while (v17 < v20);
        }

        result = appendStringInfoString(v3, ") ");
      }

      v28 = *(v6 + 8);
      if (v28)
      {
        result = deparseFunctionWithArgtypes(v3, v28);
      }

LABEL_46:
      v29 = v3[2];
      v30 = __OFSUB__(v29, 1);
      v31 = v29 - 1;
      if (v31 < 0 == v30)
      {
        goto LABEL_50;
      }

LABEL_52:
      if (v5 != -8 && v5 + 8 < (*(a2 + 16) + 8 * *(a2 + 4)))
      {
        result = appendStringInfoString(v3, ", ");
      }

      if (++v4 >= *(a2 + 4))
      {
        return result;
      }
    }

    if (v7 != 1)
    {
      goto LABEL_52;
    }

    appendStringInfoString(v3, "OPERATOR ");
    result = appendStringInfo(v3, "%d ", *(v6 + 16));
    v8 = *(v6 + 8);
    if (!v8)
    {
LABEL_12:
      if (*(v6 + 24))
      {
        result = appendStringInfoString(v3, "FOR ORDER BY ");
        v9 = *(v6 + 24);
        if (v9)
        {
          if (*(v9 + 4) >= 1)
          {
            v10 = 0;
            v11 = 8;
            do
            {
              v12 = *(v9 + 16);
              v13 = quote_identifier(*(*(v12 + 8 * v10) + 8));
              result = appendStringInfoString(v3, v13);
              v14 = *(v9 + 4);
              if (v12 + v11)
              {
                v15 = v12 + v11 >= (*(v9 + 16) + 8 * v14);
              }

              else
              {
                v15 = 1;
              }

              if (!v15)
              {
                result = appendStringInfoChar(v3, 46);
                v14 = *(v9 + 4);
              }

              ++v10;
              v11 += 8;
            }

            while (v10 < v14);
          }
        }
      }

      if (*(v6 + 32))
      {
        appendStringInfoChar(v3, 40);
        v22 = *(v6 + 32);
        if (v22 && *(v22 + 4) >= 1)
        {
          v23 = 0;
          v24 = 8;
          do
          {
            v25 = *(v22 + 16);
            deparseTypeName(v3, *(v25 + 8 * v23));
            v26 = *(v22 + 4);
            if (v25 + v24)
            {
              v27 = v25 + v24 >= (*(v22 + 16) + 8 * v26);
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              appendStringInfoString(v3, ", ");
              v26 = *(v22 + 4);
            }

            ++v23;
            v24 += 8;
          }

          while (v23 < v26);
        }

        result = appendStringInfoChar(v3, 41);
        v32 = v3[2];
        v30 = __OFSUB__(v32, 1);
        v31 = v32 - 1;
        if (v31 < 0 != v30)
        {
          goto LABEL_52;
        }

LABEL_50:
        v33 = *v3;
        if (*(*v3 + v31) == 32)
        {
          v3[2] = v31;
          *(v33 + v31) = 0;
        }

        goto LABEL_52;
      }

      goto LABEL_46;
    }

    if (*(v8 + 16))
    {
      deparseOperatorWithArgtypes(v3, v8);
    }

    else
    {
      v35 = *(v8 + 8);
      if (v35)
      {
        v36 = *(v35 + 4);
        if (v36 == 1)
        {
          v38 = *(v35 + 16);
        }

        else
        {
          if (v36 != 2)
          {
            goto LABEL_11;
          }

          v37 = quote_identifier(*(**(v35 + 16) + 8));
          appendStringInfoString(v3, v37);
          appendStringInfoChar(v3, 46);
          v38 = *(v35 + 16) + 8 * (*(v35 + 4) - 1);
        }

        appendStringInfoString(v3, *(*v38 + 8));
      }
    }

LABEL_11:
    result = appendStringInfoChar(v3, 32);
    goto LABEL_12;
  }

  return result;
}

uint64_t *deparseTableRef(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 > 361)
  {
    if (v4 != 362)
    {
      if (v4 == 363)
      {
        deparseRangeVar(result, *(a2 + 8), 0);
        appendStringInfoString(v3, " TABLESAMPLE ");
        v37 = *(a2 + 16);
        if (v37 && *(v37 + 4) >= 1)
        {
          v38 = 0;
          v39 = 8;
          do
          {
            v40 = *(v37 + 16);
            v41 = quote_identifier(*(*(v40 + 8 * v38) + 8));
            appendStringInfoString(v3, v41);
            v42 = *(v37 + 4);
            if (v40 + v39)
            {
              v43 = v40 + v39 >= (*(v37 + 16) + 8 * v42);
            }

            else
            {
              v43 = 1;
            }

            if (!v43)
            {
              appendStringInfoChar(v3, 46);
              v42 = *(v37 + 4);
            }

            ++v38;
            v39 += 8;
          }

          while (v38 < v42);
        }

        appendStringInfoChar(v3, 40);
        v44 = *(a2 + 24);
        if (v44 && *(v44 + 4) >= 1)
        {
          v45 = 0;
          v46 = 8;
          do
          {
            v47 = *(v44 + 16);
            deparseExpr(v3, *(v47 + 8 * v45));
            v48 = *(v44 + 4);
            if (v47 + v46)
            {
              v49 = v47 + v46 >= (*(v44 + 16) + 8 * v48);
            }

            else
            {
              v49 = 1;
            }

            if (!v49)
            {
              appendStringInfoString(v3, ", ");
              v48 = *(v44 + 4);
            }

            ++v45;
            v46 += 8;
          }

          while (v45 < v48);
        }

        result = appendStringInfoString(v3, ") ");
        if (*(a2 + 32))
        {
          appendStringInfoString(v3, "REPEATABLE (");
          deparseExpr(v3, *(a2 + 32));
          result = appendStringInfoString(v3, ") ");
        }

        goto LABEL_201;
      }

      if (v4 != 364)
      {
        return result;
      }

      if (*(a2 + 4) == 1)
      {
        appendStringInfoString(result, "LATERAL ");
      }

      appendStringInfoString(v3, "xmltable(");
      if (*(a2 + 24))
      {
        appendStringInfoString(v3, "xmlnamespaces(");
        v11 = *(a2 + 24);
        if (v11 && *(v11 + 4) >= 1)
        {
          v12 = 0;
          v13 = 8;
          do
          {
            v14 = *(v11 + 16);
            v15 = *(v14 + 8 * v12);
            if (!*(v15 + 8))
            {
              appendStringInfoString(v3, "DEFAULT ");
            }

            deparseExpr(v3, *(v15 + 24));
            if (*(v15 + 8))
            {
              appendStringInfoString(v3, " AS ");
              v16 = quote_identifier(*(v15 + 8));
              appendStringInfoString(v3, v16);
            }

            v17 = *(v11 + 4);
            if (v14 + v13)
            {
              v18 = v14 + v13 >= (*(v11 + 16) + 8 * v17);
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              appendStringInfoString(v3, ", ");
              v17 = *(v11 + 4);
            }

            ++v12;
            v13 += 8;
          }

          while (v12 < v17);
        }

        appendStringInfoString(v3, "), ");
      }

      appendStringInfoChar(v3, 40);
      deparseExpr(v3, *(a2 + 16));
      appendStringInfoChar(v3, 41);
      appendStringInfoString(v3, " PASSING ");
      deparseExpr(v3, *(a2 + 8));
      appendStringInfoString(v3, " COLUMNS ");
      v50 = *(a2 + 32);
      if (v50 && *(v50 + 4) >= 1)
      {
        v51 = 0;
        v52 = 8;
        do
        {
          v53 = *(v50 + 16);
          v54 = *(v53 + 8 * v51);
          v55 = quote_identifier(*(v54 + 8));
          appendStringInfoString(v3, v55);
          appendStringInfoChar(v3, 32);
          v56 = "FOR ORDINALITY ";
          if (*(v54 + 24))
          {
            goto LABEL_98;
          }

          deparseTypeName(v3, *(v54 + 16));
          appendStringInfoChar(v3, 32);
          if (*(v54 + 32))
          {
            appendStringInfoString(v3, "PATH ");
            deparseExpr(v3, *(v54 + 32));
            appendStringInfoChar(v3, 32);
          }

          if (*(v54 + 40))
          {
            appendStringInfoString(v3, "DEFAULT ");
            deparseExpr(v3, *(v54 + 40));
            appendStringInfoChar(v3, 32);
          }

          v56 = "NOT NULL ";
          if (*(v54 + 25) == 1)
          {
LABEL_98:
            appendStringInfoString(v3, v56);
          }

          v57 = *(v3 + 2);
          v58 = __OFSUB__(v57, 1);
          v59 = v57 - 1;
          if (v59 < 0 == v58)
          {
            v60 = *v3;
            if (*(*v3 + v59) == 32)
            {
              *(v3 + 2) = v59;
              *(v60 + v59) = 0;
            }
          }

          if (v53 + v52 && v53 + v52 < (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4)))
          {
            appendStringInfoString(v3, ", ");
          }

          ++v51;
          v52 += 8;
        }

        while (v51 < *(v50 + 4));
      }

      result = appendStringInfoString(v3, ") ");
      if (!*(a2 + 40))
      {
        goto LABEL_201;
      }

      appendStringInfoString(v3, "AS ");
      v61 = *(a2 + 40);
      v62 = quote_identifier(*(v61 + 8));
      result = appendStringInfoString(v3, v62);
      v63 = *(v61 + 16);
      if (!v63 || *(v63 + 4) < 1)
      {
        goto LABEL_201;
      }

      appendStringInfoChar(v3, 40);
      v64 = *(v61 + 16);
      if (v64 && *(v64 + 4) >= 1)
      {
        v65 = 0;
        v66 = 8;
        do
        {
          v67 = *(v64 + 16);
          v68 = quote_identifier(*(*(v67 + 8 * v65) + 8));
          appendStringInfoString(v3, v68);
          v69 = *(v64 + 4);
          if (v67 + v66)
          {
            v70 = v67 + v66 >= (*(v64 + 16) + 8 * v69);
          }

          else
          {
            v70 = 1;
          }

          if (!v70)
          {
            appendStringInfoString(v3, ", ");
            v69 = *(v64 + 4);
          }

          ++v65;
          v66 += 8;
        }

        while (v65 < v69);
      }

      goto LABEL_200;
    }

    if (*(a2 + 4) == 1)
    {
      appendStringInfoString(result, "LATERAL ");
    }

    if (*(a2 + 6) == 1)
    {
      appendStringInfoString(v3, "ROWS FROM ");
      appendStringInfoChar(v3, 40);
      v23 = *(a2 + 8);
      if (v23 && *(v23 + 4) >= 1)
      {
        v24 = 0;
        do
        {
          v25 = *(v23 + 16) + 8 * v24;
          v26 = *v25;
          deparseFuncExprWindowless(v3, **(*v25 + 16));
          appendStringInfoChar(v3, 32);
          v27 = *(*(v26 + 16) + 8);
          if (v27 && *(v27 + 4) >= 1)
          {
            appendStringInfoString(v3, "AS (");
            if (*(v27 + 4) >= 1)
            {
              v28 = 0;
              v29 = 8;
              do
              {
                v30 = *(v27 + 16);
                deparseColumnDef(v3, *(v30 + 8 * v28));
                v31 = *(v27 + 4);
                if (v30 + v29)
                {
                  v32 = v30 + v29 >= (*(v27 + 16) + 8 * v31);
                }

                else
                {
                  v32 = 1;
                }

                if (!v32)
                {
                  appendStringInfoString(v3, ", ");
                  v31 = *(v27 + 4);
                }

                ++v28;
                v29 += 8;
              }

              while (v28 < v31);
            }

            appendStringInfoChar(v3, 41);
          }

          if (v25 != -8 && v25 + 8 < (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4)))
          {
            appendStringInfoString(v3, ", ");
          }

          ++v24;
        }

        while (v24 < *(v23 + 4));
      }

      appendStringInfoChar(v3, 41);
      result = appendStringInfoChar(v3, 32);
      if (*(a2 + 5) != 1)
      {
        goto LABEL_121;
      }
    }

    else
    {
      deparseFuncExprWindowless(v3, **(**(*(a2 + 8) + 16) + 16));
      result = appendStringInfoChar(v3, 32);
      if (*(a2 + 5) != 1)
      {
        goto LABEL_121;
      }
    }

    result = appendStringInfoString(v3, "WITH ORDINALITY ");
LABEL_121:
    v71 = *(a2 + 16);
    if (v71)
    {
      v72 = quote_identifier(*(v71 + 8));
      appendStringInfoString(v3, v72);
      v73 = *(v71 + 16);
      if (v73 && *(v73 + 4) >= 1)
      {
        appendStringInfoChar(v3, 40);
        v74 = *(v71 + 16);
        if (v74 && *(v74 + 4) >= 1)
        {
          v75 = 0;
          v76 = 8;
          do
          {
            v77 = *(v74 + 16);
            v78 = quote_identifier(*(*(v77 + 8 * v75) + 8));
            appendStringInfoString(v3, v78);
            v79 = *(v74 + 4);
            if (v77 + v76)
            {
              v80 = v77 + v76 >= (*(v74 + 16) + 8 * v79);
            }

            else
            {
              v80 = 1;
            }

            if (!v80)
            {
              appendStringInfoString(v3, ", ");
              v79 = *(v74 + 4);
            }

            ++v75;
            v76 += 8;
          }

          while (v75 < v79);
        }

        appendStringInfoChar(v3, 41);
      }

      result = appendStringInfoChar(v3, 32);
    }

    v83 = *(a2 + 24);
    if (!v83 || *(v83 + 4) < 1)
    {
      goto LABEL_201;
    }

    if (!*(a2 + 16))
    {
      appendStringInfoString(v3, "AS ");
    }

    appendStringInfoChar(v3, 40);
    v84 = *(a2 + 24);
    if (v84 && *(v84 + 4) >= 1)
    {
      v85 = 0;
      v86 = 8;
      do
      {
        v87 = *(v84 + 16);
        deparseColumnDef(v3, *(v87 + 8 * v85));
        if (v87 + v86)
        {
          v88 = v87 + v86 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v88 = 1;
        }

        if (!v88)
        {
          appendStringInfoString(v3, ", ");
        }

        ++v85;
        v86 += 8;
      }

      while (v85 < *(v84 + 4));
    }

    goto LABEL_200;
  }

  if (v4 != 103)
  {
    if (v4 != 150)
    {
      if (v4 == 361)
      {
        if (*(a2 + 4) == 1)
        {
          appendStringInfoString(result, "LATERAL ");
        }

        appendStringInfoChar(v3, 40);
        deparseSelectStmt(v3, *(a2 + 8));
        result = appendStringInfoChar(v3, 41);
        if (*(a2 + 16))
        {
          appendStringInfoChar(v3, 32);
          v5 = *(a2 + 16);
          v6 = quote_identifier(*(v5 + 8));
          result = appendStringInfoString(v3, v6);
          v7 = *(v5 + 16);
          if (v7)
          {
            if (*(v7 + 4) >= 1)
            {
              appendStringInfoChar(v3, 40);
              v8 = *(v5 + 16);
              if (v8 && *(v8 + 4) >= 1)
              {
                v9 = 0;
                v10 = 8;
                do
                {
                  v19 = *(v8 + 16);
                  v20 = quote_identifier(*(*(v19 + 8 * v9) + 8));
                  appendStringInfoString(v3, v20);
                  v21 = *(v8 + 4);
                  if (v19 + v10)
                  {
                    v22 = v19 + v10 >= (*(v8 + 16) + 8 * v21);
                  }

                  else
                  {
                    v22 = 1;
                  }

                  if (!v22)
                  {
                    appendStringInfoString(v3, ", ");
                    v21 = *(v8 + 4);
                  }

                  ++v9;
                  v10 += 8;
                }

                while (v9 < v21);
              }

              return appendStringInfoChar(v3, 41);
            }
          }
        }
      }

      return result;
    }

    v34 = *(a2 + 48);
    v35 = *(a2 + 24);
    if (*v35 == 150)
    {
      v36 = *(v35 + 48) == 0;
      if (!v34)
      {
LABEL_135:
        deparseTableRef(v3, *(a2 + 16));
        appendStringInfoChar(v3, 32);
        if (*(a2 + 8) == 1)
        {
          appendStringInfoString(v3, "NATURAL ");
        }

        v81 = *(a2 + 4);
        if (v81 > 1)
        {
          if (v81 == 2)
          {
            v82 = "FULL ";
          }

          else
          {
            if (v81 != 3)
            {
              goto LABEL_169;
            }

            v82 = "RIGHT ";
          }
        }

        else if (v81)
        {
          if (v81 != 1)
          {
            goto LABEL_169;
          }

          v82 = "LEFT ";
        }

        else
        {
          if ((*(a2 + 8) & 1) != 0 || *(a2 + 40) || (v89 = *(a2 + 32)) != 0 && *(v89 + 4))
          {
LABEL_169:
            appendStringInfoString(v3, "JOIN ");
            if (v36)
            {
              appendStringInfoChar(v3, 40);
              deparseTableRef(v3, *(a2 + 24));
              appendStringInfoChar(v3, 41);
              result = appendStringInfoChar(v3, 32);
              if (!*(a2 + 40))
              {
LABEL_174:
                v90 = *(a2 + 32);
                if (v90 && *(v90 + 4) >= 1)
                {
                  appendStringInfoString(v3, "USING (");
                  v91 = *(a2 + 32);
                  if (v91 && *(v91 + 4) >= 1)
                  {
                    v92 = 0;
                    v93 = 8;
                    do
                    {
                      v94 = *(v91 + 16);
                      v95 = quote_identifier(*(*(v94 + 8 * v92) + 8));
                      appendStringInfoString(v3, v95);
                      v96 = *(v91 + 4);
                      if (v94 + v93)
                      {
                        v97 = v94 + v93 >= (*(v91 + 16) + 8 * v96);
                      }

                      else
                      {
                        v97 = 1;
                      }

                      if (!v97)
                      {
                        appendStringInfoString(v3, ", ");
                        v96 = *(v91 + 4);
                      }

                      ++v92;
                      v93 += 8;
                    }

                    while (v92 < v96);
                  }

                  result = appendStringInfoString(v3, ") ");
                }

                if (v34)
                {
                  result = appendStringInfoString(v3, ") ");
                }

                v98 = *(a2 + 48);
                if (!v98)
                {
                  goto LABEL_201;
                }

                v99 = quote_identifier(*(v98 + 8));
                result = appendStringInfoString(v3, v99);
                v100 = *(v98 + 16);
                if (!v100 || *(v100 + 4) < 1)
                {
                  goto LABEL_201;
                }

                appendStringInfoChar(v3, 40);
                v101 = *(v98 + 16);
                if (v101 && *(v101 + 4) >= 1)
                {
                  v102 = 0;
                  v103 = 8;
                  do
                  {
                    v104 = *(v101 + 16);
                    v105 = quote_identifier(*(*(v104 + 8 * v102) + 8));
                    appendStringInfoString(v3, v105);
                    v106 = *(v101 + 4);
                    if (v104 + v103)
                    {
                      v107 = v104 + v103 >= (*(v101 + 16) + 8 * v106);
                    }

                    else
                    {
                      v107 = 1;
                    }

                    if (!v107)
                    {
                      appendStringInfoString(v3, ", ");
                      v106 = *(v101 + 4);
                    }

                    ++v102;
                    v103 += 8;
                  }

                  while (v102 < v106);
                }

LABEL_200:
                result = appendStringInfoChar(v3, 41);
LABEL_201:
                v108 = *(v3 + 2);
                v58 = __OFSUB__(v108, 1);
                v109 = v108 - 1;
                if (v109 < 0 == v58)
                {
                  v110 = *v3;
                  if (*(*v3 + v109) == 32)
                  {
                    *(v3 + 2) = v109;
                    *(v110 + v109) = 0;
                  }
                }

                return result;
              }
            }

            else
            {
              deparseTableRef(v3, *(a2 + 24));
              result = appendStringInfoChar(v3, 32);
              if (!*(a2 + 40))
              {
                goto LABEL_174;
              }
            }

            appendStringInfoString(v3, "ON ");
            deparseExpr(v3, *(a2 + 40));
            result = appendStringInfoChar(v3, 32);
            goto LABEL_174;
          }

          v82 = "CROSS ";
        }

        appendStringInfoString(v3, v82);
        goto LABEL_169;
      }
    }

    else
    {
      v36 = 0;
      if (!v34)
      {
        goto LABEL_135;
      }
    }

    appendStringInfoChar(result, 40);
    goto LABEL_135;
  }

  return deparseRangeVar(result, a2, 0);
}