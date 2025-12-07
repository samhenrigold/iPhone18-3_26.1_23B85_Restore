uint64_t glpSALayoutQualifier(uint64_t a1, uint64_t a2)
{
  if (!glpLayoutQualifierNodeGetLayoutPairCount(a2))
  {
    goto LABEL_11;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    LayoutPair = glpLayoutQualifierNodeGetLayoutPair(a2, v4);
    v7 = glpSANode(a1, LayoutPair);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpLayoutQualifierNodeSetLayoutPair(a2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpLayoutQualifierNodeGetLayoutPairCount(a2));
  if (v5)
  {
LABEL_11:
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSASubroutineTypeList(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!glpSubroutineTypeListNodeGetTypeCount(a2))
  {
    goto LABEL_20;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Type = glpSubroutineTypeListNodeGetType(v2, v4);
    v7 = glpSANode(a1, Type);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpSubroutineTypeListNodeSetType(v2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpSubroutineTypeListNodeGetTypeCount(v2));
  if (!v5)
  {

    return glpSAFailed();
  }

  else
  {
LABEL_20:
    if (glpSubroutineTypeListNodeGetTypeCount(v2))
    {
      v8 = 0;
      while (1)
      {
        v9 = glpSubroutineTypeListNodeGetType(v2, v8);
        SaType = glpASTNodeGetSaType(v9);
        if (glpTypeGetKind(SaType) != 5)
        {
          break;
        }

        if (++v8 >= glpSubroutineTypeListNodeGetTypeCount(v2))
        {
          goto LABEL_12;
        }
      }

      Name = glpTypeIdentifierNodeGetName(v9);
      v14 = v13;
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v17);
      glpLogMessage(InfoLog, 0, &v17, "Non-subroutine type '%.*s' in subroutine type list", v14, Name);
      return glpSAFailed();
    }

    else
    {
LABEL_12:
      PrimitiveType = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v2, PrimitiveType);
    }

    return v2;
  }
}

uint64_t glpSAQualifierList(uint64_t a1, uint64_t a2)
{
  if (!glpQualifierListNodeGetQualifierCount(a2))
  {
    goto LABEL_11;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Qualifier = glpQualifierListNodeGetQualifier(a2, v4);
    v7 = glpSANode(a1, Qualifier);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpQualifierListNodeSetQualifier(a2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpQualifierListNodeGetQualifierCount(a2));
  if (v5)
  {
LABEL_11:
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSAGlobalTypeQualifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  QualifierList = glpGlobalTypeQualifierNodeGetQualifierList(a2);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (!glpParseQualifiers(a1, 2, QualifierList, 0, &v22, &v21, &v20))
  {
    return glpSAFailed();
  }

  if (v21)
  {
    NameTable = glpCompilerGetNameTable(a1);
    if (!glpNameTableGetCurrentFunction(NameTable))
    {
      TopLevelNode = glpCompilerGetTopLevelNode(a1);
      GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(TopLevelNode, v22);
      if (GlobalTypeQualifier)
      {
        v11 = GlobalTypeQualifier;
        glpCompilerGetAllocator();
        v13 = v12;
        Layout = glpGlobalTypeQualifierNodeGetLayout(v11);
        v15 = glpCopyLayoutObject(v13, Layout);
        glpCompilerGetAllocator();
        v17 = v16;
        glpASTNodeGetLocation(v2, &v19);
        if (!glpLayoutObjectAppendMany(v17, a1, &v19, v15, v21))
        {
          return glpSAFailed();
        }

        v2 = 0;
        v21 = v15;
      }

      else
      {
        PrimitiveType = glpGetPrimitiveType(0);
        glpASTNodeSetSaType(v2, PrimitiveType);
        glpASTNodeSetSaFlags(v2, v22);
        glpGlobalTypeQualifierNodeSetQualifierList(v2, 0);
        v15 = v21;
        v11 = v2;
      }

      glpGlobalTypeQualifierNodeSetLayout(v11, v15);
      if (glpCompilerApplyImplictRulesForGlobalTypeQualifier(a1, v11))
      {
        return v2;
      }

      return glpSAFailed();
    }
  }

  InfoLog = glpCompilerGetInfoLog(a1);
  *&v7 = glpASTNodeGetLocation(v2, &v19).n128_u64[0];
  glpLogMessage(InfoLog, 0, &v19, "Invalid non-global or non-layout type-qualifier", v7);
  return glpSAFailed();
}

uint64_t glpSALayoutPair(uint64_t a1, uint64_t a2)
{
  Type = glpLayoutPairNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpLayoutPairNodeSetType(a2, v5);
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    return a2;
  }
}

uint64_t glpSAExpressionStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  Expr = glpExpressionStatementNodeGetExpr(v2);
  v5 = glpSANode(a1, Expr);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpExpressionStatementNodeSetExpr(v2, v5);
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
    v7 = glpExpressionStatementNodeGetExpr(v2);
    if (v7)
    {
      v8 = v7;
      SaType = glpASTNodeGetSaType(v7);
      if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(v8) & 0x1F) == 0)
      {
        v10 = glpASTNodeGetSaType(v8);
        DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, v10);
        if (DefaultPrecisionForType)
        {
          glpPushdownPrecision(a1, v8, DefaultPrecisionForType);
        }

        else
        {
          v13 = glpASTNodeGetSaType(v8);
          glpCompilerGetAllocator();
          v15 = glpTypeHumanReadableDescription(v13, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v14);
          v17 = v16;
          InfoLog = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v2, &v19);
          glpLogMessage(InfoLog, 0, &v19, "Expression of type '%.*s' - precision can not be inferred and no default precision available", v17, v15);
          return glpSAFailed();
        }
      }
    }

    return v2;
  }
}

uint64_t glpSABlock(uint64_t a1, uint64_t a2)
{
  glpSAStatement(a2);
  if (glpBlockNodeGetNeedsNewScope(a2))
  {
    NameTable = glpCompilerGetNameTable(a1);
    glpNameTablePush(NameTable, a2);
  }

  StatementCount = glpBlockNodeGetStatementCount(a2);
  if (!StatementCount)
  {
    goto LABEL_17;
  }

  v6 = -StatementCount;
  v7 = 1;
  do
  {
    v8 = glpBlockNodeGetStatementCount(a2);
    Statement = glpBlockNodeGetStatement(a2, v8 + v6);
    if (Statement)
    {
      v10 = Statement;
      v11 = glpCompilerGetNameTable(a1);
      glpNameTableSetStatementIndex(v11, v8 + v6);
      v12 = glpSANode(a1, v10);
      v13 = glpBlockNodeGetStatementCount(a2);
      if (v12 != -1)
      {
        glpBlockNodeSetStatement(a2, v13 + v6, v12);
      }

      if (v7)
      {
        v14 = v12 == -1;
      }

      else
      {
        v14 = 1;
      }

      v7 = !v14;
    }
  }

  while (!__CFADD__(v6++, 1));
  if (!v7)
  {
    if (glpBlockNodeGetNeedsNewScope(a2))
    {
      v25 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v25);
    }

    return glpSAFailed();
  }

  else
  {
LABEL_17:
    v16 = glpBlockNodeGetStatementCount(a2);
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      IsReturnStatementNode = 0;
      do
      {
        v20 = glpBlockNodeGetStatement(a2, v18);
        if (v20)
        {
          v21 = v20;
          if (IsReturnStatementNode && !glpIsCaseStatementNode(v20) && !glpIsDefaultStatementNode(v21))
          {
            glpBlockNodeSetStatement(a2, v18, 0);
LABEL_28:
            IsReturnStatementNode = 1;
            goto LABEL_29;
          }

          if (glpIsDiscardStatementNode(v21) || glpIsBreakStatementNode(v21) || glpIsContinueStatementNode(v21))
          {
            goto LABEL_28;
          }

          IsReturnStatementNode = glpIsReturnStatementNode(v21);
        }

LABEL_29:
        ++v18;
      }

      while (v17 != v18);
    }

    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    if (glpBlockNodeGetNeedsNewScope(a2))
    {
      v23 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v23);
    }

    return a2;
  }
}

uint64_t glpSAIfStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  Cond = glpIfStatementNodeGetCond(v2);
  v5 = glpSANode(a1, Cond);
  v6 = v5 == -1;
  if (v5 != -1)
  {
    glpIfStatementNodeSetCond(v2, v5);
  }

  IfStatement = glpIfStatementNodeGetIfStatement(v2);
  v8 = glpSANode(a1, IfStatement);
  if (v8 == -1)
  {
    v6 = 1;
  }

  else
  {
    glpIfStatementNodeSetIfStatement(v2, v8);
  }

  ElseStatement = glpIfStatementNodeGetElseStatement(v2);
  v10 = glpSANode(a1, ElseStatement);
  if (v10 == -1 || (glpIfStatementNodeSetElseStatement(v2, v10), v6))
  {

    return glpSAFailed();
  }

  else
  {
    v12 = glpIfStatementNodeGetCond(v2);
    SaType = glpASTNodeGetSaType(v12);
    PrimitiveType = glpGetPrimitiveType(9u);
    if (glpTypesEqual(SaType, PrimitiveType))
    {
      v15 = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v2, v15);
    }

    else
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      *&v17 = glpASTNodeGetLocation(v2, &v18).n128_u64[0];
      glpLogMessage(InfoLog, 0, &v18, "Condition must be of type BOOL", v17);
      return glpSAFailed();
    }

    return v2;
  }
}

uint64_t glpSALoopStatement(uint64_t a1, uint64_t a2)
{
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  CurrentFunction = glpNameTableGetCurrentFunction(NameTable);
  ++*(CurrentFunction + 120);
  Body0 = glpLoopStatementNodeGetBody0(a2);
  v7 = glpSANode(a1, Body0);
  if (v7 != -1)
  {
    glpLoopStatementNodeSetBody0(a2, v7);
  }

  Body1 = glpLoopStatementNodeGetBody1(a2);
  v9 = glpSANode(a1, Body1);
  if (v9 == -1 || (glpLoopStatementNodeSetBody1(a2, v9), v7 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    --*(CurrentFunction + 120);
    return a2;
  }
}

uint64_t glpSASwitchStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  CurrentFunction = glpNameTableGetCurrentFunction(NameTable);
  ++*(CurrentFunction + 124);
  Expr = glpSwitchStatementNodeGetExpr(v2);
  v7 = glpSANode(a1, Expr);
  if (v7 == -1)
  {

    return glpSAFailed();
  }

  v8 = v7;
  SaType = glpASTNodeGetSaType(v7);
  if (glpTypeGetKind(SaType) || glpPrimitiveTypeGetPrimitiveType(SaType) != 5 && glpPrimitiveTypeGetPrimitiveType(SaType) != 36)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    v11 = glpASTNodeGetLocation(v2, &v66).n128_u64[0];
    v12 = "Switch expression must be of type int or uint";
    goto LABEL_4;
  }

  if (glpPrimitiveTypeGetPrimitiveType(SaType) != 5)
  {
    glpCompilerGetAllocator();
    v16 = v15;
    glpASTNodeGetLocation(v8, &v66);
    PrimitiveType = glpGetPrimitiveType(5u);
    SaFlags = glpASTNodeGetSaFlags(v8);
    glpMakeTypeConversionNode(v16, &v66, PrimitiveType, SaFlags & 0x1F);
    v20 = v19;
    glpUnaryOperatorNodeSetExpr(v19, v8);
    v8 = glpSANode(a1, v20);
    if (v8 == -1)
    {
      return glpSAFailed();
    }
  }

  glpSwitchStatementNodeSetExpr(v2, v8);
  if (!glpCompilerDoesTypeRequirePrecision(a1, SaType))
  {
    v21 = 0;
    goto LABEL_20;
  }

  v21 = glpASTNodeGetSaFlags(v8) & 0x1F;
  if (!v21)
  {
    DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
    if (DefaultPrecisionForType)
    {
      v21 = DefaultPrecisionForType;
      glpPushdownPrecision(a1, v8, DefaultPrecisionForType);
      goto LABEL_20;
    }

    glpCompilerGetAllocator();
    v54 = glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v53);
    v56 = v55;
    InfoLog = glpCompilerGetInfoLog(a1);
    v11 = glpASTNodeGetLocation(v2, &v66).n128_u64[0];
    v58 = v56;
    v59 = v54;
    v12 = "Switch condition of type '%.*s' - precision can not be inferred and no default precision available";
LABEL_4:
    v13 = InfoLog;
    goto LABEL_5;
  }

LABEL_20:
  Body = glpSwitchStatementNodeGetBody(v2);
  glpCompilerGetAllocator();
  IntHash = glpMakeIntHash(v24);
  if (glpBlockNodeGetStatementCount(Body))
  {
    v60 = v21;
    v61 = IntHash;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    while (1)
    {
      Statement = glpBlockNodeGetStatement(Body, v27);
      Kind = glpASTNodeGetKind(Statement);
      if (Kind == 70)
      {
        ConstValue = glpCaseStatementNodeGetConstValue(Statement);
        v33 = glpSANode(a1, ConstValue);
        if (v33 == -1)
        {
          return glpSAFailed();
        }

        v34 = v33;
        v35 = glpCompilerGetNameTable(a1);
        if (glpNameTableGetGLSLVersion(v35) == 6)
        {
          v36 = glpASTNodeGetSaType(v34);
          if (!glpTypesEqual(SaType, v36))
          {
            v52 = glpCompilerGetInfoLog(a1);
            v11 = glpASTNodeGetLocation(Statement, &v66).n128_u64[0];
            v12 = "Type of 'case' expressions must match type of 'switch' expression";
            goto LABEL_50;
          }
        }

        glpCompilerGetAllocator();
        v38 = v37;
        glpASTNodeGetLocation(v34, &v66);
        v39 = glpGetPrimitiveType(5u);
        glpMakeTypeConversionNode(v38, &v66, v39, v60);
        v41 = v40;
        glpUnaryOperatorNodeSetExpr(v40, v34);
        v42 = glpSANode(a1, v41);
        if (v42 == -1)
        {
          return glpSAFailed();
        }

        v43 = v42;
        glpCaseStatementNodeSetConstValue(Statement, v42);
        if (!glpIsConstantNode(v43))
        {
          v52 = glpCompilerGetInfoLog(a1);
          v11 = glpASTNodeGetLocation(Statement, &v66).n128_u64[0];
          v12 = "Value of 'case' expression must be constant";
          goto LABEL_50;
        }

        v44 = *glpConstantNodeGetValue(v43);
        v45 = glpIntHashGet(v61, v44);
        if (v45)
        {
          v57 = v45;
          v52 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(Statement, &v66);
          v11 = glpASTNodeGetLocation(v57, &v62).n128_u64[0];
          v58 = v63;
          v12 = "Duplicate case value found.  Previous occurrence on line %d";
          goto LABEL_50;
        }

        glpIntHashPut(v61, v44, Statement, v46);
        glpCaseStatementNodeSetIsStray(Statement, 0);
        v31 = 0;
      }

      else
      {
        if (Kind == 71)
        {
          if (v28)
          {
            v52 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(Statement, &v66);
            v11 = glpASTNodeGetLocation(v28, &v64).n128_u64[0];
            v58 = v65;
            v12 = "Multiple default statements in switch see line %d";
            goto LABEL_50;
          }

          glpDefaultStatementNodeSetIsStray(Statement, 0);
          v31 = 0;
          goto LABEL_36;
        }

        if ((v26 & 1) == 0)
        {
          v52 = glpCompilerGetInfoLog(a1);
          v11 = glpASTNodeGetLocation(Statement, &v66).n128_u64[0];
          v12 = "First statement in switch is not case/default";
          goto LABEL_50;
        }

        v31 = 1;
      }

      Statement = v28;
LABEL_36:
      ++v27;
      v26 = 1;
      v28 = Statement;
      if (v27 >= glpBlockNodeGetStatementCount(Body))
      {
        IntHash = v61;
        if (v31)
        {
          break;
        }

        v52 = glpCompilerGetInfoLog(a1);
        v11 = glpASTNodeGetLocation(Body, &v66).n128_u64[0];
        v12 = "Expected statement after final 'case'/'default'";
LABEL_50:
        v13 = v52;
LABEL_5:
        glpLogMessage(v13, 0, &v66, v12, *&v11, v58, v59);
        return glpSAFailed();
      }
    }
  }

  glpDestroyIntHash(IntHash);
  v47 = glpSwitchStatementNodeGetExpr(v2);
  v48 = glpSANode(a1, v47);
  if (v48 != -1)
  {
    glpSwitchStatementNodeSetExpr(v2, v48);
  }

  v49 = glpSwitchStatementNodeGetBody(v2);
  v50 = glpSANode(a1, v49);
  if (v50 == -1)
  {
    return glpSAFailed();
  }

  glpSwitchStatementNodeSetBody(v2, v50);
  if (v48 == -1)
  {
    return glpSAFailed();
  }

  v51 = glpGetPrimitiveType(0);
  glpASTNodeSetSaType(v2, v51);
  --*(CurrentFunction + 124);
  return v2;
}

uint64_t glpSACaseStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  ConstValue = glpCaseStatementNodeGetConstValue(v2);
  v5 = glpSANode(a1, ConstValue);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpCaseStatementNodeSetConstValue(v2, v5);
    if (glpCaseStatementNodeGetIsStray(v2))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      *&v7 = glpASTNodeGetLocation(v2, &v10).n128_u64[0];
      glpLogMessage(InfoLog, 0, &v10, "case disallowed outside switch body", v7);
      return glpSAFailed();
    }

    else
    {
      PrimitiveType = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v2, PrimitiveType);
    }

    return v2;
  }
}

uint64_t glpSADefaultStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  if (glpDefaultStatementNodeGetIsStray(v2))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    *&v5 = glpASTNodeGetLocation(v2, &v8).n128_u64[0];
    glpLogMessage(InfoLog, 0, &v8, "default disallowed outside switch body", v5);
    return glpSAFailed();
  }

  else
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
  }

  return v2;
}

uint64_t glpSABreakStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  if (*(glpNameTableGetCurrentFunction(NameTable) + 120))
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
  }

  else
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    *&v8 = glpASTNodeGetLocation(v2, &v9).n128_u64[0];
    glpLogMessage(InfoLog, 0, &v9, "break disallowed outside switch/loop body", v8);
    return glpSAFailed();
  }

  return v2;
}

uint64_t glpSAContinueStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  if (*(glpNameTableGetCurrentFunction(NameTable) + 120))
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
  }

  else
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    *&v7 = glpASTNodeGetLocation(v2, &v9).n128_u64[0];
    glpLogMessage(InfoLog, 0, &v9, "continue disallowed outside loop body", v7);
    return glpSAFailed();
  }

  return v2;
}

uint64_t glpSADiscardStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  if (glpNameTableGetLanguage(NameTable) == 4)
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
  }

  else
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    *&v7 = glpASTNodeGetLocation(v2, &v9).n128_u64[0];
    glpLogMessage(InfoLog, 0, &v9, "'discard' is only meaningful in the fragment shader.", v7);
    return glpSAFailed();
  }

  return v2;
}

uint64_t glpSAReturnStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  Expr = glpReturnStatementNodeGetExpr(v2);
  v5 = glpSANode(a1, Expr);
  if (v5 != -1)
  {
    glpReturnStatementNodeSetExpr(v2, v5);
    if (glpReturnStatementNodeGetExpr(v2))
    {
      v6 = glpReturnStatementNodeGetExpr(v2);
      SaType = glpASTNodeGetSaType(v6);
    }

    else
    {
      SaType = glpGetPrimitiveType(0);
    }

    v9 = SaType;
    NameTable = glpCompilerGetNameTable(a1);
    CurrentFunction = glpNameTableGetCurrentFunction(NameTable);
    v12 = CurrentFunction;
    if ((*(CurrentFunction + 9) & 0x20) != 0 && *(CurrentFunction + 112))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      *&v14 = glpASTNodeGetLocation(v2, &v36).n128_u64[0];
      glpLogMessage(InfoLog, 0, &v36, "Inline function '%.*s' can only have 1 return", v14);
      return glpSAFailed();
    }

    *(CurrentFunction + 112) = 1;
    ReturnType = glpFunctionTypeGetReturnType(*CurrentFunction);
    if (!glpTypesEqual(v9, ReturnType) && !glpTypeGetKind(v9) && !glpTypeGetKind(ReturnType))
    {
      ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v9);
      v19 = glpPrimitiveTypeGetPrimitiveType(ReturnType);
      if (!glpCanConvert(PrimitiveType, v19, ImplicitConversionPolicy))
      {
        v33 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v36);
        glpLogMessage(v33, 0, &v36, "Expression in 'return' statement must match return type of function (and no available implicit conversion)");
        return glpSAFailed();
      }

      v20 = glpReturnStatementNodeGetExpr(v2);
      v21 = glpConvert(a1, v20, ReturnType, 0);
      glpReturnStatementNodeSetExpr(v2, v21);
    }

    glpASTNodeSetSaType(v2, v9);
    glpReturnStatementNodeSetExtra(v2, v12);
    if (!glpReturnStatementNodeGetExpr(v2))
    {
      return v2;
    }

    v36 = 0uLL;
    v37 = 0;
    glpASTNodeGetLocation(v2, &v36);
    v22 = *(glpReturnStatementNodeGetExtra(v2) + 72);
    v34 = v36;
    v35 = v37;
    LValueForVariableObject = glpMakeLValueForVariableObject(a1, &v34, v22);
    glpCompilerGetAllocator();
    v34 = v36;
    v35 = v37;
    glpMakeCommaExprNode(v24, &v34, 0);
    v26 = v25;
    glpCompilerGetAllocator();
    v28 = v27;
    v29 = glpReturnStatementNodeGetExpr(v2);
    v34 = v36;
    v35 = v37;
    AssignFragment = glpMakeAssignFragment(a1, &v34, LValueForVariableObject, v29);
    glpCommaExprNodeAddExpr(v28, v26, AssignFragment);
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v31, v26, v2);
    glpReturnStatementNodeSetExpr(v2, 0);
    v32 = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, v32);
    return glpSANode(a1, v26);
  }

  return glpSAFailed();
}

uint64_t glpSATopLevel(uint64_t a1, uint64_t a2)
{
  NameTable = glpCompilerGetNameTable(a1);
  glpNameTableSetTopLevelBlock(NameTable, a2);
  DefCount = glpTopLevelNodeGetDefCount(a2);
  if (!DefCount)
  {
    goto LABEL_8;
  }

  v6 = -DefCount;
  v7 = 1;
  do
  {
    v8 = glpTopLevelNodeGetDefCount(a2);
    Def = glpTopLevelNodeGetDef(a2, v8 + v6);
    v10 = glpCompilerGetNameTable(a1);
    glpNameTableSetStatementIndex(v10, v8 + v6);
    v11 = glpSANode(a1, Def);
    v12 = glpTopLevelNodeGetDefCount(a2);
    if (v11 != -1)
    {
      glpTopLevelNodeSetDef(a2, v12 + v6, v11);
    }

    v7 &= v11 != -1;
  }

  while (!__CFADD__(v6++, 1));
  if ((v7 & 1) == 0)
  {

    return glpSAFailed();
  }

  else
  {
LABEL_8:
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    v15 = glpCompilerGetNameTable(a1);
    if (glpNameTableGetLanguage(v15) == 1 && !glpCheckBarrier(a2))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v18[0] = "-1";
      v18[1] = 0xEDA00000002;
      v18[2] = 0xFFFFFFFFLL;
      glpLogMessage(InfoLog, 0, v18, "You can't call barrier() outside main, within control flow, or after a return statement.");
      return glpSAFailed();
    }

    return a2;
  }
}

uint64_t glpSASubroutineRawCall(uint64_t a1, uint64_t a2)
{
  v4 = glpSubroutineRawCallNodeGetIndexExpr(a2);
  v5 = glpSANode(a1, v4);
  if (v5 != -1)
  {
    glpSubroutineRawCallNodeSetIndexExpr(a2, v5);
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSAOffset(uint64_t a1, uint64_t a2)
{
  BankIndex = glpOffsetNodeGetBankIndex(a2);
  v5 = glpSANode(a1, BankIndex);
  v6 = v5 == -1;
  if (v5 != -1)
  {
    glpOffsetNodeSetBankIndex(a2, v5);
  }

  OffsetExpr = glpOffsetNodeGetOffsetExpr(a2);
  v8 = glpSANode(a1, OffsetExpr);
  if (v8 == -1)
  {
    v6 = 1;
  }

  else
  {
    glpOffsetNodeSetOffsetExpr(a2, v8);
  }

  VectorElementExpr = glpOffsetNodeGetVectorElementExpr(a2);
  v10 = glpSANode(a1, VectorElementExpr);
  if (v10 != -1)
  {
    glpOffsetNodeSetVectorElementExpr(a2, v10);
    if (!v6)
    {
      abort();
    }
  }

  return glpSAFailed();
}

uint64_t glpSALValue(uint64_t a1, uint64_t a2)
{
  if (glpSADeref(a1, a2) != -1)
  {
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSARValue(uint64_t a1, uint64_t a2)
{
  if (glpSADeref(a1, a2) != -1)
  {
    Base = glpRValueNodeGetBase(a2);
    v5 = glpSANode(a1, Base);
    if (v5 != -1)
    {
      glpRValueNodeSetBase(a2, v5);
      abort();
    }
  }

  return glpSAFailed();
}

uint64_t glpSAIBPartialDeref(uint64_t a1, uint64_t a2)
{
  BankIndex = glpIBPartialDerefNodeGetBankIndex(a2);
  v5 = glpSANode(a1, BankIndex);
  if (v5 != -1)
  {
    glpIBPartialDerefNodeSetBankIndex(a2, v5);
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSAPPStreamOp(uint64_t a1, uint64_t a2)
{
  if (glpSACall(a1, a2) != -1)
  {
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSAUnaryOperator(uint64_t a1, uint64_t a2)
{
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  v5 = glpSANode(a1, Expr);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpUnaryOperatorNodeSetExpr(a2, v5);
    v6 = glpUnaryOperatorNodeGetExpr(a2);
    SaFlags = glpASTNodeGetSaFlags(v6);
    glpASTNodeSetSaFlags(a2, SaFlags & 0x7F);
    return a2;
  }
}

void *__glpSAVariableIdentifier_block_invoke(void *result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  v6 = *(*(result[4] + 8) + 24);
  if (v6)
  {
    v7 = v6 == 6;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || (result = glpNameTableGetGLSLVersion(result[6]), result != 1))
  {
    *a5 = 1;
  }

  return result;
}

void *__glpSATypeIdentifier_block_invoke(void *result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  v6 = *(*(result[4] + 8) + 24);
  if (v6)
  {
    v7 = v6 == 6;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || (result = glpNameTableGetGLSLVersion(result[6]), result != 1))
  {
    *a5 = 1;
  }

  return result;
}

uint64_t glpSACall(uint64_t a1, uint64_t a2)
{
  if (glpIsUndeterminedCallNode(a2))
  {
    v4 = glpUndeterminedCallNodeGetCallee(a2);
    if (glpIsVariableIdentifierNode(v4))
    {
      NameTable = glpCompilerGetNameTable(a1);
      if (glpNameTableIsExtensionEnabled(NameTable, 0x24u))
      {
        v6 = glpUndeterminedCallNodeGetCallee(a2);
        Name = glpVariableIdentifierNodeGetName(v6);
        if (glpStringsEqual("$assert", 0x75B16CFF00000007uLL, Name, v8))
        {
          return a2;
        }
      }
    }
  }

  if (!glpCallNodeGetArgCount(a2))
  {
    return a2;
  }

  v9 = 0;
  v10 = 1;
  do
  {
    v11 = glpCallNodeGetArg(a2, v9);
    v12 = glpSANode(a1, v11);
    if (v12 == -1)
    {
      v10 = 0;
    }

    else
    {
      glpCallNodeSetArg(a2, v9, v12);
    }

    ++v9;
  }

  while (v9 < glpCallNodeGetArgCount(a2));
  if (v10)
  {
    return a2;
  }

  return glpSAFailed();
}

void *__glpSAUndeterminedCall_block_invoke(void *result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v8 = result;
  if (a2 == 4 || a2 == 7 || (result = glpNameTableGetGLSLVersion(result[6]), result != 1) && (result = glpCompilerGetIOSVersion(v8[7]), result >= 9))
  {
    *(*(v8[4] + 8) + 24) = a2;
    *(*(v8[5] + 8) + 24) = a3;
    *a5 = 1;
  }

  return result;
}

uint64_t __glpSASubroutineArrayCall_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAMethodCall_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t glpSAIncrementOperator(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (glpSAUnaryOperator(a1, a2) != -1)
  {
    Expr = glpUnaryOperatorNodeGetExpr(v2);
    SaType = glpASTNodeGetSaType(Expr);
    if (glpTypeGetKind(SaType))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      *&v7 = glpASTNodeGetLocation(v2, &v17).n128_u64[0];
      glpLogMessage(InfoLog, 0, &v17, "Pre- or post- -increment or -decrement of nonprimitive type", v7);
    }

    else
    {
      v9 = glpASTNodeGetSaType(Expr);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v9);
      if (glpPrimitiveTypeGetCategory(PrimitiveType) - 1 >= 3)
      {
        v13 = glpCompilerGetInfoLog(a1);
        *&v14 = glpASTNodeGetLocation(v2, &v17).n128_u64[0];
        glpLogMessage(v13, 0, &v17, "Pre- or post- -increment or -decrement of nonscalar nonvector nonmatrix type", v14);
      }

      else if (glpIsLValueNode(Expr))
      {
        if ((glpASTNodeGetSaFlags(Expr) & 0x360) == 0)
        {
          return v2;
        }

        v11 = glpCompilerGetInfoLog(a1);
        *&v12 = glpASTNodeGetLocation(v2, &v17).n128_u64[0];
        glpLogMessage(v11, 0, &v17, "Pre- or post- -increment or -decrement of read-only variable", v12);
      }

      else
      {
        v15 = glpCompilerGetInfoLog(a1);
        *&v16 = glpASTNodeGetLocation(v2, &v17).n128_u64[0];
        glpLogMessage(v15, 0, &v17, "Pre- or post- -increment or -decrement of non-lvalue", v16);
      }
    }

    return glpSAFailed();
  }

  return glpSAFailed();
}

uint64_t glpSABinaryOperator(uint64_t a1, uint64_t a2)
{
  Lhs = glpBinaryOperatorNodeGetLhs(a2);
  v5 = glpSANode(a1, Lhs);
  if (v5 != -1)
  {
    glpBinaryOperatorNodeSetLhs(a2, v5);
  }

  Rhs = glpBinaryOperatorNodeGetRhs(a2);
  v7 = glpSANode(a1, Rhs);
  if (v7 != -1)
  {
    glpBinaryOperatorNodeSetRhs(a2, v7);
    if (v5 != -1)
    {
      v8 = glpBinaryOperatorNodeGetLhs(a2);
      v9 = glpBinaryOperatorNodeGetRhs(a2);
      SaFlags = glpASTNodeGetSaFlags(v8);
      v11 = glpASTNodeGetSaFlags(v9);
      if (glpCompilerDoesTrackPrecision(a1))
      {
        v12 = SaFlags & 0x1F;
        v13 = v11 & 0x1F;
        if (v12 != v13 && !glpIsAssignNode(a2) && !glpIsOpAssignNode(a2))
        {
          if (v12 == 31 || (SaFlags & 0x1F) == 0)
          {
            v15 = glpBinaryOperatorNodeGetLhs(a2);
            glpPushdownPrecision(a1, v15, v11 & 0x1F);
            goto LABEL_14;
          }

          if (v13 != 31 && (v11 & 0x1F) != 0)
          {
            if (v12 <= v13)
            {
              SaType = glpASTNodeGetSaType(v8);
              v20 = glpConvert(a1, v8, SaType, v11 & 0x1F);
              glpBinaryOperatorNodeSetLhs(a2, v20);
              goto LABEL_14;
            }

            v17 = glpASTNodeGetSaType(v9);
            v18 = glpConvert(a1, v9, v17, SaFlags & 0x1F);
            glpBinaryOperatorNodeSetRhs(a2, v18);
          }

          else
          {
            v16 = glpBinaryOperatorNodeGetRhs(a2);
            glpPushdownPrecision(a1, v16, SaFlags & 0x1F);
          }
        }

        v13 = SaFlags & 0x1F;
      }

      else
      {
        v13 = 0;
      }

LABEL_14:
      glpASTNodeSetSaFlags(a2, v13 | SaFlags & v11 & 0x60);
      return a2;
    }
  }

  return glpSAFailed();
}

uint64_t glpSwizzleHasDuplicateComponents(unsigned int a1)
{
  v1 = a1 & 7;
  if ((a1 & 7) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = v1 - 1;
  v4 = 5;
  while (1)
  {
    v5 = v2 + 1;
    if (v2 + 1 < v1)
    {
      break;
    }

LABEL_7:
    v4 += 2;
    --v3;
    v2 = v5;
    if (v5 == v1)
    {
      return 0;
    }
  }

  v6 = a1 >> (2 * v2 + 3);
  v7 = v3;
  v8 = v4;
  while ((((a1 >> v8) ^ v6) & 3) != 0)
  {
    v8 += 2;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t __glpSAFunctionPrototype_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

void *__glpSAFunctionPrototype_block_invoke_2(void *result, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v9 = result;
  if (a2 == 4 || (result = glpNameTableGetGLSLVersion(result[7]), result != 1))
  {
    *(*(v9[4] + 8) + 24) = a2;
    *(*(v9[5] + 8) + 24) = a3;
    *(*(v9[6] + 8) + 24) = a4;
    *a5 = 1;
  }

  return result;
}

uint64_t __glpSAFunctionPrototype_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *(*(*(result + 40) + 8) + 24) = a4 == 3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAFunctionPrototype_block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

void *__glpSAVariableDeclaration_block_invoke(void *result, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v9 = result;
  if (!a2 || a2 == 6 || (result = glpNameTableGetGLSLVersion(result[7]), result != 1))
  {
    *(*(v9[4] + 8) + 24) = a2;
    *(*(v9[5] + 8) + 24) = a3;
    *(*(v9[6] + 8) + 24) = a4 == 3;
    *a5 = 1;
  }

  return result;
}

uint64_t __glpSAVariableDeclaration_block_invoke_2(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == 1)
  {
    *a5 = 1;
  }

  *(*(*(result + 32) + 8) + 24) = a3;
  return result;
}

uint64_t __glpSAVariableDeclaration_block_invoke_3(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAQualifiedDeclaration_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t glpSAStructure(uint64_t a1, uint64_t a2)
{
  if (!glpStructureNodeGetFieldCount(a2))
  {
    return a2;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Field = glpStructureNodeGetField(a2, v4);
    v7 = glpSANode(a1, Field);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpStructureNodeSetField(a2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpStructureNodeGetFieldCount(a2));
  if (v5)
  {
    return a2;
  }

  return glpSAFailed();
}

uint64_t __glpSAStructType_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v8 = result;
  if (!a2 || a2 == 6 || (result = glpNameTableGetGLSLVersion(*(result + 48)), result != 1))
  {
    *(*(*(v8 + 32) + 8) + 24) = a2;
    *(*(*(v8 + 40) + 8) + 24) = a3;
    *a5 = 1;
  }

  return result;
}

uint64_t __glpSAInterfaceBlock_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAInterfaceBlock_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t glpSADeref(uint64_t a1, uint64_t a2)
{
  Offset = glpDerefNodeGetOffset(a2);
  v5 = glpSANode(a1, Offset);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpDerefNodeSetOffset(a2, v5);
    return a2;
  }
}

char *glpSetFilename(uint64_t a1, char *__s)
{
  v4 = *(*(a1 + 32) + 784);
  strlen(__s);
  v5 = glpCompilerPoolAlloc(v4);
  result = strcpy(v5, __s);
  *(a1 + 304) = result;
  return result;
}

char *glpSetFileNumber(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__s = 0u;
  v5 = 0u;
  snprintf_l(__s, 0x100uLL, 0, "%d", a2);
  return glpSetFilename(a1, __s);
}

uint64_t yylex(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  if (!*(a3 + 20))
  {
    *(a3 + 20) = 1;
    if (!*(a3 + 21))
    {
      *(a3 + 21) = 1;
    }

    if (!a3[1])
    {
      a3[1] = *MEMORY[0x277D85E00];
    }

    if (!a3[2])
    {
      a3[2] = *MEMORY[0x277D85E08];
    }

    v5 = a3[5];
    if (!v5 || (v6 = a3[3], (v7 = *(v5 + 8 * v6)) == 0))
    {
      yyensure_buffer_stack(a3);
      buffer = yy_create_buffer(a3[1], 0x4000, a3);
      v4 = a1;
      v6 = a3[3];
      *(a3[5] + 8 * v6) = buffer;
      v5 = a3[5];
      v7 = *(v5 + 8 * v6);
    }

    a3[7] = *(v7 + 32);
    v10 = *(v7 + 16);
    a3[9] = v10;
    a3[17] = v10;
    a3[1] = **(v5 + 8 * v6);
    *(a3 + 48) = *v10;
  }

  v11 = a3 + 9;
  v12 = a3 + 15;
LABEL_13:
  v13 = a3[9];
  *v13 = *(a3 + 48);
  v14 = *(a3 + 21);
  v15 = v13;
  do
  {
LABEL_14:
    v16 = yy_ec[*v15];
    if (yy_accept[v14])
    {
      *(a3 + 28) = v14;
      a3[15] = v15;
    }

    v17 = v14;
    v18 = yy_base[v14] + v16;
    if (v14 != yy_chk[v18])
    {
      do
      {
        v17 = yy_def[v17];
        if (v17 >= 876)
        {
          v16 = *(&yy_meta + v16);
        }

        v18 = yy_base[v17] + v16;
      }

      while (yy_chk[v18] != v17);
    }

    v14 = yy_nxt[v18];
    ++v15;
  }

  while (v14 != 875);
  while (1)
  {
    previous_state = *(a3 + 28);
    v20 = v12;
LABEL_22:
    v21 = *v20;
    v22 = yy_accept[previous_state];
    a3[17] = v13;
    a3[8] = v21 - v13;
    *(a3 + 48) = *v21;
    *v21 = 0;
    a3[9] = v21;
LABEL_23:
    switch(v22)
    {
      case 0:
        *v21 = *(a3 + 48);
        continue;
      case 1:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 310;
      case 2:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 309;
      case 3:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 428;
      case 4:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 429;
      case 5:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 431;
      case 6:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 430;
      case 7:
      case 10:
      case 20:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 46:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 86:
      case 87:
      case 90:
      case 91:
      case 92:
      case 94:
      case 96:
      case 118:
      case 122:
      case 123:
      case 124:
      case 128:
      case 130:
      case 131:
      case 136:
      case 137:
      case 143:
      case 145:
      case 146:
      case 150:
      case 153:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 170:
      case 171:
      case 174:
      case 175:
      case 176:
      case 178:
      case 180:
      case 205:
        v37 = *a3;
        goto LABEL_45;
      case 8:
      case 17:
      case 19:
      case 38:
      case 39:
      case 40:
      case 41:
      case 43:
      case 44:
      case 45:
      case 47:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 57:
      case 58:
      case 59:
      case 80:
      case 82:
      case 84:
      case 101:
      case 116:
      case 117:
      case 120:
      case 126:
      case 139:
      case 142:
      case 148:
      case 149:
      case 151:
      case 154:
      case 156:
      case 157:
      case 158:
      case 168:
      case 169:
      case 181:
      case 190:
        v46 = *a3;
        goto LABEL_52;
      case 9:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 258;
      case 11:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 260;
      case 12:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 263;
      case 13:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 271;
      case 14:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 272;
      case 15:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 273;
      case 16:
        v57 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        if (v57 <= 5)
        {
          goto LABEL_47;
        }

        return 342;
      case 18:
        v55 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        if (v55 <= 5)
        {
          goto LABEL_47;
        }

        return 290;
      case 21:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 259;
      case 22:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 264;
      case 23:
        v56 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        if (v56 <= 5)
        {
          goto LABEL_47;
        }

        return 343;
      case 24:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 269;
      case 37:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 265;
      case 42:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 266;
      case 48:
        v46 = *a3;
        if (*(*a3 + 40) < 6u)
        {
          goto LABEL_52;
        }

        *(v4 + 8) = *(v46 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 339;
      case 49:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 261;
      case 50:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 267;
      case 56:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 306;
      case 60:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 268;
      case 79:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 291;
      case 81:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 293;
      case 83:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 262;
      case 85:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 289;
      case 88:
        v84 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v84 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 322;
      case 89:
        v75 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v75 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 327;
      case 93:
        v79 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v79 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 323;
      case 95:
        v80 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v80 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 324;
      case 97:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 274;
      case 98:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 275;
      case 99:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 276;
      case 100:
        v37 = *a3;
        if (*(*a3 + 756) == 3 && *(v37 + 620) == 3 && *(v37 + 40) < 6u)
        {
          goto LABEL_45;
        }

        *(v4 + 8) = *(v37 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 347;
      case 102:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 308;
      case 103:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        goto LABEL_230;
      case 104:
        v81 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v81 < 6)
        {
          goto LABEL_48;
        }

LABEL_230:
        *(v39 + 20) = 1;
        return 280;
      case 105:
        v87 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v87 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 281;
      case 106:
        v68 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v68 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 282;
      case 107:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        goto LABEL_211;
      case 108:
        v58 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v58 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 283;
      case 109:
        v91 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v91 < 6)
        {
          goto LABEL_48;
        }

LABEL_211:
        *(v39 + 20) = 1;
        return 284;
      case 110:
        v83 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v83 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 285;
      case 111:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        goto LABEL_157;
      case 112:
        v65 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v65 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 286;
      case 113:
        v95 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v95 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 287;
      case 114:
        v82 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v82 < 6)
        {
          goto LABEL_48;
        }

LABEL_157:
        *(v39 + 20) = 1;
        return 288;
      case 115:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 307;
      case 119:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 292;
      case 121:
        v46 = *a3;
        if (*(*a3 + 40) < 6u)
        {
          goto LABEL_52;
        }

        v38 = *(v46 + 344);
        goto LABEL_46;
      case 125:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 305;
      case 127:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 270;
      case 129:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 299;
      case 132:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 303;
      case 133:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 300;
      case 134:
        v94 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v94 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 317;
      case 135:
        v85 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v85 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 320;
      case 138:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 345;
      case 140:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 304;
      case 141:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 301;
      case 144:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 302;
      case 147:
        v74 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v74 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 315;
      case 152:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 296;
      case 155:
        v46 = *a3;
        if (*(*a3 + 40) < 6u)
        {
LABEL_52:
          glpPaReservedWord(v46);
          return 0;
        }

        else
        {
          *(v4 + 8) = *(v46 + 344);
          *(v4 + 16) = *(*a3 + 340);
          return 341;
        }

      case 166:
        v59 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v59 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 340;
      case 167:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 294;
      case 172:
        v64 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v64 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 330;
      case 173:
        v93 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v93 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 335;
      case 177:
        v92 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v92 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 331;
      case 179:
        v78 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v78 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 332;
      case 182:
        v77 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v77 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 312;
      case 183:
        v86 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v86 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 313;
      case 184:
        v76 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v76 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 314;
      case 185:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 295;
      case 186:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 277;
      case 187:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 278;
      case 188:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 279;
      case 189:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 297;
      case 191:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 298;
      case 192:
        *v4 = 1;
        goto LABEL_178;
      case 193:
        *v4 = 0;
LABEL_178:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 381;
      case 194:
      case 195:
      case 197:
        v49 = a3[17];
        v50 = v4;
        v51 = v49[strlen(v49) - 1] & 0xDF;
        *v50 = strtoul_l(v49, 0, 0, 0);
        *(v50 + 8) = *(*a3 + 344);
        *(v50 + 16) = *(*a3 + 340);
        if (v51 == 85)
        {
          return 337;
        }

        else
        {
          return 380;
        }

      case 196:
        InfoLog = glpCompilerGetInfoLog(*(*a3 + 784));
        v61 = *a3;
        StringZ = glpMakeStringZ(*(*a3 + 344));
        glpMakeSourceLocation(StringZ, v63, *(v61 + 340), v101);
        glpLogMessage(InfoLog, 0, v101, "'%s' : Invalid Octal number. ", a3[17]);
        glpParseRecover(*a3);
        return 0;
      case 198:
      case 199:
      case 200:
        v47 = v4;
        *v4 = strtof_l(a3[17], 0, 0);
        *(v47 + 8) = *(*a3 + 344);
        *(v47 + 16) = *(*a3 + 340);
        return 379;
      case 201:
      case 202:
      case 203:
        v48 = v4;
        *v4 = strtod_l(a3[17], 0, 0);
        *(v48 + 8) = *(*a3 + 344);
        *(v48 + 16) = *(*a3 + 340);
        return 354;
      case 204:
        v37 = *a3;
        if (*(*a3 + 756) == 3 && *(v37 + 760) == 3)
        {
          return 0;
        }

LABEL_45:
        v38 = *(v37 + 344);
LABEL_46:
        *(v4 + 8) = v38;
        *(v4 + 16) = *(*a3 + 340);
LABEL_47:
        v39 = *a3;
LABEL_48:
        v40 = *(v39 + 784);
        v41 = v4;
        strlen(a3[17]);
        v42 = glpCompilerPoolAlloc(v40);
        *v41 = v42;
        strcpy(v42, a3[17]);
        v43 = *a3;
        v44 = *v41;

        return glpPaIdentOrType(v43, v44);
      case 206:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 393;
      case 207:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 425;
      case 208:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 401;
      case 209:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 386;
      case 210:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 416;
      case 211:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 403;
      case 212:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 412;
      case 213:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 415;
      case 214:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 390;
      case 215:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 427;
      case 216:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 419;
      case 217:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 394;
      case 218:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 420;
      case 219:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 395;
      case 220:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 426;
      case 221:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 391;
      case 222:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 400;
      case 223:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 421;
      case 224:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 397;
      case 225:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 418;
      case 226:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 385;
      case 227:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 396;
      case 228:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 422;
      case 229:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 383;
      case 230:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 398;
      case 231:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 387;
      case 232:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 389;
      case 233:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 423;
      case 234:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 388;
      case 235:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 384;
      case 236:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 399;
      case 237:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 424;
      case 238:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 402;
      case 239:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 392;
      case 240:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 417;
      case 241:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 406;
      case 242:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 407;
      case 243:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 409;
      case 244:
      case 254:
      case 255:
        goto LABEL_13;
      case 245:
        v35 = v4;
        v36 = v11;
        v100 = v12;
        glpPaParseComment(*a3, (v4 + 16));
        goto LABEL_43;
      case 246:
        v90 = *a3;
        *(v90 + 20) = 0;
        *(v4 + 8) = *(v90 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 414;
      case 247:
        v66 = *a3;
        *(v66 + 20) = 0;
        *(v4 + 8) = *(v66 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 408;
      case 248:
        v67 = *a3;
        *(v67 + 20) = 0;
        *(v4 + 8) = *(v67 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 413;
      case 249:
        v73 = *a3;
        *(v73 + 20) = 0;
        *(v73 + 4) = 1;
        *(v4 + 8) = *(v73 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 404;
      case 250:
        v70 = *a3;
        *(v70 + 20) = 0;
        *(v70 + 4) = 0;
        *(v4 + 8) = *(v70 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 405;
      case 251:
        v69 = *a3;
        if (*(*a3 + 4))
        {
          *(v69 + 20) = 0;
        }

        *(v4 + 8) = *(v69 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 411;
      case 252:
        *(a3 + 21) = 3;
        return 410;
      case 253:
        *(a3 + 21) = 1;
        v88 = v4;
        strlen(a3[17]);
        v89 = glpCompilerPoolAlloc(*(*a3 + 784));
        *v88 = v89;
        strcpy(v89, a3[17]);
        *(v88 + 8) = *(*a3 + 344);
        *(v88 + 16) = *(*a3 + 340);
        return 382;
      case 256:
        v71 = glpCompilerGetInfoLog(*(*a3 + 784));
        StringBuffer = glpLogGetStringBuffer(v71);
        glpStringBufferAppendFormat(StringBuffer, "FLEX: Unknown char %s\n", a3[17]);
        return 0;
      case 257:
        v35 = v4;
        v36 = v11;
        v100 = v12;
        fwrite(a3[17], a3[8], 1uLL, a3[2]);
LABEL_43:
        v12 = v100;
        v11 = v36;
        v4 = v35;
        goto LABEL_13;
      case 258:
        v23 = a3[17];
        *v21 = *(a3 + 48);
        v24 = a3[5];
        v25 = a3[3];
        v26 = *(v24 + 8 * v25);
        if (*(v26 + 64))
        {
          v27 = a3[7];
        }

        else
        {
          v27 = *(v26 + 32);
          a3[7] = v27;
          *v26 = a3[1];
          v26 = *(v24 + 8 * v25);
          *(v26 + 64) = 1;
        }

        v98 = v4;
        v99 = v12;
        v97 = v11;
        if (*v11 > (*(v26 + 8) + v27))
        {
          v96 = v23;
          next_buffer = yy_get_next_buffer(a3);
          if (next_buffer == 1)
          {
            *(a3 + 22) = 0;
            a3[9] = a3[17];
            v22 = (*(a3 + 21) - 1) / 2 + 259;
            v11 = v97;
            v4 = v98;
            v12 = v99;
            goto LABEL_23;
          }

          if (next_buffer == 2)
          {
            a3[9] = *(*(a3[5] + 8 * a3[3]) + 8) + a3[7];
            previous_state = yy_get_previous_state(a3);
            v13 = a3[17];
            v11 = v97;
            v4 = v98;
            v20 = v97;
            v12 = v99;
            goto LABEL_22;
          }

          a3[9] = a3[17] + ~v96 + v21;
          v14 = yy_get_previous_state(a3);
          v15 = a3[9];
          v13 = a3[17];
          v11 = v97;
          v4 = v98;
          v12 = v99;
          goto LABEL_14;
        }

        a3[9] = a3[17] + ~v23 + v21;
        v29 = yy_get_previous_state(a3);
        if (yy_accept[v29])
        {
          v30 = a3[9];
          *(a3 + 28) = v29;
          a3[15] = v30;
        }

        v31 = v29;
        v32 = yy_base[v29] + 1;
        v11 = v97;
        v4 = v98;
        v12 = v99;
        if (v29 != yy_chk[v32])
        {
          do
          {
            v33 = yy_def[v31];
            v31 = v33;
            v32 = yy_base[v33] + 1;
          }

          while (v33 != yy_chk[v32]);
        }

        v34 = yy_nxt[v32];
        v13 = a3[17];
        if (yy_nxt[v32] && v34 != 875)
        {
          v14 = v34;
          v15 = (*v97 + 1);
          *v97 = v15;
          goto LABEL_14;
        }

        break;
      case 259:
      case 260:
        v52 = *a3;
        *(*a3 + 16) = 1;
        v53 = a3[5];
        if (v53)
        {
          v54 = *(v53 + 8 * a3[3]);
        }

        else
        {
          v54 = 0;
        }

        yy_delete_buffer(v54, *(v52 + 24));
        return 0;
      default:
        glpLexerFatalError();
    }
  }
}

double yyensure_buffer_stack(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (a1[3] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0x352A3853uLL);
      if (v5)
      {
        a1[5] = v5;
        v6 = &v5[8 * a1[4]];
        result = 0.0;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *v6 = 0u;
        *(v6 + 1) = 0u;
        a1[4] = v4;
        return result;
      }

LABEL_8:
      abort();
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
    if (!v8)
    {
      goto LABEL_8;
    }

    a1[5] = v8;
    *v8 = 0;
    result = 0.0;
    *(a1 + 3) = xmmword_23A29C340;
  }

  return result;
}

_DWORD *yy_create_buffer(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0xCA0EF1E7uLL);
  if (!v6 || (v7 = v6, v6[6] = a2, (v8 = malloc_type_malloc(a2 + 2, 0xCA0EF1E7uLL)) == 0))
  {
    abort();
  }

  *(v7 + 8) = v8;
  *(v7 + 40) = 1;
  yy_init_buffer(v7, a1, a3);
  return v7;
}

uint64_t glpPaIdentOrType(uint64_t a1, char *__s)
{
  if (*(a1 + 20))
  {
    return 377;
  }

  v5 = *(a1 + 32);
  v6 = strlen(__s);
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = v6;
    do
    {
      v8 = (32 * v8 + (v8 >> 2) + __s[v7 - 1]) ^ v8;
      v7 += ~(v6 >> 5);
    }

    while (v7 > v6 >> 5);
    v9 = v8 << 32;
  }

  else
  {
    v9 = 0;
  }

  if (!glpStringHashGet(v5, __s, v9 | v6))
  {
    return 377;
  }

  *(a1 + 20) = 1;
  return 378;
}

uint64_t glpPaReservedWord(uint64_t a1)
{
  v2 = *(a1 + 24);
  InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
  v4 = *(a1 + 344);
  v5 = strlen(v4);
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = v5;
    do
    {
      v7 = (32 * v7 + (v7 >> 2) + v4[v6 - 1]) ^ v7;
      v6 += ~(v5 >> 5);
    }

    while (v6 > v5 >> 5);
    v8 = v7 << 32;
  }

  else
  {
    v8 = 0;
  }

  glpMakeSourceLocation(v4, v8 | v5, *(a1 + 340), v10);
  glpLogMessage(InfoLog, 0, v10, "'%s' : Reserved word. ", *(v2 + 136));
  return glpParseRecover(a1);
}

const char *glpMakeStringZ(const char *a1)
{
  v2 = strlen(a1);
  if (v2)
  {
    v3 = v2;
    v4 = v2;
    do
    {
      v4 ^= 32 * v4 + (v4 >> 2) + a1[v3 - 1];
      v3 += ~(v2 >> 5);
    }

    while (v3 > v2 >> 5);
  }

  return a1;
}

uint64_t glpPaParseComment(uint64_t a1, _DWORD *a2)
{
LABEL_1:
  v4 = 0;
  do
  {
    while (1)
    {
      v5 = v4;
      v6 = *(a1 + 24);
      **(v6 + 72) = *(v6 + 48);
      v7 = *(v6 + 72);
      v8 = *v7;
      if (!*v7)
      {
        if (v7 >= *(*(*(v6 + 40) + 8 * *(v6 + 24)) + 8) + *(v6 + 56))
        {
          v9 = *(v6 + 136);
          *(v6 + 72) = v7 + 1;
          next_buffer = yy_get_next_buffer(v6);
          if (next_buffer)
          {
            if (next_buffer != 1)
            {
              yyrestart(*(v6 + 8), v6);
            }

            goto LABEL_1;
          }

          v7 = &v7[*(v6 + 136) - v9];
          *(v6 + 72) = v7;
        }

        else
        {
          *v7 = 0;
          v7 = *(v6 + 72);
        }

        v8 = *v7;
      }

      *v7 = 0;
      v11 = (*(v6 + 72) + 1);
      *(v6 + 72) = v11;
      *(v6 + 48) = *v11;
      if (v8 == 47)
      {
        break;
      }

      v4 = 1;
      if (v8 != 42)
      {
        if (v8 == 10)
        {
          ++*a2;
        }

        goto LABEL_1;
      }
    }

    v4 = 0;
  }

  while ((v5 & 1) == 0);
  return 1;
}

void yy_delete_buffer(void **a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = *(v3 + 8 * *(a2 + 24));
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a1)
    {
      *(v3 + 8 * *(a2 + 24)) = 0;
    }

    if (*(a1 + 10))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t yy_get_previous_state(uint64_t a1)
{
  v1 = *(a1 + 84);
  v2 = *(a1 + 136);
  v3 = *(a1 + 72);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = yy_ec[*v2];
      }

      else
      {
        v4 = 1u;
      }

      if (yy_accept[v1])
      {
        *(a1 + 112) = v1;
        *(a1 + 120) = v2;
      }

      v5 = v1;
      v6 = yy_base[v1] + v4;
      if (v1 != yy_chk[v6])
      {
        do
        {
          v5 = yy_def[v5];
          if (v5 >= 876)
          {
            v4 = *(&yy_meta + v4);
          }

          v6 = yy_base[v5] + v4;
        }

        while (yy_chk[v6] != v5);
      }

      v1 = yy_nxt[v6];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

uint64_t yy_get_next_buffer(void *a1)
{
  v1 = *(a1[5] + 8 * a1[3]);
  v2 = *(v1 + 8);
  v3 = a1[9];
  if (v3 > &v2[a1[7] + 1])
  {
    goto LABEL_38;
  }

  v5 = a1[17];
  if (*(v1 + 60))
  {
    v6 = ~v5 + v3;
    if (v6 >= 1)
    {
      v7 = ~v5 + v3;
      do
      {
        v8 = *v5++;
        *v2++ = v8;
        --v7;
      }

      while (v7);
      v1 = *(a1[5] + 8 * a1[3]);
    }

    v9 = v6;
    if (*(v1 + 64) == 2)
    {
      a1[7] = 0;
    }

    else
    {
      v11 = ~v6;
      v12 = *(v1 + 24);
      v13 = v12 + ~v6;
      if (!v13)
      {
        v14 = a1[9];
        while (*(v1 + 40))
        {
          v15 = *(v1 + 8);
          v16 = 2 * v12;
          *(v1 + 24) = v16;
          v17 = malloc_type_realloc(v15, v16 + 2, 0x352A3853uLL);
          if (!v17)
          {
            goto LABEL_36;
          }

          *(v1 + 8) = v17;
          v14 = &v17[v14 - v15];
          a1[9] = v14;
          v1 = *(a1[5] + 8 * a1[3]);
          v12 = *(v1 + 24);
          v13 = v12 + v11;
          if (v12 + v11)
          {
            goto LABEL_17;
          }
        }

        *(v1 + 8) = 0;
        goto LABEL_38;
      }

LABEL_17:
      if (v13 >= 0x2000)
      {
        v18 = 0x2000;
      }

      else
      {
        v18 = v13;
      }

      v19 = yylex_CPP(*a1 + 40, (*(v1 + 8) + v6), v18);
      a1[7] = v19;
      if (v19)
      {
        if (v19 >= v18)
        {
          goto LABEL_38;
        }

        *(*(*(a1[5] + 8 * a1[3]) + 8) + v6 + v19) = 32;
        v20 = a1[7];
        v21 = __CFADD__(v20, 1);
        v22 = v20 + 1;
        a1[7] = v22;
        v1 = *(a1[5] + 8 * a1[3]);
        *(v1 + 32) = v22;
        if (!v21)
        {
          v10 = 0;
LABEL_29:
          v23 = v22 + v6;
          if (v23 <= *(v1 + 24))
          {
            v29 = *(v1 + 8);
            goto LABEL_34;
          }

          v24 = v23 + (v22 >> 1);
          v25 = malloc_type_realloc(*(v1 + 8), v24, 0x352A3853uLL);
          if (!v25)
          {
LABEL_36:
            abort();
          }

          v26 = a1[5];
          v27 = a1[3];
          *(*(v26 + 8 * v27) + 8) = v25;
          v28 = *(v26 + 8 * v27);
          v29 = *(v28 + 8);
          if (v29)
          {
            *(v28 + 24) = v24 - 2;
            v23 = a1[7] + v9;
LABEL_34:
            a1[7] = v23;
            *(v29 + v23) = 0;
            *(*(*(a1[5] + 8 * a1[3]) + 8) + a1[7] + 1) = 0;
            a1[17] = *(*(a1[5] + 8 * a1[3]) + 8);
            return v10;
          }

LABEL_38:
          glpLexerFatalError();
        }

LABEL_26:
        if (v6)
        {
          v22 = 0;
          v10 = 2;
          *(v1 + 64) = 2;
        }

        else
        {
          yyrestart(a1[1], a1);
          v22 = a1[7];
          v1 = *(a1[5] + 8 * a1[3]);
          v10 = 1;
        }

        goto LABEL_29;
      }

      a1[7] = 0;
      v1 = *(a1[5] + 8 * a1[3]);
    }

    *(v1 + 32) = 0;
    goto LABEL_26;
  }

  if (v3 - v5 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

int *yyrestart(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 && (v5 = *(a2 + 24), *(v4 + 8 * v5)) || (yyensure_buffer_stack(a2), buffer = yy_create_buffer(*(a2 + 8), 0x4000, a2), v5 = *(a2 + 24), *(*(a2 + 40) + 8 * v5) = buffer, (v4 = *(a2 + 40)) != 0))
  {
    v7 = *(v4 + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  result = yy_init_buffer(v7, a1, a2);
  v9 = *(a2 + 40);
  v10 = *(a2 + 24);
  v11 = *(v9 + 8 * v10);
  *(a2 + 56) = *(v11 + 32);
  v12 = *(v11 + 16);
  *(a2 + 72) = v12;
  *(a2 + 136) = v12;
  *(a2 + 8) = **(v9 + 8 * v10);
  *(a2 + 48) = *v12;
  return result;
}

int *yy_init_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *__error();
  yy_flush_buffer(a1, a3);
  *a1 = a2;
  *(a1 + 60) = 1;
  v7 = *(a3 + 40);
  if (v7)
  {
    v7 = *(v7 + 8 * *(a3 + 24));
  }

  if (v7 != a1)
  {
    *(a1 + 52) = 1;
  }

  *(a1 + 44) = 0;
  result = __error();
  *result = v6;
  return result;
}

uint64_t yy_flush_buffer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = 0;
    **(result + 8) = 0;
    *(*(result + 8) + 1) = 0;
    *(result + 16) = *(result + 8);
    *(result + 48) = 1;
    *(result + 64) = 0;
    v2 = *(a2 + 40);
    if (v2)
    {
      v3 = *(v2 + 8 * *(a2 + 24));
    }

    else
    {
      v3 = 0;
    }

    if (v3 == result)
    {
      v4 = *(a2 + 24);
      v5 = *(v2 + 8 * v4);
      *(a2 + 56) = *(v5 + 32);
      v6 = *(v5 + 16);
      *(a2 + 72) = v6;
      *(a2 + 136) = v6;
      *(a2 + 8) = **(v2 + 8 * v4);
      *(a2 + 48) = *v6;
    }
  }

  return result;
}

void yypop_buffer_state(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(v1 + 8 * *(a1 + 24));
    if (v3)
    {
      yy_delete_buffer(v3, a1);
      v4 = *(a1 + 24);
      *(*(a1 + 40) + 8 * v4) = 0;
      if (v4)
      {
        *(a1 + 24) = --v4;
      }

      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          *(a1 + 56) = *(v6 + 32);
          v7 = *(v6 + 16);
          *(a1 + 72) = v7;
          *(a1 + 136) = v7;
          *(a1 + 8) = **(v5 + 8 * v4);
          *(a1 + 48) = *v7;
          *(a1 + 88) = 1;
        }
      }
    }
  }
}

uint64_t yylex_init(uint64_t *a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x98uLL, 0xCA0EF1E7uLL);
    if (!v2)
    {
      abort();
    }

    v3 = v2;
    result = 0;
    *a1 = v3;
    *(v3 + 144) = 0;
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *v3 = 0u;
    v5 = *a1;
    *(v5 + 92) = 0;
    *(v5 + 96) = 0;
    *(v5 + 104) = 0;
    *(v5 + 8) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 0;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
  }

  else
  {
    *__error() = 22;
    return 1;
  }

  return result;
}

uint64_t yylex_destroy(uint64_t a1)
{
  for (i = *(a1 + 40); i; i = *(a1 + 40))
  {
    if (!i[*(a1 + 24)])
    {
      break;
    }

    yy_delete_buffer(i[*(a1 + 24)], a1);
    *(*(a1 + 40) + 8 * *(a1 + 24)) = 0;
    yypop_buffer_state(a1);
  }

  free(i);
  *(a1 + 40) = 0;
  free(*(a1 + 104));
  free(a1);
  return 0;
}

uint64_t glpPaParseStrings(uint64_t a1, uint64_t *a2, int *a3, unsigned int a4, int a5)
{
  ScanFromString(a1 + 40, *a2);
  if (a4)
  {
    v22 = 0;
    if (a4 < 1)
    {
LABEL_6:
      if (!a3)
      {
        v22 = strlen(*a2);
        a3 = &v22;
      }

      yyrestart(0, *(a1 + 24));
      *(a1 + 16) = 0;
      *(a1 + 364) = 0;
      *(a1 + 384) = a2;
      *(a1 + 376) = a4;
      *(a1 + 368) = a3;
      *(a1 + 68) = 0;
      NameTable = glpCompilerGetNameTable(*(a1 + 784));
      *(a1 + 40) = glpNameTableGetGLSLVersion(NameTable);
      *(a1 + 44) = 0;
      glpInitializeExtensionBehavior(a1);
      if ((**(a1 + 368) & 0x80000000) != 0)
      {
        return 0;
      }

      yyparse(a1);
      if (*(a1 + 360) != 1 && !*(a1 + 8) && *(a1 + 12) < 1)
      {
        return 0;
      }

      if (a5)
      {
        while (1)
        {
          v13 = *(a1 + 56);
          if (!v13)
          {
            break;
          }

          *(a1 + 56) = v13[1];
          free(v13);
        }
      }
    }

    else
    {
      v10 = a4;
      v11 = a2;
      while (*v11)
      {
        ++v11;
        if (!--v10)
        {
          goto LABEL_6;
        }
      }

      InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
      v15 = *(a1 + 344);
      v16 = strlen(v15);
      if (v16)
      {
        v17 = v16;
        LODWORD(v18) = v16;
        do
        {
          v18 = (32 * v18 + (v18 >> 2) + v15[v17 - 1]) ^ v18;
          v17 += ~(v16 >> 5);
        }

        while (v17 > v16 >> 5);
        v19 = v18 << 32;
      }

      else
      {
        v19 = 0;
      }

      glpMakeSourceLocation(v15, v19 | v16, *(a1 + 340), v21);
      glpLogMessage(InfoLog, 0, v21, "'' : NULL shader source string ");
      glpParseRecover(a1);
    }
  }

  return 1;
}

void yyerror(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if ((*(a2 + 392) & 1) == 0)
    {
      return;
    }

    InfoLog = glpCompilerGetInfoLog(*(a2 + 784));
    v4 = *(a2 + 344);
    v5 = strlen(v4);
    if (v5)
    {
      v6 = v5;
      LODWORD(v7) = v5;
      do
      {
        v7 = (32 * v7 + (v7 >> 2) + v4[v6 - 1]) ^ v7;
        v6 += ~(v5 >> 5);
      }

      while (v6 > v5 >> 5);
      v8 = v7 << 32;
    }

    else
    {
      v8 = 0;
    }

    glpMakeSourceLocation(v4, v8 | v5, *(a2 + 340), v15);
    glpLogMessage(InfoLog, 0, v15, "'premature EOF' : syntax error %s");
  }

  else
  {
    v9 = glpCompilerGetInfoLog(*(a2 + 784));
    v10 = *(a2 + 344);
    v11 = strlen(v10);
    if (v11)
    {
      v12 = v11;
      LODWORD(v13) = v11;
      do
      {
        v13 = (32 * v13 + (v13 >> 2) + v10[v12 - 1]) ^ v13;
        v12 += ~(v11 >> 5);
      }

      while (v12 > v11 >> 5);
      v14 = v13 << 32;
    }

    else
    {
      v14 = 0;
    }

    glpMakeSourceLocation(v10, v14 | v11, *(a2 + 340), v15);
    glpLogMessage(v9, 0, v15, "'%s' : syntax error: %s");
  }

  glpParseRecover(a2);
}

double glpCPPWarningToInfoLog(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  InfoLog = glpCompilerGetInfoLog(*(v3 + 784));
  v5 = *(v3 + 344);
  v6 = strlen(v5);
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = v6;
    do
    {
      v8 = (32 * v8 + (v8 >> 2) + v5[v7 - 1]) ^ v8;
      v7 += ~(v6 >> 5);
    }

    while (v7 > v6 >> 5);
    v9 = v8 << 32;
  }

  else
  {
    v9 = 0;
  }

  glpMakeSourceLocation(v5, v9 | v6, *(v3 + 340), v11);
  return glpLogMessage(InfoLog, 1, v11, "%s", a2);
}

uint64_t glpCPPShInfoLogMsg(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  InfoLog = glpCompilerGetInfoLog(*(v3 + 784));
  v5 = *(v3 + 344);
  v6 = strlen(v5);
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = v6;
    do
    {
      v8 = (32 * v8 + (v8 >> 2) + v5[v7 - 1]) ^ v8;
      v7 += ~(v6 >> 5);
    }

    while (v7 > v6 >> 5);
    v9 = v8 << 32;
  }

  else
  {
    v9 = 0;
  }

  glpMakeSourceLocation(v5, v9 | v6, *(v3 + 340), v11);
  glpLogMessage(InfoLog, 0, v11, "'' :  %s", a2);
  return glpParseRecover(v3);
}

uint64_t glpCPPErrorToInfoLog(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  InfoLog = glpCompilerGetInfoLog(*(v3 + 784));
  v5 = *(v3 + 344);
  v6 = strlen(v5);
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = v6;
    do
    {
      v8 = (32 * v8 + (v8 >> 2) + v5[v7 - 1]) ^ v8;
      v7 += ~(v6 >> 5);
    }

    while (v7 > v6 >> 5);
    v9 = v8 << 32;
  }

  else
  {
    v9 = 0;
  }

  glpMakeSourceLocation(v5, v9 | v6, *(v3 + 340), v11);
  glpLogMessage(InfoLog, 0, v11, "'' : syntax error: %s", a2);
  return glpParseRecover(v3);
}

uint64_t glpHandlePragma(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 32);
  v7 = *a2;
  if (!strcmp(*a2, "optimize"))
  {
    if (a3 == 4)
    {
      v9 = *(a2 + 8);
      if (*v9 == 40 && !v9[1])
      {
        result = *(a2 + 16);
        if (*result == 111 && *(result + 1) == 110 && !*(result + 2))
        {
          v13 = 1;
        }

        else
        {
          result = strcmp(result, "off");
          if (result)
          {
            v10 = "on or off expected after '(' for 'optimize' pragma";
            goto LABEL_17;
          }

          v13 = 0;
        }

        *(v6 + 608) = v13;
        v15 = *(a2 + 24);
        if (*v15 == 41 && !v15[1])
        {
          return result;
        }

        v10 = ") expected to end 'optimize' pragma";
        goto LABEL_17;
      }

      v10 = "( expected after 'optimize' keyword";
    }

    else
    {
      v10 = "optimize pragma syntax is incorrect";
    }

LABEL_17:

    return glpCPPShInfoLogMsg(a1, v10);
  }

  if (!strcmp(v7, "debug"))
  {
    if (a3 == 4)
    {
      v11 = *(a2 + 8);
      if (*v11 == 40 && !v11[1])
      {
        result = *(a2 + 16);
        if (*result == 111 && *(result + 1) == 110 && !*(result + 2))
        {
          v14 = 1;
        }

        else
        {
          result = strcmp(result, "off");
          if (result)
          {
            v10 = "on or off expected after '(' for 'debug' pragma";
            goto LABEL_17;
          }

          v14 = 0;
        }

        *(v6 + 612) = v14;
        v16 = *(a2 + 24);
        if (*v16 == 41 && !v16[1])
        {
          return result;
        }

        v10 = ") expected to end 'debug' pragma";
        goto LABEL_17;
      }

      v10 = "( expected after 'debug' keyword";
    }

    else
    {
      v10 = "debug pragma syntax is incorrect";
    }

    goto LABEL_17;
  }

  result = strcmp(v7, "STDGL");
  if (a3 < 2)
  {
    return result;
  }

  if (result)
  {
    return result;
  }

  result = strcmp(*(a2 + 8), "invariant");
  if (result)
  {
    return result;
  }

  if (*(v6 + 40) && *v6 == 4)
  {
    v10 = "'STDGL invariant' pragma is not allowed in fragment shader except in OpenGL ES 2";
    goto LABEL_17;
  }

  if (a3 != 5)
  {
    v10 = "'STDGL invariant' pragma syntax is incorrect";
    goto LABEL_17;
  }

  v12 = *(a2 + 16);
  if (*v12 != 40 || v12[1])
  {
    v10 = "( expected after 'invariant' keyword";
    goto LABEL_17;
  }

  if (strcmp(*(a2 + 24), "all"))
  {
    v10 = "all expected after '(' for 'STDGL invariant' pragma";
    goto LABEL_17;
  }

  v17 = *(a2 + 32);
  if (*v17 != 41 || v17[1])
  {
    v10 = ") expected to end 'STDGL invariant' pragma";
    goto LABEL_17;
  }

  v18 = *(v6 + 784);

  return glpCompilerForceAllOutputsToBeInvariant(v18);
}

uint64_t glpStoreErrMsg(uint64_t a1, const char *a2)
{
  StringBuffer = *(a1 + 312);
  if (!StringBuffer)
  {
    StringBuffer = glpMakeStringBuffer(&GLP_MALLOC_ALLOCATOR);
    *(a1 + 312) = StringBuffer;
  }

  return glpStringBufferAppendFormat(StringBuffer, " %s", a2);
}

uint64_t glpResetErrMsg(uint64_t a1)
{
  result = glpDestroyStringBuffer(*(a1 + 312));
  *(a1 + 312) = 0;
  return result;
}

void glpUpdateExtensionBehavior(uint64_t a1, char *a2, char *__s1)
{
  v6 = strcmp(__s1, "require");
  if (!v6)
  {
    v13 = 0;
    v14 = 1;
    goto LABEL_15;
  }

  if (!strcmp(__s1, "enable"))
  {
    v14 = 1;
    v13 = 1;
    goto LABEL_15;
  }

  if (strcmp(__s1, "disable"))
  {
    if (!strcmp(__s1, "warn"))
    {
      v14 = 0;
      v13 = 2;
      goto LABEL_15;
    }

    InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
    v8 = *(a1 + 344);
    v9 = strlen(v8);
    if (v9)
    {
      v10 = v9;
      LODWORD(v11) = v9;
      do
      {
        v11 = (32 * v11 + (v11 >> 2) + v8[v10 - 1]) ^ v11;
        v10 += ~(v9 >> 5);
      }

      while (v10 > v9 >> 5);
      v12 = v11 << 32;
    }

    else
    {
      v12 = 0;
    }

    glpMakeSourceLocation(v8, v12 | v9, *(a1 + 340), v31);
    glpLogMessage(InfoLog, 0, v31, "'' :  behavior '%s' is not supported", __s1);
    glpParseRecover(a1);
  }

  v14 = 0;
  v13 = 3;
LABEL_15:
  if (!strcmp(a2, "all"))
  {
    if (v14)
    {
      glpCPPShInfoLogMsg(a1 + 40, "extension 'all' cannot have 'require' or 'enable' behavior");
    }

    else
    {
      for (i = 0; i != 38; ++i)
      {
        if (glpExtensionAllowed(*(a1 + 784), i))
        {
          *(a1 + 616 + 4 * i) = v13;
          NameTable = glpCompilerGetNameTable(*(a1 + 784));
          glpNameTableSetGLSLExtensionBehavior(NameTable, i, v13);
        }
      }
    }
  }

  else
  {
    v15 = glpExtensionFromString(a2);
    if (v15 == 38 || (v16 = v15, !glpExtensionAllowed(*(a1 + 784), v15)))
    {
      v18 = glpCompilerGetInfoLog(*(a1 + 784));
      if (v6)
      {
        v19 = *(a1 + 344);
        v20 = strlen(v19);
        if (v20)
        {
          v21 = v20;
          LODWORD(v22) = v20;
          do
          {
            v22 = (32 * v22 + (v22 >> 2) + v19[v21 - 1]) ^ v22;
            v21 += ~(v20 >> 5);
          }

          while (v21 > v20 >> 5);
          v23 = v22 << 32;
        }

        else
        {
          v23 = 0;
        }

        glpMakeSourceLocation(v19, v23 | v20, *(a1 + 340), v31);
        glpLogMessage(v18, 1, v31, "extension '%s' is not supported", a2);
      }

      else
      {
        v26 = *(a1 + 344);
        v27 = strlen(v26);
        if (v27)
        {
          v28 = v27;
          LODWORD(v29) = v27;
          do
          {
            v29 = (32 * v29 + (v29 >> 2) + v26[v28 - 1]) ^ v29;
            v28 += ~(v27 >> 5);
          }

          while (v28 > v27 >> 5);
          v30 = v29 << 32;
        }

        else
        {
          v30 = 0;
        }

        glpMakeSourceLocation(v26, v30 | v27, *(a1 + 340), v31);
        glpLogMessage(v18, 0, v31, "'' :  extension '%s' is not supported", a2);
        glpParseRecover(a1);
      }
    }

    else
    {
      *(a1 + 4 * v16 + 616) = v13;
      v17 = glpCompilerGetNameTable(*(a1 + 784));
      glpNameTableSetGLSLExtensionBehavior(v17, v16, v13);
    }
  }
}

uint64_t glpParseContextSetGLSLVersion(uint64_t a1, int a2)
{
  v4 = glpGLSLVersionFromInt(a2);
  if (v4 == 10 || (v5 = v4, !glpGLSLVersionAllowed(*(a1 + 784), v4)))
  {
    InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
    v9 = *(a1 + 344);
    v10 = strlen(v9);
    if (v10)
    {
      v11 = v10;
      LODWORD(v12) = v10;
      do
      {
        v12 = (32 * v12 + (v12 >> 2) + v9[v11 - 1]) ^ v12;
        v11 += ~(v10 >> 5);
      }

      while (v11 > v10 >> 5);
      v13 = v12 << 32;
    }

    else
    {
      v13 = 0;
    }

    glpMakeSourceLocation(v9, v13 | v10, *(a1 + 340), v14);
    glpLogMessage(InfoLog, 0, v14, "'' :  version '%d' is not supported", a2);
    return glpParseRecover(a1);
  }

  else
  {
    *(a1 + 40) = v5;
    *(a1 + 44) = 1;
    NameTable = glpCompilerGetNameTable(*(a1 + 784));

    return glpNameTableSetGLSLVersion(NameTable, v5);
  }
}

uint64_t glpParseContextValidateGLSLVersion(uint64_t a1)
{
  result = glpGLSLVersionRequired(*(a1 + 784), *(a1 + 40));
  if (result && !*(a1 + 44))
  {
    InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
    v4 = *(a1 + 344);
    v5 = strlen(v4);
    if (v5)
    {
      v6 = v5;
      LODWORD(v7) = v5;
      do
      {
        v7 = (32 * v7 + (v7 >> 2) + v4[v6 - 1]) ^ v7;
        v6 += ~(v5 >> 5);
      }

      while (v6 > v5 >> 5);
      v8 = v7 << 32;
    }

    else
    {
      v8 = 0;
    }

    glpMakeSourceLocation(v4, v8 | v5, *(a1 + 340), v9);
    glpLogMessage(InfoLog, 0, v9, "'' :  #version required and missing.");
    return glpParseRecover(a1);
  }

  return result;
}

uint64_t glpLexerNew(uint64_t a1)
{
  result = yylex_init((a1 + 24));
  **(a1 + 24) = a1;
  return result;
}

uint64_t yyparse(uint64_t a1)
{
  bzero(v79, 0x218uLL);
  v83 = 0uLL;
  v84 = 0;
  DWORD2(v85) = 1;
  *&v85 = 1;
  v82 = 0xFFFFFFFE00000000;
  v89 = 200;
  v2 = malloc_type_malloc(0x3840uLL, 0xCA0EF1E7uLL);
  if (!v2)
  {
    goto LABEL_147;
  }

  v87 = v2;
  v88 = v2;
  v90 = 0;
  v91 = 0;
  v94 = 1;
  v95 = 16;
  v3 = malloc_type_malloc(0x80uLL, 0xCA0EF1E7uLL);
  if (!v3)
  {
    goto LABEL_147;
  }

  v92 = v3;
  *v3 = 0;
  v4 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
    goto LABEL_147;
  }

  v93 = v4;
  v5 = setjmp(v86);
  if (v5 == 2)
  {
    yyerror(&v85, a1);
    v5 = 2;
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      goto LABEL_147;
    }

    v6 = v88;
    v88 += 72;
    --v89;
    *(v6 + 1) = 0;
    *v6 = 1;
    v6[1] = 1;
    *(v6 + 1) = *v92;
    *(v6 + 2) = 0;
    v7 = v83;
    *(v6 + 5) = v84;
    *(v6 + 24) = v7;
    *(v6 + 3) = v85;
    v8 = v89;
    *v92 = v6;
    if (v8 <= 1)
    {
      yyexpandGLRStack(v79);
    }

    v9 = *(*v92 + 4);
    if (v9 == 161)
    {
LABEL_10:
      v5 = 0;
      goto LABEL_13;
    }

    v15 = 0;
    do
    {
      v16 = yypact[v9];
      v17 = v9;
      if (v16 == -400)
      {
        if (!yydefact[v9])
        {
          goto LABEL_90;
        }

        v18 = yyglrReduce(v79, 0, yydefact[v9], 1, a1);
        if (v18 <= 1)
        {
          if (!v18)
          {
            goto LABEL_133;
          }

          goto LABEL_146;
        }

        goto LABEL_92;
      }

      v19 = HIDWORD(v82);
      if (HIDWORD(v82) == -2)
      {
        v20 = yylex(&v83, &v85, *(a1 + 24));
        v19 = v20;
        HIDWORD(v82) = v20;
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        v21 = v20;
        if (v20 < 0x1B0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v21 = HIDWORD(v82);
        if (SHIDWORD(v82) < 1)
        {
LABEL_34:
          v22 = 0;
          goto LABEL_35;
        }

        if (HIDWORD(v82) <= 0x1AF)
        {
LABEL_32:
          v22 = yytranslate[v21];
          goto LABEL_33;
        }
      }

      v22 = 2;
LABEL_33:
      v19 = 1;
LABEL_35:
      v23 = v22 + v16;
      if ((v22 + v16) >> 1 <= 0x81A && v22 == yycheck[v23])
      {
        v24 = &yyconfl[yyconflp[v23]];
        v25 = yytable[v23];
        v26 = v24;
      }

      else
      {
        v25 = -yydefact[v17];
        v26 = yyconfl;
      }

      if (*v26)
      {
        v27 = v94;
        v28 = v15;
        while (v27)
        {
          v29 = 0;
          do
          {
            *(v93 + v29++) = HIDWORD(v82) != -2;
          }

          while (v29 < v94);
          if (!v94)
          {
            break;
          }

          for (i = 0; i < v94; ++i)
          {
            v31 = yyprocessOneStack(v79, i, a1);
            if (v31)
            {
              if (v31 == 1)
              {
                goto LABEL_10;
              }

              if (v31 != 2)
              {
                if (v31 != 3)
                {
                  goto LABEL_147;
                }

                goto LABEL_93;
              }

              goto LABEL_145;
            }
          }

          if (!v94)
          {
            break;
          }

          v32 = v94;
          v33 = 0;
          v34 = 0;
          do
          {
            v35 = v34;
            v36 = *(v92 + v33);
            if (v36)
            {
              *(v92 + v34) = v36;
              *(v93 + v34) = *(v93 + v33);
              v35 = v34 + 1;
              v32 = v94;
            }

            else
            {
              v94 = --v32;
            }

            ++v33;
            v34 = v35;
          }

          while (v35 < v32);
          if (!v32)
          {
            break;
          }

          if (SHIDWORD(v82) < 1)
          {
            v37 = 0;
          }

          else if (HIDWORD(v82) > 0x1AF)
          {
            v37 = 2;
          }

          else
          {
            v37 = yytranslate[HIDWORD(v82)];
          }

          HIDWORD(v82) = -2;
          v15 = v28 + 1;
          v38 = 0;
          do
          {
            v39 = *(*(v92 + v38) + 4);
            v40 = v37 + yypact[v39];
            if (v40 >> 1 <= 0x81A && v37 == yycheck[v40])
            {
              v41 = yytable[v40];
            }

            else
            {
              v41 = -yydefact[v39];
            }

            v42 = v88;
            v88 += 72;
            --v89;
            *v42 = 1;
            *(v42 + 1) = v41;
            v42[1] = 1;
            *(v42 + 1) = *(v92 + v38);
            *(v42 + 2) = v15;
            v43 = v83;
            *(v42 + 5) = v84;
            *(v42 + 24) = v43;
            *(v42 + 3) = v85;
            v44 = v89;
            *(v92 + v38) = v42;
            if (v44 <= 1)
            {
              yyexpandGLRStack(v79);
            }

            ++v38;
          }

          while (v38 < v94);
          v27 = v94;
          v28 = v15;
          if (v94 == 1)
          {
            v18 = yyresolveStack(v79, a1);
            if (v18 > 1)
            {
              goto LABEL_92;
            }

            if (!v18)
            {
              yycompressStack(v79);
              goto LABEL_133;
            }

LABEL_146:
            if (v18 != 1)
            {
LABEL_147:
              abort();
            }

            goto LABEL_10;
          }
        }

        if (!v91)
        {
          yyFail(v79, &v85, a1, "syntax error");
        }

        *v92 = v91;
        v94 = 1;
        v91 = 0;
        v18 = yyresolveStack(v79, a1);
        if (v18 <= 1)
        {
          if (v18)
          {
            goto LABEL_146;
          }

LABEL_90:
          v80 = v85;
          v48 = v79[0];
          if (!LODWORD(v79[0]))
          {
LABEL_91:
            yyerror(&v85, a1);
            LODWORD(v82) = v82 + 1;
            goto LABEL_93;
          }

LABEL_94:
          if (v48 == 3)
          {
            v49 = HIDWORD(v82);
            while (1)
            {
              if (v49 != -2)
              {
                if (!v49)
                {
                  goto LABEL_150;
                }

                *(*v92 + 56) = *(&v85 + 1);
              }

              v50 = yylex(&v83, &v85, *(a1 + 24));
              v49 = v50;
              HIDWORD(v82) = v50;
              if (v50 < 1)
              {
                v51 = 0;
              }

              else
              {
                v51 = v50 > 0x1AF ? 2 : yytranslate[v50];
              }

              v52 = *v92;
              v53 = *(*v92 + 4);
              v54 = yypact[v53];
              if (v54 == -400)
              {
                break;
              }

              v55 = v51 + v54;
              if (v55 >> 1 <= 0x81A && v51 == yycheck[v55])
              {
                if (yytable[v55])
                {
                  break;
                }
              }

              else if (yydefact[v53])
              {
                break;
              }
            }
          }

          else
          {
            v56 = v94;
            if (!v94)
            {
              goto LABEL_150;
            }

            v57 = 0;
            while (1)
            {
              v58 = v57 + 1;
              if (*(v92 + v57))
              {
                break;
              }

              ++v57;
              if (v94 == v58)
              {
                goto LABEL_150;
              }
            }

            v59 = v57 + 1;
            if (v58 < v94)
            {
              do
              {
                if (*(v92 + v59))
                {
                  v91 = *(v92 + v59);
                }

                *(v92 + v59++) = 0;
              }

              while (v56 != v59);
            }

            v60 = v56;
            v61 = 0;
            v62 = 0;
            do
            {
              v63 = *(v92 + v61);
              if (v63)
              {
                *(v92 + v62) = v63;
                *(v93 + v62++) = *(v93 + v61);
                v60 = v94;
              }

              else
              {
                v94 = --v60;
              }

              ++v61;
            }

            while (v62 < v60);
            yycompressStack(v79);
            LODWORD(v79[0]) = 3;
            v64 = *v92;
            if (*v92)
            {
              v65 = v89 - 1;
              v66 = v92;
              while (1)
              {
                v67 = yypact[*(v64 + 4)];
                if (v67 >= -1)
                {
                  v68 = v67 + 1;
                  if (yycheck[v68] == 1)
                  {
                    v69 = yytable[v68];
                    if (v69 >= 1)
                    {
                      break;
                    }
                  }
                }

                v80 = *(v64 + 48);
                yydestroyGLRState(v64);
                *v66 = *(v64 + 8);
                v88 -= 72;
                v89 = v65 + 2;
                v64 = *v92;
                ++v65;
                v66 = v92;
                if (!*v92)
                {
                  goto LABEL_131;
                }
              }

              v81 = v85;
              *&v70 = v80;
              v71 = *(&v85 + 1);
              v72 = *(v64 + 16);
              v73 = v88;
              v88 += 72;
              v89 = v65;
              *v73 = 1;
              *(v73 + 1) = v69;
              v73[1] = 1;
              *(v73 + 1) = *v92;
              *(v73 + 2) = v72;
              v74 = v83;
              *(v73 + 5) = v84;
              *(&v70 + 1) = v71;
              *(v73 + 24) = v74;
              *(v73 + 3) = v70;
              v75 = v89;
              *v92 = v73;
              if (v75 <= 1)
              {
                yyexpandGLRStack(v79);
              }
            }

LABEL_131:
            v52 = *v92;
            if (!*v92)
            {
LABEL_150:
              longjmp(v86, 1);
            }
          }

          v15 = *(v52 + 16);
          goto LABEL_133;
        }

LABEL_92:
        if (v18 != 3)
        {
          if (v18 != 2)
          {
            goto LABEL_147;
          }

LABEL_145:
          v5 = 1;
          break;
        }

LABEL_93:
        v48 = v79[0];
        goto LABEL_94;
      }

      if (v25 < 1)
      {
        if (!v25)
        {
          v80 = v85;
          if (!LODWORD(v79[0]))
          {
            goto LABEL_91;
          }

          goto LABEL_93;
        }

        v18 = yyglrReduce(v79, 0, -v25, 1, a1);
        if (v18 > 1)
        {
          goto LABEL_92;
        }

        if (v18)
        {
          if (v18 != 1)
          {
            goto LABEL_147;
          }

          v5 = 0;
          break;
        }
      }

      else
      {
        if (v19)
        {
          HIDWORD(v82) = -2;
        }

        ++v15;
        v45 = v88;
        v88 += 72;
        --v89;
        *v45 = 1;
        *(v45 + 1) = v25;
        v45[1] = 1;
        *(v45 + 1) = *v92;
        *(v45 + 2) = v15;
        v46 = v83;
        *(v45 + 5) = v84;
        *(v45 + 24) = v46;
        *(v45 + 3) = v85;
        v47 = v89;
        *v92 = v45;
        if (v47 <= 1)
        {
          yyexpandGLRStack(v79);
        }

        if (SLODWORD(v79[0]) >= 1)
        {
          --LODWORD(v79[0]);
        }
      }

LABEL_133:
      v5 = 0;
      v9 = *(*v92 + 4);
    }

    while (v9 != 161);
  }

LABEL_13:
  v10 = v5;
  v11 = v87;
  if (v87)
  {
    if (v92 && v94)
    {
      v12 = v92;
      v13 = v94;
      while (1)
      {
        v14 = *v12;
        if (*v12)
        {
          break;
        }

        ++v12;
        if (!--v13)
        {
          goto LABEL_142;
        }
      }

      v76 = v89 + 1;
      do
      {
        v77 = v76;
        v80 = *(v14 + 48);
        yydestroyGLRState(v14);
        *v12 = *(v14 + 8);
        v88 -= 72;
        v89 = v77;
        v14 = *v12;
        v76 = v77 + 1;
      }

      while (*v12);
      v11 = v87;
    }

LABEL_142:
    free(v11);
    free(v92);
    free(v93);
  }

  return v10;
}

uint64_t yyglrReduce(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v6 = a3;
  v52 = *MEMORY[0x277D85DE8];
  v9 = a1[63];
  v10 = v9[a2];
  v11 = *(v10 + 16);
  v12 = a1[61];
  if (!a4 && v12)
  {
    v15 = v9[a2];
    if (yyr2[a3])
    {
      v16 = yyr2[a3] + 1;
      v15 = v9[a2];
      do
      {
        v15 = *(v15 + 8);
        if (!v15)
        {
          goto LABEL_62;
        }
      }

      while (--v16 >= 2);
    }

    if (v12 > v15)
    {
      a1[61] = v15;
      v12 = v15;
    }

    v17 = *(v15 + 4);
    v18 = yyr1[a3] - 177;
    v19 = (v17 + yypgoto[v18]);
    if (v19 >> 1 <= 0x81A && v17 == yycheck[v19])
    {
      v20 = &yytable[v19];
    }

    else
    {
      v20 = (&yydefgoto + 2 * v18);
    }

    v33 = *v20;
    v34 = a1[65];
    if (v34)
    {
      for (i = 0; i != v34; ++i)
      {
        if (i != a2)
        {
          v36 = v9[i];
          v37 = !v36 || v36 == v15;
          if (!v37 && v36 != v12)
          {
            while (*(v36 + 16) >= v11)
            {
              v39 = *(v36 + 8);
              if (*(v36 + 4) == v33 && v39 == v15)
              {
                yyaddDeferredAction(a1, a2, v36, v10, v6);
                v44 = a1[63];
                v45 = *(v44 + 8 * a2);
                if (v45)
                {
                  a1[62] = v45;
                }

                result = 0;
                *(v44 + 8 * a2) = 0;
                return result;
              }

              v41 = v39 == v15 || v39 == v12;
              v36 = *(v36 + 8);
              if (v41)
              {
                break;
              }
            }
          }
        }
      }
    }

    v9[a2] = v15;
    v42 = a1[59];
    v43 = a1[60] - 1;
    a1[59] = v42 + 72;
    a1[60] = v43;
    *v42 = 1;
    *(v42 + 4) = v33;
    *(v42 + 1) = 0;
    *(v42 + 8) = *(a1[63] + 8 * a2);
    *(v42 + 16) = v11;
    *(v42 + 24) = 0;
    *(a1[63] + 8 * a2) = v42;
    yyaddDeferredAction(a1, a2, v42, v10, v6);
    return 0;
  }

  v47 = 0uLL;
  v48 = 0;
  v46 = 0uLL;
  v13 = yyr2[a3];
  if (v12)
  {
    bzero(v49, 0x288uLL);
    v51 = v10;
    if (v13)
    {
      v14 = v13;
      while (1)
      {
        v10 = *(v10 + 8);
        if (!v10)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_21;
        }
      }

LABEL_62:
      abort();
    }

    v50[3] = *(v10 + 48);
LABEL_21:
    if (v12 > v10)
    {
      a1[61] = v10;
    }

    v9[a2] = v10;
    v21 = v50;
  }

  else
  {
    if (a2)
    {
      goto LABEL_62;
    }

    v21 = *v9;
    v22 = a1[59] + 72 * -v13;
    v23 = a1[60] + v13;
    a1[59] = v22;
    a1[60] = v23;
    *v9 = v22 - 72;
  }

  result = yyuserAction(v6, v13, v21, &v47, &v46, a1, a5);
  if (!result)
  {
    v25 = *(*(a1[63] + 8 * a2) + 4);
    v26 = yyr1[v6] - 177;
    v27 = (v25 + yypgoto[v26]);
    if (v27 >> 1 <= 0x81A && v25 == yycheck[v27])
    {
      v28 = &yytable[v27];
    }

    else
    {
      v28 = (&yydefgoto + 2 * v26);
    }

    v29 = *v28;
    v30 = a1[59];
    v31 = a1[60] - 1;
    a1[59] = v30 + 72;
    a1[60] = v31;
    *v30 = 1;
    *(v30 + 4) = v29;
    *(v30 + 1) = 1;
    *(v30 + 8) = *(a1[63] + 8 * a2);
    *(v30 + 16) = v11;
    v32 = v46;
    *(v30 + 24) = v47;
    *(v30 + 40) = v48;
    *(v30 + 48) = v32;
    *(a1[63] + 8 * a2) = v30;
    if (a1[60] <= 1uLL)
    {
      yyexpandGLRStack(a1);
    }

    return 0;
  }

  return result;
}

uint64_t yyprocessOneStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 504);
  v4 = *(v3 + 8 * a2);
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(v4 + 4);
    if (v8 == 161)
    {
LABEL_42:
      abort();
    }

    v9 = yypact[v8];
    if (v9 != -400)
    {
      break;
    }

    if (!yydefact[v8])
    {
      v24 = (v3 + 8 * a2);
      goto LABEL_40;
    }

    result = yyglrReduce(a1, a2, yydefact[v8], 0, a3);
    if (result)
    {
      return result;
    }

LABEL_35:
    v3 = *(a1 + 504);
    v4 = *(v3 + 8 * a2);
    if (!v4)
    {
      return 0;
    }
  }

  *(*(a1 + 512) + a2) = 1;
  v11 = *(a1 + 228);
  if (v11 != -2)
  {
    if (v11 >= 1)
    {
      if (v11 > 0x1AF)
      {
        goto LABEL_10;
      }

LABEL_13:
      v12 = yytranslate[v11];
      goto LABEL_15;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v11 = yylex(a1 + 232, a1 + 256, *(a3 + 24));
  *(a1 + 228) = v11;
  if (v11 < 1)
  {
    goto LABEL_14;
  }

  if (v11 < 0x1B0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = 2;
LABEL_15:
  v13 = v12 + v9;
  if ((v12 + v9) >> 1 <= 0x81A && v12 == yycheck[v13])
  {
    v14 = yytable[v13];
    v15 = &yyconfl[yyconflp[v13]];
  }

  else
  {
    v14 = -yydefact[v8];
    v15 = yyconfl;
  }

  v16 = *v15;
  if (*v15)
  {
    v17 = (v15 + 1);
    do
    {
      if (!*(a1 + 488))
      {
        if (a2)
        {
          goto LABEL_42;
        }

        *(a1 + 488) = **(a1 + 504);
      }

      v18 = *(a1 + 520);
      v19 = *(a1 + 528);
      if (v18 >= v19)
      {
        if (v19 >> 60)
        {
          yyMemoryExhausted(a1);
        }

        *(a1 + 528) = 2 * v19;
        v20 = malloc_type_realloc(*(a1 + 504), 16 * v19, 0x352A3853uLL);
        if (!v20)
        {
          goto LABEL_42;
        }

        *(a1 + 504) = v20;
        v21 = malloc_type_realloc(*(a1 + 512), *(a1 + 528), 0x352A3853uLL);
        if (!v21)
        {
          goto LABEL_42;
        }

        *(a1 + 512) = v21;
        v18 = *(a1 + 520);
      }

      *(*(a1 + 504) + 8 * v18) = *(*(a1 + 504) + 8 * a2);
      *(*(a1 + 512) + v18) = *(*(a1 + 512) + a2);
      v22 = *(a1 + 520);
      *(a1 + 520) = v22 + 1;
      result = yyglrReduce(a1, v22, v16, 0, a3);
      if (result)
      {
        return result;
      }

      result = yyprocessOneStack(a1, v22, a3);
      if (result)
      {
        return result;
      }

      v23 = *v17++;
      v16 = v23;
    }

    while (v23);
  }

  if (v14 > 0)
  {
    return 0;
  }

  if (v14)
  {
    result = yyglrReduce(a1, a2, -v14, 0, a3);
    if (result)
    {
      return result;
    }

    goto LABEL_35;
  }

  v24 = (*(a1 + 504) + 8 * a2);
  v4 = *v24;
  if (!*v24)
  {
    goto LABEL_41;
  }

LABEL_40:
  *(a1 + 496) = v4;
LABEL_41:
  result = 0;
  *v24 = 0;
  return result;
}

void yyFail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    yyerror(a2, a3);
  }

  longjmp((a1 + 272), 1);
}

uint64_t yyresolveStack(uint64_t a1, void *a2)
{
  v2 = *(a1 + 488);
  if (!v2)
  {
    return 0;
  }

  v5 = **(a1 + 504);
  if (v5 == v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v5;
    do
    {
      ++v6;
      v7 = *(v7 + 8);
    }

    while (v7 != v2);
  }

  result = yyresolveStates(v5, v6, a1, a2);
  if (!result)
  {
    return 0;
  }

  return result;
}

__n128 yycompressStack(uint64_t a1)
{
  if (*(a1 + 520) == 1)
  {
    v1 = *(a1 + 488);
    if (v1)
    {
      v2 = **(a1 + 504);
      if (v2 == v1)
      {
        v4 = 0;
      }

      else
      {
        v3 = 0;
        do
        {
          v4 = v2;
          v2 = *(v2 + 8);
          *(v4 + 8) = v3;
          v3 = v4;
        }

        while (v2 != v1);
      }

      v5 = v1 + 72;
      v6 = *(a1 + 480) - 0x71C71C71C71C71C7 * ((*(a1 + 472) - *(a1 + 464)) >> 3) + 0x71C71C71C71C71C7 * ((v5 - *(a1 + 464)) >> 3);
      *(a1 + 472) = v5;
      *(a1 + 480) = v6;
      *(a1 + 488) = 0;
      for (*(a1 + 496) = 0; v4; *(a1 + 480) = v11 - 1)
      {
        result = *v4;
        v8 = *(v4 + 16);
        v9 = *(v4 + 48);
        *(v5 + 32) = *(v4 + 32);
        *(v5 + 48) = v9;
        *v5 = result;
        *(v5 + 16) = v8;
        v4 = *(v4 + 8);
        *(*(a1 + 472) + 8) = *(a1 + 472) - 72;
        v10 = *(a1 + 472);
        v11 = *(a1 + 480);
        **(a1 + 504) = v10;
        v5 = v10 + 72;
        *(a1 + 472) = v10 + 72;
      }
    }
  }

  return result;
}

uint64_t yydestroyGLRState(uint64_t result)
{
  if (!*(result + 1))
  {
    v1 = *(result + 24);
    if (v1)
    {
      if (yyr2[*(v1 + 4)])
      {
        v2 = yyr2[*(v1 + 4)] + 1;
        do
        {
          v1 = *(v1 + 8);
          result = yydestroyGLRState(v1);
          --v2;
        }

        while (v2 > 1);
      }
    }
  }

  return result;
}

void yyexpandGLRStack(uint64_t a1)
{
  v3 = *(a1 + 464);
  v2 = *(a1 + 472);
  v4 = 0x8E38E38E38E38E39 * ((v2 - v3) >> 3);
  if (v4 >= 0x270F)
  {
    yyMemoryExhausted(a1);
  }

  if ((0x1C71C71C71C71C72 * ((v2 - v3) >> 3)) >= 0x2710)
  {
    v5 = 10000;
  }

  else
  {
    v5 = 0x1C71C71C71C71C72 * ((v2 - v3) >> 3);
  }

  v6 = malloc_type_malloc(72 * v5, 0xCA0EF1E7uLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  if (v2 != v3)
  {
    v8 = 0;
    v9 = *(a1 + 464);
    for (i = 0x8E38E38E38E38E39 * ((v2 - v3) >> 3); i; --i)
    {
      v11 = &v6[v8];
      *v11 = *(v9 + v8);
      v12 = *(v9 + v8 + 16);
      v13 = *(v9 + v8 + 32);
      v14 = *(v9 + v8 + 48);
      *(v11 + 8) = *(v9 + v8 + 64);
      *(v11 + 2) = v13;
      *(v11 + 3) = v14;
      *(v11 + 1) = v12;
      v15 = *(v9 + v8 + 8);
      if (*(v9 + v8))
      {
        if (v15)
        {
          *&v6[v8 + 8] = &v6[v15 - v9];
        }

        if (*(v9 + v8 + 1))
        {
          goto LABEL_19;
        }

        v16 = *(v9 + v8 + 24);
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = 24;
      }

      else
      {
        if (v15)
        {
          *&v6[v8 + 8] = &v6[v15 - v9];
        }

        v16 = *(v9 + v8 + 64);
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = 64;
      }

      *&v6[v17 + v8] = &v6[v16 - v9];
LABEL_19:
      v8 += 72;
    }
  }

  v18 = *(a1 + 488);
  if (v18)
  {
    *(a1 + 488) = &v6[v18 - *(a1 + 464)];
  }

  v19 = *(a1 + 520);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      v21 = *(a1 + 504);
      v22 = *(v21 + 8 * j);
      if (v22)
      {
        *(v21 + 8 * j) = &v6[v22 - *(a1 + 464)];
      }
    }
  }

  free(*(a1 + 464));
  *(a1 + 464) = v7;
  *(a1 + 472) = &v7[v2 - v3];
  *(a1 + 480) = v5 - v4;
}

void yyaddDeferredAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 472);
  v6 = *(a1 + 480) - 1;
  *(a1 + 472) = v5 + 72;
  *(a1 + 480) = v6;
  *v5 = 0;
  *(v5 + 8) = a4;
  *(v5 + 4) = a5;
  if (*(*(a1 + 512) + a2))
  {
    *(v5 + 16) = *(a1 + 228);
    v7 = *(a1 + 232);
    *(v5 + 40) = *(a1 + 248);
    *(v5 + 24) = v7;
    *(v5 + 48) = *(a1 + 256);
  }

  else
  {
    *(v5 + 16) = -2;
  }

  *(v5 + 64) = *(a3 + 24);
  *(a3 + 24) = v5;
  if (*(a1 + 480) <= 1uLL)
  {
    yyexpandGLRStack(a1);
  }
}

uint64_t yyuserAction(int a1, unsigned int a2, uint64_t a3, uint64_t *a4, _DWORD *a5, uint64_t a6, void *a7)
{
  v11 = *(a6 + 488);
  v1307[0] = 1;
  if (a2)
  {
    if (a2 >= 1 && v11)
    {
      v12 = *(a3 + 80);
      v13 = 1 - a2;
      v14 = a3 + 24;
      v15 = 1;
      do
      {
        if (!*(v12 + 1))
        {
LABEL_372:
          abort();
        }

        --v15;
        *(v14 - 23) = 1;
        v16 = *(v12 + 24);
        *(v14 + 16) = *(v12 + 40);
        *v14 = v16;
        *(v14 + 24) = *(v12 + 48);
        v12 = *(v12 + 8);
        *(v14 - 16) = v12;
        v14 -= 72;
      }

      while (v15 > (1 - a2));
      v1307[0] = 1 - a2;
    }

    else
    {
      v13 = 1 - a2;
    }

    v20 = a3 + 72 * v13;
    v21 = *(v20 + 24);
    a4[2] = *(v20 + 40);
    *a4 = v21;
    v22 = a3 - 72 * a2;
    *a5 = *(v22 + 120);
    a5[1] = *(v22 + 124);
    a5[2] = *(a3 + 56);
    v18 = *(a3 + 60);
    v19 = 3;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v17 = *(a3 + 56);
    a5[2] = v17;
    *a5 = v17;
    v18 = *(a3 + 60);
    a5[3] = v18;
    v19 = 1;
  }

  a5[v19] = v18;
  *(a6 + 128) = *a5;
  switch(a1)
  {
    case 2:
      glpCompilerGetAllocator();
      v1246 = v1245;
      yyfill(a3, v1307, 0, v11 == 0);
      StringZ_0 = glpMakeStringZ_0(*(a3 + 32));
      v1249 = v1248;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(StringZ_0, v1249, *(a3 + 40), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v1250 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeVariableIdentifierNode(v1246, &v1303, v1250, v1251);
      goto LABEL_333;
    case 3:
    case 10:
    case 12:
    case 16:
    case 17:
    case 18:
    case 22:
    case 29:
    case 37:
    case 41:
    case 44:
    case 47:
    case 52:
    case 55:
    case 57:
    case 59:
    case 61:
    case 63:
    case 65:
    case 67:
    case 69:
    case 82:
    case 84:
    case 98:
    case 99:
    case 106:
    case 109:
    case 120:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 163:
    case 249:
    case 251:
    case 259:
    case 267:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 280:
    case 281:
    case 291:
    case 295:
    case 301:
    case 302:
    case 303:
    case 314:
    case 315:
      goto LABEL_12;
    case 4:
      v112 = 5;
      goto LABEL_349;
    case 5:
      v112 = 36;
      goto LABEL_349;
    case 6:
      PrimitiveType = glpGetPrimitiveType(1u);
      glpCompilerGetAllocator();
      v128 = v528;
      yyfill(a3, v1307, 0, v11 == 0);
      v529 = glpMakeStringZ_0(*(a3 + 32));
      v531 = v530;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v529, v531, *(a3 + 40), &v1303);
      v132 = a7[98];
      glpCompilerGetAllocator();
      v134 = v532;
      yyfill(a3, v1307, 0, v11 == 0);
      *&v140 = *(a3 + 24);
      goto LABEL_165;
    case 7:
      v112 = 9;
LABEL_349:
      PrimitiveType = glpGetPrimitiveType(v112);
      glpCompilerGetAllocator();
      v128 = v1234;
      yyfill(a3, v1307, 0, v11 == 0);
      v1235 = glpMakeStringZ_0(*(a3 + 32));
      v1237 = v1236;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1235, v1237, *(a3 + 40), &v1303);
      v132 = a7[98];
      glpCompilerGetAllocator();
      v1239 = v1238;
      yyfill(a3, v1307, 0, v11 == 0);
      MutableValue = glpMakeMutableValue(v1239, PrimitiveType, 1, v1240, v1241, v1242, v1243, v1244, *(a3 + 24));
      goto LABEL_350;
    case 8:
      PrimitiveType = glpGetPrimitiveType(0x3Eu);
      glpCompilerGetAllocator();
      v128 = v127;
      yyfill(a3, v1307, 0, v11 == 0);
      v129 = glpMakeStringZ_0(*(a3 + 32));
      v131 = v130;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v129, v131, *(a3 + 40), &v1303);
      v132 = a7[98];
      glpCompilerGetAllocator();
      v134 = v133;
      yyfill(a3, v1307, 0, v11 == 0);
      v140 = *(a3 + 24);
LABEL_165:
      MutableValue = glpMakeMutableValue(v134, PrimitiveType, 1, v135, v136, v137, v138, v139, v140);
LABEL_350:
      v744 = glpCompilerRemapValue(v132, PrimitiveType, MutableValue);
      v745 = v128;
      v746 = PrimitiveType;
      goto LABEL_351;
    case 9:
    case 19:
    case 20:
    case 21:
    case 25:
    case 85:
    case 86:
    case 126:
    case 129:
    case 155:
    case 283:
      goto LABEL_121;
    case 11:
      glpCompilerGetAllocator();
      v471 = v470;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 192), &v1303);
      glpMakeArrayAccessNode(v471, &v1303);
      v473 = v472;
      *a4 = v472;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpArrayAccessNodeSetArray(v473, *(a3 - 192));
      v474 = *a4;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpArrayAccessNodeSetElement(v474, *(a3 - 48));
      return 0;
    case 13:
      glpCompilerGetAllocator();
      v65 = v64;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v66 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeFieldAccessNode(v65, &v1303, v66, v67);
      v69 = v68;
      *a4 = v68;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpFieldAccessNodeSetStructure(v69, *(a3 - 120));
      return 0;
    case 14:
      glpCompilerGetAllocator();
      v1223 = v1222;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      glpMakePostincrementNode(v1223, &v1303);
      goto LABEL_341;
    case 15:
      glpCompilerGetAllocator();
      v53 = v52;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      glpMakePostdecrementNode(v53, &v1303);
LABEL_341:
      v765 = v54;
      *a4 = v54;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v766 = *(a3 - 48);
      goto LABEL_342;
    case 23:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v97 = *(a3 - 48);
      goto LABEL_284;
    case 24:
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v97 = *(a3 - 120);
LABEL_284:
      *a4 = v97;
      glpCompilerGetAllocator();
      v1054 = v1053;
      v1055 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpCallNodeAddArg(v1054, v1055, *(a3 + 24));
      return 0;
    case 26:
      goto LABEL_345;
    case 27:
      if (glpCompilerGetIOSVersion(a7[98]) >= 9)
      {
        goto LABEL_369;
      }

LABEL_345:
      glpCompilerGetAllocator();
      v1227 = v1226;
      yyfill(a3, v1307, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1303);
      glpMakeConstructorCallNode(v1227, &v1303);
      v1229 = v1228;
      *a4 = v1228;
      yyfill(a3, v1307, 0, v11 == 0);
      glpConstructorCallNodeSetType(v1229, *(a3 + 24));
      return 0;
    case 28:
      glpCompilerGetAllocator();
      v1028 = v1027;
      yyfill(a3, v1307, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1303);
      glpMakeUndeterminedCallNode(v1028, &v1303);
      v1030 = v1029;
      *a4 = v1029;
      yyfill(a3, v1307, 0, v11 == 0);
      glpUndeterminedCallNodeSetCallee(v1030, *(a3 + 24));
      return 0;
    case 30:
      glpCompilerGetAllocator();
      v46 = v45;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v47 = glpMakeStringZ_0(*(a3 - 40));
      v49 = v48;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v47, v49, *(a3 - 32), &v1303);
      glpMakePreincrementNode(v46, &v1303);
      goto LABEL_217;
    case 31:
      glpCompilerGetAllocator();
      v761 = v760;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v762 = glpMakeStringZ_0(*(a3 - 40));
      v764 = v763;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v762, v764, *(a3 - 32), &v1303);
      glpMakePredecrementNode(v761, &v1303);
      goto LABEL_217;
    case 32:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v77 = *(a3 - 48);
      glpCompilerGetAllocator();
      v79 = v78;
      yyfill(a3, v1307, 0, v11 == 0);
      Location = glpASTNodeGetLocation(*(a3 + 24), &v1303);
      v50 = v77(v79, &v1303, Location);
LABEL_217:
      v765 = v50;
      *a4 = v50;
      yyfill(a3, v1307, 0, v11 == 0);
      v766 = *(a3 + 24);
LABEL_342:
      glpUnaryOperatorNodeSetExpr(v765, v766);
      return 0;
    case 33:
      result = 0;
      v51 = glpMakeUnaryPlusNode;
      goto LABEL_338;
    case 34:
      result = 0;
      v51 = glpMakeNegateNode;
      goto LABEL_338;
    case 35:
      result = 0;
      v51 = glpMakeLogicalNotNode;
      goto LABEL_338;
    case 36:
      result = 0;
      v51 = glpMakeBitwiseNotNode;
      goto LABEL_338;
    case 38:
      glpCompilerGetAllocator();
      v1133 = v1132;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeMultiplyNode(v1133, &v1303);
      goto LABEL_357;
    case 39:
      glpCompilerGetAllocator();
      v184 = v183;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeDivideNode(v184, &v1303);
      goto LABEL_357;
    case 40:
      glpCompilerGetAllocator();
      v1212 = v1211;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeModuloNode(v1212, &v1303);
      goto LABEL_357;
    case 42:
      glpCompilerGetAllocator();
      v1221 = v1220;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeAddNode(v1221, &v1303);
      goto LABEL_357;
    case 43:
      glpCompilerGetAllocator();
      v1233 = v1232;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeSubtractNode(v1233, &v1303);
      goto LABEL_357;
    case 45:
      glpCompilerGetAllocator();
      v1131 = v1130;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeShiftLeftNode(v1131, &v1303);
      goto LABEL_357;
    case 46:
      glpCompilerGetAllocator();
      v1219 = v1218;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeShiftRightNode(v1219, &v1303);
      goto LABEL_357;
    case 48:
      glpCompilerGetAllocator();
      v56 = v55;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeLessNode(v56, &v1303);
      goto LABEL_357;
    case 49:
      glpCompilerGetAllocator();
      v59 = v58;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeGreaterNode(v59, &v1303);
      goto LABEL_357;
    case 50:
      glpCompilerGetAllocator();
      v1118 = v1117;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeLessEqualNode(v1118, &v1303);
      goto LABEL_357;
    case 51:
      glpCompilerGetAllocator();
      v61 = v60;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeGreaterEqualNode(v61, &v1303);
      goto LABEL_357;
    case 53:
      glpCompilerGetAllocator();
      v1231 = v1230;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeEqualNode(v1231, &v1303, 1);
      goto LABEL_357;
    case 54:
      glpCompilerGetAllocator();
      v516 = v515;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeNotEqualNode(v516, &v1303, 1);
      goto LABEL_357;
    case 56:
      glpCompilerGetAllocator();
      v1156 = v1155;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeBitwiseAndNode(v1156, &v1303);
      goto LABEL_357;
    case 58:
      glpCompilerGetAllocator();
      v63 = v62;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeBitwiseXorNode(v63, &v1303);
      goto LABEL_357;
    case 60:
      glpCompilerGetAllocator();
      v672 = v671;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeBitwiseOrNode(v672, &v1303);
      goto LABEL_357;
    case 62:
      glpCompilerGetAllocator();
      v768 = v767;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeLogicalAndNode(v768, &v1303);
      goto LABEL_357;
    case 64:
      glpCompilerGetAllocator();
      v603 = v602;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeLogicalXorNode(v603, &v1303);
      goto LABEL_357;
    case 66:
      glpCompilerGetAllocator();
      v1225 = v1224;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      MultiplyNode = glpMakeLogicalOrNode(v1225, &v1303);
      goto LABEL_357;
    case 68:
      glpCompilerGetAllocator();
      v275 = v274;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 264), &v1303);
      glpMakeIfExprNode(v275, &v1303);
      v277 = v276;
      *a4 = v276;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      glpIfExprNodeSetCondition(v277, *(a3 - 264));
      v278 = *a4;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpIfExprNodeSetIfExpr(v278, *(a3 - 120));
      v279 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpIfExprNodeSetElseExpr(v279, *(a3 + 24));
      return 0;
    case 70:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v366 = *(a3 - 48);
      glpCompilerGetAllocator();
      v368 = v367;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      if (v366)
      {
        yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
        MultiplyNode = glpMakeOpAssignNode(v368, &v1303, *(a3 - 48));
      }

      else
      {
        MultiplyNode = glpMakeAssignNode(v368, &v1303, 1);
      }

LABEL_357:
      v1264 = MultiplyNode;
      *a4 = MultiplyNode;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpBinaryOperatorNodeSetLhs(v1264, *(a3 - 120));
      v1265 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpBinaryOperatorNodeSetRhs(v1265, *(a3 + 24));
      return 0;
    case 71:
    case 286:
      result = 0;
      *a4 = 0;
      return result;
    case 72:
      result = 0;
      v51 = glpMakeMultiplyNode;
      goto LABEL_338;
    case 73:
      result = 0;
      v51 = glpMakeDivideNode;
      goto LABEL_338;
    case 74:
      result = 0;
      v51 = glpMakeModuloNode;
      goto LABEL_338;
    case 75:
      result = 0;
      v51 = glpMakeAddNode;
      goto LABEL_338;
    case 76:
      result = 0;
      v51 = glpMakeSubtractNode;
      goto LABEL_338;
    case 77:
      result = 0;
      v51 = glpMakeShiftLeftNode;
      goto LABEL_338;
    case 78:
      result = 0;
      v51 = glpMakeShiftRightNode;
      goto LABEL_338;
    case 79:
      result = 0;
      v51 = glpMakeBitwiseAndNode;
      goto LABEL_338;
    case 80:
      result = 0;
      v51 = glpMakeBitwiseXorNode;
      goto LABEL_338;
    case 81:
      result = 0;
      v51 = glpMakeBitwiseOrNode;
LABEL_338:
      *a4 = v51;
      return result;
    case 83:
      glpCompilerGetAllocator();
      v375 = v374;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      glpMakeCommaExprNode(v375, &v1303, 1);
      *a4 = v376;
      glpCompilerGetAllocator();
      v378 = v377;
      v379 = *a4;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpCommaExprNodeAddExpr(v378, v379, *(a3 - 120));
      glpCompilerGetAllocator();
      v381 = v380;
      v382 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpCommaExprNodeAddExpr(v381, v382, *(a3 + 24));
      return 0;
    case 87:
      glpCompilerGetAllocator();
      v770 = v769;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v771 = glpMakeStringZ_0(*(a3 - 184));
      v773 = v772;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpMakeSourceLocation(v771, v773, *(a3 - 176), &v1303);
      glpMakePrecisionDeclarationNode(v770, &v1303);
      v775 = v774;
      *a4 = v774;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpPrecisionDeclarationNodeSetQualifier(v775, *(a3 - 120));
      v776 = *a4;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpPrecisionDeclarationNodeSetType(v776, *(a3 - 48));
      return 0;
    case 88:
      glpCompilerGetAllocator();
      v1167 = v1166;
      yyfill(a3, v1307, 4294967291, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 336), &v1303);
      yyfill(a3, v1307, 4294967292, v11 == 0);
      v1168 = glpMakeStringZ_0(*(a3 - 264));
      glpMakeInterfaceBlockNode(v1167, &v1303, v1168, v1169, "<<BUG: printing instance name of interface block without an instance name>>", 0xDFA3F2CD0000004BLL, 0, 0, 0);
      v1171 = v1170;
      *a4 = v1170;
      yyfill(a3, v1307, 4294967291, v11 == 0);
      glpInterfaceBlockNodeSetQualifiers(v1171, *(a3 - 336));
      glpCompilerGetAllocator();
      v886 = v1172;
      v887 = *a4;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v888 = *(a3 - 120);
      goto LABEL_354;
    case 89:
      NameTable = glpCompilerGetNameTable(a7[98]);
      if (glpNameTableGetGLSLVersion(NameTable) <= 4)
      {
        goto LABEL_369;
      }

      glpCompilerGetAllocator();
      v1253 = v1252;
      yyfill(a3, v1307, 4294967290, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 408), &v1303);
      yyfill(a3, v1307, 4294967291, v11 == 0);
      v1254 = glpMakeStringZ_0(*(a3 - 336));
      v1256 = v1255;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v1257 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeInterfaceBlockNode(v1253, &v1303, v1254, v1256, v1257, v1258, 1, 0, 0);
      v1260 = v1259;
      *a4 = v1259;
      yyfill(a3, v1307, 4294967290, v11 == 0);
      glpInterfaceBlockNodeSetQualifiers(v1260, *(a3 - 408));
      glpCompilerGetAllocator();
      v886 = v1261;
      v887 = *a4;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v888 = *(a3 - 192);
      goto LABEL_354;
    case 90:
      v280 = glpCompilerGetNameTable(a7[98]);
      if (glpNameTableGetGLSLVersion(v280) <= 4)
      {
        goto LABEL_369;
      }

      glpCompilerGetAllocator();
      v282 = v281;
      yyfill(a3, v1307, 4294967289, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 480), &v1303);
      yyfill(a3, v1307, 4294967290, v11 == 0);
      v283 = glpMakeStringZ_0(*(a3 - 408));
      v285 = v284;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v286 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeInterfaceBlockNode(v282, &v1303, v283, v285, v286, v287, 1, 1, 0);
      v289 = v288;
      *a4 = v288;
      yyfill(a3, v1307, 4294967289, v11 == 0);
      glpInterfaceBlockNodeSetQualifiers(v289, *(a3 - 480));
      glpCompilerGetAllocator();
      v291 = v290;
      v292 = *a4;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      addFields(v291, v292, *(a3 - 264));
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      if (glpArrayTypeNodeGetElementType(*(a3 - 48)))
      {
        goto LABEL_369;
      }

      v1288 = *a4;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      Dimension = glpArrayTypeNodeGetDimension(*(a3 - 48));
      glpInterfaceBlockNodeSetDimension(v1288, Dimension);
      return 0;
    case 91:
      glpCompilerGetAllocator();
      v94 = v93;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      glpMakeGlobalTypeQualifierNode(v94, &v1303, 0);
      v96 = v95;
      *a4 = v95;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpGlobalTypeQualifierNodeSetQualifierList(v96, *(a3 - 48));
      return 0;
    case 92:
      glpCompilerGetAllocator();
      v85 = v84;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v86 = glpMakeStringZ_0(*(a3 - 40));
      v88 = v87;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v86, v88, *(a3 - 32), &v1303);
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v89 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeQualifiedDeclarationNode(v85, &v1303, v89, v90);
      v92 = v91;
      *a4 = v91;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpQualifiedDeclarationNodeSetQualifiers(v92, *(a3 - 120));
      return 0;
    case 93:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      *a4 = *(a3 - 48);
      glpCompilerGetAllocator();
      v1189 = v1188;
      v1190 = *a4;
      glpCompilerGetAllocator();
      v1192 = v1191;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v1193 = glpMakeStringZ_0(*(a3 - 112));
      v1195 = v1194;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpMakeSourceLocation(v1193, v1195, *(a3 - 104), &v1303);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v1196 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeQualifiedDeclarationNode(v1192, &v1303, v1196, v1197);
      glpQualifiedDeclarationGroupNodeInsertDeclaration(v1189, v1190, v1198, 0);
      result = glpQualifiedDeclarationGroupNodeGetDeclarationCount(*a4);
      if (!result)
      {
        return result;
      }

      v1199 = result;
      for (i = 0; i != v1199; ++i)
      {
        Declaration = glpQualifiedDeclarationGroupNodeGetDeclaration(*a4, i);
        if (v11 && v1307[0] >= -2)
        {
          v1202 = *(a3 + 72 * v1307[0] + 8);
          v1203 = v1307[0] + 1;
          v1204 = a3 - 71 + 72 * v1307[0];
          do
          {
            if (!*(v1202 + 1))
            {
              goto LABEL_372;
            }

            *v1204 = 1;
            v1205 = *(v1202 + 24);
            *(v1204 + 39) = *(v1202 + 40);
            *(v1204 + 23) = v1205;
            *(v1204 + 47) = *(v1202 + 48);
            v1202 = *(v1202 + 8);
            *(v1204 + 7) = v1202;
            --v1203;
            v1204 -= 72;
          }

          while (v1203 > -2);
          v1307[0] = -3;
        }

        glpQualifiedDeclarationNodeSetQualifiers(Declaration, *(a3 - 192));
        result = 0;
      }

      return result;
    case 94:
      glpCompilerGetAllocator();
      v99 = v98;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      v100 = glpMakeStringZ_0(*(a3 - 256));
      v102 = v101;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      glpMakeSourceLocation(v100, v102, *(a3 - 248), &v1303);
      glpMakeAvailabilityDeclarationNode(v99, &v1303);
      v104 = v103;
      *a4 = v103;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpAvailabilityDeclarationNodeSetExpr(v104, *(a3 - 120));
      return 0;
    case 95:
      glpCompilerGetAllocator();
      v958 = v957;
      yyfill(a3, v1307, 0, v11 == 0);
      v959 = glpMakeStringZ_0(*(a3 + 32));
      v961 = v960;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v959, v961, *(a3 + 40), &v1303);
      glpMakeQualifiedDeclarationGroupNode(v958, &v1303);
      *a4 = v962;
      goto LABEL_261;
    case 96:
      yyfill(a3, v1307, 4294967294, v11 == 0);
      *a4 = *(a3 - 120);
LABEL_261:
      glpCompilerGetAllocator();
      v964 = v963;
      v965 = *a4;
      glpCompilerGetAllocator();
      v967 = v966;
      yyfill(a3, v1307, 0, v11 == 0);
      v968 = glpMakeStringZ_0(*(a3 + 32));
      v970 = v969;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v968, v970, *(a3 + 40), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v971 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeQualifiedDeclarationNode(v967, &v1303, v971, v972);
      glpQualifiedDeclarationGroupNodeAddDeclaration(v964, v965, v973);
      return 0;
    case 97:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v534 = *(a3 - 48);
      *a4 = v534;
      ReturnType = glpFunctionPrototypeNodeGetReturnType(v534);
      result = glpIsQualifiedTypeNode(ReturnType);
      if (!result)
      {
        return result;
      }

      Qualifiers = glpQualifiedTypeNodeGetQualifiers(ReturnType);
      v1306[0] = MEMORY[0x277D85DD0];
      v1306[1] = 0x40000000;
      v1306[2] = __yyuserAction_block_invoke;
      v1306[3] = &__block_descriptor_tmp_15;
      v1306[4] = a7;
      v1306[5] = v534;
      iterateQualifiers(Qualifiers, v1306);
      return 0;
    case 100:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v113 = *(a3 - 48);
      goto LABEL_272;
    case 101:
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v113 = *(a3 - 120);
LABEL_272:
      *a4 = v113;
      glpCompilerGetAllocator();
      v1015 = v1014;
      v1016 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpFunctionPrototypeNodeAddParameter(v1015, v1016, *(a3 + 24));
      return 0;
    case 102:
      glpCompilerGetAllocator();
      v1002 = v1001;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v1003 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeFunctionPrototypeNode(v1002, &v1303, v1003, v1004);
      *a4 = v1005;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      IsQualifiedTypeNode = glpIsQualifiedTypeNode(*(a3 - 120));
      yyfill(a3, v1307, 4294967294, v11 == 0);
      Type = *(a3 - 120);
      if (IsQualifiedTypeNode)
      {
        Type = glpQualifiedTypeNodeGetType(*(a3 - 120));
      }

      yyfill(a3, v1307, 4294967294, v11 == 0);
      if (glpIsQualifiedTypeNode(*(a3 - 120)))
      {
        yyfill(a3, v1307, 4294967294, v11 == 0);
        v1008 = glpQualifiedTypeNodeGetQualifiers(*(a3 - 120));
      }

      else
      {
        v1008 = 0;
      }

      v1303.n128_u64[0] = 0;
      v1303.n128_u64[1] = &v1303;
      v1304 = 0x2000000000;
      v1305 = 0;
      v1301 = 0;
      v1302[0] = MEMORY[0x277D85DD0];
      v1302[1] = 0x40000000;
      v1302[2] = __yyuserAction_block_invoke_2;
      v1302[3] = &unk_278B4C660;
      v1302[4] = &v1303;
      v1302[5] = a7;
      v1302[6] = Type;
      v1298 = 0;
      v1299 = &v1298;
      v1300 = 0x2000000000;
      v1293[0] = MEMORY[0x277D85DD0];
      v1293[1] = 0x40000000;
      v1294 = __yyuserAction_block_invoke_3;
      v1295 = &unk_278B4C688;
      v1296 = &v1298;
      v1297 = a7;
      v1292[0] = MEMORY[0x277D85DD0];
      v1292[1] = 0x40000000;
      v1292[2] = __yyuserAction_block_invoke_4;
      v1292[3] = &unk_278B4C6B0;
      v1292[4] = v1302;
      v1292[5] = v1293;
      iterateQualifiers(v1008, v1292);
      glpCompilerGetAllocator();
      v1267 = v1266;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1291);
      glpMakeQualifiedTypeNode(v1267, &v1291);
      v1269 = v1268;
      glpQualifiedTypeNodeSetType(v1268, Type);
      glpQualifiedTypeNodeSetQualifiers(v1269, *(v1303.n128_u64[1] + 24));
      glpFunctionPrototypeNodeSetReturnType(*a4, v1269);
      if (!glpIsPrimitiveTypeNode(Type) || glpPrimitiveTypeNodeGetType(Type))
      {
        glpCompilerGetAllocator();
        v1271 = v1270;
        yyfill(a3, v1307, 4294967294, v11 == 0);
        glpASTNodeGetLocation(*(a3 - 120), &v1291);
        KeywordQualifierNode = glpMakeKeywordQualifierNode(v1271, &v1291, 14);
        (v1294)(v1293, v1273, KeywordQualifierNode);
        qsort_b(*(v1299[3] + 8), *(v1299[3] + 4), 8uLL, &__block_literal_global_5);
        glpCompilerGetAllocator();
        v1275 = v1274;
        glpASTNodeGetLocation(Type, &v1291);
        glpMakeQualifierListNode(v1275, &v1291);
        v1277 = v1276;
        if (*(v1299[3] + 4))
        {
          v1278 = 0;
          do
          {
            glpCompilerGetAllocator();
            glpQualifierListNodeAddQualifier(v1279, v1277, *(*(v1299[3] + 8) + 8 * v1278++));
          }

          while (v1278 < *(v1299[3] + 4));
        }

        glpCompilerGetAllocator();
        v1281 = v1280;
        yyfill(a3, v1307, 4294967294, v11 == 0);
        glpASTNodeGetLocation(*(a3 - 120), &v1291);
        glpMakeQualifiedTypeNode(v1281, &v1291);
        v1283 = v1282;
        glpQualifiedTypeNodeSetType(v1282, Type);
        glpQualifiedTypeNodeSetQualifiers(v1283, v1277);
        glpCompilerGetAllocator();
        v1285 = v1284;
        yyfill(a3, v1307, 4294967294, v11 == 0);
        glpASTNodeGetLocation(*(a3 - 120), &v1291);
        glpMakeParameterDeclarationNode(v1285, &v1291, "$return_value", 0xE306948F0000000DLL);
        v1287 = v1286;
        glpParameterDeclarationNodeSetType(v1286, v1283);
        glpFunctionPrototypeNodeSetReturnOutParam(*a4, v1287);
      }

      _Block_object_dispose(&v1298, 8);
      _Block_object_dispose(&v1303, 8);
      return 0;
    case 103:
      glpCompilerGetAllocator();
      v1100 = v1099;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v1101 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeParameterDeclarationNode(v1100, &v1303, v1101, v1102);
      v1052 = v1103;
      *a4 = v1103;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v611 = *(a3 - 48);
      goto LABEL_296;
    case 104:
      glpCompilerGetAllocator();
      v1067 = v1066;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v1068 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeParameterDeclarationNode(v1067, &v1303, v1068, v1069);
      v1071 = v1070;
      *a4 = v1070;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v1072 = *(a3 - 120);
      yyfill(a3, v1307, 0, v11 == 0);
      v1073 = *(a3 + 24);
      arrayify(v1072, v1073);
      v610 = v1071;
      v611 = v1073;
      goto LABEL_297;
    case 105:
      yyfill(a3, v1307, 0, v11 == 0);
      *a4 = *(a3 + 24);
      glpCompilerGetAllocator();
      v911 = v910;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      glpMakeQualifiedTypeNode(v911, &v1303);
      v913 = v912;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpQualifiedTypeNodeSetQualifiers(v913, *(a3 - 48));
      v914 = glpParameterDeclarationNodeGetType(*a4);
      glpQualifiedTypeNodeSetType(v913, v914);
      v610 = *a4;
      v611 = v913;
      goto LABEL_297;
    case 107:
      glpCompilerGetAllocator();
      v605 = v604;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      glpMakeQualifiedTypeNode(v605, &v1303);
      v607 = v606;
      yyfill(a3, v1307, 0, v11 == 0);
      glpQualifiedTypeNodeSetType(v607, *(a3 + 24));
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpQualifiedTypeNodeSetQualifiers(v607, *(a3 - 48));
      glpCompilerGetAllocator();
      v609 = v608;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      glpMakeParameterDeclarationNode(v609, &v1303, "<<unnamed>>", 0x725D7890000000BLL);
      *a4 = v610;
      v611 = v607;
      goto LABEL_297;
    case 108:
      glpCompilerGetAllocator();
      v1050 = v1049;
      yyfill(a3, v1307, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1303);
      glpMakeParameterDeclarationNode(v1050, &v1303, "<<unnamed>>", 0x725D7890000000BLL);
      v1052 = v1051;
      *a4 = v1051;
      yyfill(a3, v1307, 0, v11 == 0);
      v611 = *(a3 + 24);
LABEL_296:
      v610 = v1052;
LABEL_297:
      glpParameterDeclarationNodeSetType(v610, v611);
      return 0;
    case 110:
      glpCompilerGetAllocator();
      v1042 = v1041;
      yyfill(a3, v1307, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1303);
      glpMakeVariableDeclarationGroupNode(v1042, &v1303);
      v1044 = v1043;
      *a4 = v1043;
      yyfill(a3, v1307, 0, v11 == 0);
      glpVariableDeclarationGroupNodeSetBaseType(v1044, *(a3 + 32));
      yyfill(a3, v1307, 0, v11 == 0);
      Kind = glpASTNodeGetKind(*(a3 + 24));
      if (Kind > 0x38)
      {
        goto LABEL_372;
      }

      if (((1 << Kind) & 0x170000000000004) != 0)
      {
        return 0;
      }

      if (Kind != 46)
      {
        goto LABEL_372;
      }

      glpCompilerGetAllocator();
      v1047 = v1046;
      v1048 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v1047, v1048, *(a3 + 24));
      return 0;
    case 111:
      glpCompilerGetAllocator();
      v115 = v114;
      yyfill(a3, v1307, 0, v11 == 0);
      v116 = glpMakeStringZ_0(*(a3 + 32));
      v118 = v117;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v116, v118, *(a3 + 40), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v119 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeVariableDeclarationNode(v115, &v1303, v119, v120, 1);
      v122 = v121;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      BaseType = glpVariableDeclarationGroupNodeGetBaseType(*(a3 - 120));
      glpVariableDeclarationNodeSetType(v122, BaseType);
      glpCompilerGetAllocator();
      v125 = v124;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v125, *(a3 - 120), v122);
      goto LABEL_56;
    case 112:
      glpCompilerGetAllocator();
      v1143 = v1142;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v1144 = glpMakeStringZ_0(*(a3 - 40));
      v1146 = v1145;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v1144, v1146, *(a3 - 32), &v1303);
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v1147 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeVariableDeclarationNode(v1143, &v1303, v1147, v1148, 1);
      v1150 = v1149;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v1151 = glpVariableDeclarationGroupNodeGetBaseType(*(a3 - 192));
      yyfill(a3, v1307, 0, v11 == 0);
      v1152 = *(a3 + 24);
      arrayify(v1151, v1152);
      glpVariableDeclarationNodeSetType(v1150, v1152);
      glpCompilerGetAllocator();
      v1154 = v1153;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v1154, *(a3 - 192), v1150);
      goto LABEL_308;
    case 113:
      glpCompilerGetAllocator();
      v1105 = v1104;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v1106 = glpMakeStringZ_0(*(a3 - 184));
      v1108 = v1107;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpMakeSourceLocation(v1106, v1108, *(a3 - 176), &v1303);
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v1109 = glpMakeStringZ_0(*(a3 - 192));
      glpMakeVariableDeclarationNode(v1105, &v1303, v1109, v1110, 1);
      v1112 = v1111;
      yyfill(a3, v1307, 4294967291, v11 == 0);
      v150 = (a3 - 336);
      v1113 = glpVariableDeclarationGroupNodeGetBaseType(*(a3 - 336));
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v1114 = *(a3 - 120);
      arrayify(v1113, v1114);
      glpVariableDeclarationNodeSetType(v1112, v1114);
      yyfill(a3, v1307, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v1112, *(a3 + 24));
      glpCompilerGetAllocator();
      v1116 = v1115;
      yyfill(a3, v1307, 4294967291, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v1116, *(a3 - 336), v1112);
      v154 = a3;
      v155 = 4294967291;
      goto LABEL_299;
    case 114:
      glpCompilerGetAllocator();
      v142 = v141;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v143 = glpMakeStringZ_0(*(a3 - 112));
      v145 = v144;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpMakeSourceLocation(v143, v145, *(a3 - 104), &v1303);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v146 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeVariableDeclarationNode(v142, &v1303, v146, v147, 1);
      v149 = v148;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      v150 = (a3 - 264);
      v151 = glpVariableDeclarationGroupNodeGetBaseType(*(a3 - 264));
      glpVariableDeclarationNodeSetType(v149, v151);
      yyfill(a3, v1307, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v149, *(a3 + 24));
      glpCompilerGetAllocator();
      v153 = v152;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v153, *(a3 - 264), v149);
      v154 = a3;
      v155 = 4294967292;
LABEL_299:
      yyfill(v154, v1307, v155, v11 == 0);
      result = 0;
      v24 = *v150;
      goto LABEL_334;
    case 115:
      yyfill(a3, v1307, 0, v11 == 0);
      v350 = *(a3 + 24);
      goto LABEL_211;
    case 116:
      glpCompilerGetAllocator();
      v71 = v70;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v72 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeVariableDeclarationNode(v71, &v1303, v72, v73, 1);
      v75 = v74;
      *a4 = v74;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpVariableDeclarationNodeSetType(v75, *(a3 - 48));
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      result = 0;
      v76 = *(a3 - 48);
      goto LABEL_311;
    case 117:
      glpCompilerGetAllocator();
      v1135 = v1134;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1303);
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v1136 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeVariableDeclarationNode(v1135, &v1303, v1136, v1137, 1);
      v1139 = v1138;
      *a4 = v1138;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v1140 = *(a3 - 120);
      yyfill(a3, v1307, 0, v11 == 0);
      v1141 = *(a3 + 24);
      arrayify(v1140, v1141);
      glpVariableDeclarationNodeSetType(v1139, v1141);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      result = 0;
      v76 = *(a3 - 120);
      goto LABEL_311;
    case 118:
      glpCompilerGetAllocator();
      v1158 = v1157;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 264), &v1303);
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v1159 = glpMakeStringZ_0(*(a3 - 192));
      glpMakeVariableDeclarationNode(v1158, &v1303, v1159, v1160, 1);
      v1162 = v1161;
      *a4 = v1161;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      v1163 = *(a3 - 264);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v1164 = *(a3 - 120);
      arrayify(v1163, v1164);
      glpVariableDeclarationNodeSetType(v1162, v1164);
      v1165 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v1165, *(a3 + 24));
      yyfill(a3, v1307, 4294967292, v11 == 0);
      result = 0;
      v76 = *(a3 - 264);
      goto LABEL_311;
    case 119:
      glpCompilerGetAllocator();
      v218 = v217;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 192), &v1303);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v219 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeVariableDeclarationNode(v218, &v1303, v219, v220, 1);
      v222 = v221;
      *a4 = v221;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpVariableDeclarationNodeSetType(v222, *(a3 - 192));
      v223 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v223, *(a3 + 24));
      yyfill(a3, v1307, 4294967293, v11 == 0);
      result = 0;
      v76 = *(a3 - 192);
      goto LABEL_311;
    case 121:
      glpCompilerGetAllocator();
      v598 = v597;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      glpMakeQualifiedTypeNode(v598, &v1303);
      v600 = v599;
      *a4 = v599;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpQualifiedTypeNodeSetQualifiers(v600, *(a3 - 48));
      v601 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpQualifiedTypeNodeSetType(v601, *(a3 + 24));
      return 0;
    case 122:
      glpCompilerGetAllocator();
      v186 = v185;
      yyfill(a3, v1307, 0, v11 == 0);
      v187 = glpMakeStringZ_0(*(a3 + 32));
      v189 = v188;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v187, v189, *(a3 + 40), &v1303);
      v110 = v186;
      v111 = 1;
      goto LABEL_332;
    case 123:
      glpCompilerGetAllocator();
      v245 = v244;
      yyfill(a3, v1307, 0, v11 == 0);
      v246 = glpMakeStringZ_0(*(a3 + 32));
      v248 = v247;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v246, v248, *(a3 + 40), &v1303);
      v110 = v245;
      v111 = 2;
      goto LABEL_332;
    case 124:
      glpCompilerGetAllocator();
      v1120 = v1119;
      yyfill(a3, v1307, 0, v11 == 0);
      v1121 = glpMakeStringZ_0(*(a3 + 32));
      v1123 = v1122;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1121, v1123, *(a3 + 40), &v1303);
      v110 = v1120;
      v111 = 3;
      goto LABEL_332;
    case 125:
      glpCompilerGetAllocator();
      v174 = v173;
      yyfill(a3, v1307, 0, v11 == 0);
      v175 = glpMakeStringZ_0(*(a3 + 32));
      v177 = v176;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v175, v177, *(a3 + 40), &v1303);
      v110 = v174;
      v111 = 4;
      goto LABEL_332;
    case 127:
      glpCompilerGetAllocator();
      v82 = v81;
      yyfill(a3, v1307, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1303);
      glpMakeLayoutTypeNode(v82, &v1303);
      *a4 = v83;
      goto LABEL_58;
    case 128:
      yyfill(a3, v1307, 4294967294, v11 == 0);
      *a4 = *(a3 - 120);
LABEL_58:
      glpCompilerGetAllocator();
      v198 = v197;
      v199 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpLayoutTypeNodeAddLayoutPair(v198, v199, *(a3 + 24));
      return 0;
    case 130:
      glpCompilerGetAllocator();
      v1125 = v1124;
      yyfill(a3, v1307, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1303);
      glpMakeLayoutQualifierNode(v1125, &v1303);
      *a4 = v1126;
      goto LABEL_303;
    case 131:
      yyfill(a3, v1307, 4294967294, v11 == 0);
      *a4 = *(a3 - 120);
LABEL_303:
      glpCompilerGetAllocator();
      v1128 = v1127;
      v1129 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpLayoutQualifierNodeAddLayoutPair(v1128, v1129, *(a3 + 24));
      return 0;
    case 132:
      glpCompilerGetAllocator();
      v518 = v517;
      yyfill(a3, v1307, 0, v11 == 0);
      v519 = glpMakeStringZ_0(*(a3 + 32));
      v521 = v520;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v519, v521, *(a3 + 40), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v42 = glpMakeStringZ_0(*(a3 + 24));
      v43 = v522;
      v39 = "<<BUG: printing string of non-string layout>>";
      v40 = 0x4FE9A940000002DLL;
      v41 = v518;
      v44 = 0;
      goto LABEL_290;
    case 133:
    case 134:
      v25 = glpCompilerGetNameTable(a7[98]);
      if (glpNameTableGetGLSLVersion(v25) <= 4)
      {
        v26 = glpCompilerGetNameTable(a7[98]);
        if (!glpNameTableIsExtensionEnabled(v26, 0x23u))
        {
          v27 = glpCompilerGetNameTable(a7[98]);
          if (!glpNameTableIsExtensionEnabled(v27, 1u))
          {
            v28 = glpCompilerGetNameTable(a7[98]);
            if (!glpNameTableIsExtensionEnabled(v28, 0x15u))
            {
              v29 = glpCompilerGetNameTable(a7[98]);
              if (!glpNameTableIsExtensionEnabled(v29, 0x11u))
              {
                goto LABEL_369;
              }
            }
          }
        }
      }

      glpCompilerGetAllocator();
      v31 = v30;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v32 = glpMakeStringZ_0(*(a3 - 112));
      v34 = v33;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpMakeSourceLocation(v32, v34, *(a3 - 104), &v1303);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v35 = glpMakeStringZ_0(*(a3 - 120));
      v37 = v36;
      yyfill(a3, v1307, 0, v11 == 0);
      v38 = *(a3 + 24);
      v39 = "<<BUG: printing string of non-string layout>>";
      v40 = 0x4FE9A940000002DLL;
      v41 = v31;
      v42 = v35;
      v43 = v37;
      v44 = 1;
      goto LABEL_291;
    case 135:
      v789 = glpCompilerGetNameTable(a7[98]);
      if (!glpNameTableIsExtensionEnabled(v789, 0x23u))
      {
        goto LABEL_369;
      }

      glpCompilerGetAllocator();
      v791 = v790;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v792 = glpMakeStringZ_0(*(a3 - 112));
      v794 = v793;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpMakeSourceLocation(v792, v794, *(a3 - 104), &v1303);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v795 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeLayoutPairNode(v791, &v1303, v795, v796, 2, 0, "<<BUG: printing string of non-string layout>>", 0x4FE9A940000002DLL);
      v798 = v797;
      *a4 = v797;
      yyfill(a3, v1307, 0, v11 == 0);
      glpLayoutPairNodeSetType(v798, *(a3 + 24));
      return 0;
    case 136:
      v1074 = glpCompilerGetNameTable(a7[98]);
      if (!glpNameTableIsExtensionEnabled(v1074, 0x23u))
      {
        goto LABEL_369;
      }

      glpCompilerGetAllocator();
      v1076 = v1075;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v1077 = glpMakeStringZ_0(*(a3 - 112));
      v1079 = v1078;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpMakeSourceLocation(v1077, v1079, *(a3 - 104), &v1303);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v1080 = glpMakeStringZ_0(*(a3 - 120));
      v1082 = v1081;
      yyfill(a3, v1307, 0, v11 == 0);
      v39 = glpMakeStringZ_0(*(a3 + 24));
      v40 = v1083;
      v41 = v1076;
      v42 = v1080;
      v43 = v1082;
      v44 = 3;
LABEL_290:
      v38 = 0;
LABEL_291:
      glpMakeLayoutPairNode(v41, &v1303, v42, v43, v44, v38, v39, v40);
      goto LABEL_333;
    case 137:
      glpCompilerGetAllocator();
      v785 = v784;
      yyfill(a3, v1307, 0, v11 == 0);
      v786 = glpMakeStringZ_0(*(a3 + 32));
      v788 = v787;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v786, v788, *(a3 + 40), &v1303);
      v110 = v785;
      v111 = 0;
      goto LABEL_332;
    case 138:
      glpCompilerGetAllocator();
      v384 = v383;
      yyfill(a3, v1307, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1303);
      glpMakeQualifierListNode(v384, &v1303);
      *a4 = v385;
      goto LABEL_105;
    case 139:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      *a4 = *(a3 - 48);
LABEL_105:
      glpCompilerGetAllocator();
      v387 = v386;
      v388 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpQualifierListNodeAddQualifier(v387, v388, *(a3 + 24));
      return 0;
    case 146:
      glpCompilerGetAllocator();
      v335 = v334;
      yyfill(a3, v1307, 0, v11 == 0);
      v336 = glpMakeStringZ_0(*(a3 + 32));
      v338 = v337;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v336, v338, *(a3 + 40), &v1303);
      v110 = v335;
      v111 = 5;
      goto LABEL_332;
    case 147:
      glpCompilerGetAllocator();
      v255 = v254;
      yyfill(a3, v1307, 0, v11 == 0);
      v256 = glpMakeStringZ_0(*(a3 + 32));
      v258 = v257;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v256, v258, *(a3 + 40), &v1303);
      v110 = v255;
      v111 = 15;
      goto LABEL_332;
    case 148:
      glpCompilerGetAllocator();
      v106 = v105;
      yyfill(a3, v1307, 0, v11 == 0);
      v107 = glpMakeStringZ_0(*(a3 + 32));
      v109 = v108;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v107, v109, *(a3 + 40), &v1303);
      v110 = v106;
      v111 = 13;
      goto LABEL_332;
    case 149:
      glpCompilerGetAllocator();
      v1214 = v1213;
      yyfill(a3, v1307, 0, v11 == 0);
      v1215 = glpMakeStringZ_0(*(a3 + 32));
      v1217 = v1216;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1215, v1217, *(a3 + 40), &v1303);
      v110 = v1214;
      v111 = 14;
      goto LABEL_332;
    case 150:
      glpCompilerGetAllocator();
      v1179 = v1178;
      yyfill(a3, v1307, 0, v11 == 0);
      v1180 = glpMakeStringZ_0(*(a3 + 32));
      v1182 = v1181;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1180, v1182, *(a3 + 40), &v1303);
      v110 = v1179;
      v111 = 6;
      goto LABEL_332;
    case 151:
      glpCompilerGetAllocator();
      v1207 = v1206;
      yyfill(a3, v1307, 0, v11 == 0);
      v1208 = glpMakeStringZ_0(*(a3 + 32));
      v1210 = v1209;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1208, v1210, *(a3 + 40), &v1303);
      v110 = v1207;
      v111 = 7;
      goto LABEL_332;
    case 152:
      glpCompilerGetAllocator();
      v1085 = v1084;
      yyfill(a3, v1307, 0, v11 == 0);
      v1086 = glpMakeStringZ_0(*(a3 + 32));
      v1088 = v1087;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1086, v1088, *(a3 + 40), &v1303);
      v110 = v1085;
      v111 = 8;
      goto LABEL_332;
    case 153:
      glpCompilerGetAllocator();
      v370 = v369;
      yyfill(a3, v1307, 0, v11 == 0);
      v371 = glpMakeStringZ_0(*(a3 + 32));
      v373 = v372;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v371, v373, *(a3 + 40), &v1303);
      v110 = v370;
      v111 = 16;
      goto LABEL_332;
    case 154:
      glpCompilerGetAllocator();
      v235 = v234;
      yyfill(a3, v1307, 0, v11 == 0);
      v236 = glpMakeStringZ_0(*(a3 + 32));
      v238 = v237;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v236, v238, *(a3 + 40), &v1303);
      v110 = v235;
      v111 = 10;
      goto LABEL_332;
    case 156:
      glpCompilerGetAllocator();
      v294 = v293;
      yyfill(a3, v1307, 0, v11 == 0);
      v295 = glpMakeStringZ_0(*(a3 + 32));
      v297 = v296;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v295, v297, *(a3 + 40), &v1303);
      v110 = v294;
      v111 = 17;
      goto LABEL_332;
    case 157:
      glpCompilerGetAllocator();
      v1184 = v1183;
      yyfill(a3, v1307, 0, v11 == 0);
      v1185 = glpMakeStringZ_0(*(a3 + 32));
      v1187 = v1186;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1185, v1187, *(a3 + 40), &v1303);
      v110 = v1184;
      v111 = 18;
      goto LABEL_332;
    case 158:
      glpCompilerGetAllocator();
      v169 = v168;
      yyfill(a3, v1307, 0, v11 == 0);
      v170 = glpMakeStringZ_0(*(a3 + 32));
      v172 = v171;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v170, v172, *(a3 + 40), &v1303);
      v110 = v169;
      v111 = 9;
      goto LABEL_332;
    case 159:
      glpCompilerGetAllocator();
      v299 = v298;
      yyfill(a3, v1307, 0, v11 == 0);
      v300 = glpMakeStringZ_0(*(a3 + 32));
      v302 = v301;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v300, v302, *(a3 + 40), &v1303);
      v110 = v299;
      v111 = 11;
      goto LABEL_332;
    case 160:
      glpCompilerGetAllocator();
      v330 = v329;
      yyfill(a3, v1307, 0, v11 == 0);
      v331 = glpMakeStringZ_0(*(a3 + 32));
      v333 = v332;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v331, v333, *(a3 + 40), &v1303);
      v110 = v330;
      v111 = 12;
      goto LABEL_332;
    case 161:
      glpCompilerGetAllocator();
      v980 = v979;
      yyfill(a3, v1307, 0, v11 == 0);
      v981 = glpMakeStringZ_0(*(a3 + 32));
      v983 = v982;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v981, v983, *(a3 + 40), &v1303);
      glpMakeSubroutineTypeListNode(v980, &v1303);
      *a4 = v984;
      goto LABEL_264;
    case 162:
      yyfill(a3, v1307, 4294967294, v11 == 0);
      *a4 = *(a3 - 120);
LABEL_264:
      glpCompilerGetAllocator();
      v986 = v985;
      v987 = *a4;
      glpCompilerGetAllocator();
      v989 = v988;
      yyfill(a3, v1307, 0, v11 == 0);
      v990 = glpMakeStringZ_0(*(a3 + 32));
      v992 = v991;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v990, v992, *(a3 + 40), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v993 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeTypeIdentifierNode(v989, &v1303, v993, v994);
      glpSubroutineTypeListNodeAddType(v986, v987, v995);
      return 0;
    case 164:
      v344 = glpCompilerGetNameTable(a7[98]);
      if (glpNameTableGetGLSLVersion(v344) > 1)
      {
        yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
        v1262 = *(a3 - 48);
        yyfill(a3, v1307, 0, v11 == 0);
        v1263 = *(a3 + 24);
        arrayify(v1262, v1263);
        result = 0;
        *a4 = v1263;
      }

      else
      {
LABEL_369:
        yyerror(0, a7);
        *a6 = 0;
        return 3;
      }

      return result;
    case 165:
      glpCompilerGetAllocator();
      v390 = v389;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v391 = glpMakeStringZ_0(*(a3 - 40));
      v393 = v392;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v391, v393, *(a3 - 32), &v1303);
      glpMakeArrayTypeNode(v390, &v1303);
      goto LABEL_333;
    case 166:
      glpCompilerGetAllocator();
      v620 = v619;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v621 = glpMakeStringZ_0(*(a3 - 112));
      v623 = v622;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpMakeSourceLocation(v621, v623, *(a3 - 104), &v1303);
      glpMakeArrayTypeNode(v620, &v1303);
      v625 = v624;
      *a4 = v624;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpArrayTypeNodeSetDimension(v625, *(a3 - 48));
      return 0;
    case 167:
      glpCompilerGetAllocator();
      v191 = v190;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v192 = glpMakeStringZ_0(*(a3 - 40));
      v194 = v193;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v192, v194, *(a3 - 32), &v1303);
      glpMakeArrayTypeNode(v191, &v1303);
      v196 = v195;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpArrayTypeNodeSetElementType(*(a3 - 120), v196);
LABEL_56:
      yyfill(a3, v1307, 4294967294, v11 == 0);
      result = 0;
      v24 = *(a3 - 120);
      goto LABEL_334;
    case 168:
      glpCompilerGetAllocator();
      v476 = v475;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v477 = glpMakeStringZ_0(*(a3 - 112));
      v479 = v478;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpMakeSourceLocation(v477, v479, *(a3 - 104), &v1303);
      glpMakeArrayTypeNode(v476, &v1303);
      v481 = v480;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpArrayTypeNodeSetDimension(v481, *(a3 - 48));
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpArrayTypeNodeSetElementType(*(a3 - 192), v481);
LABEL_308:
      yyfill(a3, v1307, 4294967293, v11 == 0);
      result = 0;
      v24 = *(a3 - 192);
      goto LABEL_334;
    case 169:
      glpCompilerGetAllocator();
      v201 = v200;
      yyfill(a3, v1307, 0, v11 == 0);
      v202 = glpMakeStringZ_0(*(a3 + 32));
      v204 = v203;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v202, v204, *(a3 + 40), &v1303);
      v161 = v201;
      v162 = 0;
      goto LABEL_314;
    case 170:
      glpCompilerGetAllocator();
      v1057 = v1056;
      yyfill(a3, v1307, 0, v11 == 0);
      v1058 = glpMakeStringZ_0(*(a3 + 32));
      v1060 = v1059;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1058, v1060, *(a3 + 40), &v1303);
      v161 = v1057;
      v162 = 1;
      goto LABEL_314;
    case 171:
      glpCompilerGetAllocator();
      v890 = v889;
      yyfill(a3, v1307, 0, v11 == 0);
      v891 = glpMakeStringZ_0(*(a3 + 32));
      v893 = v892;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v891, v893, *(a3 + 40), &v1303);
      v210 = v890;
      v211 = 62;
      goto LABEL_247;
    case 172:
      glpCompilerGetAllocator();
      v800 = v799;
      yyfill(a3, v1307, 0, v11 == 0);
      v801 = glpMakeStringZ_0(*(a3 + 32));
      v803 = v802;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v801, v803, *(a3 + 40), &v1303);
      v161 = v800;
      v162 = 5;
      goto LABEL_314;
    case 173:
      glpCompilerGetAllocator();
      v401 = v400;
      yyfill(a3, v1307, 0, v11 == 0);
      v402 = glpMakeStringZ_0(*(a3 + 32));
      v404 = v403;
      yyfill(a3, v1307, 0, v11 == 0);
      v405 = *(a3 + 40);
      goto LABEL_253;
    case 174:
      glpCompilerGetAllocator();
      v401 = v925;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v402 = glpMakeStringZ_0(*(a3 - 40));
      v404 = v926;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v405 = *(a3 - 32);
LABEL_253:
      glpMakeSourceLocation(v402, v404, v405, &v1303);
      v161 = v401;
      v162 = 36;
      goto LABEL_314;
    case 175:
      glpCompilerGetAllocator();
      v1037 = v1036;
      yyfill(a3, v1307, 0, v11 == 0);
      v1038 = glpMakeStringZ_0(*(a3 + 32));
      v1040 = v1039;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1038, v1040, *(a3 + 40), &v1303);
      v161 = v1037;
      v162 = 9;
      goto LABEL_314;
    case 176:
      glpCompilerGetAllocator();
      v1174 = v1173;
      yyfill(a3, v1307, 0, v11 == 0);
      v1175 = glpMakeStringZ_0(*(a3 + 32));
      v1177 = v1176;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1175, v1177, *(a3 + 40), &v1303);
      v161 = v1174;
      v162 = 2;
      goto LABEL_314;
    case 177:
      glpCompilerGetAllocator();
      v466 = v465;
      yyfill(a3, v1307, 0, v11 == 0);
      v467 = glpMakeStringZ_0(*(a3 + 32));
      v469 = v468;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v467, v469, *(a3 + 40), &v1303);
      v161 = v466;
      v162 = 3;
      goto LABEL_314;
    case 178:
      glpCompilerGetAllocator();
      v213 = v212;
      yyfill(a3, v1307, 0, v11 == 0);
      v214 = glpMakeStringZ_0(*(a3 + 32));
      v216 = v215;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v214, v216, *(a3 + 40), &v1303);
      v161 = v213;
      v162 = 4;
      goto LABEL_314;
    case 179:
      glpCompilerGetAllocator();
      v250 = v249;
      yyfill(a3, v1307, 0, v11 == 0);
      v251 = glpMakeStringZ_0(*(a3 + 32));
      v253 = v252;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v251, v253, *(a3 + 40), &v1303);
      v210 = v250;
      v211 = 63;
      goto LABEL_247;
    case 180:
      glpCompilerGetAllocator();
      v900 = v899;
      yyfill(a3, v1307, 0, v11 == 0);
      v901 = glpMakeStringZ_0(*(a3 + 32));
      v903 = v902;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v901, v903, *(a3 + 40), &v1303);
      v210 = v900;
      v211 = 64;
      goto LABEL_247;
    case 181:
      glpCompilerGetAllocator();
      v495 = v494;
      yyfill(a3, v1307, 0, v11 == 0);
      v496 = glpMakeStringZ_0(*(a3 + 32));
      v498 = v497;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v496, v498, *(a3 + 40), &v1303);
      v210 = v495;
      v211 = 65;
      goto LABEL_247;
    case 182:
      glpCompilerGetAllocator();
      v1018 = v1017;
      yyfill(a3, v1307, 0, v11 == 0);
      v1019 = glpMakeStringZ_0(*(a3 + 32));
      v1021 = v1020;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1019, v1021, *(a3 + 40), &v1303);
      v161 = v1018;
      v162 = 10;
      goto LABEL_314;
    case 183:
      glpCompilerGetAllocator();
      v1090 = v1089;
      yyfill(a3, v1307, 0, v11 == 0);
      v1091 = glpMakeStringZ_0(*(a3 + 32));
      v1093 = v1092;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1091, v1093, *(a3 + 40), &v1303);
      v161 = v1090;
      v162 = 11;
      goto LABEL_314;
    case 184:
      glpCompilerGetAllocator();
      v179 = v178;
      yyfill(a3, v1307, 0, v11 == 0);
      v180 = glpMakeStringZ_0(*(a3 + 32));
      v182 = v181;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v180, v182, *(a3 + 40), &v1303);
      v161 = v179;
      v162 = 12;
      goto LABEL_314;
    case 185:
      glpCompilerGetAllocator();
      v157 = v156;
      yyfill(a3, v1307, 0, v11 == 0);
      v158 = glpMakeStringZ_0(*(a3 + 32));
      v160 = v159;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v158, v160, *(a3 + 40), &v1303);
      v161 = v157;
      v162 = 6;
      goto LABEL_314;
    case 186:
      glpCompilerGetAllocator();
      v501 = v500;
      yyfill(a3, v1307, 0, v11 == 0);
      v502 = glpMakeStringZ_0(*(a3 + 32));
      v504 = v503;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v502, v504, *(a3 + 40), &v1303);
      v161 = v501;
      v162 = 7;
      goto LABEL_314;
    case 187:
      glpCompilerGetAllocator();
      v546 = v545;
      yyfill(a3, v1307, 0, v11 == 0);
      v547 = glpMakeStringZ_0(*(a3 + 32));
      v549 = v548;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v547, v549, *(a3 + 40), &v1303);
      v161 = v546;
      v162 = 8;
      goto LABEL_314;
    case 188:
      glpCompilerGetAllocator();
      v813 = v812;
      yyfill(a3, v1307, 0, v11 == 0);
      v814 = glpMakeStringZ_0(*(a3 + 32));
      v816 = v815;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v814, v816, *(a3 + 40), &v1303);
      v161 = v813;
      v162 = 37;
      goto LABEL_314;
    case 189:
      glpCompilerGetAllocator();
      v585 = v584;
      yyfill(a3, v1307, 0, v11 == 0);
      v586 = glpMakeStringZ_0(*(a3 + 32));
      v588 = v587;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v586, v588, *(a3 + 40), &v1303);
      v161 = v585;
      v162 = 38;
      goto LABEL_314;
    case 190:
      glpCompilerGetAllocator();
      v808 = v807;
      yyfill(a3, v1307, 0, v11 == 0);
      v809 = glpMakeStringZ_0(*(a3 + 32));
      v811 = v810;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v809, v811, *(a3 + 40), &v1303);
      v161 = v808;
      v162 = 39;
      goto LABEL_314;
    case 191:
      glpCompilerGetAllocator();
      v632 = v631;
      yyfill(a3, v1307, 0, v11 == 0);
      v633 = glpMakeStringZ_0(*(a3 + 32));
      v635 = v634;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v633, v635, *(a3 + 40), &v1303);
      v161 = v632;
      v162 = 13;
      goto LABEL_314;
    case 192:
      glpCompilerGetAllocator();
      v916 = v915;
      yyfill(a3, v1307, 0, v11 == 0);
      v917 = glpMakeStringZ_0(*(a3 + 32));
      v919 = v918;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v917, v919, *(a3 + 40), &v1303);
      v161 = v916;
      v162 = 22;
      goto LABEL_314;
    case 193:
      glpCompilerGetAllocator();
      v164 = v163;
      yyfill(a3, v1307, 0, v11 == 0);
      v165 = glpMakeStringZ_0(*(a3 + 32));
      v167 = v166;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v165, v167, *(a3 + 40), &v1303);
      v161 = v164;
      v162 = 23;
      goto LABEL_314;
    case 194:
      glpCompilerGetAllocator();
      v225 = v224;
      yyfill(a3, v1307, 0, v11 == 0);
      v226 = glpMakeStringZ_0(*(a3 + 32));
      v228 = v227;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v226, v228, *(a3 + 40), &v1303);
      v161 = v225;
      v162 = 24;
      goto LABEL_314;
    case 195:
      glpCompilerGetAllocator();
      v556 = v555;
      yyfill(a3, v1307, 0, v11 == 0);
      v557 = glpMakeStringZ_0(*(a3 + 32));
      v559 = v558;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v557, v559, *(a3 + 40), &v1303);
      v161 = v556;
      v162 = 14;
      goto LABEL_314;
    case 196:
      glpCompilerGetAllocator();
      v310 = v309;
      yyfill(a3, v1307, 0, v11 == 0);
      v311 = glpMakeStringZ_0(*(a3 + 32));
      v313 = v312;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v311, v313, *(a3 + 40), &v1303);
      v161 = v310;
      v162 = 25;
      goto LABEL_314;
    case 197:
      glpCompilerGetAllocator();
      v833 = v832;
      yyfill(a3, v1307, 0, v11 == 0);
      v834 = glpMakeStringZ_0(*(a3 + 32));
      v836 = v835;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v834, v836, *(a3 + 40), &v1303);
      v161 = v833;
      v162 = 26;
      goto LABEL_314;
    case 198:
      glpCompilerGetAllocator();
      v865 = v864;
      yyfill(a3, v1307, 0, v11 == 0);
      v866 = glpMakeStringZ_0(*(a3 + 32));
      v868 = v867;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v866, v868, *(a3 + 40), &v1303);
      v161 = v865;
      v162 = 27;
      goto LABEL_314;
    case 199:
      glpCompilerGetAllocator();
      v524 = v523;
      yyfill(a3, v1307, 0, v11 == 0);
      v525 = glpMakeStringZ_0(*(a3 + 32));
      v527 = v526;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v525, v527, *(a3 + 40), &v1303);
      v161 = v524;
      v162 = 15;
      goto LABEL_314;
    case 200:
      glpCompilerGetAllocator();
      v876 = v875;
      yyfill(a3, v1307, 0, v11 == 0);
      v877 = glpMakeStringZ_0(*(a3 + 32));
      v879 = v878;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v877, v879, *(a3 + 40), &v1303);
      v210 = v876;
      v211 = 66;
      goto LABEL_247;
    case 201:
      glpCompilerGetAllocator();
      v828 = v827;
      yyfill(a3, v1307, 0, v11 == 0);
      v829 = glpMakeStringZ_0(*(a3 + 32));
      v831 = v830;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v829, v831, *(a3 + 40), &v1303);
      v210 = v828;
      v211 = 69;
      goto LABEL_247;
    case 202:
      glpCompilerGetAllocator();
      v396 = v395;
      yyfill(a3, v1307, 0, v11 == 0);
      v397 = glpMakeStringZ_0(*(a3 + 32));
      v399 = v398;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v397, v399, *(a3 + 40), &v1303);
      v210 = v396;
      v211 = 70;
      goto LABEL_247;
    case 203:
      glpCompilerGetAllocator();
      v412 = v411;
      yyfill(a3, v1307, 0, v11 == 0);
      v413 = glpMakeStringZ_0(*(a3 + 32));
      v415 = v414;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v413, v415, *(a3 + 40), &v1303);
      v210 = v412;
      v211 = 71;
      goto LABEL_247;
    case 204:
      glpCompilerGetAllocator();
      v838 = v837;
      yyfill(a3, v1307, 0, v11 == 0);
      v839 = glpMakeStringZ_0(*(a3 + 32));
      v841 = v840;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v839, v841, *(a3 + 40), &v1303);
      v210 = v838;
      v211 = 67;
      goto LABEL_247;
    case 205:
      glpCompilerGetAllocator();
      v895 = v894;
      yyfill(a3, v1307, 0, v11 == 0);
      v896 = glpMakeStringZ_0(*(a3 + 32));
      v898 = v897;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v896, v898, *(a3 + 40), &v1303);
      v210 = v895;
      v211 = 72;
      goto LABEL_247;
    case 206:
      glpCompilerGetAllocator();
      v206 = v205;
      yyfill(a3, v1307, 0, v11 == 0);
      v207 = glpMakeStringZ_0(*(a3 + 32));
      v209 = v208;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v207, v209, *(a3 + 40), &v1303);
      v210 = v206;
      v211 = 73;
      goto LABEL_247;
    case 207:
      glpCompilerGetAllocator();
      v240 = v239;
      yyfill(a3, v1307, 0, v11 == 0);
      v241 = glpMakeStringZ_0(*(a3 + 32));
      v243 = v242;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v241, v243, *(a3 + 40), &v1303);
      v210 = v240;
      v211 = 74;
      goto LABEL_247;
    case 208:
      glpCompilerGetAllocator();
      v407 = v406;
      yyfill(a3, v1307, 0, v11 == 0);
      v408 = glpMakeStringZ_0(*(a3 + 32));
      v410 = v409;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v408, v410, *(a3 + 40), &v1303);
      v210 = v407;
      v211 = 68;
LABEL_247:
      glpMakePrimitiveTypeNode(v210, &v1303, v211);
      *a4 = v904;
      glpCreateDoublesTelemetry();
      return 0;
    case 209:
      glpCompilerGetAllocator();
      v429 = v428;
      yyfill(a3, v1307, 0, v11 == 0);
      v430 = glpMakeStringZ_0(*(a3 + 32));
      v432 = v431;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v430, v432, *(a3 + 40), &v1303);
      v161 = v429;
      v162 = 16;
      goto LABEL_314;
    case 210:
      glpCompilerGetAllocator();
      v270 = v269;
      yyfill(a3, v1307, 0, v11 == 0);
      v271 = glpMakeStringZ_0(*(a3 + 32));
      v273 = v272;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v271, v273, *(a3 + 40), &v1303);
      v161 = v270;
      v162 = 17;
      goto LABEL_314;
    case 211:
      glpCompilerGetAllocator();
      v320 = v319;
      yyfill(a3, v1307, 0, v11 == 0);
      v321 = glpMakeStringZ_0(*(a3 + 32));
      v323 = v322;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v321, v323, *(a3 + 40), &v1303);
      v161 = v320;
      v162 = 18;
      goto LABEL_314;
    case 212:
      glpCompilerGetAllocator();
      v938 = v937;
      yyfill(a3, v1307, 0, v11 == 0);
      v939 = glpMakeStringZ_0(*(a3 + 32));
      v941 = v940;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v939, v941, *(a3 + 40), &v1303);
      v161 = v938;
      v162 = 19;
      goto LABEL_314;
    case 213:
      glpCompilerGetAllocator();
      v943 = v942;
      yyfill(a3, v1307, 0, v11 == 0);
      v944 = glpMakeStringZ_0(*(a3 + 32));
      v946 = v945;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v944, v946, *(a3 + 40), &v1303);
      v161 = v943;
      v162 = 20;
      goto LABEL_314;
    case 214:
      glpCompilerGetAllocator();
      v362 = v361;
      yyfill(a3, v1307, 0, v11 == 0);
      v363 = glpMakeStringZ_0(*(a3 + 32));
      v365 = v364;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v363, v365, *(a3 + 40), &v1303);
      v161 = v362;
      v162 = 21;
      goto LABEL_314;
    case 215:
      glpCompilerGetAllocator();
      v953 = v952;
      yyfill(a3, v1307, 0, v11 == 0);
      v954 = glpMakeStringZ_0(*(a3 + 32));
      v956 = v955;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v954, v956, *(a3 + 40), &v1303);
      v161 = v953;
      v162 = 35;
      goto LABEL_314;
    case 216:
      glpCompilerGetAllocator();
      v1010 = v1009;
      yyfill(a3, v1307, 0, v11 == 0);
      v1011 = glpMakeStringZ_0(*(a3 + 32));
      v1013 = v1012;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1011, v1013, *(a3 + 40), &v1303);
      v161 = v1010;
      v162 = 30;
      goto LABEL_314;
    case 217:
      glpCompilerGetAllocator();
      v1095 = v1094;
      yyfill(a3, v1307, 0, v11 == 0);
      v1096 = glpMakeStringZ_0(*(a3 + 32));
      v1098 = v1097;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1096, v1098, *(a3 + 40), &v1303);
      v161 = v1095;
      v162 = 31;
      goto LABEL_314;
    case 218:
      glpCompilerGetAllocator();
      v674 = v673;
      yyfill(a3, v1307, 0, v11 == 0);
      v675 = glpMakeStringZ_0(*(a3 + 32));
      v677 = v676;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v675, v677, *(a3 + 40), &v1303);
      v161 = v674;
      v162 = 33;
      goto LABEL_314;
    case 219:
      glpCompilerGetAllocator();
      v1062 = v1061;
      yyfill(a3, v1307, 0, v11 == 0);
      v1063 = glpMakeStringZ_0(*(a3 + 32));
      v1065 = v1064;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1063, v1065, *(a3 + 40), &v1303);
      v161 = v1062;
      v162 = 34;
      goto LABEL_314;
    case 220:
      glpCompilerGetAllocator();
      v315 = v314;
      yyfill(a3, v1307, 0, v11 == 0);
      v316 = glpMakeStringZ_0(*(a3 + 32));
      v318 = v317;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v316, v318, *(a3 + 40), &v1303);
      v161 = v315;
      v162 = 75;
      goto LABEL_314;
    case 221:
      glpCompilerGetAllocator();
      v997 = v996;
      yyfill(a3, v1307, 0, v11 == 0);
      v998 = glpMakeStringZ_0(*(a3 + 32));
      v1000 = v999;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v998, v1000, *(a3 + 40), &v1303);
      v161 = v997;
      v162 = 76;
      goto LABEL_314;
    case 222:
      glpCompilerGetAllocator();
      v697 = v696;
      yyfill(a3, v1307, 0, v11 == 0);
      v698 = glpMakeStringZ_0(*(a3 + 32));
      v700 = v699;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v698, v700, *(a3 + 40), &v1303);
      v161 = v697;
      v162 = 40;
      goto LABEL_314;
    case 223:
      glpCompilerGetAllocator();
      v346 = v345;
      yyfill(a3, v1307, 0, v11 == 0);
      v347 = glpMakeStringZ_0(*(a3 + 32));
      v349 = v348;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v347, v349, *(a3 + 40), &v1303);
      v161 = v346;
      v162 = 41;
      goto LABEL_314;
    case 224:
      glpCompilerGetAllocator();
      v659 = v658;
      yyfill(a3, v1307, 0, v11 == 0);
      v660 = glpMakeStringZ_0(*(a3 + 32));
      v662 = v661;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v660, v662, *(a3 + 40), &v1303);
      v161 = v659;
      v162 = 42;
      goto LABEL_314;
    case 225:
      glpCompilerGetAllocator();
      v265 = v264;
      yyfill(a3, v1307, 0, v11 == 0);
      v266 = glpMakeStringZ_0(*(a3 + 32));
      v268 = v267;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v266, v268, *(a3 + 40), &v1303);
      v161 = v265;
      v162 = 43;
      goto LABEL_314;
    case 226:
      glpCompilerGetAllocator();
      v1023 = v1022;
      yyfill(a3, v1307, 0, v11 == 0);
      v1024 = glpMakeStringZ_0(*(a3 + 32));
      v1026 = v1025;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1024, v1026, *(a3 + 40), &v1303);
      v161 = v1023;
      v162 = 45;
      goto LABEL_314;
    case 227:
      glpCompilerGetAllocator();
      v1032 = v1031;
      yyfill(a3, v1307, 0, v11 == 0);
      v1033 = glpMakeStringZ_0(*(a3 + 32));
      v1035 = v1034;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v1033, v1035, *(a3 + 40), &v1303);
      v161 = v1032;
      v162 = 46;
      goto LABEL_314;
    case 228:
      glpCompilerGetAllocator();
      v352 = v351;
      yyfill(a3, v1307, 0, v11 == 0);
      v353 = glpMakeStringZ_0(*(a3 + 32));
      v355 = v354;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v353, v355, *(a3 + 40), &v1303);
      v161 = v352;
      v162 = 77;
      goto LABEL_314;
    case 229:
      glpCompilerGetAllocator();
      v928 = v927;
      yyfill(a3, v1307, 0, v11 == 0);
      v929 = glpMakeStringZ_0(*(a3 + 32));
      v931 = v930;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v929, v931, *(a3 + 40), &v1303);
      v161 = v928;
      v162 = 48;
      goto LABEL_314;
    case 230:
      glpCompilerGetAllocator();
      v823 = v822;
      yyfill(a3, v1307, 0, v11 == 0);
      v824 = glpMakeStringZ_0(*(a3 + 32));
      v826 = v825;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v824, v826, *(a3 + 40), &v1303);
      v161 = v823;
      v162 = 49;
      goto LABEL_314;
    case 231:
      glpCompilerGetAllocator();
      v818 = v817;
      yyfill(a3, v1307, 0, v11 == 0);
      v819 = glpMakeStringZ_0(*(a3 + 32));
      v821 = v820;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v819, v821, *(a3 + 40), &v1303);
      v161 = v818;
      v162 = 50;
      goto LABEL_314;
    case 232:
      glpCompilerGetAllocator();
      v230 = v229;
      yyfill(a3, v1307, 0, v11 == 0);
      v231 = glpMakeStringZ_0(*(a3 + 32));
      v233 = v232;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v231, v233, *(a3 + 40), &v1303);
      v161 = v230;
      v162 = 51;
      goto LABEL_314;
    case 233:
      glpCompilerGetAllocator();
      v260 = v259;
      yyfill(a3, v1307, 0, v11 == 0);
      v261 = glpMakeStringZ_0(*(a3 + 32));
      v263 = v262;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v261, v263, *(a3 + 40), &v1303);
      v161 = v260;
      v162 = 53;
      goto LABEL_314;
    case 234:
      glpCompilerGetAllocator();
      v551 = v550;
      yyfill(a3, v1307, 0, v11 == 0);
      v552 = glpMakeStringZ_0(*(a3 + 32));
      v554 = v553;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v552, v554, *(a3 + 40), &v1303);
      v161 = v551;
      v162 = 54;
      goto LABEL_314;
    case 235:
      glpCompilerGetAllocator();
      v568 = v567;
      yyfill(a3, v1307, 0, v11 == 0);
      v569 = glpMakeStringZ_0(*(a3 + 32));
      v571 = v570;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v569, v571, *(a3 + 40), &v1303);
      v161 = v568;
      v162 = 78;
      goto LABEL_314;
    case 236:
      glpCompilerGetAllocator();
      v419 = v418;
      yyfill(a3, v1307, 0, v11 == 0);
      v420 = glpMakeStringZ_0(*(a3 + 32));
      v422 = v421;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v420, v422, *(a3 + 40), &v1303);
      v161 = v419;
      v162 = 28;
      goto LABEL_314;
    case 237:
      glpCompilerGetAllocator();
      v305 = v304;
      yyfill(a3, v1307, 0, v11 == 0);
      v306 = glpMakeStringZ_0(*(a3 + 32));
      v308 = v307;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v306, v308, *(a3 + 40), &v1303);
      v161 = v305;
      v162 = 29;
      goto LABEL_314;
    case 238:
      glpCompilerGetAllocator();
      v948 = v947;
      yyfill(a3, v1307, 0, v11 == 0);
      v949 = glpMakeStringZ_0(*(a3 + 32));
      v951 = v950;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v949, v951, *(a3 + 40), &v1303);
      v161 = v948;
      v162 = 44;
      goto LABEL_314;
    case 239:
      glpCompilerGetAllocator();
      v340 = v339;
      yyfill(a3, v1307, 0, v11 == 0);
      v341 = glpMakeStringZ_0(*(a3 + 32));
      v343 = v342;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v341, v343, *(a3 + 40), &v1303);
      v161 = v340;
      v162 = 52;
      goto LABEL_314;
    case 240:
      glpCompilerGetAllocator();
      v722 = v721;
      yyfill(a3, v1307, 0, v11 == 0);
      v723 = glpMakeStringZ_0(*(a3 + 32));
      v725 = v724;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v723, v725, *(a3 + 40), &v1303);
      v161 = v722;
      v162 = 32;
      goto LABEL_314;
    case 241:
      glpCompilerGetAllocator();
      v444 = v443;
      yyfill(a3, v1307, 0, v11 == 0);
      v445 = glpMakeStringZ_0(*(a3 + 32));
      v447 = v446;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v445, v447, *(a3 + 40), &v1303);
      v161 = v444;
      v162 = 47;
      goto LABEL_314;
    case 242:
      glpCompilerGetAllocator();
      v933 = v932;
      yyfill(a3, v1307, 0, v11 == 0);
      v934 = glpMakeStringZ_0(*(a3 + 32));
      v936 = v935;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v934, v936, *(a3 + 40), &v1303);
      v161 = v933;
      v162 = 55;
      goto LABEL_314;
    case 243:
      glpCompilerGetAllocator();
      v921 = v920;
      yyfill(a3, v1307, 0, v11 == 0);
      v922 = glpMakeStringZ_0(*(a3 + 32));
      v924 = v923;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v922, v924, *(a3 + 40), &v1303);
      v161 = v921;
      v162 = 56;
      goto LABEL_314;
    case 244:
      glpCompilerGetAllocator();
      v906 = v905;
      yyfill(a3, v1307, 0, v11 == 0);
      v907 = glpMakeStringZ_0(*(a3 + 32));
      v909 = v908;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v907, v909, *(a3 + 40), &v1303);
      v161 = v906;
      v162 = 58;
      goto LABEL_314;
    case 245:
      glpCompilerGetAllocator();
      v424 = v423;
      yyfill(a3, v1307, 0, v11 == 0);
      v425 = glpMakeStringZ_0(*(a3 + 32));
      v427 = v426;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v425, v427, *(a3 + 40), &v1303);
      v161 = v424;
      v162 = 60;
      goto LABEL_314;
    case 246:
      glpCompilerGetAllocator();
      v325 = v324;
      yyfill(a3, v1307, 0, v11 == 0);
      v326 = glpMakeStringZ_0(*(a3 + 32));
      v328 = v327;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v326, v328, *(a3 + 40), &v1303);
      v161 = v325;
      v162 = 57;
      goto LABEL_314;
    case 247:
      glpCompilerGetAllocator();
      v483 = v482;
      yyfill(a3, v1307, 0, v11 == 0);
      v484 = glpMakeStringZ_0(*(a3 + 32));
      v486 = v485;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v484, v486, *(a3 + 40), &v1303);
      v161 = v483;
      v162 = 59;
      goto LABEL_314;
    case 248:
      glpCompilerGetAllocator();
      v975 = v974;
      yyfill(a3, v1307, 0, v11 == 0);
      v976 = glpMakeStringZ_0(*(a3 + 32));
      v978 = v977;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v976, v978, *(a3 + 40), &v1303);
      v161 = v975;
      v162 = 61;
LABEL_314:
      glpMakePrimitiveTypeNode(v161, &v1303, v162);
      goto LABEL_333;
    case 250:
      glpCompilerGetAllocator();
      v778 = v777;
      yyfill(a3, v1307, 0, v11 == 0);
      v779 = glpMakeStringZ_0(*(a3 + 32));
      v781 = v780;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v779, v781, *(a3 + 40), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v782 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeTypeIdentifierNode(v778, &v1303, v782, v783);
      goto LABEL_333;
    case 252:
      glpCompilerGetAllocator();
      v506 = v505;
      yyfill(a3, v1307, 0, v11 == 0);
      v507 = glpMakeStringZ_0(*(a3 + 32));
      v509 = v508;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v507, v509, *(a3 + 40), &v1303);
      v110 = v506;
      v111 = 24;
      goto LABEL_332;
    case 253:
      glpCompilerGetAllocator();
      v357 = v356;
      yyfill(a3, v1307, 0, v11 == 0);
      v358 = glpMakeStringZ_0(*(a3 + 32));
      v360 = v359;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v358, v360, *(a3 + 40), &v1303);
      v110 = v357;
      v111 = 23;
      goto LABEL_332;
    case 254:
      glpCompilerGetAllocator();
      v860 = v859;
      yyfill(a3, v1307, 0, v11 == 0);
      v861 = glpMakeStringZ_0(*(a3 + 32));
      v863 = v862;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v861, v863, *(a3 + 40), &v1303);
      v110 = v860;
      v111 = 22;
      goto LABEL_332;
    case 255:
      glpCompilerGetAllocator();
      v679 = v678;
      yyfill(a3, v1307, 0, v11 == 0);
      v680 = glpMakeStringZ_0(*(a3 + 32));
      v682 = v681;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v680, v682, *(a3 + 40), &v1303);
      v110 = v679;
      v111 = 20;
      goto LABEL_332;
    case 256:
      glpCompilerGetAllocator();
      v573 = v572;
      yyfill(a3, v1307, 0, v11 == 0);
      v574 = glpMakeStringZ_0(*(a3 + 32));
      v576 = v575;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v574, v576, *(a3 + 40), &v1303);
      v110 = v573;
      v111 = 21;
LABEL_332:
      glpMakeKeywordQualifierNode(v110, &v1303, v111);
      goto LABEL_333;
    case 257:
      v842 = a7[4];
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v843 = glpMakeStringZ_0(*(a3 - 192));
      glpStringHashPut(v842, v843, v844, v845, 1);
      glpCompilerGetAllocator();
      v847 = v846;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      v848 = glpMakeStringZ_0(*(a3 - 256));
      v850 = v849;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      glpMakeSourceLocation(v848, v850, *(a3 - 248), &v1303);
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v851 = glpMakeStringZ_0(*(a3 - 192));
      v853 = v852;
      goto LABEL_243;
    case 258:
      glpCompilerGetAllocator();
      v847 = v880;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v881 = glpMakeStringZ_0(*(a3 - 184));
      v883 = v882;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpMakeSourceLocation(v881, v883, *(a3 - 176), &v1303);
      v851 = "<<unnamed>>";
      v853 = 0x725D7890000000BLL;
LABEL_243:
      glpMakeStructTypeNode(v847, &v1303, v851, v853);
      *a4 = v884;
      glpCompilerGetAllocator();
      v886 = v885;
      v887 = *a4;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v888 = *(a3 - 48);
LABEL_354:
      addFields(v886, v887, v888);
      return 0;
    case 260:
      yyfill(a3, v1307, 0, v11 == 0);
      v416 = *(a3 + 24);
      do
      {
        v417 = v416;
        v416 = *(v416 + 16);
      }

      while (v416);
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      *(v417 + 16) = *(a3 - 48);
LABEL_12:
      yyfill(a3, v1307, 0, v11 == 0);
      result = 0;
      v24 = *(a3 + 24);
      goto LABEL_334;
    case 261:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v448 = *(a3 - 48);
      if (!v448)
      {
        goto LABEL_146;
      }

      v449 = v1307[0];
      v1290 = a3 - 71;
      break;
    case 262:
      glpCompilerGetAllocator();
      v434 = v433;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 192), &v1303);
      glpMakeQualifiedTypeNode(v434, &v1303);
      v436 = v435;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpQualifiedTypeNodeSetType(v436, *(a3 - 120));
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpQualifiedTypeNodeSetQualifiers(v436, *(a3 - 192));
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v437 = *(a3 - 48);
      if (v437)
      {
        do
        {
          v438 = v437[1];
          v439 = v437[2];
          v440 = v436;
          if (v438)
          {
            glpArrayTypeNodeSetElementType(v437[1], v436);
            v440 = v438;
          }

          glpFieldDeclarationNodeSetType(*v437, v440);
          v437 = v439;
        }

        while (v439);
      }

LABEL_121:
      v441 = a3;
      v442 = v11 == 0;
      goto LABEL_122;
    case 263:
      v493 = glpCompilerPoolAlloc(a7[98]);
      yyfill(a3, v1307, 0, v11 == 0);
      *v493 = *(a3 + 24);
      yyfill(a3, v1307, 0, v11 == 0);
      result = 0;
      v493[1] = *(a3 + 32);
      v493[2] = 0;
      goto LABEL_160;
    case 264:
      v493 = glpCompilerPoolAlloc(a7[98]);
      yyfill(a3, v1307, 0, v11 == 0);
      *v493 = *(a3 + 24);
      yyfill(a3, v1307, 0, v11 == 0);
      v493[1] = *(a3 + 32);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      result = 0;
      v493[2] = *(a3 - 120);
LABEL_160:
      *a4 = v493;
      return result;
    case 265:
      glpCompilerGetAllocator();
      v753 = v752;
      yyfill(a3, v1307, 0, v11 == 0);
      v754 = glpMakeStringZ_0(*(a3 + 32));
      v756 = v755;
      yyfill(a3, v1307, 0, v11 == 0);
      glpMakeSourceLocation(v754, v756, *(a3 + 40), &v1303);
      yyfill(a3, v1307, 0, v11 == 0);
      v757 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeFieldDeclarationNode(v753, &v1303, v757, v758);
      v583 = v759;
      result = 0;
      goto LABEL_214;
    case 266:
      glpCompilerGetAllocator();
      v650 = v649;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v651 = glpMakeStringZ_0(*(a3 - 40));
      v653 = v652;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v651, v653, *(a3 - 32), &v1303);
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v654 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeFieldDeclarationNode(v650, &v1303, v654, v655);
      *a4 = v656;
      yyfill(a3, v1307, 0, v11 == 0);
      v657 = *(a3 + 24);
      arrayify(0, v657);
      result = 0;
      a4[1] = v657;
      return result;
    case 268:
      glpCompilerGetAllocator();
      v748 = v747;
      yyfill(a3, v1307, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1303);
      glpMakeExpressionStatementNode(v748, &v1303);
      v750 = v749;
      *a4 = v749;
      yyfill(a3, v1307, 0, v11 == 0);
      v751 = *(a3 + 24);
      goto LABEL_226;
    case 278:
      glpCompilerGetAllocator();
      v871 = v870;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v872 = glpMakeStringZ_0(*(a3 - 40));
      v874 = v873;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v872, v874, *(a3 - 32), &v1303);
      v492 = v871;
      v499 = 1;
      goto LABEL_240;
    case 279:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v869 = *(a3 - 48);
      *a4 = v869;
      glpBlockNodeSetNeedsNewScope(v869, 1);
      return 0;
    case 282:
      glpCompilerGetAllocator();
      v488 = v487;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v489 = glpMakeStringZ_0(*(a3 - 40));
      v491 = v490;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v489, v491, *(a3 - 32), &v1303);
      v492 = v488;
      goto LABEL_155;
    case 284:
      glpCompilerGetAllocator();
      v1303.n128_u64[0] = "-1";
      v1303.n128_u64[1] = 0xEDA00000002;
      v1304 = 0xFFFFFFFFLL;
      glpMakeBlockNode(v589, &v1303, 0);
      *a4 = v590;
      goto LABEL_180;
    case 285:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      *a4 = *(a3 - 48);
LABEL_180:
      glpCompilerGetAllocator();
      v592 = v591;
      v593 = *a4;
      goto LABEL_201;
    case 287:
      glpCompilerGetAllocator();
      v805 = v804;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      glpMakeExpressionStatementNode(v805, &v1303);
      v750 = v806;
      *a4 = v806;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v751 = *(a3 - 48);
LABEL_226:
      glpExpressionStatementNodeSetExpr(v750, v751);
      return 0;
    case 288:
      glpCompilerGetAllocator();
      v702 = v701;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      v703 = glpMakeStringZ_0(*(a3 - 256));
      v705 = v704;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      glpMakeSourceLocation(v703, v705, *(a3 - 248), &v1303);
      glpMakeIfStatementNode(v702, &v1303);
      v707 = v706;
      *a4 = v706;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpIfStatementNodeSetCond(v707, *(a3 - 120));
      v708 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpIfStatementNodeSetIfStatement(v708, *(a3 + 24));
      v709 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpIfStatementNodeSetElseStatement(v709, *(a3 + 32));
      return 0;
    case 289:
      glpCompilerGetAllocator();
      v1303.n128_u64[0] = "-1";
      v1303.n128_u64[1] = 0xEDA00000002;
      v1304 = 0xFFFFFFFFLL;
      glpMakeBlockNode(v683, &v1303, 1);
      *a4 = v684;
      glpCompilerGetAllocator();
      v686 = v685;
      v687 = *a4;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpBlockNodeAddStatement(v686, v687, *(a3 - 120));
      glpCompilerGetAllocator();
      v1303.n128_u64[0] = "-1";
      v1303.n128_u64[1] = 0xEDA00000002;
      v1304 = 0xFFFFFFFFLL;
      glpMakeBlockNode(v688, &v1303, 1);
      a4[1] = v689;
      glpCompilerGetAllocator();
      v592 = v690;
      v593 = a4[1];
LABEL_201:
      yyfill(a3, v1307, 0, v11 == 0);
      glpBlockNodeAddStatement(v592, v593, *(a3 + 24));
      return 0;
    case 290:
      glpCompilerGetAllocator();
      v1303.n128_u64[0] = "-1";
      v1303.n128_u64[1] = 0xEDA00000002;
      v1304 = 0xFFFFFFFFLL;
      glpMakeBlockNode(v854, &v1303, 1);
      *a4 = v855;
      glpCompilerGetAllocator();
      v857 = v856;
      v858 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpBlockNodeAddStatement(v857, v858, *(a3 + 24));
      result = 0;
      a4[1] = 0;
      return result;
    case 292:
      glpCompilerGetAllocator();
      v727 = v726;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 192), &v1303);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v728 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeVariableDeclarationNode(v727, &v1303, v728, v729, 1);
      v731 = v730;
      *a4 = v730;
      yyfill(a3, v1307, 4294967293, v11 == 0);
      glpVariableDeclarationNodeSetType(v731, *(a3 - 192));
      v732 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v732, *(a3 + 24));
      return 0;
    case 293:
      glpCompilerGetAllocator();
      v664 = v663;
      yyfill(a3, v1307, 4294967290, v11 == 0);
      v665 = glpMakeStringZ_0(*(a3 - 400));
      v667 = v666;
      yyfill(a3, v1307, 4294967290, v11 == 0);
      glpMakeSourceLocation(v665, v667, *(a3 - 392), &v1303);
      glpMakeSwitchStatementNode(v664, &v1303);
      v669 = v668;
      *a4 = v668;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      glpSwitchStatementNodeSetExpr(v669, *(a3 - 264));
      v670 = *a4;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpSwitchStatementNodeSetBody(v670, *(a3 - 48));
      return 0;
    case 294:
      glpCompilerGetAllocator();
      v1303.n128_u64[0] = "-1";
      v1303.n128_u64[1] = 0xEDA00000002;
      v1304 = 0xFFFFFFFFLL;
LABEL_155:
      v499 = 0;
LABEL_240:
      glpMakeBlockNode(v492, &v1303, v499);
      goto LABEL_333;
    case 296:
      glpCompilerGetAllocator();
      v613 = v612;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v614 = glpMakeStringZ_0(*(a3 - 112));
      v616 = v615;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpMakeSourceLocation(v614, v616, *(a3 - 104), &v1303);
      glpMakeCaseStatementNode(v613, &v1303, 1);
      v618 = v617;
      *a4 = v617;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpCaseStatementNodeSetConstValue(v618, *(a3 - 48));
      return 0;
    case 297:
      glpCompilerGetAllocator();
      v511 = v510;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v512 = glpMakeStringZ_0(*(a3 - 40));
      v514 = v513;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v512, v514, *(a3 - 32), &v1303);
      glpMakeDefaultStatementNode(v511, &v1303, 1);
      goto LABEL_333;
    case 298:
      glpCompilerGetAllocator();
      v711 = v710;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      v712 = glpMakeStringZ_0(*(a3 - 256));
      v714 = v713;
      yyfill(a3, v1307, 4294967292, v11 == 0);
      glpMakeSourceLocation(v712, v714, *(a3 - 248), &v1303);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v715 = *(a3 - 120);
      yyfill(a3, v1307, 0, v11 == 0);
      WhileFragment = glpMakeWhileFragment(v711, &v1303, v715, *(a3 + 24));
      goto LABEL_333;
    case 299:
      glpCompilerGetAllocator();
      v578 = v577;
      yyfill(a3, v1307, 4294967290, v11 == 0);
      v579 = glpMakeStringZ_0(*(a3 - 400));
      v581 = v580;
      yyfill(a3, v1307, 4294967290, v11 == 0);
      glpMakeSourceLocation(v579, v581, *(a3 - 392), &v1303);
      yyfill(a3, v1307, 4294967291, v11 == 0);
      v582 = *(a3 - 336);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      WhileFragment = glpMakeDoWhileFragment(v578, &v1303, v582, *(a3 - 120));
      goto LABEL_333;
    case 300:
      glpCompilerGetAllocator();
      v538 = v537;
      yyfill(a3, v1307, 4294967291, v11 == 0);
      v539 = glpMakeStringZ_0(*(a3 - 328));
      v541 = v540;
      yyfill(a3, v1307, 4294967291, v11 == 0);
      glpMakeSourceLocation(v539, v541, *(a3 - 320), &v1303);
      yyfill(a3, v1307, 4294967293, v11 == 0);
      v542 = *(a3 - 192);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v543 = *(a3 - 120);
      yyfill(a3, v1307, 0, v11 == 0);
      v544 = *(a3 + 24);
      yyfill(a3, v1307, 4294967294, v11 == 0);
      WhileFragment = glpMakeForFragment(v538, &v1303, v542, v543, v544, *(a3 - 112));
      goto LABEL_333;
    case 304:
      v733 = glpGetPrimitiveType(9u);
      glpCompilerGetAllocator();
      v735 = v734;
      v736 = a7[98];
      glpCompilerGetAllocator();
      v743 = glpMakeMutableValue(v737, v733, 1, v738, v739, v740, v741, v742, 1);
      v744 = glpCompilerRemapValue(v736, v733, v743);
      v1303.n128_u64[0] = "-1";
      v1303.n128_u64[1] = 0xEDA00000002;
      v1304 = 0xFFFFFFFFLL;
      v745 = v735;
      v746 = v733;
LABEL_351:
      glpMakeConstantNode(v745, &v1303, v746, v744);
      goto LABEL_333;
    case 305:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      result = 0;
      v583 = *(a3 - 48);
LABEL_214:
      *a4 = v583;
      a4[1] = 0;
      return result;
    case 306:
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v350 = *(a3 - 120);
LABEL_211:
      *a4 = v350;
      yyfill(a3, v1307, 0, v11 == 0);
      result = 0;
      v76 = *(a3 + 24);
LABEL_311:
      a4[1] = v76;
      return result;
    case 307:
      glpCompilerGetAllocator();
      v637 = v636;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v638 = glpMakeStringZ_0(*(a3 - 40));
      v640 = v639;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v638, v640, *(a3 - 32), &v1303);
      glpMakeContinueStatementNode(v637, &v1303);
      goto LABEL_333;
    case 308:
      glpCompilerGetAllocator();
      v717 = v716;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v718 = glpMakeStringZ_0(*(a3 - 40));
      v720 = v719;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v718, v720, *(a3 - 32), &v1303);
      glpMakeBreakStatementNode(v717, &v1303);
      goto LABEL_333;
    case 309:
      glpCompilerGetAllocator();
      v692 = v691;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v693 = glpMakeStringZ_0(*(a3 - 40));
      v695 = v694;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v693, v695, *(a3 - 32), &v1303);
      glpMakeReturnStatementNode(v692, &v1303);
      goto LABEL_333;
    case 310:
      glpCompilerGetAllocator();
      v561 = v560;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      v562 = glpMakeStringZ_0(*(a3 - 112));
      v564 = v563;
      yyfill(a3, v1307, 4294967294, v11 == 0);
      glpMakeSourceLocation(v562, v564, *(a3 - 104), &v1303);
      glpMakeReturnStatementNode(v561, &v1303);
      v566 = v565;
      *a4 = v565;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpReturnStatementNodeSetExpr(v566, *(a3 - 48));
      return 0;
    case 311:
      glpCompilerGetAllocator();
      v627 = v626;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      v628 = glpMakeStringZ_0(*(a3 - 40));
      v630 = v629;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v628, v630, *(a3 - 32), &v1303);
      glpMakeDiscardStatementNode(v627, &v1303);
LABEL_333:
      v24 = WhileFragment;
      result = 0;
      goto LABEL_334;
    case 312:
      *a4 = glpCompilerGetTopLevelNode(a7[98]);
      glpCompilerGetAllocator();
      v595 = v594;
      v596 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpTopLevelNodeAddDef(v595, v596, *(a3 + 24));
      result = 0;
      a7[99] = *a4;
      return result;
    case 313:
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      *a4 = *(a3 - 48);
      glpCompilerGetAllocator();
      v642 = v641;
      v643 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpTopLevelNodeAddDef(v642, v643, *(a3 + 24));
      return 0;
    case 316:
      glpCompilerGetAllocator();
      v645 = v644;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1303);
      glpMakeFunctionDefinitionNode(v645, &v1303);
      v647 = v646;
      *a4 = v646;
      yyfill(a3, v1307, 0xFFFFFFFFLL, v11 == 0);
      glpFunctionDefinitionNodeSetPrototype(v647, *(a3 - 48));
      v648 = *a4;
      yyfill(a3, v1307, 0, v11 == 0);
      glpFunctionDefinitionNodeSetBody(v648, *(a3 + 24));
      return 0;
    default:
      return 0;
  }

  do
  {
    v450 = v448;
    v451 = v448;
    v452 = v448[1];
    v448 = v448[2];
    v453 = v451 + 1;
    if (v452)
    {
      for (j = v452; ; j = v456)
      {
        ElementType = glpArrayTypeNodeGetElementType(j);
        if (!ElementType)
        {
          break;
        }

        v456 = ElementType;
        if (!glpIsArrayTypeNode(ElementType))
        {
          break;
        }

        v452 = v456;
      }

      if (v11 && v449 >= -1)
      {
        v457 = *(a3 + 72 * v449 + 8);
        v458 = v449 + 1;
        v459 = v1290 + 72 * v449;
        do
        {
          if (!*(v457 + 1))
          {
            goto LABEL_372;
          }

          *v459 = 1;
          v460 = *(v457 + 24);
          *(v459 + 39) = *(v457 + 40);
          *(v459 + 23) = v460;
          *(v459 + 47) = *(v457 + 48);
          v457 = *(v457 + 8);
          *(v459 + 7) = v457;
          --v458;
          v459 -= 72;
        }

        while ((v458 & 0x8000000000000000) == 0);
        v449 = -2;
        v1307[0] = -2;
      }

      glpArrayTypeNodeSetElementType(v452, *(a3 - 120));
    }

    else
    {
      if (v11 && v449 >= -1)
      {
        v461 = *(a3 + 72 * v449 + 8);
        v462 = v449 + 1;
        v463 = v1290 + 72 * v449;
        do
        {
          if (!*(v461 + 1))
          {
            goto LABEL_372;
          }

          *v463 = 1;
          v464 = *(v461 + 24);
          *(v463 + 39) = *(v461 + 40);
          *(v463 + 23) = v464;
          *(v463 + 47) = *(v461 + 48);
          v461 = *(v461 + 8);
          *(v463 + 7) = v461;
          --v462;
          v463 -= 72;
        }

        while ((v462 & 0x8000000000000000) == 0);
        v449 = -2;
        v1307[0] = -2;
      }

      v453 = (a3 - 120);
    }

    glpFieldDeclarationNodeSetType(*v450, *v453);
  }

  while (v448);
LABEL_146:
  v441 = a3;
  v442 = v11 == 0;
LABEL_122:
  yyfill(v441, v1307, 0xFFFFFFFFLL, v442);
  result = 0;
  v24 = *(a3 - 48);
LABEL_334:
  *a4 = v24;
  return result;
}

uint64_t yyfill(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    v4 = *a2;
    if (v4 > a3)
    {
      v5 = a1 + 72 * v4;
      v6 = *(v5 + 8);
      v7 = v5 - 71;
      do
      {
        if (!*(v6 + 1))
        {
          abort();
        }

        --v4;
        *v7 = 1;
        v8 = *(v6 + 24);
        *(v7 + 39) = *(v6 + 40);
        *(v7 + 23) = v8;
        *(v7 + 47) = *(v6 + 48);
        v6 = *(v6 + 8);
        *(v7 + 7) = v6;
        v7 -= 72;
      }

      while (v4 > a3);
      *a2 = a3;
    }
  }

  return a3;
}

const char *glpMakeStringZ_0(const char *a1)
{
  v2 = strlen(a1);
  if (v2)
  {
    v3 = v2;
    v4 = v2;
    do
    {
      v4 ^= 32 * v4 + (v4 >> 2) + a1[v3 - 1];
      v3 += ~(v2 >> 5);
    }

    while (v3 > v2 >> 5);
  }

  return a1;
}

void *addFields(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a3[2];
  if (v6)
  {
    addFields(a1, a2, v6);
  }

  v7 = *a3;

  return glpStructureNodeAddField(a1, a2, v7);
}

uint64_t iterateQualifiers(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    Kind = glpASTNodeGetKind(result);
    if ((Kind - 59) >= 3)
    {
      if (Kind != 62)
      {
        abort();
      }

      result = glpQualifierListNodeGetQualifierCount(v3);
      if (result)
      {
        v6 = result;
        for (i = 0; i != v6; ++i)
        {
          Qualifier = glpQualifierListNodeGetQualifier(v3, i);
          result = (*(a2 + 16))(a2, Qualifier);
        }
      }
    }

    else
    {
      v5 = *(a2 + 16);

      return v5(a2, v3);
    }
  }

  return result;
}

uint64_t __yyuserAction_block_invoke(uint64_t a1, uint64_t a2)
{
  result = glpIsKeywordQualifierNode(a2);
  if (result)
  {
    result = glpKeywordQualifierNodeGetQualifier(a2);
    if (result == 10)
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 32);
      Name = glpFunctionPrototypeNodeGetName(v5);

      return glpStringHashPut(v6, Name, v7, v9, 1);
    }
  }

  return result;
}

void *__yyuserAction_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    glpCompilerGetAllocator();
    v5 = v4;
    glpASTNodeGetLocation(*(a1 + 48), &v9);
    glpMakeQualifierListNode(v5, &v9);
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }

  glpCompilerGetAllocator();
  return glpQualifierListNodeAddQualifier(v7, *(*(*(a1 + 32) + 8) + 24), a2);
}

void *__yyuserAction_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (!v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = glpCompilerPoolAlloc(*(*(a1 + 40) + 784));
    glpCompilerGetAllocator();
    **(*(*(a1 + 32) + 8) + 24) = 4;
    *(*(*(*(a1 + 32) + 8) + 24) + 4) = 0;
    *(*(*(*(a1 + 32) + 8) + 24) + 8) = (*(v5 + 8))(*v5, 32, "Vector Storage (GLPASTNode *)");
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  v6 = *(v4 + 4);
  v7 = *(v4 + 4);
  if ((v6 + 1) > *v4)
  {
    if (*v4 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *v4;
    }

    v9 = 2 * v8;
    if (v9 <= v6 + 1)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = v9;
    }

    glpCompilerGetAllocator();
    v12 = v11;
    v13 = (*(v11 + 8))(*v11, 8 * v10, "Vector Storage (GLPASTNode *, growth)");
    v14 = *(*(*(a1 + 32) + 8) + 24);
    memcpy(v13, *(v14 + 8), 8 * *(v14 + 4));
    (*(v12 + 24))(*v12, *(*(*(*(a1 + 32) + 8) + 24) + 8));
    **(*(*(a1 + 32) + 8) + 24) = v10;
    *(*(*(*(a1 + 32) + 8) + 24) + 8) = v13;
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v7 = *(v4 + 4);
  }

  result = memmove((*(v4 + 8) + 8 * v6 + 8), (*(v4 + 8) + 8 * v6), 8 * (v7 - v6));
  *(*(*(*(*(a1 + 32) + 8) + 24) + 8) + 8 * v6) = a2;
  v16 = *(*(*(a1 + 32) + 8) + 24);
  ++*(v16 + 4);
  return result;
}

uint64_t __yyuserAction_block_invoke_4(uint64_t a1, uint64_t a2)
{
  Kind = glpASTNodeGetKind(a2);
  if ((Kind - 60) < 2)
  {
    v5 = 32;
LABEL_3:
    v6 = *(*(a1 + v5) + 16);

    return v6();
  }

  if (Kind != 59)
  {
    abort();
  }

  Qualifier = glpKeywordQualifierNodeGetQualifier(a2);
  result = (*(*(a1 + 32) + 16))();
  if (Qualifier != 10)
  {
    v5 = 40;
    goto LABEL_3;
  }

  return result;
}

uint64_t __yyuserAction_block_invoke_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = glpQualifierKindOfNode(*a2);
  return v4 - glpQualifierKindOfNode(v3);
}

uint64_t arrayify(uint64_t a1, uint64_t a2)
{
  ElementType = a2;
  if (glpArrayTypeNodeGetElementType(a2))
  {
    ElementType = a2;
    do
    {
      ElementType = glpArrayTypeNodeGetElementType(ElementType);
    }

    while (glpArrayTypeNodeGetElementType(ElementType));
  }

  glpArrayTypeNodeSetElementType(ElementType, a1);
  return a2;
}

uint64_t yyresolveStates(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = __OFSUB__(a2, 1);
  v5 = a2 - 1;
  if (v5 < 0 != v4)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    abort();
  }

  v10 = yyresolveStates(v7, v5, a3, a4);
  if (!v10)
  {
    if (*(a1 + 1))
    {
      return 0;
    }

    v13 = (a1 + 24);
    v14 = *(a1 + 24);
    v45 = 0uLL;
    v46 = 0;
    v16 = (v14 + 64);
    v15 = *(v14 + 64);
    if (v15)
    {
      while (1)
      {
        v17 = *(v14 + 4);
        v18 = *(v15 + 4);
        if (v17 != v18)
        {
          goto LABEL_34;
        }

        v19 = yyr2[v17];
        if (yyr2[v17])
        {
          v20 = v19 + 1;
          v21 = v14;
          v22 = v15;
          while (1)
          {
            v22 = *(v22 + 8);
            v21 = *(v21 + 8);
            if (*(v21 + 16) != *(v22 + 16))
            {
              break;
            }

            if (--v20 < 2)
            {
              v23 = *(v14 + 8);
              for (i = *(v15 + 8); v23 != i; i = *(i + 8))
              {
                if (*(v23 + 1))
                {
                  *(i + 1) = 1;
                  v11 = *(v23 + 24);
                  *(i + 40) = *(v23 + 40);
                  *(i + 24) = v11;
                }

                else if (*(i + 1))
                {
                  *(v23 + 1) = 1;
                  v11 = *(i + 24);
                  *(v23 + 40) = *(i + 40);
                  *(v23 + 24) = v11;
                }

                else
                {
                  v25 = *(v23 + 24);
                  v26 = *(i + 24);
                  if (v26)
                  {
                    v27 = v26 == v25;
                  }

                  else
                  {
                    v27 = 1;
                  }

                  if (!v27)
                  {
                    v28 = (v23 + 24);
                    while (v25)
                    {
                      if (v25 < v26)
                      {
                        *v28 = v26;
                        v29 = *(v26 + 64);
                        *(v26 + 64) = v25;
                        v25 = *v28;
                        v26 = v29;
                      }

                      if (v26)
                      {
                        v28 = (v25 + 64);
                        v25 = *(v25 + 64);
                        if (v26 != v25)
                        {
                          continue;
                        }
                      }

                      goto LABEL_31;
                    }

                    *v28 = v26;
                  }

LABEL_31:
                  *(i + 24) = *(v23 + 24);
                }

                if (v19 < 2)
                {
                  break;
                }

                --v19;
                v23 = *(v23 + 8);
              }

              goto LABEL_45;
            }
          }

LABEL_34:
          v30 = yydprec[v17];
          v31 = yydprec[v18];
          v33 = v30 == v31 || v30 == 0 || v31 == 0;
          if (v33 || (v34 = v15, v30 >= v31) && (v34 = v14, v31 >= v30))
          {
            yyresolveLocations(a1, 1, a3, v11);
            yyerror(a1 + 48, a4);
            return 2;
          }

          v16 = (v15 + 64);
          v15 = *(v15 + 64);
          v14 = v34;
          if (!v15)
          {
            break;
          }
        }

        else
        {
LABEL_45:
          v15 = *(v15 + 64);
          *v16 = v15;
          if (!v15)
          {
            break;
          }
        }
      }
    }

    bzero(v50, 0x288uLL);
    v35 = (v14 + 8);
    v36 = yyr2[*(v14 + 4)];
    v37 = yyresolveStates(*(v14 + 8), v36, a3, a4);
    if (v37)
    {
      v10 = v37;
      if (!v36)
      {
LABEL_56:
        *v13 = 0;
        return v10;
      }

      v38 = v36 + 1;
      do
      {
        v39 = *v35;
        yydestroyGLRState(*v35);
        v35 = (v39 + 8);
        --v38;
      }

      while (v38 > 1);
    }

    else
    {
      v40 = *v35;
      v52 = *v35;
      if (!v36)
      {
        v51[3] = *(v40 + 48);
      }

      v41 = *(a3 + 228);
      v49 = *(a3 + 248);
      v42 = *(a3 + 232);
      v47 = *(a3 + 256);
      v48 = v42;
      *(a3 + 228) = *(v14 + 16);
      v43 = *(v14 + 40);
      *(a3 + 232) = *(v14 + 24);
      *(a3 + 248) = v43;
      *(a3 + 256) = *(v14 + 48);
      v10 = yyuserAction(*(v14 + 4), v36, v51, &v45, (a1 + 48), a3, a4);
      *(a3 + 228) = v41;
      v44 = v47;
      *(a3 + 232) = v48;
      *(a3 + 248) = v49;
      *(a3 + 256) = v44;
    }

    if (!v10)
    {
      *(a1 + 1) = 1;
      *v13 = v45;
      *(a1 + 40) = v46;
      return v10;
    }

    goto LABEL_56;
  }

  return v10;
}

__n128 yyresolveLocations(uint64_t a1, int a2, uint64_t a3, __n128 result)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = __OFSUB__(a2, 1);
  v5 = a2 - 1;
  if (v5 < 0 == v4)
  {
    result.n128_u64[0] = yyresolveLocations(*(a1 + 8), v5, a3, result).n128_u64[0];
    if (!*(a1 + 1))
    {
      bzero(v22, 0x288uLL);
      v9 = *(a1 + 24);
      if (!v9)
      {
        abort();
      }

      v10 = *(v9 + 4);
      v11 = yyr2[v10];
      if (yyr2[v10])
      {
        v12 = (v9 + 8);
        yyresolveLocations(*(v9 + 8), yyr2[v10], a3, v8);
        v13 = v11 + 1;
        v14 = &v22[9 * v11 + 6];
        do
        {
          v15 = *v12;
          *v14 = *(*v12 + 48);
          v14 = (v14 - 72);
          v12 = (v15 + 8);
          --v13;
        }

        while (v13 > 1);
      }

      else
      {
        v23[0] = *(*(v9 + 8) + 48);
      }

      v16 = *(a3 + 228);
      v21 = *(a3 + 248);
      v19 = *(a3 + 256);
      v20 = *(a3 + 232);
      *(a3 + 228) = *(v9 + 16);
      v17 = *(v9 + 24);
      *(a3 + 248) = *(v9 + 40);
      *(a3 + 232) = v17;
      if (v11)
      {
        *&v18 = v24;
        *(&v18 + 1) = *(v23 + 9 * v11 + 1);
      }

      else
      {
        *&v18 = *(&v23[0] + 1);
        *(&v18 + 1) = *(&v23[0] + 1);
      }

      *(a1 + 48) = v18;
      *(a3 + 228) = v16;
      result = v19;
      *(a3 + 232) = v20;
      *(a3 + 248) = v21;
      *(a3 + 256) = v19;
    }
  }

  return result;
}

uint64_t BitSetNewWithAllocator(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *), uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = ((a1 >> 3) & 0x1FFFFFFC) + 4;
  v11 = a3(a2, 48, "Bit Set");
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = v9;
  *(v11 + 36) = v10;
  *(v11 + 40) = a3(a2, v10, "Bit Set (packed bits)");

  return BitSetSetRangeEqualsInternal(v11, 0, v9, 0);
}

void *glpMallocAlloc_0(int a1, size_t size)
{
  result = malloc_type_malloc(size, 0xCA0EF1E7uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpMallocRealloc_0(int a1, void *ptr, size_t size)
{
  result = malloc_type_realloc(ptr, size, 0x352A3853uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

uint64_t BitSetSetRangeEqualsInternal(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a2 < a3)
  {
    v6 = -1 << a2;
    v7 = 0xFFFFFFFF >> -a3;
    v8 = a2 >> 5;
    v9 = ~(a2 >> 5) + ((a3 - 1) >> 5);
    if (v9 < 0)
    {
      v14 = v7 & v6;
      v15 = *(a1 + 40);
      if (a4)
      {
        v16 = *(v15 + 4 * v8) | v14;
      }

      else
      {
        v16 = *(v15 + 4 * v8) & ~v14;
      }

      *(v15 + 4 * v8) = v16;
    }

    else
    {
      v10 = (a3 - 1) >> 5;
      if (a4)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }

      memset((*(a1 + 40) + 4 * v8 + 4), v11, (4 * v9));
      v12 = *(a1 + 40);
      if (a4)
      {
        *(v12 + 4 * v8) |= v6;
        v13 = *(v12 + 4 * v10) | v7;
      }

      else
      {
        *(v12 + 4 * v8) &= ~v6;
        v13 = *(v12 + 4 * v10) & ~v7;
      }

      *(v12 + 4 * v10) = v13;
    }
  }

  return a1;
}

uint64_t BitSetClone(uint64_t a1)
{
  v2 = BitSetNewWithAllocator(*(a1 + 32), *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));

  return BitSetCopyEquals(v2, a1);
}

uint64_t BitSetCloneWithAllocator(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *), uint64_t a4, uint64_t a5)
{
  v6 = BitSetNewWithAllocator(*(a1 + 32), a2, a3, a4, a5);

  return BitSetCopyEquals(v6, a1);
}

uint64_t BitSetCopyEquals(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  if (v5 < v4)
  {
    BitSetSetSizeEquals(a1, v4);
    v5 = *(a1 + 32);
    v4 = *(a2 + 32);
  }

  if (v4 < v5)
  {
    BitSetSetSizeEquals(a2, v5);
  }

  v6 = *(a1 + 36);
  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    v8 = *(a2 + 40);
    v9 = *(a1 + 40);
    do
    {
      v10 = *v8++;
      *v9++ = v10;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t BitSetFree(uint64_t *a1)
{
  (a1[3])(*a1, a1[5]);
  v2 = a1[3];
  v3 = *a1;

  return v2(v3, a1);
}

uint64_t BitSetGetEquals(uint64_t a1, unsigned int a2)
{
  v3 = a2 + 1;
  if (*(a1 + 32) < v3)
  {
    a1 = BitSetSetSizeEquals(a1, v3);
  }

  return (*(*(a1 + 40) + 4 * (a2 >> 5)) >> a2) & 1;
}

uint64_t BitSetSetEquals(uint64_t result, unsigned int a2)
{
  v3 = a2 + 1;
  if (*(result + 32) < v3)
  {
    result = BitSetSetSizeEquals(result, v3);
  }

  *(*(result + 40) + 4 * (a2 >> 5)) |= 1 << a2;
  return result;
}

uint64_t BitSetClearEquals(uint64_t result, unsigned int a2)
{
  v3 = a2 + 1;
  if (*(result + 32) < v3)
  {
    result = BitSetSetSizeEquals(result, v3);
  }

  *(*(result + 40) + 4 * (a2 >> 5)) &= ~(1 << a2);
  return result;
}

uint64_t BitSetSetRangeEquals(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v5 = a3;
  if (*(a1 + 32) < a3)
  {
    a1 = BitSetSetSizeEquals(a1, a3);
  }

  return BitSetSetRangeEqualsInternal(a1, a2, v5, a4);
}

uint64_t BitSetSetSizeEquals(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  if (v4 != a2)
  {
    v5 = ((a2 >> 3) & 0x1FFFFFFC) + 4;
    if (v4 < a2)
    {
      *(a1 + 40) = (*(a1 + 16))(*a1, *(a1 + 40), v5, "Bit Set (packed bits, growth)");
      v4 = *(a1 + 32);
    }

    BitSetSetRangeEqualsInternal(a1, v4, a2, 0);
    *(a1 + 32) = a2;
    *(a1 + 36) = v5;
  }

  return a1;
}

uint64_t BitSetNextSetBit(uint64_t a1, int a2)
{
  v2 = (a2 + 1) >> 5;
  v3 = *(a1 + 36) >> 2;
  if (v2 >= v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (a2 + 1) & 0x1F;
  for (i = 32 * v2; ; i += 32)
  {
    v6 = *(*(a1 + 40) + 4 * v2);
    if (v6)
    {
      break;
    }

LABEL_7:
    v4 = 0;
    if (++v2 == v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  while (1)
  {
    if ((v6 >> v4))
    {
      v7 = (i + v4);
      if (v7 < *(a1 + 32))
      {
        return v7;
      }
    }

    if (++v4 == 32)
    {
      goto LABEL_7;
    }
  }
}

uint64_t BitSetPreviousSetBit(uint64_t a1, int a2)
{
  v2 = (a2 - 1) & 0x1F;
  v3 = *(a1 + 40);
  v4 = (a2 - 1) >> 5;
  v5 = 32 * v4;
  while (1)
  {
    v6 = *(v3 + 4 * v4);
    if (v6)
    {
      break;
    }

LABEL_7:
    v5 -= 32;
    v2 = 31;
    v8 = v4-- <= 0;
    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = (v2 + v5);
  while (((v6 >> v2) & 1) == 0)
  {
    result = (result - 1);
    v8 = v2-- <= 0;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t BitSetOr(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 <= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 <= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  result = BitSetClone(v5);
  v7 = *(v4 + 32);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(v4 + 40);
    v10 = *(v5 + 40);
    do
    {
      v11 = v8 >> 5;
      v12 = 1 << v8;
      v13 = *(result + 40);
      if (((*(v10 + 4 * v11) | *(v9 + 4 * v11)) & (1 << v8)) != 0)
      {
        v14 = *(v13 + 4 * v11) | v12;
      }

      else
      {
        v14 = *(v13 + 4 * v11) & ~v12;
      }

      *(v13 + 4 * v11) = v14;
      ++v8;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t BitSetAndEquals(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  if (v5 < v4)
  {
    BitSetSetSizeEquals(a1, v4);
    v5 = *(a1 + 32);
    v4 = *(a2 + 32);
  }

  if (v4 < v5)
  {
    BitSetSetSizeEquals(a2, v5);
  }

  v6 = *(a1 + 36);
  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    v8 = *(a2 + 40);
    v9 = *(a1 + 40);
    do
    {
      v10 = *v8++;
      *v9++ &= v10;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t BitSetAndNotEquals(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  if (v5 < v4)
  {
    BitSetSetSizeEquals(a1, v4);
    v5 = *(a1 + 32);
    v4 = *(a2 + 32);
  }

  if (v4 < v5)
  {
    BitSetSetSizeEquals(a2, v5);
  }

  v6 = *(a1 + 36);
  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    v8 = *(a2 + 40);
    v9 = *(a1 + 40);
    do
    {
      v10 = *v8++;
      *v9++ &= ~v10;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t BitSetOrEquals(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  if (v5 < v4)
  {
    BitSetSetSizeEquals(a1, v4);
    v5 = *(a1 + 32);
    v4 = *(a2 + 32);
  }

  if (v4 < v5)
  {
    BitSetSetSizeEquals(a2, v5);
  }

  v6 = *(a1 + 36);
  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    v8 = *(a2 + 40);
    v9 = *(a1 + 40);
    do
    {
      v10 = *v8++;
      *v9++ |= v10;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t BitSetEqualsTest(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  if (v6 < v5)
  {
    BitSetSetSizeEquals(a1, v5);
    v6 = *(a1 + 32);
    v5 = *(a2 + 32);
  }

  if (v5 < v6)
  {
    BitSetSetSizeEquals(a2, v6);
    v6 = *(a1 + 32);
  }

  if (v6 < 1)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  v10 = xmmword_23A2A5E50;
  v11 = xmmword_23A29C2D0;
  v12.i64[0] = 0x1F0000001FLL;
  v12.i64[1] = 0x1F0000001FLL;
  v13.i64[0] = 0x400000004;
  v13.i64[1] = 0x400000004;
  v14 = vdupq_n_s32(v6 - 1);
  do
  {
    v15 = v10;
    v16 = vcgeq_u32(v14, v11);
    v17 = vmovn_s32(v16);
    v18 = v7 >> 5;
    if (v17.i8[0])
    {
      v10.i32[0] = *(v8 + 4 * v18);
    }

    if (v17.i8[2])
    {
      v10.i32[1] = *(v8 + 4 * v18);
    }

    if (v17.i8[4])
    {
      v10.i32[2] = *(v8 + 4 * v18);
    }

    if (v17.i8[6])
    {
      v10.i32[3] = *(v8 + 4 * v18);
    }

    if (v17.i8[0])
    {
      v2.i32[0] = *(v9 + 4 * v18);
    }

    if (v17.i8[2])
    {
      v2.i32[1] = *(v9 + 4 * v18);
    }

    if (v17.i8[4])
    {
      v2.i32[2] = *(v9 + 4 * v18);
    }

    if (v17.i8[6])
    {
      v2.i32[3] = *(v9 + 4 * v18);
    }

    v10 = vandq_s8(v15, vshlq_u32(vmvnq_s8(veorq_s8(v10, v2)), vnegq_s32(vandq_s8(v11, v12))));
    v7 += 4;
    v11 = vaddq_s32(v11, v13);
  }

  while (((v6 + 3) & 0xFFFFFFFC) != v7);
  v19 = vbslq_s8(v16, v10, v15);
  *v19.i8 = vand_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  return (v19.i32[0] & v19.i32[1]);
}