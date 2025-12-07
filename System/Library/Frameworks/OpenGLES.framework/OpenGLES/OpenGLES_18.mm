uint64_t writeArrayAccess(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(ArrayAccess:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeFieldAccess(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(FieldAccess:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  glpFieldAccessNodeGetField(a2);
  v8 = v7;
  Field = glpFieldAccessNodeGetField(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v8, Field);
}

uint64_t writeUndeterminedCall(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(UndeterminedCall:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeFunctionCall(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(FunctionCall:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  glpFunctionCallNodeGetName(a2);
  v8 = v7;
  v9 = glpFunctionCallNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v8, v9);
}

uint64_t writeSubroutineArrayCall(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(SubroutineArrayCall:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeMethodCall(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(MethodCall:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  glpMethodCallNodeGetName(a2);
  v8 = v7;
  v9 = glpMethodCallNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v8, v9);
}

uint64_t writeConstructorCall(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(ConstructorCall:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writePostincrement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Postincrement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writePostdecrement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Postdecrement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writePreincrement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Preincrement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writePredecrement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Predecrement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeUnaryPlus(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(UnaryPlus:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeNegate(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Negate:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeLogicalNot(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(LogicalNot:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeBitwiseNot(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(BitwiseNot:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeMultiply(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Multiply:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeDivide(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Divide:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeModulo(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Modulo:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeAdd(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Add:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeSubtract(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Subtract:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeShiftLeft(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(ShiftLeft:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeShiftRight(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(ShiftRight:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeLess(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Less:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeLessEqual(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(LessEqual:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeGreater(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Greater:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeGreaterEqual(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(GreaterEqual:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeEqual(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Equal:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeNotEqual(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(NotEqual:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeLogicalAnd(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(LogicalAnd:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeLogicalOr(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(LogicalOr:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeLogicalXor(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(LogicalXor:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeBitwiseAnd(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(BitwiseAnd:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeBitwiseOr(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(BitwiseOr:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeBitwiseXor(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(BitwiseXor:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeIfExpr(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(IfExpr:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeAssign(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(Assign:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeOpAssign(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(OpAssign:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeReadInput(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(ReadInput:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeWriteOutput(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(WriteOutput:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeCommaExpr(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(CommaExpr:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

void *writeParameterDeclaration(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(ParameterDeclaration:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  glpParameterDeclarationNodeGetName(a2);
  v8 = v7;
  Name = glpParameterDeclarationNodeGetName(a2);
  glpStringBufferAppendFormat(a1, "%.*s -> ", v8, Name);
  Extra = glpParameterDeclarationNodeGetExtra(a2);
  glpAppendVariableObjectDescription(a1, Extra);

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t writeFunctionPrototype(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(FunctionPrototype:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  glpFunctionPrototypeNodeGetName(a2);
  v8 = v7;
  Name = glpFunctionPrototypeNodeGetName(a2);
  Extra = glpFunctionPrototypeNodeGetExtra(a2);
  glpStringBufferAppendFormat(a1, "%.*s == %p", v8, Name, Extra);
  if (glpFunctionPrototypeNodeGetExtra(a2) && *(glpFunctionPrototypeNodeGetExtra(a2) + 8))
  {
    glpStringBufferAppendFormat(a1, ";");
    v11 = glpFunctionPrototypeNodeGetExtra(a2);
    glpAppendFlagDescription(a1, *(v11 + 8));
  }

  glpStringBufferAppendFormat(a1, "\n");
  if (glpFunctionPrototypeNodeGetExtra(a2))
  {
    if (a3 != -1)
    {
      v12 = a3 + 1;
      do
      {
        glpStringBufferAppendFormat(a1, "    ");
        --v12;
      }

      while (v12);
    }

    v13 = glpFunctionPrototypeNodeGetExtra(a2);
    glpStringBufferAppendFormat(a1, "  %p\n", *(v13 + 72));
  }

  result = glpFunctionPrototypeNodeGetExtra(a2);
  if (result)
  {
    if (a3 != -1)
    {
      v15 = a3 + 1;
      do
      {
        glpStringBufferAppendFormat(a1, "    ");
        --v15;
      }

      while (v15);
    }

    glpStringBufferAppendFormat(a1, "  ");
    if (glpFunctionPrototypeNodeGetParameterCount(a2))
    {
      v16 = 0;
      do
      {
        v17 = glpFunctionPrototypeNodeGetExtra(a2);
        glpStringBufferAppendFormat(a1, "%p ", *(*(v17 + 80) + 8 * v16++));
      }

      while (v16 < glpFunctionPrototypeNodeGetParameterCount(a2));
    }

    return glpStringBufferAppendFormat(a1, "\n");
  }

  return result;
}

uint64_t writeVariableDeclaration(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(VariableDeclaration:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  glpVariableDeclarationNodeGetName(a2);
  v8 = v7;
  Name = glpVariableDeclarationNodeGetName(a2);
  glpStringBufferAppendFormat(a1, "%.*s -> ", v8, Name);
  Extra = glpVariableDeclarationNodeGetExtra(a2);
  glpAppendVariableObjectDescription(a1, Extra);
  glpStringBufferAppendCString(a1, "\n");
  if (glpVariableDeclarationNodeGetExtra(a2) && *(glpVariableDeclarationNodeGetExtra(a2) + 64))
  {
    if (a3 == -1)
    {
      v12 = 64;
    }

    else
    {
      v11 = a3 + 1;
      v12 = 64;
      do
      {
        glpStringBufferAppendFormat(a1, "    ");
        --v11;
      }

      while (v11);
    }

LABEL_18:
    SaType = glpASTNodeGetSaType(a2);
    v15 = glpVariableDeclarationNodeGetExtra(a2);
    glpAppendValueDescriptionToStringBuffer(a1, SaType, *(v15 + v12));
    glpStringBufferAppendFormat(a1, "\n");
    goto LABEL_19;
  }

  if (glpVariableDeclarationNodeGetExtra(a2) && *(glpVariableDeclarationNodeGetExtra(a2) + 72))
  {
    if (a3 == -1)
    {
      v12 = 72;
    }

    else
    {
      v13 = a3 + 1;
      v12 = 72;
      do
      {
        glpStringBufferAppendFormat(a1, "    ");
        --v13;
      }

      while (v13);
    }

    goto LABEL_18;
  }

LABEL_19:
  result = glpVariableDeclarationNodeGetExtra(a2);
  if (result)
  {
    result = glpVariableDeclarationNodeGetExtra(a2);
    if (*(result + 8))
    {
      if (a3 != -1)
      {
        v17 = a3 + 1;
        do
        {
          glpStringBufferAppendFormat(a1, "    ");
          --v17;
        }

        while (v17);
      }

      v18 = glpVariableDeclarationNodeGetExtra(a2);
      writeLayoutObject(a1, *(v18 + 8));

      return glpStringBufferAppendFormat(a1, "\n");
    }
  }

  return result;
}

uint64_t writeVariableDeclarationGroup(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(VariableDeclarationGroup:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writePrecisionDeclaration(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(PrecisionDeclaration:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeQualifiedDeclaration(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(QualifiedDeclaration:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeQualifiedDeclarationGroup(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(QualifiedDeclarationGroup:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeFunctionDefinition(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(FunctionDefinition:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeQualifiedType(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(QualifiedType:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writePrimitiveType(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(PrimitiveType:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  Type = glpPrimitiveTypeNodeGetType(a2);
  v8 = glpPrimitiveTypeToString(Type);
  return glpStringBufferAppendFormat(a1, "%s", v8);
}

uint64_t writeArrayType(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(ArrayType:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeFieldDeclaration(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(FieldDeclaration:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  glpFieldDeclarationNodeGetName(a2);
  v8 = v7;
  Name = glpFieldDeclarationNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v8, Name);
}

uint64_t writeStructType(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(StructType:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  glpStructTypeNodeGetName(a2);
  v8 = v7;
  Name = glpStructTypeNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v8, Name);
}

void *writeInterfaceBlock(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(InterfaceBlock:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  Extra = glpInterfaceBlockNodeGetExtra(a2);
  if (a3 != -1)
  {
    v7 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v7;
    }

    while (v7);
  }

  BlockName = glpInterfaceBlockNodeGetBlockName(a2);
  glpStringBufferAppendString(a1, BlockName, v9);
  if (!glpInterfaceBlockNodeGetHasInstanceName(a2))
  {
    result = glpStringBufferAppendCString(a1, "\n");
    if (!Extra)
    {
      return result;
    }

    goto LABEL_10;
  }

  glpStringBufferAppendCString(a1, " ");
  InstanceName = glpInterfaceBlockNodeGetInstanceName(a2);
  glpStringBufferAppendString(a1, InstanceName, v11);
  if (Extra)
  {
    if (glpInterfaceBlockNodeGetDimension(a2))
    {
      ElementCount = glpBankTypeGetElementCount(*(Extra + 64));
      glpStringBufferAppendFormat(a1, "[%u]", ElementCount);
    }

    glpStringBufferAppendCString(a1, "\n");
LABEL_10:
    result = glpInterfaceBlockObjectGetVariableObjectCount(Extra);
    if (result)
    {
      v14 = 0;
      v15 = result;
      do
      {
        if (a3 != -1)
        {
          v16 = a3 + 1;
          do
          {
            glpStringBufferAppendFormat(a1, "    ");
            --v16;
          }

          while (v16);
        }

        glpStringBufferAppendCString(a1, "  -> ");
        glpAppendVariableObjectDescription(a1, *(*(Extra + 72) + 8 * v14));
        result = glpStringBufferAppendCString(a1, "\n");
        ++v14;
      }

      while (v14 != v15);
    }

    return result;
  }

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t writeLayoutType(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(LayoutType:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

void *writeKeywordQualifier(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(KeywordQualifier:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  Qualifier = glpKeywordQualifierNodeGetQualifier(a2);
  v8 = glpQualifierName(Qualifier);

  return glpStringBufferAppendCString(a1, v8);
}

uint64_t writeLayoutQualifier(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(LayoutQualifier:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeSubroutineTypeList(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(SubroutineTypeList:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeQualifierList(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(QualifierList:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeGlobalTypeQualifier(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(GlobalTypeQualifier:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  result = glpGlobalTypeQualifierNodeGetLayout(a2);
  if (result)
  {
    if (a3 != -1)
    {
      v7 = a3 + 1;
      do
      {
        glpStringBufferAppendFormat(a1, "    ");
        --v7;
      }

      while (v7);
    }

    Layout = glpGlobalTypeQualifierNodeGetLayout(a2);
    writeLayoutObject(a1, Layout);

    return glpStringBufferAppendFormat(a1, "\n");
  }

  return result;
}

uint64_t writeLayoutPair(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(LayoutPair:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  Identifier = glpLayoutPairNodeGetIdentifier(a2);
  glpStringBufferAppendString(a1, Identifier, v8);
  result = glpLayoutPairNodeGetValueKind(a2);
  if (result > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_12;
      }

      glpLayoutPairNodeGetString(a2);
      glpLayoutPairNodeGetString(a2);
      return glpStringBufferAppendFormat(a1, "=%.*s");
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      glpLayoutPairNodeGetValue(a2);
      return glpStringBufferAppendFormat(a1, "=%d");
    }

LABEL_12:
    abort();
  }

  return result;
}

uint64_t writeExpressionStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(ExpressionStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

void *writeBlock(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(Block:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  if (glpBlockNodeGetNeedsNewScope(a2))
  {
    v7 = "--new scope--\n";
  }

  else
  {
    v7 = "no new scope\n";
  }

  return glpStringBufferAppendCString(a1, v7);
}

uint64_t writeIfStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(IfStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeLoopStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(LoopStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeSwitchStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(SwitchStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeCaseStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(CaseStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeDefaultStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(DefaultStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeBreakStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(BreakStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeContinueStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(ContinueStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeDiscardStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(DiscardStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeReturnStatement(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(ReturnStatement:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeTopLevel(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(TopLevel:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeAvailabilityDeclaration(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(AvailabilityDeclaration:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

void *writeRawCall(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(RawCall:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  v7 = glpRawCallNodeGetName(a2);
  glpStringBufferAppendString(a1, v7, v8);

  return glpStringBufferAppendCString(a1, "\n");
}

void *writeSubroutineRawCall(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(SubroutineRawCall:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  v7 = glpSubroutineRawCallNodeGetExtra(a2);
  glpStringBufferAppendString(a1, *v7, v7[1]);

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t writeOffset(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(Offset:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  v6 = a3 + 1;
  Swizzle = glpOffsetNodeGetSwizzle(a2);
  if (Swizzle)
  {
    v17 = 0;
    v16 = 0;
    v8 = Swizzle & 7;
    if ((Swizzle & 7) != 0)
    {
      v9 = &v16;
      v10 = 3;
      v11 = Swizzle & 7;
      do
      {
        *v9 = aXyzw[(Swizzle >> v10) & 3];
        v9 = (v9 + 1);
        v10 += 2;
        --v11;
      }

      while (v11);
    }

    else
    {
      v8 = 0;
    }

    *(&v16 + v8) = 0;
    if (a3 != -1)
    {
      v12 = a3 + 1;
      do
      {
        glpStringBufferAppendFormat(a1, "    ");
        --v12;
      }

      while (v12);
    }

    glpStringBufferAppendFormat(a1, ".%s\n", &v16);
  }

  result = glpOffsetNodeGetPreSwizzlePrimitiveType(a2);
  if (result)
  {
    v14 = result;
    if (a3 != -1)
    {
      do
      {
        glpStringBufferAppendFormat(a1, "    ");
        --v6;
      }

      while (v6);
    }

    v15 = glpPrimitiveTypeToString(v14);
    return glpStringBufferAppendFormat(a1, "pre-swizzle type: %s\n", v15);
  }

  return result;
}

void *writeLValue(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(LValue:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  glpLValueNodeGetVariableName(a2);
  v8 = v7;
  VariableName = glpLValueNodeGetVariableName(a2);
  glpStringBufferAppendFormat(a1, "%.*s -> ", v8, VariableName);
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  glpAppendVariableObjectDescription(a1, VariableExtra);

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t writeRValue(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(RValue:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writeIBPartialDeref(uint64_t *a1, uint64_t a2)
{
  glpStringBufferAppendFormat(a1, "(IBPartialDeref:");
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n");
}

uint64_t writePPStreamOp(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(PPStreamOp:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 == -1)
  {
    ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
    v11 = glpPrimitiveTypeToString(ReturnPrimitiveType);
    glpStringBufferAppendFormat(a1, "returnPrimitiveType: %s\n", v11);
  }

  else
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
    v7 = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
    v8 = glpPrimitiveTypeToString(v7);
    glpStringBufferAppendFormat(a1, "returnPrimitiveType: %s\n", v8);
    v9 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v9;
    }

    while (v9);
  }

  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  glpStringBufferAppendFormat(a1, "opcode: %s\n", (&ppstreamOpString)[Opcode]);
  if (a3 == -1)
  {
    OpPrimitiveType = glpPPStreamOpNodeGetOpPrimitiveType(a2);
    v18 = glpPrimitiveTypeToString(OpPrimitiveType);
    glpStringBufferAppendFormat(a1, "opPrimitiveType: %s\n", v18);
  }

  else
  {
    v13 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v13;
    }

    while (v13);
    v14 = glpPPStreamOpNodeGetOpPrimitiveType(a2);
    v15 = glpPrimitiveTypeToString(v14);
    glpStringBufferAppendFormat(a1, "opPrimitiveType: %s\n", v15);
    v16 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v16;
    }

    while (v16);
  }

  HasSrctex = glpPPStreamOpNodeGetHasSrctex(a2);
  glpStringBufferAppendFormat(a1, "has_srctex: %d\n", HasSrctex);
  if (a3 != -1)
  {
    v20 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v20;
    }

    while (v20);
  }

  HasOffset = glpPPStreamOpNodeGetHasOffset(a2);
  return glpStringBufferAppendFormat(a1, "has_offset: %d\n", HasOffset);
}

void *writeSubroutineUniform(uint64_t *a1, uint64_t a2, int a3)
{
  glpStringBufferAppendFormat(a1, "(SubroutineUniform:");
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n");
  if (a3 != -1)
  {
    v6 = a3 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ");
      --v6;
    }

    while (v6);
  }

  Extra = glpSubroutineUniformNodeGetExtra(a2);
  glpStringBufferAppendString(a1, *Extra, Extra[1]);

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t *writeSAInfo(uint64_t *a1, uint64_t a2)
{
  SaType = glpASTNodeGetSaType(a2);
  glpDumpTypeToStringBuffer(a1, SaType);
  result = glpASTNodeGetSaFlags(a2);
  if (result)
  {
    glpStringBufferAppendFormat(a1, ";");
    SaFlags = glpASTNodeGetSaFlags(a2);

    return glpAppendFlagDescription(a1, SaFlags);
  }

  return result;
}

uint64_t writeLayoutObject(uint64_t *a1, uint64_t **a2)
{
  result = glpStringBufferAppendFormat(a1, "layout:");
  v5 = *a2;
  if (*a2)
  {
    do
    {
      v6 = *v5;
      v7 = glpLayoutQualifierToString(*(v5 + 2));
      result = glpStringBufferAppendFormat(a1, "%s ", v7);
      if (*(v5 + 3) == 1)
      {
        result = glpStringBufferAppendFormat(a1, "= %d ", *(v5 + 4));
      }

      v5 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t phase2AddDef(uint64_t *a1, uint64_t a2)
{
  if (glpIsFunctionDefinitionNode(a2))
  {
    Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
    Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
    v6 = glpPointerHashGet(a1[16], Extra);
    v7 = Prototype;
LABEL_3:
    glpFunctionPrototypeNodeSetExtra(v7, v6);
    if (glpPointerHashGet(a1[22], v6))
    {
      return 1;
    }

    v9 = a1[22];
    goto LABEL_5;
  }

  if (glpIsVariableDeclarationNode(a2))
  {
    v11 = glpVariableDeclarationNodeGetExtra(a2);
    v12 = glpPointerHashGet(a1[15], v11);
    glpVariableDeclarationNodeSetExtra(a2, v12);
    if (glpPointerHashGet(a1[21], v12))
    {
      return 1;
    }

    glpPointerHashPut(a1[21], v12, v12, v13);
    v10 = (*(v12 + 51) & 0x60) == 0;
    goto LABEL_10;
  }

  if (!glpIsInterfaceBlockNode(a2))
  {
    if (glpIsSubroutineUniformNode(a2))
    {
      v20 = glpSubroutineUniformNodeGetExtra(a2);
      if (glpStringHashGet(a1[20], *v20, *(v20 + 8)))
      {
        return 1;
      }

      glpStringHashPut(a1[20], *v20, *(v20 + 8), v21, v20);
      goto LABEL_6;
    }

    v22 = glpFunctionPrototypeNodeGetExtra(a2);
    v6 = glpPointerHashGet(a1[16], v22);
    v7 = a2;
    goto LABEL_3;
  }

  v6 = glpInterfaceBlockNodeGetExtra(a2);
  if (glpPointerHashGet(a1[23], v6))
  {
    return 1;
  }

  v9 = a1[23];
LABEL_5:
  glpPointerHashPut(v9, v6, v6, v8);
LABEL_6:
  v10 = 1;
LABEL_10:
  v14 = phase2Process(a1, a2);
  if (v14 == -1)
  {
    return 0;
  }

  v15 = v14;
  v16 = *a1;
  v17 = a1[19];
  if (v10)
  {
    DefCount = glpTopLevelNodeGetDefCount(v17);
  }

  else
  {
    DefCount = 0;
  }

  glpTopLevelNodeInsertDef(v16, v17, v15, DefCount);
  return 1;
}

uint64_t phase2Process(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (!glpASTNodeGetChildCount(a2))
    {
LABEL_6:
      switch(glpASTNodeGetKind(v2))
      {
        case 0u:
        case 1u:
        case 2u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x14u:
        case 0x15u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x19u:
        case 0x1Au:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
        case 0x20u:
        case 0x21u:
        case 0x22u:
        case 0x23u:
        case 0x24u:
        case 0x25u:
        case 0x26u:
        case 0x27u:
        case 0x28u:
        case 0x29u:
        case 0x2Au:
        case 0x2Bu:
        case 0x2Fu:
        case 0x30u:
        case 0x31u:
        case 0x32u:
        case 0x33u:
        case 0x34u:
        case 0x35u:
        case 0x36u:
        case 0x37u:
        case 0x38u:
        case 0x3Au:
        case 0x3Bu:
        case 0x3Cu:
        case 0x3Du:
        case 0x3Eu:
        case 0x3Fu:
        case 0x40u:
        case 0x41u:
        case 0x42u:
        case 0x43u:
        case 0x44u:
        case 0x45u:
        case 0x46u:
        case 0x47u:
        case 0x48u:
        case 0x49u:
        case 0x4Au:
        case 0x4Bu:
        case 0x4Cu:
        case 0x4Du:
        case 0x50u:
        case 0x52u:
        case 0x53u:
        case 0x54u:
          return v2;
        case 3u:
          phase2ProcessConstant(a1, v2);
          return v2;
        case 0x2Cu:
          phase2ProcessParameterDeclaration(a1, v2);
          return v2;
        case 0x2Du:
          phase2ProcessFunctionPrototype(a1, v2);
          return v2;
        case 0x2Eu:
          phase2ProcessVariableDeclaration(a1, v2);
          return v2;
        case 0x39u:
          phase2ProcessInterfaceBlock(a1, v2);
          return v2;
        case 0x4Eu:

          return phase2ProcessRawCall(a1, v2);
        case 0x4Fu:

          return phase2ProcessSubroutineRawCall(a1, v2);
        case 0x51u:

          return phase2ProcessLValue(a1, v2);
        case 0x55u:

          return phase2ProcessSubroutineUniform(a1, v2);
        default:
          abort();
      }
    }

    v4 = 0;
    while (1)
    {
      Child = glpASTNodeGetChild(v2, v4);
      v6 = phase2Process(a1, Child);
      if (v6 == -1)
      {
        return -1;
      }

      glpASTNodeSetChild(v2, v4++, v6);
      if (v4 >= glpASTNodeGetChildCount(v2))
      {
        goto LABEL_6;
      }
    }
  }

  return v2;
}

uint64_t phase2ProcessConstant(uint64_t a1, uint64_t a2)
{
  SaFlags = glpASTNodeGetSaFlags(a2);
  Type = glpConstantNodeGetType(a2);
  Value = glpConstantNodeGetValue(a2);
  v7 = glpMergeRemapValue(a1, SaFlags, Type, Value);
  glpConstantNodeSetValue(a2, v7);
  return a2;
}

uint64_t phase2ProcessParameterDeclaration(uint64_t a1, uint64_t a2)
{
  Extra = glpParameterDeclarationNodeGetExtra(a2);
  v5 = glpPointerHashGet(*(a1 + 120), Extra);
  glpParameterDeclarationNodeSetExtra(a2, v5);
  lazyPrepareVariableObject(a1, v5);
  glpASTNodeSetSaType(a2, *v5);
  return a2;
}

uint64_t phase2ProcessFunctionPrototype(uint64_t a1, uint64_t a2)
{
  Extra = glpFunctionPrototypeNodeGetExtra(a2);
  v5 = glpPointerHashGet(*(a1 + 128), Extra);
  glpFunctionPrototypeNodeSetExtra(a2, v5);
  return a2;
}

uint64_t phase2ProcessVariableDeclaration(uint64_t a1, uint64_t a2)
{
  Extra = glpVariableDeclarationNodeGetExtra(a2);
  lazyPrepareVariableObject(a1, Extra);
  glpASTNodeSetSaType(a2, *Extra);
  return a2;
}

uint64_t phase2ProcessInterfaceBlock(uint64_t a1, uint64_t a2)
{
  Extra = glpInterfaceBlockNodeGetExtra(a2);
  v6 = *(**(Extra + 72) + 48);
  if ((v6 & 0x20000000) != 0)
  {
    v7 = 224;
  }

  else if ((v6 & 0x40000000) != 0)
  {
    v7 = 232;
  }

  else
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_8;
    }

    v7 = 240;
  }

  glpStringHashPut(*(a1 + v7), *Extra, *(Extra + 8), v5, Extra);
LABEL_8:
  VariableObjectCount = glpInterfaceBlockObjectGetVariableObjectCount(Extra);
  if (VariableObjectCount)
  {
    v9 = 0;
    v10 = 8 * VariableObjectCount;
    do
    {
      lazyPrepareVariableObject(a1, *(*(Extra + 72) + v9));
      v9 += 8;
    }

    while (v10 != v9);
  }

  return a2;
}

uint64_t phase2ProcessRawCall(uint64_t a1, uint64_t a2)
{
  v4 = glpRawCallNodeGetExtra(a2);
  v5 = glpPointerHashGet(*(a1 + 128), v4);
  if (!v5)
  {
    v5 = glpStringHashGet(*(a1 + 48), *(v4 + 40), *(v4 + 48));
    if (v5)
    {
      glpPointerHashPut(*(a1 + 128), v4, v5, v6);
    }
  }

  glpRawCallNodeSetExtra(a2, v5);
  v7 = glpPointerHashGet(*(a1 + 96), v5);
  if (!v7)
  {
    v11 = *(a1 + 8);
    glpLanguageToString(*(a1 + 24));
    glpLogMessage(v11, 0, &v14, "No definition of %.*s in %s shader");
    return -1;
  }

  if (*(v5 + 128))
  {
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    if (v9 >= 0x12)
    {
      v10 = 18;
    }

    else
    {
      v10 = v9;
    }

    strncmp("$SubroutineStatic$", v8, v10);
    glpLogMessage(*(a1 + 8), 0, &v14, "Recursive function call to %.*s");
    return -1;
  }

  *(v5 + 128) = 1;
  v12 = phase2AddDef(a1, v7);
  *(v5 + 128) = 0;
  if (v12)
  {
    return a2;
  }

  else
  {
    return -1;
  }
}

uint64_t phase2ProcessSubroutineRawCall(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = glpSubroutineRawCallNodeGetExtra(a2);
  v5 = glpPointerHashGet(a1[14], v4);
  if (!v5)
  {
    v18 = a1[1];
    glpLanguageToString(*(a1 + 6));
    v21 = "-1";
    v22 = 0xEDA00000002;
    v23 = 0xFFFFFFFFLL;
    glpLogMessage(v18, 0, &v21, "No definition of subroutine uniform %.*s in %s shader");
    return -1;
  }

  v6 = v5;
  ElementType = *(v4 + 16);
  if (glpTypeGetKind(ElementType) == 2)
  {
    ElementType = glpArrayTypeGetElementType(ElementType);
  }

  v8 = *(a1 + 71);
  if (v8)
  {
    v9 = a1[36];
    v10 = *(a1 + 71);
    while (ElementType != *v9)
    {
      ++v9;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    v19 = a1[1];
    glpLanguageToString(*(a1 + 6));
    v21 = "-1";
    v22 = 0xEDA00000002;
    v23 = 0xFFFFFFFFLL;
    glpLogMessage(v19, 0, &v21, "Potentially recursive subroutine call through subroutine uniform %.*s in %s shader");
    return -1;
  }

LABEL_8:
  v11 = v8 + 1;
  v12 = *(a1 + 70);
  if (v8 + 1 <= v12)
  {
    v16 = a1[36];
    v17 = *(a1 + 71);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = *a1;
    v16 = (*(*a1 + 8))(**a1, 8 * v14, "Vector Storage (GLPType *, growth)");
    memcpy(v16, a1[36], 8 * *(a1 + 71));
    (*(v15 + 24))(*v15, a1[36]);
    *(a1 + 70) = v14;
    a1[36] = v16;
    v17 = *(a1 + 71);
  }

  memmove(&v16[8 * v8 + 8], &v16[8 * v8], 8 * (v17 - v8));
  *(a1[36] + 8 * v8) = ElementType;
  ++*(a1 + 71);
  if (!phase2AddDef(a1, v6))
  {
    return -1;
  }

  memmove((a1[36] + 8 * v8), (a1[36] + 8 * v11), 8 * (*(a1 + 71) - v11));
  --*(a1 + 71);
  return v2;
}

uint64_t phase2ProcessLValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v59 = *MEMORY[0x277D85DE8];
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  v5 = VariableExtra;
  if (*(a1 + 32))
  {
    v6 = *(VariableExtra + 8);
    if (v6)
    {
      if (glpLayoutObjectFind(v6, 82))
      {
        v7 = a1[1];
        v8 = *(v5 + 32);
        v9 = *(v5 + 40);
        v57.n128_u64[0] = "-1";
        v57.n128_u64[1] = 0xEDA00000002;
        v58 = 0xFFFFFFFFLL;
        glpLogMessage(v7, 0, &v57, "Built-in variable '%.*s' must be redeclared before use, with separate shader objects.", v9, v8);
        return -1;
      }
    }
  }

  v10 = glpPointerHashGet(a1[15], v5);
  if (v10)
  {
    v11 = v10;
    glpLValueNodeSetVariableExtra(v2, v10);
    v12 = glpPointerHashGet(a1[11], v11);
    if (v12)
    {
      v5 = v11;
      if (!phase2AddDef(a1, v12))
      {
        return -1;
      }
    }

    else
    {
      v5 = v11;
    }
  }

  lazyPrepareVariableObject(a1, v5);
  if (*(v5 + 120))
  {
    Offset = glpDerefNodeGetOffset(v2);
    if (Offset && (v14 = Offset, (OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset)) != 0) && (v16 = OffsetExpr, glpIsConstantNode(OffsetExpr)))
    {
      Value = glpConstantNodeGetValue(v16);
      SaType = glpASTNodeGetSaType(v16);
      AsSize = glpValueGetAsSize(SaType, Value);
      if (glpOffsetNodeGetPreSwizzlePrimitiveType(v14))
      {
        PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(v14);
        PrimitiveType = glpGetPrimitiveType(PreSwizzlePrimitiveType);
      }

      else
      {
        PrimitiveType = glpASTNodeGetSaType(v2);
      }

      glpABIGetTypeSize(0, PrimitiveType, 0);
      glpTypeSizeGetSize();
      v28 = v27 + AsSize;
      BitSetSetRangeEquals(*(v5 + 120), AsSize, v28, 1);
      v29 = *(v5 + 128);
      if (v29 <= v28)
      {
        v29 = v28;
      }

      *(v5 + 128) = v29;
    }

    else
    {
      ElementType = *v5;
      if (glpTypeGetKind(*v5) == 3)
      {
        ElementType = glpBankTypeGetElementType(ElementType);
      }

      glpABIGetTypeSize(0, ElementType, 0);
      glpTypeSizeGetSize();
      MEMORY[0x28223BE20](v23);
      v25 = (&v57 - v24);
      bzero(&v57 - v24, v26);
      glpTypeGetAppleVec4Types(ElementType, v25, 1, 0, 0, 0, *(v5 + 120), 0, 0);
      *(v5 + 128) = BitSetLastSetBit(*(v5 + 120)) + 1;
    }
  }

  v30 = glpDerefNodeGetOffset(v2);
  if (v30)
  {
    v31 = v30;
    BankIndex = glpOffsetNodeGetBankIndex(v30);
    glpTypeGetKind(*v5);
    if (BankIndex)
    {
      Bank = glpBankTypeGetBank(*v5);
      if ((Bank - 1) < 2 || Bank == 4)
      {
        glpBankTypeGetElementCount(*v5);
        v34 = glpBankTypeGetElementType(*v5);
        glpABIGetTypeSize(0, v34, 0);
        glpTypeSizeGetSize();
        v36 = v35;
        v37 = glpOffsetNodeGetOffsetExpr(v31);
        if (!v37)
        {
          IntConstantNode = makeIntConstantNode(a1, 0);
          v37 = phase2Process(a1, IntConstantNode);
        }

        v39 = makeIntConstantNode(a1, v36);
        v40 = phase2Process(a1, v39);
        v41 = glpGetPrimitiveType(5u);
        glpASTNodeSetSaType(v40, v41);
        glpASTNodeSetSaFlags(v40, 96);
        v42 = *a1;
        v57.n128_u64[0] = "-1";
        v57.n128_u64[1] = 0xEDA00000002;
        v58 = 0xFFFFFFFFLL;
        glpMakePPStreamOpNode(v42, &v57, 5, 34, 5, 0, 0);
        v44 = v43;
        glpCallNodeAddArg(*a1, v43, BankIndex);
        glpCallNodeAddArg(*a1, v44, v40);
        v45 = glpGetPrimitiveType(5u);
        glpASTNodeSetSaType(v44, v45);
        SaFlags = glpASTNodeGetSaFlags(BankIndex);
        v47 = glpASTNodeGetSaFlags(v40);
        glpASTNodeSetSaFlags(v44, v47 & SaFlags);
        v48 = glpConstantFold(*a1, a1[31], v44);
        v49 = *a1;
        v57.n128_u64[0] = "-1";
        v57.n128_u64[1] = 0xEDA00000002;
        v58 = 0xFFFFFFFFLL;
        glpMakePPStreamOpNode(v49, &v57, 5, 31, 5, 0, 0);
        v51 = v50;
        glpCallNodeAddArg(*a1, v50, v48);
        glpCallNodeAddArg(*a1, v51, v37);
        v52 = glpGetPrimitiveType(5u);
        glpASTNodeSetSaType(v51, v52);
        v53 = glpASTNodeGetSaFlags(v48);
        v54 = glpASTNodeGetSaFlags(v37);
        glpASTNodeSetSaFlags(v51, v54 & v53);
        v55 = glpConstantFold(*a1, a1[31], v51);
        glpOffsetNodeSetOffsetExpr(v31, v55);
        glpOffsetNodeSetBankIndex(v31, 0);
      }

      else if (!Bank)
      {
        abort();
      }
    }
  }

  return v2;
}

uint64_t phase2ProcessSubroutineUniform(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Extra = glpSubroutineUniformNodeGetExtra(a2);
  ElementType = *(Extra + 16);
  if (glpTypeGetKind(ElementType) == 2)
  {
    ElementType = glpArrayTypeGetElementType(ElementType);
  }

  v6 = glpPointerHashGet(*(a1 + 144), ElementType);
  if (v6 && (v7 = v6, *(v6 + 4)))
  {
    v8 = 0;
    while (phase2AddDef(a1, *(*(v7 + 8) + 8 * v8)))
    {
      if (++v8 >= *(v7 + 4))
      {
        return v2;
      }
    }
  }

  else
  {
    v9 = *(a1 + 8);
    v10 = *Extra;
    v11 = *(Extra + 8);
    v13[0] = "-1";
    v13[1] = 0xEDA00000002;
    v13[2] = 0xFFFFFFFFLL;
    glpLogMessage(v9, 0, v13, "Subroutine uniform '%.*s' has no possible implementations", v11, v10);
  }

  return -1;
}

uint64_t lazyPrepareVariableObject(uint64_t result, uint64_t a2)
{
  if (*(a2 + 128) || *(a2 + 120))
  {
    return result;
  }

  v3 = result;
  if (!*(result + 20) && *(result + 24) == 3 && (*(a2 + 51) & 0x20) != 0 && glpTypeGetKind(*a2) == 3)
  {
    v4 = *v3;
    ElementType = glpBankTypeGetElementType(*a2);
    *a2 = glpMakeBankType(v4, 1, ElementType, *(v3 + 28));
  }

  Kind = glpTypeGetKind(*a2);
  v7 = *a2;
  if (Kind == 3)
  {
    v8 = glpBankTypeGetElementType(v7);
    if (!glpTypeIsSized(v8))
    {
      v10 = *v3;
      v11 = glpArrayTypeGetElementType(v8);
      ArrayType = glpMakeArrayType(v10, v11, *(a2 + 100), -1);
      v13 = *v3;
      Bank = glpBankTypeGetBank(*a2);
      ElementCount = glpBankTypeGetElementCount(*a2);
      BankType = glpMakeBankType(v13, Bank, ArrayType, ElementCount);
LABEL_13:
      *a2 = BankType;
    }
  }

  else if (!glpTypeIsSized(v7))
  {
    v17 = *v3;
    v18 = glpArrayTypeGetElementType(*a2);
    BankType = glpMakeArrayType(v17, v18, *(a2 + 96), -1);
    goto LABEL_13;
  }

  v19 = *(a2 + 48);
  if (*(v3 + 24) == 4 && (*(a2 + 48) & 0x60000000) == 0x60000000)
  {
    glpStringHashPut(*(v3 + 192), *(a2 + 16), *(a2 + 24), v9, a2);
    goto LABEL_17;
  }

  if ((v19 & 0x20000000) != 0)
  {
    v24 = *(v3 + 192);
    v25 = *(a2 + 16);
    v26 = *(a2 + 24);
    goto LABEL_25;
  }

  if ((v19 & 0x40000000) != 0)
  {
LABEL_17:
    glpStringHashPut(*(v3 + 200), *(a2 + 16), *(a2 + 24), v9, a2);
    v20 = *(v3 + 216);
    v21 = apiName(*v3, a2);
    v23 = v22;
    v24 = v20;
    v25 = v21;
    v26 = v23;
LABEL_25:
    glpStringHashPut(v24, v25, v26, v9, a2);
    v27 = 0;
    goto LABEL_26;
  }

  if ((v19 & 0x100000000) != 0)
  {
    glpStringHashPut(*(v3 + 208), *(a2 + 16), *(a2 + 24), v9, a2);
LABEL_34:
    v27 = *(a2 + 88) != 0;
    goto LABEL_26;
  }

  if (glpTypeGetKind(*a2) == 2 || glpTypeGetKind(*a2) == 1)
  {
    goto LABEL_34;
  }

  v27 = 1;
LABEL_26:
  v28 = *a2;
  if (glpTypeGetKind(*a2) == 3)
  {
    v28 = glpBankTypeGetElementType(v28);
  }

  if (v27)
  {
    glpABIGetTypeSize(0, v28, 0);
    glpTypeSizeGetSize();
  }

  else
  {
    v30 = *v3;
    glpABIGetTypeSize(0, v28, 0);
    glpTypeSizeGetSize();
    v32 = BitSetNewWithAllocator(v31, *v30, *(v30 + 8), *(v30 + 16), *(v30 + 24));
    v29 = 0;
    *(a2 + 120) = v32;
  }

  *(a2 + 128) = v29;
  *(a2 + 64) = glpMergeRemapValue(v3, *(a2 + 48), *a2, *(a2 + 64));
  result = glpMergeRemapValue(v3, *(a2 + 48), *a2, *(a2 + 72));
  *(a2 + 72) = result;
  return result;
}

const char *apiName(void *a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (!v3)
  {
    return *(a2 + 32);
  }

  if (glpInterfaceBlockObjectGetVariableObjectCount(*(a2 + 80)))
  {
    v5 = 0;
    do
    {
      if (*(*(v3 + 72) + 8 * v5) == a2)
      {
        break;
      }

      ++v5;
    }

    while (v5 < glpInterfaceBlockObjectGetVariableObjectCount(v3));
  }

  else
  {
    LODWORD(v5) = 0;
  }

  ElementType = *(v3 + 64);
  if (glpTypeGetKind(ElementType) == 3)
  {
    ElementType = glpBankTypeGetElementType(ElementType);
  }

  FieldName = glpStructTypeGetFieldName(ElementType, v5);
  v9 = v8;
  if (*(v3 + 32))
  {
    StringBuffer = glpMakeStringBuffer(a1);
    glpStringBufferAppendFormat(StringBuffer, "%.*s.%.*s", *(v3 + 8), *v3, v9, FieldName);
    return glpStringBufferGetString(StringBuffer);
  }

  return FieldName;
}

uint64_t makeIntConstantNode(uint64_t *a1, uint64_t a2)
{
  PrimitiveType = glpGetPrimitiveType(5u);
  v5 = *a1;
  MutableValue = glpMakeMutableValue(v5, PrimitiveType, 1, v6, v7, v8, v9, v10, a2);
  v15.n128_u64[0] = "-1";
  v15.n128_u64[1] = 0xEDA00000002;
  v16 = 0xFFFFFFFFLL;
  glpMakeConstantNode(v5, &v15, PrimitiveType, MutableValue);
  v13 = v12;
  glpASTNodeSetSaType(v12, PrimitiveType);
  glpASTNodeSetSaFlags(v13, 96);
  return v13;
}

uint64_t checkBarrier(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    return 1;
  }

  Body = a1;
  while (1)
  {
    Kind = glpASTNodeGetKind(Body);
    if (Kind >= 68)
    {
      break;
    }

    if (Kind == 51)
    {
      Prototype = glpFunctionDefinitionNodeGetPrototype(Body);
      result = checkBarrier(Prototype, a2, a3);
      if (!result)
      {
        return result;
      }

      v14 = glpFunctionDefinitionNodeGetPrototype(Body);
      Name = glpFunctionPrototypeNodeGetName(v14);
      if (glpStringsEqual("main", 0x83863A00000004uLL, Name, v16))
      {
        a2 = 1;
        *a3 = 1;
      }

      Body = glpFunctionDefinitionNodeGetBody(Body);
      goto LABEL_20;
    }

    if (Kind != 67)
    {
      goto LABEL_28;
    }

    Cond = glpIfStatementNodeGetCond(Body);
    result = checkBarrier(Cond, a2, a3);
    if (!result)
    {
      return result;
    }

    IfStatement = glpIfStatementNodeGetIfStatement(Body);
    result = checkBarrier(IfStatement, 0, a3);
    if (!result)
    {
      return result;
    }

    ElseStatement = glpIfStatementNodeGetElseStatement(Body);
LABEL_15:
    Body = ElseStatement;
    a2 = 0;
LABEL_20:
    if (!Body)
    {
      return 1;
    }
  }

  if (Kind <= 68)
  {
    Body0 = glpLoopStatementNodeGetBody0(Body);
    result = checkBarrier(Body0, 0, a3);
    if (!result)
    {
      return result;
    }

    ElseStatement = glpLoopStatementNodeGetBody1(Body);
    goto LABEL_15;
  }

  if (Kind == 69)
  {
    Expr = glpSwitchStatementNodeGetExpr(Body);
    result = checkBarrier(Expr, a2, a3);
    if (!result)
    {
      return result;
    }

    ElseStatement = glpSwitchStatementNodeGetBody(Body);
    goto LABEL_15;
  }

  if (Kind != 75)
  {
    if (Kind == 84 && glpPPStreamOpNodeGetOpcode(Body) == 170)
    {
      return a2 && *a3 != 0;
    }

LABEL_28:

    return genericCheckKidsBarrier(Body, a2, a3);
  }

  result = genericCheckKidsBarrier(Body, a2, a3);
  if (!result)
  {
    return result;
  }

  *a3 = 0;
  return 1;
}

uint64_t genericCheckKidsBarrier(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!glpASTNodeGetChildCount(a1))
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    Child = glpASTNodeGetChild(a1, v6);
    result = checkBarrier(Child, a2, a3);
    if (!result)
    {
      break;
    }

    if (++v6 >= glpASTNodeGetChildCount(a1))
    {
      return 1;
    }
  }

  return result;
}

uint64_t glpConstantValueFromDecomposedInitializer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Kind = glpASTNodeGetKind(a3);
  result = 0;
  if (Kind > 42)
  {
    if (Kind == 81)
    {
      Offset = glpDerefNodeGetOffset(a3);
      if (!Offset)
      {
        return glpLValueNodeGetVariableExtra(a3) == a1;
      }

      v26 = Offset;
      if (!glpOffsetNodeGetBankIndex(Offset) || (BankIndex = glpOffsetNodeGetBankIndex(v26), result = glpIsConstantNode(BankIndex), result))
      {
        if (!glpOffsetNodeGetVectorElementExpr(v26) || (VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v26), result = glpIsConstantNode(VectorElementExpr), result))
        {
          if (!glpOffsetNodeGetOffsetExpr(v26))
          {
            return glpLValueNodeGetVariableExtra(a3) == a1;
          }

          OffsetExpr = glpOffsetNodeGetOffsetExpr(v26);
          result = glpIsConstantNode(OffsetExpr);
          if (result)
          {
            return glpLValueNodeGetVariableExtra(a3) == a1;
          }
        }
      }
    }

    else
    {
      if (Kind != 43)
      {
        return result;
      }

      ExprCount = glpCommaExprNodeGetExprCount(a3);
      if (!ExprCount)
      {
        return 1;
      }

      v22 = ExprCount;
      v23 = 0;
      while (1)
      {
        Expr = glpCommaExprNodeGetExpr(a3, v23);
        result = glpConstantValueFromDecomposedInitializer(a1, a2, Expr);
        if (!result)
        {
          break;
        }

        if (v22 == ++v23)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    if (Kind == 3)
    {
      return 1;
    }

    if (Kind == 39)
    {
      Lhs = glpBinaryOperatorNodeGetLhs(a3);
      Rhs = glpBinaryOperatorNodeGetRhs(a3);
      result = glpIsLValueNode(Lhs);
      if (result)
      {
        if (glpLValueNodeGetVariableExtra(Lhs) != a1)
        {
          return 0;
        }

        result = glpIsConstantNode(Rhs);
        if (!result)
        {
          return result;
        }

        v10 = glpDerefNodeGetOffset(Lhs);
        if (!v10)
        {
          LODWORD(v13) = 0;
          goto LABEL_38;
        }

        v11 = v10;
        if (glpOffsetNodeGetBankIndex(v10) || glpOffsetNodeGetVectorElementExpr(v11))
        {
          return 0;
        }

        v12 = glpOffsetNodeGetOffsetExpr(v11);
        v13 = v12;
        if (!v12)
        {
LABEL_14:
          Swizzle = glpOffsetNodeGetSwizzle(v11);
          if ((Swizzle & 6) == 0)
          {
            v16 = Swizzle;
            if (Swizzle)
            {
              SaType = glpASTNodeGetSaType(Lhs);
              PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
              v19 = a2 + 16 * v13;
              v20 = (v16 >> 3) & 3;
              if (PrimitiveType <= 8)
              {
                if (PrimitiveType != 1 && PrimitiveType != 5)
                {
                  goto LABEL_45;
                }
              }

              else if (PrimitiveType != 9 && PrimitiveType != 36)
              {
                if (PrimitiveType == 62)
                {
                  *(v19 + 8 * v20) = *glpConstantNodeGetValue(Rhs);
                  return 1;
                }

LABEL_45:
                abort();
              }

              *(v19 + 4 * v20) = *glpConstantNodeGetValue(Rhs);
              return 1;
            }

LABEL_38:
            v30 = glpASTNodeGetSaType(Rhs);
            Value = glpConstantNodeGetValue(Rhs);
            glpCopyValueInto((a2 + 16 * v13), v30, Value);
            return 1;
          }

          return 0;
        }

        result = glpIsConstantNode(v12);
        if (result)
        {
          v14 = glpASTNodeGetSaType(v13);
          v13 = glpConstantNodeGetValue(v13);
          result = glpValueIsUsableAsSize(v14, v13);
          if (result)
          {
            LODWORD(v13) = glpValueGetAsSize(v14, v13);
            goto LABEL_14;
          }
        }
      }
    }
  }

  return result;
}

uint64_t glpConstantFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 + 1) < 2 || (glpASTNodeGetSaFlags(a3) & 0x80) != 0)
  {
    return a3;
  }

  switch(glpASTNodeGetKind(a3))
  {
    case 0u:

      return foldTypeConversion(a1, a2, a3);
    case 3u:

      return foldConstant(a1, a2, a3);
    case 0x10u:

      return foldNegate(a1, a2, a3);
    case 0x11u:
      v8 = a1;
      v9 = a2;
      v10 = a3;
      v11 = 10;
      goto LABEL_25;
    case 0x12u:
      v8 = a1;
      v9 = a2;
      v10 = a3;
      v11 = 132;
LABEL_25:

      result = foldUnaryOperator(v8, v9, v10, v11);
      break;
    case 0x27u:
      foldAssign(a3);
      return a3;
    case 0x2Bu:

      result = foldCommaExpr(a3);
      break;
    case 0x2Eu:

      result = foldVariableDeclaration(a1, a3);
      break;
    case 0x42u:

      result = foldBlock(a3);
      break;
    case 0x43u:

      result = foldIfStatement(a3);
      break;
    case 0x45u:
      foldSwitchStatement(a1, a3);
      return a3;
    case 0x51u:

      result = foldLValue(a1, a2, a3);
      break;
    case 0x52u:

      result = foldRValue(a1, a2, a3);
      break;
    case 0x54u:

      result = foldPPStreamOp(a1, a2, a3);
      break;
    default:
      SaFlags = glpASTNodeGetSaFlags(a3);
      glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
      return a3;
  }

  return result;
}

uint64_t foldTypeConversion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v33 = *MEMORY[0x277D85DE8];
  Expr = glpUnaryOperatorNodeGetExpr(a3);
  if (glpIsConstantNode(Expr))
  {
    SaType = glpASTNodeGetSaType(Expr);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    Value = glpConstantNodeGetValue(Expr);
    v10 = glpASTNodeGetSaType(v3);
    v11 = glpPrimitiveTypeGetPrimitiveType(v10);
    v12 = glpASTNodeGetSaType(v3);
    MutableValue = glpMakeMutableValue(a1, v12, 0, v13, v14, v15, v16, v17, v30);
    v31 = 0;
    v19 = glpASTNodeGetSaType(v3);
    v20 = glpPrimitiveTypeGetPrimitiveType(v19);
    ScalarType = glpPrimitiveTypeGetScalarType(v20);
    if (ScalarType == 36)
    {
      v22 = 3;
    }

    else
    {
      v22 = 4;
    }

    if (ScalarType == 9)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    if (ScalarType == 5)
    {
      v24 = 2;
    }

    else
    {
      v24 = 4;
    }

    if (ScalarType == 1)
    {
      v24 = 0;
    }

    if (ScalarType <= 8)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    GLVMType = glpGLPTypeGetGLVMType(PrimitiveType);
    glvmChooseDestTypeConversion(v25, GLVMType, &v31);
    if ((v31 & 0x7C0000000000000) != 0)
    {
      memset(v32, 0, sizeof(v32));
      glpVecFromValue(v32, PrimitiveType, Value);
      glvmTypeConvertCF(v32, (v31 >> 54) & 0x1F);
      glpMutableValueFromVec(MutableValue, v11, v32);
    }

    else
    {
      v28 = glpASTNodeGetSaType(v3);
      glpCopyValueInto(MutableValue, v28, Value);
    }

    return glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, v3, MutableValue);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(v3);
    glpASTNodeSetSaFlags(v3, SaFlags | 0x80);
  }

  return v3;
}

uint64_t foldConstant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaType = glpASTNodeGetSaType(a3);
  Value = glpConstantNodeGetValue(a3);
  v13 = glpCopyValue(a1, SaType, Value, v8, v9, v10, v11, v12);

  return glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, a3, v13);
}

uint64_t foldNegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v26 = *MEMORY[0x277D85DE8];
  Expr = glpUnaryOperatorNodeGetExpr(a3);
  if (glpIsConstantNode(Expr))
  {
    SaType = glpASTNodeGetSaType(v3);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    Category = glpPrimitiveTypeGetCategory(PrimitiveType);
    if ((Category - 1) >= 2)
    {
      if (Category == 3)
      {
        LODWORD(v11) = glpPrimitiveMatrixGetColumns(PrimitiveType);
        PrimitiveType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
        ByteStride = glpPrimitiveTypeGetByteStride(PrimitiveType);
      }

      else
      {
        ByteStride = 0;
        LODWORD(v11) = 0;
      }
    }

    else
    {
      ByteStride = 0;
      LODWORD(v11) = 1;
    }

    Value = glpConstantNodeGetValue(Expr);
    v14 = glpASTNodeGetSaType(v3);
    MutableValue = glpMakeMutableValue(a1, v14, 0, v15, v16, v17, v18, v19, *&v25[0]);
    GLVMType = glpGLPTypeGetGLVMType(PrimitiveType);
    memset(v25, 0, sizeof(v25));
    if (v11)
    {
      v22 = GLVMType;
      v23 = 0;
      v11 = v11;
      do
      {
        glpVecFromValue(v25, PrimitiveType, (Value + v23));
        glvmSourceNegateCF(0, v22, v25);
        glpMutableValueFromVec(&MutableValue[v23], PrimitiveType, v25);
        v23 += ByteStride;
        --v11;
      }

      while (v11);
    }

    return glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, v3, MutableValue);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(v3);
    glpASTNodeSetSaFlags(v3, SaFlags | 0x80);
  }

  return v3;
}

uint64_t foldAssign(uint64_t a1)
{
  Lhs = glpBinaryOperatorNodeGetLhs(a1);
  Rhs = glpBinaryOperatorNodeGetRhs(a1);
  if (!glpIsLValueNode(Lhs))
  {
    goto LABEL_6;
  }

  VariableExtra = glpLValueNodeGetVariableExtra(Lhs);
  v5 = *(VariableExtra + 104);
  if (!v5 || !glpIsConstantNode(Rhs) || !glpConstantValueFromDecomposedInitializer(VariableExtra, v5, a1))
  {
    *(VariableExtra + 104) = 0;
LABEL_6:
    SaFlags = glpASTNodeGetSaFlags(a1);
    glpASTNodeSetSaFlags(a1, SaFlags | 0x80);
  }

  return a1;
}

uint64_t foldCommaExpr(uint64_t a1)
{
  ChildCount = glpASTNodeGetChildCount(a1);
  if (!ChildCount)
  {
    return a1;
  }

  v3 = ChildCount;
  v4 = 0;
  v5 = 0;
  do
  {
    while (1)
    {
      Child = glpASTNodeGetChild(a1, v4);
      v7 = Child;
      if (!Child)
      {
        goto LABEL_8;
      }

      if (!v5)
      {
        break;
      }

      ++v4;
      v5 = 1;
      if (v4 == v3)
      {
        goto LABEL_10;
      }
    }

    v5 = (glpASTNodeGetSaFlags(Child) >> 7) & 1;
LABEL_8:
    ++v4;
  }

  while (v4 != v3);
  if (!v5)
  {
    return v7;
  }

LABEL_10:
  SaFlags = glpASTNodeGetSaFlags(a1);
  glpASTNodeSetSaFlags(a1, SaFlags | 0x80);
  return a1;
}

uint64_t foldVariableDeclaration(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Extra = glpVariableDeclarationNodeGetExtra(a2);
  Name = glpVariableDeclarationNodeGetName(v2);
  if (v6 && (v7 = Name, *Name == 36))
  {
    v8 = v6 < 9 || strncmp("$ib$", Name, 4uLL) || strncmp("$gl_", v7 + 5, 4uLL) != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(Extra + 64);
  Initializer = glpVariableDeclarationNodeGetInitializer(v2);
  if (v9)
  {
    v8 = 1;
  }

  if (!v8 || Initializer != 0)
  {
    v12 = Initializer;
    SaFlags = glpASTNodeGetSaFlags(v2);
    glpASTNodeSetSaFlags(v2, SaFlags | 0x80);
    if (v12)
    {
      v19 = v8;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      MutableValue = glpMakeMutableValue(a1, *Extra, 0, v14, v15, v16, v17, v18, v23);
      v21 = glpVariableDeclarationNodeGetInitializer(v2);
      if (glpConstantValueFromDecomposedInitializer(Extra, MutableValue, v21))
      {
        *(Extra + 64) = MutableValue;
        *(Extra + 72) = MutableValue;
        glpVariableDeclarationNodeSetInitializer(v2, 0);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t foldBlock(uint64_t a1)
{
  v1 = a1;
  if (!glpBlockNodeGetStatementCount(a1))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    Statement = glpBlockNodeGetStatement(v1, v2);
    if (Statement)
    {
      if ((glpASTNodeGetSaFlags(Statement) & 0x80) != 0)
      {
        break;
      }
    }

    if (++v2 >= glpBlockNodeGetStatementCount(v1))
    {
      return 0;
    }
  }

  SaFlags = glpASTNodeGetSaFlags(v1);
  glpASTNodeSetSaFlags(v1, SaFlags | 0x80);
  return v1;
}

uint64_t foldIfStatement(uint64_t a1)
{
  Cond = glpIfStatementNodeGetCond(a1);
  if (glpIsConstantNode(Cond))
  {
    if (*glpConstantNodeGetValue(Cond))
    {

      return glpIfStatementNodeGetIfStatement(a1);
    }

    else
    {

      return glpIfStatementNodeGetElseStatement(a1);
    }
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(a1);
    glpASTNodeSetSaFlags(a1, SaFlags | 0x80);
    return a1;
  }
}

uint64_t foldSwitchStatement(uint64_t a1, uint64_t a2)
{
  if (!glpSwitchStatementNodeGetBody(a2))
  {
    glpASTNodeGetLocation(a2, &v7);
    glpMakeBlockNode(a1, &v7, 0);
    glpSwitchStatementNodeSetBody(a2, v4);
  }

  SaFlags = glpASTNodeGetSaFlags(a2);
  glpASTNodeSetSaFlags(a2, SaFlags | 0x80);
  return a2;
}

uint64_t foldLValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VariableExtra = glpLValueNodeGetVariableExtra(a3);
  v7 = VariableExtra[8];
  if (v7)
  {
    v8 = *VariableExtra;

    return foldDerefNode(a1, a2, a3, v7, v8);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    return a3;
  }
}

uint64_t foldRValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Base = glpRValueNodeGetBase(a3);
  if (glpIsConstantNode(Base))
  {
    Value = glpConstantNodeGetValue(Base);
    Type = glpConstantNodeGetType(Base);

    return foldDerefNode(a1, a2, a3, Value, Type);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    return a3;
  }
}

uint64_t foldPPStreamOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a3);
  Opcode = glpPPStreamOpNodeGetOpcode(a3);
  OpPrimitiveType = glpPPStreamOpNodeGetOpPrimitiveType(a3);
  HasSrctex = glpPPStreamOpNodeGetHasSrctex(a3);
  ChildCount = glpASTNodeGetChildCount(a3);
  v10 = ChildCount;
  MEMORY[0x28223BE20](ChildCount);
  v12 = (&v65 - v11);
  bzero(&v65 - v11, v13);
  v14 = v10;
  if (HasSrctex)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10 >= 5;
  }

  v16 = !v15;
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      Child = glpASTNodeGetChild(a3, i);
      v12[i] = Child;
      if (!glpIsConstantNode(Child))
      {
        v16 = 0;
      }
    }

    if (v16)
    {
      goto LABEL_13;
    }
  }

  else if (v16)
  {
LABEL_13:
    v19 = 1;
    goto LABEL_57;
  }

  v19 = 0;
  if (Opcode > 0x22 || ((1 << Opcode) & 0x580000000) == 0)
  {
LABEL_57:
    if (!ReturnPrimitiveType)
    {
      v19 = 0;
    }

    if (OpPrimitiveType)
    {
      v36 = v19;
    }

    else
    {
      v36 = 0;
    }

    if ((Opcode - 78) <= 0x28 && ((1 << (Opcode - 78)) & 0x18000000001) != 0 || Opcode == 11)
    {
      goto LABEL_73;
    }

    if (Opcode != 34)
    {
      goto LABEL_70;
    }

    goto LABEL_66;
  }

  v65 = a1;
  v66 = a2;
  v20 = *v12;
  SaType = glpASTNodeGetSaType(*v12);
  v22 = v12[1];
  v23 = glpASTNodeGetSaType(v22);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  v25 = glpPrimitiveTypeGetPrimitiveType(v23);
  IsConstantNode = glpIsConstantNode(v20);
  v28 = PrimitiveType == 5 || PrimitiveType == 36;
  v29 = IsConstantNode && v28;
  v30 = glpIsConstantNode(v22);
  v32 = v25 == 5 || v25 == 36;
  v33 = v30 && v32;
  if (v29)
  {
    Value = glpConstantNodeGetValue(v20);
    if (!v33)
    {
LABEL_37:
      v35 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    Value = 0;
    if (!v33)
    {
      goto LABEL_37;
    }
  }

  v35 = glpConstantNodeGetValue(v22);
LABEL_40:
  if (Opcode == 31)
  {
    if (Value && !*Value)
    {
      return v22;
    }

LABEL_54:
    if (v35)
    {
      v22 = v20;
      if (!*v35)
      {
        return v22;
      }
    }

    goto LABEL_56;
  }

  if (Opcode == 32)
  {
    goto LABEL_54;
  }

  if (Opcode != 34)
  {
LABEL_56:
    v19 = 0;
    a1 = v65;
    a2 = v66;
    goto LABEL_57;
  }

  if (Value && !*Value || v35 && !*v35)
  {
    v58 = glpGetPrimitiveType(ReturnPrimitiveType);
    v59 = v65;
    MutableValue = glpMakeMutableValue(v65, v58, 0, v60, v61, v62, v63, v64, v65);
    glpPrimitiveTypeGetScalarCount(ReturnPrimitiveType);
    v55 = v66;
    v54 = v59;
    goto LABEL_76;
  }

  if (Value && *Value == 1)
  {
    return v22;
  }

  if (v35)
  {
    v22 = v20;
    if (*v35 == 1)
    {
      return v22;
    }
  }

  v36 = 0;
  a1 = v65;
  a2 = v66;
LABEL_66:
  v37 = glpCallNodeGetArg(a3, 0);
  v38 = glpASTNodeGetSaType(v37);
  v39 = glpCallNodeGetArg(a3, 1u);
  v40 = glpASTNodeGetSaType(v39);
  v41 = glpPrimitiveTypeGetPrimitiveType(v38);
  Category = glpPrimitiveTypeGetCategory(v41);
  v43 = glpPrimitiveTypeGetPrimitiveType(v40);
  v44 = glpPrimitiveTypeGetCategory(v43);
  if (Category == 3 && (v44 & 0xFFFFFFFE) == 2 || Category == 2 && v44 == 3)
  {
    goto LABEL_73;
  }

LABEL_70:
  if ((Opcode - 171) < 4 || !v36)
  {
LABEL_73:
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    return a3;
  }

  v45 = glpGetPrimitiveType(ReturnPrimitiveType);
  MutableValue = glpMakeMutableValue(a1, v45, 0, v46, v47, v48, v49, v50, v65);
  v52 = glpGetPrimitiveType(OpPrimitiveType);
  v53 = glpGetPrimitiveType(ReturnPrimitiveType);
  glvmOp(Opcode, v52, v14, v12, MutableValue, v53);
  v54 = a1;
  v55 = a2;
LABEL_76:

  return glpMakeConstantNodeFromNodeAndMutableValue(v54, v55, a3, MutableValue);
}

uint64_t glpGLPTypeGetGLVMType(uint64_t a1)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a1);
  if (ScalarType == 36)
  {
    v2 = 8;
  }

  else
  {
    v2 = 16;
  }

  if (ScalarType == 9)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  if (ScalarType == 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = 16;
  }

  if (ScalarType == 1)
  {
    v4 = 4;
  }

  if (ScalarType <= 8)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t glpVecFromValue(int *a1, uint64_t a2, const void *a3)
{
  BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(a2);
  ScalarCount = glpPrimitiveTypeGetScalarCount(a2);
  memcpy(a1, a3, ScalarCount * BytesPerComponent);
  result = glpPrimitiveTypeGetScalarType(a2);
  if (result == 9 && ScalarCount)
  {
    v9 = ScalarCount;
    do
    {
      if (*a1)
      {
        v10 = -1;
      }

      else
      {
        v10 = 0;
      }

      *a1++ = v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t glpMutableValueFromVec(_DWORD *a1, uint64_t a2, const void *a3)
{
  BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(a2);
  ScalarCount = glpPrimitiveTypeGetScalarCount(a2);
  memcpy(a1, a3, ScalarCount * BytesPerComponent);
  result = glpPrimitiveTypeGetScalarType(a2);
  if (result == 9 && ScalarCount)
  {
    v9 = ScalarCount;
    do
    {
      *a1 = *a1 != 0;
      ++a1;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t glpMakeConstantNodeFromNodeAndMutableValue(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  glpASTNodeGetLocation(a3, &v16);
  SaType = glpASTNodeGetSaType(a3);
  v9 = glpASTNodeGetSaType(a3);
  v10 = glpRemapValue(a2, v9, a4);
  glpMakeConstantNode(a1, &v16, SaType, v10);
  v12 = v11;
  v13 = glpASTNodeGetSaType(a3);
  glpASTNodeSetSaType(v12, v13);
  SaFlags = glpASTNodeGetSaFlags(a3);
  glpASTNodeSetSaFlags(v12, SaFlags);
  return v12;
}

uint64_t foldUnaryOperator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Expr = glpUnaryOperatorNodeGetExpr(a3);
  if (glpIsConstantNode(Expr))
  {
    SaType = glpASTNodeGetSaType(a3);
    MutableValue = glpMakeMutableValue(a1, SaType, 0, v9, v10, v11, v12, v13, v17);
    glvmOp(a4, SaType, 1, &Expr, MutableValue, SaType);

    return glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, a3, MutableValue);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    return a3;
  }
}

uint64_t glvmOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5, uint64_t a6)
{
  v69 = a5;
  v9 = a2;
  v67 = a1;
  v85 = *MEMORY[0x277D85DE8];
  Constants = glvmGetConstants(a1, a2);
  MEMORY[0x28223BE20](Constants);
  v10 = (4 * a3 + 15) & 0x7FFFFFFF0;
  v11 = &v64 - v10;
  bzero(&v64 - v10, 4 * a3);
  MEMORY[0x28223BE20](v12);
  v13 = &v64 - v10;
  bzero(&v64 - v10, 4 * a3);
  v74 = a4;
  if (a3)
  {
    v75 = v9;
    v14 = 0;
    v15 = a3;
    v16 = (&v64 - v10);
    v17 = v11;
    do
    {
      v18 = *a4++;
      Type = glpConstantNodeGetType(v18);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(Type);
      *v17++ = PrimitiveType;
      ScalarCount = glpPrimitiveTypeGetScalarCount(PrimitiveType);
      *v16++ = ScalarCount;
      if (v14 <= ScalarCount)
      {
        v14 = ScalarCount;
      }

      --v15;
    }

    while (v15);
    v76.i32[0] = 0;
    v84.i32[0] = 0;
    v73 = v13;
    v22 = 0;
    v76.i32[3] = 0;
    *(v76.i64 + 4) = 0;
    *(v84.i64 + 4) = 0;
    v84.i32[3] = 0;
    do
    {
      v23 = *&v11[v22 * 4];
      v76.i32[v22] = glpPrimitiveTypeGetScalarCount(v23) - 1;
      v84.i32[v22++] = glpGLPTypeGetGLVMType(v23);
    }

    while (a3 != v22);
    v24.i64[0] = 0x1F0000001FLL;
    v24.i64[1] = 0x1F0000001FLL;
    v25 = vandq_s8(v84, v24);
    v26.i64[0] = v25.u32[0];
    v26.i64[1] = v25.u32[1];
    v27 = v26;
    v26.i64[0] = v25.u32[2];
    v26.i64[1] = v25.u32[3];
    v28 = vandq_s8(vshlq_u32(v76, xmmword_23A29D3B0), xmmword_23A29D3C0);
    v29 = vorrq_s8(vshlq_u64(v27, xmmword_23A29D3A0), vshlq_u64(v26, xmmword_23A29D390));
    *v27.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v26.i64[0] = v27.u32[0];
    v26.i64[1] = v27.u32[1];
    v30 = vorrq_s8(v29, v26);
    v31 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
    v13 = v73;
    v9 = v75;
  }

  else
  {
    v14 = 0;
    v31 = 0;
  }

  v32 = v74;
  if (a6)
  {
    v33 = glpPrimitiveTypeGetPrimitiveType(a6);
    v31 = v31 & 0xE0FFFFFFFFFFFFFFLL | (glpGLPTypeGetGLVMType(v33) << 56);
  }

  v68 = a6;
  v34 = glpPrimitiveTypeGetPrimitiveType(a6);
  v35 = glpPrimitiveTypeGetScalarCount(v34);
  v36 = v31 & 0xFFFFFFFFFFFFFF0FLL | 0x10;
  if (v35 == 4)
  {
    v36 = v31 | 0xF0;
  }

  if (v35 == 3)
  {
    v36 = v31 & 0xFFFFFFFFFFFFFF0FLL | 0x70;
  }

  if (v35 == 2)
  {
    v37 = v31 & 0xFFFFFFFFFFFFFF0FLL | 0x30;
  }

  else
  {
    v37 = v36;
  }

  v38 = glpPrimitiveTypeGetPrimitiveType(v9);
  v39 = glpPrimitiveTypeGetScalarCount(v38);
  v40 = v37 & 0xFFFFFFFFFF87FFFFLL | ((v39 << 19) + 1572864) & 0x180000;
  MEMORY[0x28223BE20](v39);
  v41 = (&v64 - 16 * a3) & 0xFFFFFFFFFFFFFFE0;
  bzero(v41, v42);
  v65 = a3;
  if (a3)
  {
    v75 = a3;
    v46 = 0;
    v73 = ((v14 << 17) + 393216) & 0x60000;
    v72 = ((v14 << 15) + 98304) & 0x18000;
    v71 = ((v14 << 13) + 24576) & 0x6000;
    v70 = ((v14 << 11) + 6144) & 0x1800;
    do
    {
      Value = glpConstantNodeGetValue(v32[v46]);
      v48 = v11;
      v49 = *&v11[4 * v46];
      v50 = (v41 + (v46 << 7));
      glpVecFromValue(v50, v49, Value);
      v51 = v13;
      v52 = *&v13[4 * v46];
      if (v52 < v14)
      {
        v53 = v41;
        v54 = v40;
        v55 = v52 - 1;
        do
        {
          BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(v49);
          memcpy(v50 + BytesPerComponent * v52++, v50 + BytesPerComponent * v55, BytesPerComponent);
        }

        while (v14 != v52);
        v57 = v54 & 0xFFFFFFFFFFFE7FFFLL | v72;
        v58 = v54 & 0xFFFFFFFFFFF9FFFFLL | v73;
        if (v46 != 3)
        {
          v58 = v54;
        }

        if (v46 != 2)
        {
          v57 = v58;
        }

        v59 = v54 & 0xFFFFFFFFFFFFE7FFLL | v70;
        v60 = v54 & 0xFFFFFFFFFFFF9FFFLL | v71;
        if (v46 != 1)
        {
          v60 = v54;
        }

        if (v46)
        {
          v59 = v60;
        }

        if (v46 <= 1)
        {
          v40 = v59;
        }

        else
        {
          v40 = v57;
        }

        v41 = v53;
        v32 = v74;
      }

      ++v46;
      v13 = v51;
      v11 = v48;
    }

    while (v46 != v75);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v61 = v68;
  switch(v67)
  {
    case 2:
      glvmOperationABS(Constants, v41, &v76, v40);
      break;
    case 3:
      glvmOperationCEI(Constants, v41, &v76, v40, 0);
      break;
    case 4:
      glvmOperationFRC(Constants, v41, &v76, v40);
      break;
    case 5:
      glvmOperationFLR(Constants, v41, &v76, v40, 0);
      break;
    case 6:
    case 80:
    case 81:
      glvmOperationZERO(Constants, &v76, v40);
      break;
    case 7:
      glvmOperationSSG(0, Constants, v41, &v76, v40);
      break;
    case 8:
      glvmOperationANY(0, Constants, v41, &v76, v40);
      break;
    case 9:
      glvmOperationALL(0, Constants, v41, &v76, v40);
      break;
    case 10:
      glvmOperationNOT(Constants, v41, &v76);
      break;
    case 11:
      glvmOperationNSE(Constants, v41, v76.i32, v40);
      break;
    case 12:
      glvmOperationSQT(Constants, v41, &v76, v40);
      break;
    case 16:
      glvmOperationEX2(Constants, v41, &v76, v40);
      break;
    case 18:
      glvmOperationLEN(Constants, v41, &v76, v40, 0, v43.f64[0], v44.f64[0], v45.f64[0]);
      break;
    case 19:
      glvmOperationLG2(Constants, v41, &v76, v40);
      break;
    case 21:
      glvmOperationNRM(Constants, v41, v76.i64, v40, 0);
      break;
    case 22:
      glvmOperationRAD(Constants, v41, &v76);
      break;
    case 23:
      glvmOperationDEG(Constants, v41, &v76);
      break;
    case 25:
      glvmOperationSIN(Constants, v41, &v76);
      break;
    case 26:
      glvmOperationCOS(Constants, v41, &v76);
      break;
    case 27:
      glvmOperationTAN(Constants, v41, &v76);
      break;
    case 28:
      glvmOperationASN(Constants, v41, &v76);
      break;
    case 29:
      glvmOperationACS(Constants, v41, &v76);
      break;
    case 30:
      if (v65 == 2)
      {
        glvmOperationATN2(Constants, v41, (v41 + 128), &v76);
      }

      else
      {
        glvmOperationATN(Constants, v41, &v76);
      }

      break;
    case 31:
      glvmOperationADD(Constants, v41, v41 + 128, &v76, v40);
      break;
    case 32:
      glvmOperationSUB(Constants, v41, v41 + 128, &v76, v40);
      break;
    case 33:
      glvmOperationMOD(Constants, v41, v41 + 128, &v76, v40);
      break;
    case 34:
      glvmOperationMUL(Constants, v41, v41 + 128, &v76, v40);
      break;
    case 35:
      glvmOperationMLC();
      break;
    case 36:
      glvmOperationANL(Constants, v41, (v41 + 128), &v76);
      break;
    case 37:
      glvmOperationORL(Constants, v41, (v41 + 128), &v76);
      break;
    case 38:
      glvmOperationXRL(Constants, v41, (v41 + 128), &v76);
      break;
    case 39:
      glvmOperationDOT(0.0, Constants, v41, v41 + 128, &v76, v40);
      break;
    case 44:
      glvmOperationMIN(Constants, v41, (v41 + 128), &v76, v40);
      break;
    case 45:
      glvmOperationMAX(Constants, v41, (v41 + 128), &v76, v40);
      break;
    case 46:
      glvmOperationXPD(Constants, v41, v41 + 128, &v76, v40);
      break;
    case 47:
      glvmOperationRFL(0, v43.f64[0], v44.f64[0], v45.f64[0], Constants, v41, v41 + 128, &v76, v40);
      break;
    case 49:
      glvmOperationSEQ(0, Constants, v41, v41 + 128, &v76, v40);
      break;
    case 50:
      glvmOperationSGE(Constants, v41, v41 + 128, &v76, v40);
      break;
    case 51:
      glvmOperationSGT(Constants, v41, v41 + 128, &v76, v40);
      break;
    case 52:
      glvmOperationSLE(Constants, v41, v41 + 128, &v76, v40);
      break;
    case 53:
      glvmOperationSLT(Constants, v41, v41 + 128, &v76, v40);
      break;
    case 54:
      glvmOperationSNE(0, Constants, v41, v41 + 128, &v76, v40);
      break;
    case 56:
      glvmOperationPOW(Constants, v41, (v41 + 128), &v76, v40);
      break;
    case 58:
      glvmOperationDIV(0, Constants, v41, v41 + 128, &v76, v40);
      break;
    case 59:
      glvmOperationFFW(0, v43, v44, v45, Constants, v41, v41 + 128, v41 + 256, &v76, v40);
      break;
    case 60:
      glvmOperationLRP(Constants, v41, (v41 + 128), (v41 + 256), &v76, v40);
      break;
    case 61:
      glvmOperationCLM(Constants, v41, (v41 + 128), (v41 + 256), &v76, v40);
      break;
    case 63:
      glvmOperationMAD(Constants, v41, (v41 + 128), (v41 + 256), &v76, v40);
      break;
    case 64:
      glvmOperationSMS(Constants, v41, (v41 + 128), (v41 + 256), &v76, v40);
      break;
    case 92:
      glvmOperationPK2H(Constants, v41, &v76);
      break;
    case 93:
      glvmOperationPK2US(Constants, v41, &v76);
      break;
    case 94:
      glvmOperationPK4B(Constants, v41, &v76);
      break;
    case 95:
      glvmOperationPK4UB(Constants, v41, &v76);
      break;
    case 100:
      glvmOperationUP2H(Constants, v41, v76.i32);
      break;
    case 101:
      glvmOperationUP2US(0.0, Constants, v41, &v76);
      break;
    case 102:
      glvmOperationUP4B(0, Constants, v41, &v76);
      break;
    case 103:
      glvmOperationUP4UB(0.0, Constants, v41, &v76);
      break;
    case 105:
      glvmOperationRFR(Constants, v41, v41 + 128, (v41 + 256), &v76, v40, 0);
      break;
    case 112:
      glvmOperationEXPE(Constants, v41, &v76, v40);
      break;
    case 113:
      glvmOperationLOGE(Constants, v41, &v76, v40);
      break;
    case 123:
      glvmOperationROUND(Constants, v41, &v76, v40);
      break;
    case 124:
      glvmOperationTRUNCATE(Constants, v41, &v76, v40);
      break;
    case 125:
      glvmOperationAND(Constants, v41, (v41 + 128), &v76);
      break;
    case 126:
      glvmOperationOR(Constants, v41, (v41 + 128), &v76);
      break;
    case 127:
      glvmOperationXOR(Constants, v41, (v41 + 128), &v76);
      break;
    case 128:
      glvmOperationSHL(Constants, v41, (v41 + 128), &v76);
      break;
    case 129:
      glvmOperationSHR(Constants, v41, (v41 + 128), &v76, v40);
      break;
    case 132:
      glvmOperationCOMP(Constants, v41, &v76);
      break;
    case 133:
      glvmOperationDISTANCE(Constants, v41, (v41 + 128), &v76, v40, 0);
      break;
    case 134:
      glvmOperationINVERSESQRT(Constants, v41, &v76, v40);
      break;
    case 137:
      glvmOperationROUNDEVEN(Constants, v41, &v76, v40);
      break;
    case 138:
      glvmOperationISNAN(Constants, v41, &v76, v40);
      break;
    case 139:
      glvmOperationISINF(Constants, v41, &v76, v40);
      break;
    case 144:
      glvmOperationSINH(Constants, v41, v76.i32);
      break;
    case 145:
      glvmOperationCOSH(Constants, v41, v76.i32);
      break;
    case 146:
      glvmOperationTANH(Constants, v41, v76.i32);
      break;
    case 147:
      glvmOperationASINH(Constants, v41, v76.i32);
      break;
    case 148:
      glvmOperationACOSH(Constants, v41, v76.i32);
      break;
    case 149:
      glvmOperationATANH(Constants, v41, v76.i32);
      break;
    case 150:
      glvmOperationTO_BITS(Constants, v41, &v76);
      break;
    case 151:
      glvmOperationFROM_BITS(Constants, v41, &v76);
      break;
    case 154:
      glvmOperationEXTRACT_EXPONENT(Constants, v41, &v76, v40);
      break;
    case 155:
      glvmOperationEXTRACT_SIGNIFICAND(Constants, v41, &v76, v40);
      break;
    case 156:
      glvmOperationLDEXP(Constants, v41, (v41 + 128), &v76, v40);
      break;
    case 157:
      glvmOperationPK2W(Constants, v41, &v76);
      break;
    case 158:
      glvmOperationUP2W(Constants, v41, &v76);
      break;
    case 159:
      glvmOperationMUL_HB(Constants, v41, (v41 + 128), &v76, v40);
      break;
    case 160:
      glvmOperationBITFIELD_REVERSE(Constants, v41, &v76);
      break;
    case 161:
      glvmOperationBITCOUNT(Constants, v41, &v76);
      break;
    case 162:
      glvmOperationFIND_LSB(Constants, v41, &v76);
      break;
    case 163:
      glvmOperationFIND_MSB(Constants, v41, v76.i32, v40);
      break;
    default:
      break;
  }

  v62 = glpPrimitiveTypeGetPrimitiveType(v61);
  return glpMutableValueFromVec(v69, v62, &v76);
}

uint64_t foldDerefNode(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  Offset = glpDerefNodeGetOffset(a3);
  VectorElementExpr = Offset;
  if (Offset)
  {
    v11 = glpOffsetNodeGetBankIndex(Offset) == 0;
    OffsetExpr = glpOffsetNodeGetOffsetExpr(VectorElementExpr);
    Swizzle = glpOffsetNodeGetSwizzle(VectorElementExpr);
    VectorElementExpr = glpOffsetNodeGetVectorElementExpr(VectorElementExpr);
  }

  else
  {
    Swizzle = 0;
    OffsetExpr = 0;
    v11 = 1;
  }

  v14 = glpDerefNodeGetOffset(a3);
  SaType = glpASTNodeGetSaType(a3);
  if (!glpTypeGetKind(SaType) && v14 && glpOffsetNodeGetPreSwizzlePrimitiveType(v14))
  {
    PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(v14);
    SaType = glpGetPrimitiveType(PreSwizzlePrimitiveType);
  }

  if (!v11)
  {
    goto LABEL_27;
  }

  if (OffsetExpr)
  {
    if (!glpIsConstantNode(OffsetExpr))
    {
      goto LABEL_27;
    }

    Value = glpConstantNodeGetValue(OffsetExpr);
    Type = glpConstantNodeGetType(OffsetExpr);
    if (!glpValueIsUsableAsSize(Type, Value))
    {
      goto LABEL_27;
    }

    AsSize = glpValueGetAsSize(Type, Value);
    glpABIGetTypeSize(0, a5, 0);
    glpTypeSizeGetSize();
    if (AsSize >= v25)
    {
      goto LABEL_27;
    }

    v26 = glpCopyValue(a1, SaType, &a4[16 * AsSize], v20, v21, v22, v23, v24);
    if (!Swizzle)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = a4;
    if (!Swizzle)
    {
      goto LABEL_17;
    }
  }

  v27 = glpASTNodeGetSaType(a3);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v27);
  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  VectorType = glpGetVectorType(ScalarType, Swizzle & 7);
  v31 = glpGetPrimitiveType(VectorType);
  MutableValue = glpMakeMutableValue(a1, v31, 0, v32, v33, v34, v35, v36, v66);
  glpCopyValueIntoWithSwizzle(MutableValue, v31, v26, Swizzle);
  v26 = MutableValue;
LABEL_17:
  if (VectorElementExpr)
  {
    if (glpIsConstantNode(VectorElementExpr))
    {
      v38 = glpConstantNodeGetValue(VectorElementExpr);
      v39 = glpConstantNodeGetType(VectorElementExpr);
      if (glpValueIsUsableAsSize(v39, v38))
      {
        v40 = glpValueGetAsSize(v39, v38);
        v41 = glpPrimitiveTypeGetPrimitiveType(SaType);
        if (v40 < glpPrimitiveTypeGetScalarCount(v41))
        {
          v42 = glpASTNodeGetSaType(a3);
          v48 = glpMakeMutableValue(a1, v42, 0, v43, v44, v45, v46, v47, v66);
          v49 = glpASTNodeGetSaType(a3);
          Swizzle_2 = glpMakeSwizzle_2(v49, v50, v51, v52, v53, v54, v55, v56, v40);
          glpCopyValueIntoWithSwizzle(v48, v49, v26, Swizzle_2);
          v26 = v48;
          goto LABEL_22;
        }
      }
    }

LABEL_27:
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    return a3;
  }

LABEL_22:
  if (v26 == a4)
  {
    v58 = glpASTNodeGetSaType(a3);
    v26 = glpCopyValue(a1, v58, a4, v59, v60, v61, v62, v63);
  }

  return glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, a3, v26);
}

uint64_t glpCopyValueIntoWithSwizzle(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a4 & 7;
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a2);
  result = glpPrimitiveTypeGetBytesPerComponent(PrimitiveType);
  if (v7)
  {
    v10 = result;
    v11 = 0;
    v12 = result;
    v13 = 3;
    do
    {
      result = memcpy((a1 + v11), (a3 + ((a4 >> v13) & 3) * v10), v12);
      v13 += 2;
      v11 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t glpPPTNode(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    switch(glpASTNodeGetKind(a2))
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Du:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
        goto LABEL_3;
      case 0x2Eu:

        return glpPPTVariableDeclaration(a1, a2);
      case 0x33u:

        return glpPPTFunctionDefinition(a1, a2);
      case 0x45u:
        glpPPTSwitchStatement(a1, a2);
        return a2;
      case 0x4Cu:
        a1[3] = a2;
LABEL_3:
        transformKids(a1, a2);
        return a2;
      case 0x4Eu:

        return glpPPTRawCall(a1, a2);
      default:
        abort();
    }
  }

  return a2;
}

uint64_t glpPPTVariableDeclaration(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  transformKids(a1, a2);
  if (glpVariableDeclarationNodeGetInitializer(v2) && (glpASTNodeGetSaFlags(v2) & 0x100000000) == 0)
  {
    Initializer = glpVariableDeclarationNodeGetInitializer(v2);
    glpVariableDeclarationNodeSetInitializer(v2, 0);
    if ((glpASTNodeGetSaFlags(v2) & 0x80000000) != 0)
    {
      if (glpTopLevelNodeGetDefCount(a1[3]))
      {
        v9 = 0;
        while (1)
        {
          Def = glpTopLevelNodeGetDef(a1[3], v9);
          if (glpIsFunctionDefinitionNode(Def))
          {
            Prototype = glpFunctionDefinitionNodeGetPrototype(Def);
            Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
            if (glpStringsEqual("$copy_in", 0x2CF8B77300000008uLL, *(Extra + 24), *(Extra + 32)))
            {
              break;
            }
          }

          if (++v9 >= glpTopLevelNodeGetDefCount(a1[3]))
          {
            goto LABEL_10;
          }
        }

        Body = glpFunctionDefinitionNodeGetBody(Def);
      }

      else
      {
LABEL_10:
        Body = 0;
      }

      glpBlockNodeAddStatement(*a1, Body, Initializer);
    }

    else
    {
      v5 = *a1;
      glpASTNodeGetLocation(v2, &v15);
      glpMakeCommaExprNode(v5, &v15, 0);
      v7 = v6;
      glpCommaExprNodeAddExpr(*a1, v6, v2);
      glpCommaExprNodeAddExpr(*a1, v7, Initializer);
      SaType = glpASTNodeGetSaType(v2);
      glpASTNodeSetSaType(v7, SaType);
      return v7;
    }
  }

  return v2;
}

uint64_t glpPPTFunctionDefinition(uint64_t *a1, uint64_t a2)
{
  transformKids(a1, a2);
  Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
  if ((*(glpFunctionPrototypeNodeGetExtra(Prototype) + 9) & 0x20) != 0)
  {
    Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
    *(Extra + 64) = a2;
    if ((*(Extra + 10) & 2) == 0)
    {
      return Prototype;
    }
  }

  else
  {
    Body = glpFunctionDefinitionNodeGetBody(a2);
    StatementCount = glpBlockNodeGetStatementCount(Body);
    do
    {
      if (!StatementCount)
      {
        goto LABEL_13;
      }

      --StatementCount;
    }

    while (!glpBlockNodeGetStatement(Body, StatementCount));
    Statement = glpBlockNodeGetStatement(Body, StatementCount);
    if (!Statement)
    {
      goto LABEL_13;
    }

    Expr = Statement;
    while (glpIsCommaExprNode(Expr))
    {
      ExprCount = glpCommaExprNodeGetExprCount(Expr);
      Expr = glpCommaExprNodeGetExpr(Expr, ExprCount - 1);
      if (!Expr)
      {
        goto LABEL_13;
      }
    }

    if (!glpIsReturnStatementNode(Expr))
    {
LABEL_13:
      v11 = *a1;
      glpASTNodeGetLocation(a2, &v16);
      glpMakeReturnStatementNode(v11, &v16);
      v13 = v12;
      PrimitiveType = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v13, PrimitiveType);
      glpBlockNodeAddStatement(*a1, Body, v13);
    }
  }

  return a2;
}

uint64_t glpPPTSwitchStatement(uint64_t *a1, uint64_t a2)
{
  transformKids(a1, a2);
  Body = glpSwitchStatementNodeGetBody(a2);
  StatementCount = glpBlockNodeGetStatementCount(Body);
  do
  {
    if (!StatementCount)
    {
      goto LABEL_10;
    }

    --StatementCount;
  }

  while (!glpBlockNodeGetStatement(Body, StatementCount));
  Statement = glpBlockNodeGetStatement(Body, StatementCount);
  if (!Statement)
  {
    goto LABEL_10;
  }

  Expr = Statement;
  while (glpIsCommaExprNode(Expr))
  {
    ExprCount = glpCommaExprNodeGetExprCount(Expr);
    Expr = glpCommaExprNodeGetExpr(Expr, ExprCount - 1);
    if (!Expr)
    {
      goto LABEL_10;
    }
  }

  if (!glpIsBreakStatementNode(Expr))
  {
LABEL_10:
    v9 = *a1;
    glpASTNodeGetLocation(a2, &v14);
    glpMakeBreakStatementNode(v9, &v14);
    v11 = v10;
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v11, PrimitiveType);
    glpBlockNodeAddStatement(*a1, Body, v11);
  }

  return a2;
}

uint64_t glpPPTRawCall(uint64_t **a1, uint64_t a2)
{
  transformKids(a1, a2);
  v4 = *a1;
  glpASTNodeGetLocation(a2, &v13);
  glpMakeCommaExprNode(v4, &v13, 0);
  v6 = v5;
  v7 = glpRawCallNodeGetExtra(a2);
  ExprCount = glpCommaExprNodeGetExprCount(v6);
  glpCommaExprNodeAddExpr(*a1, v6, a2);
  if (*(v7 + 64) && (*(v7 + 9) & 0x20) != 0)
  {
    v13.n128_u64[0] = 0;
    v13.n128_u64[1] = glpMakePointerHash(*a1);
    PointerHash = glpMakePointerHash(*a1);
    v9 = *a1;
    Body = glpFunctionDefinitionNodeGetBody(*(v7 + 64));
    v11 = glpDeepCopyASTNode(v9, Body, inliningNodeReplacement, &v13);
    glpCommaExprNodeSetExpr(v6, ExprCount, v11);
  }

  return v6;
}

uint64_t transformKids(uint64_t a1, uint64_t a2)
{
  result = glpASTNodeGetChildCount(a2);
  if (result)
  {
    v5 = 0;
    do
    {
      Child = glpASTNodeGetChild(a2, v5);
      v7 = glpPPTNode(a1, Child);
      glpASTNodeSetChild(a2, v5++, v7);
      result = glpASTNodeGetChildCount(a2);
    }

    while (v5 < result);
  }

  return result;
}

uint64_t inliningNodeReplacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Kind = glpASTNodeGetKind(a3);
  if (Kind > 79)
  {
    if (Kind == 80)
    {
      Extra = glpOffsetNodeGetExtra(v3);
      v20 = *(a1 + 16);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 0x40000000;
      v23[2] = __inliningNodeReplacement_block_invoke;
      v23[3] = &__block_descriptor_tmp_13;
      v23[4] = a2;
      v23[5] = Extra;
      v21 = glpPointerHashCache_b(v20, Extra, v23);
      glpOffsetNodeSetExtra(v3, v21);
    }

    else if (Kind == 81)
    {
      VariableExtra = glpLValueNodeGetVariableExtra(v3);
      v8 = glpPointerHashGet(*(a1 + 8), VariableExtra);
      if (v8)
      {
        glpLValueNodeSetVariableExtra(v3, v8);
      }
    }
  }

  else if (Kind == 46)
  {
    v9 = glpVariableDeclarationNodeGetExtra(v3);
    v10 = (*(a2 + 8))(*a2, 160, "Variable Object (PPT inlining)");
    v11 = v9[1];
    *v10 = *v9;
    v10[1] = v11;
    v12 = v9[5];
    v14 = v9[2];
    v13 = v9[3];
    v10[4] = v9[4];
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
    v15 = v9[8];
    v16 = v9[9];
    v18 = v9[6];
    v17 = v9[7];
    v10[8] = v15;
    v10[9] = v16;
    v10[6] = v18;
    v10[7] = v17;
    glpPointerHashPut(*(a1 + 8), v9, v10, *&v15);
    glpVariableDeclarationNodeSetExtra(v3, v10);
  }

  else if (Kind == 75)
  {
    v3 = 0;
    *a1 = 1;
  }

  return v3;
}

__n128 __inliningNodeReplacement_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 8))(**(a1 + 32), 32, "Offset Object (PPT inlining)");
  v3 = *(a1 + 40);
  result = *(v3 + 16);
  *v2 = *v3;
  *(v2 + 16) = result;
  return result;
}

uint64_t glpSANode(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 + 1) >= 2 && !glpASTNodeGetSaType(a2))
  {
    glpCompilerPushSAContext(a1, v2);
    switch(glpASTNodeGetKind(v2))
    {
      case 0u:
        v4 = glpSATypeConversion(a1, v2);
        goto LABEL_84;
      case 1u:
        v4 = glpSAVariableIdentifier(a1, v2);
        goto LABEL_84;
      case 2u:
        v4 = glpSATypeIdentifier(a1, v2);
        goto LABEL_84;
      case 3u:
        glpSAConstant(v2);
        goto LABEL_85;
      case 4u:
        v4 = glpSAArrayAccess(a1, v2);
        goto LABEL_84;
      case 5u:
        v4 = glpSAFieldAccess(a1, v2);
        goto LABEL_84;
      case 6u:
        v4 = glpSAUndeterminedCall(a1, v2);
        goto LABEL_84;
      case 7u:
        v4 = glpSAFunctionCall(a1, v2);
        goto LABEL_84;
      case 8u:
        v4 = glpSASubroutineArrayCall(a1, v2);
        goto LABEL_84;
      case 9u:
        v4 = glpSAMethodCall(a1, v2);
        goto LABEL_84;
      case 0xAu:
        v4 = glpSAConstructorCall(a1, v2);
        goto LABEL_84;
      case 0xBu:
        v4 = glpSAPostincrement(a1, v2);
        goto LABEL_84;
      case 0xCu:
        v4 = glpSAPostdecrement(a1, v2);
        goto LABEL_84;
      case 0xDu:
        v4 = glpSAPreincrement(a1, v2);
        goto LABEL_84;
      case 0xEu:
        v4 = glpSAPredecrement(a1, v2);
        goto LABEL_84;
      case 0xFu:
        v4 = glpSAUnaryPlus(a1, v2);
        goto LABEL_84;
      case 0x10u:
        v4 = glpSANegate(a1, v2);
        goto LABEL_84;
      case 0x11u:
        v4 = glpSALogicalNot(a1, v2);
        goto LABEL_84;
      case 0x12u:
        v4 = glpSABitwiseNot(a1, v2);
        goto LABEL_84;
      case 0x13u:
        v4 = glpSAMultiply(a1, v2);
        goto LABEL_84;
      case 0x14u:
        v4 = glpSADivide(a1, v2);
        goto LABEL_84;
      case 0x15u:
        v4 = glpSAModulo(a1, v2);
        goto LABEL_84;
      case 0x16u:
        v4 = glpSAAdd(a1, v2);
        goto LABEL_84;
      case 0x17u:
        v4 = glpSASubtract(a1, v2);
        goto LABEL_84;
      case 0x18u:
        v4 = glpSAShiftLeft(a1, v2);
        goto LABEL_84;
      case 0x19u:
        v4 = glpSAShiftRight(a1, v2);
        goto LABEL_84;
      case 0x1Au:
        v4 = glpSALess(a1, v2);
        goto LABEL_84;
      case 0x1Bu:
        v4 = glpSALessEqual(a1, v2);
        goto LABEL_84;
      case 0x1Cu:
        v4 = glpSAGreater(a1, v2);
        goto LABEL_84;
      case 0x1Du:
        v4 = glpSAGreaterEqual(a1, v2);
        goto LABEL_84;
      case 0x1Eu:
        v4 = glpSAEqual(a1, v2);
        goto LABEL_84;
      case 0x1Fu:
        v4 = glpSANotEqual(a1, v2);
        goto LABEL_84;
      case 0x20u:
        v4 = glpSALogicalAnd(a1, v2);
        goto LABEL_84;
      case 0x21u:
        v4 = glpSALogicalOr(a1, v2);
        goto LABEL_84;
      case 0x22u:
        v4 = glpSALogicalXor(a1, v2);
        goto LABEL_84;
      case 0x23u:
        v4 = glpSABitwiseAnd(a1, v2);
        goto LABEL_84;
      case 0x24u:
        v4 = glpSABitwiseOr(a1, v2);
        goto LABEL_84;
      case 0x25u:
        v4 = glpSABitwiseXor(a1, v2);
        goto LABEL_84;
      case 0x26u:
        v4 = glpSAIfExpr(a1, v2);
        goto LABEL_84;
      case 0x27u:
        v4 = glpSAAssign(a1, v2);
        goto LABEL_84;
      case 0x28u:
        v4 = glpSAOpAssign(a1, v2);
        goto LABEL_84;
      case 0x29u:
        glpSAReadInput();
      case 0x2Au:
        glpSAWriteOutput();
      case 0x2Bu:
        v4 = glpSACommaExpr(a1, v2);
        goto LABEL_84;
      case 0x2Cu:
        v4 = glpSAParameterDeclaration(a1, v2);
        goto LABEL_84;
      case 0x2Du:
        v4 = glpSAFunctionPrototype(a1, v2);
        goto LABEL_84;
      case 0x2Eu:
        v4 = glpSAVariableDeclaration(a1, v2);
        goto LABEL_84;
      case 0x2Fu:
        v4 = glpSAVariableDeclarationGroup(a1, v2);
        goto LABEL_84;
      case 0x30u:
        v4 = glpSAPrecisionDeclaration(a1, v2);
        goto LABEL_84;
      case 0x31u:
        v4 = glpSAQualifiedDeclaration(a1, v2);
        goto LABEL_84;
      case 0x32u:
        v4 = glpSAQualifiedDeclarationGroup(a1, v2);
        goto LABEL_84;
      case 0x33u:
        v4 = glpSAFunctionDefinition(a1, v2);
        goto LABEL_84;
      case 0x34u:
        v4 = glpSAQualifiedType(a1, v2);
        goto LABEL_84;
      case 0x35u:
        glpSAPrimitiveType(v2);
        goto LABEL_85;
      case 0x36u:
        v4 = glpSAArrayType(a1, v2);
        goto LABEL_84;
      case 0x37u:
        v4 = glpSAFieldDeclaration(a1, v2);
        goto LABEL_84;
      case 0x38u:
        v4 = glpSAStructType(a1, v2);
        goto LABEL_84;
      case 0x39u:
        v4 = glpSAInterfaceBlock(a1, v2);
        goto LABEL_84;
      case 0x3Au:
        v4 = glpSALayoutType(a1, v2);
        goto LABEL_84;
      case 0x3Bu:
        glpSAKeywordQualifier();
      case 0x3Cu:
        v4 = glpSALayoutQualifier(a1, v2);
        goto LABEL_84;
      case 0x3Du:
        v4 = glpSASubroutineTypeList(a1, v2);
        goto LABEL_84;
      case 0x3Eu:
        v4 = glpSAQualifierList(a1, v2);
        goto LABEL_84;
      case 0x3Fu:
        v4 = glpSAGlobalTypeQualifier(a1, v2);
        goto LABEL_84;
      case 0x40u:
        v4 = glpSALayoutPair(a1, v2);
        goto LABEL_84;
      case 0x41u:
        v4 = glpSAExpressionStatement(a1, v2);
        goto LABEL_84;
      case 0x42u:
        v4 = glpSABlock(a1, v2);
        goto LABEL_84;
      case 0x43u:
        v4 = glpSAIfStatement(a1, v2);
        goto LABEL_84;
      case 0x44u:
        v4 = glpSALoopStatement(a1, v2);
        goto LABEL_84;
      case 0x45u:
        v4 = glpSASwitchStatement(a1, v2);
        goto LABEL_84;
      case 0x46u:
        v4 = glpSACaseStatement(a1, v2);
        goto LABEL_84;
      case 0x47u:
        v4 = glpSADefaultStatement(a1, v2);
        goto LABEL_84;
      case 0x48u:
        v4 = glpSABreakStatement(a1, v2);
        goto LABEL_84;
      case 0x49u:
        v4 = glpSAContinueStatement(a1, v2);
        goto LABEL_84;
      case 0x4Au:
        v4 = glpSADiscardStatement(a1, v2);
        goto LABEL_84;
      case 0x4Bu:
        v4 = glpSAReturnStatement(a1, v2);
        goto LABEL_84;
      case 0x4Cu:
        v4 = glpSATopLevel(a1, v2);
        goto LABEL_84;
      case 0x4Du:
        glpSAAvailabilityDeclaration();
      case 0x4Eu:
        glpSARawCall();
      case 0x4Fu:
        v4 = glpSASubroutineRawCall(a1, v2);
        goto LABEL_84;
      case 0x50u:
        v4 = glpSAOffset(a1, v2);
        goto LABEL_84;
      case 0x51u:
        v4 = glpSALValue(a1, v2);
        goto LABEL_84;
      case 0x52u:
        v4 = glpSARValue(a1, v2);
        goto LABEL_84;
      case 0x53u:
        v4 = glpSAIBPartialDeref(a1, v2);
        goto LABEL_84;
      case 0x54u:
        v4 = glpSAPPStreamOp(a1, v2);
LABEL_84:
        v2 = v4;
LABEL_85:
        if ((v2 + 1) >= 2)
        {
          glpCompilerGetAllocator();
          v6 = v5;
          ValueHash = glpCompilerGetValueHash(a1);
          v2 = glpConstantFold(v6, ValueHash, v2);
        }

        glpCompilerPopSAContext(a1);
        break;
      case 0x55u:
        glpSASubroutineUniform();
      default:
        abort();
    }
  }

  return v2;
}

uint64_t glpSATypeConversion(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {
    v4 = glpTypeConversionNodeGetToType(a2);
    if (glpTypeIsAtomic(v4))
    {
      glpASTNodeSetSaType(a2, v4);
      Expr = glpUnaryOperatorNodeGetExpr(a2);
      SaFlags = glpASTNodeGetSaFlags(Expr);
      v7 = glpTypeConversionNodeGetToPrecision(a2);
      v8 = glpUnaryOperatorNodeGetExpr(a2);
      if (glpIsConstantNode(v8))
      {
        glpSAValidateConstPrecisionConversion(a1, Expr, v7);
      }

      glpASTNodeSetSaFlags(a2, SaFlags & 0x60 | v7);
      return a2;
    }

    else
    {

      return glpLowerNonatomicTypeConversion(a1, a2);
    }
  }
}

uint64_t glpSAVariableIdentifier(uint64_t a1, uint64_t a2)
{
  NameTable = glpCompilerGetNameTable(a1);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  Name = glpVariableIdentifierNodeGetName(a2);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 0x40000000;
  v33[2] = __glpSAVariableIdentifier_block_invoke;
  v33[3] = &unk_278B4C360;
  v33[4] = &v38;
  v33[5] = &v34;
  v33[6] = NameTable;
  glpNameTableGet(NameTable, Name, v6, 0, v33);
  v7 = v35[3];
  if (!v7)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v32);
    glpVariableIdentifierNodeGetName(a2);
    glpVariableIdentifierNodeGetName(a2);
    glpLogMessage(InfoLog, 0, &v32, "Use of undeclared identifier '%.*s'");
    goto LABEL_6;
  }

  v8 = *(v39 + 6);
  if (v8 <= 3)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v28 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v32);
        glpLogMessage(v28, 0, &v32, "You may never refer to an interface block by its block name within a shader");
        goto LABEL_6;
      }

      Representation = glpInterfaceBlockObjectGetRepresentation(v35[3]);
      StructTypeFromIBType = glpGetStructTypeFromIBType(*(v7 + 64));
      v17 = glpVariableIdentifierNodeGetName(a2);
      v19 = v18;
      FieldIndex = glpStructTypeGetFieldIndex(StructTypeFromIBType, v17, v18);
      if (Representation != 1)
      {
        if (Representation)
        {
          goto LABEL_20;
        }

        glpASTNodeGetLocation(a2, &v32);
        LValueForVariableObject = glpMakeLValueForVariableObject(a1, &v32, **(v7 + 72));
        glpCompilerGetAllocator();
        v23 = v22;
        glpASTNodeGetLocation(a2, &v32);
        glpMakeFieldAccessNode(v23, &v32, v17, v19);
        v25 = v24;
        glpFieldAccessNodeSetStructure(v24, LValueForVariableObject);
        a2 = glpSAFieldAccessInternal(a1, v25);
        if (a2 == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_23;
      }

      v29 = FieldIndex;
      glpASTNodeGetLocation(a2, &v32);
      v27 = *(*(v7 + 72) + 8 * v29);
      v26 = a1;
    }

    else
    {
      if (v8)
      {
        if (v8 == 1)
        {
          glpCompilerGetAllocator();
          v13 = v12;
          glpASTNodeGetLocation(a2, &v32);
          glpMakeIBPartialDerefNode(v13, &v32, v7);
          a2 = v14;
          glpASTNodeSetSaType(v14, *(v7 + 64));
        }

        goto LABEL_23;
      }

      glpASTNodeGetLocation(a2, &v32);
      v26 = a1;
      v27 = v7;
    }

    a2 = glpMakeLValueForVariableObject(v26, &v32, v27);
    goto LABEL_23;
  }

  if ((v8 - 4) >= 5)
  {
    if ((v8 - 10) < 4 || v8 == 9)
    {
LABEL_20:
      abort();
    }

LABEL_23:
    v11 = glpCheckIBDeref(a1, a2);
    goto LABEL_24;
  }

  v9 = glpCompilerGetInfoLog(a1);
  glpASTNodeGetLocation(a2, &v32);
  glpVariableIdentifierNodeGetName(a2);
  glpVariableIdentifierNodeGetName(a2);
  glpLogMessage(v9, 0, &v32, "Attempt to use '%.*s' as a variable");
LABEL_6:
  v11 = glpSAFailed();
LABEL_24:
  v30 = v11;
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  return v30;
}

uint64_t glpSATypeIdentifier(uint64_t a1, uint64_t a2)
{
  NameTable = glpCompilerGetNameTable(a1);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  Name = glpTypeIdentifierNodeGetName(a2);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __glpSATypeIdentifier_block_invoke;
  v13[3] = &unk_278B4C388;
  v13[4] = &v18;
  v13[5] = &v14;
  v13[6] = NameTable;
  glpNameTableGet(NameTable, Name, v6, 0, v13);
  v7 = v15[3];
  if (!v7)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v12);
    glpTypeIdentifierNodeGetName(a2);
    glpTypeIdentifierNodeGetName(a2);
    glpLogMessage(InfoLog, 0, &v12, "Use of undeclared type '%.*s'");
    goto LABEL_6;
  }

  v8 = *(v19 + 6);
  if (v8 > 5)
  {
    if (v8 > 7)
    {
      if (v8 != 8)
      {
        if ((v8 - 10) < 4 || v8 == 9)
        {
          abort();
        }

        goto LABEL_7;
      }
    }

    else if (v8 != 6)
    {
      goto LABEL_4;
    }

    glpASTNodeSetSaType(a2, v7);
    goto LABEL_7;
  }

  if (v8 < 6)
  {
LABEL_4:
    v9 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v12);
    glpTypeIdentifierNodeGetName(a2);
    glpTypeIdentifierNodeGetName(a2);
    glpLogMessage(v9, 0, &v12, "Attempt to use '%.*s' as a type");
LABEL_6:
    a2 = glpSAFailed();
  }

LABEL_7:
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return a2;
}

uint64_t glpSAConstant(uint64_t a1)
{
  Type = glpConstantNodeGetType(a1);
  glpASTNodeSetSaType(a1, Type);
  glpASTNodeSetSaFlags(a1, 96);
  return a1;
}

uint64_t glpSAArrayAccess(uint64_t a1, uint64_t a2)
{
  Array = glpArrayAccessNodeGetArray(a2);
  v5 = glpSANode(a1, Array);
  if (v5 != -1)
  {
    glpArrayAccessNodeSetArray(a2, v5);
  }

  Element = glpArrayAccessNodeGetElement(a2);
  v7 = glpSANode(a1, Element);
  if (v7 != -1)
  {
    glpArrayAccessNodeSetElement(a2, v7);
    if (v5 != -1)
    {
      v8 = glpArrayAccessNodeGetArray(a2);
      SaType = glpASTNodeGetSaType(v8);
      if (glpIsIBPartialDerefNode(v8) && glpTypeGetKind(SaType) != 3)
      {
        glpIBPartialDerefNodeGetIb(v8);
        InfoLog = glpCompilerGetInfoLog(a1);
        *&v16 = glpASTNodeGetLocation(a2, &v28).n128_u64[0];
        glpLogMessage(InfoLog, 0, &v28, "You may not index the non-array interface block '%.*s'", v16);
        return glpSAFailed();
      }

      Kind = glpTypeGetKind(SaType);
      if (Kind == 3)
      {
        if (glpIsIBPartialDerefNode(v8))
        {
          NameTable = glpCompilerGetNameTable(a1);
          v22 = (*(**(glpIBPartialDerefNodeGetIb(v8) + 72) + 52) & 1) != 0 && glpNameTableGetGLSLVersion(NameTable) <= 7 && !glpNameTableIsExtensionEnabled(NameTable, 0x13u);
          v23 = glpArrayAccessNodeGetElement(a2);
          v27 = 0;
          glpASTNodeGetLocation(v23, &v28);
          ElementCount = glpBankTypeGetElementCount(SaType);
          v25 = glpCheckArrayIndex(a1, &v28, v23, v22, 0, ElementCount, &v27);
          if (v25 != -1)
          {
            glpIBPartialDerefNodeSetBankIndex(v8, v25);
            ElementType = glpBankTypeGetElementType(SaType);
            glpASTNodeSetSaType(v8, ElementType);
            return glpCheckIBDeref(a1, v8);
          }

          return glpSAFailed();
        }

        v20 = glpBankTypeGetElementType(SaType);
      }

      else
      {
        if (Kind != 2)
        {
          if (!Kind)
          {
            PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
            Category = glpPrimitiveTypeGetCategory(PrimitiveType);
            if (Category == 3)
            {
              v13 = glpIndirectMatrixColumn(a1, a2, PrimitiveType);
              goto LABEL_26;
            }

            if (Category == 2)
            {
              v13 = glpIndirectVectorElement(a1, a2, PrimitiveType);
LABEL_26:
              v8 = v13;
              return glpCheckIBDeref(a1, v8);
            }
          }

          glpCompilerGetAllocator();
          glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v17);
          v18 = glpCompilerGetInfoLog(a1);
          *&v19 = glpASTNodeGetLocation(a2, &v28).n128_u64[0];
          glpLogMessage(v18, 0, &v28, "Can't access array element of type '%.*s'", v19);
          return glpSAFailed();
        }

        v20 = glpArrayTypeGetElementType(SaType);
      }

      v13 = glpIndirectArrayElement(a1, a2, v20);
      goto LABEL_26;
    }
  }

  return glpSAFailed();
}

uint64_t glpSAFieldAccess(uint64_t a1, uint64_t a2)
{
  Structure = glpFieldAccessNodeGetStructure(a2);
  v5 = glpSANode(a1, Structure);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpFieldAccessNodeSetStructure(a2, v5);
    v6 = glpSAFieldAccessInternal(a1, a2);

    return glpCheckIBDeref(a1, v6);
  }
}

uint64_t glpSAUndeterminedCall(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (glpSACall(a1, a2) == -1)
  {
    goto LABEL_21;
  }

  v4 = glpUndeterminedCallNodeGetCallee(v2);
  Kind = glpASTNodeGetKind(v4);
  switch(Kind)
  {
    case 5:
      glpCompilerGetAllocator();
      v26 = v25;
      glpASTNodeGetLocation(v2, &v69);
      Field = glpFieldAccessNodeGetField(v4);
      glpMakeMethodCallNode(v26, &v69, Field, v28);
      v17 = v29;
      Structure = glpFieldAccessNodeGetStructure(v4);
      glpMethodCallNodeSetReceiver(v17, Structure);
      v31 = glpCallNodeGetArgCount(v2);
      if (v31)
      {
        v32 = v31;
        for (i = 0; i != v32; ++i)
        {
          glpCompilerGetAllocator();
          v35 = v34;
          v36 = glpCallNodeGetArg(v2, i);
          glpCallNodeAddArg(v35, v17, v36);
        }
      }

      return glpSANode(a1, v17);
    case 4:
      Array = glpArrayAccessNodeGetArray(v4);
      if (!glpIsVariableIdentifierNode(Array))
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v4, &v69);
        glpLogMessage(InfoLog, 0, &v69, "Call of element of non-subroutine-uniform array");
        return glpSAFailed();
      }

      glpCompilerGetAllocator();
      v13 = v12;
      glpASTNodeGetLocation(v2, &v69);
      Name = glpVariableIdentifierNodeGetName(Array);
      glpMakeSubroutineArrayCallNode(v13, &v69, Name, v15);
      v17 = v16;
      Element = glpArrayAccessNodeGetElement(v4);
      glpSubroutineArrayCallNodeSetIndexExpr(v17, Element);
      v19 = glpCallNodeGetArgCount(v2);
      if (v19)
      {
        v20 = v19;
        for (j = 0; j != v20; ++j)
        {
          glpCompilerGetAllocator();
          v23 = v22;
          v24 = glpCallNodeGetArg(v2, j);
          glpCallNodeAddArg(v23, v17, v24);
        }
      }

      return glpSANode(a1, v17);
    case 1:
      v6 = glpVariableIdentifierNodeGetName(v4);
      v8 = v7;
      NameTable = glpCompilerGetNameTable(a1);
      if (glpNameTableIsExtensionEnabled(NameTable, 0x24u) && glpStringsEqual("$assert", 0x75B16CFF00000007uLL, v6, v8))
      {

        return glpSASpecialAssert(a1, v2);
      }

      if (glpStringsEqual("$ppstreamop", 0xF8DF7DAF0000000BLL, v6, v8))
      {

        return glpSABuiltinPPStreamOp(a1, v2);
      }

      v45 = glpCompilerGetNameTable(a1);
      v69.n128_u64[0] = 0;
      v69.n128_u64[1] = &v69;
      v70 = 0x2000000000;
      v71 = 0;
      v65 = 0;
      v66 = &v65;
      v67 = 0x2000000000;
      v68 = 0;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 0x40000000;
      v64[2] = __glpSAUndeterminedCall_block_invoke;
      v64[3] = &unk_278B4C3B0;
      v64[4] = &v69;
      v64[5] = &v65;
      v64[6] = v45;
      v64[7] = a1;
      glpNameTableGet(v45, v6, v8, 0, v64);
      if (v66[3])
      {
        v46 = *(v69.n128_u64[1] + 24);
        if (v46 > 0xD)
        {
LABEL_39:
          _Block_object_dispose(&v65, 8);
          _Block_object_dispose(&v69, 8);
          return v2;
        }

        v47 = 1 << v46;
        if ((v47 & 0x10F) == 0)
        {
          if ((v47 & 0x90) == 0)
          {
            abort();
          }

          glpCompilerGetAllocator();
          v54 = v53;
          glpASTNodeGetLocation(v2, &v63);
          glpMakeFunctionCallNode(v54, &v63, v6, v8);
          v56 = v55;
          v57 = glpCallNodeGetArgCount(v2);
          if (v57)
          {
            v58 = v57;
            for (k = 0; k != v58; ++k)
            {
              glpCompilerGetAllocator();
              v61 = v60;
              v62 = glpCallNodeGetArg(v2, k);
              glpCallNodeAddArg(v61, v56, v62);
            }
          }

          v52 = glpSANode(a1, v56);
          goto LABEL_38;
        }

        v48 = glpCompilerGetInfoLog(a1);
        *&v49 = glpASTNodeGetLocation(v4, &v63).n128_u64[0];
        glpLogMessage(v48, 0, &v63, "Invalid call of '%.*s' (not a function or subroutine uniform)", v49);
      }

      else
      {
        v50 = glpCompilerGetInfoLog(a1);
        *&v51 = glpASTNodeGetLocation(v4, &v63).n128_u64[0];
        glpLogMessage(v50, 0, &v63, "Invalid call of undeclared identifier '%.*s'", v51);
      }

      v52 = glpSAFailed();
LABEL_38:
      v2 = v52;
      goto LABEL_39;
  }

  v38 = glpSANode(a1, v4);
  if (v38 != -1)
  {
    v39 = v38;
    SaType = glpASTNodeGetSaType(v38);
    glpCompilerGetAllocator();
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v41);
    v42 = glpCompilerGetInfoLog(a1);
    *&v43 = glpASTNodeGetLocation(v39, &v69).n128_u64[0];
    glpLogMessage(v42, 0, &v69, "'%.*s' is not callable", v43);
    return glpSAFailed();
  }

LABEL_21:

  return glpSAFailed();
}

char *glpSAFunctionCall(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (glpSACall(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {
    v4 = glpFunctionCallNodeGetName(a2);
    v6 = v5;
    v7 = glpCallNodeGetArgCount(a2);
    MEMORY[0x28223BE20](v7);
    v9 = (&v21 - v8);
    bzero(&v21 - v8, v10);
    v11 = glpMakeExpectedSignatureFromCall(a1, a2, v9);
    v23[0] = 0;
    if (glpLookUpAndAnalyzeCall(a1, a2, v4, v6, v11, v9, v23) && (v12 = glpFunctionCallNodeGetExtra(a2), v13 = glpCalculateCallPrecision(a1, a2, v12), glpHandleArgumentConversions(a1, a2, v12, v13)))
    {
      v14 = v12[1];
      if ((v14 & 0x4000) != 0)
      {
        return glpLowerCallToBodilessPPStreamOp(a1, a2, v12);
      }

      else if ((v14 & 0x10000) != 0)
      {
        return glpHandleSpecialOperatorFunction(a1, a2, v12);
      }

      else if ((v14 & 0x2000) != 0 && v12[8])
      {
        return glpInlineFunction(a1, a2, v12, v13);
      }

      else
      {
        v16 = v23[0];
        glpCompilerGetAllocator();
        v18 = v17;
        glpASTNodeGetLocation(a2, &v22);
        if (v16)
        {
          glpMakeSubroutineRawCallNode(v18, &v22, v23[0]);
        }

        else
        {
          v20 = glpFunctionCallNodeGetExtra(a2);
          glpMakeRawCallNode(v18, &v22, v4, v6, v20);
        }

        return glpSALowerCallArgsToAssignment(a1, a2, v12, v19);
      }
    }

    else
    {
      return glpSAFailed();
    }
  }
}

uint64_t glpSASubroutineArrayCall(uint64_t a1, uint64_t a2)
{
  if (glpSACall(a1, a2) != -1)
  {
    v4 = glpSubroutineArrayCallNodeGetIndexExpr(a2);
    v5 = glpSANode(a1, v4);
    if (v5 != -1)
    {
      glpSubroutineArrayCallNodeSetIndexExpr(a2, v5);
      v6 = glpSubroutineArrayCallNodeGetName(a2);
      v8 = v7;
      NameTable = glpCompilerGetNameTable(a1);
      v40 = 0;
      v41 = &v40;
      v42 = 0x2000000000;
      v43 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2000000000;
      v39 = 0;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 0x40000000;
      v35[2] = __glpSASubroutineArrayCall_block_invoke;
      v35[3] = &unk_278B4C3D8;
      v35[4] = &v40;
      v35[5] = &v36;
      glpNameTableGet(NameTable, v6, v8, 0, v35);
      v10 = v37[3];
      if (v10 && *(v41 + 6) == 7)
      {
        v11 = *(v10 + 16);
        if (glpTypeGetKind(v11) == 2)
        {
          v12 = glpSubroutineArrayCallNodeGetIndexExpr(a2);
          v33 = 0;
          glpASTNodeGetLocation(v12, &v34);
          ElementCount = glpArrayTypeGetElementCount(v11);
          v14 = glpCheckArrayIndex(a1, &v34, v12, 0, 0, ElementCount, &v33);
          if (v14 != -1)
          {
            v15 = v14;
            ElementType = glpArrayTypeGetElementType(v11);
            FunctionObject = glpSubroutineTypeGetFunctionObject(ElementType);
            if (glpAnalyzeCallToSubroutineArray(a1, FunctionObject, a2))
            {
              ReturnType = glpFunctionTypeGetReturnType(*FunctionObject);
              glpASTNodeSetSaType(a2, ReturnType);
              v19 = glpCalculateCallPrecision(a1, a2, FunctionObject);
              if (glpHandleArgumentConversions(a1, a2, FunctionObject, v19))
              {
                glpCompilerGetAllocator();
                v21 = v20;
                glpASTNodeGetLocation(a2, &v34);
                glpMakeSubroutineRawCallNode(v21, &v34, v10);
                v23 = v22;
                glpSubroutineRawCallNodeSetIndexExpr(v22, v15);
                v24 = glpSALowerCallArgsToAssignment(a1, a2, FunctionObject, v23);
LABEL_15:
                v28 = v24;
                _Block_object_dispose(&v36, 8);
                _Block_object_dispose(&v40, 8);
                return v28;
              }
            }

            else
            {
              glpSubroutineTypeGetName(ElementType);
              InfoLog = glpCompilerGetInfoLog(a1);
              *&v32 = glpASTNodeGetLocation(a2, &v34).n128_u64[0];
              glpLogMessage(InfoLog, 0, &v34, "Arguments of call to subroutine uniform array '%.*s' cannot be converted to match its element type ('%.*s')", v32);
            }
          }
        }

        else
        {
          v29 = glpCompilerGetInfoLog(a1);
          *&v30 = glpASTNodeGetLocation(a2, &v34).n128_u64[0];
          glpLogMessage(v29, 0, &v34, "'%.*s' does not name a subroutine array", v30);
        }
      }

      else
      {
        v26 = glpCompilerGetInfoLog(a1);
        *&v27 = glpASTNodeGetLocation(a2, &v34).n128_u64[0];
        glpLogMessage(v26, 0, &v34, "'%.*s' does not name a subroutine uniform", v27);
      }

      v24 = glpSAFailed();
      goto LABEL_15;
    }
  }

  return glpSAFailed();
}

uint64_t glpSAMethodCall(uint64_t a1, uint64_t a2)
{
  if (glpSACall(a1, a2) != -1)
  {
    v70 = 0uLL;
    v71 = 0;
    glpASTNodeGetLocation(a2, &v70);
    v4 = glpMethodCallNodeGetName(a2);
    v6 = v5;
    NameTable = glpCompilerGetNameTable(a1);
    if (glpNameTableGetGLSLVersion(NameTable) < 2)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v67 = v70;
      v68 = v71;
      glpLogMessage(InfoLog, 0, &v67, "Method calls not allowed in this GLSL version");
      return glpSAFailed();
    }

    if (!glpStringsEqual("length", 0x9836E88D00000006, v4, v6))
    {
      v11 = glpCompilerGetInfoLog(a1);
      v67 = v70;
      v68 = v71;
      glpLogMessage(v11, 0, &v67, "Call of unknown method '%.*s'");
      return glpSAFailed();
    }

    if (glpCallNodeGetArgCount(a2))
    {
      v10 = glpCompilerGetInfoLog(a1);
      v67 = v70;
      v68 = v71;
      glpLogMessage(v10, 0, &v67, ".length() method takes no arguments");
      return glpSAFailed();
    }

    v13 = glpMethodCallNodeGetReceiver(a2);
    if (!glpIsVariableIdentifierNode(v13))
    {
LABEL_26:
      v33 = glpMethodCallNodeGetReceiver(a2);
      v34 = glpSANode(a1, v33);
      if (v34 != -1)
      {
        glpMethodCallNodeSetReceiver(a2, v34);
        v35 = glpMethodCallNodeGetReceiver(a2);
        SaType = glpASTNodeGetSaType(v35);
        if (glpTypeGetKind(SaType) == 2)
        {
          if (glpArrayTypeGetElementCount(SaType) == -1)
          {
            v57 = glpCompilerGetInfoLog(a1);
            v67 = v70;
            v68 = v71;
            glpLogMessage(v57, 0, &v67, "Call to method '%.*s' of unsized array");
            return glpSAFailed();
          }

          PrimitiveType = glpGetPrimitiveType(5u);
          glpCompilerGetAllocator();
          v39 = v38;
          ElementCount = glpArrayTypeGetElementCount(SaType);
          MutableValue = glpMakeMutableValue(v39, PrimitiveType, 1, v40, v41, v42, v43, v44, ElementCount);
        }

        else
        {
          if (glpTypeGetKind(SaType) != 3)
          {
            glpCompilerGetAllocator();
            glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v55);
            v56 = glpCompilerGetInfoLog(a1);
            v67 = v70;
            v68 = v71;
            glpLogMessage(v56, 0, &v67, "Call to method '%.*s' of non-array type '%.*s'");
            return glpSAFailed();
          }

          v46 = glpBankTypeGetElementCount(SaType);
          if (v46 == -1)
          {
            v58 = glpCompilerGetInfoLog(a1);
            v67 = v70;
            v68 = v71;
            glpLogMessage(v58, 0, &v67, "Call to method '%.*s' of unsized interface block array");
            return glpSAFailed();
          }

          v47 = v46;
          PrimitiveType = glpGetPrimitiveType(5u);
          glpCompilerGetAllocator();
          MutableValue = glpMakeMutableValue(v48, PrimitiveType, 1, v49, v50, v51, v52, v53, v47);
        }

        v54 = glpCompilerRemapValue(a1, PrimitiveType, MutableValue);
        v67 = v70;
        v68 = v71;
        return glpMakeConstantValueFragment(a1, &v67, PrimitiveType, v54);
      }

      return glpSAFailed();
    }

    v67.n128_u64[0] = 0;
    v67.n128_u64[1] = &v67;
    v68 = 0x2000000000;
    v69 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2000000000;
    v66 = 0;
    v14 = glpCompilerGetNameTable(a1);
    Name = glpVariableIdentifierNodeGetName(v13);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 0x40000000;
    v62[2] = __glpSAMethodCall_block_invoke;
    v62[3] = &unk_278B4C400;
    v62[4] = &v67;
    v62[5] = &v63;
    glpNameTableGet(v14, Name, v16, 0, v62);
    v17 = v64[3];
    if (!v17 || *(v67.n128_u64[1] + 24) != 1)
    {
      v30 = 1;
      goto LABEL_25;
    }

    if (glpTypeGetKind(*(v17 + 64)) == 3)
    {
      if (glpBankTypeGetElementCount(*(v17 + 64)) != -1)
      {
        v18 = glpGetPrimitiveType(5u);
        glpCompilerGetAllocator();
        v20 = v19;
        v21 = glpBankTypeGetElementCount(*(v17 + 64));
        v27 = glpMakeMutableValue(v20, v18, 1, v22, v23, v24, v25, v26, v21);
        v28 = glpCompilerRemapValue(a1, v18, v27);
        v60 = v70;
        v61 = v71;
        ConstantValueFragment = glpMakeConstantValueFragment(a1, &v60, v18, v28);
LABEL_24:
        v13 = ConstantValueFragment;
        v30 = 0;
LABEL_25:
        _Block_object_dispose(&v63, 8);
        _Block_object_dispose(&v67, 8);
        if (!v30)
        {
          return v13;
        }

        goto LABEL_26;
      }

      v32 = glpCompilerGetInfoLog(a1);
      glpLogMessage(v32, 0, &v60, "Call to method '%.*s' of unsized interface block");
    }

    else
    {
      v31 = glpCompilerGetInfoLog(a1);
      glpVariableIdentifierNodeGetName(v13);
      glpVariableIdentifierNodeGetName(v13);
      glpLogMessage(v31, 0, &v60, "Call to method '%.*s' of non-array interface block '%.*s'");
    }

    ConstantValueFragment = glpSAFailed();
    goto LABEL_24;
  }

  return glpSAFailed();
}

uint64_t glpSAConstructorCall(uint64_t a1, uint64_t a2)
{
  if (glpSACall(a1, a2) == -1 || (v4 = glpConstructorCallNodeGetType(a2), v5 = glpSANode(a1, v4), v5 == -1) || (glpConstructorCallNodeSetType(a2, v5), result = glpCheckAndSanitizeConstructorCall(a1, a2), result == -1))
  {

    return glpSAFailed();
  }

  return result;
}

uint64_t glpSAPostincrement(uint64_t a1, uint64_t a2)
{
  if (glpSAIncrementOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpSAPostIncrementOrDecrement(a1, a2, 1);
  }
}

uint64_t glpSAPostdecrement(uint64_t a1, uint64_t a2)
{
  if (glpSAIncrementOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpSAPostIncrementOrDecrement(a1, a2, 0);
  }
}

uint64_t glpSAPreincrement(uint64_t a1, uint64_t a2)
{
  if (glpSAIncrementOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpSAPreIncrementOrDecrement(a1, a2, 1);
  }
}

uint64_t glpSAPredecrement(uint64_t a1, uint64_t a2)
{
  if (glpSAIncrementOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpSAPreIncrementOrDecrement(a1, a2, 0);
  }
}

uint64_t glpSAUnaryPlus(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeUnaryMathOp(a1, a2);
  }
}

uint64_t glpSANegate(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeUnaryMathOp(a1, a2);
  }
}

uint64_t glpSALogicalNot(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeUnaryMathOp(a1, a2);
  }
}

uint64_t glpSABitwiseNot(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeUnaryMathOp(a1, a2);
  }
}

uint64_t glpSAMultiply(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSADivide(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAModulo(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAAdd(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSASubtract(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAShiftLeft(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAShiftRight(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSALess(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    PrimitiveType = glpGetPrimitiveType(9u);
    glpASTNodeSetSaType(v5, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1))
    {
      SaFlags = glpASTNodeGetSaFlags(v5);
      glpASTNodeSetSaFlags(v5, SaFlags & 0xFFFFFFFFFFFFFFE0);
    }

    return v5;
  }
}

uint64_t glpSALessEqual(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    PrimitiveType = glpGetPrimitiveType(9u);
    glpASTNodeSetSaType(v5, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1))
    {
      SaFlags = glpASTNodeGetSaFlags(v5);
      glpASTNodeSetSaFlags(v5, SaFlags & 0xFFFFFFFFFFFFFFE0);
    }

    return v5;
  }
}

uint64_t glpSAGreater(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    PrimitiveType = glpGetPrimitiveType(9u);
    glpASTNodeSetSaType(v5, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1))
    {
      SaFlags = glpASTNodeGetSaFlags(v5);
      glpASTNodeSetSaFlags(v5, SaFlags & 0xFFFFFFFFFFFFFFE0);
    }

    return v5;
  }
}

uint64_t glpSAGreaterEqual(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    PrimitiveType = glpGetPrimitiveType(9u);
    glpASTNodeSetSaType(v5, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1))
    {
      SaFlags = glpASTNodeGetSaFlags(v5);
      glpASTNodeSetSaFlags(v5, SaFlags & 0xFFFFFFFFFFFFFFE0);
    }

    return v5;
  }
}

uint64_t glpSAEqual(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) != -1)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(a2);
    Rhs = glpBinaryOperatorNodeGetRhs(a2);
    SaType = glpASTNodeGetSaType(Lhs);
    if (glpTypeGetKind(SaType))
    {
      if (glpEqualNodeGetIsFromSource(a2))
      {
        v7 = glpASTNodeGetSaType(Lhs);
        if (glpTypeGetKind(v7) == 2)
        {
          NameTable = glpCompilerGetNameTable(a1);
          if (glpNameTableGetGLSLVersion(NameTable) <= 1)
          {
            InfoLog = glpCompilerGetInfoLog(a1);
            *&v10 = glpASTNodeGetLocation(a2, &v39).n128_u64[0];
            glpLogMessage(InfoLog, 0, &v39, "'==' disallowed on array types", v10);
            return glpSAFailed();
          }
        }
      }

      v11 = glpASTNodeGetSaType(Lhs);
      v12 = glpASTNodeGetSaType(Rhs);
      if (!glpTypesEqual(v11, v12))
      {
        v29 = glpCompilerGetInfoLog(a1);
        *&v30 = glpASTNodeGetLocation(a2, &v39).n128_u64[0];
        glpLogMessage(v29, 0, &v39, "Incompatible types in '=='", v30);
        return glpSAFailed();
      }

      v39 = 0uLL;
      v40 = 0;
      glpASTNodeGetLocation(a2, &v39);
      glpCompilerGetAllocator();
      v37 = v39;
      v38 = v40;
      glpMakeCommaExprNode(v13, &v37, 0);
      v15 = v14;
      v35 = 0;
      v36 = 0;
      glpHandleSideEffectsForExpr(a1, Lhs, &v36, &v35);
      if (v35)
      {
        glpCompilerGetAllocator();
        glpCommaExprNodeAddExpr(v16, v15, v35);
        v35 = 0;
      }

      v33 = 0;
      v34 = 0;
      glpHandleSideEffectsForExpr(a1, Rhs, &v34, &v33);
      if (v33)
      {
        glpCompilerGetAllocator();
        glpCommaExprNodeAddExpr(v17, v15, v33);
        v33 = 0;
      }

      AccessorCount = glpGetAccessorCount(v36);
      if (AccessorCount)
      {
        v19 = AccessorCount;
        v20 = 0;
        v21 = 0;
        do
        {
          Accessor = glpMakeAccessor(a1, v36, v20);
          v23 = glpMakeAccessor(a1, v34, v20);
          v37 = v39;
          v38 = v40;
          EqualFragment = glpMakeEqualFragment(a1, &v37, Accessor, v23);
          if (v21)
          {
            v37 = v39;
            v38 = v40;
            EqualFragment = glpMakeLogicalAndFragment(a1, &v37, v21, EqualFragment);
          }

          v20 = (v20 + 1);
          v21 = EqualFragment;
        }

        while (v19 != v20);
      }

      else
      {
        EqualFragment = 0;
      }

      glpCompilerGetAllocator();
      glpCommaExprNodeAddExpr(v31, v15, EqualFragment);
      v26 = glpSANode(a1, v15);
LABEL_27:
      if (glpCompilerDoesTrackPrecision(a1))
      {
        SaFlags = glpASTNodeGetSaFlags(v26);
        glpASTNodeSetSaFlags(v26, SaFlags & 0xFFFFFFFFFFFFFFE0);
      }

      return v26;
    }

    v25 = glpAnalyzeBinaryMathOp(a1, a2);
    if (v25 != -1)
    {
      v26 = v25;
      PrimitiveType = glpGetPrimitiveType(9u);
      glpASTNodeSetSaType(v26, PrimitiveType);
      goto LABEL_27;
    }
  }

  return glpSAFailed();
}

uint64_t glpSANotEqual(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) != -1)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(a2);
    Rhs = glpBinaryOperatorNodeGetRhs(a2);
    SaType = glpASTNodeGetSaType(Lhs);
    if (glpTypeGetKind(SaType))
    {
      if (glpNotEqualNodeGetIsFromSource(a2))
      {
        v7 = glpASTNodeGetSaType(Lhs);
        if (glpTypeGetKind(v7) == 2)
        {
          NameTable = glpCompilerGetNameTable(a1);
          if (glpNameTableGetGLSLVersion(NameTable) <= 1)
          {
            InfoLog = glpCompilerGetInfoLog(a1);
            *&v10 = glpASTNodeGetLocation(a2, &v39).n128_u64[0];
            glpLogMessage(InfoLog, 0, &v39, "'!=' disallowed on array types", v10);
            return glpSAFailed();
          }
        }
      }

      v11 = glpASTNodeGetSaType(Lhs);
      v12 = glpASTNodeGetSaType(Rhs);
      if (!glpTypesEqual(v11, v12))
      {
        v29 = glpCompilerGetInfoLog(a1);
        *&v30 = glpASTNodeGetLocation(a2, &v39).n128_u64[0];
        glpLogMessage(v29, 0, &v39, "Incompatible types in '!='", v30);
        return glpSAFailed();
      }

      v39 = 0uLL;
      v40 = 0;
      glpASTNodeGetLocation(a2, &v39);
      glpCompilerGetAllocator();
      v37 = v39;
      v38 = v40;
      glpMakeCommaExprNode(v13, &v37, 0);
      v15 = v14;
      v35 = 0;
      v36 = 0;
      glpHandleSideEffectsForExpr(a1, Lhs, &v36, &v35);
      if (v35)
      {
        glpCompilerGetAllocator();
        glpCommaExprNodeAddExpr(v16, v15, v35);
        v35 = 0;
      }

      v33 = 0;
      v34 = 0;
      glpHandleSideEffectsForExpr(a1, Rhs, &v34, &v33);
      if (v33)
      {
        glpCompilerGetAllocator();
        glpCommaExprNodeAddExpr(v17, v15, v33);
        v33 = 0;
      }

      AccessorCount = glpGetAccessorCount(v36);
      if (AccessorCount)
      {
        v19 = AccessorCount;
        v20 = 0;
        v21 = 0;
        do
        {
          Accessor = glpMakeAccessor(a1, v36, v20);
          v23 = glpMakeAccessor(a1, v34, v20);
          v37 = v39;
          v38 = v40;
          NotEqualFragment = glpMakeNotEqualFragment(a1, &v37, Accessor, v23);
          if (v21)
          {
            v37 = v39;
            v38 = v40;
            NotEqualFragment = glpMakeLogicalOrFragment(a1, &v37, v21, NotEqualFragment);
          }

          v20 = (v20 + 1);
          v21 = NotEqualFragment;
        }

        while (v19 != v20);
      }

      else
      {
        NotEqualFragment = 0;
      }

      glpCompilerGetAllocator();
      glpCommaExprNodeAddExpr(v31, v15, NotEqualFragment);
      v26 = glpSANode(a1, v15);
LABEL_27:
      if (glpCompilerDoesTrackPrecision(a1))
      {
        SaFlags = glpASTNodeGetSaFlags(v26);
        glpASTNodeSetSaFlags(v26, SaFlags & 0xFFFFFFFFFFFFFFE0);
      }

      return v26;
    }

    v25 = glpAnalyzeBinaryMathOp(a1, a2);
    if (v25 != -1)
    {
      v26 = v25;
      PrimitiveType = glpGetPrimitiveType(9u);
      glpASTNodeSetSaType(v26, PrimitiveType);
      goto LABEL_27;
    }
  }

  return glpSAFailed();
}

uint64_t glpSALogicalAnd(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    SaType = glpASTNodeGetSaType(v4);
    PrimitiveType = glpGetPrimitiveType(9u);
    if (!glpTypesEqual(SaType, PrimitiveType))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      *&v9 = glpASTNodeGetLocation(v5, &v11).n128_u64[0];
      glpLogMessage(InfoLog, 0, &v11, "logical operator must be of type BOOL", v9);
      return glpSAFailed();
    }

    return v5;
  }
}

uint64_t glpSALogicalOr(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    SaType = glpASTNodeGetSaType(v4);
    PrimitiveType = glpGetPrimitiveType(9u);
    if (!glpTypesEqual(SaType, PrimitiveType))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      *&v9 = glpASTNodeGetLocation(v5, &v11).n128_u64[0];
      glpLogMessage(InfoLog, 0, &v11, "logical operator must be of type BOOL", v9);
      return glpSAFailed();
    }

    return v5;
  }
}

uint64_t glpSALogicalXor(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    SaType = glpASTNodeGetSaType(v4);
    PrimitiveType = glpGetPrimitiveType(9u);
    if (!glpTypesEqual(SaType, PrimitiveType))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      *&v9 = glpASTNodeGetLocation(v5, &v11).n128_u64[0];
      glpLogMessage(InfoLog, 0, &v11, "logical operator must be of type BOOL", v9);
      return glpSAFailed();
    }

    return v5;
  }
}

uint64_t glpSABitwiseAnd(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSABitwiseOr(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSABitwiseXor(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAIfExpr(uint64_t a1, uint64_t a2)
{
  Condition = glpIfExprNodeGetCondition(a2);
  v5 = glpSANode(a1, Condition);
  v6 = v5 == -1;
  if (v5 != -1)
  {
    glpIfExprNodeSetCondition(a2, v5);
  }

  IfExpr = glpIfExprNodeGetIfExpr(a2);
  v8 = glpSANode(a1, IfExpr);
  if (v8 == -1)
  {
    v6 = 1;
  }

  else
  {
    glpIfExprNodeSetIfExpr(a2, v8);
  }

  ElseExpr = glpIfExprNodeGetElseExpr(a2);
  v10 = glpSANode(a1, ElseExpr);
  if (v10 == -1 || (glpIfExprNodeSetElseExpr(a2, v10), v6))
  {

    return glpSAFailed();
  }

  v12 = glpIfExprNodeGetCondition(a2);
  SaType = glpASTNodeGetSaType(v12);
  PrimitiveType = glpGetPrimitiveType(9u);
  if (!glpTypesEqual(SaType, PrimitiveType))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    *&v28 = glpASTNodeGetLocation(a2, &v55).n128_u64[0];
    glpLogMessage(InfoLog, 0, &v55, "Condition must be of type BOOL", v28);
    return glpSAFailed();
  }

  v15 = glpIfExprNodeGetIfExpr(a2);
  v16 = glpIfExprNodeGetElseExpr(a2);
  v17 = glpASTNodeGetSaType(v15);
  v18 = glpASTNodeGetSaType(v16);
  v19 = glpASTNodeGetSaFlags(v15) & 0x1F;
  v20 = glpASTNodeGetSaFlags(v16) & 0x1F;
  if (glpTypesEqual(v17, v18))
  {
    goto LABEL_13;
  }

  if (glpTypeGetKind(v17) || glpTypeGetKind(v18))
  {
    v29 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v55);
    glpLogMessage(v29, 0, &v55, "Types in conditional operator do not match");
    return glpSAFailed();
  }

  ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
  v48 = glpPrimitiveTypeGetPrimitiveType(v17);
  v49 = glpPrimitiveTypeGetPrimitiveType(v18);
  v54 = v49;
  if (glpCanConvert(v49, v48, ImplicitConversionPolicy))
  {
    v50 = glpConvert(a1, v16, v17, v19);
    glpIfExprNodeSetElseExpr(a2, v50);
  }

  else
  {
    if (!glpCanConvert(v48, v54, ImplicitConversionPolicy))
    {
      v52 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v55);
      glpPrimitiveTypeToString(v48);
      glpPrimitiveTypeToString(v54);
      glpLogMessage(v52, 0, &v55, "Types '%s' and '%s' in conditional operator do not match (and no applicable implicit type conversion)", v53);
      return glpSAFailed();
    }

    v51 = glpConvert(a1, v15, v18, v20);
    glpIfExprNodeSetIfExpr(a2, v51);
  }

LABEL_13:
  if (v19 != v20)
  {
    if (v19 != 31 && v19)
    {
      if (v19 <= v20)
      {
        v15 = glpConvert(a1, v15, v17, v20);
        glpIfExprNodeSetIfExpr(a2, v15);
      }

      else
      {
        v16 = glpConvert(a1, v16, v18, v19);
        glpIfExprNodeSetElseExpr(a2, v16);
      }
    }

    else
    {
      glpPushdownPrecision(a1, v15, v20);
    }
  }

  glpCompilerGetAllocator();
  v22 = v21;
  ValueHash = glpCompilerGetValueHash(a1);
  v24 = glpIfExprNodeGetCondition(a2);
  v25 = glpConstantFold(v22, ValueHash, v24);
  if (!glpIsConstantNode(v25))
  {
    glpCompilerGetAllocator();
    v32 = v31;
    glpASTNodeGetLocation(a2, &v55);
    glpMakeTypeIdentifierNode(v32, &v55, "<<BUG: placeholder type still exists>>", 0x781A7BE300000026);
    v34 = v33;
    v35 = glpIfExprNodeGetIfExpr(a2);
    v36 = glpASTNodeGetSaType(v35);
    glpASTNodeSetSaType(v34, v36);
    glpASTNodeSetSaFlags(v34, v19);
    v37 = glpIfExprNodeGetCondition(a2);
    v38 = glpASTNodeGetSaFlags(v37) | 0x1F;
    SaFlags = glpASTNodeGetSaFlags(v15);
    v40 = SaFlags & glpASTNodeGetSaFlags(v16);
    glpASTNodeGetLocation(a2, &v55);
    v41 = glpCompilerNewTempName(a1);
    v43 = v42;
    v44 = glpIfExprNodeGetCondition(a2);
    v45 = glpIfExprNodeGetIfExpr(a2);
    v46 = glpIfExprNodeGetElseExpr(a2);
    IfExprFragment = glpMakeIfExprFragment(a1, &v55, v41, v43, v34, v44, v45, v46);
    glpASTNodeSetSaFlags(v34, v38 & v40);
    return IfExprFragment;
  }

  if (*glpConstantNodeGetValue(v25))
  {
    v26 = glpIfExprNodeGetIfExpr(a2);
  }

  else
  {
    v26 = glpIfExprNodeGetElseExpr(a2);
  }

  return glpSANode(a1, v26);
}

uint64_t glpSAAssign(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (glpSABinaryOperator(a1, a2) != -1)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(v2);
    Rhs = glpBinaryOperatorNodeGetRhs(v2);
    if (!glpIsLValueNode(Lhs))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      *&v10 = glpASTNodeGetLocation(v2, &v89).n128_u64[0];
      glpLogMessage(InfoLog, 0, &v89, "Left-hand-side of assignment must be an lvalue", v10);
      return glpSAFailed();
    }

    if ((glpASTNodeGetSaFlags(Lhs) & 0x60) != 0)
    {
      v6 = glpCompilerGetInfoLog(a1);
      *&v7 = glpASTNodeGetLocation(v2, &v89).n128_u64[0];
      glpLogMessage(v6, 0, &v89, "Left-hand-side of assignment must not be const", v7);
      return glpSAFailed();
    }

    if ((glpASTNodeGetSaFlags(Lhs) & 0x300) != 0)
    {
      v11 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v89);
      glpLogMessage(v11, 0, &v89, "Left-hand-side of assignment must not be read-only");
      return glpSAFailed();
    }

    if (glpAssignNodeGetIsFromSource(v2))
    {
      SaType = glpASTNodeGetSaType(Lhs);
      if (glpTypeGetSamplerCount(SaType))
      {
        v13 = glpCompilerGetInfoLog(a1);
        *&v14 = glpASTNodeGetLocation(v2, &v89).n128_u64[0];
        glpLogMessage(v13, 0, &v89, "Cannot assign samplers", v14);
        return glpSAFailed();
      }
    }

    v15 = glpASTNodeGetSaType(Lhs);
    if (glpTypeGetKind(v15) != 1)
    {
      v16 = glpASTNodeGetSaType(Lhs);
      if (glpTypeGetKind(v16) != 2)
      {
        v17 = glpASTNodeGetSaType(Lhs);
        if (glpTypeGetKind(v17))
        {
          v18 = glpCompilerGetInfoLog(a1);
          *&v19 = glpASTNodeGetLocation(v2, &v89).n128_u64[0];
          glpLogMessage(v18, 0, &v89, "You can't assign non-struct non-primitives directly.", v19);
          return glpSAFailed();
        }
      }
    }

    v20 = glpASTNodeGetSaType(Lhs);
    v21 = glpASTNodeGetSaType(Rhs);
    if (!glpTypesEqual(v20, v21))
    {
      v26 = glpASTNodeGetSaType(Lhs);
      if (glpTypeGetKind(v26) || (v27 = glpASTNodeGetSaType(Rhs), glpTypeGetKind(v27)))
      {
        v28 = glpASTNodeGetSaType(Lhs);
        glpCompilerGetAllocator();
        glpTypeHumanReadableDescription(v28, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v29);
        v30 = glpASTNodeGetSaType(Rhs);
        glpCompilerGetAllocator();
        glpTypeHumanReadableDescription(v30, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v31);
        v32 = glpCompilerGetInfoLog(a1);
        *&v33 = glpASTNodeGetLocation(v2, &v89).n128_u64[0];
        glpLogMessage(v32, 0, &v89, "Incompatible types (%.*s and %.*s) in assignment", v33);
        return glpSAFailed();
      }

      v70 = glpASTNodeGetSaType(Lhs);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v70);
      v72 = glpASTNodeGetSaType(Rhs);
      v73 = glpPrimitiveTypeGetPrimitiveType(v72);
      ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
      LODWORD(v73) = glpCanConvert(v73, PrimitiveType, ImplicitConversionPolicy);
      v75 = glpASTNodeGetSaType(Lhs);
      if (!v73)
      {
        glpCompilerGetAllocator();
        glpTypeHumanReadableDescription(v75, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v78);
        v79 = glpASTNodeGetSaType(Rhs);
        glpCompilerGetAllocator();
        glpTypeHumanReadableDescription(v79, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v80);
        v81 = glpCompilerGetInfoLog(a1);
        *&v82 = glpASTNodeGetLocation(v2, &v89).n128_u64[0];
        glpLogMessage(v81, 0, &v89, "Incompatible types (%.*s and %.*s) in assignment (and no available implicit conversion)", v82);
        return glpSAFailed();
      }

      SaFlags = glpASTNodeGetSaFlags(Lhs);
      v77 = glpConvert(a1, Rhs, v75, SaFlags & 0x1F);
      glpBinaryOperatorNodeSetRhs(v2, v77);
    }

    v22 = glpASTNodeGetSaFlags(Rhs) & 0x1F;
    v23 = glpASTNodeGetSaType(Lhs);
    if (glpTypeIsAtomic(v23) && (glpASTNodeGetSaFlags(Lhs) & 0x1F) != v22)
    {
      if (v22 != 31 && v22)
      {
        if ((glpASTNodeGetSaFlags(Lhs) & 0x1F) != 0)
        {
          v68 = glpASTNodeGetSaType(Lhs);
          v69 = glpASTNodeGetSaFlags(Lhs);
          Rhs = glpConvert(a1, Rhs, v68, v69 & 0x1F);
          glpBinaryOperatorNodeSetRhs(v2, Rhs);
        }

        else
        {
          glpASTNodeGetSaFlags(Rhs);
        }

LABEL_33:
        if (glpDerefNodeGetOffset(Lhs))
        {
          Offset = glpDerefNodeGetOffset(Lhs);
          Swizzle = glpOffsetNodeGetSwizzle(Offset);
          if (glpSwizzleHasDuplicateComponents(Swizzle))
          {
            v37 = glpCompilerGetInfoLog(a1);
            *&v38 = glpASTNodeGetLocation(v2, &v89).n128_u64[0];
            glpLogMessage(v37, 0, &v89, "Destination swizzle may not have duplicate components", v38);
            return glpSAFailed();
          }
        }

        v39 = glpASTNodeGetSaType(Lhs);
        glpASTNodeSetSaType(v2, v39);
        v40 = glpASTNodeGetSaType(Lhs);
        if (glpTypeIsAtomic(v40))
        {
          if (!*(glpLValueNodeGetVariableExtra(Lhs) + 8) || (VariableExtra = glpLValueNodeGetVariableExtra(Lhs), !glpLayoutObjectFind(*(VariableExtra + 8), 29)))
          {
LABEL_53:
            if (glpIsBinaryOperatorNode(v2))
            {
              Expr = glpBinaryOperatorNodeGetLhs(v2);
            }

            else
            {
              if (!glpIsCommaExprNode(v2))
              {
                v67 = v2;
                v66 = 0;
                goto LABEL_58;
              }

              ExprCount = glpCommaExprNodeGetExprCount(v2);
              Expr = glpCommaExprNodeGetExpr(v2, ExprCount - 1);
            }

            v66 = glpASTNodeGetSaFlags(Expr) & 0x1F;
            v67 = v2;
LABEL_58:
            glpASTNodeSetSaFlags(v67, v66);
            return v2;
          }

          v42 = glpASTNodeGetSaType(Lhs);
          v43 = glpDerefNodeGetOffset(Lhs);
          OffsetExpr = glpOffsetNodeGetOffsetExpr(v43);
          v45 = glpHandleGetterSetter(a1, Lhs, v42, OffsetExpr, Rhs, "setter", 6, 0);
        }

        else
        {
          if (glpAssignNodeGetIsFromSource(v2))
          {
            v46 = glpASTNodeGetSaType(Lhs);
            if (glpTypeGetKind(v46) == 2)
            {
              NameTable = glpCompilerGetNameTable(a1);
              if (glpNameTableGetGLSLVersion(NameTable) <= 1)
              {
                v48 = glpCompilerGetInfoLog(a1);
                *&v49 = glpASTNodeGetLocation(v2, &v89).n128_u64[0];
                glpLogMessage(v48, 0, &v89, "'=' disallowed on array types", v49);
                return glpSAFailed();
              }
            }
          }

          v89 = 0uLL;
          v90 = 0;
          glpASTNodeGetLocation(v2, &v89);
          glpCompilerGetAllocator();
          v87 = v89;
          v88 = v90;
          glpMakeCommaExprNode(v50, &v87, 0);
          v52 = v51;
          v85 = 0;
          v86 = 0;
          glpHandleSideEffectsForExpr(a1, Lhs, &v86, &v85);
          if (v85)
          {
            glpCompilerGetAllocator();
            glpCommaExprNodeAddExpr(v53, v52, v85);
            v85 = 0;
          }

          v83 = 0;
          v84 = 0;
          glpHandleSideEffectsForExpr(a1, Rhs, &v84, &v83);
          if (v83)
          {
            glpCompilerGetAllocator();
            glpCommaExprNodeAddExpr(v54, v52, v83);
            v83 = 0;
          }

          AccessorCount = glpGetAccessorCount(v86);
          if (AccessorCount)
          {
            v56 = AccessorCount;
            v57 = 0;
            do
            {
              glpCompilerGetAllocator();
              v59 = v58;
              Accessor = glpMakeAccessor(a1, v86, v57);
              v61 = glpMakeAccessor(a1, v84, v57);
              v87 = v89;
              v88 = v90;
              AssignFragment = glpMakeAssignFragment(a1, &v87, Accessor, v61);
              glpCommaExprNodeAddExpr(v59, v52, AssignFragment);
              v57 = (v57 + 1);
            }

            while (v56 != v57);
          }

          glpCompilerGetAllocator();
          glpCommaExprNodeAddExpr(v63, v52, v86);
          v45 = glpSANode(a1, v52);
        }

        v2 = v45;
        goto LABEL_53;
      }
    }

    else
    {
      v24 = glpASTNodeGetSaType(Lhs);
      if (glpTypeIsAtomic(v24))
      {
        goto LABEL_33;
      }

      if (v22)
      {
        goto LABEL_33;
      }

      v25 = glpASTNodeGetSaType(Lhs);
      if (!glpCompilerDoesTypeRequirePrecision(a1, v25))
      {
        goto LABEL_33;
      }
    }

    v34 = glpASTNodeGetSaFlags(Lhs);
    glpPushdownPrecision(a1, Rhs, v34);
    goto LABEL_33;
  }

  return glpSAFailed();
}

uint64_t glpSAOpAssign(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) != -1)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(a2);
    Rhs = glpBinaryOperatorNodeGetRhs(a2);
    SaType = glpASTNodeGetSaType(Lhs);
    if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(Rhs) & 0x1F) == 0)
    {
      SaFlags = glpASTNodeGetSaFlags(Lhs);
      glpPushdownPrecision(a1, Rhs, SaFlags);
    }

    v34 = 0;
    v35 = 0;
    glpHandleSideEffectsForExpr(a1, Lhs, &v35, &v34);
    v32 = 0;
    v33 = 0;
    glpHandleSideEffectsForExpr(a1, Rhs, &v33, &v32);
    Desugar = glpOpAssignNodeGetDesugar(a2);
    glpCompilerGetAllocator();
    v10 = v9;
    Location = glpASTNodeGetLocation(a2, &v31);
    v12 = Desugar(v10, &v31, Location);
    glpBinaryOperatorNodeSetLhs(v12, v35);
    glpBinaryOperatorNodeSetRhs(v12, v33);
    glpCompilerGetAllocator();
    v14 = v13;
    glpASTNodeGetLocation(a2, &v31);
    AssignNode = glpMakeAssignNode(v14, &v31, 0);
    v16 = glpDuplicateDerefOrConstant(a1, v35);
    glpBinaryOperatorNodeSetLhs(AssignNode, v16);
    glpBinaryOperatorNodeSetRhs(AssignNode, v12);
    if (v32 && glpIsCommaExprNode(v32))
    {
      v17 = glpCommaExprNodeGetExprCount(v32) - 1;
      glpCommaExprNodeSetExpr(v32, v17, 0);
      v18 = v32;
      glpASTNodeSetSaType(v32, 0);
    }

    else
    {
      glpCompilerGetAllocator();
      v20 = v19;
      glpASTNodeGetLocation(a2, &v31);
      glpMakeCommaExprNode(v20, &v31, 0);
      v18 = v21;
      if (v32)
      {
        glpCompilerGetAllocator();
        glpCommaExprNodeAddExpr(v22, v18, v32);
      }

      v17 = -1;
    }

    if (v34)
    {
      if (glpIsCommaExprNode(v34))
      {
        ExprCount = glpCommaExprNodeGetExprCount(v34);
        v24 = ExprCount - 1;
        if (ExprCount != 1)
        {
          v25 = 0;
          do
          {
            Expr = glpCommaExprNodeGetExpr(v34, v25);
            if ((v17 & 0x80000000) != 0)
            {
              glpCompilerGetAllocator();
              glpCommaExprNodeAddExpr(v27, v18, Expr);
            }

            else
            {
              glpCommaExprNodeSetExpr(v18, v17, Expr);
              v17 = -1;
            }

            glpCommaExprNodeSetExpr(v34, v25++, 0);
          }

          while (v24 != v25);
        }

        glpASTNodeSetSaType(v18, 0);
      }

      else if (v34)
      {
        if ((v17 & 0x80000000) != 0)
        {
          glpCompilerGetAllocator();
          glpCommaExprNodeAddExpr(v29, v18, v34);
        }

        else
        {
          glpCommaExprNodeSetExpr(v18, v17, v34);
        }

        goto LABEL_29;
      }
    }

    if ((v17 & 0x80000000) == 0)
    {
      glpCommaExprNodeSetExpr(v18, v17, AssignNode);
      return glpSANode(a1, v18);
    }

LABEL_29:
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v30, v18, AssignNode);
    return glpSANode(a1, v18);
  }

  return glpSAFailed();
}

uint64_t glpSACommaExpr(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!glpCommaExprNodeGetExprCount(a2))
  {
    goto LABEL_8;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Expr = glpCommaExprNodeGetExpr(v2, v4);
    v7 = glpSANode(a1, Expr);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpCommaExprNodeSetExpr(v2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpCommaExprNodeGetExprCount(v2));
  if (!v5)
  {

    return glpSAFailed();
  }

  else
  {
LABEL_8:
    ExprCount = glpCommaExprNodeGetExprCount(v2);
    v9 = glpCommaExprNodeGetExpr(v2, ExprCount - 1);
    SaType = glpASTNodeGetSaType(v9);
    glpASTNodeSetSaType(v2, SaType);
    if (glpCommaExprNodeGetExprCount(v2))
    {
      v11 = 0;
      v12 = 96;
      while (1)
      {
        v13 = glpCommaExprNodeGetExpr(v2, v11);
        if (v13)
        {
          v14 = v13;
          v12 &= glpASTNodeGetSaFlags(v13);
          if (glpCommaExprNodeGetIsFromSource(v2))
          {
            if (v11 != glpCommaExprNodeGetExprCount(v2) - 1)
            {
              v15 = glpASTNodeGetSaType(v14);
              if (glpCompilerDoesTypeRequirePrecision(a1, v15) && (glpASTNodeGetSaFlags(v14) & 0x1F) == 0)
              {
                v16 = glpASTNodeGetSaType(v14);
                DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, v16);
                if (!DefaultPrecisionForType)
                {
                  v22 = glpASTNodeGetSaType(v14);
                  glpCompilerGetAllocator();
                  v24 = glpTypeHumanReadableDescription(v22, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v23);
                  v26 = v25;
                  InfoLog = glpCompilerGetInfoLog(a1);
                  glpASTNodeGetLocation(v2, &v28);
                  glpLogMessage(InfoLog, 0, &v28, "Expression of type '%.*s' - precision can not be inferred and no default precision available", v26, v24);
                  return glpSAFailed();
                }

                glpPushdownPrecision(a1, v14, DefaultPrecisionForType);
              }
            }
          }
        }

        if (++v11 >= glpCommaExprNodeGetExprCount(v2))
        {
          goto LABEL_20;
        }
      }
    }

    v12 = 96;
LABEL_20:
    v18 = glpCommaExprNodeGetExprCount(v2);
    v19 = glpCommaExprNodeGetExpr(v2, v18 - 1);
    SaFlags = glpASTNodeGetSaFlags(v19);
    glpASTNodeSetSaFlags(v2, SaFlags & 0x1F | v12);
    return v2;
  }
}

uint64_t glpSAParameterDeclaration(uint64_t a1, uint64_t a2)
{
  Type = glpParameterDeclarationNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 != -1)
  {
    glpParameterDeclarationNodeSetType(a2, v5);
    v6 = glpParameterDeclarationNodeGetType(a2);
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    glpASTNodeGetLocation(a2, &v21);
    if (glpEvaluateTypeNode(a1, &v21, 5, 1, v6, 0, &v25, &v24, &v23, &v22))
    {
      if (glpCompilerUsingStyleGuide(a1) && !glpTypeIsAtomic(v25))
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        *&v8 = glpASTNodeGetLocation(a2, &v21).n128_u64[0];
        glpLogMessage(InfoLog, 2, &v21, "Passing large objects to functions may result in significant unnecessary copying", v8);
      }

      Name = glpParameterDeclarationNodeGetName(a2);
      v11 = glpCheckName(a1, a2, Name, v10);
      if (v11 != -1)
      {
        v12 = v11;
        if (glpTypeGetKind(v25) != 2 || glpArrayTypeGetElementCount(v25) != -1)
        {
          SaType = glpASTNodeGetSaType(v6);
          glpASTNodeSetSaType(v12, SaType);
          if (v23)
          {
            v14 = *v23;
            if (*v23)
            {
              v15 = v24;
              while (1)
              {
                v16 = *(v14 + 2);
                v14 = *v14;
                if (v16 == 99)
                {
                  break;
                }

                if (v16 == 98)
                {
                  v15 |= 0x800100uLL;
LABEL_16:
                  v24 = v15;
                }

                if (!v14)
                {
                  goto LABEL_18;
                }
              }

              v15 |= 0x1000000uLL;
              goto LABEL_16;
            }

LABEL_18:
            glpCompilerGetAllocator();
            glpDestroyLayoutObject(v17, v23);
            v23 = 0;
          }

          glpASTNodeSetSaFlags(v12, v24 | 0x400000);
          glpParameterDeclarationNodeSetType(v12, 0);
          return v12;
        }

        v19 = glpCompilerGetInfoLog(a1);
        *&v20 = glpASTNodeGetLocation(v12, &v21).n128_u64[0];
        glpLogMessage(v19, 0, &v21, "Unsized arrays are not allowed as parameter or return types.", v20);
      }
    }

    return glpSAFailed();
  }

  return glpSAFailed();
}

unsigned int *glpSAFunctionPrototype(void *a1, uint64_t a2)
{
  v183[1] = *MEMORY[0x277D85DE8];
  if (glpFunctionPrototypeNodeGetParameterCount(a2) == 1)
  {
    Parameter = glpFunctionPrototypeNodeGetParameter(a2, 0);
    Type = glpParameterDeclarationNodeGetType(Parameter);
    if (glpIsPrimitiveTypeNode(Type) && !glpPrimitiveTypeNodeGetType(Type))
    {
      glpFunctionPrototypeNodeClearParameters(a2);
    }
  }

  ReturnType = glpFunctionPrototypeNodeGetReturnType(a2);
  v7 = glpSANode(a1, ReturnType);
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    glpFunctionPrototypeNodeSetReturnType(a2, v7);
    v8 = 1;
  }

  ReturnOutParam = glpFunctionPrototypeNodeGetReturnOutParam(a2);
  v10 = glpSANode(a1, ReturnOutParam);
  if (v10 == -1)
  {
    v8 = 0;
  }

  else
  {
    glpFunctionPrototypeNodeSetReturnOutParam(a2, v10);
  }

  if (glpFunctionPrototypeNodeGetParameterCount(a2))
  {
    v11 = 0;
    do
    {
      v12 = glpFunctionPrototypeNodeGetParameter(a2, v11);
      v13 = glpSANode(a1, v12);
      if (v13 == -1)
      {
        v8 = 0;
      }

      else
      {
        glpFunctionPrototypeNodeSetParameter(a2, v11, v13);
      }

      ++v11;
    }

    while (v11 < glpFunctionPrototypeNodeGetParameterCount(a2));
  }

  if (v8)
  {
    Name = glpFunctionPrototypeNodeGetName(a2);
    v16 = v15;
    ImmediateSAContext = glpCompilerGetImmediateSAContext(a1);
    if (!glpIsTopLevelNode(ImmediateSAContext) && !glpIsFunctionDefinitionNode(ImmediateSAContext))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v177);
      glpLogMessage(InfoLog, 0, &v177, "Prototype for function '%.*s' must occur at the top level", v16, Name);
      return glpSAFailed();
    }

    v18 = glpFunctionPrototypeNodeGetReturnType(a2);
    v182 = 0;
    v183[0] = 0;
    v180 = 0;
    v181 = 0;
    glpASTNodeGetLocation(a2, &v177);
    if (!glpEvaluateTypeNode(a1, &v177, 4, 1, v18, 0, v183, &v182, &v181, &v180))
    {
      return glpSAFailed();
    }

    v19 = glpCheckName(a1, a2, Name, v16);
    if (v19 == -1)
    {
      return glpSAFailed();
    }

    v20 = v19;
    if (glpStringsEqual("main", 0x83863A00000004uLL, Name, v16))
    {
      if (glpTypeGetKind(v183[0]) || glpPrimitiveTypeGetPrimitiveType(v183[0]))
      {
        v21 = glpCompilerGetInfoLog(a1);
        *&v22 = glpASTNodeGetLocation(v20, &v177).n128_u64[0];
        glpLogMessage(v21, 0, &v177, "main() must return void", v22);
        return glpSAFailed();
      }

      if (glpFunctionPrototypeNodeGetParameterCount(v20))
      {
        v26 = glpCompilerGetInfoLog(a1);
        *&v27 = glpASTNodeGetLocation(v20, &v177).n128_u64[0];
        glpLogMessage(v26, 0, &v177, "main() may not take any arguments", v27);
        return glpSAFailed();
      }
    }

    ParameterCount = glpFunctionPrototypeNodeGetParameterCount(v20);
    v151[1] = v151;
    MEMORY[0x28223BE20](ParameterCount);
    v30 = v151 - v29;
    bzero(v151 - v29, v31);
    v32 = glpFunctionPrototypeNodeGetParameterCount(v20);
    MEMORY[0x28223BE20](v32);
    v34 = v151 - v33;
    bzero(v151 - v33, v35);
    v36 = glpFunctionPrototypeNodeGetParameterCount(v20);
    MEMORY[0x28223BE20](v36);
    v38 = v151 - v37;
    bzero(v151 - v37, v39);
    if (glpFunctionPrototypeNodeGetParameterCount(v20))
    {
      v40 = 0;
      do
      {
        v41 = glpFunctionPrototypeNodeGetParameter(v20, v40);
        *&v30[8 * v40] = glpASTNodeGetSaFlags(v41);
        *&v34[8 * v40] = glpASTNodeGetSaType(v41);
        *&v38[8 * v40++] = 0;
      }

      while (v40 < glpFunctionPrototypeNodeGetParameterCount(v20));
    }

    glpCompilerGetAllocator();
    v43 = v42;
    v44 = v183[0];
    v45 = glpFunctionPrototypeNodeGetParameterCount(v20);
    FunctionType = glpMakeFunctionType(v43, v44, v45, v34, v30, v38);
    glpASTNodeSetSaType(v20, FunctionType);
    v47 = v182;
    v153 = v20;
    if (v181)
    {
      v48 = *v181;
      if (*v181)
      {
        v49 = 0;
        do
        {
          v50 = *(v48 + 2);
          if (v50 > 93)
          {
            v51 = v47 | 0x20000;
            v52 = v47 | 0x40000;
            if (v50 != 97)
            {
              v52 = v47;
            }

            if (v50 != 96)
            {
              v51 = v52;
            }

            v53 = v47 | 0x8000;
            v54 = v47 | 0x10000;
            if (v50 != 95)
            {
              v54 = v47;
            }

            if (v50 != 94)
            {
              v53 = v54;
            }

            if (v50 <= 95)
            {
              v47 = v53;
            }

            else
            {
              v47 = v51;
            }
          }

          else if (v50 > 91)
          {
            v55 = v47 | 0x800;
            if (v50 != 93)
            {
              v55 = v47;
            }

            if (v50 == 92)
            {
              v47 |= 0x1000uLL;
            }

            else
            {
              v47 = v55;
            }
          }

          else if (v50 == 32)
          {
            v47 |= 0x4000uLL;
            v49 = *(v48 + 4);
          }

          else if (v50 == 91)
          {
            v47 |= 0x2000uLL;
          }

          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        v49 = 0;
      }

      glpCompilerGetAllocator();
      glpDestroyLayoutObject(v56, v181);
      v181 = 0;
    }

    else
    {
      v49 = 0;
    }

    NameTable = glpCompilerGetNameTable(a1);
    glpCompilerGetAllocator();
    v59 = glpAggregateTypeMangleName(FunctionType, Name, v16, v58);
    v61 = v60;
    glpCompilerGetAllocator();
    v152 = FunctionType;
    glpMakeFunctionObject(v62, FunctionType, v47, Name, v16, v59, v61);
    FunctionObject = v63;
    *(v63 + 92) = v49;
    if (v180)
    {
      v65 = (v47 & 0x180000) != 0;
    }

    else
    {
      v65 = 0;
    }

    if ((v47 & 0x180000) != 0 && !v180)
    {
      *(v63 + 8) &= ~0x100000uLL;
      SubroutineType = glpCompilerGetSubroutineType(a1, *(v63 + 24), *(v63 + 32), v63);
      v177.n128_u64[0] = 0;
      v177.n128_u64[1] = &v177;
      v178 = 0x2000000000;
      v179 = 0;
      v173 = 0;
      v174 = &v173;
      v175 = 0x2000000000;
      v176 = 0;
      v172[0] = MEMORY[0x277D85DD0];
      v172[1] = 0x40000000;
      v172[2] = __glpSAFunctionPrototype_block_invoke;
      v172[3] = &unk_278B4C428;
      v172[4] = &v177;
      v172[5] = &v173;
      glpNameTableGet(NameTable, *(FunctionObject + 24), *(FunctionObject + 32), 2, v172);
      v66 = v174[3];
      if (v66)
      {
        v67 = v153;
        if (*(v177.n128_u64[1] + 24) == 8)
        {
          if (glpTypesEqual(SubroutineType, v66))
          {
            SubroutineType = v174[3];
LABEL_91:
            FunctionObject = glpSubroutineTypeGetFunctionObject(SubroutineType);
            v152 = *FunctionObject;
            v77 = 1;
            goto LABEL_96;
          }

          v82 = glpCompilerGetInfoLog(a1);
          *&v83 = glpASTNodeGetLocation(v67, &v169).n128_u64[0];
          glpLogMessage(v82, 0, &v169, "Redeclaration of subroutine type '%.*s' does not match previous declaration", v83);
        }

        else
        {
          v78 = glpCompilerGetInfoLog(a1);
          *&v79 = glpASTNodeGetLocation(v67, &v169).n128_u64[0];
          glpLogMessage(v78, 0, &v169, "subroutine type '%.*s' previously declared as another kind of object", v79);
        }

        SubroutineType = glpSAFailed();
        v77 = 0;
LABEL_96:
        _Block_object_dispose(&v173, 8);
        _Block_object_dispose(&v177, 8);
        if ((v77 & 1) == 0)
        {
          return SubroutineType;
        }

        goto LABEL_136;
      }

      glpNameTablePut(NameTable, Name, v16, 8, SubroutineType);
      goto LABEL_91;
    }

    v68 = glpCompilerGetImmediateSAContext(a1);
    IsFunctionDefinitionNode = glpIsFunctionDefinitionNode(v68);
    if (!IsFunctionDefinitionNode && v65)
    {
      v71 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v153, &v177);
      glpLogMessage(v71, 0, &v177, "Subroutine type declaration '%.*s' may not include a list of compatible subroutine types", v16, Name);
      return glpSAFailed();
    }

    SubroutineType = IsFunctionDefinitionNode;
    *(FunctionObject + 8) &= ~0x80000uLL;
    *(FunctionObject + 56) = v180;
    v177.n128_u64[0] = 0;
    v177.n128_u64[1] = &v177;
    v178 = 0x2000000000;
    v179 = 0;
    v173 = 0;
    v174 = &v173;
    v175 = 0x2000000000;
    v176 = 0;
    v169.n128_u64[0] = 0;
    v169.n128_u64[1] = &v169;
    v170 = 0x2000000000;
    v171 = 0;
    v168[0] = MEMORY[0x277D85DD0];
    v168[1] = 0x40000000;
    v168[2] = __glpSAFunctionPrototype_block_invoke_2;
    v168[3] = &unk_278B4C450;
    v168[4] = &v177;
    v168[5] = &v173;
    v168[6] = &v169;
    v168[7] = NameTable;
    glpNameTableGet(NameTable, Name, v16, 0, v168);
    v164 = 0;
    v165 = &v164;
    v166 = 0x2000000000;
    v167 = 0;
    v160 = 0;
    v161 = &v160;
    v162 = 0x2000000000;
    v163 = 0;
    v159[0] = MEMORY[0x277D85DD0];
    v159[1] = 0x40000000;
    v159[2] = __glpSAFunctionPrototype_block_invoke_3;
    v159[3] = &unk_278B4C478;
    v159[4] = &v164;
    v159[5] = &v160;
    glpNameTableGet(NameTable, v59, v61, 0, v159);
    v72 = v174[3];
    if (!v72)
    {
      goto LABEL_113;
    }

    if (*(v177.n128_u64[1] + 24) != 4)
    {
      v80 = glpCompilerGetInfoLog(a1);
      *&v81 = glpASTNodeGetLocation(v153, &v156).n128_u64[0];
      glpLogMessage(v80, 0, &v156, "Function '%.*s' previously declared as non-function", v81);
      goto LABEL_133;
    }

    if (!v72[1])
    {
      v151[0] = *v72;
      glpCompilerGetAllocator();
      v74 = glpAggregateTypeMangleName(v151[0], Name, v16, v73);
      v156.n128_u64[0] = 0;
      v156.n128_u64[1] = &v156;
      v157 = 0x2000000000;
      v158 = 0;
      v155[0] = MEMORY[0x277D85DD0];
      v155[1] = 0x40000000;
      v155[2] = __glpSAFunctionPrototype_block_invoke_4;
      v155[3] = &unk_278B4C4A0;
      v155[4] = &v156;
      glpNameTableGet(NameTable, v74, v75, 0, v155);
      if ((*(*(v156.n128_u64[1] + 24) + 10) & 0x20) != 0)
      {
        v88 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v153, &v154);
        glpLogMessage(v88, 0, &v154, "Function '%.*s' previously declared as subroutine implementation", v16, Name);
        SubroutineType = glpSAFailed();
        _Block_object_dispose(&v156, 8);
LABEL_134:
        v103 = 0;
LABEL_135:
        _Block_object_dispose(&v160, 8);
        _Block_object_dispose(&v164, 8);
        _Block_object_dispose(&v169, 8);
        _Block_object_dispose(&v173, 8);
        _Block_object_dispose(&v177, 8);
        if (!v103)
        {
          return SubroutineType;
        }

LABEL_136:
        v108 = v153;
        glpFunctionPrototypeNodeSetExtra(v153, FunctionObject);
        v183[0] = glpFunctionTypeGetReturnType(v152);
        if (*(FunctionObject + 112) && ((v182 ^ *(*(FunctionObject + 72) + 48)) & 0x8000000001FLL) != 0)
        {
          v109 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v108, &v177);
          glpLogMessage(v109, 0, &v177, "Qualification of return type in redeclared function '%.*s' differs from previous declaration", v16, Name);
        }

        Extra = glpFunctionPrototypeNodeGetExtra(v108);
        v111 = glpFunctionPrototypeNodeGetReturnOutParam(v108);
        v152 = Extra;
        if (v111)
        {
          v112 = v111;
          v113 = *(Extra + 9);
          if (!v113)
          {
            glpCompilerGetAllocator();
            StringBuffer = glpMakeStringBuffer(v114);
            glpStringBufferAppendCString(StringBuffer, "<Compiler Temporary ");
            v116 = glpParameterDeclarationNodeGetName(v112);
            glpStringBufferAppendString(StringBuffer, v116, v117);
            glpStringBufferAppendCString(StringBuffer, ">");
            glpCompilerGetAllocator();
            v119 = v118;
            v120 = v183[0];
            SaFlags = glpASTNodeGetSaFlags(v112);
            v122 = glpParameterDeclarationNodeGetName(v112);
            v124 = v123;
            String = glpStringBufferGetString(StringBuffer);
            v126 = v124;
            Extra = v152;
            glpMakeVariableObject(v119, v120, 0, SaFlags, v122, v126, String, v127, 0, 0, 0);
            v113 = v128;
            *(Extra + 9) = v128;
          }

          glpParameterDeclarationNodeSetExtra(v112, v113);
        }

        v129 = *(Extra + 10);
        if (!v129)
        {
          glpFunctionPrototypeNodeGetParameterCount(v108);
          *(Extra + 10) = glpCompilerPoolAlloc(a1);
          Extra[22] = glpFunctionPrototypeNodeGetParameterCount(v108);
        }

        if (glpFunctionPrototypeNodeGetParameterCount(v108))
        {
          v130 = 0;
          do
          {
            v131 = glpFunctionPrototypeNodeGetParameter(v108, v130);
            v132 = v131;
            if (!v129)
            {
              SaType = glpASTNodeGetSaType(v131);
              glpCompilerGetAllocator();
              v135 = v134;
              v136 = glpASTNodeGetSaFlags(v132);
              v137 = glpParameterDeclarationNodeGetName(v132);
              v139 = v138;
              v140 = glpParameterDeclarationNodeGetName(v132);
              v142 = v141;
              v143 = SaType;
              v144 = v139;
              Extra = v152;
              v108 = v153;
              glpMakeVariableObject(v135, v143, 0, v136, v137, v144, v140, v142, 0, 0, 0);
              *(*(Extra + 10) + 8 * v130) = v145;
            }

            glpParameterDeclarationNodeSetExtra(v132, *(*(Extra + 10) + 8 * v130++));
          }

          while (v130 < glpFunctionPrototypeNodeGetParameterCount(v108));
        }

        v146 = Extra[22];
        v147 = *(Extra + 1);
        if (!v146)
        {
LABEL_155:
          SubroutineType = v153;
          glpASTNodeSetSaFlags(v153, v147);
          glpFunctionPrototypeNodeSetReturnType(SubroutineType, 0);
          return SubroutineType;
        }

        v148 = 0;
        v149 = 8 * v146;
        while ((v147 & 0x3800) == 0 || (*(*(*(Extra + 10) + v148) + 48) & 0x4800200) != 0)
        {
          v148 += 8;
          if (v149 == v148)
          {
            goto LABEL_155;
          }
        }

        v150 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v153, &v177);
        glpLogMessage(v150, 0, &v177, "Inline function '%.*s' argument '%.*s' not foldable/out", Extra[8], *(Extra + 3), *(*(*(Extra + 10) + v148) + 40), *(*(*(Extra + 10) + v148) + 32));
        return glpSAFailed();
      }

      _Block_object_dispose(&v156, 8);
    }

    v76 = *(v169.n128_u64[1] + 24);
    if (v65)
    {
      if (v76 != 3)
      {
LABEL_125:
        v100 = glpCompilerGetInfoLog(a1);
        *&v101 = glpASTNodeGetLocation(v153, &v156).n128_u64[0];
        glpLogMessage(v100, 0, &v156, "Subroutine implementation '%.*s' previously declared as function", v101);
        goto LABEL_133;
      }
    }

    else if (v76 != 3)
    {
      if (SubroutineType)
      {
        v85 = v165[3];
        if (v85)
        {
          if (*(v85 + 64))
          {
            v86 = glpCompilerGetInfoLog(a1);
            *&v87 = glpASTNodeGetLocation(v153, &v156).n128_u64[0];
            glpLogMessage(v86, 0, &v156, "Function '%.*s' redefines an existing function", v87);
            goto LABEL_133;
          }
        }
      }

      goto LABEL_113;
    }

    GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
    if (GLSLVersion <= 0xA)
    {
      if (((1 << GLSLVersion) & 0x3BC) != 0)
      {
        v174[3] = 0;
LABEL_113:
        v93 = v165[3];
        if (!v93)
        {
          goto LABEL_120;
        }

        if (!*(v161 + 6) && (*(FunctionObject + 10) & 0x10) != 0)
        {
          goto LABEL_125;
        }

        v94 = v153;
        if ((*(v93 + 10) & 0x20) == 0)
        {
          SubroutineType = v152;
          if (!glpTypesEqual(*v93, v152))
          {
            v104 = glpFunctionTypeGetReturnType(*v165[3]);
            v105 = glpFunctionTypeGetReturnType(SubroutineType);
            LODWORD(v104) = glpTypesEqual(v104, v105);
            v106 = glpCompilerGetInfoLog(a1);
            *&v107 = glpASTNodeGetLocation(v94, &v156).n128_u64[0];
            if (v104)
            {
              glpLogMessage(v106, 0, &v156, "Qualification of arguments in redeclared function '%.*s' differs from previous declaration", v107);
            }

            else
            {
              glpLogMessage(v106, 0, &v156, "Return type in redeclared function '%.*s' differs from previous declaration", v107);
            }

            goto LABEL_133;
          }

          if (!*(v161 + 6))
          {
            FunctionObject = v165[3];
          }

LABEL_120:
          v95 = v174[3];
          if (v95)
          {
            while (1)
            {
              v96 = v95;
              if (glpTypesEqual(*v95, v152))
              {
                break;
              }

              v95 = v96[1];
              if (!v95)
              {
                v97 = glpCompilerPoolAlloc(a1);
                *v97 = v152;
                *(v97 + 1) = 0;
                v96[1] = v97;
                goto LABEL_128;
              }
            }

            if (!*(v161 + 6))
            {
              goto LABEL_129;
            }
          }

          else
          {
            v102 = glpCompilerPoolAlloc(a1);
            *v102 = v152;
            v102[1] = 0;
            glpNameTablePut(NameTable, Name, v16, 4, v102);
          }

LABEL_128:
          glpNameTablePut(NameTable, v59, v61, 5, FunctionObject);
LABEL_129:
          v103 = 1;
          goto LABEL_135;
        }

        v98 = glpCompilerGetInfoLog(a1);
        *&v99 = glpASTNodeGetLocation(v94, &v156).n128_u64[0];
        glpLogMessage(v98, 0, &v156, "Function '%.*s' previously declared as subroutine implementation", v99);
LABEL_133:
        SubroutineType = glpSAFailed();
        goto LABEL_134;
      }

      if (GLSLVersion == 6)
      {
        v89 = glpCompilerGetInfoLog(a1);
        *&v90 = glpASTNodeGetLocation(v153, &v156).n128_u64[0];
        glpLogMessage(v89, 0, &v156, "Function '%.*s' overloads or redefines a built-in function", v90);
        goto LABEL_133;
      }

      if (GLSLVersion == 10)
      {
        abort();
      }
    }

    if (!GLSLVersion && v165[3])
    {
      v91 = glpCompilerGetInfoLog(a1);
      *&v92 = glpASTNodeGetLocation(v153, &v156).n128_u64[0];
      glpLogMessage(v91, 0, &v156, "Function '%.*s' redefines a built-in function", v92);
      goto LABEL_133;
    }

    goto LABEL_113;
  }

  return glpSAFailed();
}

uint64_t glpSAVariableDeclaration(uint64_t a1, uint64_t a2)
{
  v193 = *MEMORY[0x277D85DE8];
  Type = glpVariableDeclarationNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 != -1)
  {
    glpVariableDeclarationNodeSetType(a2, v5);
  }

  Initializer = glpVariableDeclarationNodeGetInitializer(a2);
  v7 = glpSANode(a1, Initializer);
  if (v7 != -1)
  {
    glpVariableDeclarationNodeSetInitializer(a2, v7);
    if (v5 != -1)
    {
      Name = glpVariableDeclarationNodeGetName(a2);
      v10 = v9;
      NameTable = glpCompilerGetNameTable(a1);
      CurrentFunction = glpNameTableGetCurrentFunction(NameTable);
      v189 = 0;
      v190 = &v189;
      v191 = 0x2000000000;
      v192 = 0;
      v185 = 0;
      v186 = &v185;
      v187 = 0x2000000000;
      v188 = 0;
      v181 = 0;
      v182 = &v181;
      v183 = 0x2000000000;
      v184 = 0;
      v180[0] = MEMORY[0x277D85DD0];
      v180[1] = 0x40000000;
      v180[2] = __glpSAVariableDeclaration_block_invoke;
      v180[3] = &unk_278B4C4C8;
      v180[4] = &v189;
      v180[5] = &v185;
      v180[6] = &v181;
      v180[7] = NameTable;
      glpNameTableGet(NameTable, Name, v10, 2 * (CurrentFunction != 0), v180);
      if (v186[3])
      {
        v13 = *(v190 + 6);
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              InfoLog = glpCompilerGetInfoLog(a1);
              *&v21 = glpASTNodeGetLocation(a2, &v171).n128_u64[0];
              glpLogMessage(InfoLog, 0, &v171, "'%.*s' already declared as an interface block instance", v21);
              goto LABEL_50;
            case 2:
              v22 = glpCompilerGetInfoLog(a1);
              *&v23 = glpASTNodeGetLocation(a2, &v171).n128_u64[0];
              glpLogMessage(v22, 0, &v171, "'%.*s' already declared as an interface block", v23);
              goto LABEL_50;
            case 3:
              v14 = 10;
              goto LABEL_32;
          }
        }

        else if ((v13 - 4) >= 5)
        {
          if ((v13 - 10) < 4 || v13 == 9)
          {
            abort();
          }
        }

        else
        {
          if (!*(v182 + 6))
          {
            v18 = glpCompilerGetInfoLog(a1);
            *&v19 = glpASTNodeGetLocation(a2, &v171).n128_u64[0];
            glpLogMessage(v18, 0, &v171, "Attempt to redeclare '%.*s' as a variable", v19);
            goto LABEL_50;
          }

          v186[3] = 0;
        }
      }

      if (CurrentFunction || (v10 & 0xFFFFFFFE) != 0 && *Name == 36 && ((v16 = Name[1], (v16 & 0x80000000) != 0) ? (v17 = __maskrune_l(v16, 0x400uLL, 0)) : (v17 = *(MEMORY[0x277D85DE0] + 4 * v16 + 60) & 0x400), v17))
      {
        v14 = 6;
      }

      else
      {
        v14 = 1;
      }

LABEL_32:
      v24 = glpVariableDeclarationNodeGetType(a2);
      v178 = 0;
      v179 = 0;
      v176 = 0;
      v177 = 0;
      glpASTNodeGetLocation(a2, &v171);
      v25 = glpVariableDeclarationNodeGetIsFromSource(a2);
      SaFlags = glpASTNodeGetSaFlags(v24);
      if (!glpEvaluateTypeNode(a1, &v171, v14, v25, v24, SaFlags & 0x1F, &v179, &v178, &v177, &v176))
      {
        goto LABEL_50;
      }

      glpASTNodeSetSaType(a2, v179);
      if (glpCompilerUsingStyleGuide(a1))
      {
        if (glpTypeGetKind(v179) == 2)
        {
          ElementType = glpArrayTypeGetElementType(v179);
          if (glpTypeGetKind(ElementType) == 1)
          {
            v28 = glpCompilerGetInfoLog(a1);
            *&v29 = glpASTNodeGetLocation(a2, &v171).n128_u64[0];
            glpLogMessage(v28, 2, &v171, "Arrays of structs may be less performant than structs of arrays", v29);
          }
        }
      }

      v30 = glpVariableDeclarationNodeGetInitializer(a2);
      if (v30)
      {
        v31 = v30;
        SaType = glpASTNodeGetSaType(v30);
        if (!glpTypesEqual(SaType, v179))
        {
          v43 = glpASTNodeGetSaType(v31);
          if (glpTypeGetKind(v43) || glpTypeGetKind(v179))
          {
            v44 = glpASTNodeGetSaType(v31);
            if (glpTypeGetKind(v44) != 2 || glpTypeGetKind(v179) != 2 || (v45 = glpASTNodeGetSaType(v31), v46 = glpArrayTypeGetElementType(v45), v47 = glpArrayTypeGetElementType(v179), !glpTypesEqual(v46, v47)) || glpArrayTypeGetElementCount(v179) != -1)
            {
              v48 = glpASTNodeGetSaType(v31);
              glpCompilerGetAllocator();
              v50 = glpTypeHumanReadableDescription(v48, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v49);
              v52 = v51;
              v53 = v179;
              glpCompilerGetAllocator();
              v55 = glpTypeHumanReadableDescription(v53, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v54);
              v57 = v56;
              v58 = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(a2, &v171);
              glpLogMessage(v58, 0, &v171, "Initializer has type incompatible with declaration (got '%.*s', expected '%.*s')", v52, v50, v57, v55);
              goto LABEL_50;
            }

            v179 = glpASTNodeGetSaType(v31);
            glpASTNodeSetSaType(a2, v179);
          }

          else
          {
            ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
            v74 = glpASTNodeGetSaType(v31);
            PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v74);
            v76 = glpPrimitiveTypeGetPrimitiveType(v179);
            if (!glpCanConvert(PrimitiveType, v76, ImplicitConversionPolicy))
            {
              v123 = glpCompilerGetInfoLog(a1);
              *&v124 = glpASTNodeGetLocation(a2, &v171).n128_u64[0];
              glpLogMessage(v123, 0, &v171, "Incompatible types in initialization (and no available implicit conversion)", v124);
              goto LABEL_50;
            }

            v77 = glpConvert(a1, v31, v179, v178 & 0x1F);
            glpVariableDeclarationNodeSetInitializer(a2, v77);
          }
        }

        v33 = glpCompilerGetNameTable(a1);
        GLSLVersion = glpNameTableGetGLSLVersion(v33);
        v35 = GLSLVersion > 1;
        if (glpCompilerGetIOSVersion(a1) >= 9)
        {
          v35 = GLSLVersion > 1 && GLSLVersion != 6;
        }

        v37 = v178;
        if ((v178 & 0xC20000000) != 0 || (v178 & 0x100000000) != 0 && ((glpASTNodeGetSaFlags(v31) & 0x60) == 0 || (v37 = v178, (v178 & 0x100000000) != 0 && !v35)) || (v37 & 0x60) != 0 && ((glpASTNodeGetSaFlags(v31) & 0x60) == 0 || (v178 & 0x60) != 0 && (glpASTNodeGetSaFlags(v31) & 0x20) == 0 && GLSLVersion == 1) || glpTypeGetKind(v179) == 2 && GLSLVersion <= 1)
        {
          v38 = glpCompilerGetInfoLog(a1);
          *&v39 = glpASTNodeGetLocation(a2, &v171).n128_u64[0];
          glpLogMessage(v38, 0, &v171, "Initializer not allowed", v39);
          goto LABEL_50;
        }
      }

      else if ((v178 & 0x60) != 0)
      {
        v40 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v171);
        glpVariableDeclarationNodeGetName(a2);
        glpVariableDeclarationNodeGetName(a2);
        glpLogMessage(v40, 0, &v171, "Missing initializer for const variable '%.*s'", v41);
        goto LABEL_50;
      }

      if (glpNameTableGetGLSLVersion(NameTable) == 6 && !glpNameTableIsExtensionEnabled(NameTable, 0x23u) && glpTypeGetKind(v179) == 2 && glpArrayTypeGetElementCount(v179) == -1)
      {
        v131 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v171);
        glpVariableDeclarationNodeGetName(a2);
        glpVariableDeclarationNodeGetName(a2);
        glpLogMessage(v131, 0, &v171, "Unsized array '%.*s' requires sized initializer under GLSL 300", v132);
        goto LABEL_50;
      }

      glpASTNodeSetSaFlags(a2, v178);
      v59 = v186[3];
      if (v59)
      {
        v60 = *(v190 + 6);
        if (!v60)
        {
          glpASTNodeGetLocation(a2, &v171);
          if (glpHandleVariableRedeclaration(a1, &v171, Name, v10, *v59, *(v59 + 48), *(v59 + 8), (v59 + 96), v179, v178, v177, v59, (v59 + 48), (v59 + 8)))
          {
            goto LABEL_126;
          }

          goto LABEL_50;
        }

        if (v60 != 3)
        {
          abort();
        }

        if (glpNameTableGetLanguage(NameTable) == 3 && glpStringsEqual("gl_ClipDistance", 0xA52D52050000000FLL, Name, v10) && (v178 & 0x20000000) != 0)
        {
          v61 = glpCompilerGetNameTable(a1);
          v175[0] = MEMORY[0x277D85DD0];
          v175[1] = 0x40000000;
          v175[2] = __glpSAVariableDeclaration_block_invoke_2;
          v175[3] = &unk_278B4C4F0;
          v175[4] = &v185;
          glpNameTableGet(v61, "gl_in", 0x1057ED5B00000005uLL, 0, v175);
        }

        v62 = v186[3];
        v163 = *(v62 + 64);
        StructTypeFromIBType = glpGetStructTypeFromIBType(v163);
        FieldIndex = glpStructTypeGetFieldIndex(StructTypeFromIBType, Name, v10);
        v164 = glpAggregateTypeGetElementType(StructTypeFromIBType, FieldIndex);
        ElementFlags = glpAggregateTypeGetElementFlags(StructTypeFromIBType, FieldIndex);
        LODWORD(v165) = FieldIndex;
        ElementLayout = glpAggregateTypeGetElementLayout(StructTypeFromIBType, FieldIndex);
        Representation = glpInterfaceBlockObjectGetRepresentation(v62);
        v68 = 0;
        if (Representation > 1)
        {
          if (Representation == 3)
          {
LABEL_95:
            v78 = (*(v62 + 72) + 8 * v165);
            goto LABEL_96;
          }

          if (Representation != 2)
          {
LABEL_97:
            v168.n128_u64[0] = 0;
            v166.n128_u64[0] = 0;
            v174 = 0;
            glpASTNodeGetLocation(a2, &v171);
            if (glpHandleVariableRedeclaration(a1, &v171, Name, v10, v164, ElementFlags, ElementLayout, (v68 + 96), v179, v178, v177, &v168, v166.n128_u64, &v174))
            {
              v164 = v62;
              ElementCount = glpAggregateTypeGetElementCount(StructTypeFromIBType);
              v80 = ElementCount;
              v81 = ElementCount;
              v162 = ElementCount;
              MEMORY[0x28223BE20](ElementCount);
              bzero(&v161 - 2 * v80, v82);
              v83 = 8 * v81;
              MEMORY[0x28223BE20](v84);
              v85 = (&v161 - ((v83 + 15) & 0xFFFFFFFF0));
              bzero(v85, v83);
              MEMORY[0x28223BE20](v86);
              v87 = v85;
              bzero(v85, v83);
              MEMORY[0x28223BE20](v88);
              v89 = v85;
              bzero(v85, v83);
              if (v162)
              {
                v90 = 0;
                v91 = &v161 - 2 * v80 + 1;
                do
                {
                  *(v91 - 1) = glpStructTypeGetFieldName(StructTypeFromIBType, v90);
                  *v91 = v92;
                  v85[v90] = glpAggregateTypeGetElementType(StructTypeFromIBType, v90);
                  v85[v90] = glpAggregateTypeGetElementFlags(StructTypeFromIBType, v90);
                  v85[v90] = glpAggregateTypeGetElementLayout(StructTypeFromIBType, v90);
                  ++v90;
                  v91 += 2;
                }

                while (v80 != v90);
              }

              v93 = v165;
              v85[v165] = v168.n128_u64[0];
              v85[v93] = v166.n128_u64[0];
              v85[v93] = v174;
              glpCompilerGetAllocator();
              v95 = v94;
              v96 = glpStructTypeGetName(StructTypeFromIBType);
              v162 = v80;
              StructType = glpMakeStructType(v95, v96, v97, v80, (&v161 - 2 * v80), v85, v85, v85);
              v99 = glpInterfaceBlockObjectGetRepresentation(v164);
              v100 = v163;
              if (v99 <= 1)
              {
                if (v99)
                {
                  if (v99 != 1)
                  {
                    goto LABEL_126;
                  }

LABEL_112:
                  v113 = v162;
                  if (v162)
                  {
                    v114 = *(v164 + 9);
                    v115 = *(v164 + 5);
                    do
                    {
                      v116 = *v85++;
                      **v114 = v116;
                      v117 = *v87++;
                      v118 = v117 | v115;
                      v120 = *v114++;
                      v119 = v120;
                      v120[6] = v118 | 0x80000000;
                      v121 = *v89++;
                      v119[1] = v121;
                      --v113;
                    }

                    while (v113);
                  }

                  *(v164 + 8) = StructType;
                  goto LABEL_126;
                }

                goto LABEL_125;
              }

              if (v99 == 2)
              {
                glpCompilerGetAllocator();
                v127 = v126;
                Bank = glpBankTypeGetBank(v100);
                v129 = glpBankTypeGetElementCount(v100);
                StructType = glpMakeBankType(v127, Bank, StructType, v129);
LABEL_125:
                v130 = v164;
                *(v164 + 8) = StructType;
                ***(v130 + 9) = StructType;
                goto LABEL_126;
              }

              if (v99 == 3)
              {
                v161 = StructType;
                if (v162)
                {
                  v103 = v162;
                  v104 = v85;
                  do
                  {
                    glpCompilerGetAllocator();
                    v165 = v105;
                    v106 = glpBankTypeGetBank(v100);
                    v107 = *v104;
                    v108 = glpBankTypeGetElementCount(v100);
                    *v104++ = glpMakeBankType(v165, v106, v107, v108);
                    --v103;
                  }

                  while (v103);
                }

                glpCompilerGetAllocator();
                v110 = v109;
                v111 = glpBankTypeGetBank(v100);
                v112 = glpBankTypeGetElementCount(v100);
                StructType = glpMakeBankType(v110, v111, v161, v112);
                goto LABEL_112;
              }

LABEL_126:
              v42 = 0;
              goto LABEL_51;
            }

            v101 = glpCompilerGetInfoLog(a1);
            *&v102 = glpASTNodeGetLocation(a2, &v171).n128_u64[0];
            glpLogMessage(v101, 0, &v171, "'%.*s' already declared within an interface block", v102);
LABEL_50:
            v42 = glpSAFailed();
LABEL_51:
            _Block_object_dispose(&v181, 8);
            _Block_object_dispose(&v185, 8);
            _Block_object_dispose(&v189, 8);
            return v42;
          }
        }

        else if (Representation)
        {
          if (Representation != 1)
          {
            goto LABEL_97;
          }

          goto LABEL_95;
        }

        v78 = *(v62 + 72);
LABEL_96:
        v68 = *v78;
        goto LABEL_97;
      }

      v69 = glpCheckName(a1, a2, Name, v10);
      if (v69 == -1)
      {
        goto LABEL_50;
      }

      v42 = v69;
      v70 = glpVariableDeclarationNodeGetInitializer(v69);
      v71 = v70;
      if (v70)
      {
        if (glpIsConstantNode(v70))
        {
          Value = glpConstantNodeGetValue(v71);
        }

        else
        {
          Value = 0;
        }

        v125 = v178;
        if ((v178 & 0x60) != 0)
        {
          if (glpIsConstantNode(v71))
          {
            glpVariableDeclarationNodeSetInitializer(v42, 0);
            v125 = v178;
          }

          else
          {
            v125 = v178 & 0xFFFFFFFFFFFFFE9FLL | 0x100;
            v178 = v125;
          }

          v122 = Value;
        }

        else
        {
          v122 = 0;
        }

        if ((v125 & 0x100000000) != 0 && glpIsConstantNode(v71))
        {
          glpVariableDeclarationNodeSetInitializer(v42, 0);
        }
      }

      else
      {
        v122 = 0;
        Value = 0;
      }

      glpCompilerGetAllocator();
      glpMakeVariableObject(v133, v179, v177, v178, Name, v10, Name, v10, v71 != 0, v122, Value);
      v186[3] = v134;
      if ((v178 & 0x200000000) == 0)
      {
        v135 = v134;
        if ((v178 & 0x400000000) != 0)
        {
          glpCompilerGetAllocator();
          glpMakeBufferObject(v136, v179, 0, 1);
          *(v135 + 88) = v137;
        }

        glpNameTablePut(NameTable, Name, v10, 0, v135);
        if (glpVariableDeclarationNodeGetInitializer(v42) && (v178 & 0x100000000) == 0)
        {
          v171 = 0uLL;
          v172 = 0;
          glpASTNodeGetLocation(v42, &v171);
          glpCompilerGetAllocator();
          v168 = v171;
          v169 = v172;
          glpMakeVariableIdentifierNode(v138, &v168, Name, v10);
          v140 = glpSANode(a1, v139);
          if (v140 == -1)
          {
            goto LABEL_50;
          }

          v141 = v140;
          v142 = glpASTNodeGetSaFlags(v140);
          glpASTNodeSetSaFlags(v141, v142 & 0xFFFFFFFFFFFFFEFFLL);
          v143 = glpVariableDeclarationNodeGetInitializer(v42);
          v168 = v171;
          v169 = v172;
          AssignFragment = glpMakeAssignFragment(a1, &v168, v141, v143);
          glpVariableDeclarationNodeSetInitializer(v42, AssignFragment);
        }

        glpVariableDeclarationNodeSetExtra(v42, v186[3]);
        glpVariableDeclarationNodeSetType(v42, 0);
        goto LABEL_51;
      }

      v171.n128_u64[0] = 0;
      v171.n128_u64[1] = &v171;
      v172 = 0x2000000000;
      v173 = 0;
      v168.n128_u64[0] = 0;
      v168.n128_u64[1] = &v168;
      v169 = 0x2000000000;
      v170 = 0;
      v167[0] = MEMORY[0x277D85DD0];
      v167[1] = 0x40000000;
      v167[2] = __glpSAVariableDeclaration_block_invoke_3;
      v167[3] = &unk_278B4C518;
      v167[4] = &v171;
      v167[5] = &v168;
      glpNameTableGet(NameTable, Name, v10, 2, v167);
      v145 = *(v168.n128_u64[1] + 24);
      if (v145)
      {
        if (*(v171.n128_u64[1] + 24) != 7)
        {
          v160 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v42, &v166);
          glpLogMessage(v160, 0, &v166, "subroutine uniform '%.*s' previously declared as different kind of object", v10, Name);
          goto LABEL_148;
        }

        if (!glpTypesEqual(*(v145 + 16), v179))
        {
          v146 = v179;
          glpCompilerGetAllocator();
          v148 = glpTypeHumanReadableDescription(v146, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v147);
          v150 = v149;
          v151 = *(v145 + 16);
          glpCompilerGetAllocator();
          v153 = glpTypeHumanReadableDescription(v151, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v152);
          v155 = v154;
          v156 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v42, &v166);
          glpLogMessage(v156, 0, &v166, "Type ('%.*s') of subroutine uniform '%.*s' does not match previous declaration ('%.*s')", v150, v148, v10, Name, v155, v153);
LABEL_148:
          v42 = glpSAFailed();
          goto LABEL_149;
        }
      }

      else
      {
        v145 = glpCompilerPoolAlloc(a1);
        *v145 = Name;
        *(v145 + 8) = v10;
        *(v145 + 16) = v179;
        glpNameTablePut(NameTable, Name, v10, 7, v145);
      }

      glpCompilerGetAllocator();
      v158 = v157;
      glpASTNodeGetLocation(v42, &v166);
      glpMakeSubroutineUniformNode(v158, &v166, v145);
      v42 = v159;
      glpASTNodeSetSaType(v159, v179);
      glpASTNodeSetSaFlags(v42, v178);
LABEL_149:
      _Block_object_dispose(&v168, 8);
      _Block_object_dispose(&v171, 8);
      goto LABEL_51;
    }
  }

  return glpSAFailed();
}

uint64_t glpSAVariableDeclarationGroup(uint64_t a1, uint64_t a2)
{
  BaseType = glpVariableDeclarationGroupNodeGetBaseType(a2);
  v5 = glpSANode(a1, BaseType);
  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    glpVariableDeclarationGroupNodeSetBaseType(a2, v5);
    v6 = 1;
  }

  if (glpVariableDeclarationGroupNodeGetDeclarationCount(a2))
  {
    v7 = 0;
    do
    {
      Declaration = glpVariableDeclarationGroupNodeGetDeclaration(a2, v7);
      v9 = glpSANode(a1, Declaration);
      if (v9 == -1)
      {
        v6 = 0;
      }

      else
      {
        glpVariableDeclarationGroupNodeSetDeclaration(a2, v7, v9);
      }

      ++v7;
    }

    while (v7 < glpVariableDeclarationGroupNodeGetDeclarationCount(a2));
  }

  if (v6)
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    v11 = glpVariableDeclarationGroupNodeGetBaseType(a2);
    if (!glpIsStructTypeNode(v11))
    {
      if (glpVariableDeclarationGroupNodeGetDeclarationCount(a2) == 1)
      {

        return glpVariableDeclarationGroupNodeGetDeclaration(a2, 0);
      }

      glpVariableDeclarationGroupNodeSetBaseType(a2, 0);
    }

    return a2;
  }

  return glpSAFailed();
}

uint64_t glpSAPrecisionDeclaration(uint64_t a1, uint64_t a2)
{
  if (!glpCompilerDoesTrackPrecision(a1))
  {
    return 0;
  }

  Type = glpPrecisionDeclarationNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 != -1)
  {
    v6 = v5;
    glpPrecisionDeclarationNodeSetType(a2, v5);
    SaType = glpASTNodeGetSaType(v6);
    if (glpTypeGetKind(SaType))
    {
      glpPrimitiveTypeGetCategory(0);
LABEL_15:
      glpCompilerGetAllocator();
      v13 = glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v12);
      v15 = v14;
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v21);
      glpLogMessage(InfoLog, 0, &v21, "Default precision qualifier cannot be applied to type '%.*s'", v15, v13);
      return glpSAFailed();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    Category = glpPrimitiveTypeGetCategory(PrimitiveType);
    v11 = Category == 4 || Category == 1;
    if (!v11 || PrimitiveType == 9 || PrimitiveType == 36)
    {
      goto LABEL_15;
    }

    Qualifier = glpPrecisionDeclarationNodeGetQualifier(a2);
    v18 = glpKeywordQualifierNodeGetQualifier(Qualifier) - 20;
    if (v18 >= 5)
    {
      abort();
    }

    v19 = qword_23A29D3D0[v18];
    NameTable = glpCompilerGetNameTable(a1);
    glpNameTablePutPrecision(NameTable, PrimitiveType, v19);
    return 0;
  }

  return glpSAFailed();
}

uint64_t glpSAQualifiedDeclaration(uint64_t a1, uint64_t a2)
{
  NameTable = glpCompilerGetNameTable(a1);
  if (!glpNameTableGetCurrentFunction(NameTable))
  {
    Name = glpQualifiedDeclarationNodeGetName(a2);
    v10 = v9;
    v31.n128_u64[0] = 0;
    v31.n128_u64[1] = &v31;
    v32 = 0x2000000000;
    v33 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 0x40000000;
    v26[2] = __glpSAQualifiedDeclaration_block_invoke;
    v26[3] = &unk_278B4C540;
    v26[4] = &v31;
    v26[5] = &v27;
    glpNameTableGet(NameTable, Name, v9, 0, v26);
    v11 = v28[3];
    if (v11)
    {
      v12 = *(v31.n128_u64[1] + 24);
      if (v12)
      {
        if (v12 != 3)
        {
          InfoLog = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(a2, &v25);
          glpLogMessage(InfoLog, 0, &v25, "Only variables and interface block fields may retroactively qualified");
          goto LABEL_16;
        }

        v13 = *(v11 + 72);
        StructTypeFromIBType = glpGetStructTypeFromIBType(*(v11 + 64));
        v11 = *(v13 + 8 * glpStructTypeGetFieldIndex(StructTypeFromIBType, Name, v10));
        v15 = 12;
      }

      else
      {
        v15 = 11;
      }

      v18 = *(v11 + 8);
      if (v18)
      {
        v19 = (glpLayoutObjectFind(v18, 30) != 0) << 28;
      }

      else
      {
        v19 = 0;
      }

      v24 = 0;
      v25.n128_u64[0] = 0;
      v23 = 0;
      Qualifiers = glpQualifiedDeclarationNodeGetQualifiers(a2);
      if (glpParseQualifiers(a1, v15, Qualifiers, *(v11 + 48) | v19, v25.n128_u64, &v24, &v23))
      {
        v7 = 0;
        *(v11 + 48) = v25.n128_u64[0];
LABEL_17:
        _Block_object_dispose(&v27, 8);
        _Block_object_dispose(&v31, 8);
        return v7;
      }
    }

    else
    {
      v16 = glpCompilerGetInfoLog(a1);
      *&v17 = glpASTNodeGetLocation(a2, &v25).n128_u64[0];
      glpLogMessage(v16, 0, &v25, "Cannot retroactivly qualify undeclared identifier '%.*s'", v17);
    }

LABEL_16:
    v7 = glpSAFailed();
    goto LABEL_17;
  }

  v5 = glpCompilerGetInfoLog(a1);
  *&v6 = glpASTNodeGetLocation(a2, &v31).n128_u64[0];
  glpLogMessage(v5, 0, &v31, "Retroactive qualifier declarations must appear at global scope", v6);
  return glpSAFailed();
}

uint64_t glpSAQualifiedDeclarationGroup(uint64_t a1, uint64_t a2)
{
  if (!glpQualifiedDeclarationGroupNodeGetDeclarationCount(a2))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Declaration = glpQualifiedDeclarationGroupNodeGetDeclaration(a2, v4);
    v7 = glpSANode(a1, Declaration);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpQualifiedDeclarationGroupNodeSetDeclaration(a2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpQualifiedDeclarationGroupNodeGetDeclarationCount(a2));
  if (v5)
  {
    return 0;
  }

  return glpSAFailed();
}

uint64_t glpSAFunctionDefinition(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
  if (glpSANode(a1, Prototype) == -1)
  {

    return glpSAFailed();
  }

  else
  {
    Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
    v6 = Extra;
    if ((*(Extra + 10) & 8) != 0)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      *&v35 = glpASTNodeGetLocation(v2, &v95).n128_u64[0];
      v86 = *(v6 + 32);
      v87 = *(v6 + 24);
      v36 = "Subroutine function definition '%.*s' must include a list of compatible subroutine types";
      goto LABEL_14;
    }

    v7 = *(Extra + 56);
    v91 = Extra;
    if (v7)
    {
      TypeCount = glpSubroutineTypeListNodeGetTypeCount(v7);
      v9 = glpCompilerPoolAlloc(a1);
      if (glpSubroutineTypeListNodeGetTypeCount(v7))
      {
        v10 = 0;
        while (1)
        {
          Type = glpSubroutineTypeListNodeGetType(v7, v10);
          SaType = glpASTNodeGetSaType(Type);
          v13 = glpASTNodeGetSaType(Prototype);
          FunctionObject = glpSubroutineTypeGetFunctionObject(SaType);
          if (!glpTypesEqual(v13, *FunctionObject))
          {
            break;
          }

          v9[v10++] = SaType;
          if (v10 >= glpSubroutineTypeListNodeGetTypeCount(v7))
          {
            goto LABEL_8;
          }
        }

        Name = glpSubroutineTypeGetName(SaType);
        v39 = v38;
        InfoLog = glpCompilerGetInfoLog(a1);
        *&v35 = glpASTNodeGetLocation(v2, &v95).n128_u64[0];
        v88 = *(v6 + 32);
        v89 = *(v6 + 24);
        v86 = v39;
        v87 = Name;
        v36 = "Subroutine type '%.*s' is incompatible with definition of subroutine '%.*s'";
LABEL_14:
        glpLogMessage(InfoLog, 0, &v95, v36, v35, v86, v87, v88, v89);
        return glpSAFailed();
      }

LABEL_8:
      v15 = glpSubroutineTypeListNodeGetType(v7, 0);
      glpASTNodeGetSaType(v15);
      v93 = 0;
      v94 = 0;
      v92 = 0;
      glpCompilerGetAllocator();
      v95.n128_u64[0] = "-1";
      v95.n128_u64[1] = 0xEDA00000002;
      v96 = 0xFFFFFFFFLL;
      SubroutineImplementationFragment = glpMakeSubroutineImplementationFragment(v16, &v95, &v94, *(v6 + 24), *(v6 + 32), &v93, &v92, v17, *(v6 + 24), *(v6 + 32));
      v19 = glpCompilerPoolAlloc(a1);
      v20 = glpSubroutineTypeGetFunctionObject(*v9);
      v22 = *(v20 + 48);
      v21 = *(v20 + 64);
      v23 = *(v20 + 80);
      *(v19 + 96) = *(v20 + 96);
      v24 = *(v20 + 16);
      v25 = *(v20 + 32);
      *v19 = *v20;
      *(v19 + 16) = v24;
      *(v19 + 32) = v25;
      *(v19 + 48) = v22;
      *(v19 + 64) = v21;
      *(v19 + 80) = v23;
      v26 = *(v20 + 112);
      v27 = *(v20 + 128);
      v28 = *(v20 + 144);
      *(v19 + 160) = *(v20 + 160);
      *(v19 + 128) = v27;
      *(v19 + 144) = v28;
      *(v19 + 112) = v26;
      *(v19 + 96) = TypeCount;
      *(v19 + 104) = v9;
      *(v19 + 8) = *(v19 + 8) & 0xFFFFFFFFFFE7FFFFLL | 0x100000;
      *(v19 + 24) = *(v6 + 24);
      *(v19 + 40) = *(v6 + 40);
      glpFunctionPrototypeNodeSetExtra(v94, v19);
      glpASTNodeSetSaType(v94, *v19);
      glpASTNodeSetSaFlags(v94, *(v19 + 8));
      v29 = *(v19 + 72);
      glpCompilerGetAllocator();
      v31 = v30;
      v90 = SubroutineImplementationFragment;
      if (v29)
      {
        glpASTNodeGetLocation(v2, &v95);
        SubroutineParameterFragment = glpMakeSubroutineParameterFragment(v31, &v95, *(*(v19 + 72) + 32), *(*(v19 + 72) + 40));
        glpASTNodeSetSaType(SubroutineParameterFragment, **(v19 + 72));
        glpASTNodeSetSaFlags(SubroutineParameterFragment, *(*(v19 + 72) + 48));
        glpParameterDeclarationNodeSetExtra(SubroutineParameterFragment, *(v19 + 72));
        glpFunctionPrototypeNodeSetReturnOutParam(v94, SubroutineParameterFragment);
      }

      else
      {
        v95.n128_u64[0] = "-1";
        v95.n128_u64[1] = 0xEDA00000002;
        v96 = 0xFFFFFFFFLL;
        glpMakeExpressionStatementNode(v30, &v95);
        v41 = v40;
        glpExpressionStatementNodeSetExpr(v40, v92);
        glpBlockNodeSetStatement(v93, 0, v41);
      }

      if (*(v19 + 88))
      {
        v42 = 0;
        do
        {
          glpCompilerGetAllocator();
          StringBuffer = glpMakeStringBuffer(v43);
          glpStringBufferAppendFormat(StringBuffer, "$subroutine$implementation_parameter$%u", v42);
          String = glpStringBufferGetString(StringBuffer);
          v47 = v46;
          glpCompilerGetAllocator();
          v49 = v48;
          glpASTNodeGetLocation(v2, &v95);
          v50 = glpMakeSubroutineParameterFragment(v49, &v95, String, v47);
          glpASTNodeSetSaType(v50, **(*(v19 + 80) + 8 * v42));
          glpASTNodeSetSaFlags(v50, *(*(*(v19 + 80) + 8 * v42) + 48));
          glpParameterDeclarationNodeSetExtra(v50, *(*(v19 + 80) + 8 * v42));
          glpCompilerGetAllocator();
          glpFunctionPrototypeNodeAddParameter(v51, v94, v50);
          glpCompilerGetAllocator();
          v95.n128_u64[0] = "-1";
          v95.n128_u64[1] = 0xEDA00000002;
          v96 = 0xFFFFFFFFLL;
          glpMakeVariableIdentifierNode(v52, &v95, String, v47);
          v54 = v53;
          glpCompilerGetAllocator();
          glpCallNodeAddArg(v55, v92, v54);
          ++v42;
        }

        while (v42 < *(v19 + 88));
      }

      glpCompilerGetAllocator();
      v57 = glpMakeStringBuffer(v56);
      glpStringBufferAppendCString(v57, "$SubroutineStatic$");
      v6 = v91;
      glpStringBufferAppendString(v57, *(v91 + 24), *(v91 + 32));
      v58 = glpStringBufferGetString(v57);
      v60 = v59;
      *(v91 + 24) = v58;
      *(v91 + 32) = v59;
      v61 = *v91;
      glpCompilerGetAllocator();
      *(v91 + 40) = glpAggregateTypeMangleName(v61, v58, v60, v62);
      *(v91 + 48) = v63;
      SaFlags = glpASTNodeGetSaFlags(Prototype);
      glpASTNodeSetSaFlags(Prototype, SaFlags & 0xFFFFFFFFFFCFFFFFLL | 0x200000);
      *(v91 + 8) = *(v91 + 8) & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
    }

    else
    {
      v90 = 0;
    }

    NameTable = glpCompilerGetNameTable(a1);
    Body = glpFunctionDefinitionNodeGetBody(v2);
    v67 = glpFunctionDefinitionNodeGetPrototype(v2);
    v68 = glpFunctionPrototypeNodeGetExtra(v67);
    glpNameTablePushForFunction(NameTable, Body, v68);
    v69 = glpCompilerGetNameTable(a1);
    *(v6 + 64) = v2;
    if (glpFunctionPrototypeNodeGetParameterCount(Prototype))
    {
      for (i = 0; i < glpFunctionPrototypeNodeGetParameterCount(Prototype); ++i)
      {
        Parameter = glpFunctionPrototypeNodeGetParameter(Prototype, i);
        v72 = glpParameterDeclarationNodeGetName(Parameter);
        v74 = v73;
        if (!glpStringsEqual("<<unnamed>>", 0x725D7890000000BuLL, v72, v73))
        {
          if (glpNameTableGet(v69, v72, v74, 2, &__block_literal_global_4))
          {
            v82 = glpCompilerGetInfoLog(a1);
            *&v83 = glpASTNodeGetLocation(Parameter, &v95).n128_u64[0];
            glpLogMessage(v82, 0, &v95, "'%.*s': Duplicate parameter name", v83);
            return glpSAFailed();
          }

          v75 = glpParameterDeclarationNodeGetExtra(Parameter);
          glpNameTablePut(v69, v72, v74, 0, v75);
        }
      }
    }

    v76 = glpFunctionDefinitionNodeGetBody(v2);
    if (glpSANode(a1, v76) == -1)
    {
      v81 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v81);
      *(v91 + 64) = 0;
      return glpSAFailed();
    }

    glpFunctionDefinitionNodeGetBody(v2);
    if (*(v91 + 72) && !*(v91 + 112))
    {
      v84 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v95);
      glpLogMessage(v84, 0, &v95, "Missing return for function '%.*s'", *(v91 + 32), *(v91 + 24));
      v85 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v85);
      *(v91 + 64) = 0;
      return glpSAFailed();
    }

    else
    {
      v77 = glpFunctionDefinitionNodeGetPrototype(v2);
      v78 = glpASTNodeGetSaType(v77);
      glpASTNodeSetSaType(v2, v78);
      v79 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v79);
      if (v90)
      {
        v80 = glpSANode(a1, v90);
        glpCompilerInsertDef(a1, v80);
      }
    }

    return v2;
  }
}

uint64_t glpSAQualifiedType(uint64_t a1, uint64_t a2)
{
  Type = glpQualifiedTypeNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpQualifiedTypeNodeSetType(a2, v5);
    v6 = glpQualifiedTypeNodeGetType(a2);
    SaType = glpASTNodeGetSaType(v6);
    glpASTNodeSetSaType(a2, SaType);
    glpASTNodeSetSaFlags(a2, 0);
    return a2;
  }
}

uint64_t glpSAPrimitiveType(uint64_t a1)
{
  Type = glpPrimitiveTypeNodeGetType(a1);
  PrimitiveType = glpGetPrimitiveType(Type);
  glpASTNodeSetSaType(a1, PrimitiveType);
  return a1;
}

uint64_t glpSAArrayType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  ElementType = glpArrayTypeNodeGetElementType(a2);
  v5 = glpSANode(a1, ElementType);
  if (v5 != -1)
  {
    glpArrayTypeNodeSetElementType(v2, v5);
  }

  Dimension = glpArrayTypeNodeGetDimension(v2);
  v7 = glpSANode(a1, Dimension);
  if (v7 == -1 || (glpArrayTypeNodeSetDimension(v2, v7), v5 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v26 = 0;
    glpASTNodeGetLocation(v2, &v25);
    v8 = glpArrayTypeNodeGetDimension(v2);
    v9 = glpEvaluateArraySize(a1, &v25, v8, &v26);
    if (!v9)
    {
      return glpSAFailed();
    }

    v10 = v9;
    v11 = glpArrayTypeNodeGetElementType(v2);
    SaFlags = glpASTNodeGetSaFlags(v11);
    glpCompilerGetAllocator();
    v14 = v13;
    SaType = glpASTNodeGetSaType(v11);
    ArrayType = glpMakeArrayType(v14, SaType, v26, -1);
    glpASTNodeSetSaType(v2, ArrayType);
    if (glpIsQualifiedTypeNode(v11))
    {
      glpCompilerGetAllocator();
      v18 = v17;
      glpASTNodeGetLocation(v2, &v25);
      glpMakeQualifiedTypeNode(v18, &v25);
      v20 = v19;
      glpQualifiedTypeNodeSetType(v19, v2);
      Type = glpQualifiedTypeNodeGetType(v11);
      glpArrayTypeNodeSetElementType(v2, Type);
      Qualifiers = glpQualifiedTypeNodeGetQualifiers(v11);
      glpQualifiedTypeNodeSetQualifiers(v20, Qualifiers);
      glpASTNodeSetSaType(v20, ArrayType);
      v2 = v20;
    }

    if (v10 == 3)
    {
      v23 = SaFlags | 0x8000000;
    }

    else
    {
      v23 = SaFlags;
    }

    glpASTNodeSetSaFlags(v2, v23);
    return v2;
  }
}

uint64_t glpSAFieldDeclaration(uint64_t a1, uint64_t a2)
{
  Type = glpFieldDeclarationNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpFieldDeclarationNodeSetType(a2, v5);
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    return a2;
  }
}

uint64_t glpSAStructType(uint64_t a1, uint64_t a2)
{
  v67[1] = *MEMORY[0x277D85DE8];
  if (glpSAStructure(a1, a2) != -1)
  {
    Name = glpStructTypeNodeGetName(a2);
    v6 = v5;
    v7 = glpCheckName(a1, a2, Name, v5);
    if (v7 != -1)
    {
      v8 = v7;
      v52 = Name;
      v53 = v6;
      FieldCount = glpStructureNodeGetFieldCount(v7);
      v54 = &v51;
      MEMORY[0x28223BE20](FieldCount);
      v11 = &(&v51)[-2 * v10];
      bzero(v11, v12);
      v13 = glpStructureNodeGetFieldCount(v8);
      MEMORY[0x28223BE20](v13);
      v56 = &v51 - v14;
      bzero(&v51 - v14, v15);
      v16 = glpStructureNodeGetFieldCount(v8);
      MEMORY[0x28223BE20](v16);
      v55 = &v51 - v17;
      bzero(&v51 - v17, v18);
      v19 = glpStructureNodeGetFieldCount(v8);
      MEMORY[0x28223BE20](v19);
      v21 = &v51 - v20;
      bzero(&v51 - v20, v22);
      if (glpStructureNodeGetFieldCount(v8))
      {
        v23 = 0;
        v51 = v11 + 1;
        do
        {
          Field = glpStructureNodeGetField(v8, v23);
          v59 = 0;
          v57.n128_u64[0] = 0;
          v66 = 0;
          v67[0] = 0;
          glpASTNodeGetLocation(Field, &v63);
          Type = glpFieldDeclarationNodeGetType(Field);
          if (!glpEvaluateTypeNode(a1, &v63, 8, 1, Type, 0, &v59, v57.n128_u64, v67, &v66))
          {
            return glpSAFailed();
          }

          v26 = v11;
          v27 = glpFieldDeclarationNodeGetName(Field);
          v29 = v28;
          if (v23)
          {
            v30 = v23;
            v31 = v51;
            while (!glpStringsEqual(*(v31 - 1), *v31, v27, v29))
            {
              v31 += 2;
              if (!--v30)
              {
                goto LABEL_10;
              }
            }

            InfoLog = glpCompilerGetInfoLog(a1);
            *&v43 = glpASTNodeGetLocation(Field, &v63).n128_u64[0];
            glpLogMessage(InfoLog, 0, &v63, "Duplicate field name '%.*s' in struct type '%.*s'", v43);
            return glpSAFailed();
          }

LABEL_10:
          if (glpTypeGetKind(v59) == 2 && glpArrayTypeGetElementCount(v59) == -1)
          {
            v49 = glpCompilerGetInfoLog(a1);
            *&v50 = glpASTNodeGetLocation(v8, &v63).n128_u64[0];
            glpLogMessage(v49, 0, &v63, "Unsized array field '%.*s' in struct type '%.*s'", v50);
            return glpSAFailed();
          }

          v11 = v26;
          v32 = &v26[2 * v23];
          *v32 = v27;
          v32[1] = v29;
          *(v56 + 8 * v23) = v59;
          *(v55 + 8 * v23) = v57.n128_u64[0] | 0x2000000;
          *&v21[8 * v23++] = 0;
        }

        while (v23 < glpStructureNodeGetFieldCount(v8));
      }

      glpCompilerGetAllocator();
      v34 = v33;
      v35 = glpStructureNodeGetFieldCount(v8);
      v36 = v52;
      v37 = v53;
      StructType = glpMakeStructType(v34, v52, v53, v35, v11, v56, v55, v21);
      glpASTNodeSetSaType(v8, StructType);
      if (glpStringsEqual("<<unnamed>>", 0x725D7890000000BuLL, v36, v37))
      {
        goto LABEL_29;
      }

      NameTable = glpCompilerGetNameTable(a1);
      v63.n128_u64[0] = 0;
      v63.n128_u64[1] = &v63;
      v64 = 0x2000000000;
      v65 = 0;
      v59 = 0;
      v60 = &v59;
      v61 = 0x2000000000;
      v62 = 0;
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 0x40000000;
      v58[2] = __glpSAStructType_block_invoke;
      v58[3] = &unk_278B4C588;
      v58[5] = &v59;
      v58[6] = NameTable;
      v58[4] = &v63;
      glpNameTableGet(NameTable, v36, v37, 2, v58);
      v40 = v60[3];
      if (v40)
      {
        if (*(v63.n128_u64[1] + 24) == 6)
        {
          if (glpTypesEqual(StructType, v40))
          {
            glpASTNodeSetSaType(v8, v60[3]);
LABEL_24:
            v44 = 1;
            goto LABEL_28;
          }

          v47 = glpCompilerGetInfoLog(a1);
          *&v48 = glpASTNodeGetLocation(v8, &v57).n128_u64[0];
          glpLogMessage(v47, 0, &v57, "Redeclaration of struct '%.*s' does not match previous declaration", v48);
        }

        else
        {
          v45 = glpCompilerGetInfoLog(a1);
          *&v46 = glpASTNodeGetLocation(v8, &v57).n128_u64[0];
          glpLogMessage(v45, 0, &v57, "Attempt to redeclare '%.*s' as a struct", v46);
        }

        NameTable = glpSAFailed();
        v44 = 0;
LABEL_28:
        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(&v63, 8);
        if (!v44)
        {
          return NameTable;
        }

LABEL_29:
        glpStructureNodeClearFields(v8);
        return v8;
      }

      glpNameTablePut(NameTable, v36, v37, 6, StructType);
      goto LABEL_24;
    }
  }

  return glpSAFailed();
}

uint64_t glpSAInterfaceBlock(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v147[1] = *MEMORY[0x277D85DE8];
  if (glpSAStructure(a1, a2) != -1)
  {
    Dimension = glpInterfaceBlockNodeGetDimension(v2);
    v5 = glpSANode(a1, Dimension);
    if (v5 != -1)
    {
      glpInterfaceBlockNodeSetDimension(v2, v5);
      ImmediateSAContext = glpCompilerGetImmediateSAContext(a1);
      if (glpIsTopLevelNode(ImmediateSAContext))
      {
        PrimitiveType = glpGetPrimitiveType(0);
        glpASTNodeSetSaType(v2, PrimitiveType);
        NameTable = glpCompilerGetNameTable(a1);
        Language = glpNameTableGetLanguage(NameTable);
        v146 = 0;
        v147[0] = 0;
        v145 = 0;
        Qualifiers = glpInterfaceBlockNodeGetQualifiers(v2);
        if (glpParseQualifiers(a1, 7, Qualifiers, 0, v147, &v146, &v145))
        {
          TopLevelNode = glpCompilerGetTopLevelNode(a1);
          GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(TopLevelNode, 0x100000000);
          glpCompilerGetAllocator();
          v14 = v13;
          if (GlobalTypeQualifier)
          {
            Layout = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
            LayoutObject = glpCopyLayoutObject(v14, Layout);
          }

          else
          {
            LayoutObject = glpMakeLayoutObject(v13);
          }

          v20 = LayoutObject;
          if (!v146 || (glpCompilerGetAllocator(), v22 = v21, glpASTNodeGetLocation(v2, &v142), glpLayoutObjectAppendMany(v22, a1, &v142, v20, v146)))
          {
            if ((v147[0] & 0x100000000) != 0)
            {
              v23 = 117;
              v24 = "uniform";
            }

            else if ((v147[0] & 0x20000000) != 0)
            {
              v23 = 105;
              v24 = "in";
            }

            else
            {
              if ((v147[0] & 0x40000000) == 0)
              {
                goto LABEL_110;
              }

              v23 = 111;
              v24 = "out";
            }

            v127 = v24;
            BlockName = glpInterfaceBlockNodeGetBlockName(v2);
            v27 = v26;
            glpCompilerGetAllocator();
            StringBuffer = glpMakeStringBuffer(v28);
            glpStringBufferAppendFormat(StringBuffer, "$IB$%c$5%.*s", v23, v27, BlockName);
            v142.n128_u64[0] = 0;
            v142.n128_u64[1] = &v142;
            v143 = 0x2000000000;
            LODWORD(v144) = 0;
            v139.n128_u64[0] = 0;
            v139.n128_u64[1] = &v139;
            v140 = 0x2000000000;
            v141 = 0;
            v138[0] = MEMORY[0x277D85DD0];
            v138[1] = 0x40000000;
            v138[2] = __glpSAInterfaceBlock_block_invoke;
            v138[3] = &unk_278B4C5B0;
            v138[4] = &v142;
            v138[5] = &v139;
            v30 = glpNameTableGet(NameTable, BlockName, v27, 2, v138);
            if (!*(v139.n128_u64[1] + 24) || *(v142.n128_u64[1] + 24) == 2)
            {
              _Block_object_dispose(&v139, 8);
              _Block_object_dispose(&v142, 8);
              v142.n128_u64[0] = 0;
              v142.n128_u64[1] = &v142;
              v143 = 0x2000000000;
              v144 = 0;
              String = glpStringBufferGetString(StringBuffer);
              v136[0] = MEMORY[0x277D85DD0];
              v136[1] = 0x40000000;
              v136[2] = __glpSAInterfaceBlock_block_invoke_2;
              v136[3] = &unk_278B4C5D8;
              v136[4] = &v142;
              glpNameTableGet(NameTable, String, v32, 0, v136);
              v33 = *(v142.n128_u64[1] + 24);
              if (v33)
              {
                v34 = *(v33 + 56);
                if (!v34 || !glpLayoutObjectFind(v34, 82) && !glpLayoutObjectFind(*(*(v142.n128_u64[1] + 24) + 56), 81))
                {
                  InfoLog = glpCompilerGetInfoLog(a1);
                  glpASTNodeGetLocation(v2, &v139);
                  glpLogMessage(InfoLog, 0, &v139, "Cannot redeclare interface block '%s %.*s'", v127, v27, BlockName);
                  v2 = -1;
LABEL_114:
                  _Block_object_dispose(&v142, 8);
                  return v2;
                }
              }

              else
              {
                v2 = glpCheckName(a1, v2, BlockName, v27);
                if (v2 == -1)
                {
                  v2 = glpSAFailed();
                  goto LABEL_114;
                }
              }

              v120 = v30;
              v121 = StringBuffer;
              v125 = v27;
              v126 = BlockName;
              v132 = v20;
              v122 = Language;
              FieldCount = glpStructureNodeGetFieldCount(v2);
              v38 = FieldCount;
              v39 = FieldCount;
              MEMORY[0x28223BE20](FieldCount);
              v40 = &v119[-16 * v39];
              bzero(v40, v41);
              MEMORY[0x28223BE20](v42);
              v43 = (8 * v38 + 15) & 0xFFFFFFFF0;
              v131 = &v119[-v43];
              bzero(&v119[-v43], 8 * v38);
              MEMORY[0x28223BE20](v44);
              v130 = &v119[-v43];
              bzero(&v119[-v43], 8 * v38);
              MEMORY[0x28223BE20](v45);
              v129 = &v119[-v43];
              bzero(&v119[-v43], 8 * v38);
              if (v38)
              {
                v123 = v119;
                v46 = 0;
                v124 = &v119[-16 * v39];
                v47 = v40 + 8;
                v128 = NameTable;
                do
                {
                  Field = glpStructureNodeGetField(v2, v46);
                  Name = glpFieldDeclarationNodeGetName(Field);
                  v51 = v49;
                  v52 = *(v142.n128_u64[1] + 24);
                  if (v52)
                  {
                    StructTypeFromIBType = glpGetStructTypeFromIBType(*(v52 + 64));
                    FieldIndex = glpStructTypeGetFieldIndex(StructTypeFromIBType, Name, v51);
                    if (FieldIndex == -1)
                    {
                      v87 = glpCompilerGetInfoLog(a1);
                      glpASTNodeGetLocation(v2, &v139);
                      glpLogMessage(v87, 0, &v139, "Field name '%.*s' in redeclaration of '%s %.*s' was not in previous declaration", v51, Name, v127, v125, v126);
                      goto LABEL_113;
                    }

                    ElementLayout = glpAggregateTypeGetElementLayout(StructTypeFromIBType, FieldIndex);
                  }

                  else
                  {
                    v56 = glpCheckName(a1, Field, Name, v49);
                    if (v56 == -1)
                    {
                      goto LABEL_113;
                    }

                    Field = v56;
                    ElementLayout = 0;
                  }

                  v137.n128_u64[0] = 0;
                  v135 = 0;
                  v134 = 0;
                  v133 = 0;
                  glpASTNodeGetLocation(v2, &v139);
                  Type = glpFieldDeclarationNodeGetType(Field);
                  if (!glpEvaluateTypeNode(a1, &v139, 9, 1, Type, v147[0], &v137, &v135, &v134, &v133))
                  {
                    goto LABEL_113;
                  }

                  glpCompilerGetAllocator();
                  v59 = glpCopyLayoutObject(v58, v132);
                  if (*(v142.n128_u64[1] + 24))
                  {
                    glpCompilerGetAllocator();
                    v61 = v60;
                    glpASTNodeGetLocation(v2, &v139);
                    if (!glpLayoutObjectAppendMany(v61, a1, &v139, v59, ElementLayout))
                    {
                      goto LABEL_113;
                    }

                    glpCompilerGetAllocator();
                    glpLayoutObjectRemove(v62, v59, 82);
                  }

                  glpCompilerGetAllocator();
                  v64 = v63;
                  glpASTNodeGetLocation(v2, &v139);
                  if (!glpLayoutObjectAppendMany(v64, a1, &v139, v59, v134))
                  {
                    goto LABEL_113;
                  }

                  if (v59)
                  {
                    v65 = glpLayoutObjectFind(v59, 24);
                    v66 = v135;
                    NameTable = v128;
                    if (v65)
                    {
                      v66 = v135 | 0x400;
                      v135 |= 0x400uLL;
                    }
                  }

                  else
                  {
                    v66 = v135;
                    NameTable = v128;
                  }

                  *(v47 - 1) = Name;
                  *v47 = v51;
                  *&v131[8 * v46] = v137.n128_u64[0];
                  *&v130[8 * v46] = v147[0] | v66;
                  *&v129[8 * v46] = v59;
                  if (glpNameTableGetGLSLVersion(NameTable) == 6 && glpTypeGetKind(v137.n128_u64[0]) == 2 && glpArrayTypeGetElementCount(v137.n128_i64[0]) == -1)
                  {
                    v99 = glpCompilerGetInfoLog(a1);
                    glpASTNodeGetLocation(v2, &v139);
                    glpLogMessage(v99, 0, &v139, "Unsized array '%.*s' not allowed under GLSL 300", *v47, *(v47 - 1));
                    goto LABEL_113;
                  }

                  ++v46;
                  v47 += 4;
                }

                while (v39 != v46);
                HasInstanceName = glpInterfaceBlockNodeGetHasInstanceName(v2);
                v40 = v124;
                if (!HasInstanceName)
                {
                  if (v39)
                  {
                    v68 = (v124 + 8);
                    v69 = 0xDFA3F2CD0000004BLL;
                    v70 = v39;
                    v128 = "<<BUG: printing instance name of interface block without an instance name>>";
                    while (!glpNameTableGet(NameTable, *(v68 - 1), *v68, 2, &__block_literal_global_140))
                    {
                      v68 += 2;
                      if (!--v70)
                      {
                        goto LABEL_64;
                      }
                    }

                    v118 = glpCompilerGetInfoLog(a1);
                    glpASTNodeGetLocation(v2, &v139);
                    glpLogMessage(v118, 0, &v139, "Field name '%.*s' of interface block without instance name '%.*s' would shadow a previous declaration", *v68, *(v68 - 1), v125, v126);
                    goto LABEL_113;
                  }

                  goto LABEL_63;
                }
              }

              else if (!glpInterfaceBlockNodeGetHasInstanceName(v2))
              {
                v124 = &v119[-16 * v39];
LABEL_63:
                v69 = 0xDFA3F2CD0000004BLL;
                v128 = "<<BUG: printing instance name of interface block without an instance name>>";
LABEL_64:
                v74 = 1;
LABEL_66:
                glpCompilerGetAllocator();
                v76 = glpMakeStringBuffer(v75);
                glpStringBufferAppendFormat(v76, "$InterfaceBlockStruct$%.*s", v125, v126);
                glpCompilerGetAllocator();
                v78 = v77;
                v79 = glpStringBufferGetString(v76);
                StructType = glpMakeStructType(v78, v79, v80, v39, v124, v131, v130, v129);
                v82 = v147[0];
                IsArray = glpInterfaceBlockNodeGetIsArray(v2);
                v137.n128_u32[0] = 1;
                if (IsArray)
                {
                  v84 = v82 & 0x160000000;
                  if ((v82 & 0x160000000) == 0x100000000)
                  {
                    v88 = 5;
                  }

                  else
                  {
                    if (v84 == 0x40000000)
                    {
                      v85 = glpBankForOutputsInLanguage(v122);
                    }

                    else
                    {
                      if (v84 != 0x20000000)
                      {
LABEL_75:
                        v89 = glpCompilerGetInfoLog(a1);
                        glpASTNodeGetLocation(v2, &v139);
                        if ((v147[0] & 0x20000000) != 0)
                        {
                          v90 = "in";
                        }

                        else
                        {
                          v90 = "out";
                        }

                        v91 = glpLanguageToString(v122);
                        glpLogMessage(v89, 0, &v139, "Interface block array not allowed as %s in %s shader", v90, v91);
                        goto LABEL_113;
                      }

                      v85 = glpBankForInputsInLanguage(v122);
                    }

                    v88 = v85;
                    if (!v85)
                    {
                      goto LABEL_75;
                    }
                  }

                  glpASTNodeGetLocation(v2, &v139);
                  v92 = glpInterfaceBlockNodeGetDimension(v2);
                  if (!glpEvaluateArraySize(a1, &v139, v92, &v137))
                  {
                    goto LABEL_113;
                  }

                  ImpliedBankSize = glpCompilerGetImpliedBankSize(a1, v88);
                  v94 = ImpliedBankSize;
                  if (v137.n128_u32[0] == -1)
                  {
                    v137.n128_u32[0] = ImpliedBankSize;
                    if (v88 == 5 && ImpliedBankSize == -1)
                    {
                      v100 = glpCompilerGetInfoLog(a1);
                      *&v101 = glpASTNodeGetLocation(v2, &v139).n128_u64[0];
                      glpLogMessage(v100, 0, &v139, "Uniform interface block arrays must be sized", v101);
                      goto LABEL_113;
                    }
                  }

                  else if (ImpliedBankSize != -1 && v137.n128_u32[0] != ImpliedBankSize)
                  {
                    v95 = glpCompilerGetInfoLog(a1);
                    glpASTNodeGetLocation(v2, &v139);
                    if ((v147[0] & 0x20000000) != 0)
                    {
                      v96 = "input";
                    }

                    else
                    {
                      v96 = "output";
                    }

                    v97 = v137.n128_u32[0];
                    v98 = glpLanguageToString(v122);
                    glpLogMessage(v95, 0, &v139, "Declared size (%u) of %s interface block array in the %s shader is incompatible with earlier declarations (expected %u)", v97, v96, v98, v94);
                    goto LABEL_113;
                  }

                  glpCompilerGetAllocator();
                  StructType = glpMakeBankType(v102, v88, StructType, v137.n128_i32[0]);
                  v86 = v132;
                }

                else
                {
                  v86 = v132;
                }

                glpCompilerGetAllocator();
                v127 = v69;
                if (v74)
                {
                  UnnamedInterfaceBlockObject = glpMakeUnnamedInterfaceBlockObject(v103, v126, v125, v147[0], 1, StructType);
                  if (v39)
                  {
                    v105 = (v124 + 8);
                    do
                    {
                      glpNameTablePut(NameTable, *(v105 - 1), *v105, 3, UnnamedInterfaceBlockObject);
                      v105 += 2;
                      --v39;
                    }

                    while (v39);
                  }

                  v106 = v126;
                  v107 = v125;
                }

                else
                {
                  v106 = v126;
                  v108 = v69;
                  v107 = v125;
                  UnnamedInterfaceBlockObject = glpMakeNamedInterfaceBlockObject(v103, v126, v125, v128, v108, v147[0], 1, StructType);
                }

                *(UnnamedInterfaceBlockObject + 56) = v86;
                v109 = v121;
                if (!v120)
                {
                  glpNameTablePut(NameTable, v106, v107, 2, UnnamedInterfaceBlockObject);
                }

                v110 = glpStringBufferGetString(v109);
                glpNameTablePut(NameTable, v110, v111, 2, UnnamedInterfaceBlockObject);
                if ((v74 & 1) == 0)
                {
                  glpNameTablePut(NameTable, v128, v127, 1, UnnamedInterfaceBlockObject);
                }

                glpInterfaceBlockNodeSetExtra(v2, UnnamedInterfaceBlockObject);
                glpInterfaceBlockNodeSetQualifiers(v2, 0);
                glpInterfaceBlockNodeSetDimension(v2, 0);
                glpStructureNodeClearFields(v2);
                if (!*(v142.n128_u64[1] + 24))
                {
                  goto LABEL_114;
                }

                v112 = glpCompilerGetTopLevelNode(a1);
                DefCount = glpTopLevelNodeGetDefCount(v112);
                if (DefCount)
                {
                  v114 = DefCount;
                  v115 = 0;
                  while (1)
                  {
                    Def = glpTopLevelNodeGetDef(v112, v115);
                    if (glpIsInterfaceBlockNode(Def))
                    {
                      Extra = glpInterfaceBlockNodeGetExtra(Def);
                      if (Extra == *(v142.n128_u64[1] + 24))
                      {
                        break;
                      }
                    }

                    if (v114 == ++v115)
                    {
                      goto LABEL_110;
                    }
                  }

                  glpTopLevelNodeSetDef(v112, v115, v2);
                  v2 = 0;
                  goto LABEL_114;
                }

LABEL_110:
                abort();
              }

              InstanceName = glpInterfaceBlockNodeGetInstanceName(v2);
              v69 = v71;
              if (!*(v142.n128_u64[1] + 24))
              {
                v2 = glpCheckName(a1, v2, InstanceName, v71);
                if (v2 == -1)
                {
LABEL_113:
                  v2 = glpSAFailed();
                  goto LABEL_114;
                }
              }

              if (glpNameTableGet(NameTable, InstanceName, v69, 2, &__block_literal_global_136))
              {
                v73 = glpCompilerGetInfoLog(a1);
                glpASTNodeGetLocation(v2, &v139);
                glpLogMessage(v73, 0, &v139, "Interface block instance name '%.*s' would shadow a previous declaration", v69, InstanceName);
                v2 = -1;
                goto LABEL_114;
              }

              v128 = InstanceName;
              v124 = v40;
              v74 = 0;
              goto LABEL_66;
            }

            v36 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(v2, &v137);
            glpLogMessage(v36, 0, &v137, "Interface block name '%.*s' would shadow a previous declaration", v27, BlockName);
            _Block_object_dispose(&v139, 8);
            _Block_object_dispose(&v142, 8);
            return -1;
          }
        }
      }

      else
      {
        v18 = glpCompilerGetInfoLog(a1);
        *&v19 = glpASTNodeGetLocation(v2, &v142).n128_u64[0];
        glpLogMessage(v18, 0, &v142, "Interface blocks may only be declared at global scope", v19);
      }

      return glpSAFailed();
    }
  }

  return glpSAFailed();
}

uint64_t glpSALayoutType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!glpLayoutTypeNodeGetLayoutPairCount(a2))
  {
    goto LABEL_8;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    LayoutPair = glpLayoutTypeNodeGetLayoutPair(v2, v4);
    v7 = glpSANode(a1, LayoutPair);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpLayoutTypeNodeSetLayoutPair(v2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpLayoutTypeNodeGetLayoutPairCount(v2));
  if (!v5)
  {

    return glpSAFailed();
  }

  else
  {
LABEL_8:
    LayoutPairCount = glpLayoutTypeNodeGetLayoutPairCount(v2);
    v9 = 16 * LayoutPairCount;
    MEMORY[0x28223BE20](LayoutPairCount);
    v11 = &v53[-2 * v10];
    bzero(v11, v9);
    MEMORY[0x28223BE20](v12);
    v13 = v53 - ((8 * LayoutPairCount + 15) & 0xFFFFFFFF0);
    bzero(v13, 8 * LayoutPairCount);
    MEMORY[0x28223BE20](v14);
    bzero(v13, 8 * LayoutPairCount);
    MEMORY[0x28223BE20](v15);
    v16 = v13;
    bzero(v13, 8 * LayoutPairCount);
    bzero(v11, v9);
    v59 = v13;
    bzero(v13, 8 * LayoutPairCount);
    v58 = v13;
    bzero(v13, 8 * LayoutPairCount);
    bzero(v13, 8 * LayoutPairCount);
    if (LayoutPairCount)
    {
      v53[0] = v11;
      v53[1] = v53;
      v64 = 0;
      SaType = 0;
      v60 = 0;
      v61 = 0;
      v17 = 0;
      v66 = 0;
      v55 = v11 + 1;
      v56 = v53 - ((8 * LayoutPairCount + 15) & 0xFFFFFFFF0);
      v54 = LayoutPairCount - 1;
      v18 = -1;
      v62 = -1;
      Value = -1;
      v57 = LayoutPairCount;
      while (1)
      {
        v19 = glpLayoutTypeNodeGetLayoutPair(v2, v17);
        Identifier = glpLayoutPairNodeGetIdentifier(v19);
        v22 = v21;
        v68 = 0;
        glpCompilerGetAllocator();
        v24 = glpLowerCaseCopyOfString(v23, Identifier, v22);
        if (!glpLayoutQualifierFromString(v24, v25, &v68))
        {
          InfoLog = glpCompilerGetInfoLog(a1);
          *&v43 = glpASTNodeGetLocation(v2, &v67).n128_u64[0];
          glpLogMessage(InfoLog, 0, &v67, "Unknown identifier '%.*s' in layout", v43);
          return glpSAFailed();
        }

        v26 = glpLayoutQualifierValueBehavior(v68);
        ValueKind = glpLayoutPairNodeGetValueKind(v19);
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            if (ValueKind != 2)
            {
              v49 = glpCompilerGetInfoLog(a1);
              *&v50 = glpASTNodeGetLocation(v2, &v67).n128_u64[0];
              glpLogMessage(v49, 0, &v67, "Identifier '%.*s' in layout must have a type", v50);
              return glpSAFailed();
            }
          }

          else
          {
            if (v26 != 3)
            {
              goto LABEL_52;
            }

            if (ValueKind != 3)
            {
              v47 = glpCompilerGetInfoLog(a1);
              *&v48 = glpASTNodeGetLocation(v2, &v67).n128_u64[0];
              glpLogMessage(v47, 0, &v67, "Identifier '%.*s' in layout must have a string", v48);
              return glpSAFailed();
            }
          }
        }

        else if (v26)
        {
          if (v26 != 1)
          {
            goto LABEL_52;
          }

          if (ValueKind != 1)
          {
            v45 = glpCompilerGetInfoLog(a1);
            *&v46 = glpASTNodeGetLocation(v2, &v67).n128_u64[0];
            glpLogMessage(v45, 0, &v67, "Identifier '%.*s' in layout must have a value", v46);
            return glpSAFailed();
          }
        }

        else if (ValueKind)
        {
          v51 = glpCompilerGetInfoLog(a1);
          *&v52 = glpASTNodeGetLocation(v2, &v67).n128_u64[0];
          glpLogMessage(v51, 0, &v67, "Identifier '%.*s' in layout must not have a value", v52);
          return glpSAFailed();
        }

        if (v68 <= 86)
        {
          if (v68 == 85)
          {
            Type = glpLayoutPairNodeGetType(v19);
            SaType = glpASTNodeGetSaType(Type);
          }

          else
          {
            if (v68 != 86)
            {
LABEL_52:
              abort();
            }

            v37 = glpLayoutPairNodeGetType(v19);
            v64 = glpASTNodeGetSaType(v37);
            v18 = 2;
          }
        }

        else
        {
          switch(v68)
          {
            case 'W':
              Value = glpLayoutPairNodeGetValue(v19);
              break;
            case 'X':
              v62 = glpLayoutPairNodeGetValue(v19);
              break;
            case 'Y':
              if (v17 + 1 >= LayoutPairCount)
              {
                v18 = 1;
                ++v17;
                v60 = "<<unnamed>>";
                v61 = 0x725D7890000000BLL;
              }

              else
              {
                v28 = 0;
                v29 = &v55[2 * v66];
                v30 = &v59[8 * v66];
                v31 = &v58[8 * v66];
                v32 = v16 + 8 * v66;
                v33 = v54 - v17;
                do
                {
                  v34 = glpLayoutTypeNodeGetLayoutPair(v2, v17 + v28 + 1);
                  *(v29 - 1) = glpLayoutPairNodeGetIdentifier(v34);
                  *v29 = v35;
                  v36 = glpLayoutPairNodeGetType(v34);
                  *&v30[8 * v28] = glpASTNodeGetSaType(v36);
                  *&v31[8 * v28] = 0;
                  *(v32 + 8 * v28) = 0;
                  v29 += 2;
                  ++v28;
                }

                while (v33 != v28);
                v66 += v28;
                v18 = 1;
                v61 = 0x725D7890000000BLL;
                v16 = v56;
                LODWORD(LayoutPairCount) = v57;
                v17 = v57;
                v60 = "<<unnamed>>";
              }

              break;
            default:
              goto LABEL_52;
          }
        }

        if (++v17 >= LayoutPairCount)
        {
          if (v18 == 2)
          {
            glpCompilerGetAllocator();
            ArrayType = glpMakeArrayType(v44, v64, Value, v62);
          }

          else
          {
            ArrayType = SaType;
            if (v18 == 1)
            {
              glpCompilerGetAllocator();
              ArrayType = glpMakeStructType(v40, v60, v61, v66, v53[0], v59, v58, v16);
            }
          }

          goto LABEL_43;
        }
      }
    }

    ArrayType = 0;
LABEL_43:
    glpASTNodeSetSaType(v2, ArrayType);
    glpASTNodeSetSaFlags(v2, 0);
    return v2;
  }
}