unint64_t _outTruncateStmt(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relations:");
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

  if (*(a2 + 16) == 1)
  {
    appendStringInfo(a1, "restart_seqs:%s,", "true");
  }

  v10 = *(a2 + 20);
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

  return appendStringInfo(a1, "behavior:%s,", v12);
}

uint64_t _outCommentStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55560)[v4];
  }

  result = appendStringInfo(a1, "objtype:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "object:");
    _outNode(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "comment:");
    _outToken(a1, *(a2 + 16));

    return appendStringInfo(a1, ",");
  }

  return result;
}

uint64_t _outFetchStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E553B8)[v4];
  }

  result = appendStringInfo(a1, "direction:%s,", v5);
  if (*(a2 + 8))
  {
    result = appendStringInfo(a1, "howMany:%ld,", *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "portalname:");
    _outToken(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(a1, "ismove:%s,", "true");
  }

  return result;
}

int *_outIndexStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "idxname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "relation:{");
    _outRangeVar(v3, *(a2 + 16));
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

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "accessMethod:");
    _outToken(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "tableSpace:");
    _outToken(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "indexParams:");
    appendStringInfoChar(v3, 91);
    v8 = *(a2 + 40);
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
          v13 = v11 + v10 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
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

  if (*(a2 + 48))
  {
    appendStringInfo(v3, "indexIncludingParams:");
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
    appendStringInfo(v3, "options:");
    appendStringInfoChar(v3, 91);
    v20 = *(a2 + 56);
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
          v25 = v23 + v22 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
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

  if (*(a2 + 64))
  {
    appendStringInfo(v3, "whereClause:");
    _outNode(v3, *(a2 + 64));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 72))
  {
    appendStringInfo(v3, "excludeOpNames:");
    appendStringInfoChar(v3, 91);
    v26 = *(a2 + 72);
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
          _outNode(v3, v30);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v29 + v28)
        {
          v31 = v29 + v28 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          appendStringInfoString(v3, ",");
        }

        ++v27;
        v28 += 8;
      }

      while (v27 < *(v26 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 80))
  {
    appendStringInfo(v3, "idxcomment:");
    _outToken(v3, *(a2 + 80));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 88))
  {
    result = appendStringInfo(v3, "indexOid:%u,", *(a2 + 88));
  }

  if (*(a2 + 92))
  {
    result = appendStringInfo(v3, "oldNode:%u,", *(a2 + 92));
  }

  if (*(a2 + 96))
  {
    result = appendStringInfo(v3, "oldCreateSubid:%u,", *(a2 + 96));
  }

  if (*(a2 + 100))
  {
    result = appendStringInfo(v3, "oldFirstRelfilenodeSubid:%u,", *(a2 + 100));
  }

  if (*(a2 + 104) == 1)
  {
    result = appendStringInfo(v3, "unique:%s,", "true");
    if (*(a2 + 105) != 1)
    {
LABEL_82:
      if (*(a2 + 106) != 1)
      {
        goto LABEL_83;
      }

      goto LABEL_93;
    }
  }

  else if (*(a2 + 105) != 1)
  {
    goto LABEL_82;
  }

  result = appendStringInfo(v3, "primary:%s,", "true");
  if (*(a2 + 106) != 1)
  {
LABEL_83:
    if (*(a2 + 107) != 1)
    {
      goto LABEL_84;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = appendStringInfo(v3, "isconstraint:%s,", "true");
  if (*(a2 + 107) != 1)
  {
LABEL_84:
    if (*(a2 + 108) != 1)
    {
      goto LABEL_85;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = appendStringInfo(v3, "deferrable:%s,", "true");
  if (*(a2 + 108) != 1)
  {
LABEL_85:
    if (*(a2 + 109) != 1)
    {
      goto LABEL_86;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = appendStringInfo(v3, "initdeferred:%s,", "true");
  if (*(a2 + 109) != 1)
  {
LABEL_86:
    if (*(a2 + 110) != 1)
    {
      goto LABEL_87;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = appendStringInfo(v3, "transformed:%s,", "true");
  if (*(a2 + 110) != 1)
  {
LABEL_87:
    if (*(a2 + 111) != 1)
    {
      goto LABEL_88;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = appendStringInfo(v3, "concurrent:%s,", "true");
  if (*(a2 + 111) != 1)
  {
LABEL_88:
    if (*(a2 + 112) != 1)
    {
      return result;
    }

    return appendStringInfo(v3, "reset_default_tblspc:%s,", "true");
  }

LABEL_98:
  result = appendStringInfo(v3, "if_not_exists:%s,", "true");
  if (*(a2 + 112) != 1)
  {
    return result;
  }

  return appendStringInfo(v3, "reset_default_tblspc:%s,", "true");
}

uint64_t _outCreateFunctionStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "is_procedure:%s,", "true");
    if (*(a2 + 5) != 1)
    {
LABEL_3:
      if (!*(a2 + 8))
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if (*(a2 + 5) != 1)
  {
    goto LABEL_3;
  }

  result = appendStringInfo(v3, "replace:%s,", "true");
  if (!*(a2 + 8))
  {
LABEL_4:
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_24:
  appendStringInfo(v3, "funcname:");
  appendStringInfoChar(v3, 91);
  v10 = *(a2 + 8);
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
        v15 = v13 + v12 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
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
  if (!*(a2 + 16))
  {
LABEL_5:
    if (!*(a2 + 24))
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_37:
  appendStringInfo(v3, "parameters:");
  appendStringInfoChar(v3, 91);
  v16 = *(a2 + 16);
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
        v21 = v19 + v18 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
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
  if (!*(a2 + 24))
  {
LABEL_6:
    if (!*(a2 + 32))
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_50:
  appendStringInfo(v3, "returnType:{");
  _outTypeName(v3, *(a2 + 24));
  v22 = *(v3 + 8);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v24 < 0 == v23)
  {
    v25 = *v3;
    if (*(*v3 + v24) == 44)
    {
      *(v3 + 8) = v24;
      *(v25 + v24) = 0;
    }
  }

  result = appendStringInfo(v3, "},");
  if (*(a2 + 32))
  {
LABEL_7:
    appendStringInfo(v3, "options:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outAlterFunctionStmt(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55560)[v4];
  }

  result = appendStringInfo(a1, "objtype:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "func:{");
    _outObjectWithArgs(a1, *(a2 + 8));
    v7 = *(a1 + 2);
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v9 < 0 == v8)
    {
      v10 = *a1;
      if (*(*a1 + v9) == 44)
      {
        *(a1 + 2) = v9;
        *(v10 + v9) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "actions:");
    appendStringInfoChar(a1, 91);
    v11 = *(a2 + 16);
    if (v11 && *(v11 + 4) >= 1)
    {
      v12 = 0;
      v13 = 8;
      do
      {
        v14 = *(v11 + 16);
        v15 = *(v14 + 8 * v12);
        if (v15)
        {
          _outNode(a1, v15);
        }

        else
        {
          appendStringInfoString(a1, "{}");
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
          appendStringInfoString(a1, ",");
        }

        ++v12;
        v13 += 8;
      }

      while (v12 < *(v11 + 4));
    }

    return appendStringInfo(a1, "],");
  }

  return result;
}

unint64_t _outDoStmt(unint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outRenameStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55560)[v4];
  }

  appendStringInfo(a1, "renameType:%s,", v5);
  v6 = *(a2 + 8);
  if (v6 > 0x31)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&off_1E6E55560)[v6];
  }

  appendStringInfo(a1, "relationType:%s,", v7);
  if (*(a2 + 16))
  {
    appendStringInfo(a1, "relation:{");
    _outRangeVar(a1, *(a2 + 16));
    v8 = a1[2];
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v10 < 0 == v9)
    {
      v11 = *a1;
      if (*(*a1 + v10) == 44)
      {
        a1[2] = v10;
        *(v11 + v10) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "object:");
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "subname:");
    _outToken(a1, *(a2 + 32));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "newname:");
    _outToken(a1, *(a2 + 40));
    appendStringInfo(a1, ",");
  }

  v12 = *(a2 + 48);
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
  if (*(a2 + 52) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", "true");
  }

  return result;
}

uint64_t _outRuleStmt(int *a1, uint64_t a2)
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
    appendStringInfo(a1, "rulename:");
    _outToken(a1, *(a2 + 16));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "whereClause:");
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  v8 = *(a2 + 32);
  if (v8 > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = (&off_1E6E553D8)[v8];
  }

  result = appendStringInfo(a1, "event:%s,", v9);
  if (*(a2 + 36) == 1)
  {
    result = appendStringInfo(a1, "instead:%s,", "true");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "actions:");
    appendStringInfoChar(a1, 91);
    v11 = *(a2 + 40);
    if (v11 && *(v11 + 4) >= 1)
    {
      v12 = 0;
      v13 = 8;
      do
      {
        v14 = *(v11 + 16);
        v15 = *(v14 + 8 * v12);
        if (v15)
        {
          _outNode(a1, v15);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v14 + v13)
        {
          v16 = v14 + v13 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          appendStringInfoString(a1, ",");
        }

        ++v12;
        v13 += 8;
      }

      while (v12 < *(v11 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 48) == 1)
  {
    return appendStringInfo(a1, "replace:%s,", "true");
  }

  return result;
}

int *_outNotifyStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "conditionname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "payload:");
    _outToken(v3, *(a2 + 16));

    return appendStringInfo(v3, ",");
  }

  return result;
}

unint64_t _outListenStmt(unint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    appendStringInfo(result, "conditionname:");
    _outToken(v3, *(a2 + 8));

    return appendStringInfo(v3, ",");
  }

  return result;
}

uint64_t _outTransactionStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 9)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55410)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "options:");
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
    appendStringInfo(a1, "savepoint_name:");
    _outToken(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "gid:");
    _outToken(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(a1, "chain:%s,", "true");
  }

  return result;
}

unint64_t _outViewStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "view:{");
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
    appendStringInfo(a1, "aliases:");
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
    appendStringInfo(a1, "query:");
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 32) == 1)
  {
    appendStringInfo(a1, "replace:%s,", "true");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "options:");
    appendStringInfoChar(a1, 91);
    v14 = *(a2 + 40);
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
          v19 = v17 + v16 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
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

  v20 = *(a2 + 48);
  if (v20 > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = (&off_1E6E55460)[v20];
  }

  return appendStringInfo(a1, "withCheckOption:%s,", v21);
}

unint64_t _outLoadStmt(unint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    appendStringInfo(result, "filename:");
    _outToken(v3, *(a2 + 8));

    return appendStringInfo(v3, ",");
  }

  return result;
}

uint64_t _outCreateDomainStmt(uint64_t result, void *a2)
{
  v3 = result;
  if (a2[1])
  {
    appendStringInfo(result, "domainname:");
    appendStringInfoChar(v3, 91);
    v4 = a2[1];
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
          v9 = v7 + v6 >= (*(a2[1] + 16) + 8 * *(a2[1] + 4));
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

  if (a2[2])
  {
    appendStringInfo(v3, "typeName:{");
    _outTypeName(v3, a2[2]);
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

    result = appendStringInfo(v3, "},");
  }

  if (a2[3])
  {
    appendStringInfo(v3, "collClause:{");
    _outCollateClause(v3, a2[3]);
    v14 = *(v3 + 8);
    v11 = __OFSUB__(v14, 1);
    v15 = v14 - 1;
    if (v15 < 0 == v11)
    {
      v16 = *v3;
      if (*(*v3 + v15) == 44)
      {
        *(v3 + 8) = v15;
        *(v16 + v15) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (a2[4])
  {
    appendStringInfo(v3, "constraints:");
    appendStringInfoChar(v3, 91);
    v17 = a2[4];
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
          _outNode(v3, v21);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(a2[4] + 16) + 8 * *(a2[4] + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v3, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outCreatedbStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "dbname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "options:");
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

int *_outDropdbStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "dbname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(v3, "missing_ok:%s,", "true");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "options:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outVacuumStmt(uint64_t result, uint64_t a2)
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
    appendStringInfo(v3, "rels:");
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

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(v3, "is_vacuumcmd:%s,", "true");
  }

  return result;
}

uint64_t _outExplainStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "query:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "options:");
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

uint64_t _outCreateTableAsStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "query:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "into:{");
    _outIntoClause(a1, *(a2 + 16));
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

  v8 = *(a2 + 24);
  if (v8 > 0x31)
  {
    v9 = 0;
  }

  else
  {
    v9 = (&off_1E6E55560)[v8];
  }

  result = appendStringInfo(a1, "relkind:%s,", v9);
  if (*(a2 + 28) != 1)
  {
    if (*(a2 + 29) != 1)
    {
      return result;
    }

    return appendStringInfo(a1, "if_not_exists:%s,", "true");
  }

  result = appendStringInfo(a1, "is_select_into:%s,", "true");
  if (*(a2 + 29) == 1)
  {
    return appendStringInfo(a1, "if_not_exists:%s,", "true");
  }

  return result;
}

int *_outCreateSeqStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "sequence:{");
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
    appendStringInfo(v3, "options:");
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
    result = appendStringInfo(v3, "ownerId:%u,", *(a2 + 24));
  }

  if (*(a2 + 28) == 1)
  {
    result = appendStringInfo(v3, "for_identity:%s,", "true");
  }

  if (*(a2 + 29) == 1)
  {
    return appendStringInfo(v3, "if_not_exists:%s,", "true");
  }

  return result;
}

int *_outAlterSeqStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "sequence:{");
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
    appendStringInfo(v3, "options:");
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

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v3, "for_identity:%s,", "true");
  }

  if (*(a2 + 25) == 1)
  {
    return appendStringInfo(v3, "missing_ok:%s,", "true");
  }

  return result;
}

uint64_t _outVariableSetStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55478)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:");
    _outToken(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "args:");
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

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(a1, "is_local:%s,", "true");
  }

  return result;
}

unint64_t _outVariableShowStmt(unint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    appendStringInfo(result, "name:");
    _outToken(v3, *(a2 + 8));

    return appendStringInfo(v3, ",");
  }

  return result;
}

unint64_t _outDiscardStmt(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = (&off_1E6E554A8)[a2];
  }

  return appendStringInfo(a1, "target:%s,", v2);
}

int *_outCreateTrigStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "trigname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "relation:{");
    _outRangeVar(v3, *(a2 + 16));
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

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "funcname:");
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

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "args:");
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

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(v3, "row:%s,", "true");
  }

  if (*(a2 + 42))
  {
    result = appendStringInfo(v3, "timing:%d,", *(a2 + 42));
  }

  if (*(a2 + 44))
  {
    result = appendStringInfo(v3, "events:%d,", *(a2 + 44));
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v3, "columns:");
    appendStringInfoChar(v3, 91);
    v20 = *(a2 + 48);
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
          v25 = v23 + v22 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
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

  if (*(a2 + 56))
  {
    appendStringInfo(v3, "whenClause:");
    _outNode(v3, *(a2 + 56));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 64) == 1)
  {
    result = appendStringInfo(v3, "isconstraint:%s,", "true");
  }

  if (*(a2 + 72))
  {
    appendStringInfo(v3, "transitionRels:");
    appendStringInfoChar(v3, 91);
    v26 = *(a2 + 72);
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
          _outNode(v3, v30);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v29 + v28)
        {
          v31 = v29 + v28 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          appendStringInfoString(v3, ",");
        }

        ++v27;
        v28 += 8;
      }

      while (v27 < *(v26 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 80) != 1)
  {
    if (*(a2 + 81) != 1)
    {
      goto LABEL_76;
    }

LABEL_84:
    result = appendStringInfo(v3, "initdeferred:%s,", "true");
    if (!*(a2 + 88))
    {
      return result;
    }

    goto LABEL_77;
  }

  result = appendStringInfo(v3, "deferrable:%s,", "true");
  if (*(a2 + 81) == 1)
  {
    goto LABEL_84;
  }

LABEL_76:
  if (!*(a2 + 88))
  {
    return result;
  }

LABEL_77:
  appendStringInfo(v3, "constrrel:{");
  _outRangeVar(v3, *(a2 + 88));
  v32 = v3[2];
  v5 = __OFSUB__(v32, 1);
  v33 = v32 - 1;
  if (v33 < 0 == v5)
  {
    v34 = *v3;
    if (*(*v3 + v33) == 44)
    {
      v3[2] = v33;
      *(v34 + v33) = 0;
    }
  }

  return appendStringInfo(v3, "},");
}

int *_outCreatePLangStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "replace:%s,", "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v3, "plname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "plhandler:");
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
    appendStringInfo(v3, "plinline:");
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
    appendStringInfo(v3, "plvalidator:");
    appendStringInfoChar(v3, 91);
    v16 = *(a2 + 32);
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
          v21 = v19 + v18 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
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

  if (*(a2 + 40) == 1)
  {
    return appendStringInfo(v3, "pltrusted:%s,", "true");
  }

  return result;
}

uint64_t _outCreateRoleStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E554C8)[v4];
  }

  result = appendStringInfo(a1, "stmt_type:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "role:");
    _outToken(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "options:");
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

    return appendStringInfo(a1, "],");
  }

  return result;
}

int *_outAlterRoleStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "role:{");
    _outRoleSpec(v3, *(a2 + 8));
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
    appendStringInfo(v3, "options:");
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
    return appendStringInfo(v3, "action:%d,", *(a2 + 24));
  }

  return result;
}

uint64_t _outDropRoleStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "roles:");
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

  if (*(a2 + 16) == 1)
  {
    return appendStringInfo(v3, "missing_ok:%s,", "true");
  }

  return result;
}

uint64_t _outLockStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relations:");
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
    result = appendStringInfo(v3, "mode:%d,", *(a2 + 16));
  }

  if (*(a2 + 20) == 1)
  {
    return appendStringInfo(v3, "nowait:%s,", "true");
  }

  return result;
}

uint64_t _outConstraintsSetStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "constraints:");
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

  if (*(a2 + 16) == 1)
  {
    return appendStringInfo(v3, "deferred:%s,", "true");
  }

  return result;
}

uint64_t _outReindexStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E554E0)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{");
    _outRangeVar(a1, *(a2 + 8));
    v7 = a1[2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v9 < 0 == v8)
    {
      v10 = *a1;
      if (*(*a1 + v9) == 44)
      {
        a1[2] = v9;
        *(v10 + v9) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "name:");
    _outToken(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(a1, "options:%d,", *(a2 + 24));
  }

  if (*(a2 + 28) == 1)
  {
    return appendStringInfo(a1, "concurrent:%s,", "true");
  }

  return result;
}

int *_outCreateSchemaStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "schemaname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "authrole:{");
    _outRoleSpec(v3, *(a2 + 16));
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

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "schemaElts:");
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
    return appendStringInfo(v3, "if_not_exists:%s,", "true");
  }

  return result;
}

int *_outAlterDatabaseSetStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "dbname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "setstmt:{");
    _outVariableSetStmt(v3, *(a2 + 16));
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

    return appendStringInfo(v3, "},");
  }

  return result;
}

int *_outAlterRoleSetStmt(int *result, void *a2)
{
  v3 = result;
  if (a2[1])
  {
    appendStringInfo(result, "role:{");
    _outRoleSpec(v3, a2[1]);
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

  if (a2[2])
  {
    appendStringInfo(v3, "database:");
    _outToken(v3, a2[2]);
    result = appendStringInfo(v3, ",");
  }

  if (a2[3])
  {
    appendStringInfo(v3, "setstmt:{");
    _outVariableSetStmt(v3, a2[3]);
    v8 = v3[2];
    v5 = __OFSUB__(v8, 1);
    v9 = v8 - 1;
    if (v9 < 0 == v5)
    {
      v10 = *v3;
      if (*(*v3 + v9) == 44)
      {
        v3[2] = v9;
        *(v10 + v9) = 0;
      }
    }

    return appendStringInfo(v3, "},");
  }

  return result;
}

int *_outCreateConversionStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "conversion_name:");
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
    appendStringInfo(v3, "for_encoding_name:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "to_encoding_name:");
    _outToken(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "func_name:");
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

  if (*(a2 + 40) == 1)
  {
    return appendStringInfo(v3, "def:%s,", "true");
  }

  return result;
}

uint64_t _outCreateCastStmt(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "sourcetype:{");
    _outTypeName(a1, *(a2 + 8));
    v4 = *(a1 + 2);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *a1;
      if (*(*a1 + v6) == 44)
      {
        *(a1 + 2) = v6;
        *(v7 + v6) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "targettype:{");
    _outTypeName(a1, *(a2 + 16));
    v8 = *(a1 + 2);
    v5 = __OFSUB__(v8, 1);
    v9 = v8 - 1;
    if (v9 < 0 == v5)
    {
      v10 = *a1;
      if (*(*a1 + v9) == 44)
      {
        *(a1 + 2) = v9;
        *(v10 + v9) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "func:{");
    _outObjectWithArgs(a1, *(a2 + 24));
    v11 = *(a1 + 2);
    v5 = __OFSUB__(v11, 1);
    v12 = v11 - 1;
    if (v12 < 0 == v5)
    {
      v13 = *a1;
      if (*(*a1 + v12) == 44)
      {
        *(a1 + 2) = v12;
        *(v13 + v12) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  v14 = *(a2 + 32);
  if (v14 > 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = (&off_1E6E55508)[v14];
  }

  result = appendStringInfo(a1, "context:%s,", v15);
  if (*(a2 + 36) == 1)
  {
    return appendStringInfo(a1, "inout:%s,", "true");
  }

  return result;
}

int *_outCreateOpClassStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "opclassname:");
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
    appendStringInfo(v3, "opfamilyname:");
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
    appendStringInfo(v3, "amname:");
    _outToken(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "datatype:{");
    _outTypeName(v3, *(a2 + 32));
    v16 = v3[2];
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      v19 = *v3;
      if (*(*v3 + v18) == 44)
      {
        v3[2] = v18;
        *(v19 + v18) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "items:");
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

  if (*(a2 + 48) == 1)
  {
    return appendStringInfo(v3, "isDefault:%s,", "true");
  }

  return result;
}

int *_outCreateOpFamilyStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "opfamilyname:");
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
    appendStringInfo(v3, "amname:");
    _outToken(v3, *(a2 + 16));

    return appendStringInfo(v3, ",");
  }

  return result;
}

int *_outAlterOpFamilyStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "opfamilyname:");
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
    appendStringInfo(v3, "amname:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v3, "isDrop:%s,", "true");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "items:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outPrepareStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "argtypes:");
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
    appendStringInfo(v3, "query:");
    _outNode(v3, *(a2 + 24));

    return appendStringInfo(v3, ",");
  }

  return result;
}

int *_outExecuteStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "params:");
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

int *_outDeclareCursorStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "portalname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "options:%d,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "query:");
    _outNode(v3, *(a2 + 24));

    return appendStringInfo(v3, ",");
  }

  return result;
}

int *_outCreateTableSpaceStmt(int *result, void *a2)
{
  v3 = result;
  if (a2[1])
  {
    appendStringInfo(result, "tablespacename:");
    _outToken(v3, a2[1]);
    result = appendStringInfo(v3, ",");
  }

  if (a2[2])
  {
    appendStringInfo(v3, "owner:{");
    _outRoleSpec(v3, a2[2]);
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

  if (a2[3])
  {
    appendStringInfo(v3, "location:");
    _outToken(v3, a2[3]);
    result = appendStringInfo(v3, ",");
  }

  if (a2[4])
  {
    appendStringInfo(v3, "options:");
    appendStringInfoChar(v3, 91);
    v8 = a2[4];
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
          v13 = v11 + v10 >= (*(a2[4] + 16) + 8 * *(a2[4] + 4));
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outDropTableSpaceStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "tablespacename:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16) == 1)
  {
    return appendStringInfo(v3, "missing_ok:%s,", "true");
  }

  return result;
}

uint64_t _outAlterObjectDependsStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55560)[v4];
  }

  result = appendStringInfo(a1, "objectType:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{");
    _outRangeVar(a1, *(a2 + 8));
    v7 = a1[2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v9 < 0 == v8)
    {
      v10 = *a1;
      if (*(*a1 + v9) == 44)
      {
        a1[2] = v9;
        *(v10 + v9) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "object:");
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "extname:");
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(a1, "remove:%s,", "true");
  }

  return result;
}

uint64_t _outAlterObjectSchemaStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55560)[v4];
  }

  result = appendStringInfo(a1, "objectType:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{");
    _outRangeVar(a1, *(a2 + 8));
    v7 = a1[2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v9 < 0 == v8)
    {
      v10 = *a1;
      if (*(*a1 + v9) == 44)
      {
        a1[2] = v9;
        *(v10 + v9) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "object:");
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "newschema:");
    _outToken(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", "true");
  }

  return result;
}

uint64_t _outAlterOwnerStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55560)[v4];
  }

  result = appendStringInfo(a1, "objectType:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{");
    _outRangeVar(a1, *(a2 + 8));
    v7 = a1[2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v9 < 0 == v8)
    {
      v10 = *a1;
      if (*(*a1 + v9) == 44)
      {
        a1[2] = v9;
        *(v10 + v9) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "object:");
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "newowner:{");
    _outRoleSpec(a1, *(a2 + 24));
    v11 = a1[2];
    v8 = __OFSUB__(v11, 1);
    v12 = v11 - 1;
    if (v12 < 0 == v8)
    {
      v13 = *a1;
      if (*(*a1 + v12) == 44)
      {
        a1[2] = v12;
        *(v13 + v12) = 0;
      }
    }

    return appendStringInfo(a1, "},");
  }

  return result;
}

uint64_t _outAlterOperatorStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "opername:{");
    _outObjectWithArgs(v3, *(a2 + 8));
    v4 = *(v3 + 8);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        *(v3 + 8) = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "options:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outAlterTypeStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typeName:");
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
    appendStringInfo(v3, "options:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

unint64_t _outDropOwnedStmt(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "roles:");
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

  return appendStringInfo(a1, "behavior:%s,", v12);
}

int *_outReassignOwnedStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "roles:");
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
    appendStringInfo(v3, "newrole:{");
    _outRoleSpec(v3, *(a2 + 16));
    v10 = v3[2];
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v12 < 0 == v11)
    {
      v13 = *v3;
      if (*(*v3 + v12) == 44)
      {
        v3[2] = v12;
        *(v13 + v12) = 0;
      }
    }

    return appendStringInfo(v3, "},");
  }

  return result;
}

int *_outCompositeTypeStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typevar:{");
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
    appendStringInfo(v3, "coldeflist:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outCreateEnumStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typeName:");
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
    appendStringInfo(v3, "vals:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outCreateRangeStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typeName:");
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
    appendStringInfo(v3, "params:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outAlterEnumStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typeName:");
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
    appendStringInfo(v3, "oldVal:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "newVal:");
    _outToken(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "newValNeighbor:");
    _outToken(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(v3, "newValIsAfter:%s,", "true");
  }

  if (*(a2 + 41) == 1)
  {
    return appendStringInfo(v3, "skipIfNewValExists:%s,", "true");
  }

  return result;
}

uint64_t _outAlterTSDictionaryStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "dictname:");
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
    appendStringInfo(v3, "options:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outAlterTSConfigurationStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55520)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "cfgname:");
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
    appendStringInfo(a1, "tokentype:");
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
    appendStringInfo(a1, "dicts:");
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

  if (*(a2 + 32) == 1)
  {
    result = appendStringInfo(a1, "override:%s,", "true");
    if (*(a2 + 33) != 1)
    {
LABEL_48:
      if (*(a2 + 34) != 1)
      {
        return result;
      }

      return appendStringInfo(a1, "missing_ok:%s,", "true");
    }
  }

  else if (*(a2 + 33) != 1)
  {
    goto LABEL_48;
  }

  result = appendStringInfo(a1, "replace:%s,", "true");
  if (*(a2 + 34) != 1)
  {
    return result;
  }

  return appendStringInfo(a1, "missing_ok:%s,", "true");
}

int *_outCreateFdwStmt(int *result, void *a2)
{
  v3 = result;
  if (a2[1])
  {
    appendStringInfo(result, "fdwname:");
    _outToken(v3, a2[1]);
    result = appendStringInfo(v3, ",");
  }

  if (a2[2])
  {
    appendStringInfo(v3, "func_options:");
    appendStringInfoChar(v3, 91);
    v4 = a2[2];
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
          v9 = v7 + v6 >= (*(a2[2] + 16) + 8 * *(a2[2] + 4));
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

  if (a2[3])
  {
    appendStringInfo(v3, "options:");
    appendStringInfoChar(v3, 91);
    v10 = a2[3];
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
          v15 = v13 + v12 >= (*(a2[3] + 16) + 8 * *(a2[3] + 4));
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outCreateForeignServerStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "servername:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "servertype:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "version:");
    _outToken(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "fdwname:");
    _outToken(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(v3, "if_not_exists:%s,", "true");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v3, "options:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 48);
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
          v9 = v7 + v6 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
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

int *_outAlterForeignServerStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "servername:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "version:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "options:");
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

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(v3, "has_version:%s,", "true");
  }

  return result;
}

int *_outCreateUserMappingStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "user:{");
    _outRoleSpec(v3, *(a2 + 8));
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
    appendStringInfo(v3, "servername:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v3, "if_not_exists:%s,", "true");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "options:");
    appendStringInfoChar(v3, 91);
    v8 = *(a2 + 32);
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
          v13 = v11 + v10 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outAlterUserMappingStmt(int *result, void *a2)
{
  v3 = result;
  if (a2[1])
  {
    appendStringInfo(result, "user:{");
    _outRoleSpec(v3, a2[1]);
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

  if (a2[2])
  {
    appendStringInfo(v3, "servername:");
    _outToken(v3, a2[2]);
    result = appendStringInfo(v3, ",");
  }

  if (a2[3])
  {
    appendStringInfo(v3, "options:");
    appendStringInfoChar(v3, 91);
    v8 = a2[3];
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
          v13 = v11 + v10 >= (*(a2[3] + 16) + 8 * *(a2[3] + 4));
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outDropUserMappingStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "user:{");
    _outRoleSpec(v3, *(a2 + 8));
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
    appendStringInfo(v3, "servername:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(v3, "missing_ok:%s,", "true");
  }

  return result;
}

int *_outAlterTableSpaceOptionsStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "tablespacename:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "options:");
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
    return appendStringInfo(v3, "isReset:%s,", "true");
  }

  return result;
}

uint64_t _outAlterTableMoveAllStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "orig_tablespacename:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  v4 = *(a2 + 16);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55560)[v4];
  }

  result = appendStringInfo(a1, "objtype:%s,", v5);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "roles:");
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
    appendStringInfo(a1, "new_tablespacename:");
    _outToken(a1, *(a2 + 32));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 40) == 1)
  {
    return appendStringInfo(a1, "nowait:%s,", "true");
  }

  return result;
}

uint64_t _outSecLabelStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55560)[v4];
  }

  result = appendStringInfo(a1, "objtype:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "object:");
    _outNode(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "provider:");
    _outToken(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "label:");
    _outToken(a1, *(a2 + 24));

    return appendStringInfo(a1, ",");
  }

  return result;
}

uint64_t _outCreateForeignTableStmt(int *a1, uint64_t a2)
{
  appendStringInfo(a1, "base:{");
  _outCreateStmt(a1, a2);
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

  result = appendStringInfo(a1, "},");
  if (*(a2 + 104))
  {
    appendStringInfo(a1, "servername:");
    _outToken(a1, *(a2 + 104));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 112))
  {
    appendStringInfo(a1, "options:");
    appendStringInfoChar(a1, 91);
    v9 = *(a2 + 112);
    if (v9 && *(v9 + 4) >= 1)
    {
      v10 = 0;
      v11 = 8;
      do
      {
        v12 = *(v9 + 16);
        v13 = *(v12 + 8 * v10);
        if (v13)
        {
          _outNode(a1, v13);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v12 + v11)
        {
          v14 = v12 + v11 >= (*(*(a2 + 112) + 16) + 8 * *(*(a2 + 112) + 4));
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          appendStringInfoString(a1, ",");
        }

        ++v10;
        v11 += 8;
      }

      while (v10 < *(v9 + 4));
    }

    return appendStringInfo(a1, "],");
  }

  return result;
}

uint64_t _outImportForeignSchemaStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "server_name:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "remote_schema:");
    _outToken(a1, *(a2 + 16));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "local_schema:");
    _outToken(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  v4 = *(a2 + 32);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55548)[v4];
  }

  result = appendStringInfo(a1, "list_type:%s,", v5);
  if (*(a2 + 40))
  {
    appendStringInfo(a1, "table_list:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 40);
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
          v12 = v10 + v9 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
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

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "options:");
    appendStringInfoChar(a1, 91);
    v13 = *(a2 + 48);
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
          v18 = v16 + v15 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
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

    return appendStringInfo(a1, "],");
  }

  return result;
}

int *_outCreateExtensionStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "extname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(v3, "if_not_exists:%s,", "true");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "options:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outAlterExtensionStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "extname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "options:");
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

uint64_t _outAlterExtensionContentsStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "extname:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "action:%d,", *(a2 + 16));
  }

  v4 = *(a2 + 20);
  if (v4 > 0x31)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55560)[v4];
  }

  result = appendStringInfo(a1, "objtype:%s,", v5);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "object:");
    _outNode(a1, *(a2 + 24));

    return appendStringInfo(a1, ",");
  }

  return result;
}

int *_outCreateEventTrigStmt(int *result, void *a2)
{
  v3 = result;
  if (a2[1])
  {
    appendStringInfo(result, "trigname:");
    _outToken(v3, a2[1]);
    result = appendStringInfo(v3, ",");
  }

  if (a2[2])
  {
    appendStringInfo(v3, "eventname:");
    _outToken(v3, a2[2]);
    result = appendStringInfo(v3, ",");
  }

  if (a2[3])
  {
    appendStringInfo(v3, "whenclause:");
    appendStringInfoChar(v3, 91);
    v4 = a2[3];
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
          v9 = v7 + v6 >= (*(a2[3] + 16) + 8 * *(a2[3] + 4));
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

  if (a2[4])
  {
    appendStringInfo(v3, "funcname:");
    appendStringInfoChar(v3, 91);
    v10 = a2[4];
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
          v15 = v13 + v12 >= (*(a2[4] + 16) + 8 * *(a2[4] + 4));
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outAlterEventTrigStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "trigname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(v3, "tgenabled:%c,", *(a2 + 16));
  }

  return result;
}

int *_outRefreshMatViewStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) != 1)
  {
    if (*(a2 + 5) != 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    result = appendStringInfo(v3, "skipData:%s,", "true");
    if (!*(a2 + 8))
    {
      return result;
    }

    goto LABEL_4;
  }

  result = appendStringInfo(result, "concurrent:%s,", "true");
  if (*(a2 + 5) == 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!*(a2 + 8))
  {
    return result;
  }

LABEL_4:
  appendStringInfo(v3, "relation:{");
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

  return appendStringInfo(v3, "},");
}

int *_outReplicaIdentityStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "identity_type:%c,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v3, "name:");
    _outToken(v3, *(a2 + 8));

    return appendStringInfo(v3, ",");
  }

  return result;
}

unint64_t _outAlterSystemStmt(unint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    appendStringInfo(result, "setstmt:{");
    _outVariableSetStmt(v3, *(a2 + 8));
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

    return appendStringInfo(v3, "},");
  }

  return result;
}

int *_outCreatePolicyStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "policy_name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "table:{");
    _outRangeVar(v3, *(a2 + 16));
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

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "cmd_name:");
    _outToken(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32) == 1)
  {
    result = appendStringInfo(v3, "permissive:%s,", "true");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "roles:");
    appendStringInfoChar(v3, 91);
    v8 = *(a2 + 40);
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
          v13 = v11 + v10 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
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

  if (*(a2 + 48))
  {
    appendStringInfo(v3, "qual:");
    _outNode(v3, *(a2 + 48));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v3, "with_check:");
    _outNode(v3, *(a2 + 56));

    return appendStringInfo(v3, ",");
  }

  return result;
}

int *_outAlterPolicyStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "policy_name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "table:{");
    _outRangeVar(v3, *(a2 + 16));
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

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "roles:");
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

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "qual:");
    _outNode(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "with_check:");
    _outNode(v3, *(a2 + 40));

    return appendStringInfo(v3, ",");
  }

  return result;
}

int *_outCreateTransformStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "replace:%s,", "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v3, "type_name:{");
    _outTypeName(v3, *(a2 + 8));
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
    appendStringInfo(v3, "lang:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "fromsql:{");
    _outObjectWithArgs(v3, *(a2 + 24));
    v8 = v3[2];
    v5 = __OFSUB__(v8, 1);
    v9 = v8 - 1;
    if (v9 < 0 == v5)
    {
      v10 = *v3;
      if (*(*v3 + v9) == 44)
      {
        v3[2] = v9;
        *(v10 + v9) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "tosql:{");
    _outObjectWithArgs(v3, *(a2 + 32));
    v11 = v3[2];
    v5 = __OFSUB__(v11, 1);
    v12 = v11 - 1;
    if (v12 < 0 == v5)
    {
      v13 = *v3;
      if (*(*v3 + v12) == 44)
      {
        v3[2] = v12;
        *(v13 + v12) = 0;
      }
    }

    return appendStringInfo(v3, "},");
  }

  return result;
}

int *_outCreateAmStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "amname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "handler_name:");
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
    return appendStringInfo(v3, "amtype:%c,", *(a2 + 24));
  }

  return result;
}

int *_outCreatePublicationStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "pubname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "options:");
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
    appendStringInfo(v3, "tables:");
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

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(v3, "for_all_tables:%s,", "true");
  }

  return result;
}

unint64_t _outAlterPublicationStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "pubname:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "options:");
    appendStringInfoChar(a1, 91);
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
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
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
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "tables:");
    appendStringInfoChar(a1, 91);
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
          _outNode(a1, v14);
        }

        else
        {
          appendStringInfoString(a1, "{}");
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
          appendStringInfoString(a1, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 32) == 1)
  {
    appendStringInfo(a1, "for_all_tables:%s,", "true");
  }

  v16 = *(a2 + 36);
  if (v16 > 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = (&off_1E6E55840)[v16];
  }

  return appendStringInfo(a1, "tableAction:%s,", v17);
}

int *_outCreateSubscriptionStmt(int *result, void *a2)
{
  v3 = result;
  if (a2[1])
  {
    appendStringInfo(result, "subname:");
    _outToken(v3, a2[1]);
    result = appendStringInfo(v3, ",");
  }

  if (a2[2])
  {
    appendStringInfo(v3, "conninfo:");
    _outToken(v3, a2[2]);
    result = appendStringInfo(v3, ",");
  }

  if (a2[3])
  {
    appendStringInfo(v3, "publication:");
    appendStringInfoChar(v3, 91);
    v4 = a2[3];
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
          v9 = v7 + v6 >= (*(a2[3] + 16) + 8 * *(a2[3] + 4));
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

  if (a2[4])
  {
    appendStringInfo(v3, "options:");
    appendStringInfoChar(v3, 91);
    v10 = a2[4];
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
          v15 = v13 + v12 >= (*(a2[4] + 16) + 8 * *(a2[4] + 4));
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outAlterSubscriptionStmt(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E556F0)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "subname:");
    _outToken(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "conninfo:");
    _outToken(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "publication:");
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
    appendStringInfo(a1, "options:");
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

    return appendStringInfo(a1, "],");
  }

  return result;
}

unint64_t _outDropSubscriptionStmt(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "subname:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16) == 1)
  {
    appendStringInfo(a1, "missing_ok:%s,", "true");
  }

  v4 = *(a2 + 20);
  v5 = "DROP_CASCADE";
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
    v6 = "DROP_RESTRICT";
  }

  return appendStringInfo(a1, "behavior:%s,", v6);
}

int *_outCreateStatsStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "defnames:");
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
    appendStringInfo(v3, "stat_types:");
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
    appendStringInfo(v3, "exprs:");
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
    appendStringInfo(v3, "relations:");
    appendStringInfoChar(v3, 91);
    v22 = *(a2 + 32);
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
          _outNode(v3, v26);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v25 + v24)
        {
          v27 = v25 + v24 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          appendStringInfoString(v3, ",");
        }

        ++v23;
        v24 += 8;
      }

      while (v23 < *(v22 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "stxcomment:");
    _outToken(v3, *(a2 + 40));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 48) == 1)
  {
    return appendStringInfo(v3, "if_not_exists:%s,", "true");
  }

  return result;
}

unint64_t _outAlterCollationStmt(unint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    appendStringInfo(result, "collname:");
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

int *_outCallStmt(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "funccall:{");
    _outFuncCall(v3, *(a2 + 8));
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
    appendStringInfo(v3, "funcexpr:{");
    _outFuncExpr(v3, *(a2 + 16));
    v8 = v3[2];
    v5 = __OFSUB__(v8, 1);
    v9 = v8 - 1;
    if (v9 < 0 == v5)
    {
      v10 = *v3;
      if (*(*v3 + v9) == 44)
      {
        v3[2] = v9;
        *(v10 + v9) = 0;
      }
    }

    return appendStringInfo(v3, "},");
  }

  return result;
}

uint64_t _outAlterStatsStmt(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "defnames:");
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
    result = appendStringInfo(v3, "stxstattarget:%d,", *(a2 + 16));
  }

  if (*(a2 + 20) == 1)
  {
    return appendStringInfo(v3, "missing_ok:%s,", "true");
  }

  return result;
}

uint64_t _outAExpr(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0xF)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55718)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:");
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
    appendStringInfo(a1, "lexpr:");
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "rexpr:");
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 32));
  }

  return result;
}

uint64_t _outColumnRef(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "fields:");
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
    return appendStringInfo(v3, "location:%d,", *(a2 + 16));
  }

  return result;
}

uint64_t _outParamRef(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "number:%d,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 8));
  }

  return result;
}

uint64_t _outAConst(uint64_t a1, uint64_t a2)
{
  appendStringInfo(a1, "val:");
  _outNode(a1, (a2 + 8));
  result = appendStringInfo(a1, ",");
  if (*(a2 + 24))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 24));
  }

  return result;
}

int *_outFuncCall(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "funcname:");
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
    appendStringInfo(v3, "args:");
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
    appendStringInfo(v3, "agg_order:");
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
    appendStringInfo(v3, "agg_filter:");
    _outNode(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(v3, "agg_within_group:%s,", "true");
    if (*(a2 + 41) != 1)
    {
LABEL_47:
      if (*(a2 + 42) != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_55;
    }
  }

  else if (*(a2 + 41) != 1)
  {
    goto LABEL_47;
  }

  result = appendStringInfo(v3, "agg_star:%s,", "true");
  if (*(a2 + 42) != 1)
  {
LABEL_48:
    if (*(a2 + 43) != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = appendStringInfo(v3, "agg_distinct:%s,", "true");
  if (*(a2 + 43) != 1)
  {
LABEL_49:
    if (!*(a2 + 48))
    {
      goto LABEL_50;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = appendStringInfo(v3, "func_variadic:%s,", "true");
  if (!*(a2 + 48))
  {
LABEL_50:
    v22 = *(a2 + 56);
    if (!v22)
    {
      return result;
    }

    return appendStringInfo(v3, "location:%d,", v22);
  }

LABEL_57:
  appendStringInfo(v3, "over:{");
  _outWindowDef(v3, *(a2 + 48));
  v23 = v3[2];
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v25 < 0 == v24)
  {
    v26 = *v3;
    if (*(*v3 + v25) == 44)
    {
      v3[2] = v25;
      *(v26 + v25) = 0;
    }
  }

  result = appendStringInfo(v3, "},");
  v22 = *(a2 + 56);
  if (v22)
  {
    return appendStringInfo(v3, "location:%d,", v22);
  }

  return result;
}

uint64_t _outAIndices(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "is_slice:%s,", "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v3, "lidx:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "uidx:");
    _outNode(v3, *(a2 + 16));

    return appendStringInfo(v3, ",");
  }

  return result;
}

uint64_t _outAIndirection(uint64_t result, uint64_t a2)
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
    appendStringInfo(v3, "indirection:");
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

uint64_t _outAArrayExpr(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "elements:");
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
    return appendStringInfo(v3, "location:%d,", *(a2 + 16));
  }

  return result;
}

int *_outResTarget(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "indirection:");
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
    appendStringInfo(v3, "val:");
    _outNode(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 32));
  }

  return result;
}

uint64_t _outMultiAssignRef(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "source:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "colno:%d,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v3, "ncolumns:%d,", *(a2 + 20));
  }

  return result;
}

uint64_t _outTypeCast(uint64_t result, uint64_t a2)
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
    appendStringInfo(v3, "typeName:{");
    _outTypeName(v3, *(a2 + 16));
    v4 = *(v3 + 8);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        *(v3 + 8) = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 24));
  }

  return result;
}

uint64_t _outCollateClause(uint64_t result, uint64_t a2)
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
    appendStringInfo(v3, "collname:");
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

uint64_t _outSortBy(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "node:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  v4 = *(a2 + 16);
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E55798)[v4];
  }

  appendStringInfo(a1, "sortby_dir:%s,", v5);
  v6 = *(a2 + 20);
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&off_1E6E557B8)[v6];
  }

  result = appendStringInfo(a1, "sortby_nulls:%s,", v7);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "useOp:");
    appendStringInfoChar(a1, 91);
    v9 = *(a2 + 24);
    if (v9 && *(v9 + 4) >= 1)
    {
      v10 = 0;
      v11 = 8;
      do
      {
        v12 = *(v9 + 16);
        v13 = *(v12 + 8 * v10);
        if (v13)
        {
          _outNode(a1, v13);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v12 + v11)
        {
          v14 = v12 + v11 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          appendStringInfoString(a1, ",");
        }

        ++v10;
        v11 += 8;
      }

      while (v10 < *(v9 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 32));
  }

  return result;
}

int *_outWindowDef(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "refname:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "partitionClause:");
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
    appendStringInfo(v3, "orderClause:");
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
    result = appendStringInfo(v3, "frameOptions:%d,", *(a2 + 40));
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v3, "startOffset:");
    _outNode(v3, *(a2 + 48));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v3, "endOffset:");
    _outNode(v3, *(a2 + 56));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 64))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 64));
  }

  return result;
}

int *_outRangeSubselect(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "lateral:%s,", "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v3, "subquery:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "alias:{");
    _outAlias(v3, *(a2 + 16));
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

    return appendStringInfo(v3, "},");
  }

  return result;
}

int *_outRangeFunction(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "lateral:%s,", "true");
    if (*(a2 + 5) != 1)
    {
LABEL_3:
      if (*(a2 + 6) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if (*(a2 + 5) != 1)
  {
    goto LABEL_3;
  }

  result = appendStringInfo(v3, "ordinality:%s,", "true");
  if (*(a2 + 6) != 1)
  {
LABEL_4:
    if (!*(a2 + 8))
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = appendStringInfo(v3, "is_rowsfrom:%s,", "true");
  if (!*(a2 + 8))
  {
LABEL_5:
    if (!*(a2 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_25:
  appendStringInfo(v3, "functions:");
  appendStringInfoChar(v3, 91);
  v10 = *(a2 + 8);
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
        v15 = v13 + v12 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
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
  if (!*(a2 + 16))
  {
LABEL_6:
    if (!*(a2 + 24))
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_38:
  appendStringInfo(v3, "alias:{");
  _outAlias(v3, *(a2 + 16));
  v16 = v3[2];
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v18 < 0 == v17)
  {
    v19 = *v3;
    if (*(*v3 + v18) == 44)
    {
      v3[2] = v18;
      *(v19 + v18) = 0;
    }
  }

  result = appendStringInfo(v3, "},");
  if (*(a2 + 24))
  {
LABEL_7:
    appendStringInfo(v3, "coldeflist:");
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

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outRangeTableSample(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "method:");
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
    appendStringInfo(v3, "args:");
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
    appendStringInfo(v3, "repeatable:");
    _outNode(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 40));
  }

  return result;
}

int *_outRangeTableFunc(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "lateral:%s,", "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v3, "docexpr:");
    _outNode(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "rowexpr:");
    _outNode(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "namespaces:");
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
    appendStringInfo(v3, "columns:");
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
    appendStringInfo(v3, "alias:{");
    _outAlias(v3, *(a2 + 40));
    v16 = v3[2];
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      v19 = *v3;
      if (*(*v3 + v18) == 44)
      {
        v3[2] = v18;
        *(v19 + v18) = 0;
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

int *_outRangeTableFuncCol(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "colname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "typeName:{");
    _outTypeName(v3, *(a2 + 16));
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

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v3, "for_ordinality:%s,", "true");
    if (*(a2 + 25) != 1)
    {
LABEL_10:
      if (!*(a2 + 32))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (*(a2 + 25) != 1)
  {
    goto LABEL_10;
  }

  result = appendStringInfo(v3, "is_not_null:%s,", "true");
  if (*(a2 + 32))
  {
LABEL_11:
    appendStringInfo(v3, "colexpr:");
    _outNode(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

LABEL_12:
  if (*(a2 + 40))
  {
    appendStringInfo(v3, "coldefexpr:");
    _outNode(v3, *(a2 + 40));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 48))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 48));
  }

  return result;
}

uint64_t _outTypeName(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "names:");
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
    result = appendStringInfo(v3, "typeOid:%u,", *(a2 + 16));
  }

  if (*(a2 + 20) == 1)
  {
    result = appendStringInfo(v3, "setof:%s,", "true");
    if (*(a2 + 21) != 1)
    {
LABEL_19:
      if (!*(a2 + 24))
      {
        goto LABEL_20;
      }

      goto LABEL_41;
    }
  }

  else if (*(a2 + 21) != 1)
  {
    goto LABEL_19;
  }

  result = appendStringInfo(v3, "pct_type:%s,", "true");
  if (!*(a2 + 24))
  {
LABEL_20:
    v10 = *(a2 + 32);
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_41:
  appendStringInfo(v3, "typmods:");
  appendStringInfoChar(v3, 91);
  v17 = *(a2 + 24);
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
        _outNode(v3, v21);
      }

      else
      {
        appendStringInfoString(v3, "{}");
      }

      if (v20 + v19)
      {
        v22 = v20 + v19 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        appendStringInfoString(v3, ",");
      }

      ++v18;
      v19 += 8;
    }

    while (v18 < *(v17 + 4));
  }

  result = appendStringInfo(v3, "],");
  v10 = *(a2 + 32);
  if (v10)
  {
LABEL_21:
    result = appendStringInfo(v3, "typemod:%d,", v10);
  }

LABEL_22:
  if (*(a2 + 40))
  {
    appendStringInfo(v3, "arrayBounds:");
    appendStringInfoChar(v3, 91);
    v11 = *(a2 + 40);
    if (v11 && *(v11 + 4) >= 1)
    {
      v12 = 0;
      v13 = 8;
      do
      {
        v14 = *(v11 + 16);
        v15 = *(v14 + 8 * v12);
        if (v15)
        {
          _outNode(v3, v15);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v14 + v13)
        {
          v16 = v14 + v13 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          appendStringInfoString(v3, ",");
        }

        ++v12;
        v13 += 8;
      }

      while (v12 < *(v11 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 48))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 48));
  }

  return result;
}

int *_outColumnDef(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "colname:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "typeName:{");
    _outTypeName(v3, *(a2 + 16));
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

  if (*(a2 + 24))
  {
    result = appendStringInfo(v3, "inhcount:%d,", *(a2 + 24));
  }

  if (*(a2 + 28) == 1)
  {
    result = appendStringInfo(v3, "is_local:%s,", "true");
    if (*(a2 + 29) != 1)
    {
LABEL_12:
      if (*(a2 + 30) != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_68;
    }
  }

  else if (*(a2 + 29) != 1)
  {
    goto LABEL_12;
  }

  result = appendStringInfo(v3, "is_not_null:%s,", "true");
  if (*(a2 + 30) != 1)
  {
LABEL_13:
    v8 = *(a2 + 31);
    if (!*(a2 + 31))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_68:
  result = appendStringInfo(v3, "is_from_type:%s,", "true");
  v8 = *(a2 + 31);
  if (*(a2 + 31))
  {
LABEL_14:
    result = appendStringInfo(v3, "storage:%c,", v8);
  }

LABEL_15:
  if (*(a2 + 32))
  {
    appendStringInfo(v3, "raw_default:");
    _outNode(v3, *(a2 + 32));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "cooked_default:");
    _outNode(v3, *(a2 + 40));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(v3, "identity:%c,", *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v3, "identitySequence:{");
    _outRangeVar(v3, *(a2 + 56));
    v9 = v3[2];
    v5 = __OFSUB__(v9, 1);
    v10 = v9 - 1;
    if (v10 < 0 == v5)
    {
      v11 = *v3;
      if (*(*v3 + v10) == 44)
      {
        v3[2] = v10;
        *(v11 + v10) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 64))
  {
    result = appendStringInfo(v3, "generated:%c,", *(a2 + 64));
  }

  if (*(a2 + 72))
  {
    appendStringInfo(v3, "collClause:{");
    _outCollateClause(v3, *(a2 + 72));
    v12 = v3[2];
    v5 = __OFSUB__(v12, 1);
    v13 = v12 - 1;
    if (v13 < 0 == v5)
    {
      v14 = *v3;
      if (*(*v3 + v13) == 44)
      {
        v3[2] = v13;
        *(v14 + v13) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 80))
  {
    result = appendStringInfo(v3, "collOid:%u,", *(a2 + 80));
  }

  if (*(a2 + 88))
  {
    appendStringInfo(v3, "constraints:");
    appendStringInfoChar(v3, 91);
    v15 = *(a2 + 88);
    if (v15 && *(v15 + 4) >= 1)
    {
      v16 = 0;
      v17 = 8;
      do
      {
        v18 = *(v15 + 16);
        v19 = *(v18 + 8 * v16);
        if (v19)
        {
          _outNode(v3, v19);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v18 + v17)
        {
          v20 = v18 + v17 >= (*(*(a2 + 88) + 16) + 8 * *(*(a2 + 88) + 4));
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          appendStringInfoString(v3, ",");
        }

        ++v16;
        v17 += 8;
      }

      while (v16 < *(v15 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 96))
  {
    appendStringInfo(v3, "fdwoptions:");
    appendStringInfoChar(v3, 91);
    v21 = *(a2 + 96);
    if (v21 && *(v21 + 4) >= 1)
    {
      v22 = 0;
      v23 = 8;
      do
      {
        v24 = *(v21 + 16);
        v25 = *(v24 + 8 * v22);
        if (v25)
        {
          _outNode(v3, v25);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v24 + v23)
        {
          v26 = v24 + v23 >= (*(*(a2 + 96) + 16) + 8 * *(*(a2 + 96) + 4));
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          appendStringInfoString(v3, ",");
        }

        ++v22;
        v23 += 8;
      }

      while (v22 < *(v21 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 104))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 104));
  }

  return result;
}

unint64_t _outIndexElem(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "expr:");
    _outNode(a1, *(a2 + 16));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "indexcolname:");
    _outToken(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "collation:");
    appendStringInfoChar(a1, 91);
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
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
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
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "opclass:");
    appendStringInfoChar(a1, 91);
    v10 = *(a2 + 40);
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
          v15 = v13 + v12 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
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

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "opclassopts:");
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 48);
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
          v21 = v19 + v18 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
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

  v22 = *(a2 + 56);
  if (v22 > 3)
  {
    v23 = 0;
  }

  else
  {
    v23 = (&off_1E6E55798)[v22];
  }

  appendStringInfo(a1, "ordering:%s,", v23);
  v24 = *(a2 + 60);
  if (v24 > 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = (&off_1E6E557B8)[v24];
  }

  return appendStringInfo(a1, "nulls_ordering:%s,", v25);
}

uint64_t _outConstraint(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 0xD)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_1E6E557D0)[v4];
  }

  result = appendStringInfo(a1, "contype:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "conname:");
    _outToken(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(a1, "deferrable:%s,", "true");
    if (*(a2 + 17) != 1)
    {
LABEL_8:
      v7 = *(a2 + 20);
      if (!v7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if (*(a2 + 17) != 1)
  {
    goto LABEL_8;
  }

  result = appendStringInfo(a1, "initdeferred:%s,", "true");
  v7 = *(a2 + 20);
  if (v7)
  {
LABEL_9:
    result = appendStringInfo(a1, "location:%d,", v7);
  }

LABEL_10:
  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(a1, "is_no_inherit:%s,", "true");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "raw_expr:");
    _outNode(a1, *(a2 + 32));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "cooked_expr:");
    _outToken(a1, *(a2 + 40));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(a1, "generated_when:%c,", *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "keys:");
    appendStringInfoChar(a1, 91);
    v8 = *(a2 + 56);
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
          v13 = v11 + v10 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
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

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "including:");
    appendStringInfoChar(a1, 91);
    v14 = *(a2 + 64);
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
          v19 = v17 + v16 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
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

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "exclusions:");
    appendStringInfoChar(a1, 91);
    v20 = *(a2 + 72);
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
          v25 = v23 + v22 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
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

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "options:");
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

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 88))
  {
    appendStringInfo(a1, "indexname:");
    _outToken(a1, *(a2 + 88));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 96))
  {
    appendStringInfo(a1, "indexspace:");
    _outToken(a1, *(a2 + 96));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 104) == 1)
  {
    result = appendStringInfo(a1, "reset_default_tblspc:%s,", "true");
  }

  if (*(a2 + 112))
  {
    appendStringInfo(a1, "access_method:");
    _outToken(a1, *(a2 + 112));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 120))
  {
    appendStringInfo(a1, "where_clause:");
    _outNode(a1, *(a2 + 120));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 128))
  {
    appendStringInfo(a1, "pktable:{");
    _outRangeVar(a1, *(a2 + 128));
    v32 = a1[2];
    v33 = __OFSUB__(v32, 1);
    v34 = v32 - 1;
    if (v34 < 0 == v33)
    {
      v35 = *a1;
      if (*(*a1 + v34) == 44)
      {
        a1[2] = v34;
        *(v35 + v34) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 136))
  {
    appendStringInfo(a1, "fk_attrs:");
    appendStringInfoChar(a1, 91);
    v36 = *(a2 + 136);
    if (v36 && *(v36 + 4) >= 1)
    {
      v37 = 0;
      v38 = 8;
      do
      {
        v39 = *(v36 + 16);
        v40 = *(v39 + 8 * v37);
        if (v40)
        {
          _outNode(a1, v40);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v39 + v38)
        {
          v41 = v39 + v38 >= (*(*(a2 + 136) + 16) + 8 * *(*(a2 + 136) + 4));
        }

        else
        {
          v41 = 1;
        }

        if (!v41)
        {
          appendStringInfoString(a1, ",");
        }

        ++v37;
        v38 += 8;
      }

      while (v37 < *(v36 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 144))
  {
    appendStringInfo(a1, "pk_attrs:");
    appendStringInfoChar(a1, 91);
    v42 = *(a2 + 144);
    if (v42 && *(v42 + 4) >= 1)
    {
      v43 = 0;
      v44 = 8;
      do
      {
        v45 = *(v42 + 16);
        v46 = *(v45 + 8 * v43);
        if (v46)
        {
          _outNode(a1, v46);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v45 + v44)
        {
          v47 = v45 + v44 >= (*(*(a2 + 144) + 16) + 8 * *(*(a2 + 144) + 4));
        }

        else
        {
          v47 = 1;
        }

        if (!v47)
        {
          appendStringInfoString(a1, ",");
        }

        ++v43;
        v44 += 8;
      }

      while (v43 < *(v42 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 152))
  {
    result = appendStringInfo(a1, "fk_matchtype:%c,", *(a2 + 152));
  }

  if (*(a2 + 153))
  {
    result = appendStringInfo(a1, "fk_upd_action:%c,", *(a2 + 153));
  }

  if (*(a2 + 154))
  {
    result = appendStringInfo(a1, "fk_del_action:%c,", *(a2 + 154));
  }

  if (*(a2 + 160))
  {
    appendStringInfo(a1, "old_conpfeqop:");
    appendStringInfoChar(a1, 91);
    v48 = *(a2 + 160);
    if (v48 && *(v48 + 4) >= 1)
    {
      v49 = 0;
      v50 = 8;
      do
      {
        v51 = *(v48 + 16);
        v52 = *(v51 + 8 * v49);
        if (v52)
        {
          _outNode(a1, v52);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v51 + v50)
        {
          v53 = v51 + v50 >= (*(*(a2 + 160) + 16) + 8 * *(*(a2 + 160) + 4));
        }

        else
        {
          v53 = 1;
        }

        if (!v53)
        {
          appendStringInfoString(a1, ",");
        }

        ++v49;
        v50 += 8;
      }

      while (v49 < *(v48 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 168))
  {
    result = appendStringInfo(a1, "old_pktable_oid:%u,", *(a2 + 168));
  }

  if (*(a2 + 172) == 1)
  {
    result = appendStringInfo(a1, "skip_validation:%s,", "true");
  }

  if (*(a2 + 173) == 1)
  {
    return appendStringInfo(a1, "initially_valid:%s,", "true");
  }

  return result;
}