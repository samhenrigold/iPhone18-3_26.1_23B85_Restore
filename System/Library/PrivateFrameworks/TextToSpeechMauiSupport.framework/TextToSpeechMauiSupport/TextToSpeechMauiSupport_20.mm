uint64_t wgram_GetNextTrans(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  result = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = v8 - v9;
    if (v8 <= v9)
    {
LABEL_11:
      *a3 = v9 + 1;
      v16 = -1;
      *a4 = -1;
      *a5 = -1;
    }

    else
    {
      v11 = *(a1 + 280);
      v12 = v9 << 34;
      v13 = (v11 + 16 * v9 + 8);
      v14 = ~v9;
      while (1)
      {
        v15 = *v13;
        v13 += 4;
        if (v15 == a2)
        {
          break;
        }

        v12 += 0x400000000;
        --v14;
        if (!--v10)
        {
          LODWORD(v9) = a3[1];
          goto LABEL_11;
        }
      }

      *a3 = -v14;
      v17 = (v11 + (v12 >> 30));
      *a4 = *v17;
      *a5 = v17[1];
      v16 = v17[3];
    }

    result = 0;
    *a6 = v16;
  }

  return result;
}

uint64_t wgram_GetFirstEpsTrans(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  v6 = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v7 = (*(a1 + 312) + 4 * (a2 % *(a1 + 304)));
    v9 = *v7;
    v8 = v7[1];
    if (v9 >= v8)
    {
LABEL_11:
      *a3 = v9 + 1;
      a3[1] = v8;
      v14 = -1;
      *a4 = -1;
      *a5 = 0;
    }

    else
    {
      v10 = *(a1 + 320);
      v11 = v9 << 34;
      v12 = (v10 + 16 * v9);
      while (1)
      {
        v13 = *v12;
        v12 += 4;
        LODWORD(v9) = v9 + 1;
        if (v13 == a2)
        {
          break;
        }

        v11 += 0x400000000;
        if (v8 == v9)
        {
          LODWORD(v9) = v8;
          goto LABEL_11;
        }
      }

      *a3 = v9;
      a3[1] = v8;
      v15 = v10 + (v11 >> 30);
      v16 = *(v15 + 4);
      *a4 = v16;
      *a5 = v16 == *(a1 + 260);
      v14 = *(v15 + 12);
    }

    v6 = 0;
    *a6 = v14;
  }

  return v6;
}

uint64_t wgram_GetNextEpsTrans(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  v6 = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v8 = *a3;
    v7 = a3[1];
    v9 = v7 - v8;
    if (v7 <= v8)
    {
LABEL_11:
      *a3 = v8 + 1;
      v15 = -1;
      *a4 = -1;
      *a5 = 0;
    }

    else
    {
      v10 = *(a1 + 320);
      v11 = v8 << 34;
      v12 = (v10 + 16 * v8);
      v13 = ~v8;
      while (1)
      {
        v14 = *v12;
        v12 += 4;
        if (v14 == a2)
        {
          break;
        }

        v11 += 0x400000000;
        --v13;
        if (!--v9)
        {
          LODWORD(v8) = a3[1];
          goto LABEL_11;
        }
      }

      *a3 = -v13;
      v16 = v10 + (v11 >> 30);
      v17 = *(v16 + 4);
      *a4 = v17;
      *a5 = v17 == *(a1 + 260);
      v15 = *(v16 + 12);
    }

    v6 = 0;
    *a6 = v15;
  }

  return v6;
}

uint64_t mosyntkbaccphr_CheckMatchingConsFeat(uint64_t a1, int a2, unsigned __int16 *a3, int a4, unsigned __int16 *a5, char *a6)
{
  *a6 = 0;
  if (a2 == a4)
  {
    if (*a3)
    {
      return mosyntknowl_CheckUnifiable(a1, a3, a5, a6);
    }

    *a6 = 1;
  }

  return 0;
}

uint64_t mosyntkbaccphr_CheckMatchingConsFeat2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, unsigned __int16 *a6, char *a7)
{
  v13[3] = *MEMORY[0x277D85DE8];
  memset(v13, 0, 24);
  *a7 = 0;
  GetFeat(a2, a4, v13);
  result = 0;
  if (a3 == a5)
  {
    if (LOWORD(v13[0]))
    {
      return mosyntknowl_CheckUnifiable(a1, v13, a6, a7);
    }

    else
    {
      result = 0;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t GetFeat(uint64_t a1, signed int a2, _WORD *a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  result = accphr_getFeatList(a1, a2, v10);
  v5 = v10[0];
  if (SLODWORD(v10[0]) >= 1)
  {
    v6 = v10 + 1;
    v7 = a3 + 1;
    v8 = LODWORD(v10[0]);
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  *a3 = v5;
  return result;
}

uint64_t mosyntkbaccphr_CheckMatchingConsFeat3(uint64_t a1, uint64_t a2, int a3, unsigned __int16 *a4, int a5, signed int a6, char *a7)
{
  v13[3] = *MEMORY[0x277D85DE8];
  memset(v13, 0, 24);
  *a7 = 0;
  GetFeat(a2, a6, v13);
  result = 0;
  if (a3 == a5)
  {
    if (*a4)
    {
      return mosyntknowl_CheckUnifiable(a1, a4, v13, a7);
    }

    else
    {
      result = 0;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t mosyntkbaccphr_LookupAccPhrRule(uint64_t a1, uint64_t a2, int a3, __int16 *a4, _BYTE *a5, uint64_t a6)
{
  FirstRule = accphr_getFirstRule(a2, a3);
  v19 = 0;
  if (FirstRule == accphr_Nil())
  {
    v13 = 0;
LABEL_3:
    if (FirstRule == accphr_Nil())
    {
      *a5 = 0;
    }

    else
    {
      *a5 = 1;
      *a6 = a2;
      *(a6 + 40) = FirstRule;
      *(a6 + 8) = a3;
      return mosyntknowl_CopyFeatList(a4, (a6 + 16));
    }
  }

  else
  {
    while (1)
    {
      Rule = accphr_getRule(1, a2, FirstRule);
      Node = accphr_getNode(5, a2, Rule);
      v16 = accphr_getRule(1, a2, FirstRule);
      v17 = accphr_getNode(6, a2, v16);
      v13 = mosyntkbaccphr_CheckMatchingConsFeat2(a1, a2, Node, v17, a3, a4, &v19);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      if (!v19)
      {
        FirstRule = accphr_getRule(14, a2, FirstRule);
      }

      if (FirstRule == accphr_Nil() || v19)
      {
        goto LABEL_3;
      }
    }
  }

  return v13;
}

uint64_t mosyntkbaccphr_GetNextAccPhrEntry(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *a3 = 0;
  Rule = accphr_getRule(14, a2, *(a4 + 40));
  v15 = 0;
  if (Rule == accphr_Nil())
  {
    v9 = 0;
LABEL_3:
    if (Rule == accphr_Nil())
    {
      *a3 = 0;
    }

    else
    {
      *a3 = 1;
      *(a4 + 40) = Rule;
    }
  }

  else
  {
    while (1)
    {
      v10 = accphr_getRule(1, a2, Rule);
      Node = accphr_getNode(5, a2, v10);
      v12 = accphr_getRule(1, a2, Rule);
      v13 = accphr_getNode(6, a2, v12);
      v9 = mosyntkbaccphr_CheckMatchingConsFeat2(a1, a2, Node, v13, *(a4 + 8), (a4 + 16), &v15);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      if (!v15)
      {
        Rule = accphr_getRule(14, a2, Rule);
      }

      if (Rule == accphr_Nil() || v15)
      {
        goto LABEL_3;
      }
    }
  }

  return v9;
}

uint64_t mosyntkbaccphr_WriteAccPhrNode(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (accphr_getNodeNegated(a3, a4))
  {
    v8 = mosyntbase_Wr();
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
  }

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  Node = accphr_getNode(3, a3, a4);
  if (Node > 1)
  {
    if (Node == 2)
    {
      v17 = accphr_getNode(5, a3, a4);
      v18 = accphr_getNode(6, a3, a4);
      v16 = WriteConsFeat1(a1, a2, a3, v17, v18);
LABEL_21:
      v8 = v16;
      if ((v16 & 0x80000000) != 0)
      {
        return v8;
      }

      goto LABEL_22;
    }

    if (Node != 3)
    {
      goto LABEL_22;
    }

    v15 = accphr_getNode(7, a3, a4);
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v12 = "'EOS'";
        goto LABEL_18;
      }

      if (v15 == 4)
      {
        v12 = "'QOS'";
        goto LABEL_18;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v12 = "'OBR'";
        goto LABEL_18;
      }

      if (v15 == 2)
      {
        v12 = "'BOS'";
LABEL_18:
        v13 = a1;
        v14 = 0;
LABEL_19:
        v16 = mosyntbase_WString(v13, v12, v14);
        goto LABEL_21;
      }
    }

    v12 = "'(unknown property)'";
    goto LABEL_18;
  }

  if (!Node)
  {
    v12 = "?";
    goto LABEL_18;
  }

  if (Node == 1)
  {
    v10 = accphr_getNode(4, a3, a4);
    v11 = mosyntkbsymtab_AtomSymString(a1, a2, v10, v21, 100);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    v11 = mosyntbase_Wr();
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    v12 = v21;
    v13 = a1;
    v14 = 100;
    goto LABEL_19;
  }

LABEL_22:
  if (accphr_getNodeMatchOp(a3, a4) == 6)
  {
    v19 = "*";
    return mosyntbase_WString(a1, v19, 0);
  }

  if (accphr_getNodeMatchOp(a3, a4) == 3)
  {
    v19 = "+";
    return mosyntbase_WString(a1, v19, 0);
  }

  if (accphr_getNodeMatchOp(a3, a4) == 1)
  {
    v19 = "$";
    return mosyntbase_WString(a1, v19, 0);
  }

  if (accphr_getNodeMatchOp(a3, a4) == 7)
  {
    v19 = "@";
    return mosyntbase_WString(a1, v19, 0);
  }

  return v8;
}

uint64_t WriteConsFeat1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, signed int a5)
{
  v9[3] = *MEMORY[0x277D85DE8];
  memset(v9, 0, 24);
  GetFeat(a3, a5, v9);
  result = mosyntkbsymtab_WriteCons(a1, a2, a4);
  if ((result & 0x80000000) == 0 && SLOWORD(v9[0]) >= 1)
  {
    result = mosyntbase_WString(a1, " ", 0);
    if ((result & 0x80000000) == 0)
    {
      return mosyntkbsymtab_WriteFeatList(a1, a2, v9);
    }
  }

  return result;
}

uint64_t mosyntkbaccphr_WriteRuleHeadline(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  Rule = accphr_getRule(0, a3, a4);
  v9 = accphr_getRule(0, a3, a4);
  memset(v19, 0, 32);
  if (Rule >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  memset(&v19[2], 0, 64);
  v20 = 0;
  result = mosyntkbsymtab_AtomSymString(a1, a2, v10, v19, 100);
  if ((result & 0x80000000) == 0)
  {
    if (accphr_getRule(0, a3, a4) < 1)
    {
      result = mosyntbase_WriteMessage(a1, "^%s <== ", 0, v19, 0x64u, "", 0, "", 0);
    }

    else
    {
      result = mosyntbase_WriteMessage(a1, "^%s <-- ", 0, v19, 0x64u, "", 0, "", 0);
    }

    if ((result & 0x80000000) == 0)
    {
      v12 = accphr_getRule(1, a3, a4);
      Node = accphr_getNode(5, a3, v12);
      v14 = accphr_getRule(1, a3, a4);
      v15 = accphr_getNode(6, a3, v14);
      result = WriteConsFeat1(a1, a2, a3, Node, v15);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, " [ ", 0);
        if ((result & 0x80000000) == 0)
        {
          v16 = accphr_getRule(2, a3, a4);
          result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v16);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WString(a1, ", ", 0);
            if ((result & 0x80000000) == 0)
            {
              v17 = accphr_getRule(3, a3, a4);
              result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v17);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntbase_WString(a1, ", ", 0);
                if ((result & 0x80000000) == 0)
                {
                  v18 = accphr_getRule(4, a3, a4);
                  result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v18);
                  if ((result & 0x80000000) == 0)
                  {
                    return mosyntbase_WString(a1, " ]", 0);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mosyntkbaccphr_WriteChildrenList(uint64_t a1, void *a2, uint64_t a3, char *a4, unsigned int a5, int a6)
{
  v6 = a6;
  if (accphr_Nil() != a6)
  {
    while (1)
    {
      v13 = mosyntbase_WString(a1, a4, a5);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      v13 = mosyntbase_WString(a1, "[ ", 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      for (i = accphr_getChildren(1, a3, v6); ; i = accphr_getNode(8, a3, v15))
      {
        v15 = i;
        if (i == accphr_Nil())
        {
          break;
        }

        v13 = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v15);
        if ((v13 & 0x80000000) != 0)
        {
          return v13;
        }

        Node = accphr_getNode(8, a3, v15);
        if (Node != accphr_Nil())
        {
          v13 = mosyntbase_WString(a1, ", ", 0);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }
      }

      v13 = mosyntbase_WString(a1, " ]", 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      ChildrenOpType = accphr_getChildrenOpType(a3, v6);
      if (ChildrenOpType == 2)
      {
        v18 = a1;
        v19 = " :FC";
      }

      else
      {
        if (ChildrenOpType != 1)
        {
          goto LABEL_17;
        }

        v18 = a1;
        v19 = " :OL";
      }

      v13 = mosyntbase_WString(v18, v19, 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

LABEL_17:
      Children = accphr_getChildren(2, a3, v6);
      if (Children == accphr_Nil())
      {
        v21 = mosyntbase_WLn(a1);
      }

      else
      {
        v21 = mosyntbase_WStringLn(a1, "||", 0);
      }

      v12 = v21;
      if ((v21 & 0x80000000) == 0)
      {
        v6 = accphr_getChildren(2, a3, v6);
        if (v6 != accphr_Nil())
        {
          continue;
        }
      }

      return v12;
    }
  }

  return 0;
}

uint64_t mosyntkbaccphr_WriteInstruction(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v26[2] = *MEMORY[0x277D85DE8];
  accphr_getInstrType(a3, a4);
  if (accphr_getInstrType(a3, a4) > 6)
  {
    return 0;
  }

  if (accphr_getInstrTargetRange(a3, a4))
  {
    v8 = accphr_getInstrRight(a3, a4) ? "r_" : "l_";
    v10 = mosyntbase_WString(a1, v8, 0);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

  if (accphr_getInstrTargetRange(a3, a4) == 2)
  {
    v11 = "syll_";
  }

  else
  {
    if (accphr_getInstrTargetRange(a3, a4) != 3)
    {
      goto LABEL_16;
    }

    if (accphr_getInstr(5, a3, a4) == -1)
    {
      v11 = "prsyll_";
    }

    else if (accphr_getInstr(5, a3, a4))
    {
      v11 = "flsyll_";
    }

    else
    {
      v11 = "ssyll_";
    }
  }

  v10 = mosyntbase_WString(a1, v11, 0);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

LABEL_16:
  InstrType = accphr_getInstrType(a3, a4);
  v13 = 0;
  v14 = "XL";
  v15 = "L";
  v16 = "H";
  v17 = "XH";
  if (InstrType > 3)
  {
    switch(InstrType)
    {
      case 4:
        v18 = "pitch";
        break;
      case 5:
        v18 = "volume";
        break;
      case 6:
        v18 = "stress";
        break;
      default:
        goto LABEL_33;
    }

LABEL_31:
    v10 = mosyntbase_WString(a1, v18, 0);
    if ((v10 & 0x80000000) == 0)
    {
      v13 = 0;
      goto LABEL_33;
    }

    return v10;
  }

  switch(InstrType)
  {
    case 0:
      if (accphr_getInstr(2, a3, a4))
      {
        v10 = mosyntbase_WString(a1, "br", 0);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v13 = 0;
        v14 = "XW";
        v15 = "W";
        v16 = "S";
      }

      else
      {
        v10 = mosyntbase_WString(a1, "bnd", 0);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v14 = "XW";
        v15 = "W";
        v16 = "S";
        v13 = 1;
      }

      v17 = "XS";
      break;
    case 2:
      v18 = "emph";
      goto LABEL_31;
    case 3:
      v18 = "rate";
      goto LABEL_31;
  }

LABEL_33:
  Instr = accphr_getInstr(0, a3, a4);
  if (Instr != accphr_Nil())
  {
    v20 = accphr_getInstr(0, a3, a4);
    if (accphr_getNode(3, a3, v20))
    {
      v10 = mosyntbase_WString(a1, "(", 0);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v21 = accphr_getInstr(0, a3, a4);
      v10 = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v21);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v10 = mosyntbase_WString(a1, ")", 0);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    v25 = 0;
    v26[0] = 0;
    *(v26 + 5) = 0;
    v23 = accphr_getInstr(2, a3, a4);
    v24 = 0;
    if (v23 <= 2)
    {
      switch(v23)
      {
        case 0:
          v14 = "(no value)";
          goto LABEL_61;
        case 1:
          v14 = "default";
          goto LABEL_61;
        case 2:
          goto LABEL_61;
      }
    }

    else
    {
      if (v23 <= 4)
      {
        v14 = v15;
        if (v23 != 3)
        {
          v14 = "M";
        }

LABEL_61:
        v9 = mosyntbase_CCopy(v14, 0, &v25, 21, &v24);
        if ((v9 & 0x80000000) != 0)
        {
          return v9;
        }

        goto LABEL_62;
      }

      v14 = v16;
      if (v23 == 5)
      {
        goto LABEL_61;
      }

      if (v23 == 6)
      {
        v14 = v17;
        goto LABEL_61;
      }
    }

    v9 = 0;
LABEL_62:
    if (accphr_getInstr(2, a3, a4))
    {
      v10 = mosyntbase_WString(a1, " = ", 0);
      if ((v10 & 0x80000000) == 0)
      {
        return mosyntbase_WString(a1, &v25, 0x15u);
      }

      return v10;
    }

    return v9;
  }

  return mosyntbase_WString(a1, " = default", 0);
}

uint64_t mosyntkbaccphr_WritePromTemplate(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  result = mosyntbase_WString(a1, "<prom =", 0);
  if ((result & 0x80000000) == 0)
  {
    Children = accphr_getChildren(1, a3, a4);
    if (Children == accphr_Nil())
    {
LABEL_6:

      return mosyntbase_WStringLn(a1, " >", 0);
    }

    else
    {
      while (1)
      {
        HIDWORD(v10) = 0;
        LODWORD(v10) = 0;
        *(&v10 + 4) = accphr_getNode(2, a3, Children);
        result = mosyntbase_WriteMessage(a1, " [%i] ", 0, "", 0, "", 0, "", v10);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, Children);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        Children = accphr_getNode(8, a3, Children);
        if (Children == accphr_Nil())
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t mosyntkbaccphr_PhraseTypeToString(int a1, uint64_t a2, int a3)
{
  v5 = 0;
  if ((a1 - 1) > 8)
  {
    v3 = "";
  }

  else
  {
    v3 = off_279DAC5F0[a1 - 1];
  }

  return mosyntbase_CCopy(v3, 0, a2, a3, &v5);
}

uint64_t mosyntkbaccphr_StringToPhraseType(uint64_t a1, unsigned __int8 *a2, unsigned int a3, int *a4)
{
  if (mosyntbase_CEqual(a2, a3, "P", 0))
  {
    v8 = 1;
LABEL_19:
    *a4 = v8;
    return 0;
  }

  if (mosyntbase_CEqual(a2, a3, "T", 0))
  {
    v8 = 2;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "S", 0))
  {
    v8 = 3;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "Y", 0))
  {
    v8 = 4;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "W", 0))
  {
    v8 = 5;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "AI", 0))
  {
    v8 = 6;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "AM", 0))
  {
    v8 = 7;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "AF", 0))
  {
    v8 = 8;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "E", 0))
  {
    v8 = 9;
    goto LABEL_19;
  }

  return mosyntbase_WriteDevelMessage(a1, "***** illegal phrase type '%s'\\n", 0, a2, a3, "", 0, "", 0, 0);
}

uint64_t mosyntkbaccphr_SimplifiedPhraseType(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_26ECDAA74[a1 - 1];
  }
}

uint64_t mosyntkbfst_GetFirstSameInSymPair(__int16 *a1, __int16 a2, uint64_t a3, BOOL *a4)
{
  fst_firstSamePair(a1, a2, a3);
  *a4 = v5 != 0;
  return 0;
}

uint64_t mosyntkbfst_OutSym(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  v3 = 0;
  fst_getPair(a1, a2, &v4 + 1, &v4, &v3);
  return v4;
}

uint64_t WritePair(uint64_t a1, void *a2, int a3, uint64_t a4, _DWORD *a5, int a6)
{
  v16 = 0;
  v15 = 0;
  fst_getPair(a4, a5, &v16 + 1, &v16, &v15);
  if ((a6 | 2) == 2)
  {
    if (HIWORD(v16))
    {
      result = mosyntbase_WString(a1, "", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v11 = SHIWORD(v16);
      if (a3)
      {
        result = mosyntkbsymtab_WriteGraphSym(a1, a2, v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = mosyntkbsymtab_WritePhonSym(a1, a2, v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v12 = "";
    }

    else
    {
      v12 = "@";
    }

    result = mosyntbase_WString(a1, v12, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
  }

  if (a6 == 2)
  {
    result = mosyntbase_WString(a1, "/", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else if ((a6 - 1) > 1)
  {
    return result;
  }

  if (!v16)
  {
    v14 = "@";
    return mosyntbase_WString(a1, v14, 0);
  }

  result = mosyntbase_WString(a1, "", 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v13 = v16;
  if (!a3)
  {
    result = mosyntkbsymtab_WritePhonSym(a1, a2, v13);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_23;
  }

  result = mosyntkbsymtab_WriteGraphSym(a1, a2, v13);
  if ((result & 0x80000000) == 0)
  {
LABEL_23:
    v14 = "";
    return mosyntbase_WString(a1, v14, 0);
  }

  return result;
}

uint64_t mosyntkbsgram_NilIter(void *a1)
{
  *a1 = 0;
  a1[1] = -1;
  return 0;
}

uint64_t mosyntkbsgram_StartCons(_DWORD *a1)
{
  v2 = 0;
  sgram_GetStartCons(a1, &v2);
  return v2;
}

uint64_t mosyntkbsgram_GetFirstEmptyRule(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 0;
  v4 = 0;
  sgram_GetFirstEmptyRule(a1, a2, a3, &v5, &v4);
  return 0;
}

uint64_t mosyntkbsgram_GetNextEmptyRule(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v5 = 0;
  v4 = 0;
  sgram_GetNextEmptyRule(a2, a3, &v5, &v4);
  return 0;
}

uint64_t mosyntkbsgram_GetRuleFeatLists(uint64_t *a1, _WORD *a2, _WORD *a3, _WORD *a4)
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  sgram_GetRuleFeatLists(a1, v15, v13, v11);
  v7 = v15[0];
  if (SLOWORD(v15[0]) >= 1)
  {
    memcpy(a2 + 1, v15 + 2, 2 * LOWORD(v15[0]));
  }

  *a2 = v7;
  v8 = v13[0];
  if (SLOWORD(v13[0]) >= 1)
  {
    memcpy(a3 + 1, v13 + 2, 2 * LOWORD(v13[0]));
  }

  *a3 = v8;
  v9 = v11[0];
  if (SLOWORD(v11[0]) >= 1)
  {
    memcpy(a4 + 1, v11 + 2, 2 * LOWORD(v11[0]));
  }

  *a4 = v9;
  return 0;
}

uint64_t mosyntkbsgram_GetRuleVisAndCost(_DWORD *a1, _BYTE *a2, _DWORD *a3)
{
  v5 = 0;
  sgram_GetRuleVisAndCost(a1, &v5, a3);
  *a2 = v5;
  return 0;
}

uint64_t sgram_CloseRiff(void **a1, unsigned int a2)
{
  if (a1)
  {
    LODWORD(result) = ssftriff_reader_ObjClose(*a1);
    if ((a2 & 0x80000000) == 0)
    {
      result = result;
    }

    else
    {
      result = a2;
    }

    *a1 = 0;
  }

  else if ((a2 & 0x80000000) != 0)
  {
    return a2;
  }

  else
  {
    return 2371887111;
  }

  return result;
}

uint64_t sgram_ReadFromRiff(uint64_t a1, _DWORD *a2)
{
  v2 = -1923080188;
  if (!a2)
  {
    return 2371887111;
  }

  result = openChunk(a1, "GRAM");
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v10 = 0;
  v13 = 0;
  v11 = 0;
  *__s1 = 0;
  HashTab = ssftriff_reader_OpenChunk(a1, __s1, &v11, &v10);
  if (HashTab < 0)
  {
LABEL_18:
    v2 = HashTab;
    goto LABEL_21;
  }

  if (!cstdlib_strcmp(__s1, "GRDS") && v11 == 44)
  {
    v7 = v10;
    *a2 = *v10;
    a2[2] = v7[1];
    a2[8] = v7[2];
    a2[14] = v7[3];
    a2[20] = v7[4];
    a2[26] = v7[5];
    a2[32] = v7[6];
    a2[40] = v7[7];
    a2[34] = v7[8];
    a2[52] = v7[9];
    a2[46] = v7[10];
    HashTab = ssftriff_reader_CloseChunk(a1);
    if ((HashTab & 0x80000000) == 0)
    {
      HashTab = detachChunk(a1, "GRFL", a2 + 2, a2 + 3);
      if ((HashTab & 0x80000000) == 0)
      {
        HashTab = detachChunk(a1, "GRER", a2 + 5, a2 + 6);
        if ((HashTab & 0x80000000) == 0)
        {
          HashTab = openChunk(a1, "GRRU");
          if ((HashTab & 0x80000000) == 0)
          {
            v8 = detachChunk(a1, "GRHE", a2 + 8, a2 + 9);
            if ((v8 & 0x80000000) == 0)
            {
              v8 = detachChunk(a1, "GRHS", a2 + 11, a2 + 12);
              if ((v8 & 0x80000000) == 0)
              {
                v8 = detachChunk(a1, "GRHS", a2 + 14, a2 + 15);
              }
            }

            v2 = v8;
            v9 = ssftriff_reader_CloseChunk(a1);
            if (v2 >= 0)
            {
              v2 = v9;
            }

            if (v2 < 0)
            {
              goto LABEL_21;
            }

            HashTab = sgram_ReadHashTab(a1, "GRSE", (a2 + 34));
            if ((HashTab & 0x80000000) == 0)
            {
              HashTab = sgram_ReadHashTab(a1, "GRRE", (a2 + 46));
            }
          }
        }
      }
    }

    goto LABEL_18;
  }

  ssftriff_reader_CloseChunk(a1);
LABEL_21:
  LODWORD(result) = ssftriff_reader_CloseChunk(a1);
  if (v2 >= 0)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

uint64_t sgram_ReleaseData(uint64_t a1)
{
  if (!a1)
  {
    return 2371887111;
  }

  v2 = ssftriff_reader_ReleaseChunkData(*(a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = ssftriff_reader_ReleaseChunkData(v3);
    if (v2 >= 0)
    {
      v2 = v4;
    }
  }

  v5 = ssftriff_reader_ReleaseChunkData(*(a1 + 64));
  if (v2 >= 0)
  {
    v2 = v5;
  }

  v6 = ssftriff_reader_ReleaseChunkData(*(a1 + 88));
  if (v2 >= 0)
  {
    v2 = v6;
  }

  v7 = ssftriff_reader_ReleaseChunkData(*(a1 + 112));
  if (v2 >= 0)
  {
    v2 = v7;
  }

  v8 = sgram_ReleaseHashTab(a1 + 136);
  if (v2 >= 0)
  {
    v2 = v8;
  }

  LODWORD(result) = sgram_ReleaseHashTab(a1 + 184);
  if (v2 >= 0)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

uint64_t sgram_ReleaseHashTab(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = ssftriff_reader_ReleaseChunkData(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if (v3 >= 0)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

uint64_t openChunk(uint64_t a1, const char *a2)
{
  v9 = 0;
  v7 = 0;
  *__s1 = 0;
  v6 = 0;
  v4 = ssftriff_reader_OpenChunk(a1, __s1, &v7, &v6);
  if ((v4 & 0x80000000) == 0 && cstdlib_strcmp(__s1, a2))
  {
    ssftriff_reader_CloseChunk(a1);
    return 2371887108;
  }

  return v4;
}

uint64_t detachChunk(uint64_t a1, const char *a2, void **a3, void *a4)
{
  v13 = 0;
  v11 = 0;
  *__s1 = 0;
  v8 = ssftriff_reader_OpenChunk(a1, __s1, &v11, a4);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!cstdlib_strcmp(__s1, a2))
  {
    if (!v11)
    {
      return ssftriff_reader_CloseChunk(a1);
    }

    v9 = ssftriff_reader_DetachChunkData(a1, a3, a4);
    v8 = ssftriff_reader_CloseChunk(a1);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    return v8;
  }

  ssftriff_reader_CloseChunk(a1);
  return 2371887108;
}

uint64_t sgram_ReadHashTab(uint64_t a1, const char *a2, uint64_t a3)
{
  result = openChunk(a1, a2);
  if ((result & 0x80000000) == 0)
  {
    v6 = detachChunk(a1, "GRHE", (a3 + 8), (a3 + 16));
    if ((v6 & 0x80000000) == 0)
    {
      v6 = detachChunk(a1, "GRHS", (a3 + 32), (a3 + 40));
    }

    v7 = v6;
    LODWORD(result) = ssftriff_reader_CloseChunk(a1);
    if (v7 >= 0)
    {
      return result;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t wgram_CloseRiff(void **a1, unsigned int a2)
{
  if (a1)
  {
    LODWORD(result) = ssftriff_reader_ObjClose(*a1);
    if ((a2 & 0x80000000) != 0)
    {
      result = a2;
    }

    else
    {
      result = result;
    }

    *a1 = 0;
  }

  else if ((a2 & 0x80000000) != 0)
  {
    return a2;
  }

  else
  {
    return 7;
  }

  return result;
}

uint64_t wgram_ReadFromRiff(_WORD *a1, int a2, uint64_t a3, uint64_t *a4)
{
  v14 = 0;
  inited = InitRsrcFunction(a1, a2, &v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = heap_Calloc(*(v14 + 8), 1, 344);
  *a4 = v7;
  if (!v7)
  {
    return 2371887114;
  }

  v8 = v7;
  v17 = 0;
  v15 = 0;
  *__s1 = 0;
  v9 = ssftriff_reader_OpenChunk(a3, __s1, &v15, 0);
  if ((v9 & 0x80000000) == 0)
  {
    if (!cstdlib_strcmp(__s1, "NFAG"))
    {
      v21 = 0;
      v19 = 0;
      *v20 = 0;
      v18 = 0;
      HashTab = ssftriff_reader_OpenChunk(a3, v20, &v19, &v18);
      if ((HashTab & 0x80000000) == 0)
      {
        if (!cstdlib_strcmp(v20, "NFAS"))
        {
          v11 = v18;
          *(v8 + 256) = *v18;
          *(v8 + 260) = v11[1];
        }

        HashTab = ssftriff_reader_CloseChunk(a3);
        if ((HashTab & 0x80000000) == 0)
        {
          HashTab = wgram_ReadHashTab(a3, v8 + 264);
          if ((HashTab & 0x80000000) == 0)
          {
            HashTab = wgram_ReadHashTab(a3, v8 + 304);
          }
        }
      }

      LODWORD(v9) = HashTab;
    }

    v12 = ssftriff_reader_CloseChunk(a3);
    if (v9 >= 0)
    {
      return v12;
    }

    else
    {
      return v9;
    }
  }

  return v9;
}

uint64_t wgram_ReleaseData(void **a1)
{
  if (!a1)
  {
    return 2371887111;
  }

  v2 = ssftriff_reader_ReleaseChunkData(a1[36]);
  v3 = ssftriff_reader_ReleaseChunkData(a1[37]);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = ssftriff_reader_ReleaseChunkData(a1[41]);
  v6 = ssftriff_reader_ReleaseChunkData(a1[42]);
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v4 >= 0)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

uint64_t wgram_ReadHashTab(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v12 = 0;
  *__s1 = 0;
  v11 = 0;
  v4 = ssftriff_reader_OpenChunk(a1, __s1, &v12, &v11);
  if ((v4 & 0x80000000) == 0)
  {
    if (!cstdlib_strcmp(__s1, "THTB"))
    {
      v18 = 0;
      v16 = 0;
      *v17 = 0;
      v15 = 0;
      v5 = ssftriff_reader_OpenChunk(a1, v17, &v16, &v15);
      if (v5 < 0)
      {
        goto LABEL_18;
      }

      if (!cstdlib_strcmp(v17, "THTD"))
      {
        v6 = v15;
        *a2 = *v15;
        *(a2 + 4) = v6[1];
      }

      v5 = ssftriff_reader_CloseChunk(a1);
      if (v5 < 0)
      {
LABEL_18:
        LODWORD(v4) = v5;
      }

      else
      {
        v18 = 0;
        v16 = 0;
        *v17 = 0;
        v15 = 0;
        LODWORD(v4) = ssftriff_reader_OpenChunk(a1, v17, &v16, &v15);
        if ((v4 & 0x80000000) == 0)
        {
          if (!cstdlib_strcmp(v17, "THTS"))
          {
            LODWORD(v4) = ssftriff_reader_DetachChunkData(a1, (a2 + 24), (a2 + 8));
          }

          v7 = ssftriff_reader_CloseChunk(a1);
          if (v4 >= 0)
          {
            LODWORD(v4) = v7;
          }

          if ((v4 & 0x80000000) == 0)
          {
            v18 = 0;
            v16 = 0;
            *v17 = 0;
            v15 = 0;
            LODWORD(v4) = ssftriff_reader_OpenChunk(a1, v17, &v16, &v15);
            if ((v4 & 0x80000000) == 0)
            {
              if (!cstdlib_strcmp(v17, "THTE"))
              {
                LODWORD(v4) = ssftriff_reader_DetachChunkData(a1, (a2 + 32), (a2 + 16));
              }

              v8 = ssftriff_reader_CloseChunk(a1);
              if (v4 >= 0)
              {
                LODWORD(v4) = v8;
              }
            }
          }
        }
      }
    }

    v9 = ssftriff_reader_CloseChunk(a1);
    if (v4 >= 0)
    {
      return v9;
    }

    else
    {
      return v4;
    }
  }

  return v4;
}

uint64_t kbaux_BuildBrokerString(uint64_t a1, const char *a2, _BYTE *a3, size_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v9);
  if ((result & 0x80000000) == 0)
  {
    auxil_strlcpy(v10, "mosynt_", 0x80uLL);
    auxil_strlcat(v10, a2, 128);
    auxil_strlcat(v10, "_", 128);
    if (auxil_strlcat(v10, v9, 128) > 0x7F)
    {
      return 2371887113;
    }

    else
    {
      LODWORD(result) = brokeraux_ComposeBrokerString(a1, v10, 0, 1, v9, 0, 0, a3, a4);
      if (result >= 0)
      {
        return result;
      }

      else
      {
        return result | 0x8D602000;
      }
    }
  }

  return result;
}

uint64_t hlp_VoiceSetup(uint64_t a1)
{
  __c_3 = 0;
  __c = 0;
  v12 = 0;
  v11 = 0;
  result = com_mosynt_UseMosynt(*(a1 + 40), *(a1 + 48), *(a1 + 56), (a1 + 88));
  if ((result & 0x80000000) == 0)
  {
    __c_1 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    *(a1 + 244) = 0;
    if (((*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "keep_stress", &v18, &v17, &v16) & 0x80000000) == 0 && v17 == 1 && v18)
    {
      v3 = cstdlib_strchr(*v18, v16);
      if (v3)
      {
        *v3 = 0;
      }

      if (!cstdlib_strcmp(*v18, "YES") || !cstdlib_strcmp(*v18, "yes"))
      {
        *(a1 + 244) = 1;
      }
    }

    *(a1 + 368) = 0;
    __c_1 = 0;
    result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "orthtrigger", &__c_3, &__c_1, &__c);
    if ((result & 0x80000000) == 0)
    {
      if (__c_1 == 1 && __c_3)
      {
        v4 = cstdlib_strchr(*__c_3, __c);
        if (v4)
        {
          *v4 = 0;
        }

        cstdlib_strcpy((a1 + 368), *__c_3);
      }

      *(a1 + 264) = 0;
      __c_1 = 0;
      if ((paramc_ParamGetUInt(*(*a1 + 40), "prmigexists", &v12) & 0x80000000) == 0 && v12 == 1)
      {
        *(a1 + 264) = 1;
      }

      *(a1 + 248) = 0;
      __c_1 = 0;
      result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "usetntag", &__c_3, &__c_1, &__c);
      if ((result & 0x80000000) == 0)
      {
        if (__c_1 == 1 && __c_3 && **__c_3 == 49)
        {
          *(a1 + 248) = 1;
        }

        *(a1 + 252) = 0;
        __c_1 = 0;
        result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "docclassmap", &__c_3, &__c_1, &__c);
        if ((result & 0x80000000) == 0)
        {
          if (__c_1 == 1 && __c_3 && !cstdlib_strncmp(*__c_3, "yes", 3uLL))
          {
            *(a1 + 252) = 1;
          }

          *(a1 + 256) = 0;
          __c_1 = 0;
          result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "feGlobaluseFullPOS", &__c_3, &__c_1, &__c);
          if ((result & 0x80000000) == 0)
          {
            if (__c_1 == 1 && __c_3 && !cstdlib_strncmp(*__c_3, "1", 1uLL))
            {
              *(a1 + 256) = 1;
            }

            *(a1 + 260) = 0;
            if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v11) & 0x80000000) == 0 && v11 && *v11)
            {
              *(a1 + 260) = 1;
            }

            if ((*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), "global") == 2)
            {
              *(a1 + 260) = 1;
            }

            if (*(a1 + 88) != 1 || (v18 = 0, result = com_mosynt_GetCfgParamVal(*(a1 + 40), *(a1 + 48), *(a1 + 56), "mosynt_enablegraphsymcache", "yes", &v18), (result & 0x80000000) == 0) && (v5 = cstdlib_strcmp(v18, "yes") == 0, result = kbsymtab_LoadData(*(a1 + 304), *(a1 + 312), *(a1 + 328), *(a1 + 336), (a1 + 344), v5), (result & 0x80000000) == 0) && (result = fst_LoadData(*(a1 + 304), *(a1 + 312), (a1 + 352)), (result & 0x80000000) == 0))
            {
              result = com_depes_InitLayers(*a1, a1 + 96);
              if ((result & 0x80000000) == 0)
              {
                *(a1 + 224) = 0x3000200010000;
                *(a1 + 232) = 4;
                if (*(a1 + 88) || *(a1 + 264))
                {
                  v6 = 8;
                  v7 = 7;
                  v8 = 6;
                  v9 = 5;
                }

                else
                {
                  v9 = 0;
                  v6 = 7;
                  v7 = 6;
                  v8 = 5;
                }

                *(a1 + 234) = v9;
                *(a1 + 238) = v8;
                *(a1 + 240) = v7;
                v10 = v6 - (*(a1 + 248) == 0);
                *(a1 + 236) = v10;
                *(a1 + 106) = v10 + 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_global_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v5 = 2316312583;
  v21 = 0;
  v22 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v24);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(*(v24 + 8), 1, 416);
      v13 = v24;
      if (v12)
      {
        v14 = v12;
        v15 = heap_Calloc(*(v24 + 8), 1, 1040);
        *(v14 + 320) = v15;
        if (v15)
        {
          *v15 = a3;
          v15[1] = a4;
          Object = objc_GetObject(*(v24 + 48), "LINGDB", &v23);
          if ((Object & 0x80000000) != 0 || (*(v14 + 8) = *(v23 + 8), Object = objc_GetObject(*(v24 + 48), "FE_DEPES", &v22), (Object & 0x80000000) != 0) || (v17 = v22, *(v14 + 32) = *(v22 + 8), *(v14 + 16) = *(v17 + 16), Object = objc_GetObject(*(v24 + 48), "FE_DCTLKP", &v21), (Object & 0x80000000) != 0) || (v18 = v21, *(v14 + 56) = *(v21 + 8), *(v14 + 40) = *(v18 + 16), *v14 = v24, *(v14 + 268) = 0, *(v14 + 304) = a3, *(v14 + 312) = a4, *(v14 + 328) = a1, *(v14 + 336) = a2, *(v14 + 408) = 0, *(v14 + 376) = 0u, *(v14 + 392) = 0u, Object = hlp_VoiceSetup(v14), (Object & 0x80000000) != 0) || (Object = globalbeadapt_SetFEBOOLKeyword(v14, "mdesegpos_morpheme_processing", (v14 + 272), 0), (Object & 0x80000000) != 0) || (Object = globalbeadapt_SetFEBOOLKeyword(v14, "feGlobalmergemorphemes", (v14 + 276), 1), (Object & 0x80000000) != 0) || (Object = globalbeadapt_SetFEBOOLKeyword(v14, "feGlobalmergemorphemes", (v14 + 280), 1), (Object & 0x80000000) != 0))
          {
            v5 = Object;
          }

          else
          {
            v5 = globalbeadapt_Init_LOO(v14);
            if ((v5 & 0x80000000) == 0)
            {
              v19 = 62344;
LABEL_19:
              *a5 = v14;
              *(a5 + 8) = v19;
              return v5;
            }
          }

LABEL_18:
          fe_global_ObjClose(*a5, *(a5 + 8));
          v14 = 0;
          v19 = 0;
          goto LABEL_19;
        }

        v13 = v24;
      }

      log_OutPublic(*(v13 + 32), "FE_GLOBAL", 38000, 0, v21);
      v5 = 2316312586;
      goto LABEL_18;
    }

    return inited;
  }

  return v5;
}

uint64_t fe_global_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62344, 416);
  if ((result & 0x80000000) != 0)
  {
    return 2316312584;
  }

  if (a1)
  {
    hlp_UnloadSymTabs(a1);
    if (*(a1 + 352))
    {
      fst_UnloadData(*(a1 + 304), *(a1 + 312), (a1 + 352));
      *(a1 + 352) = 0;
    }

    globalbeadapt_DeInit_LOO(a1);
    if (*(a1 + 8))
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v4 = *(a1 + 320);
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_global_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62344, 416);
  if ((result & 0x80000000) != 0)
  {
    return 2316312584;
  }

  if (a1)
  {
    result = hlp_UnloadSymTabs(a1);
    if ((result & 0x80000000) == 0)
    {
      if (!*(a1 + 352) || (result = fst_UnloadData(*(a1 + 304), *(a1 + 312), (a1 + 352)), *(a1 + 352) = 0, (result & 0x80000000) == 0))
      {
        result = hlp_VoiceSetup(a1);
        if ((result & 0x80000000) == 0)
        {
          result = globalbeadapt_SetFEBOOLKeyword(a1, "mdesegpos_morpheme_processing", (a1 + 272), 0);
          if ((result & 0x80000000) == 0)
          {
            result = globalbeadapt_SetFEBOOLKeyword(a1, "feGlobalmergemorphemes", (a1 + 276), 1);
            if ((result & 0x80000000) == 0)
            {
              result = globalbeadapt_SetFEBOOLKeyword(a1, "feGlobalmergemorphemes", (a1 + 280), 1);
              if ((result & 0x80000000) == 0)
              {
                globalbeadapt_DeInit_LOO(a1);

                return globalbeadapt_Init_LOO(a1);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_UnloadSymTabs(uint64_t a1)
{
  if (!*(a1 + 344))
  {
    return 0;
  }

  result = kbsymtab_UnloadData(*(a1 + 304), *(a1 + 312), *(a1 + 328), *(a1 + 336), (a1 + 344));
  *(a1 + 344) = 0;
  return result;
}

uint64_t fe_global_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62344, 416);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2316312584;
  }
}

uint64_t fe_global_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v85[16] = *MEMORY[0x277D85DE8];
  v69 = 0;
  __s1 = 0;
  v67 = 0;
  if ((safeh_HandleCheck(a1, a2, 62344, 416) & 0x80000000) != 0)
  {
    return 2316312584;
  }

  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  *a5 = 1;
  v9 = (*(a1[4] + 144))(a1[2], a1[3], a1 + 13);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_172;
  }

  *(a1 + 90) = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "foreignpron", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
  {
    *(a1 + 90) = 1;
  }

  *(a1 + 91) = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "nlucompatvc6be", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
  {
    *(a1 + 91) = 1;
  }

  v10 = (*(a1[1] + 104))(a3, a4, 1, 0, &v72 + 2);
  if ((v10 & 0x80000000) == 0 && ((*(a1[1] + 184))(a3, a4, HIWORD(v72), 0, &v69) & 0x80000000) == 0 && v69 == 1)
  {
    v10 = (*(a1[1] + 176))(a3, a4, HIWORD(v72), 0, &v73, &v72);
    if ((v10 & 0x80000000) == 0 && v72 >= 2u)
    {
      if (*(a1 + 22))
      {
        v11 = heap_Calloc(*(*a1 + 8), 5000, 1);
        a1[47] = v11;
        v12 = *a1;
        if (v11)
        {
          v13 = heap_Calloc(*(v12 + 8), 5000, 1);
          a1[48] = v13;
          v12 = *a1;
          if (v13)
          {
            v14 = heap_Calloc(*(v12 + 8), 5000, 1);
            a1[49] = v14;
            v12 = *a1;
            if (v14)
            {
              v15 = heap_Calloc(*(v12 + 8), 5000, 1);
              a1[50] = v15;
              v12 = *a1;
              if (v15)
              {
                v16 = heap_Calloc(*(v12 + 8), 8, 8);
                a1[51] = v16;
                if (v16)
                {
                  for (i = 0; i != 64; i += 8)
                  {
                    *(a1[51] + i) = 0;
                  }

                  v18 = 0;
                  while (1)
                  {
                    *(a1[51] + v18) = heap_Calloc(*(*a1 + 8), 5000, 1);
                    if (!*(a1[51] + v18))
                    {
                      break;
                    }

                    v18 += 8;
                    if (v18 == 64)
                    {
                      goto LABEL_27;
                    }
                  }
                }

                v12 = *a1;
              }
            }
          }
        }

        log_OutPublic(*(v12 + 32), "FE_GLOBAL", 38000, 0);
        v10 = 2316312586;
        goto LABEL_173;
      }

LABEL_27:
      v83 = 0;
      v84 = 0;
      v82 = 0;
      v80 = 0;
      v85[0] = 0;
      v77 = 0;
      v78 = 0;
      __s = 0;
      v75 = 0;
      v9 = (*(a1[1] + 104))(a3, a4, 2, HIWORD(v72), &v84 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      LOWORD(v82) = 0;
      v81 = 0;
      v19 = HIWORD(v84);
      if (!HIWORD(v84))
      {
        goto LABEL_130;
      }

      v20 = 0;
LABEL_30:
      v9 = (*(a1[1] + 168))(a3, a4, v19, 0, 1, &v80, &v83 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      if (v80 - 9 >= 6 && v80 != 4)
      {
        if (v80 != 15)
        {
          goto LABEL_89;
        }

        v20 = HIWORD(v84);
        v9 = (*(a1[1] + 120))(a3, a4, HIWORD(v84), &v84 + 2);
        goto LABEL_41;
      }

      v74 = 0;
      v9 = (*(a1[1] + 168))(a3, a4, HIWORD(v84), 1, 1, &v82, &v83 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      v9 = (*(a1[1] + 168))(a3, a4, HIWORD(v84), 2, 1, &v81, &v83 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      v22 = (*(a1[1] + 184))(a3, a4, HIWORD(v84), 14, &v74);
      v23 = a1[1];
      if (v22 < 0 || !v74)
      {
        v9 = (*(v23 + 120))(a3, a4, HIWORD(v84), &v84 + 2);
        goto LABEL_41;
      }

      v9 = (*(v23 + 176))(a3, a4, HIWORD(v84), 14, &__s, &v83 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      if (*(a1 + 91) != 1)
      {
        goto LABEL_79;
      }

      v66 = v20;
      v24 = __s;
      v25 = cstdlib_strlen(__s);
      v26 = v25;
      for (j = v24; ; ++j)
      {
        if (*j == 59)
        {
          *j = 0;
        }

        else if (!*j)
        {
          v28 = &v24[v25];
          v29 = v24;
          if (!v25)
          {
            goto LABEL_78;
          }

          while (2)
          {
            if (cstdlib_strncmp(v29, "PHR:", 4uLL))
            {
              if (!cstdlib_strncmp(v29, "POS:", 4uLL))
              {
                v30 = v29 + 4;
                goto LABEL_63;
              }
            }

            else
            {
              v30 = v29 + 4;
              v31 = cstdlib_strlen(v29 + 4);
              if (v31 >= 3)
              {
                v32 = *v30 - 66;
                v33 = v32 > 0xD;
                v34 = (1 << v32) & 0x2081;
                v35 = v33 || v34 == 0;
                if (!v35 && v29[5] == 45)
                {
                  v36 = v31 - 2;
                  cstdlib_memmove(v29 + 4, v29 + 6, v31 - 2);
                  *&v30[v36] = 0;
                }
              }

LABEL_63:
              v37 = cstdlib_strchr(v30, 43);
              if (v37 && *v37)
              {
                v38 = (v37 + 1);
                do
                {
                  *(v38 - 1) = 0;
                }

                while (*v38++);
              }
            }

            if (++v29 != v28)
            {
              continue;
            }

            break;
          }

          v40 = 0;
          v41 = v24;
          do
          {
            v42 = *v41;
            if (*v41)
            {
              if (v40 == 1)
              {
                *v24++ = 59;
                v42 = *v41;
              }

              v40 = 0;
              *v24++ = v42;
            }

            else
            {
              v40 = 1;
            }

            ++v41;
            --v26;
          }

          while (v26);
LABEL_78:
          *v24 = 0;
          v20 = v66;
LABEL_79:
          hlp_NLUStrFind(__s, "BND", &v77, &v75);
          hlp_NLUStrFind(__s, "PRM", &v78, &v75 + 1);
          if (v81 && v20)
          {
            v79[0] = 0;
            if (!v78 || (v79[0] = *v78) == 0 || (v79[1] = 0, v43 = *(a1[1] + 160), v44 = HIWORD(v84), v45 = cstdlib_strlen(v79), v9 = v43(a3, a4, v44, 13, (v45 + 1), v79, &v83), (v9 & 0x80000000) == 0))
            {
              if (!v77)
              {
                goto LABEL_92;
              }

              v46 = *v77;
              if (v46 != 78 && v46 != 87)
              {
                if (v46 == 83)
                {
                  HIWORD(v82) = 200;
                  goto LABEL_91;
                }

                goto LABEL_92;
              }

              HIWORD(v82) = 0;
LABEL_91:
              v9 = (*(a1[1] + 160))(a3, a4, HIWORD(v84), 8, 1, &v82 + 2, &v83);
              if ((v9 & 0x80000000) == 0)
              {
LABEL_92:
                v47 = HIWORD(v84);
                while (1)
                {
                  v9 = (*(a1[1] + 120))(a3, a4, v47, &v84 + 2);
                  if ((v9 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (!HIWORD(v84))
                  {
                    goto LABEL_42;
                  }

                  v9 = (*(a1[1] + 168))(a3, a4);
                  if ((v9 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v47 = HIWORD(v84);
                  if (!HIWORD(v84))
                  {
                    goto LABEL_42;
                  }

                  if (v80 <= 0xF && ((1 << v80) & 0xFE10) != 0)
                  {
                    v9 = (*(a1[1] + 168))(a3, a4);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }

                    if (!v77)
                    {
                      goto LABEL_42;
                    }

                    v48 = *v77;
                    if (v48 == 78)
                    {
                      if (v80 != 15)
                      {
                        goto LABEL_42;
                      }

                      v9 = (*(a1[1] + 168))(a3, a4, HIWORD(v84), 2, 1, &v81, &v83 + 2);
                      if ((v9 & 0x80000000) == 0)
                      {
                        v9 = (*(a1[1] + 160))(a3, a4, v20, 2, 1, &v81, &v83);
                        if ((v9 & 0x80000000) == 0)
                        {
                          v9 = (*(a1[1] + 176))(a3, a4, HIWORD(v84), 4, v85, &v83 + 2);
                          if ((v9 & 0x80000000) == 0)
                          {
                            v49 = *(a1[1] + 160);
                            v50 = cstdlib_strlen(v85[0]);
                            v9 = v49(a3, a4, v20, 4, (v50 + 1), v85[0], &v83);
                            if ((v9 & 0x80000000) == 0)
                            {
                              v9 = (*(a1[1] + 120))(a3, a4, HIWORD(v84), &v84);
                              if ((v9 & 0x80000000) == 0)
                              {
                                v9 = (*(a1[1] + 192))(a3, a4, HIWORD(v84));
                                if ((v9 & 0x80000000) == 0)
                                {
                                  HIWORD(v84) = v84;
                                  goto LABEL_42;
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_172;
                    }

                    if (v80 != 15)
                    {
                      v9 = (*(a1[1] + 88))(a3, a4, HIWORD(v84), &v84 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v80 = 15;
                      v9 = (*(a1[1] + 160))(a3, a4, HIWORD(v84), 0, 1, &v80, &v83);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(a1[1] + 160))(a3, a4, HIWORD(v84), 1, 1, &v82, &v83);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(a1[1] + 168))(a3, a4, v20, 2, 1, &v81, &v83 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(a1[1] + 160))(a3, a4, HIWORD(v84), 2, 1, &v81, &v83);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(a1[1] + 160))(a3, a4, v20, 2, 1, &v82, &v83);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(a1[1] + 176))(a3, a4, v20, 4, v85, &v83 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v51 = *(a1[1] + 160);
                      v52 = HIWORD(v84);
                      v53 = cstdlib_strlen(v85[0]);
                      v9 = v51(a3, a4, v52, 4, (v53 + 1), v85[0], &v83);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(a1[1] + 160))(a3, a4, v20, 4, 2, "P", &v83);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v48 = *v77;
                    }

                    if (v48 == 87)
                    {
                      HIWORD(v82) = 2;
                      v9 = (*(a1[1] + 160))(a3, a4, HIWORD(v84), 7, 1, &v82 + 2, &v83);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      HIWORD(v82) = 0;
                    }

                    else
                    {
                      if (v48 != 83)
                      {
                        goto LABEL_42;
                      }

                      HIWORD(v82) = 1;
                      v9 = (*(a1[1] + 160))(a3, a4, HIWORD(v84), 7, 1, &v82 + 2, &v83);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      HIWORD(v82) = 200;
                    }

                    v9 = (*(a1[1] + 160))(a3, a4, HIWORD(v84), 8, 1, &v82 + 2, &v83);
                    if ((v9 & 0x80000000) == 0)
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_172;
                  }
                }
              }
            }

            goto LABEL_172;
          }

LABEL_89:
          v9 = (*(a1[1] + 120))(a3, a4, HIWORD(v84), &v84 + 2);
LABEL_41:
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_172;
          }

LABEL_42:
          v19 = HIWORD(v84);
          if (!HIWORD(v84))
          {
LABEL_130:
            if (*(a1 + 61))
            {
              v54 = 2;
            }

            else if (*(a1 + 22))
            {
              v54 = 98;
            }

            else
            {
              v54 = 34;
            }

            v9 = (*(a1[1] + 272))(a3, a4, v54, 3, 0, 0);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            v9 = globalbeadapt_SetupDepesInput(a1, a3, a4, HIWORD(v72), "global", 0);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            if (*(a1 + 22))
            {
              v9 = hlp_SaveLayers(a1);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }
            }

            cstdlib_strcpy(v85, "global");
            v55 = cstdlib_strlen(v85);
            if (*(a1 + 90))
            {
              v56 = v55;
              cstdlib_strcat(v85, "foreign");
              if (((*(a1[4] + 80))(a1[2], a1[3], v85) & 0x80000000) != 0)
              {
                *(v85 + v56) = 0;
                v9 = (*(a1[4] + 80))(a1[2], a1[3], v85);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_172;
                }
              }
            }

            else
            {
              hlp_WriteDepesLayers(a1, "before cgn");
              v9 = (*(a1[4] + 80))(a1[2], a1[3], v85);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              hlp_WriteDepesLayers(a1, "after cgn");
            }

            if (!*(a1 + 22))
            {
              goto LABEL_155;
            }

            v9 = hlp_ReconstituteLayers(a1);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            hlp_WriteDepesLayers(a1, "after realignment");
            v9 = fe_global_ApplyFSTs(a1);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            v9 = hlp_ReconstituteLayers(a1);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            hlp_WriteDepesLayers(a1, "before be_adapt");
            cstdlib_strcpy(v85, "be_adapt");
            if (!(*(a1[4] + 72))(a1[2], a1[3], v85) || (v57 = (*(a1[4] + 80))(a1[2], a1[3], v85), (v57 & 0x80000000) == 0) || (v10 = v57, (v57 & 0x1FFF) == 4))
            {
              hlp_WriteDepesLayers(a1, "after be_adapt");
LABEL_155:
              v9 = (*(a1[4] + 128))(a1[2], a1[3], 0, &v71, &v70);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              v71[v70] = 0;
              log_OutText(*(*a1 + 32), "FE_GLOBAL", 5, 0, "%s O1: %s", v85, v71);
              v9 = globalbeadapt_DoPostprocessing(a1, v73, &v71, 1);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              v9 = (*(a1[1] + 320))(a3, a4, 1);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              v58 = *(a1 + 68);
              if (!v58 || v58 == 1 && !*(a1 + 69))
              {
                goto LABEL_191;
              }

              v9 = globalbeadapt_OutputMorphemesToLingDBAsWords(a1, a3, a4, HIWORD(v72), v73, a1[15], v71, &v67);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              if (v67 == 1)
              {
LABEL_191:
                v9 = globalbeadapt_OutputToLingDB(a1, a3, a4, HIWORD(v72), v73, v71);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_172;
                }
              }

              if (*(a1 + 68) == 1 && *(a1 + 69) == 1 && (!v67 && (v9 = globalbeadapt_SplitWordRecordsWithSpecialChar(a1, a3, a4, HIWORD(v72), v73, a1 + 368), (v9 & 0x80000000) != 0) || (v9 = globalbeadapt_RemoveSpecialChar(a1, a3, a4, HIWORD(v72)), (v9 & 0x80000000) != 0)))
              {
LABEL_172:
                v10 = v9;
              }

              else
              {
                v10 = (*(a1[1] + 272))(a3, a4, 4, 1, 0, 0);
                if ((v10 & 0x80000000) == 0 && *(a1 + 368))
                {
                  v9 = fe_global_CleanTriggerOrth(a1, a3, a4, HIWORD(v72));
                  goto LABEL_172;
                }
              }
            }

LABEL_173:
            com_depes_FreeLayers(*a1, (a1 + 12));
            if (*(a1 + 22))
            {
              v59 = a1[47];
              if (v59)
              {
                heap_Free(*(*a1 + 8), v59);
                a1[47] = 0;
              }

              v60 = a1[48];
              if (v60)
              {
                heap_Free(*(*a1 + 8), v60);
                a1[48] = 0;
              }

              v61 = a1[49];
              if (v61)
              {
                heap_Free(*(*a1 + 8), v61);
                a1[49] = 0;
              }

              v62 = a1[50];
              if (v62)
              {
                heap_Free(*(*a1 + 8), v62);
                a1[50] = 0;
              }

              if (a1[51])
              {
                for (k = 0; k != 64; k += 8)
                {
                  v64 = *(a1[51] + k);
                  if (v64)
                  {
                    heap_Free(*(*a1 + 8), v64);
                    *(a1[51] + k) = 0;
                  }
                }

                heap_Free(*(*a1 + 8), a1[51]);
                a1[51] = 0;
              }
            }

            return v10;
          }

          goto LABEL_30;
        }
      }
    }
  }

  return v10;
}

uint64_t hlp_SaveLayers(uint64_t a1)
{
  __src = 0;
  if (!*(a1 + 104))
  {
    return 0;
  }

  v2 = 0;
  v7 = 0;
  do
  {
    v3 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), v2, &__src, &v7);
    if ((v3 & 0x80000000) != 0)
    {
      break;
    }

    v4 = __src[v7];
    __src[v7] = 0;
    cstdlib_strncpy(*(*(a1 + 408) + 8 * v2), __src, 0x1387uLL);
    *(*(*(a1 + 408) + 8 * v2) + 4999) = 0;
    __src[v7] = v4;
    ++v2;
  }

  while (v2 < *(a1 + 104));
  return v3;
}

uint64_t hlp_WriteDepesLayers(uint64_t result, char *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (*(result + 88))
  {
    v3 = result;
    result = mosynt_TraceString(*(result + 320), "\n", 1u);
    if ((result & 0x80000000) == 0)
    {
      v13 = 0;
      v12 = 0;
      result = (*(*(v3 + 32) + 128))(*(v3 + 16), *(v3 + 24), 0, &v13, &v12);
      if ((result & 0x80000000) == 0)
      {
        result = Utf8_LengthInUtf8chars(v13, v12);
        v14[0] = 0;
        v14[1] = 0;
        v4 = result;
        if (result)
        {
          v5 = "\n";
          while (1)
          {
            v6 = v4 <= 0x32 ? result : 50;
            if (*(v3 + 104))
            {
              break;
            }

LABEL_24:
            result = mosynt_TraceString(*(v3 + 320), v5, 1u);
            if ((result & 0x80000000) == 0)
            {
              result = v4 - v6;
              v4 = (v4 - v6);
              if (v4)
              {
                continue;
              }
            }

            return result;
          }

          v7 = 0;
          while (1)
          {
            result = (*(*(v3 + 32) + 128))(*(v3 + 16), *(v3 + 24), v7, &v13, &v12);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceString(*(v3 + 320), a2, 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceString(*(v3 + 320), " L", 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceInt(*(v3 + 320), (v7 + 1), 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceString(*(v3 + 320), ": ", 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (v6)
            {
              v8 = v5;
              v9 = 0;
              v10 = *(v14 + v7);
              while (1)
              {
                result = utf8_getUTF8Char(v13, v10, __s);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                result = mosynt_TraceString(*(v3 + 320), __s, 1u);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                v10 += cstdlib_strlen(__s);
                if (++v9 >= v6)
                {
                  *(v14 + v7) = v10;
                  v5 = v8;
                  goto LABEL_22;
                }
              }

              *(v14 + v7) = v10;
              return result;
            }

LABEL_22:
            result = mosynt_TraceString(*(v3 + 320), v5, 1u);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (++v7 >= *(v3 + 104))
            {
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_ReconstituteLayers(uint64_t a1)
{
  v12 = 0;
  __src = 0;
  v2 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &__src, &v12);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = __src[v12];
    __src[v12] = 0;
    cstdlib_strncpy(**(a1 + 408), __src, 0x1387uLL);
    *(**(a1 + 408) + 4999) = 0;
    __src[v12] = v3;
    if (*(a1 + 104) >= 2u)
    {
      v4 = 1;
      while (1)
      {
        v5 = v4 == 1 ? 126 : 0;
        v6 = mosynt_AlignFieldsWithRef(**(a1 + 408), *(*(a1 + 408) + 8 * v4), *(a1 + 392), 0x1388u, v5);
        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        cstdlib_strcpy(*(*(a1 + 408) + 8 * v4), *(a1 + 392));
        v7 = *(*(a1 + 32) + 120);
        v8 = *(a1 + 392);
        v9 = cstdlib_strlen(v8);
        v2 = v7(*(a1 + 16), *(a1 + 24), v4, v8, v9);
        if ((v2 & 0x80000000) == 0 && ++v4 < *(a1 + 104))
        {
          continue;
        }

        return v2;
      }

      return v6;
    }
  }

  return v2;
}

uint64_t fe_global_ApplyFSTs(uint64_t a1)
{
  v23 = 0;
  v20 = 0;
  result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v23);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v3 = *v23;
  result = mosynt_NormalizeSpaceFields(**(a1 + 408), *(a1 + 392), 5000);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v4 = 0;
  LOWORD(v5) = 0;
  while (1)
  {
    v6 = *(a1 + 392);
    v7 = v6[v4];
    if (v7 == 32)
    {
      if (v5 >= v4)
      {
        LOBYTE(v7) = 32;
      }

      else
      {
        v5 = v5;
        do
        {
          *(*(a1 + 392) + v5++) = 126;
        }

        while (v4 != v5);
        v6 = *(a1 + 392);
        LOBYTE(v7) = v6[v4];
        LOWORD(v5) = v4;
      }

      goto LABEL_13;
    }

    if (v7 == 126)
    {
      goto LABEL_14;
    }

    if (!v6[v4])
    {
      break;
    }

LABEL_13:
    v6[v5] = v7;
    LOWORD(v5) = v5 + 1;
LABEL_14:
    ++v4;
  }

  if (v5 < v4)
  {
    v8 = v5;
    do
    {
      *(*(a1 + 392) + v8++) = 126;
    }

    while (v4 != v8);
    v6 = *(a1 + 392);
  }

  mosynt_SubstAllSubstrOcc(v6, "~", " ", *(a1 + 400), 5000);
  result = mosynt_SubstAllSubstrOcc(*(a1 + 400), "¡", "~", *(a1 + 392), 5000);
  if ((result & 0x80000000) == 0)
  {
    v21 = 0;
    v19 = 95;
    v9 = *(a1 + 392);
    if (*v9)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        utf8_getUTF8Char(v9, v11, __s);
        v12 = *(*(*(a1 + 408) + 32) + v10);
        if (v12 < 33 || v3 < 33 || v12 == v3)
        {
          v13 = __s;
        }

        else
        {
          v13 = &v19;
        }

        result = mosynt_App(*(a1 + 400), 5000, &v21, v13, &v20);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v11 += cstdlib_strlen(__s);
        ++v10;
        v9 = *(a1 + 392);
        if (!v9[v11])
        {
          v14 = v21;
          goto LABEL_31;
        }
      }
    }

    else
    {
      v14 = 0;
LABEL_31:
      *(*(a1 + 400) + v14) = 0;
      result = mosynt_SentPhono(*(a1 + 320), *(a1 + 344), *(a1 + 352), *(a1 + 400), *(*(a1 + 408) + 40), *(a1 + 376), 5000);
      if ((result & 0x80000000) == 0)
      {
        result = mosynt_SubstAllSubstrOcc(*(a1 + 376), "~", "¡", *(a1 + 400), 5000);
        if ((result & 0x80000000) == 0)
        {
          cstdlib_strcpy(*(a1 + 376), *(a1 + 400));
          v19 = 95;
          v18 = 123;
          result = mosynt_SubstAllSubstrOcc(*(a1 + 376), &v19, &v18, *(a1 + 392), 5000);
          if ((result & 0x80000000) == 0)
          {
            result = mosynt_ReplaceNonSpaceFields(**(a1 + 408), *(a1 + 392), *(a1 + 384), 0x1388u, 126, 1);
            if ((result & 0x80000000) == 0)
            {
              v15 = *(*(a1 + 32) + 120);
              v16 = *(a1 + 384);
              v17 = cstdlib_strlen(v16);
              return v15(*(a1 + 16), *(a1 + 24), 0, v16, v17);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_global_CleanTriggerOrth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  __s1 = 0;
  v26 = 0;
  v24 = 0;
  v8 = (*(*(a1 + 8) + 176))(a2, a3, a4, 0, &__s1, &v28);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(*(a1 + 8) + 176))(a2, a3, a4, 1, &v26, &v24);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = cstdlib_strstr(__s1, (a1 + 368));
    if (v10)
    {
      v11 = v10;
LABEL_5:
      v12 = cstdlib_strlen((a1 + 368));
      v13 = cstdlib_strlen(v11);
      v14 = cstdlib_strlen((a1 + 368));
      cstdlib_memmove(v11, &v11[v12], v13 - v14 + 1);
      v15 = v24;
      if (v24)
      {
        v16 = 0;
        v17 = v26;
        v18 = 12;
        do
        {
          if (*(v17 + v18) - *(v17 + 12) > (v11 - __s1))
          {
            v19 = cstdlib_strlen((a1 + 368));
            v17 = v26;
            *(v26 + v18) -= v19;
            v15 = v24;
          }

          ++v16;
          v18 += 32;
        }

        while (v16 < v15);
      }

      for (i = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v29 + 2); ; i = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v29), &v29 + 2))
      {
        v9 = i;
        if ((i & 0x80000000) != 0)
        {
          break;
        }

        if (!HIWORD(v29))
        {
          v11 = cstdlib_strstr(__s1, (a1 + 368));
          if (v11)
          {
            goto LABEL_5;
          }

          return v9;
        }

        v8 = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v29), 1, 1, &v29, &v28);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }

        if (v11 - __s1 < v29)
        {
          v21 = cstdlib_strlen((a1 + 368));
          LOWORD(v29) = v29 - v21;
          v8 = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v29), 1, 1, &v29, &v27);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }
        }

        v8 = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v29), 2, 1, &v28 + 2, &v28);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }

        if (v11 - __s1 < HIWORD(v28))
        {
          v22 = cstdlib_strlen((a1 + 368));
          HIWORD(v28) -= v22;
          v8 = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v29), 2, 1, &v28 + 2, &v27);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t fe_global_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62344, 416);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2316312584;
  }
}

uint64_t fe_global_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2316312577;
  }

  result = 0;
  *a2 = &IFeGlobal;
  return result;
}

uint64_t fe_global_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2316312583;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t get_ner_brokerstring(uint64_t a1, _BYTE *a2, size_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = 0;
  __s2 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__s1 = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "ner_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v7);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, a3);
    }
  }

  return result;
}

uint64_t updateNLUNE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v26 = 0;
  v25 = 0;
  __s = 0;
  v14 = (*(a4 + 184))(a2, a3, a5, 14, &v26 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (!HIWORD(v26))
  {
LABEL_5:
    v15 = "";
    __s = "";
    goto LABEL_8;
  }

  v14 = (*(a4 + 176))(a2, a3, a5, 14, &__s, &v26);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (v26 < 2u)
  {
    goto LABEL_5;
  }

  v15 = __s;
LABEL_8:
  v17 = cstdlib_strlen(v15);
  v18 = cstdlib_strlen(";NE:");
  v19 = heap_Calloc(*(a1 + 8), v17 + v18 + 3, 1);
  if (!v19)
  {
    return 2314215434;
  }

  v20 = v19;
  cstdlib_strcpy(v19, __s);
  hlp_NLUStrSet(v20, "NE", (*(a7 + 8) + 40 * a6 + 30));
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", a5, a6, __s, v20);
  v21 = *(a4 + 160);
  v22 = cstdlib_strlen(v20);
  v16 = v21(a2, a3, a5, 14, (v22 + 1), v20, &v25);
  heap_Free(*(a1 + 8), v20);
  return v16;
}

uint64_t ner_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v17 = (*(a5 + 104))(a3, a4, 1, 0, &v34 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = (*(a5 + 184))(a3, a4, HIWORD(v34), 0, &v34);
  if ((v18 & 0x80000000) == 0 && v34 == 1)
  {
    v18 = (*(a5 + 176))(a3, a4, HIWORD(v34), 0, &v30, &v33);
    if ((v18 & 0x80000000) == 0 && v33 >= 2u)
    {
      v19 = a9 || *(a2 + 36) != 1 ? ner_getSentenceData(a1, a3, a4, a5, HIWORD(v34), v30, a2, a6, a7, a8, &v32) : ner_getSentenceData(a1, a3, a4, a5, HIWORD(v34), v30, a2, *(a2 + 48), *(a2 + 72), *(a2 + 80), &v32);
      v18 = v19;
      if ((v19 & 0x80000000) == 0)
      {
        if (*(a2 + 16))
        {
          v18 = fi_predict(*a2, &v32, *(a2 + 18), &v31);
          if ((v18 & 0x80000000) != 0)
          {
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "FI NER Prediction Failed", 0);
            return v18;
          }

          if (*(a2 + 16))
          {
            v21 = 0;
            v22 = 0;
            v23 = v31;
            v24 = *(a2 + 8);
            v25 = 78;
            do
            {
              v26 = v24 + 40 * v21;
              if (!*(v26 + 24))
              {
                goto LABEL_26;
              }

              v27 = 0;
              v28 = (v23 + 8 * v22);
              while (!v27)
              {
                v25 = **v28;
                *(v26 + 30) = v25;
                *(*(a2 + 8) + 40 * v21 + 31) = 0;
                v24 = *(a2 + 8);
LABEL_25:
                ++v27;
                v26 = v24 + 40 * v21;
                if (v27 >= *(v26 + 24))
                {
                  goto LABEL_26;
                }
              }

              v29 = *v28[v27];
              if (v25 == v29 || v29 == 78 || v25 == 78)
              {
                goto LABEL_25;
              }

              v25 = 78;
              *(v26 + 30) = 78;
              *(*(a2 + 8) + 40 * v21 + 31) = 0;
              v24 = *(a2 + 8);
LABEL_26:
              v22 += *(v24 + 40 * v21++ + 24);
            }

            while (v21 < *(a2 + 16));
          }
        }
      }
    }
  }

  return v18;
}

uint64_t ner_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v18 = a1;
  v77 = 0;
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "ner: processing=%s", a6);
  *(a7 + 18) = 0;
  *(a7 + 8) = 0;
  if (!a6)
  {
    *(a7 + 16) = 0;
LABEL_11:
    *(a7 + 8) = 0;
    log_OutText(*(v18 + 32), "FE_HMOGRPH", 5, 0, "ner: no words found");
    return 0;
  }

  v19 = cstdlib_strlen(a6);
  v20 = 1;
  v21 = v19;
  if (v19)
  {
    v22 = a6;
    do
    {
      v24 = *v22++;
      v23 = v24;
      if (v24 == 95 || v23 == 32)
      {
        ++v20;
      }

      --v21;
    }

    while (v21);
    *(a7 + 16) = v20;
    if (!v20)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a7 + 16) = 1;
  }

  v25 = 2314215434;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v76 = 0;
  v26 = heap_Calloc(*(v18 + 8), v20, 40);
  *(a7 + 8) = v26;
  if (!v26)
  {
    goto LABEL_87;
  }

  v27 = (*(a4 + 104))(a2, a3, 2, a5, &v81);
  if ((v27 & 0x80000000) != 0)
  {
LABEL_67:
    v25 = v27;
    goto LABEL_87;
  }

  v28 = v81;
  if (!v81)
  {
LABEL_76:
    *(a7 + 16) = 0;
    heap_Free(*(v18 + 8), *(a7 + 8));
    *(a7 + 8) = 0;
    return v27;
  }

  v73 = a8;
  v29 = 0;
  v75 = 0;
  do
  {
    while (1)
    {
      v30 = (*(a4 + 168))(a2, a3, v28, 0, 1, &v80, &v79 + 2);
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      if (v80 > 0xA || ((1 << v80) & 0x610) == 0)
      {
        break;
      }

      v30 = (*(a4 + 168))(a2, a3, v81, 1, 1, &v79, &v79 + 2);
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      v30 = (*(a4 + 168))(a2, a3, v81, 2, 1, &v78, &v79 + 2);
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      v32 = v79;
      if (v79 >= v78)
      {
        log_OutText(*(v18 + 32), "FE_HMOGRPH", 5, 0, "ner: out of memory");
        v60 = 16049;
LABEL_86:
        v25 = v60 | 0x89F00000;
        goto LABEL_87;
      }

      ++v29;
      v33 = *(a7 + 8);
      v34 = v75;
      if (!v75 || (v35 = v33 + 40 * v75, v79 != *(v35 - 14)) || v78 != *(v35 - 12))
      {
        if (*(a7 + 16) <= v75)
        {
          *(a7 + 16) = v75 + 1;
          v36 = heap_Realloc(*(v18 + 8), v33, 40 * (v75 + 1));
          *(a7 + 8) = v36;
          if (!v36)
          {
            goto LABEL_87;
          }

          v33 = v36;
          v32 = v79;
          v34 = v75;
        }

        v37 = 5 * v34;
        v38 = v33 + 40 * v34;
        *(v38 + 26) = v32;
        v39 = v78;
        *(v38 + 28) = v78;
        v40 = v39 - v79;
        *v38 = 0;
        v41 = v40;
        v42 = heap_Alloc(*(v18 + 8), v40 + 1);
        *(*(a7 + 8) + 8 * v37) = v42;
        if (!v42)
        {
          goto LABEL_87;
        }

        cstdlib_strncpy(v42, &a6[v79], v41);
        *(*(*(a7 + 8) + 8 * v37) + v41) = 0;
        v43 = *(a7 + 8) + 8 * v37;
        v83 = 0;
        *__s = 0;
        *(v43 + 16) = 0;
        v44 = Utf8_Utf8NbrOfSymbols(*v43);
        if (v44 == 1)
        {
          v57 = 0;
        }

        else
        {
          v45 = 0;
          v46 = 0;
          v71 = v44 - 1;
          v72 = (v44 - 1);
          v74 = v18;
          while (1)
          {
            v47 = v46;
            UTF8Char = utf8_getUTF8Char(*v43, v46, __s);
            if ((UTF8Char & 0x80000000) != 0)
            {
              v25 = UTF8Char;
              v18 = v74;
              goto LABEL_87;
            }

            IsChineseLetter = utf8_IsChineseLetter(__s);
            if (cstdlib_strlen(__s) > 1 || (__s[0] - 33 <= 0x3E ? (v50 = ((1 << (__s[0] - 33)) & 0x7400000056003D8DLL) == 0) : (v50 = 1), v50 && __s[0] != 124))
            {
              if (!v45 && !IsChineseLetter)
              {
                break;
              }
            }

            if (!v45)
            {
              *(v43 + 32) = 0;
              v51 = heap_Calloc(*(v74 + 8), v72, 8);
              *(v43 + 16) = v51;
              if (!v51)
              {
                v18 = v74;
LABEL_85:
                v60 = 8202;
                goto LABEL_86;
              }
            }

            v52 = *(v74 + 8);
            v53 = cstdlib_strlen(__s);
            *(*(v43 + 16) + v45) = heap_Calloc(v52, v53 + 1, 1);
            v54 = *(*(v43 + 16) + v45);
            if (!v54)
            {
              v67 = 0;
              v18 = v74;
              do
              {
                v68 = *(v43 + 16);
                v69 = *(v68 + v67);
                if (v69)
                {
                  heap_Free(*(v74 + 8), v69);
                  v68 = *(v43 + 16);
                }

                *(v68 + v67) = 0;
                v67 += 8;
              }

              while (8 * v71 != v67);
              heap_Free(*(v74 + 8), *(v43 + 16));
              *(v43 + 16) = 0;
              goto LABEL_85;
            }

            cstdlib_strcpy(v54, __s);
            v46 = v47 + cstdlib_strlen(__s);
            v45 += 8;
            if (8 * v72 == v45)
            {
              v18 = v74;
              v55 = v75;
              v56 = v75;
              v57 = v71;
              goto LABEL_55;
            }
          }

          if ((__s[0] & 0xDFu) - 65 < 0x1A)
          {
            v59 = 1;
          }

          else
          {
            v59 = 3;
          }

          if (__s[0] - 48 < 0xA)
          {
            v59 = 2;
          }

          *(v43 + 32) = v59;
          v57 = 1;
          v18 = v74;
        }

        v55 = v75;
        v56 = v75;
LABEL_55:
        *(v43 + 24) = v57;
        v58 = *(a7 + 8);
        *(a7 + 18) += *(v58 + 40 * v55 + 24);
        if (*(a7 + 32))
        {
          (*(a4 + 176))(a2, a3, v81, 5, v58 + 40 * v55 + 8, &v79 + 2);
          v56 = v75;
        }

        v75 = v56 + 1;
        v25 = 2314215434;
        break;
      }

      v27 = (*(a4 + 120))(a2, a3, v81, &v81);
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_67;
      }

      v28 = v81;
      if (!v81)
      {
        goto LABEL_69;
      }
    }

    v27 = (*(a4 + 120))(a2, a3, v81, &v81);
    if ((v27 & 0x80000000) != 0)
    {
      goto LABEL_67;
    }

    v28 = v81;
  }

  while (v81);
LABEL_69:
  if (!v29)
  {
    goto LABEL_76;
  }

  v30 = (*(v73 + 40))(a9, a10, &v76);
  if ((v30 & 0x80000000) != 0)
  {
LABEL_77:
    v25 = v30;
    goto LABEL_87;
  }

  v61 = v76;
  if (*(a7 + 32))
  {
    v61 = v76 + *(a7 + 40);
  }

  v62 = heap_Calloc(*(v18 + 8), v61 * *(a7 + 18), 4);
  v77 = v62;
  if (v62)
  {
    v63 = v62;
    v64 = *(a7 + 8);
    v65 = *(a7 + 16);
    if (*(a7 + 32))
    {
      CharEmbeddingWithPOS = getCharEmbeddingWithPOS(v18, v73, a9, a10, &v77, v76, v64, v65, *(a7 + 40));
    }

    else
    {
      CharEmbeddingWithPOS = getCharEmbedding(v18, v73, a9, a10, &v77, v76, v64, v65);
    }

    v25 = CharEmbeddingWithPOS;
    if ((CharEmbeddingWithPOS & 0x80000000) != 0)
    {
      ner_freeNEData(v18, a7);
      heap_Free(*(v18 + 8), v63);
    }

    else
    {
      *a11 = v63;
    }

    return v25;
  }

LABEL_87:
  ner_freeNEData(v18, a7);
  return v25;
}

uint64_t ner_freeNEData(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      if (*(a2 + 16))
      {
        v5 = 0;
        do
        {
          if (*(v3 + 40 * v5))
          {
            heap_Free(*(a1 + 8), *(v3 + 40 * v5));
            v3 = *(a2 + 8);
            *(v3 + 40 * v5) = 0;
          }

          v6 = *(v3 + 40 * v5 + 16);
          if (v6)
          {
            if (*(v3 + 40 * v5 + 24))
            {
              v7 = 0;
              do
              {
                if (*(*(v3 + 40 * v5 + 16) + 8 * v7))
                {
                  heap_Free(*(a1 + 8), *(*(v3 + 40 * v5 + 16) + 8 * v7));
                  *(*(*(a2 + 8) + 40 * v5 + 16) + 8 * v7) = 0;
                  v3 = *(a2 + 8);
                }

                ++v7;
              }

              while (v7 < *(v3 + 40 * v5 + 24));
              v6 = *(v3 + 40 * v5 + 16);
            }

            *(v3 + 40 * v5 + 24) = 0;
            heap_Free(*(a1 + 8), v6);
            v3 = *(a2 + 8);
            *(v3 + 40 * v5 + 16) = 0;
          }

          ++v5;
        }

        while (v5 < *(a2 + 16));
      }

      heap_Free(*(a1 + 8), v3);
      *(a2 + 16) = 0;
      *(a2 + 8) = 0;
    }
  }

  return 0;
}

uint64_t getCharEmbeddingWithPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  if (a8)
  {
    v12 = 0;
    v13 = 0;
    v14 = *a5;
    v23 = a6;
    v24 = a8;
    v15 = 4 * a6;
    v16 = v15 + 4 * a9;
    while (1)
    {
      v17 = a7 + 40 * v12;
      if (*(v17 + 24))
      {
        if (*(v17 + 24) != 1)
        {
          v20 = 0;
          do
          {
            v13 = (*(a2 + 56))(a3, a4, *(*(v17 + 16) + 8 * v20), v14);
            if ((v13 & 0x1FFF) == 0x14)
            {
              log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", *(*(v17 + 16) + 8 * v20));
              v13 = (*(a2 + 56))(a3, a4, "</s>", v14);
            }

            v27 = v14 + v15;
            getPOSFeature(*(v17 + 8), &v27);
            v14 += v16;
            v27 = v14;
            ++v20;
          }

          while (v20 < *(v17 + 24));
          goto LABEL_21;
        }

        v18 = *(v17 + 32);
        switch(v18)
        {
          case 1:
            v19 = (*(a2 + 56))(a3, a4, "ENG", v14);
            break;
          case 2:
            v19 = (*(a2 + 56))(a3, a4, "NUM", v14);
            break;
          case 3:
            v19 = (*(a2 + 56))(a3, a4, "</s>", v14);
            break;
          default:
            v21 = 0;
            do
            {
              v13 = (*(a2 + 56))(a3, a4, *(*(v17 + 16) + 8 * v21), v14);
              if ((v13 & 0x1FFF) == 0x14)
              {
                v13 = (*(a2 + 56))(a3, a4, "</s>", v14);
              }

              v27 = v14 + v15;
              getPOSFeature(*(v17 + 8), &v27);
              v14 += v16;
              v27 = v14;
              ++v21;
            }

            while (v21 < *(v17 + 24));
            goto LABEL_21;
        }

        v13 = v19;
        v14 += 4 * v23;
        v27 = v14;
      }

LABEL_21:
      if (++v12 == v24)
      {
        return v13;
      }
    }
  }

  return 0;
}

uint64_t getCharEmbedding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  if (!a8)
  {
    return 0;
  }

  v12 = 0;
  result = 0;
  v14 = *a5;
  v15 = 4 * a6;
  v20 = a6;
  v21 = a8;
  do
  {
    v16 = a7 + 40 * v12;
    if (*(v16 + 24))
    {
      if (*(v16 + 24) == 1)
      {
        v17 = *(v16 + 32) - 1;
        if (v17 >= 3)
        {
          v19 = 0;
          do
          {
            result = (*(a2 + 56))(a3, a4, *(*(v16 + 16) + 8 * v19), v14);
            if ((result & 0x1FFF) == 0x14)
            {
              result = (*(a2 + 56))(a3, a4, "</s>", v14);
            }

            ++v19;
            v14 += v15;
          }

          while (v19 < *(v16 + 24));
        }

        else
        {
          result = (*(a2 + 56))(a3, a4, off_279DAC638[v17], v14);
          v14 += 4 * v20;
        }
      }

      else
      {
        v18 = 0;
        do
        {
          result = (*(a2 + 56))(a3, a4, *(*(v16 + 16) + 8 * v18), v14);
          if ((result & 0x1FFF) == 0x14)
          {
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", *(*(v16 + 16) + 8 * v18));
            result = (*(a2 + 56))(a3, a4, "</s>", v14);
          }

          ++v18;
          v14 += v15;
        }

        while (v18 < *(v16 + 24));
      }
    }

    ++v12;
  }

  while (v12 != v21);
  return result;
}

BOOL getPOSFeature(const char *a1, uint64_t *a2)
{
  v2 = *a2;
  result = utf8_ToLower(a1, 0, v5);
  if (v5[0] - 99 > 0x16)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_26ECDAAE8[(v5[0] - 99)];
  }

  *(v2 + 4 * v4) = 1065353216;
  return result;
}

uint64_t hlp_loadOptions(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    a1[15] = 0;
  }

  v3 = heap_Alloc(*(*a1 + 8), 128);
  a1[13] = v3;
  if (v3)
  {
    a1[15] = 128;
    v4 = a1[14];
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
      a1[16] = 0;
    }

    v5 = heap_Alloc(*(*a1 + 8), 128);
    a1[14] = v5;
    if (v5)
    {
      a1[16] = 128;
      v6 = a1[19];
      if (v6)
      {
        heap_Free(*(*a1 + 8), v6);
      }

      v7 = heap_Alloc(*(*a1 + 8), 128);
      a1[19] = v7;
      if (v7)
      {
        v8 = a1[20];
        if (v8)
        {
          heap_Free(*(*a1 + 8), v8);
        }

        v9 = heap_Alloc(*(*a1 + 8), 128);
        a1[20] = v9;
        if (v9)
        {
          v10 = a1[21];
          if (v10)
          {
            heap_Free(*(*a1 + 8), v10);
          }

          v11 = heap_Alloc(*(*a1 + 8), 128);
          a1[21] = v11;
          if (v11)
          {
            v12 = a1[22];
            if (v12)
            {
              heap_Free(*(*a1 + 8), v12);
            }

            v13 = heap_Alloc(*(*a1 + 8), 128);
            a1[22] = v13;
            if (v13)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
  return 2314215434;
}

uint64_t hlp_loadNNOptions(uint64_t a1)
{
  v2 = 2314216452;
  v49 = 0;
  v48 = -1;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  __b = 0u;
  v43 = 0u;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_chars", &v49, &v48, &v47) & 0x80000000) != 0 || !v48)
  {
    return v2;
  }

  v3 = cstdlib_strchr(*v49, v47);
  if (v3)
  {
    *v3 = 0;
  }

  v4 = *(*a1 + 8);
  v5 = cstdlib_strlen(*v49);
  v6 = heap_Alloc(v4, v5 + 1);
  if (!v6)
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215434;
  }

  v7 = v6;
  v8 = *v49;
  v9 = cstdlib_strlen(*v49);
  cstdlib_strncpy(v7, v8, v9);
  v7[cstdlib_strlen(*v49)] = 0;
  v48 = -1;
  v10 = 0;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_default_phones", &v49, &v48, &v47) & 0x80000000) != 0 || !v48)
  {
    goto LABEL_38;
  }

  v11 = cstdlib_strchr(*v49, v47);
  if (v11)
  {
    *v11 = 0;
  }

  v12 = *(*a1 + 8);
  v13 = cstdlib_strlen(*v49);
  v10 = heap_Alloc(v12, v13 + 1);
  if (!v10)
  {
    goto LABEL_36;
  }

  v14 = *v49;
  v15 = cstdlib_strlen(*v49);
  cstdlib_strncpy(v10, v14, v15);
  v10[cstdlib_strlen(*v49)] = 0;
  cstdlib_memset(&__b, 0, 0x28uLL);
  *&__b = ssftmap_ElemCopyString;
  *(&v43 + 1) = ssftmap_ElemCopyString;
  *(&__b + 1) = ssftmap_ElemFreeString;
  v44 = ssftmap_ElemFreeString;
  *&v43 = ssftmap_ElemCompareKeysString;
  v16 = *(*a1 + 8);
  v40[0] = __b;
  v40[1] = v43;
  v41 = ssftmap_ElemFreeString;
  v17 = ssftmap_ObjOpen(v16, 0, v40, (a1 + 248));
  if ((v17 & 0x80000000) != 0)
  {
LABEL_18:
    v2 = v17;
    goto LABEL_38;
  }

  v18 = extstdlib_strtok_r(v7, "|", &v46);
  for (i = v10; ; i = 0)
  {
    v20 = extstdlib_strtok_r(i, "|", &v45);
    if (!v18 || !v20)
    {
      break;
    }

    v17 = ssftmap_Insert(*(a1 + 248), v18, v20);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    v18 = extstdlib_strtok_r(0, "|", &v46);
  }

  if (v18 || v20)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "NN chars amount and default phones amount do not match!", 0);
    v2 = 2314215439;
    goto LABEL_38;
  }

  v48 = -1;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_step", &v49, &v48, &v47) & 0x80000000) == 0)
  {
    if (v48)
    {
      *(a1 + 256) = 0;
      *(a1 + 256) = LH_atou(*v49);
      v48 = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_vect", &v49, &v48, &v47) & 0x80000000) == 0)
      {
        if (v48)
        {
          *(a1 + 260) = 0;
          *(a1 + 260) = LH_atou(*v49);
          v48 = -1;
          if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_null_fea", &v49, &v48, &v47) & 0x80000000) == 0)
          {
            if (v48)
            {
              *(a1 + 272) = 0;
              v21 = cstdlib_strchr(*v49, v47);
              if (v21)
              {
                *v21 = 0;
              }

              v22 = *(*a1 + 8);
              v23 = cstdlib_strlen(*v49);
              v24 = heap_Alloc(v22, v23 + 1);
              *(a1 + 272) = v24;
              if (v24)
              {
                v25 = v24;
                v26 = *v49;
                v27 = cstdlib_strlen(*v49);
                cstdlib_strncpy(v25, v26, v27);
                v28 = *(a1 + 272);
                *(v28 + cstdlib_strlen(*v49)) = 0;
                v48 = -1;
                v29 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_embed_type", &v49, &v48, &v47);
                if ((v29 & 0x80000000) == 0 && v48)
                {
                  v30 = v29;
                  *(a1 + 264) = 0;
                  v31 = cstdlib_strchr(*v49, v47);
                  if (v31)
                  {
                    *v31 = 0;
                  }

                  v32 = *(*a1 + 8);
                  v33 = cstdlib_strlen(*v49);
                  v34 = heap_Alloc(v32, v33 + 1);
                  *(a1 + 264) = v34;
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *v49;
                    v37 = cstdlib_strlen(*v49);
                    cstdlib_strncpy(v35, v36, v37);
                    v38 = *(a1 + 264);
                    *(v38 + cstdlib_strlen(*v49)) = 0;
                    v2 = v30;
                    goto LABEL_38;
                  }

                  goto LABEL_36;
                }

                goto LABEL_38;
              }

LABEL_36:
              log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
              v2 = 2314215434;
            }
          }
        }
      }
    }
  }

LABEL_38:
  heap_Free(*(*a1 + 8), v7);
  if (v10)
  {
    heap_Free(*(*a1 + 8), v10);
  }

  return v2;
}

uint64_t hlp_loadStatWordOptions(uint64_t a1)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 320) = 0;
  if (*&__c[1])
  {
    *(a1 + 320) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_vect", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 324) = 0;
  if (*&__c[1])
  {
    *(a1 + 324) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_thresholdpercent", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 328) = 0;
  if (*&__c[1])
  {
    *(a1 + 328) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_list", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  if (*&__c[1])
  {
    v3 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
    }

    v4 = *(*a1 + 8);
    v5 = cstdlib_strlen(**&__c[3]);
    v6 = heap_Alloc(v4, v5 + 1);
    *(a1 + 336) = v6;
    if (v6)
    {
      cstdlib_strcpy(v6, **&__c[3]);
      cstdlib_strcpy((a1 + 364), "$MEANW2V$");
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_fbck", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v7 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v7)
        {
          *v7 = 0;
        }

        cstdlib_strcpy((a1 + 364), **&__c[3]);
      }

      cstdlib_strcpy((a1 + 344), ",;!.?:-");
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_punc", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v8 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v8)
        {
          *v8 = 0;
        }

        cstdlib_strcpy((a1 + 344), **&__c[3]);
      }

      cstdlib_strcpy((a1 + 354), "0033400");
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_mappunc", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v9 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v9)
        {
          *v9 = 0;
        }

        cstdlib_strcpy((a1 + 354), **&__c[3]);
      }

      *(a1 + 376) = 0;
      *&__c[1] = -1;
      v10 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_nnlkpcaseconv", &__c[3], &__c[1], __c);
      if ((v10 & 0x80000000) == 0 && *&__c[1])
      {
        v11 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v11)
        {
          *v11 = 0;
        }

        if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
        {
          *(a1 + 376) = 1;
        }
      }

      *(a1 + 264) = 0;
    }

    else
    {
      v10 = 2314215434;
      log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215444;
  }

  return v10;
}

uint64_t fe_hmogrph_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v5 = 2314215431;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v41 = 0;
  v42 = 0;
  memset(v50, 0, sizeof(v50));
  if (!a5)
  {
    return v5;
  }

  __s = 0;
  v40 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a1, a2, &v48);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a3, a4, &v49);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v49[6], "LINGDB", &v47);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v49[6], "FE_DCTLKP", &v45);
  v13 = v49[6];
  if ((Object & 0x80000000) != 0)
  {
    v28 = "LINGDB";
LABEL_25:
    objc_ReleaseObject(v13, v28);
    return Object;
  }

  v14 = objc_GetObject(v13, "FE_DEPES", &v46);
  if ((v14 & 0x80000000) != 0)
  {
    Object = v14;
    objc_ReleaseObject(v49[6], "LINGDB");
    v13 = v49[6];
    v28 = "FE_DCTLKP";
    goto LABEL_25;
  }

  v15 = heap_Alloc(v49[1], 488);
  if (!v15)
  {
    log_OutPublic(v49[4], "FE_HMOGRPH", 37000, 0);
    objc_ReleaseObject(v49[6], "LINGDB");
    objc_ReleaseObject(v49[6], "FE_DEPES");
    objc_ReleaseObject(v49[6], "FE_DCTLKP");
    return 2314215434;
  }

  v16 = v15;
  *v15 = v49;
  *(v15 + 8) = a3;
  v17 = v47;
  v18 = v48;
  *(v15 + 16) = a4;
  *(v15 + 24) = v18;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = *(v17 + 8);
  v19 = v45;
  v20 = v46;
  *(v15 + 72) = *(v46 + 8);
  *(v15 + 56) = *(v20 + 16);
  *(v15 + 96) = *(v19 + 8);
  *(v15 + 80) = *(v19 + 16);
  *(v15 + 104) = 0u;
  *(v15 + 120) = 0u;
  *(v15 + 136) = 0;
  *(v15 + 152) = 0u;
  *(v15 + 168) = 0u;
  cstdlib_memset((v15 + 200), 0, 0xB8uLL);
  cstdlib_memset((v16 + 392), 0, 0x58uLL);
  *(v16 + 188) = 0;
  *(v16 + 192) = 0;
  *(v16 + 384) = 0;
  *(v16 + 480) = 0;
  *(v16 + 280) = 0;
  OptionalHmogrphModels = (*(*(v16 + 96) + 88))(*(v16 + 80), *(v16 + 88), &v42 + 4, &v42);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v22 = v42 == 1 && HIDWORD(v42) == 1;
  v23 = v22;
  *(v16 + 184) = v23;
  OptionalHmogrphModels = hlp_loadOptionalHmogrphModels(v16);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  OptionalHmogrphModels = hlp_loadNerOptions(v16);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v24 = *v16;
  *(v16 + 200) = *v16;
  v25 = paramc_ParamGet(*(v24 + 40), "numberoutputtranscriptions", &__s, 0);
  v26 = 0;
  if ((v25 & 0x80000000) == 0 && __s)
  {
    v26 = cstdlib_atoi(__s);
  }

  *(v16 + 138) = v26;
  v27 = (paramc_ParamGet(*(*v16 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && cstdlib_strlen(__s) > 3;
  *(v16 + 140) = v27;
  OptionalHmogrphModels = checkSkipCrosstoken(*(v16 + 80), *(v16 + 88), *(v16 + 96), (v16 + 144));
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  if (*(v16 + 144))
  {
    OptionalHmogrphModels = hlp_loadOptions(v16);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }
  }

  if (!*(v16 + 188))
  {
    goto LABEL_49;
  }

  if (*(v16 + 480))
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    OptionalHmogrphModels = hlp_loadStatWordOptions(v16);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    OptionalHmogrphModels = nn_word_lkp_GetInterface(1u, &v40);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    *(v16 + 280) = v40;
    *(v16 + 288) = safeh_GetNullHandle();
    *(v16 + 296) = v29;
    *(v16 + 304) = safeh_GetNullHandle();
    *(v16 + 312) = v30;
    OptionalHmogrphModels = (*(v40 + 16))(*(v16 + 288), *(v16 + 296), "word", a3, a4, v16 + 304);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v38 = *(v16 + 304);
    *(&v37 + 1) = v40;
    OptionalHmogrphModels = objc_RegisterObject(v49[6], "NNWRDLKP", &v37);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  if (*(v16 + 192))
  {
    OptionalHmogrphModels = hlp_loadNNOptions(v16);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
LABEL_53:
      v5 = OptionalHmogrphModels;
      fe_hmogrph_ObjClose(*a5, *(a5 + 8));
      return v5;
    }

    v31 = cstdlib_strcmp(*(v16 + 264), "albert");
    if ((objc_GetObject(v49[6], "NNCHRLKP", &v44) & 0x80000000) != 0 || !v31)
    {
      OptionalHmogrphModels = nn_word_lkp_GetInterface(1u, &v40);
      if ((OptionalHmogrphModels & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      *(v16 + 280) = v40;
      *(v16 + 288) = safeh_GetNullHandle();
      *(v16 + 296) = v33;
      *(v16 + 304) = safeh_GetNullHandle();
      *(v16 + 312) = v34;
      OptionalHmogrphModels = (*(v40 + 16))(*(v16 + 288), *(v16 + 296), *(v16 + 264), a3, a4, v16 + 304);
      if ((OptionalHmogrphModels & 0x80000000) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(v16 + 280) = *(v44 + 8);
      *(v16 + 288) = safeh_GetNullHandle();
      *(v16 + 296) = v32;
      *(v16 + 304) = *(v44 + 16);
    }

LABEL_46:
    inited = fi_model_getBrokerString(*v16, v50);
    if ((inited & 0x80000000) == 0)
    {
      v35 = fi_init(a3, a4, a1, a2, &v41, 0, v50, "FINN", 1, 0);
      if ((v35 & 0x80000000) != 0)
      {
        v5 = v35;
        log_OutText(*(*v16 + 32), "FE_HMOGRPH", 5, 0, "create FI model failed");
        return v5;
      }

      *(v16 + 240) = v41;
      goto LABEL_49;
    }

    return inited;
  }

  *(v16 + 240) = 0;
LABEL_49:
  v5 = init_ner_struct(v16, (v16 + 392));
  if ((v5 & 0x80000000) == 0)
  {
    *a5 = v16;
    *(a5 + 8) = 62342;
  }

  return v5;
}

uint64_t hlp_loadOptionalHmogrphModels(uint64_t a1)
{
  if ((com_useStatHmogrph(*a1, (a1 + 188)) & 0x80000000) == 0)
  {
    *(a1 + 232) = 0;
    *(a1 + 200) = 0;
    if (*(a1 + 188))
    {
      if ((stat_hmogrph_ModelInit(*(a1 + 8), *(a1 + 16), *a1, *(a1 + 96), *(a1 + 80), *(a1 + 88), (a1 + 224), (a1 + 232), (a1 + 234)) & 0x80000000) == 0)
      {
        *(a1 + 200) = *a1;
      }
    }
  }

  *&__c[3] = 0;
  __c[0] = 0;
  *(a1 + 480) = 0;
  *&__c[1] = -1;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1] == 1)
  {
    *(a1 + 188) = 1;
    *(a1 + 480) = 1;
  }

  *(a1 + 192) = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_enable_nnets", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3])
  {
    v3 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *(a1 + 192) = 1;
    }
  }

  return v2;
}

uint64_t hlp_loadNerOptions(uint64_t a1)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = -1;
  v9 = 0;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_enable_ner", &v13, &v10, &v9);
  if ((v2 & 0x80000000) == 0)
  {
    if (v10 && v13)
    {
      v3 = *v13;
      v3[cstdlib_strlen(*v13) - 1] = 0;
      v4 = cstdlib_strcmp(*v13, "yes");
      *(a1 + 384) = v4 == 0;
      if (!v4)
      {
        v10 = -1;
        v9 = 0;
        *(a1 + 428) = 0;
        if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_embed_type", &v12, &v10, &v9) & 0x80000000) == 0 && v10 && v12)
        {
          v5 = *v12;
          v5[cstdlib_strlen(*v12) - 1] = 0;
          *(a1 + 428) = cstdlib_strcmp(*v12, "char") == 0;
        }

        v10 = -1;
        v9 = 0;
        v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_enable_pos", &v12, &v10, &v9);
        if ((v2 & 0x80000000) == 0)
        {
          if (v10 && v12)
          {
            v6 = *v12;
            v6[cstdlib_strlen(*v12) - 1] = 0;
            v7 = cstdlib_strcmp(*v12, "yes");
            *(a1 + 424) = v7 == 0;
            if (!v7)
            {
              v10 = -1;
              v9 = 0;
              v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_pos_dimension", &v11, &v10, &v9);
              if ((v2 & 0x80000000) == 0)
              {
                *(a1 + 432) = LH_atou(*v11);
              }
            }
          }

          else
          {
            *(a1 + 424) = 0;
          }
        }
      }
    }

    else
    {
      *(a1 + 384) = 0;
    }
  }

  return v2;
}

uint64_t checkSkipCrosstoken(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_skipcrosstoken", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t fi_model_getBrokerString(uint64_t a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = 0;
  __s2 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__s1 = 0u;
  v8 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v5);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "nnhmogrph_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v5);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t init_ner_struct(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  *a2 = 0;
  if (!*(a1 + 384))
  {
    return 0;
  }

  *(a1 + 440) = 0;
  *(a1 + 448) = safeh_GetNullHandle();
  *(a1 + 456) = v4;
  *(a1 + 464) = safeh_GetNullHandle();
  *(a1 + 472) = v5;
  v6 = *(a1 + 264);
  if (v6)
  {
    if (cstdlib_strcmp(v6, "char"))
    {
      if (*(a1 + 428) == 1)
      {
        Interface = nn_word_lkp_GetInterface(1u, (a1 + 440));
        if ((Interface & 0x80000000) != 0)
        {
          return Interface;
        }

        Interface = (*(*(a1 + 440) + 16))(*(a1 + 448), *(a1 + 456), "char", *(a1 + 8), *(a1 + 16), a1 + 464);
        if ((Interface & 0x80000000) != 0)
        {
          return Interface;
        }
      }
    }
  }

  get_ner_brokerstring(*a1, v11, 0x100uLL);
  v8 = fi_init(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), &v10, 0, v11, "FINN", 1, 0);
  if ((v8 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Init NER FI model failed");
  }

  else
  {
    *a2 = v10;
  }

  return v8;
}

uint64_t fe_hmogrph_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62342, 488);
  if ((result & 0x80000000) != 0)
  {
    return 2314215432;
  }

  if (!a1)
  {
    return result;
  }

  v4 = a1[13];
  if (v4)
  {
    heap_Free(*(*a1 + 8), v4);
  }

  a1[13] = 0;
  a1[15] = 0;
  v5 = a1[14];
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
  }

  a1[14] = 0;
  a1[16] = 0;
  v6 = a1[19];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  a1[19] = 0;
  v7 = a1[20];
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
  }

  a1[20] = 0;
  v8 = a1[21];
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
  }

  a1[21] = 0;
  v9 = a1[22];
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
  }

  a1[22] = 0;
  v10 = a1[35];
  if (v10)
  {
    if (*(a1 + 120))
    {
      if (((*(v10 + 24))(a1[38], a1[39]) & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
      }
    }

    else if (*(a1 + 48) && (objc_ReleaseObject(*(*a1 + 48), "NNCHRLKP") & 0x80000000) != 0)
    {
      (*(a1[35] + 24))(a1[38], a1[39]);
    }

    a1[35] = 0;
  }

  if (*(a1 + 47))
  {
    if (*(a1 + 120))
    {
      v11 = a1[42];
      if (v11)
      {
        heap_Free(*(*a1 + 8), v11);
        a1[42] = 0;
      }
    }

    else
    {
      if (!*(a1 + 48))
      {
LABEL_37:
        if (*(a1 + 116))
        {
          stat_hmogrph_ModelDeinit(*a1, a1 + 28, *(a1 + 116));
        }

        goto LABEL_39;
      }

      v12 = a1[34];
      if (v12)
      {
        heap_Free(*(*a1 + 8), v12);
        a1[34] = 0;
      }

      v13 = a1[31];
      if (v13)
      {
        ssftmap_ObjClose(v13);
        a1[31] = 0;
      }

      v14 = a1[33];
      if (v14)
      {
        heap_Free(*(*a1 + 8), v14);
        a1[33] = 0;
      }
    }

    v15 = a1[30];
    if (v15)
    {
      fi_deinit(*a1, a1[3], v15);
      a1[30] = 0;
    }

    goto LABEL_37;
  }

LABEL_39:
  if (*(a1 + 96))
  {
    v16 = a1[49];
    if (v16)
    {
      fi_deinit(*a1, a1[3], v16);
      a1[49] = 0;
    }

    v17 = a1[55];
    if (v17)
    {
      (*(v17 + 24))(a1[58], a1[59]);
      a1[55] = 0;
    }
  }

  objc_ReleaseObject(*(*a1 + 48), "LINGDB");
  objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
  objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t fe_hmogrph_ObjReopen(void *a1, int a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v34 = 0;
  v35 = 0;
  memset(v39, 0, sizeof(v39));
  Options = safeh_HandleCheck(a1, a2, 62342, 488);
  if ((Options & 0x80000000) == 0)
  {
    if (!a1)
    {
      return Options;
    }

    __s = 0;
    v36 = 0;
    Options = (*(a1[12] + 88))(a1[10], a1[11], &v37 + 4, &v37);
    if ((Options & 0x80000000) != 0)
    {
      return Options;
    }

    v5 = v37 == 1 && HIDWORD(v37) == 1;
    *(a1 + 46) = v5;
    v6 = a1[13];
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
    }

    a1[13] = 0;
    a1[15] = 0;
    v7 = a1[14];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    a1[14] = 0;
    a1[16] = 0;
    v8 = a1[19];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    a1[19] = 0;
    v9 = a1[20];
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
    }

    a1[20] = 0;
    v10 = a1[21];
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
    }

    a1[21] = 0;
    v11 = a1[22];
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
    }

    a1[22] = 0;
    v12 = a1[35];
    if (v12)
    {
      if (*(a1 + 120))
      {
        v36 = a1[35];
        if (((*(v12 + 24))(a1[38], a1[39]) & 0x80000000) == 0)
        {
          objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
        }
      }

      else if (*(a1 + 48) && (objc_ReleaseObject(*(*a1 + 48), "NNCHRLKP") & 0x80000000) != 0)
      {
        v36 = a1[35];
        (*(v36 + 24))(a1[38], a1[39]);
      }

      a1[35] = 0;
    }

    if (!*(a1 + 47))
    {
LABEL_51:
      Options = checkSkipCrosstoken(a1[10], a1[11], a1[12], a1 + 36);
      if ((Options & 0x80000000) != 0)
      {
        return Options;
      }

      if (*(a1 + 36))
      {
        Options = hlp_loadOptions(a1);
        if ((Options & 0x80000000) != 0)
        {
          return Options;
        }
      }

      Options = hlp_loadOptionalHmogrphModels(a1);
      if ((Options & 0x80000000) != 0)
      {
        return Options;
      }

      Options = hlp_loadNerOptions(a1);
      if ((Options & 0x80000000) != 0)
      {
        return Options;
      }

      a1[25] = *a1;
      if (*(a1 + 47))
      {
        if (*(a1 + 120))
        {
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
          Options = hlp_loadStatWordOptions(a1);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          Options = nn_word_lkp_GetInterface(1u, &v36);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          a1[35] = v36;
          a1[36] = safeh_GetNullHandle();
          a1[37] = v21;
          a1[38] = safeh_GetNullHandle();
          a1[39] = v22;
          Options = (*(v36 + 16))(a1[36], a1[37], "word", a1[1], a1[2], a1 + 38);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          v32 = *(a1 + 19);
          *(&v31 + 1) = v36;
          Options = objc_RegisterObject(*(*a1 + 48), "NNWRDLKP", &v31);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          goto LABEL_67;
        }

        if (*(a1 + 48))
        {
          Options = hlp_loadNNOptions(a1);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          if ((objc_GetObject(*(*a1 + 48), "NNCHRLKP", &v35) & 0x80000000) != 0)
          {
            Options = nn_word_lkp_GetInterface(1u, &v36);
            if ((Options & 0x80000000) != 0)
            {
              return Options;
            }

            a1[35] = v36;
            a1[36] = safeh_GetNullHandle();
            a1[37] = v29;
            a1[38] = safeh_GetNullHandle();
            a1[39] = v30;
            Options = (*(v36 + 16))(a1[36], a1[37], a1[33], a1[1], a1[2], a1 + 38);
            if ((Options & 0x80000000) != 0)
            {
              return Options;
            }
          }

          else
          {
            a1[35] = *(v35 + 8);
            a1[36] = safeh_GetNullHandle();
            a1[37] = v23;
            *(a1 + 19) = *(v35 + 16);
          }

LABEL_67:
          Options = fi_model_getBrokerString(*a1, v39);
          if ((Options & 0x80000000) == 0)
          {
            v24 = fi_init(a1[1], a1[2], a1[4], a1[5], &v34, 0, v39, "FINN", 1, 0);
            if ((v24 & 0x80000000) != 0)
            {
              v13 = v24;
              log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "create FI model failed");
              return v13;
            }

            a1[30] = v34;
            goto LABEL_71;
          }

          return Options;
        }

        a1[30] = 0;
      }

LABEL_71:
      v25 = paramc_ParamGet(*(*a1 + 40), "numberoutputtranscriptions", &__s, 0);
      v26 = 0;
      if ((v25 & 0x80000000) == 0 && __s)
      {
        v26 = cstdlib_atoi(__s);
      }

      *(a1 + 69) = v26;
      v27 = (paramc_ParamGet(*(*a1 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && cstdlib_strlen(__s) > 3;
      *(a1 + 35) = v27;
      return init_ner_struct(a1, a1 + 49);
    }

    if (*(a1 + 120))
    {
      v14 = a1[42];
      if (v14)
      {
        heap_Free(*(*a1 + 8), v14);
        a1[42] = 0;
      }
    }

    else
    {
      if (!*(a1 + 48))
      {
LABEL_44:
        if (*(a1 + 96))
        {
          v19 = a1[49];
          if (v19)
          {
            fi_deinit(*a1, a1[3], v19);
            a1[49] = 0;
          }

          v20 = a1[55];
          if (v20)
          {
            v36 = a1[55];
            (*(v20 + 24))(a1[58], a1[59]);
            a1[55] = 0;
          }
        }

        if (*(a1 + 116))
        {
          stat_hmogrph_ModelDeinit(*a1, a1 + 28, *(a1 + 116));
        }

        goto LABEL_51;
      }

      v15 = a1[34];
      if (v15)
      {
        heap_Free(*(*a1 + 8), v15);
        a1[34] = 0;
      }

      v16 = a1[31];
      if (v16)
      {
        ssftmap_ObjClose(v16);
        a1[31] = 0;
      }

      v17 = a1[33];
      if (v17)
      {
        heap_Free(*(*a1 + 8), v17);
        a1[33] = 0;
      }
    }

    v18 = a1[30];
    if (v18)
    {
      fi_deinit(*a1, a1[3], v18);
      a1[30] = 0;
    }

    goto LABEL_44;
  }

  return 2314215432;
}

uint64_t fe_hmogrph_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 488);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2314215432;
  }
}

uint64_t fe_hmogrph_Process_StatHmogrph(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 = 1;
  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "BEGIN fe_hmogrph_Process_StatHmogrph()", 0);
  if (*(a1 + 480) == 1)
  {
    SentenceData = stat_hmogrph_disambiguateWords(a1, *(a1 + 48), a2, a3, a1 + 200);
LABEL_13:
    v11 = SentenceData;
    v12 = 0;
    goto LABEL_14;
  }

  if (!*(a1 + 384))
  {
    *(a1 + 400) = 0;
    goto LABEL_10;
  }

  v8 = *(a1 + 264);
  v9 = v8 && !cstdlib_strcmp(v8, "char");
  v10 = ner_process(*a1, a1 + 392, a2, a3, *(a1 + 48), *(a1 + 280), *(a1 + 304), *(a1 + 312), v9);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_10:
    SentenceData = stat_hmogrph_getSentenceData(a1, *(a1 + 48), a2, a3, a1 + 200);
    if ((SentenceData & 0x80000000) == 0)
    {
      SentenceData = stat_hmogrph_disambiguatePhons(a1, a1 + 200);
      if ((SentenceData & 0x80000000) == 0)
      {
        SentenceData = stat_hmogrph_updateLingdb(a1, *(a1 + 48), a2, a3, a1 + 200, a1 + 392);
      }
    }

    goto LABEL_13;
  }

  v11 = v10;
  v12 = 1;
LABEL_14:
  if (!(*(a1 + 480) | v12))
  {
    v13 = stat_hmogrph_freeSentenceData(a1 + 200);
    if (v11 > -1 && v13 < 0)
    {
      v11 = v13;
    }

    else
    {
      v11 = v11;
    }
  }

  if (*(a1 + 384))
  {
    v15 = ner_freeNEData(*a1, a1 + 392);
    if (v11 > -1 && v15 < 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v11;
    }
  }

  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "END fe_hmogrph_Process_StatHmogrph()", 0);
  return v11;
}

uint64_t checkCRFMDE(_WORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  __s2 = 0;
  v18 = 0;
  v19 = "";
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__s1 = 0u;
  v22 = 0u;
  if ((paramc_ParamGetStr(*(a3 + 40), "langcode", &__s2) & 0x80000000) == 0 && (paramc_ParamGetStr(*(a3 + 40), "fecfg", &v19) & 0x80000000) == 0)
  {
    cstdlib_strcat(__s1, "crf_mde_seg_");
    cstdlib_strcat(__s1, __s2);
    cstdlib_strcat(__s1, "_");
    cstdlib_strcat(__s1, v19);
    v8 = heap_Calloc(*(a3 + 8), 1, 1024);
    if (v8)
    {
      v9 = v8;
      v10 = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, __s2, 0, 0, v8, 0x400uLL);
      v11 = *(a3 + 8);
      v12 = cstdlib_strlen(__s2);
      v13 = heap_Calloc(v11, 1, v12 + 1);
      if (v13)
      {
        v14 = v13;
        cstdlib_strcpy(v13, __s2);
        if ((v10 & 0x80000000) == 0 && (ssftriff_reader_ObjOpen(a1, a2, 2, v9, "CRPH", 1031, &v18) & 0x80000000) == 0)
        {
          ssftriff_reader_ObjClose(v18);
          *a4 = 1;
        }

        heap_Free(*(a3 + 8), v9);
        v15 = *(a3 + 8);
        v16 = v14;
      }

      else
      {
        log_OutPublic(*(a3 + 32), "FE_HMOGRPH", 37000, 0);
        v15 = *(a3 + 8);
        v16 = v9;
      }

      heap_Free(v15, v16);
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_HMOGRPH", 37000, 0);
    }
  }

  return 0;
}

uint64_t fe_hmogrph_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v86 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  if ((safeh_HandleCheck(a1, a2, 62342, 488) & 0x80000000) != 0)
  {
    return 2314215432;
  }

  __s = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v77 = 0;
  *a5 = 1;
  checkCRFMDE(*(a1 + 8), *(a1 + 16), *a1, &v74);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 80);
  *__dst = 0;
  LOWORD(__s2) = -1;
  LOBYTE(__c[0]) = 0;
  v12 = (*(v10 + 96))(v11, v9, "fecfg", "usecompound", __dst, &__s2, __c);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = 0;
  v14 = 1;
  if (__s2 == 1 && *__dst)
  {
    v15 = cstdlib_strchr(**__dst, LOBYTE(__c[0]));
    if (v15)
    {
      *v15 = 0;
    }

    if (cstdlib_strcmp("yes", **__dst) && cstdlib_strcmp("YES", **__dst))
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      v13 = 1;
    }
  }

  v16 = com_mosynt_UseMosynt(*(a1 + 80), *(a1 + 88), *(a1 + 96), &v75);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = v75 ? v14 : 0;
  if (v17 == 1 && !*(a1 + 188))
  {
    return v16;
  }

  v18 = *(a1 + 188);
  if ((v75 & ~v13) != 0)
  {
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  else if (!v18)
  {
    goto LABEL_24;
  }

  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph Enabled", 0);
  v16 = fe_hmogrph_Process_StatHmogrph(a1, a3, a4, a5);
  if ((v16 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph Processing Failed", 0);
    return v16;
  }

LABEL_23:
  if (!*(a1 + 480))
  {
    return v16;
  }

LABEL_24:
  v16 = (*(*(a1 + 48) + 104))(a3, a4, 1, 0, &v83 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  if (((*(*(a1 + 48) + 184))(a3, a4, HIWORD(v83), 0, &v78) & 0x80000000) != 0)
  {
    return v16;
  }

  if (v78 != 1)
  {
    return v16;
  }

  v16 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v83), 0, &__s, &v82 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v19 = HIWORD(v82);
  if (HIWORD(v82) < 2u)
  {
    return v16;
  }

  *(a1 + 136) = 0;
  v12 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v83), 1, &v77, &v76);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v20 = *(v77 + 12);
  v12 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v83), &v83);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v69 = v20;
  v70 = 0;
  v21 = 0;
  v22 = v19 - 1;
  v23 = 1;
  while (1)
  {
    v24 = *(a1 + 48);
    if (!v83)
    {
      break;
    }

    v12 = (*(v24 + 168))(a3, a4);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (v80 == 4)
    {
      v12 = (*(*(a1 + 48) + 168))(a3, a4, v83, 1, 1, &v82, &v82 + 2);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v25 = v82;
      if (!v23 && v82 == v70)
      {
        v12 = (*(*(a1 + 48) + 168))(a3, a4, v83, 2, 1, &v81, &v82 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v26 = v82;
        v27 = __s;
        if (!v82)
        {
          goto LABEL_52;
        }

        v28 = 0;
        do
        {
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v27, v26);
          v27 = __s;
          v30 = &__s[PreviousUtf8Offset];
          v31 = *v30;
          if (v31 == 95 || v31 == 32)
          {
            v32 = v30[1];
            if (v32 != 32 && v32 != 95)
            {
              ++v28;
            }
          }

          v26 = PreviousUtf8Offset;
        }

        while (v28 <= 3u && PreviousUtf8Offset);
        if (PreviousUtf8Offset)
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(__s, PreviousUtf8Offset);
          v27 = __s;
        }

        else
        {
LABEL_52:
          NextUtf8Offset = 0;
        }

        v35 = v81;
        if (v81 >= v22)
        {
          v41 = v81;
        }

        else
        {
          v36 = 0;
          do
          {
            v35 = utf8_GetNextUtf8Offset(v27, v35);
            v27 = __s;
            v37 = &__s[v35];
            v38 = *v37;
            if (v38 == 95 || v38 == 32)
            {
              v39 = *(v37 - 1);
              if (v39 != 32 && v39 != 95)
              {
                ++v36;
              }
            }
          }

          while (v36 <= 2u && v22 > v35);
          v41 = v35;
          v35 = v81;
        }

        v42 = v82;
        if (v21)
        {
          v12 = hlp_Disambiguate(a1, a3, a4, v27, v21, NextUtf8Offset, v41, v82, v35);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          v27 = __s;
          v42 = v82;
          v35 = v81;
        }

        v12 = hlp_Disambiguate(a1, a3, a4, v27, v83, NextUtf8Offset, v41, v42, v35);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v21 = 0;
        v25 = v82;
      }

      if (v25 != v70 || v23 == 1)
      {
        v21 = v83;
      }

      v70 = v25;
      v23 = 0;
    }

    v16 = (*(*(a1 + 48) + 120))(a3, a4);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }
  }

  v16 = (*(v24 + 104))(a3, a4, 2, HIWORD(v83), &v83);
  if ((v16 & 0x80000000) == 0)
  {
    v44 = v83;
    if (v83)
    {
      v45 = 0;
      v46 = 0;
      v66 = 0;
      v47 = 0;
      v67 = 1;
      v68 = 0;
      v71 = v74;
      v64 = 1;
      v65 = 0;
      v48 = 1;
      while (1)
      {
        v12 = (*(*(a1 + 48) + 168))(a3, a4, v44, 0, 1, &v80, &v82 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v12 = (*(*(a1 + 48) + 168))(a3, a4, v83, 1, 1, &v82, &v82 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        if (v82 != v47 || v48 == 1)
        {
          v45 = 0;
        }

        if (v46 < v76)
        {
          v50 = v46;
          v51 = v77 + 32 * v46 + 12;
          while ((v82 + 1) > (*v51 - v69))
          {
            if (*(v51 - 12) == 14 && *(v51 + 12) == 64)
            {
              v45 = 1;
            }

            ++v50;
            v51 += 32;
            if (v76 == v50)
            {
              v46 = v76;
              goto LABEL_101;
            }
          }

          v46 = v50;
        }

LABEL_101:
        if (v80 == 4)
        {
          goto LABEL_102;
        }

        v57 = v80 == 9;
        if (v80 == 9)
        {
          v58 = v13;
        }

        else
        {
          v58 = 0;
        }

        if (!v75)
        {
          v58 = 0;
        }

        if (v71 != 1)
        {
          v57 = 0;
        }

        if ((v58 & 1) != 0 || v57)
        {
LABEL_102:
          v12 = (*(*(a1 + 48) + 168))(a3, a4, v83, 7, 1, &v79, &v82 + 2);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          if (v75)
          {
            v52 = v13;
          }

          else
          {
            v52 = 0;
          }

          if ((v52 & 1) != 0 || v71 == 1)
          {
            *__dst = 0;
            v78 = 0;
            if (((*(*(a1 + 48) + 184))(a3, a4, v83, 17, &v78) & 0x80000000) == 0 && v78 == 1)
            {
              v12 = (*(*(a1 + 48) + 168))(a3, a4, v83, 17, 1, __dst, &v82 + 2);
              if ((v12 & 0x80000000) != 0)
              {
                return v12;
              }
            }

            if (*__dst)
            {
              v53 = 0;
            }

            else
            {
              v53 = ~v79;
            }

            v79 = v53;
          }

          if (*(a1 + 480))
          {
            *__c = 0;
            __s2 = 0;
            v12 = (*(*(a1 + 48) + 176))(a3, a4, v83, 5, &__s2, &v82 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            v12 = (*(*(a1 + 48) + 176))(a3, a4, v83, 14, __c, &v82 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            cstdlib_strcpy(__dst, "POS:");
            cstdlib_strcat(__dst, __s2);
            cstdlib_strcat(__dst, ";");
            v54 = cstdlib_strstr(*__c, __dst);
            if (v54 && (v54 == *__c || *(v54 - 1) == 59))
            {
              v79 += 100;
            }
          }

          v78 = 0;
          if (((*(*(a1 + 48) + 184))(a3, a4, v83, 9, &v78) & 0x80000000) == 0 && v78 == 1)
          {
            *__dst = 0;
            v12 = (*(*(a1 + 48) + 176))(a3, a4, v83, 9, __dst, &v82 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            v68 = **__dst;
          }

          if (v48 || v82 != v47)
          {
            v56 = 0;
            v48 = 0;
            v60 = v67;
            v59 = v68;
            if (!v68)
            {
              v59 = v67;
            }

            v65 = v68 == v67;
            LOWORD(v66) = v83;
            v47 = v82;
            HIDWORD(v66) = v79;
            v67 = v59;
            v64 = v60;
            goto LABEL_152;
          }

          if (v79 > HIDWORD(v66) || v79 == HIDWORD(v66) && !v65 && (v64 == 101 || v68 != 101))
          {
            v55 = v83;
            if (!v45)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v55 = v83;
            if (v45)
            {
LABEL_149:
              v48 = 0;
              v61 = v68;
              if ((v68 & 0xFE) == 0)
              {
                v61 = 1;
              }

              HIDWORD(v66) = v79;
              v67 = v61;
              v56 = v66;
              v65 = v68 == v64;
              LOWORD(v66) = v55;
              goto LABEL_152;
            }
          }

          v48 = 0;
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

LABEL_152:
        v16 = (*(*(a1 + 48) + 120))(a3, a4);
        if ((v16 & 0x80000000) == 0)
        {
          if (!v56 || (*(a1 + 138) < 2u || !*(a1 + 140) ? (v62 = (*(*(a1 + 48) + 192))(a3, a4, v56)) : (*__dst = 0, v80 = 16, v62 = (*(*(a1 + 48) + 160))(a3, a4, v56, 0, 1, &v80, __dst)), v16 = v62, (v62 & 0x80000000) == 0))
          {
            v44 = v83;
            if (v83)
            {
              continue;
            }
          }
        }

        return v16;
      }
    }
  }

  return v16;
}

uint64_t hlp_Disambiguate(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, unsigned __int16 a9)
{
  LODWORD(NextUtf8Offset) = a8;
  v66 = *MEMORY[0x277D85DE8];
  v62 = xmmword_26ECDAC22;
  v63 = unk_26ECDAC32;
  v64 = xmmword_26ECDAC42;
  v65 = unk_26ECDAC52;
  strcpy(v58, "disambiguate_homographs");
  v59 = unk_26ECDABFA;
  v60 = xmmword_26ECDAC02;
  v61 = unk_26ECDAC12;
  v57 = 0;
  __s1 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v17 = (*(*(a1 + 48) + 104))(a2, a3, 1, 0, &v52);
  if ((v17 & 0x80000000) == 0 && ((*(*(a1 + 48) + 184))(a2, a3, a5, 4, &v57) & 0x80000000) == 0)
  {
    v49 = a7;
    v50 = a2;
    v51 = a3;
    if (v57 == 1)
    {
      v17 = (*(*(a1 + 48) + 176))(a2, a3, a5, 4, &__s1, &v53);
      if ((v17 & 0x80000000) == 0)
      {
        if (cstdlib_strcmp(__s1, ""))
        {
          v18 = (a7 - a6 + 14);
          if (v18 > *(a1 + 136))
          {
            v19 = heap_Realloc(*(*a1 + 8), *(a1 + 104), (a7 - a6 + 14));
            if (!v19 || (*(a1 + 104) = v19, (v20 = heap_Realloc(*(*a1 + 8), *(a1 + 112), v18)) == 0))
            {
              v17 = 2314215434;
              log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
              return v17;
            }

            *(a1 + 112) = v20;
            *(a1 + 136) = a7 - a6 + 14;
          }

          cstdlib_strcpy(*(a1 + 104), "");
          cstdlib_strcpy(*(a1 + 112), "");
          v21 = (*(*(a1 + 48) + 104))(v50, a3, 2, v52, &v55 + 2);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v22 = 0;
          LODWORD(PreviousUtf8Offset) = a9;
          v48 = a5;
          while (1)
          {
            v24 = HIWORD(v55);
            if (!HIWORD(v55))
            {
              break;
            }

            if (HIWORD(v55) == a5)
            {
              v25 = &a4[NextUtf8Offset];
              for (i = (*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), v25); i == 1; i = (*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), &a4[NextUtf8Offset]))
              {
                NextUtf8Offset = utf8_GetNextUtf8Offset(a4, NextUtf8Offset);
                v25 = &a4[NextUtf8Offset];
              }

              do
              {
                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a4, PreviousUtf8Offset);
              }

              while ((*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), &a4[PreviousUtf8Offset]) == 1);
              v27 = utf8_GetNextUtf8Offset(a4, PreviousUtf8Offset);
              v28 = &a4[a6];
              v29 = NextUtf8Offset - a6;
              cstdlib_strncat(*(a1 + 104), v28, v29);
              for (j = Utf8_LengthInUtf8chars(v28, v29); j; --j)
              {
                cstdlib_strcat(*(a1 + 112), " ");
              }

              a6 = v27;
              cstdlib_strcat(*(a1 + 104), "§");
              cstdlib_strncat(*(a1 + 104), v25, v27 - NextUtf8Offset);
              v31 = Utf8_LengthInUtf8chars(v25, v27 - NextUtf8Offset);
              if (cstdlib_strlen(__s1) <= v31 || (cstdlib_strlen(__s1) != v31 ? (v32 = v22 > 9) : (v32 = 1), v32))
              {
                v33 = v22;
              }

              else
              {
                v34 = 1;
                do
                {
                  cstdlib_strcat(*(a1 + 104), "~");
                  v33 = (v22 + 1);
                  v32 = cstdlib_strlen(__s1) - v31 > v34++;
                  v35 = !v32 || v22 >= 9;
                  LODWORD(v22) = v22 + 1;
                }

                while (!v35);
              }

              cstdlib_strcat(*(a1 + 104), "§");
              cstdlib_strcat(*(a1 + 112), "§");
              cstdlib_strcat(*(a1 + 112), __s1);
              if (cstdlib_strlen(__s1) < v31 && cstdlib_strlen(__s1) != v31)
              {
                v36 = 0;
                do
                {
                  cstdlib_strcat(*(a1 + 112), "~");
                  ++v36;
                }

                while (v31 - cstdlib_strlen(__s1) > v36);
              }

              cstdlib_strcat(*(a1 + 112), "§");
              v24 = HIWORD(v55);
              LODWORD(PreviousUtf8Offset) = a6;
              v22 = v33;
              LODWORD(a5) = v48;
            }

            v17 = (*(*(a1 + 48) + 120))(v50, v51, v24, &v55 + 2);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }
          }

          if (a6 < v49)
          {
            v37 = &a4[a6];
            v38 = v49 - a6;
            cstdlib_strncat(*(a1 + 104), v37, v38);
            for (k = Utf8_LengthInUtf8chars(v37, v38); k; --k)
            {
              cstdlib_strcat(*(a1 + 112), " ");
            }
          }

          v40 = *(*a1 + 32);
          if (v22 > 9)
          {
            log_OutText(v40, "FE_HMOGRPH", 5, 0, "Homograph validation not OK");
            LOWORD(v55) = 0;
            return (*(*(a1 + 48) + 160))(v50, v51, v48, 7, 1, &v55, &v52 + 2);
          }

          log_OutText(v40, "FE_HMOGRPH", 5, 0, "%s L1: %s", v58, *(a1 + 104));
          v41 = *(*(a1 + 72) + 120);
          v42 = *(a1 + 104);
          v43 = cstdlib_strlen(v42);
          v21 = v41(*(a1 + 56), *(a1 + 64), 0, v42, v43);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L2: %s", v58, *(a1 + 112));
          v44 = *(*(a1 + 72) + 120);
          v45 = *(a1 + 112);
          v46 = cstdlib_strlen(v45);
          v21 = v44(*(a1 + 56), *(a1 + 64), 1, v45, v46);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v21 = (*(*(a1 + 72) + 80))(*(a1 + 56), *(a1 + 64), v58);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v17 = (*(*(a1 + 72) + 128))(*(a1 + 56), *(a1 + 64), 0, &v54, &v53 + 2);
          if ((v17 & 0x80000000) == 0)
          {
            v54[HIWORD(v53)] = 0;
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O1: %s", v58, v54);
            if (cstdlib_strstr(v54, "§"))
            {
              log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Homograph validation not OK");
              LOWORD(v55) = 0;
              return (*(*(a1 + 48) + 160))(v50, v51, v48, 7, 1, &v55, &v52 + 2);
            }
          }
        }
      }
    }
  }

  return v17;
}

uint64_t fe_hmogrph_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 488);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2314215432;
  }
}

uint64_t fe_hmogrph_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2314215425;
  }

  result = 0;
  *a2 = &IFeHmogrph;
  return result;
}

uint64_t fe_hmogrph_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2314215431;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t com_useStatHmogrph(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  result = stat_hmogrph_getBrokerString(a1, v6, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    if ((brk_DataOpenEx(*(a1 + 24), v6, 1, &v5) & 0x80000000) != 0)
    {
      log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph data not found", 0, v5);
    }

    else
    {
      *a2 = 1;
      result = brk_DataClose(*(a1 + 24), v5);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t stat_hmogrph_getBrokerString(uint64_t a1, _BYTE *a2, size_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = 0;
  __s2 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__s1 = 0u;
  v11 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v8);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "stathmogrph_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v8);
      v7 = brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, a3);
      return v7 & (v7 >> 31);
    }
  }

  return result;
}

uint64_t com_getUnicodeOrth(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  cstdlib_strcpy(__dst, "stathmogrph_");
  cstdlib_strcat(__dst, a4);
  v10 = (*(a1 + 96))(a2, a3, "fecfg", __dst, &__c[3], &__c[1], __c);
  result = 0;
  if ((v10 & 0x80000000) == 0 && *&__c[1])
  {
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    *a5 = **&__c[3];
    return 1;
  }

  return result;
}

uint64_t hlp_addWord(uint64_t a1, const char *a2, int a3, int a4, const char *a5, const char *a6, char *a7, unsigned int a8, const char *a9, uint64_t *a10, const char *a11, const char *a12, uint64_t a13)
{
  v16 = a4;
  v17 = a3;
  v19 = a1;
  v20 = a10;
  if (!*(a13 + 8))
  {
LABEL_6:
    v23 = *(a13 + 10);
    if (*(a13 + 10))
    {
      v24 = *a13;
      if (*(a13 + 8) + 2 <= v23)
      {
        __src = a7;
      }

      else
      {
        v25 = heap_Realloc(*(a1 + 8), v24, (v23 << 6) + 1280);
        if (!v25)
        {
          goto LABEL_57;
        }

        __src = a7;
        *a13 = v25;
        cstdlib_memset((v25 + (*(a13 + 8) << 6)), 0, 0x540uLL);
        *(a13 + 10) += 20;
        v24 = *a13;
      }
    }

    else
    {
      v26 = heap_Calloc(*(a1 + 8), 1, 3201);
      *a13 = v26;
      if (!v26)
      {
        goto LABEL_57;
      }

      v24 = v26;
      __src = a7;
      *(a13 + 10) = 50;
    }

    v27 = v24 + (*(a13 + 8) << 6);
    v28 = *(v19 + 8);
    v29 = cstdlib_strlen(a2);
    v30 = heap_Calloc(v28, 1, (v29 + 4));
    *v27 = v30;
    if (v30)
    {
      cstdlib_strcpy(v30, a2);
      *(v27 + 32) = 0;
      *(v27 + 36) = hlp_doesWordEndInComma(a2);
      v31 = *(v19 + 8);
      v32 = cstdlib_strlen(a2);
      v33 = heap_Calloc(v31, 1, (v32 + 4));
      *(v27 + 40) = v33;
      if (v33)
      {
        v34 = v33;
        v35 = *v27;
        if (*(v27 + 36) == 1)
        {
          v36 = cstdlib_strlen(*v27);
          cstdlib_strncpy(v34, v35, (v36 - 1));
        }

        else
        {
          cstdlib_strcpy(v33, *v27);
        }

        v68 = *(v19 + 8);
        v69 = cstdlib_strlen(a5);
        v70 = heap_Calloc(v68, 1, (v69 + 1));
        *(v27 + 16) = v70;
        if (v70)
        {
          cstdlib_strcpy(v70, a5);
          v71 = heap_Calloc(*(v19 + 8), 1, a8 + 1);
          *(v27 + 24) = v71;
          if (v71)
          {
            cstdlib_strncpy(v71, __src, a8);
            v72 = *(a10 + 4);
            *(v27 + 56) = v72;
            v73 = heap_Calloc(*(v19 + 8), v72, 16);
            *(v27 + 48) = v73;
            if (v73)
            {
              v74 = a9;
              if (!*(a10 + 4))
              {
LABEL_56:
                v67 = 0;
                *(v27 + 8) = v17;
                *(v27 + 10) = v16;
                ++*(a13 + 8);
                return v67;
              }

              v75 = 0;
              v76 = *a10;
              while (1)
              {
                v77 = v76 + 32 * v75;
                v78 = *(v77 + 8);
                v79 = *(v27 + 48) + 16 * v75;
                *(v79 + 8) = v78;
                *(v79 + 10) = *(v77 + 24);
                if (!v78)
                {
                  return 0;
                }

                v80 = heap_Calloc(*(v19 + 8), v78, 56);
                __srcb = (16 * v75);
                *(*(v27 + 48) + 16 * v75) = v80;
                if (!v80)
                {
                  break;
                }

                v76 = *a10;
                v81 = *a10 + 32 * v75;
                if (*(v81 + 8))
                {
                  v82 = 0;
                  v83 = 0;
                  v103 = 32 * v75;
                  v105 = v75;
                  do
                  {
                    v84 = *(v19 + 8);
                    v85 = cstdlib_strlen(*(*v81 + 8 * v83));
                    v86 = heap_Calloc(v84, 1, (v85 + 1));
                    *(*&__srcb[*(v27 + 48)] + v82) = v86;
                    if (!v86)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v86, *(*(*a10 + v103) + 8 * v83));
                    *(*&__srcb[*(v27 + 48)] + v82 + 8) = *(*(*a10 + 32 * v105 + 16) + 2 * v83);
                    v87 = *(v19 + 8);
                    v88 = cstdlib_strlen(v74);
                    v89 = heap_Calloc(v87, 1, (v88 + 1));
                    *(*&__srcb[*(v27 + 48)] + v82 + 16) = v89;
                    if (!v89)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v89, v74);
                    v90 = *(v19 + 8);
                    v91 = cstdlib_strlen(a11);
                    v92 = heap_Calloc(v90, 1, (v91 + 1));
                    *(*&__srcb[*(v27 + 48)] + v82 + 24) = v92;
                    if (!v92)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v92, a11);
                    v93 = *(v19 + 8);
                    v94 = cstdlib_strlen(a12);
                    v95 = heap_Calloc(v93, 1, (v94 + 1));
                    *(*&__srcb[*(v27 + 48)] + v82 + 32) = v95;
                    if (!v95)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v95, a12);
                    v96 = *(v19 + 8);
                    v97 = cstdlib_strlen(a6);
                    v98 = heap_Calloc(v96, 1, (v97 + 1));
                    *(*&__srcb[*(v27 + 48)] + v82 + 40) = v98;
                    if (!v98)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v98, a6);
                    ++v83;
                    v76 = *a10;
                    v75 = v105;
                    v81 = *a10 + 32 * v105;
                    v82 += 56;
                    v74 = a9;
                  }

                  while (v83 < *(v81 + 8));
                }

                if (++v75 >= *(a10 + 4))
                {
                  goto LABEL_56;
                }
              }
            }
          }
        }
      }
    }

LABEL_57:
    v67 = 2314215434;
    v99 = *(v19 + 32);
    goto LABEL_58;
  }

  v21 = *a13 + 48;
  v22 = *(a13 + 8);
  while (*(v21 - 40) != a3 || *(v21 - 38) != a4)
  {
    v21 += 64;
    if (!--v22)
    {
      goto LABEL_6;
    }
  }

  if (!*(v21 + 8))
  {
    return 0;
  }

  v37 = 0;
  v38 = *v21;
  v101 = a10;
  while (1)
  {
    v39 = v38 + 16 * v37;
    v40 = *v20 + 32 * v37;
    v41 = *(v40 + 8);
    v42 = *(v40 + 24);
    if (*(v39 + 10) > v42)
    {
      *(v39 + 10) = v42;
    }

    v43 = *(v39 + 8);
    v44 = v41 + v43;
    __srca = (v41 + v43);
    v45 = heap_Realloc(*(a1 + 8), *v39, 56 * __srca);
    if (!v45)
    {
      break;
    }

    v38 = *v21;
    *(*v21 + 16 * v37) = v45;
    if (v43 < v44)
    {
      v46 = 56 * v43;
      v47 = v43;
      v102 = v43;
      do
      {
        v48 = (v47 - v43);
        if (v43)
        {
          v49 = 0;
          while (cstdlib_strcmp(*(*(*v21 + 16 * v37) + v49), *(*(*v20 + 32 * v37) + 8 * v48)))
          {
            v49 += 56;
            if (v46 == v49)
            {
              goto LABEL_28;
            }
          }

          v38 = *v21;
          v65 = *(*v21 + 16 * v37) + v49;
          v66 = *(*(*v20 + 32 * v37 + 16) + 2 * v48);
          if (*(v65 + 8) > v66)
          {
            *(v65 + 8) = v66;
          }
        }

        else
        {
LABEL_28:
          v50 = *(a1 + 8);
          v51 = cstdlib_strlen(*(*(*v20 + 32 * v37) + 8 * v48));
          v52 = heap_Calloc(v50, 1, (v51 + 1));
          *(*(*v21 + 16 * v37) + 56 * *(*v21 + 16 * v37 + 8)) = v52;
          if (!v52)
          {
            v67 = 2314215434;
            v99 = *(a1 + 32);
            goto LABEL_58;
          }

          cstdlib_strcpy(v52, *(*(*v20 + 32 * v37) + 8 * v48));
          *(*(*v21 + 16 * v37) + 56 * *(*v21 + 16 * v37 + 8) + 8) = *(*(*v20 + 32 * v37 + 16) + 2 * v48);
          v53 = *(a1 + 8);
          v54 = cstdlib_strlen(a9);
          v55 = heap_Calloc(v53, 1, (v54 + 1));
          *(*(*v21 + 16 * v37) + 56 * *(*v21 + 16 * v37 + 8) + 16) = v55;
          v19 = a1;
          if (!v55)
          {
            goto LABEL_57;
          }

          cstdlib_strcpy(v55, a9);
          v56 = *(a1 + 8);
          v57 = cstdlib_strlen(a11);
          v58 = heap_Calloc(v56, 1, (v57 + 1));
          *(*(*v21 + 16 * v37) + 56 * *(*v21 + 16 * v37 + 8) + 24) = v58;
          if (!v58)
          {
            goto LABEL_57;
          }

          cstdlib_strcpy(v58, a11);
          v59 = *(a1 + 8);
          v60 = cstdlib_strlen(a12);
          v61 = heap_Calloc(v59, 1, (v60 + 1));
          *(*(*v21 + 16 * v37) + 56 * *(*v21 + 16 * v37 + 8) + 32) = v61;
          if (!v61)
          {
            goto LABEL_57;
          }

          cstdlib_strcpy(v61, a12);
          v62 = *(a1 + 8);
          v63 = cstdlib_strlen(a6);
          v64 = heap_Calloc(v62, 1, (v63 + 1));
          *(*(*v21 + 16 * v37) + 56 * *(*v21 + 16 * v37 + 8) + 40) = v64;
          if (!v64)
          {
            goto LABEL_57;
          }

          cstdlib_strcpy(v64, a6);
          v38 = *v21;
          ++*(*v21 + 16 * v37 + 8);
          v20 = a10;
          v43 = v102;
        }

        ++v47;
      }

      while (v47 != __srca);
    }

    v67 = 0;
    if (++v37 >= *(v21 + 8))
    {
      return v67;
    }
  }

  v67 = 2314215434;
  v99 = *(a1 + 32);
LABEL_58:
  log_OutPublic(v99, "FE_HMOGRPH", 37000, 0, v101);
  return v67;
}

BOOL hlp_doesWordEndInComma(const char *a1)
{
  result = 0;
  if (a1)
  {
    if (cstdlib_strlen(a1))
    {
      v2 = cstdlib_strlen(a1);
      if (cstdlib_strstr(",.:?!;()", &a1[v2 - 1]))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t hlp_do_add(uint64_t *a1, uint64_t a2, const char *a3, int a4, int a5, const char *a6, const char *a7, const char *a8, const char *a9, char *a10, unsigned __int16 a11)
{
  if (!*(a2 + 8))
  {
    return 166731781;
  }

  v15 = heap_Calloc(*(*a1 + 8), 1, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *(a2 + 8);
    *(v15 + 10) = v17;
    *(v15 + 8) = v17;
    v18 = heap_Calloc(*(*a1 + 8), v17, 32);
    *v16 = v18;
    if (v18)
    {
      v44 = a5;
      v45 = a6;
      if (!*(a2 + 8))
      {
LABEL_22:
        hlp_addWord(*a1, a3, a4, v44, a9, v45, a10, a11, a9, v16, a7, a8, (a1 + 1));
LABEL_26:
        stat_hmogrph_freeCandidatePhons(*a1, v16);
        heap_Free(*(*a1 + 8), v16);
        return 0;
      }

      v19 = 0;
      while (1)
      {
        v20 = *a2 + (v19 << 6);
        v23 = *(v20 + 48);
        v22 = (v20 + 48);
        v21 = v23;
        v24 = *(v23 + 10);
        v25 = (v18 + 32 * v19);
        v25[12] = v24;
        v26 = *(v23 + 8);
        if (*(v23 + 8))
        {
          v27 = 0;
          v28 = (*v21 + 8);
          do
          {
            v29 = *v28;
            v28 += 28;
            if (v29 == v24)
            {
              ++v27;
            }

            --v26;
          }

          while (v26);
        }

        else
        {
          v27 = 0;
        }

        v25[4] = v27;
        v25[5] = v27;
        v30 = heap_Calloc(*(*a1 + 8), v27, 8);
        v31 = *v16;
        *(*v16 + 32 * v19) = v30;
        v32 = *a1;
        if (!v30)
        {
          break;
        }

        v33 = heap_Calloc(*(v32 + 8), *(v31 + 32 * v19 + 10), 2);
        v18 = *v16;
        *(*v16 + 32 * v19 + 16) = v33;
        if (!v33)
        {
          goto LABEL_24;
        }

        v34 = *v22;
        if (*(*v22 + 4))
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = *v34;
          do
          {
            if (*(v38 + v35 + 8) == *(v18 + 32 * v19 + 24))
            {
              v39 = *(*a1 + 8);
              v40 = cstdlib_strlen(*(v38 + v35));
              *(*(*v16 + 32 * v19) + 8 * v37) = heap_Alloc(v39, (v40 + 1));
              v41 = *(*(*v16 + 32 * v19) + 8 * v37);
              if (!v41)
              {
                goto LABEL_24;
              }

              cstdlib_strcpy(v41, *(**v22 + v35));
              v34 = *v22;
              v38 = **v22;
              v18 = *v16;
              *(*(*v16 + 32 * v19 + 16) + 2 * v37++) = *(v38 + v35 + 8);
            }

            ++v36;
            v35 += 56;
          }

          while (v36 < *(v34 + 4));
        }

        if (++v19 >= *(a2 + 8))
        {
          goto LABEL_22;
        }
      }

      v43 = *(v32 + 32);
    }

    else
    {
LABEL_24:
      v43 = *(*a1 + 32);
    }

    log_OutPublic(v43, "FE_HMOGRPH", 37000, 0);
    goto LABEL_26;
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
  return 2314215434;
}

void *stat_hmogrph_freeCandidatePhons(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = 0;
      do
      {
        v6 = v3 + 32 * v5;
        v7 = *v6;
        if (*v6)
        {
          if (*(v6 + 8))
          {
            v8 = 0;
            do
            {
              if (*(*v6 + 8 * v8))
              {
                heap_Free(v4[1], *(*v6 + 8 * v8));
                *(*(*a2 + 32 * v5) + 8 * v8) = 0;
                v3 = *a2;
              }

              ++v8;
              v6 = v3 + 32 * v5;
            }

            while (v8 < *(v6 + 8));
            v7 = *v6;
          }

          heap_Free(v4[1], v7);
          v3 = *a2;
          *(*a2 + 32 * v5) = 0;
        }

        if (*(v3 + 32 * v5 + 16))
        {
          heap_Free(v4[1], *(v3 + 32 * v5 + 16));
          v3 = *a2;
          *(*a2 + 32 * v5 + 16) = 0;
        }

        ++v5;
      }

      while (v5 < *(a2 + 8));
    }

    result = heap_Free(v4[1], v3);
    *a2 = 0;
  }

  return result;
}

uint64_t hlp_prepare_phons(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const char *a6, uint64_t a7, const char *a8, const char *a9, const char *a10, unsigned __int16 a11, unsigned __int16 a12, unsigned __int16 a13, const char *a14, char *a15, unsigned __int16 a16)
{
  v85 = 0;
  v86 = 0;
  v82 = 0;
  v88[0] = 0;
  v24 = heap_Calloc(*(*a4 + 8), 1, 16);
  if (!v24)
  {
    v63 = 2314215434;
    log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0);
    return v63;
  }

  v25 = v24;
  v87 = 0;
  v84 = 0;
  v83 = 0;
  *(v24 + 8) = 65537;
  v26 = heap_Calloc(*(*a4 + 8), 1, 32);
  *v25 = v26;
  if (!v26 || (*(v26 + 8) = 0, v27 = *(*a4 + 8), v28 = cstdlib_strlen(a6), (v29 = heap_Calloc(v27, 1, v28 + 1)) == 0))
  {
    v63 = 2314215434;
    log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0);
    v30 = 0;
    goto LABEL_67;
  }

  v30 = v29;
  v77 = a6;
  v31 = (*(*(a1 + 48) + 136))(a2, a3, a13, v88);
  if ((v31 & 0x80000000) != 0)
  {
    v63 = v31;
LABEL_67:
    if (*v25)
    {
      heap_Free(*(*a4 + 8), *v25);
    }

    heap_Free(*(*a4 + 8), v25);
    if (v30)
    {
      goto LABEL_92;
    }

    return v63;
  }

  v32 = v88[0];
  HIWORD(v84) = v88[0];
  if (!v88[0])
  {
    v63 = 0;
    v64 = 0;
    goto LABEL_76;
  }

  v80 = 0;
  v78 = 0;
  v79 = 0;
  v81 = 0;
  v33 = a7 - 8;
  v75 = 1;
  v76 = 1;
  v72 = a5;
  v73 = v30;
  v74 = v33;
  while (1)
  {
    v34 = (*(*(a1 + 48) + 168))(a2, a3, v32, 0, 1, &v87, &v83);
    if ((v34 & 0x80000000) != 0)
    {
LABEL_73:
      v63 = v34;
      goto LABEL_74;
    }

    if (v87 == 17)
    {
      break;
    }

    if (v85)
    {
      v37 = v81 == 1;
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      v34 = hlp_addWord(*a4, v30, HIWORD(v82), v82, v85, a8, a15, a16, a14, v25, a9, a10, a5);
      if ((v34 & 0x80000000) != 0)
      {
        goto LABEL_73;
      }

      v81 = 0;
    }

    v34 = (*(*(a1 + 48) + 136))(a2, a3, HIWORD(v84), &v84 + 2);
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_62:
    v32 = HIWORD(v84);
    if (!HIWORD(v84))
    {
      goto LABEL_63;
    }
  }

  v34 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v84), 1, 1, &v82 + 2, &v83);
  if ((v34 & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  v34 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v84), 2, 1, &v82, &v83);
  if ((v34 & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  v36 = v78;
  v35 = v79;
  if (HIWORD(v82) != v79 || v82 != v78)
  {
    if (v75)
    {
      v36 = v82;
      v35 = HIWORD(v82);
    }

    else
    {
      v34 = hlp_addWord(*a4, v30, v79, v78, v85, a8, a15, a16, a14, v25, a9, a10, a5);
      if ((v34 & 0x80000000) != 0)
      {
        goto LABEL_73;
      }

      ++v76;
      v35 = HIWORD(v82);
      v36 = v82;
    }

    v75 = 0;
    v38 = *v25;
    *(v38 + 8) = 0;
    *(v38 + 24) = -1;
    v81 = 1;
  }

  v79 = v35;
  cstdlib_strncpy(v30, &v77[v35], v36 - v35);
  v30[v82 - HIWORD(v82)] = 0;
  if (HIWORD(v82) >= a11 && v82 <= a12)
  {
    v78 = v36;
    v39 = *(*v25 + 8);
    *(*v25 + 8) = v39 + 1;
    v34 = (*(*(a1 + 48) + 176))(a2, a3, HIWORD(v84), 3, &v86, &v83);
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_73;
    }

    v34 = (*(*(a1 + 48) + 176))(a2, a3, HIWORD(v84), 5, &v85, &v83);
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_73;
    }

    v34 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v84), 7, 1, &v84, &v83);
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_73;
    }

    v40 = *v25;
    v41 = *(*v25 + 10);
    if (*(*v25 + 10))
    {
      if (v39 + 1 < v41)
      {
        v42 = *(v40 + 16);
        goto LABEL_41;
      }

      v46 = heap_Realloc(*(*a4 + 8), *v40, 8 * v41 + 80);
      if (v46)
      {
        v47 = *v25;
        *v47 = v46;
        v42 = heap_Realloc(*(*a4 + 8), *(v47 + 16), 2 * *(v47 + 10) + 20);
        if (v42)
        {
          v40 = *v25;
          *(v40 + 16) = v42;
          *(v40 + 10) += 10;
          goto LABEL_41;
        }
      }

LABEL_94:
      v63 = 2314215434;
      v45 = *a4;
LABEL_97:
      log_OutPublic(*(v45 + 32), "FE_HMOGRPH", 37000, 0);
LABEL_74:
      v64 = v80;
      goto LABEL_76;
    }

    *(v40 + 10) = 10;
    v43 = heap_Calloc(*(*a4 + 8), 10, 8);
    v44 = *v25;
    **v25 = v43;
    v45 = *a4;
    if (!v43)
    {
      v63 = 2314215434;
      goto LABEL_97;
    }

    v42 = heap_Calloc(*(v45 + 8), *(v44 + 10), 2);
    v40 = *v25;
    *(*v25 + 16) = v42;
    if (!v42)
    {
      goto LABEL_94;
    }

LABEL_41:
    if (v80 <= *(v40 + 8))
    {
      v48 = *(v40 + 8);
    }

    else
    {
      v48 = v80;
    }

    v80 = v48;
    v49 = v84;
    *(v42 + 2 * v39) = v84;
    if (*(v40 + 24) > v49)
    {
      *(v40 + 24) = v49;
    }

    v50 = *(v33 + 8 * v76);
    v51 = *(*v40 + 8 * v39);
    if (v50)
    {
      if (v51)
      {
        v52 = cstdlib_strlen(v51);
        v53 = v74;
        if (v52 >= cstdlib_strlen(*(v74 + 8 * v76)))
        {
LABEL_56:
          cstdlib_strcpy(*(**v25 + 8 * v39), *(v53 + 8 * v76));
          v30 = v73;
          v33 = v53;
          goto LABEL_61;
        }

        v54 = *(**v25 + 8 * v39);
        v50 = *(v74 + 8 * v76);
      }

      else
      {
        v54 = 0;
      }

      v57 = *(*a4 + 8);
      v58 = cstdlib_strlen(v50);
      v59 = heap_Realloc(v57, v54, (v58 + 1));
      if (!v59)
      {
        v63 = 2314215434;
        log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0);
        v64 = v80;
        v30 = v73;
        goto LABEL_76;
      }

      *(**v25 + 8 * v39) = v59;
      v53 = v74;
      goto LABEL_56;
    }

    if (v51)
    {
      v55 = cstdlib_strlen(v51);
      v30 = v73;
      if (v55 >= cstdlib_strlen(v86))
      {
LABEL_60:
        cstdlib_strcpy(*(**v25 + 8 * v39), v86);
        v33 = v74;
LABEL_61:
        v34 = (*(*(a1 + 48) + 136))(a2, a3, HIWORD(v84), &v84 + 2);
        a5 = v72;
        if ((v34 & 0x80000000) != 0)
        {
          goto LABEL_73;
        }

        goto LABEL_62;
      }

      v56 = *(**v25 + 8 * v39);
    }

    else
    {
      v56 = 0;
      v30 = v73;
    }

    v60 = *(*a4 + 8);
    v61 = cstdlib_strlen(v86);
    v62 = heap_Realloc(v60, v56, (v61 + 1));
    if (!v62)
    {
      goto LABEL_94;
    }

    *(**v25 + 8 * v39) = v62;
    goto LABEL_60;
  }

LABEL_63:
  v63 = 0;
  if (!v85)
  {
    goto LABEL_74;
  }

  v64 = v80;
  if (v81 == 1)
  {
    v63 = hlp_addWord(*a4, v30, HIWORD(v82), v82, v85, a8, a15, a16, a14, v25, a9, a10, a5);
  }

LABEL_76:
  v65 = *a4;
  v66 = *v25;
  if (*v25)
  {
    if (*(v25 + 8))
    {
      v67 = 0;
      do
      {
        v68 = *(v66 + 32 * v67);
        if (v68)
        {
          if (v64)
          {
            v69 = 0;
            do
            {
              v70 = *(*(*v25 + 32 * v67) + v69);
              if (v70)
              {
                heap_Free(*(v65 + 8), v70);
                *(*(*v25 + 32 * v67) + v69) = 0;
              }

              v69 += 8;
            }

            while (8 * v64 != v69);
            v68 = *(*v25 + 32 * v67);
          }

          heap_Free(*(v65 + 8), v68);
          v66 = *v25;
          *(*v25 + 32 * v67) = 0;
        }

        if (*(v66 + 32 * v67 + 16))
        {
          heap_Free(*(v65 + 8), *(v66 + 32 * v67 + 16));
          v66 = *v25;
          *(*v25 + 32 * v67 + 16) = 0;
        }

        ++v67;
      }

      while (v67 < *(v25 + 8));
    }

    heap_Free(*(v65 + 8), v66);
    *v25 = 0;
    v65 = *a4;
  }

  heap_Free(*(v65 + 8), v25);
LABEL_92:
  heap_Free(*(*a4 + 8), v30);
  return v63;
}

uint64_t hlp_merge_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const char *a5, char *a6, const char *a7, const char *a8, const char *a9, unsigned __int16 a10, const char *a11, char *a12, unsigned __int16 a13)
{
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v21 = (*(*(a1 + 48) + 168))(a2, a3, a10, 1, 1, &v57, &v57 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v21 = (*(*(a1 + 48) + 168))(a2, a3, a10, 2, 1, &v56, &v57 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v21 = (*(*(a1 + 48) + 176))(a2, a3, a10, 3, &v59, &v57 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  __s = a6;
  ChineseUTFCharNum = utf8_GetChineseUTFCharNum(a5, v56);
  v51 = utf8_GetChineseUTFCharNum(a5, v57);
  v22 = heap_Calloc(*(*a4 + 8), 1, 16);
  v23 = *a4;
  if (v22)
  {
    v24 = v22;
    v50 = a7;
    v25 = *(v23 + 8);
    v26 = cstdlib_strlen(__s);
    v27 = heap_Calloc(v25, 1, (v26 + 4));
    v28 = *a4;
    if (v27)
    {
      v29 = v27;
      v48 = a8;
      v30 = (ChineseUTFCharNum - v51);
      v55 = heap_Calloc(*(v28 + 8), 1, 8 * v30);
      if (!v55)
      {
        v42 = 2314215434;
        log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0);
        v38 = 0;
        goto LABEL_23;
      }

      __dst = v29;
      v54 = a4;
      v47 = v24;
      v31 = extstdlib_strtok_r(v59, ".", &v58);
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        do
        {
          if (cstdlib_strcmp(v32, "*"))
          {
            v34 = a5;
            v35 = *(*v54 + 8);
            v36 = cstdlib_strlen(v32);
            v37 = heap_Calloc(v35, 1, (v36 + 1));
            v38 = v55;
            *(v55 + 8 * v33) = v37;
            if (!v37)
            {
              v42 = 2314215434;
              a4 = v54;
              log_OutPublic(*(*v54 + 32), "FE_HMOGRPH", 37000, 0);
              v24 = v47;
LABEL_22:
              v29 = __dst;
              goto LABEL_23;
            }

            cstdlib_strcpy(v37, v32);
            v39 = *(v55 + 8 * v33);
            *(v39 + cstdlib_strlen(v32)) = 0;
            a5 = v34;
          }

          v32 = extstdlib_strtok_r(0, ".", &v58);
          ++v33;
        }

        while (v32);
      }

      cstdlib_strcpy(__dst, __s);
      v45 = v56;
      v46 = v57;
      a4 = v54;
      v40 = a5;
      v38 = v55;
      v41 = hlp_prepare_phons(a1, a2, a3, v54, v47, v40, v55, v50, v48, a9, v57, v56, a10, a11, a12, a13);
      if ((v41 & 0x80000000) != 0)
      {
        v42 = v41;
        v24 = v47;
        goto LABEL_22;
      }

      v29 = __dst;
      v42 = hlp_do_add(v54, v47, __dst, v46, v45, v50, v48, a9, a11, a12, a13);
      v24 = v47;
LABEL_23:
      heap_Free(*(*a4 + 8), v29);
      if (v38)
      {
        if (ChineseUTFCharNum != v51)
        {
          v44 = v38;
          do
          {
            if (*v44)
            {
              heap_Free(*(*a4 + 8), *v44);
              *v44 = 0;
            }

            ++v44;
            --v30;
          }

          while (v30);
        }

        heap_Free(*(*a4 + 8), v38);
      }
    }

    else
    {
      v42 = 2314215434;
      log_OutPublic(*(v28 + 32), "FE_HMOGRPH", 37000, 0);
    }

    stat_hmogrph_freeNewSentData(a4, v24);
    heap_Free(*(*a4 + 8), v24);
  }

  else
  {
    v42 = 2314215434;
    log_OutPublic(*(v23 + 32), "FE_HMOGRPH", 37000, 0);
  }

  return v42;
}

uint64_t stat_hmogrph_freeNewSentData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 10))
  {
    v4 = 0;
    do
    {
      v5 = *a2 + (v4 << 6);
      if (*v5)
      {
        heap_Free(*(*a1 + 8), *v5);
        *v5 = 0;
      }

      v6 = *(v5 + 16);
      if (v6)
      {
        heap_Free(*(*a1 + 8), v6);
        *(v5 + 16) = 0;
      }

      v7 = *(v5 + 24);
      if (v7)
      {
        heap_Free(*(*a1 + 8), v7);
        *(v5 + 24) = 0;
      }

      v8 = *(v5 + 40);
      if (v8)
      {
        heap_Free(*(*a1 + 8), v8);
        *(v5 + 40) = 0;
      }

      v9 = *(v5 + 48);
      if (v9)
      {
        v10 = *(v5 + 56);
        if (v10)
        {
          for (i = 0; i < v10; ++i)
          {
            v12 = v9 + 16 * i;
            v13 = *v12;
            if (*v12)
            {
              if (*(v12 + 8))
              {
                v14 = 0;
                v15 = 0;
                do
                {
                  v16 = *(v13 + v14);
                  if (v16)
                  {
                    heap_Free(*(*a1 + 8), v16);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14) = 0;
                  }

                  v17 = *(v13 + v14 + 16);
                  if (v17)
                  {
                    heap_Free(*(*a1 + 8), v17);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 16) = 0;
                  }

                  v18 = *(v13 + v14 + 24);
                  if (v18)
                  {
                    heap_Free(*(*a1 + 8), v18);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 24) = 0;
                  }

                  v19 = *(v13 + v14 + 32);
                  if (v19)
                  {
                    heap_Free(*(*a1 + 8), v19);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 32) = 0;
                  }

                  v20 = *(v13 + v14 + 40);
                  if (v20)
                  {
                    heap_Free(*(*a1 + 8), v20);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 40) = 0;
                  }

                  ++v15;
                  v14 += 56;
                }

                while (v15 < *(v9 + 16 * i + 8));
              }

              heap_Free(*(*a1 + 8), v13);
              v9 = *(v5 + 48);
              *(v9 + 16 * i) = 0;
              v10 = *(v5 + 56);
            }
          }
        }

        heap_Free(*(*a1 + 8), v9);
        *(v5 + 48) = 0;
      }

      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  if (*a2)
  {
    heap_Free(*(*a1 + 8), *a2);
    *a2 = 0;
  }

  return 0;
}

uint64_t stat_hmogrph_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v8 = a2;
  v103 = 0;
  *v104 = 0;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  v98 = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v89 = 0;
  *(a5 + 8) = 0;
  v10 = a5 + 8;
  *(a5 + 16) = 0;
  v11 = (*(a2 + 104))(a3, a4, 1, 0, &v104[1]);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = v11;
    goto LABEL_107;
  }

  v12 = (*(v8 + 184))(a3, a4, v104[1], 0, &v103);
  if ((v12 & 0x80000000) != 0 || v103 != 1 || (v12 = (*(v8 + 176))(a3, a4, v104[1], 0, &v102, &v103 + 2), (v12 & 0x80000000) != 0) || HIWORD(v103) < 2u)
  {
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_107;
    }

    return v12;
  }

  log_OutText(*(*v5 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph: processing=%s", v102);
  v13 = heap_Calloc(*(*v5 + 8), 1, 1024);
  if (!v13)
  {
    v12 = 2314215434;
    log_OutPublic(*(*v5 + 32), "FE_HMOGRPH", 37000, 0);
    goto LABEL_107;
  }

  v14 = v13;
  v15 = cstdlib_strlen(v102);
  v16 = heap_Calloc(*(*v5 + 8), 1, (v15 + 1));
  if (!v16)
  {
    v12 = 2314215434;
    log_OutPublic(*(*v5 + 32), "FE_HMOGRPH", 37000, 0);
    v86 = 0;
    v87 = 0;
    v17 = 0;
    v85 = 0;
    goto LABEL_141;
  }

  v12 = (*(v8 + 104))(a3, a4, 2, v104[1], v104);
  v17 = 0;
  v87 = 0;
  if ((v12 & 0x80000000) != 0)
  {
    v85 = 0;
    v86 = 0;
    goto LABEL_141;
  }

  v18 = v104[0];
  v85 = 0;
  v86 = 0;
  if (!v104[0])
  {
    goto LABEL_141;
  }

  v83 = 0;
  v85 = 0;
  v74 = 0;
  v17 = 0;
  v86 = 0;
  __s = v16;
  v76 = v14;
  while (1)
  {
    v88 = 0;
    v19 = (*(v8 + 168))(a3, a4, v18, 0, 1, &v100, &v103 + 2);
    if ((v19 & 0x80000000) != 0)
    {
      v87 = 0;
      goto LABEL_115;
    }

    if (v100 <= 0xA && ((1 << v100) & 0x610) != 0)
    {
      break;
    }

LABEL_94:
    v12 = (*(v8 + 120))(a3, a4, v104[0], v104);
    if ((v12 & 0x80000000) == 0)
    {
      v18 = v104[0];
      if (v104[0])
      {
        continue;
      }
    }

    v87 = 0;
    goto LABEL_139;
  }

  v19 = (*(v8 + 168))(a3, a4, v104[0], 1, 1, &v99 + 2, &v103 + 2);
  if ((v19 & 0x80000000) != 0 || (v19 = (*(v8 + 168))(a3, a4, v104[0], 2, 1, &v99, &v103 + 2), (v19 & 0x80000000) != 0))
  {
LABEL_112:
    v87 = 0;
    v17 = 0;
LABEL_113:
    v85 = 0;
LABEL_114:
    v86 = 0;
LABEL_115:
    v12 = v19;
    goto LABEL_139;
  }

  if (HIWORD(v99) > v99)
  {
    v86 = 0;
    v87 = 0;
    v17 = 0;
    v85 = 0;
    v69 = 16049;
    goto LABEL_138;
  }

  cstdlib_strncpy(v16, &v102[HIWORD(v99)], v99 - HIWORD(v99));
  v16[v99 - HIWORD(v99)] = 0;
  v19 = (*(v8 + 184))(a3, a4, v104[0], 14, &v103);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_112;
  }

  if (v103 != 1)
  {
    goto LABEL_28;
  }

  v19 = (*(v8 + 176))(a3, a4, v104[0], 14, &v97, &v103 + 2);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_112;
  }

  hlp_NLUStrFind(v97, "POS", &v93, &v101 + 1);
  if (cstdlib_strstr(v97, "POI"))
  {
    LOWORD(v101) = 0;
    hlp_NLUStrFind(v97, "S_POI", &v92, &v101);
    if (v101 || (hlp_NLUStrFind(v97, "I_POI", &v92, &v101), v101))
    {
      v21 = v92;
      v22 = "_";
    }

    else
    {
      hlp_NLUStrFind(v97, "E_POI", &v92, &v101);
      if (v101)
      {
        v22 = "_";
      }

      else
      {
        v22 = "";
      }

      if (v101)
      {
        v21 = v92;
      }

      else
      {
        v21 = "";
      }
    }

    v92 = v21;
    v23 = cstdlib_strlen("poi");
    v24 = cstdlib_strlen(v22);
    v80 = v101 + v24 + v23 + 1;
    v25 = heap_Calloc(*(*v5 + 8), 1, v80);
    if (!v25)
    {
      v86 = 0;
      v87 = 0;
      v17 = 0;
      v85 = 0;
      v12 = 2314215434;
      v14 = v76;
      goto LABEL_139;
    }

    v26 = v25;
    *v25 = 0;
    cstdlib_strcat(v25, "poi");
    cstdlib_strcat(v26, v22);
    cstdlib_strncat(v26, v92, v101);
    v14 = v76;
  }

  else
  {
LABEL_28:
    v80 = 0;
    v26 = 0;
  }

  v79 = v93;
  if (v93)
  {
    v17 = 0;
    if (!v26)
    {
LABEL_34:
      v28 = heap_Calloc(*(*v5 + 8), 1, 2);
      if (v28)
      {
        v26 = v28;
        LOWORD(v101) = 1;
        *v28 = 61;
        goto LABEL_36;
      }

      v87 = 0;
LABEL_132:
      v85 = 0;
LABEL_135:
      v86 = 0;
LABEL_137:
      v69 = 8202;
LABEL_138:
      v12 = v69 | 0x89F00000;
      goto LABEL_139;
    }
  }

  else
  {
    v17 = 1;
    v27 = heap_Calloc(*(*v5 + 8), 1, 2);
    v93 = v27;
    if (!v27)
    {
      v87 = v26;
      goto LABEL_132;
    }

    *v27 = 61;
    v93[1] = 0;
    v17 = 1;
    if (!v26)
    {
      goto LABEL_34;
    }
  }

LABEL_36:
  v19 = (*(*(a1 + 48) + 176))(a3, a4, v104[0], 6, &v95, &v103 + 2);
  v87 = v26;
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_113;
  }

  v19 = (*(*(a1 + 48) + 176))(a3, a4, v104[0], 9, &v94, &v103 + 2);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_113;
  }

  v19 = (*(v8 + 184))(a3, a4, v104[0], 4, &v103);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_113;
  }

  if (v103 == 1)
  {
    v19 = (*(v8 + 176))(a3, a4, v104[0], 4, &v96, &v103 + 2);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_113;
    }
  }

  v73 = v96;
  if (v96)
  {
    v85 = 0;
    v29 = v83;
  }

  else
  {
    v30 = heap_Calloc(*(*v5 + 8), 1, 2);
    v96 = v30;
    v29 = v83;
    if (!v30)
    {
      v85 = 1;
      goto LABEL_135;
    }

    *v30 = 61;
    v96[1] = 0;
    v85 = 1;
  }

  v19 = (*(v8 + 176))(a3, a4, v104[0], 5, &v89, &v103 + 2);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_114;
  }

  v72 = v89;
  if (v89)
  {
    v86 = 0;
  }

  else
  {
    v31 = heap_Calloc(*(*v5 + 8), 1, 2);
    v89 = v31;
    if (!v31)
    {
      v86 = 1;
      goto LABEL_137;
    }

    *v31 = 61;
    *(v89 + 1) = 0;
    v86 = 1;
  }

  if (*(a1 + 144) && v100 == 9 && utf8_IsChineseLetter(v16))
  {
    v19 = hlp_merge_add(a1, a3, a4, v5, v102, v16, v96, v95, v94, v104[0], v89, v87, v80);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_115;
    }

LABEL_87:
    if (!v79)
    {
      heap_Free(*(*v5 + 8), v93);
      v93 = 0;
    }

    heap_Free(*(*v5 + 8), v87);
    if (!v73)
    {
      heap_Free(*(*v5 + 8), v96);
      v96 = 0;
    }

    v83 = v29;
    if (v72)
    {
      v86 = 0;
    }

    else
    {
      heap_Free(*(*v5 + 8), v89);
      v89 = 0;
      v86 = 1;
    }

    goto LABEL_94;
  }

  v71 = a1;
  v32 = heap_Calloc(*(*v5 + 8), 1, 16);
  if (!v32)
  {
    log_OutPublic(*(*v5 + 32), "FE_HMOGRPH", 37000, 0);
    goto LABEL_137;
  }

  v33 = v32;
  *(v32 + 8) = 655360;
  v34 = heap_Calloc(*(*v5 + 8), 10, 32);
  *v33 = v34;
  if (!v34)
  {
    v82 = 0;
    goto LABEL_126;
  }

  v35 = (*(v8 + 176))(a3, a4, v104[0], 3, &v91, &v103 + 2);
  if ((v35 & 0x80000000) == 0)
  {
    v36 = cstdlib_strstr(v91, "[SVOX]");
    v37 = v91;
    v77 = v17;
    if (v36)
    {
      v37 = v91 + 6;
      v91 += 6;
    }

    v38 = *(*v5 + 8);
    v39 = cstdlib_strlen(v37);
    v40 = heap_Alloc(v38, v39 + 1);
    if (v40)
    {
      v82 = v40;
      cstdlib_strcpy(v40, v91);
      v17 = v77;
      if (cstdlib_strlen(v91) >= v74)
      {
        v41 = (cstdlib_strlen(v91) + 1);
        if (v41 <= 4)
        {
          v42 = 4;
        }

        else
        {
          v42 = v41;
        }

        v74 = v42;
        v43 = heap_Realloc(*(*v5 + 8), v29, v42);
        if (!v43)
        {
          goto LABEL_126;
        }

        v29 = v43;
      }

      v35 = (*(v8 + 168))(a3, a4, v104[0], 7, 1, &v98, &v103 + 2);
      if ((v35 & 0x80000000) != 0)
      {
        goto LABEL_124;
      }

      v44 = 0;
      if (cstdlib_strlen(v16))
      {
        NextUtf8Offset = 0;
        v78 = v5;
        v75 = v8;
        while ((utf8_getUTF8Char(v16, NextUtf8Offset, v90) & 0x80000000) == 0)
        {
          v46 = *(v33 + 10);
          if (*(v33 + 8) >= v46)
          {
            v47 = heap_Realloc(*(*v5 + 8), *v33, 32 * v46 + 320);
            if (!v47)
            {
              goto LABEL_116;
            }

            *v33 = v47;
            *(v33 + 10) += 10;
          }

          if (!hlp_getPhonFromPhonStr(v16, NextUtf8Offset, v82, v29, &v88))
          {
            break;
          }

          *(*v33 + 32 * *(v33 + 8) + 8) = 65537;
          v48 = heap_Calloc(*(*v5 + 8), 1, 2);
          v49 = *v33;
          *(*v33 + 32 * *(v33 + 8) + 16) = v48;
          if (!v48 || (v50 = v98, *v48 = v98, *(v49 + 32 * *(v33 + 8) + 24) = v50, v51 = heap_Alloc(*(*v5 + 8), 8), (*(*v33 + 32 * *(v33 + 8)) = v51) == 0))
          {
LABEL_116:
            v14 = v76;
            v17 = v77;
            goto LABEL_126;
          }

          v52 = NextUtf8Offset;
          v53 = cstdlib_strlen(v29);
          v54 = v33;
          v55 = *(*v5 + 8);
          v56 = cstdlib_strlen(v29) + 1;
          v57 = v55;
          v33 = v54;
          v58 = heap_Alloc(v57, v56);
          v59 = 32 * *(v54 + 8);
          **(*v54 + v59) = v58;
          v60 = **(*v54 + v59);
          if (!v60)
          {
            v14 = v76;
            v17 = v77;
            v16 = __s;
            v5 = v78;
            goto LABEL_126;
          }

          v44 += v53 + 1;
          cstdlib_strcpy(v60, v29);
          v61 = *(v54 + 8) + 1;
          *(v54 + 8) = v61;
          if (v88 == 1)
          {
            v16 = __s;
            v5 = v78;
            v8 = v75;
            goto LABEL_81;
          }

          v16 = __s;
          NextUtf8Offset = utf8_GetNextUtf8Offset(__s, v52);
          v5 = v78;
          v8 = v75;
          if (NextUtf8Offset >= cstdlib_strlen(__s))
          {
            break;
          }
        }
      }

      v61 = *(v33 + 8);
LABEL_81:
      if (!v61 || v44 >= cstdlib_strlen(v91) + 1)
      {
        goto LABEL_85;
      }

      v62 = cstdlib_strlen(**(*v33 + 32 * *(v33 + 8) - 32));
      v84 = *(*v5 + 8);
      v63 = **(*v33 + 32 * *(v33 + 8) - 32);
      v64 = cstdlib_strlen(v91);
      v65 = heap_Realloc(v84, v63, v62 - v44 + v64 + 2);
      if (v65)
      {
        v66 = *(v33 + 8);
        **(*v33 + 32 * v66 - 32) = v65;
        cstdlib_strcat(**(*v33 + 32 * v66 - 32), &v91[v44 - 1]);
        v16 = __s;
LABEL_85:
        v67 = hlp_addWord(*v5, v16, HIWORD(v99), v99, v93, v96, v87, v80, v89, v33, v95, v94, v10);
        stat_hmogrph_freeCandidatePhons(*v5, v33);
        heap_Free(*(*v5 + 8), v33);
        heap_Free(*(*v5 + 8), v82);
        if ((v67 & 0x80000000) != 0)
        {
          v83 = v29;
          v12 = v67;
          v14 = v76;
          v17 = v77;
          goto LABEL_139;
        }

        v14 = v76;
        v17 = v77;
        a1 = v71;
        goto LABEL_87;
      }

      v14 = v76;
      v17 = v77;
      v16 = __s;
    }

    else
    {
      v82 = 0;
      v17 = v77;
    }

LABEL_126:
    log_OutPublic(*(*v5 + 32), "FE_HMOGRPH", 37000, 0);
    v70 = 2314215434;
    goto LABEL_127;
  }

  v82 = 0;
LABEL_124:
  v70 = v35;
LABEL_127:
  v83 = v29;
  stat_hmogrph_freeCandidatePhons(*v5, v33);
  heap_Free(*(*v5 + 8), v33);
  if (v82)
  {
    heap_Free(*(*v5 + 8), v82);
  }

  v12 = v70;
LABEL_139:
  if (v83)
  {
    heap_Free(*(*v5 + 8), v83);
  }

LABEL_141:
  heap_Free(*(*v5 + 8), v14);
  if (v16)
  {
    heap_Free(*(*v5 + 8), v16);
  }

  if ((v12 & 0x80000000) != 0)
  {
    if (v17 == 1)
    {
      heap_Free(*(*v5 + 8), v93);
      v93 = 0;
    }

    if (v87)
    {
      heap_Free(*(*v5 + 8), v87);
    }

    if (v85 == 1)
    {
      heap_Free(*(*v5 + 8), v96);
      v96 = 0;
    }

    if (v86 == 1)
    {
      heap_Free(*(*v5 + 8), v89);
      v89 = 0;
    }

LABEL_107:
    stat_hmogrph_freeSentenceData(v5);
  }

  return v12;
}

uint64_t hlp_getPhonFromPhonStr(char *a1, unsigned int a2, char *a3, char *a4, _DWORD *a5)
{
  result = 0;
  v13 = a2;
  if (a4 && a5)
  {
    v12 = 0;
    *a5 = 0;
    if (utf8_Utf8CharTo16bit(a1, &v12) && v12 - 40960 <= 0xFFFFADFF)
    {
      cstdlib_strcpy(a4, a3);
      result = 1;
      *a5 = 1;
    }

    else
    {
      utf8_GetPreviousValidUtf8Offset(a1, &v13);
      if (v13)
      {
        NextUtf8Offset = 0;
        while (1)
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(a1, NextUtf8Offset);
          result = cstdlib_strstr(a3, ".");
          if (!result)
          {
            break;
          }

          if (*result == 46)
          {
            a3 = (result + 1);
          }

          else
          {
            a3 = result;
          }

          if (NextUtf8Offset == v13)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        for (NextUtf8Offset = 0; ; ++NextUtf8Offset)
        {
          v11 = a3[NextUtf8Offset];
          if (!a3[NextUtf8Offset] || v11 == 46)
          {
            break;
          }

          a4[NextUtf8Offset] = v11;
          if (NextUtf8Offset && v11 == 125 && a4[NextUtf8Offset - 1] - 48 <= 9)
          {
            a3[NextUtf8Offset++] = 46;
            break;
          }
        }

        result = 1;
      }

      a4[NextUtf8Offset] = 0;
    }
  }

  return result;
}

uint64_t stat_hmogrph_freeSentenceData(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v2 = 0;
      do
      {
        v3 = *(a1 + 8) + (v2 << 6);
        if (*v3)
        {
          heap_Free(*(*a1 + 8), *v3);
          *v3 = 0;
        }

        v4 = *(v3 + 16);
        if (v4)
        {
          heap_Free(*(*a1 + 8), v4);
          *(v3 + 16) = 0;
        }

        v5 = *(v3 + 24);
        if (v5)
        {
          heap_Free(*(*a1 + 8), v5);
          *(v3 + 24) = 0;
        }

        v6 = *(v3 + 40);
        if (v6)
        {
          heap_Free(*(*a1 + 8), v6);
          *(v3 + 40) = 0;
        }

        v7 = *(v3 + 48);
        if (v7)
        {
          v8 = *(v3 + 56);
          if (v8)
          {
            for (i = 0; i < v8; ++i)
            {
              v10 = v7 + 16 * i;
              v11 = *v10;
              if (*v10)
              {
                if (*(v10 + 8))
                {
                  v12 = 0;
                  v13 = 0;
                  do
                  {
                    v14 = *(v11 + v12);
                    if (v14)
                    {
                      heap_Free(*(*a1 + 8), v14);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12) = 0;
                    }

                    v15 = *(v11 + v12 + 16);
                    if (v15)
                    {
                      heap_Free(*(*a1 + 8), v15);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 16) = 0;
                    }

                    v16 = *(v11 + v12 + 24);
                    if (v16)
                    {
                      heap_Free(*(*a1 + 8), v16);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 24) = 0;
                    }

                    v17 = *(v11 + v12 + 32);
                    if (v17)
                    {
                      heap_Free(*(*a1 + 8), v17);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 32) = 0;
                    }

                    v18 = *(v11 + v12 + 40);
                    if (v18)
                    {
                      heap_Free(*(*a1 + 8), v18);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 40) = 0;
                    }

                    ++v13;
                    v12 += 56;
                  }

                  while (v13 < *(v7 + 16 * i + 8));
                }

                heap_Free(*(*a1 + 8), v11);
                v7 = *(v3 + 48);
                *(v7 + 16 * i) = 0;
                v8 = *(v3 + 56);
              }
            }
          }

          heap_Free(*(*a1 + 8), v7);
          *(v3 + 48) = 0;
        }

        ++v2;
      }

      while (v2 < *(a1 + 16));
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      heap_Free(*(*a1 + 8), v19);
      *(a1 + 8) = 0;
    }

    cstdlib_memset((a1 + 8), 0, 0x10uLL);
  }

  return 0;
}

uint64_t hlp_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    cstdlib_strcpy(v6, "=");
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
  return 2314215434;
}

uint64_t hlp_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t hlp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v15 = -1;
  result = hlp_isFeatureRequired(a2, a3, a4, &v15);
  if (result)
  {
    if (cstdlib_strcmp(a6, ""))
    {
      v10 = cstdlib_strlen(a6);
      v11 = v15;
      if (v10 <= 0x40)
      {
        v13 = *(a5 + 8 * v15);
      }

      else
      {
        v12 = cstdlib_strlen(a6);
        v13 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v11), (v12 + 1));
        if (!v13)
        {
          log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
          return 2314215434;
        }

        *(a5 + 8 * v11) = v13;
      }

      v14 = a6;
    }

    else
    {
      v13 = *(a5 + 8 * v15);
      v14 = "=";
    }

    cstdlib_strcpy(v13, v14);
    return 0;
  }

  return result;
}

uint64_t hlp_wordStrLowerCase(char *a1, char *a2)
{
  *&__s[3] = 0;
  *__s = 0;
  *a2 = 0;
  if ((utf8_getUTF8Char(a1, 0, __s) & 0x80000000) == 0)
  {
    NextUtf8Offset = 0;
    do
    {
      if (cstdlib_strlen(a1) <= NextUtf8Offset)
      {
        break;
      }

      if (cstdlib_strlen(__s) == 1 && __s[0] - 65 <= 0x19)
      {
        a2[NextUtf8Offset] = __s[0] | 0x20;
      }

      else
      {
        cstdlib_strcat(a2, __s);
      }

      NextUtf8Offset = utf8_GetNextUtf8Offset(a1, NextUtf8Offset);
    }

    while ((utf8_getUTF8Char(a1, NextUtf8Offset, __s) & 0x80000000) == 0);
  }

  return 0;
}

uint64_t feat_character(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, const char *a6, char *a7)
{
  v12 = a3;
  v13 = cstdlib_strlen(*(*a2 + (a3 << 6)));
  v30 = v12;
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    v16 = v12 << 6;
    do
    {
      v15 += cstdlib_strlen(*(*a2 + v14));
      v14 += 64;
    }

    while (v16 != v14);
  }

  else
  {
    v15 = 0;
  }

  if (*(a2 + 8) <= (a3 + 1))
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = (a3 + 1);
    v19 = v18 << 6;
    do
    {
      v17 += cstdlib_strlen(*(*a2 + v19));
      ++v18;
      v19 += 64;
    }

    while (v18 < *(a2 + 8));
  }

  v20 = heap_Calloc(*(a1 + 8), 1, (v13 + v15 + v17 + 1));
  if (!v20)
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215434;
  }

  v21 = v20;
  if (!*(a2 + 8))
  {
    goto LABEL_28;
  }

  v22 = 0;
  v23 = 0;
  NextUtf8Offset = v15 + a4;
  do
  {
    cstdlib_strcat(v21, *(*a2 + v22));
    ++v23;
    v25 = *(a2 + 8);
    v22 += 64;
  }

  while (v23 < v25);
  if (v25 <= a3 || cstdlib_strlen(*(*a2 + (v30 << 6))) <= a4)
  {
    goto LABEL_28;
  }

  if (a5 < 0)
  {
    if (!NextUtf8Offset)
    {
      goto LABEL_28;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v21, NextUtf8Offset);
      NextUtf8Offset = PreviousUtf8Offset;
      v29 = ~a5 == 0;
      LOWORD(a5) = a5 + 1;
    }

    while (!v29 && PreviousUtf8Offset);
    if (a5)
    {
      goto LABEL_28;
    }
  }

  else if (a5)
  {
    while (NextUtf8Offset != cstdlib_strlen(v21))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(v21, NextUtf8Offset);
      v26 = a5--;
      if (v26 <= 1)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_28;
  }

LABEL_27:
  if ((utf8_getUTF8Char(v21, NextUtf8Offset, a7) & 0x80000000) != 0)
  {
LABEL_28:
    cstdlib_strcpy(a7, a6);
  }

  heap_Free(*(a1 + 8), v21);
  return 0;
}

uint64_t feat_colloc(unsigned __int16 *a1, unsigned int a2, char *__s1)
{
  v4 = a2;
  if (!a2)
  {
LABEL_10:
    v10 = 78;
    v9 = 82;
    goto LABEL_12;
  }

  if (!cstdlib_strcmp(__s1, *(*a1 + 40)))
  {
    v10 = 76;
    v9 = 66;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 104;
  do
  {
    if (v4 - 1 == v6)
    {
      goto LABEL_10;
    }

    v8 = cstdlib_strcmp(__s1, *(*a1 + v7));
    v7 += 64;
    ++v6;
  }

  while (v8);
  if (v6 >= v4)
  {
    v9 = 82;
  }

  else
  {
    v9 = 66;
  }

  v10 = 76;
LABEL_12:
  while (1)
  {
    LOWORD(v4) = v4 + 1;
    if (a1[4] <= v4)
    {
      break;
    }

    if (!cstdlib_strcmp(__s1, *(*a1 + (v4 << 6) + 40)))
    {
      return v9;
    }
  }

  return v10;
}

uint64_t feat_word(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = (a3 + a2);
  if (a3 + a2 >= 0 && v4 < *(a1 + 8))
  {
    return *(*a1 + (v4 << 6) + 40);
  }

  return a4;
}

uint64_t feat_wordne(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v5 = a1 + 40 * (a4 + a3) + 30;
  if (a4 + a3 >= a2)
  {
    v5 = a5;
  }

  if (a1)
  {
    return v5;
  }

  else
  {
    return a5;
  }
}

char *feat_wordbeg(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  v5 = (a3 + a2);
  if (a3 + a2 < 0 || v5 >= *(a1 + 8))
  {
    return cstdlib_strcpy(__dst, __src);
  }

  else
  {
    return utf8_getUTF8Char(*(*a1 + (v5 << 6) + 40), 0, __dst);
  }
}

char *feat_wordend(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  v6 = (a3 + a2);
  if (a3 + a2 < 0 || v6 >= *(a1 + 8))
  {

    return cstdlib_strcpy(__dst, __src);
  }

  else
  {
    v8 = cstdlib_strlen(*(*a1 + (v6 << 6) + 40));
    v9 = *(*a1 + (v6 << 6) + 40);

    return utf8_GetUtf8Symbol(v9, v8 - 1, v8, __dst);
  }
}

char *feat_wordlc(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  *__dst = 0;
  v5 = (a3 + a2);
  if (a3 + a2 < 0 || v5 >= *(a1 + 8))
  {
    return cstdlib_strcpy(__dst, __src);
  }

  else
  {
    return hlp_wordStrLowerCase(*(*a1 + (v5 << 6) + 40), __dst);
  }
}

char *feat_wordlen(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  *__dst = 0;
  v6 = (a3 + a2);
  if (a3 + a2 < 0 || v6 >= *(a1 + 8))
  {

    return cstdlib_strcpy(__dst, __src);
  }

  else
  {
    v7 = Utf8_Utf8NbrOfSymbols(*(*a1 + (v6 << 6) + 40));
    return sprintf(__dst, "%d", v7 - 1);
  }
}

uint64_t feat_pos(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = a3 + a2;
  if (a3 <= 0)
  {
    v9 = a3 + a2;
  }

  else
  {
    v9 = a2;
  }

  LOWORD(v10) = v9;
  if (a3 <= 0)
  {
    v8 = a2;
  }

  v11 = v8 - 1;
  if (v9 > v11)
  {
LABEL_12:
    v13 = (a3 + a2);
    if (a3 + a2 >= 0 && v13 < *(a1 + 8))
    {
      return *(*a1 + (v13 << 6) + 16);
    }
  }

  else
  {
    v12 = v11;
    while ((v10 & 0x8000) != 0 || *(a1 + 8) <= v10 || !hlp_doesWordEndInComma(*(*a1 + (v10 << 6))))
    {
      v10 = (v10 + 1);
      if (v10 > v12)
      {
        goto LABEL_12;
      }
    }
  }

  return a4;
}

uint64_t feat_matchprevpos(void *a1, unsigned int a2, char *__s2, uint64_t a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = a2 - 1;
    while (1)
    {
      v9 = *a1 + (v7 << 6);
      if (!cstdlib_strcmp(*(v9 + 16), __s2))
      {
        break;
      }

      --v7;
      if (!v8--)
      {
        return a4;
      }
    }

    return *(v9 + 40);
  }

  return a4;
}

uint64_t feat_matchnextpos(uint64_t a1, unsigned __int16 a2, char *__s2, uint64_t a4)
{
  while (*(a1 + 8) > ++a2)
  {
    v8 = *a1 + (a2 << 6);
    if (!cstdlib_strcmp(*(v8 + 16), __s2))
    {
      return *(v8 + 40);
    }
  }

  return a4;
}

uint64_t feat_mosyntpos(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = (a3 + a2);
  if (a3 + a2 >= 0 && v4 < *(a1 + 8))
  {
    v5 = *a1 + (v4 << 6);
    v6 = *(v5 + 56);
    if (*(v5 + 56))
    {
      for (i = (*(v5 + 48) + 8); *i != 1; i += 8)
      {
        if (!--v6)
        {
          return a4;
        }
      }

      return *(*(i - 1) + 16);
    }
  }

  return a4;
}

const char *feat_sentbeg(int a1, int a2)
{
  if ((a2 + 1) < 2 && a1 == 0)
  {
    return "SB";
  }

  else
  {
    return "SI";
  }
}

uint64_t hlp_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, unsigned int a7, char **a8, unsigned __int16 a9, uint64_t a10)
{
  v133 = 0;
  v18 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v18)
  {
    v19 = v18;
    v131 = a6;
    v132 = a7;
    v130 = a8;
    if (a4 < 2)
    {
      v22 = 0;
LABEL_9:
      if (!hlp_isFeatureRequired(a3, a4, 11, &v133) || (!a6 || (v23 = a6 - 1, v23 >= a5[4]) ? (v24 = "=") : (v24 = *(*a5 + (v23 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 11, a2, v24), (v22 & 0x80000000) == 0))
      {
        if (!hlp_isFeatureRequired(a3, a4, 10, &v133) || ((v31 = a6 - 2, a6 < 2) || v31 >= a5[4] ? (v32 = "=") : (v32 = *(*a5 + (v31 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 10, a2, v32), (v22 & 0x80000000) == 0))
        {
          if (!hlp_isFeatureRequired(a3, a4, 9, &v133) || ((v33 = a6 - 3, a6 < 3) || v33 >= a5[4] ? (v34 = "=") : (v34 = *(*a5 + (v33 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 9, a2, v34), (v22 & 0x80000000) == 0))
          {
            if (!hlp_isFeatureRequired(a3, a4, 8, &v133) || ((v35 = a6 - 4, a6 < 4) || v35 >= a5[4] ? (v36 = "=") : (v36 = *(*a5 + (v35 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 8, a2, v36), (v22 & 0x80000000) == 0))
            {
              if (!hlp_isFeatureRequired(a3, a4, 7, &v133) || ((v37 = a6 - 5, a6 < 5) || v37 >= a5[4] ? (v38 = "=") : (v38 = *(*a5 + (v37 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 7, a2, v38), (v22 & 0x80000000) == 0))
              {
                if (!hlp_isFeatureRequired(a3, a4, 15, &v133) || ((v46 = a6 + 1, v46 >= a5[4]) ? (v47 = "=") : (v47 = *(*a5 + (v46 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 15, a2, v47), (v22 & 0x80000000) == 0))
                {
                  if (!hlp_isFeatureRequired(a3, a4, 16, &v133) || ((v60 = a6 + 2, v60 >= a5[4]) ? (v61 = "=") : (v61 = *(*a5 + (v60 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 16, a2, v61), (v22 & 0x80000000) == 0))
                  {
                    if (!hlp_isFeatureRequired(a3, a4, 17, &v133) || ((v68 = a6 + 3, v68 >= a5[4]) ? (v69 = "=") : (v69 = *(*a5 + (v68 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 17, a2, v69), (v22 & 0x80000000) == 0))
                    {
                      if (!hlp_isFeatureRequired(a3, a4, 18, &v133) || ((v76 = a6 + 4, v76 >= a5[4]) ? (v77 = "=") : (v77 = *(*a5 + (v76 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 18, a2, v77), (v22 & 0x80000000) == 0))
                      {
                        if (!hlp_isFeatureRequired(a3, a4, 19, &v133) || ((v84 = a6 + 5, v84 >= a5[4]) ? (v85 = "=") : (v85 = *(*a5 + (v84 << 6) + 40)), v22 = hlp_setFeature(a1, a3, a4, 19, a2, v85), (v22 & 0x80000000) == 0))
                        {
                          if (!hlp_isFeatureRequired(a3, a4, 23, &v133) || (v88 = feat_pos(a5, a6, 0, "="), v22 = hlp_setFeature(a1, a3, a4, 23, a2, v88), (v22 & 0x80000000) == 0))
                          {
                            if (!hlp_isFeatureRequired(a3, a4, 22, &v133) || (v89 = feat_pos(a5, a6, -1, "="), v22 = hlp_setFeature(a1, a3, a4, 22, a2, v89), (v22 & 0x80000000) == 0))
                            {
                              if (!hlp_isFeatureRequired(a3, a4, 21, &v133) || (v90 = feat_pos(a5, a6, -2, "="), v22 = hlp_setFeature(a1, a3, a4, 21, a2, v90), (v22 & 0x80000000) == 0))
                              {
                                if (!hlp_isFeatureRequired(a3, a4, 20, &v133) || (v91 = feat_pos(a5, a6, -3, "="), v22 = hlp_setFeature(a1, a3, a4, 20, a2, v91), (v22 & 0x80000000) == 0))
                                {
                                  if (!hlp_isFeatureRequired(a3, a4, 24, &v133) || (v92 = feat_pos(a5, a6, 1, "="), v22 = hlp_setFeature(a1, a3, a4, 24, a2, v92), (v22 & 0x80000000) == 0))
                                  {
                                    if (!hlp_isFeatureRequired(a3, a4, 25, &v133) || (v93 = feat_pos(a5, a6, 2, "="), v22 = hlp_setFeature(a1, a3, a4, 25, a2, v93), (v22 & 0x80000000) == 0))
                                    {
                                      if (!hlp_isFeatureRequired(a3, a4, 26, &v133) || (v94 = feat_pos(a5, a6, 3, "="), v22 = hlp_setFeature(a1, a3, a4, 26, a2, v94), (v22 & 0x80000000) == 0))
                                      {
                                        if (!hlp_isFeatureRequired(a3, a4, 27, &v133) || (v95 = feat_mosyntpos(a5, a6, -1, "="), v22 = hlp_setFeature(a1, a3, a4, 27, a2, v95), (v22 & 0x80000000) == 0))
                                        {
                                          if (!hlp_isFeatureRequired(a3, a4, 28, &v133) || (v96 = feat_mosyntpos(a5, a6, 1, "="), v22 = hlp_setFeature(a1, a3, a4, 28, a2, v96), (v22 & 0x80000000) == 0))
                                          {
                                            if (!hlp_isFeatureRequired(a3, a4, 29, &v133) || (v97 = feat_matchprevpos(a5, a6, "n", "="), v22 = hlp_setFeature(a1, a3, a4, 29, a2, v97), (v22 & 0x80000000) == 0))
                                            {
                                              if (!hlp_isFeatureRequired(a3, a4, 30, &v133))
                                              {
                                                goto LABEL_259;
                                              }

                                              v98 = "=";
                                              while (1)
                                              {
                                                LOWORD(a6) = a6 + 1;
                                                if (a5[4] <= a6)
                                                {
                                                  break;
                                                }

                                                v99 = *a5 + (a6 << 6);
                                                if (!cstdlib_strcmp(*(v99 + 16), "n"))
                                                {
                                                  v98 = *(v99 + 40);
                                                  break;
                                                }
                                              }

                                              v22 = hlp_setFeature(a1, a3, a4, 30, a2, v98);
                                              a6 = v131;
                                              if ((v22 & 0x80000000) == 0)
                                              {
LABEL_259:
                                                if (!hlp_isFeatureRequired(a3, a4, 31, &v133) || (v100 = feat_matchprevpos(a5, a6, "v", "="), v22 = hlp_setFeature(a1, a3, a4, 31, a2, v100), (v22 & 0x80000000) == 0))
                                                {
                                                  if (!hlp_isFeatureRequired(a3, a4, 32, &v133))
                                                  {
                                                    goto LABEL_260;
                                                  }

                                                  v101 = "=";
                                                  while (1)
                                                  {
                                                    LOWORD(a6) = a6 + 1;
                                                    if (a5[4] <= a6)
                                                    {
                                                      break;
                                                    }

                                                    v102 = *a5 + (a6 << 6);
                                                    if (!cstdlib_strcmp(*(v102 + 16), "v"))
                                                    {
                                                      v101 = *(v102 + 40);
                                                      break;
                                                    }
                                                  }

                                                  v22 = hlp_setFeature(a1, a3, a4, 32, a2, v101);
                                                  a6 = v131;
                                                  if ((v22 & 0x80000000) == 0)
                                                  {
LABEL_260:
                                                    if (!hlp_isFeatureRequired(a3, a4, 33, &v133))
                                                    {
                                                      goto LABEL_261;
                                                    }

                                                    v103 = a6;
                                                    v104 = a2;
                                                    *v19 = 0;
                                                    v105 = 0xFFFF;
                                                    do
                                                    {
                                                      v106 = cstdlib_strlen(v19);
                                                      v107 = v105;
                                                      feat_wordlen(a5, v103, v105++, "=", &v19[v106]);
                                                    }

                                                    while (v107 < 1);
                                                    a2 = v104;
                                                    v22 = hlp_setFeature(a1, a3, a4, 33, v104, v19);
                                                    a6 = v103;
                                                    if ((v22 & 0x80000000) == 0)
                                                    {
LABEL_261:
                                                      if (!hlp_isFeatureRequired(a3, a4, 34, &v133))
                                                      {
                                                        goto LABEL_262;
                                                      }

                                                      *v19 = 0;
                                                      v108 = v130;
                                                      if (a9)
                                                      {
                                                        v109 = 0;
                                                        for (i = a9 - 1; ; --i)
                                                        {
                                                          v111 = a2;
                                                          if (v109)
                                                          {
                                                            cstdlib_strcat(v19, " ");
                                                          }

                                                          v112 = cstdlib_strlen(v19);
                                                          v113 = feat_colloc(a5, v131, *v108);
                                                          v114 = &v19[v112];
                                                          *v114 = v113;
                                                          v114[1] = 0;
                                                          a2 = v111;
                                                          if (!i)
                                                          {
                                                            break;
                                                          }

                                                          v109 = *v19;
                                                          ++v108;
                                                        }
                                                      }

                                                      v22 = hlp_setFeature(a1, a3, a4, 34, a2, v19);
                                                      a6 = v131;
                                                      if ((v22 & 0x80000000) == 0)
                                                      {
LABEL_262:
                                                        if (!hlp_isFeatureRequired(a3, a4, 35, &v133) || (v132 + 1 < 2 ? (v117 = a6 == 0) : (v117 = 0), !v117 ? (v118 = "SI") : (v118 = "SB"), v22 = hlp_setFeature(a1, a3, a4, 35, a2, v118), (v22 & 0x80000000) == 0))
                                                        {
                                                          if (!hlp_isFeatureRequired(a3, a4, 38, &v133) || (feat_wordbeg(a5, a6, 0, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 38, a2, v19), (v22 & 0x80000000) == 0))
                                                          {
                                                            if (!hlp_isFeatureRequired(a3, a4, 43, &v133) || (feat_wordend(a5, a6, 0, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 43, a2, v19), (v22 & 0x80000000) == 0))
                                                            {
                                                              if (!hlp_isFeatureRequired(a3, a4, 37, &v133) || (feat_wordbeg(a5, a6, -1, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 37, a2, v19), (v22 & 0x80000000) == 0))
                                                              {
                                                                if (!hlp_isFeatureRequired(a3, a4, 42, &v133) || (feat_wordend(a5, a6, -1, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 42, a2, v19), (v22 & 0x80000000) == 0))
                                                                {
                                                                  if (!hlp_isFeatureRequired(a3, a4, 39, &v133) || (feat_wordbeg(a5, a6, 1, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 39, a2, v19), (v22 & 0x80000000) == 0))
                                                                  {
                                                                    if (!hlp_isFeatureRequired(a3, a4, 44, &v133) || (feat_wordend(a5, a6, 1, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 44, a2, v19), (v22 & 0x80000000) == 0))
                                                                    {
                                                                      if (!hlp_isFeatureRequired(a3, a4, 36, &v133) || (feat_wordbeg(a5, a6, -2, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 36, a2, v19), (v22 & 0x80000000) == 0))
                                                                      {
                                                                        if (!hlp_isFeatureRequired(a3, a4, 41, &v133) || (feat_wordend(a5, a6, -2, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 41, a2, v19), (v22 & 0x80000000) == 0))
                                                                        {
                                                                          if (!hlp_isFeatureRequired(a3, a4, 40, &v133) || (feat_wordbeg(a5, a6, 2, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 40, a2, v19), (v22 & 0x80000000) == 0))
                                                                          {
                                                                            if (!hlp_isFeatureRequired(a3, a4, 45, &v133) || (feat_wordend(a5, a6, 2, "=", v19), v22 = hlp_setFeature(a1, a3, a4, 45, a2, v19), (v22 & 0x80000000) == 0))
                                                                            {
                                                                              if (!hlp_isFeatureRequired(a3, a4, 46, &v133) || (v22 = hlp_setFeature(a1, a3, a4, 46, a2, "="), (v22 & 0x80000000) == 0))
                                                                              {
                                                                                if (!hlp_isFeatureRequired(a3, a4, 47, &v133) || (v22 = hlp_setFeature(a1, a3, a4, 47, a2, "="), (v22 & 0x80000000) == 0))
                                                                                {
                                                                                  if (!hlp_isFeatureRequired(a3, a4, 48, &v133) || (v22 = hlp_setFeature(a1, a3, a4, 48, a2, "="), (v22 & 0x80000000) == 0))
                                                                                  {
                                                                                    if (!hlp_isFeatureRequired(a3, a4, 49, &v133) || ((v119 = *(a10 + 8)) == 0 || v131 - 2 >= *(a10 + 16) ? (v120 = "=") : (v120 = (v119 + 40 * (v131 - 2) + 30)), v22 = hlp_setFeature(a1, a3, a4, 49, a2, v120), (v22 & 0x80000000) == 0))
                                                                                    {
                                                                                      if (!hlp_isFeatureRequired(a3, a4, 50, &v133) || ((v121 = *(a10 + 8)) == 0 || v131 - 1 >= *(a10 + 16) ? (v122 = "=") : (v122 = (v121 + 40 * (v131 - 1) + 30)), v22 = hlp_setFeature(a1, a3, a4, 50, a2, v122), (v22 & 0x80000000) == 0))
                                                                                      {
                                                                                        if (!hlp_isFeatureRequired(a3, a4, 51, &v133) || ((v123 = *(a10 + 8)) == 0 || *(a10 + 16) <= v131 ? (v124 = "=") : (v124 = (v123 + 40 * v131 + 30)), v22 = hlp_setFeature(a1, a3, a4, 51, a2, v124), (v22 & 0x80000000) == 0))
                                                                                        {
                                                                                          if (!hlp_isFeatureRequired(a3, a4, 52, &v133) || ((v125 = *(a10 + 8)) == 0 || v131 + 1 >= *(a10 + 16) ? (v126 = "=") : (v126 = (v125 + 40 * (v131 + 1) + 30)), v22 = hlp_setFeature(a1, a3, a4, 52, a2, v126), (v22 & 0x80000000) == 0))
                                                                                          {
                                                                                            if (hlp_isFeatureRequired(a3, a4, 53, &v133))
                                                                                            {
                                                                                              v127 = *(a10 + 8);
                                                                                              if (v127 && v131 + 2 < *(a10 + 16))
                                                                                              {
                                                                                                v128 = (v127 + 40 * (v131 + 2) + 30);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v128 = "=";
                                                                                              }

                                                                                              v27 = hlp_setFeature(a1, a3, a4, 53, a2, v128);
LABEL_254:
                                                                                              v22 = v27;
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v20 = 0;
      v21 = (a4 - 1);
      while (cstdlib_strcmp(*(a3 + 8 * v20), "char0"))
      {
        if (v21 == ++v20)
        {
          v22 = 0;
LABEL_42:
          v39 = 0;
          if (v21 <= 1)
          {
            v40 = 1;
          }

          else
          {
            v40 = (a4 - 1);
          }

          while (cstdlib_strcmp(*(a3 + 8 * v39), "lchar"))
          {
            if (v40 == ++v39)
            {
              goto LABEL_58;
            }
          }

          v133 = v39;
          v41 = "=";
          v42 = a1;
          if (v132 == -1)
          {
            v44 = a3;
            v45 = a4;
            v43 = a2;
          }

          else
          {
            v27 = feat_character(a1, a5, v131, v132, -1, "=", v19);
            if ((v27 & 0x80000000) != 0)
            {
              goto LABEL_254;
            }

            v43 = a2;
            v42 = a1;
            v44 = a3;
            v45 = a4;
            v41 = v19;
          }

          v22 = hlp_setFeature(v42, v44, v45, 3, v43, v41);
          if ((v22 & 0x80000000) == 0)
          {
LABEL_58:
            v48 = 0;
            while (cstdlib_strcmp(*(a3 + 8 * v48), "llchar"))
            {
              if (v40 == ++v48)
              {
                goto LABEL_67;
              }
            }

            v133 = v48;
            v49 = "=";
            v50 = a1;
            if (v132 == -1)
            {
              v52 = a3;
              v53 = a4;
              v51 = a2;
            }

            else
            {
              v27 = feat_character(a1, a5, v131, v132, -2, "=", v19);
              if ((v27 & 0x80000000) != 0)
              {
                goto LABEL_254;
              }

              v51 = a2;
              v50 = a1;
              v52 = a3;
              v53 = a4;
              v49 = v19;
            }

            v22 = hlp_setFeature(v50, v52, v53, 2, v51, v49);
            if ((v22 & 0x80000000) == 0)
            {
LABEL_67:
              v54 = 0;
              while (cstdlib_strcmp(*(a3 + 8 * v54), "l3char"))
              {
                if (v40 == ++v54)
                {
                  goto LABEL_81;
                }
              }

              v133 = v54;
              v55 = "=";
              v56 = a1;
              if (v132 == -1)
              {
                v58 = a3;
                v59 = a4;
                v57 = a2;
              }

              else
              {
                v27 = feat_character(a1, a5, v131, v132, -3, "=", v19);
                if ((v27 & 0x80000000) != 0)
                {
                  goto LABEL_254;
                }

                v57 = a2;
                v56 = a1;
                v58 = a3;
                v59 = a4;
                v55 = v19;
              }

              v22 = hlp_setFeature(v56, v58, v59, 1, v57, v55);
              if ((v22 & 0x80000000) == 0)
              {
LABEL_81:
                v62 = 0;
                while (cstdlib_strcmp(*(a3 + 8 * v62), "rchar"))
                {
                  if (v40 == ++v62)
                  {
                    goto LABEL_95;
                  }
                }

                v133 = v62;
                v63 = "=";
                v64 = a1;
                if (v132 == -1)
                {
                  v66 = a3;
                  v67 = a4;
                  v65 = a2;
                }

                else
                {
                  v27 = feat_character(a1, a5, v131, v132, 1, "=", v19);
                  if ((v27 & 0x80000000) != 0)
                  {
                    goto LABEL_254;
                  }

                  v65 = a2;
                  v64 = a1;
                  v66 = a3;
                  v67 = a4;
                  v63 = v19;
                }

                v22 = hlp_setFeature(v64, v66, v67, 4, v65, v63);
                if ((v22 & 0x80000000) == 0)
                {
LABEL_95:
                  v70 = 0;
                  while (cstdlib_strcmp(*(a3 + 8 * v70), "rrchar"))
                  {
                    if (v40 == ++v70)
                    {
                      goto LABEL_109;
                    }
                  }

                  v133 = v70;
                  v71 = "=";
                  v72 = a1;
                  if (v132 == -1)
                  {
                    v74 = a3;
                    v75 = a4;
                    v73 = a2;
                  }

                  else
                  {
                    v27 = feat_character(a1, a5, v131, v132, 2, "=", v19);
                    if ((v27 & 0x80000000) != 0)
                    {
                      goto LABEL_254;
                    }

                    v73 = a2;
                    v72 = a1;
                    v74 = a3;
                    v75 = a4;
                    v71 = v19;
                  }

                  v22 = hlp_setFeature(v72, v74, v75, 5, v73, v71);
                  if ((v22 & 0x80000000) == 0)
                  {
LABEL_109:
                    v78 = 0;
                    while (cstdlib_strcmp(*(a3 + 8 * v78), "r3char"))
                    {
                      if (v40 == ++v78)
                      {
                        goto LABEL_123;
                      }
                    }

                    v133 = v78;
                    v79 = "=";
                    v80 = a1;
                    if (v132 == -1)
                    {
                      v82 = a3;
                      v83 = a4;
                      v81 = a2;
                    }

                    else
                    {
                      v27 = feat_character(a1, a5, v131, v132, 3, "=", v19);
                      if ((v27 & 0x80000000) != 0)
                      {
                        goto LABEL_254;
                      }

                      v81 = a2;
                      v80 = a1;
                      v82 = a3;
                      v83 = a4;
                      v79 = v19;
                    }

                    v22 = hlp_setFeature(v80, v82, v83, 6, v81, v79);
                    if ((v22 & 0x80000000) != 0)
                    {
                      goto LABEL_255;
                    }

LABEL_123:
                    v86 = 0;
                    while (cstdlib_strcmp(*(a3 + 8 * v86), "word"))
                    {
                      if (v40 == ++v86)
                      {
                        goto LABEL_178;
                      }
                    }

                    v133 = v86;
                    if (a5[4] <= v131)
                    {
                      v87 = "=";
                    }

                    else
                    {
                      v87 = *(*a5 + (v131 << 6) + 40);
                    }

                    v22 = hlp_setFeature(a1, a3, a4, 12, a2, v87);
                    if ((v22 & 0x80000000) != 0)
                    {
                      goto LABEL_255;
                    }

LABEL_178:
                    v115 = 0;
                    while (cstdlib_strcmp(*(a3 + 8 * v115), "wordnocase"))
                    {
                      if (v40 == ++v115)
                      {
                        goto LABEL_183;
                      }
                    }

                    v133 = v115;
                    feat_wordlc(a5, v131, 0, "=", v19);
                    v22 = hlp_setFeature(a1, a3, a4, 13, a2, v19);
                    if ((v22 & 0x80000000) != 0)
                    {
                      goto LABEL_255;
                    }

LABEL_183:
                    v116 = 0;
                    while (cstdlib_strcmp(*(a3 + 8 * v116), "wordlen"))
                    {
                      if (v40 == ++v116)
                      {
                        a6 = v131;
                        goto LABEL_9;
                      }
                    }

                    v133 = v116;
                    a6 = v131;
                    feat_wordlen(a5, v131, 0, "=", v19);
                    v22 = hlp_setFeature(a1, a3, a4, 14, a2, v19);
                    if ((v22 & 0x80000000) == 0)
                    {
                      goto LABEL_9;
                    }

                    goto LABEL_255;
                  }

                  goto LABEL_255;
                }

                goto LABEL_255;
              }

              goto LABEL_255;
            }

            goto LABEL_255;
          }

          goto LABEL_255;
        }
      }

      v133 = v20;
      v25 = "=";
      v26 = a1;
      if (v132 == -1)
      {
        v28 = a3;
        v29 = a4;
        v30 = a2;
      }

      else
      {
        v27 = feat_character(a1, a5, v131, v132, 0, "=", v19);
        if ((v27 & 0x80000000) != 0)
        {
          goto LABEL_254;
        }

        v26 = a1;
        v28 = a3;
        v29 = a4;
        v30 = a2;
        v25 = v19;
      }

      v22 = hlp_setFeature(v26, v28, v29, 0, v30, v25);
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_255:
    heap_Free(*(a1 + 8), v19);
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215434;
  }

  return v22;
}